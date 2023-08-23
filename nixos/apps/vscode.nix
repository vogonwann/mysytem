{pkgs, ...}:

{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      eamodio.gitlens
      humao.rest-client
      esbenp.prettier-vscode  
      pkief.material-icon-theme
      dracula-theme.theme-dracula
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        "name" = "vscode-thunder-client";
        "publisher" = "rangav";
        "version" = "2.10.0";
        "sha256" = "sha256-8bBsYjQnFIdDErulrgwixzgAzAytYtzbP+Sg87wJgrk=";
      }
      {
        "name" = "nix";
        "publisher" = "bbenoist";
        "version" = "1.0.1";
        sha256 = "sha256-qwxqOGublQeVP2qrLF94ndX/Be9oZOn+ZMCFX1yyoH0=";
      }
      {
        name = "rust-analyzer";
        publisher = "rust-lang";
        version = "0.4.1613";
        sha256 = "sha256-N13CJDJCyY7vepe6O3xMpuX4uRKCFe5npKXJfdQmo3c=";
      }
      {
        name = "svelte-vscode";
        publisher = "svelte";
        version = "107.9.0";
        sha256 = "sha256-gC5jRApqW1YY05MGxOvLRFsec2O2LZhVl4ARzWODKlE=";
      }
    ];
    userSettings = {
      "workbench.iconTheme" = "material-icon-theme";
      "editor.fontLigatures" = true;
      "workbench.colorTheme" = "Dracula Soft";
      "editor.fontFamily" = "'Inconsolata Nerd Font', 'monospace', monospace";
    };
  };
}
