#!/bin/bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common 
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring  --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg  --fingerprint
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee    /etc/apt/sources.list.d/hashicorp.list
sudo apt update -y
sudo apt-get install terraform -y
sudo apt  install awscli -y
sudo apt  install zip unzip -y
alias t="terraform"
alias tp="terraform  plan"
alias ta="terraform  apply"
alias td="terraform  destroy"
alias ti="terraform  init"
alias tp="terraform  plan"
alias ta="terraform  apply"
alias td="terraform  destroy"
