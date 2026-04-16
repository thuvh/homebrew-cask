cask "fptchat" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  url "https://cvx-desktop-prod.s3-han02.fptcloud.com/desktop/mac/#{arch}/FPTChat-v#{version}-prod-#{arch}.dmg"

  name "FPTChat"
  desc "Connect across distance, unlimited performance!"
  homepage "https://chat.fpt.com/"

  auto_updates true

  app "FPT Chat.app"

  zap trash: [
    "~/Library/Application Support/FPT Chat",
    "~/Library/Preferences/com.fpt.chat.desktop.plist",
  ]
end
