# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fino"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize grc zsh-autosuggestions zsh-syntax-highlighting tmux)
# colorize settings
ZSH_COLORIZE_STYLE="colorful"

# init tmux plugin to run on launch
ZSH_TMUX_AUTOSTART=true
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias nmap='grc nmap'
alias cat='ccat'
alias ls='exa -a --color=always --group-directories-first --icons' #my preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.='exa -a --icons | egrep "^\."'
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
alias rustscan='docker run -it --rm --name rustscan rustscan/rustscan:1.10.0'
alias server='python3 -m http.server'
alias htbvpn='sudo openvpn /home/kali/Downloads/lab_f3nr1r.ovpn'
alias htbrvpn='sudo openvpn /home/kali/Downloads/competitive_f3nr1r.ovpn'
alias boxes='cd /home/kali/htb/boxes'
alias b64='base64'
alias b64d='base64 -d'
eb64(){echo "${1}" | base64}
eb64d(){echo "${1}" | base64 -d}

alias php-reverse-shell="cp /usr/share/webshells/php/php-reverse-shell.php ."
# Gobuster directory fuzzing
# Usage: gobusterit <url>
gobusterit() {
    gobuster dir -u $1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt | tee gobuster.txt
}
# Feroxbuster directory fuzzing
# Usage: feroxbusterit <url>
feroxbusterit() {
    feroxbuster -u $1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt | tee feroxbuster.txt
}

#alias vim to neovim
alias vim='nvim'

alias cme='crackmapexec'
# vi->nvim if nvim installed
if type "nvim" > /dev/null; then
	alias vim='nvim'
	alias vi='nvim'
fi

alias add="git add -p ."
alias adds="git add ."
alias gst="git status"
alias gcm="git commit -m "
alias push='git push -u origin $(current_branch)'
alias master="git checkout master"
alias masterp="git checkout master && git pull"
alias develop="git checkout develop"
alias developp="git checkout develop && git pull"
alias branch="git checkout -b "
alias gck="git checkout "
alias gckm="git checkout -"
alias pull="git pull"
alias pjt="cd hemea/travauxlib"
alias zshcode="code ~/.zshrc"
alias deploy_pro="heroku pipelines:promote -a travauxlib-pro-staging"     
alias deploy_api="heroku pipelines:promote -a travauxlib-api-staging"   
alias deploy_app="heroku pipelines:promote -a travauxlib-app-staging"  
alias deploy_admin="heroku pipelines:promote -a travauxlib-admin-staging"
alias cat='ccat'
alias ls='exa -a --color=always --group-directories-first --icons' #my preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.='exa -a --icons | egrep "^\."'
alias tml='tmux list-sessions'
alias tmk='tmux kill-session -t'