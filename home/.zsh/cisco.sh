#!/usr/bin/env zsh

##################################################
# Aliases for CDETS queries
##################################################

CDETS_MY_CR_QUERY="\"[Engineer] = 'kkirkup' AND ([Status] = 'N' OR [Status] = 'A' OR [Status] = 'O' OR [Status] = 'W') AND [Product] = 'media_processor' AND [Project] = 'CSC.spv.ipvs' AND [Component] = 'media_processor'\""
CDETS_CMP_OPEN_QUERY="\"([Status] = 'N' OR [Status] = 'A' OR [Status] = 'O' OR [Status] = 'W') AND [Product] = 'media_processor' AND [Project] = 'CSC.spv.ipvs' AND [Component] = 'media_processor'\""
CDETS_CMP_OPEN_TRACKING_QUERY="\"([Component] = 'media_processor') AND ([Product] = 'media_processor') AND ([Project] = 'CSC.spv.ipvs') AND ([Status] = 'N' OR [Status] = 'A' OR [Status] = 'O' OR [Status] = 'W') AND ([Severity] = '1' OR [Severity] = '2' OR [Severity] = '3')\""

# List my defects
alias fmcr="findcr -w Identifier,Headline ${CDETS_MY_CR_QUERY} | sort"

# List all open defects
alias facr="findcr -w Identifier,Headline ${CDETS_CMP_OPEN_QUERY} | sort"

# List all of the open defects that are being tracked
alias fahcr="findcr -w Severity,Identifier,Headline ${CDETS_CMP_OPEN_TRACKING_QUERY} | sort"

alias vu='vagrant up && vagrant ssh'
alias vd='vagrant suspend'
alias vp='vagrant provision'

##################################################
# Remove McAfee
alias rm_mcafee='sudo /Library/McAfee/cma/uninstall.sh'

##################################################
# Go to the Vagrant image an drop in to the shell
start_linux_encoder() {

  cd $HOME/Documents/Work/repos/vagrant-centos6
  vagrant up
  vagrant ssh
}

##################################################
# Shutdown the vagrant environment
stop_linux_encoder() {

  cd $HOME/Documents/Work/repos/vagrant-centos6
  vagrant suspend
}
#!/usr/local/env zsh

# Add the path to the CDETS CLI scripts
export CDETS_INSTALL_DIR=${HOME}/Cisco/cdets-unix

# Add the cdets scripts to the PATH
export PATH=$PATH:${HOME}/Cisco/cdets-unix/bin

# The IP Address of my desktop
export KSK_DESKTOP_IP=64.102.79.145

