# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

# source /usr/share/zsh/share/antigen.zsh
# export ZSH_WAKATIME_PROJECT_DETECTION=true
# antigen bundle wbingli/zsh-wakatime
# antigen bundle git-extras
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found
# antigen apply

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/run/media/oyewunmio/STORAGE1/System-Application/anaconda3/bin/:$PATH

# Set $PATH if ~/.local/bin exist
if [ -d "$HOME/.local/bin" ]; then
    export PATH=$HOME/.local/bin:$PATH
fi

eval "$(starship init zsh)"
function set_win_title(){
    echo -ne "\033]0; $USER@$HOST:${PWD/$HOME/~} \007"
}
precmd_functions+=(set_win_title)

## Plugins section: Enable fish style features
# Use syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use autosuggestion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Use Wakatime
source /usr/share/zsh/plugins/wakatime/wakatime.plugin.zsh
# # Use fzf
# source /usr/share/fzf/key-bindings.zsh
# source /usr/share/fzf/completion.zsh

#use Sudo
# source /usr/share/zsh/plugins/sudo/sudo.plugin.zsh
# 
# #use Websearch
# source /usr/share/zsh/plugins/web-search/web-search.plugin.zsh
# 
# #use Copydir
# source /usr/share/zsh/plugins/copydir/copydir.plugin.zsh
# 
# #use Dirhistory
# source /usr/share/zsh/plugins/dirhistory/dirhistory.plugin.zsh
# 
# #use PP_json
# source /usr/share/zsh/plugins/jsontools/jsontools.plugin.zsh




# Arch Linux command-not-found support, you must have package pkgfile installed
# https://wiki.archlinux.org/index.php/Pkgfile#.22Command_not_found.22_hook
[[ -e /usr/share/doc/pkgfile/command-not-found.zsh ]] && source /usr/share/doc/pkgfile/command-not-found.zsh


## Options section
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# # Completion.
# autoload -Uz compinit
# compinit
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
# zstyle ':completion:*' rehash true                              # automatically find new executables in path
# zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
# zstyle ':completion:*' completer _expand _complete _ignored _approximate
# zstyle ':completion:*' menu select
# zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
# zstyle ':completion:*:descriptions' format '%U%F{cyan}%d%f%u'
# 
# # Speed up completions
# zstyle ':completion:*' accept-exact '*(N)'
# zstyle ':completion:*' use-cache on
# zstyle ':completion:*' cache-path ~/.cache/zcache
# 
# # automatically load bash completion functions
# autoload -U +X bashcompinit && bashcompinit

HISTFILE=~/.zhistory
HISTSIZE=50000
SAVEHIST=10000




# Common use
alias grubup="sudo update-grub"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias rmpkg="sudo pacman -Rdd"
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias ls='ls --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias brain='hwinfo --short'                                # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl"              # Sort installed packages according to size in MB (expac must be installed)
alias gitinstalled='pacman -Q | grep -i "\-git" | wc -l'			# List amount of -git packages

#conda aliases
alias web_dev='conda activate Django_env'
alias appscript_dev="conda activate google_app_script"
alias fastapi_dev="conda activate FastApi_env"

alias run='python manage.py runserver'
# Get fastest mirrors 
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist" 
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist" 
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist" 
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist" 

# Help people new to Arch
#alias apt-get='man pacman'
#alias apt='man pacman'
#alias helpme='cht.sh --shell'
#alias pacdiff='sudo -H DIFFPROG=meld pacdiff'               # Compare .pacnew & .pacsave files 
alias paru="paru --bottomup"
alias asteria='sudo'
alias install='sudo pacman -S'
alias txt='mousepad'
alias tb='nc termbin.com 9999'
alias upd="/usr/bin/update"

# Replace yay with paru if installed
# [ ! -x /usr/bin/yay ] && [ -x /usr/bin/paru ] && alias yay='paru'

#git aliases
#This command is used when you want to clone a remote repo to your local machine.
alias git_clone="git clone"

#This command is used to checkout to a remote or local branch
alias git_change_branch="git checkout"

#This is used to create a new local branch.
alias git_create_branch="git checkout -b"

#Git fetch is used to fetch the contents of remote repo, that could include new branches, tags, or any updates to the repo. 
alias git_fetch="git fetch"

#This is used to get the list of all available branches
alias git_list_branch="git branch"

#This is used to stage new file
alias git_stage_file="git add"

#This is used to stage all files
alias git_stage_all="git add ."

#This is used to commit all staged files
alias git_commit="git commit -m"

#This is used to show git status
alias git_status="git status"

#This is used to push new changes to branch or from local repo to remote repo
alias git_push="git push"

#This is used if you’re local branch hasn’t been pushed to the remote repo, and you do/don’t have any commits,
alias git_push_to="git push"

#This is used to reset local branch to how remote was
alias git_reset="git reset --hard origin/HEAD"




## Run neofetch
#neofetch
## run lolcat
figlet SEYI  FOCUS | lolcat -a -d 1 -F 1 -p 5



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/run/media/pirate/STORAGE/System-Application/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/run/media/pirate/STORAGE/System-Application/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/run/media/pirate/STORAGE/System-Application/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/run/media/pirate/STORAGE/System-Application/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export BROWSER='/usr/bin/google-chrome-unstable'


