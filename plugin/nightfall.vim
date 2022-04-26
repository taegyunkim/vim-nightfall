function UpdateBackground()
  if (system("defaults read -g AppleInterfaceStyle") == "Dark\n" ||
    \ system("gsettings get org.gnome.desktop.interface gtk-theme") =~ "dark")
    if &bg == "light" | set bg=dark | endif
  else
    if &bg == "dark" | set bg=light | endif
  endif
endfunction

augroup nightfall
  autocmd!
  autocmd FocusGained,BufEnter * call UpdateBackground()
augroup END
