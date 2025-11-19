@interface VoiceOverCommandsOverviewController
- (VOSCommandManager)commandManager;
- (id)specifiers;
- (void)_resetVoiceOverCommandsButtonTapped:(id)a3;
@end

@implementation VoiceOverCommandsOverviewController

- (VOSCommandManager)commandManager
{
  commandManager = self->_commandManager;
  if (!commandManager)
  {
    v4 = [[VOSCommandManager alloc] initPreferringUserProfile];
    v5 = self->_commandManager;
    self->_commandManager = v4;

    commandManager = self->_commandManager;
  }

  return commandManager;
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v54 = OBJC_IVAR___PSListController__specifiers;
    v55 = self;
    v4 = [(VoiceOverCommandsOverviewController *)self commandManager];
    v5 = objc_opt_new();
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    v7 = +[VOSCommandResolver resolverForCurrentHost];
    v8 = settingsLocString(@"vo.all.commands", @"VoiceOverSettings");
    v9 = [PSSpecifier voGenericSubmenuWithTitle:v8 childViewControllerClass:objc_opt_class() commandManager:v4 resolver:v7];

    v10 = PSIDKey;
    [v9 setProperty:@"AllCommands" forKey:PSIDKey];
    [v5 addObject:v9];
    v11 = +[PSSpecifier emptyGroupSpecifier];

    [v5 addObject:v11];
    v12 = settingsLocString(@"vo.touch.gestures", @"VoiceOverSettings");
    v13 = [PSSpecifier voGenericSubmenuWithTitle:v12 childViewControllerClass:objc_opt_class() commandManager:v4 resolver:v7];

    [v13 setProperty:@"TouchGestures" forKey:v10];
    [v5 addObject:v13];
    v14 = settingsLocString(@"vo.keyboard.shortcuts", @"VoiceOverSettings");
    v15 = [PSSpecifier voGenericSubmenuWithTitle:v14 childViewControllerClass:objc_opt_class() commandManager:v4 resolver:v7];

    [v15 setProperty:@"KeyboardShortcuts" forKey:v10];
    [v5 addObject:v15];
    v16 = voiceOverLocalizedStringForKeyboardShortcutsFooterText();
    [v11 setProperty:v16 forKey:PSFooterTextGroupKey];

    v17 = +[PSSpecifier emptyGroupSpecifier];

    [v5 addObject:v17];
    v18 = settingsLocString(@"VO_MAGIC_TAP", @"VoiceOverSettings");
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:v55 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v19 setProperty:@"MagicTap" forKey:v10];
    [v5 addObject:v19];
    v51 = +[PSSpecifier emptyGroupSpecifier];

    [v5 addObject:v51];
    v20 = +[VOSScreenreaderMode Handwriting];
    v21 = [v7 resolverWithScreenreaderModeVariant:v20];

    v22 = settingsLocString(@"vo.handwriting", @"VoiceOverSettings");
    v50 = v21;
    v23 = [PSSpecifier voGenericSubmenuWithTitle:v22 childViewControllerClass:objc_opt_class() commandManager:v4 resolver:v21];

    [v23 setProperty:@"Handwriting" forKey:v10];
    [v5 addObject:v23];
    v24 = +[VOSScreenreaderMode BrailleScreenInput];
    v53 = v7;
    v25 = [v7 resolverWithScreenreaderModeVariant:v24];

    v26 = settingsLocString(@"vo.bsi", @"VoiceOverSettings");
    v49 = v25;
    v27 = [PSSpecifier voGenericSubmenuWithTitle:v26 childViewControllerClass:objc_opt_class() commandManager:v4 resolver:v25];

    [v27 setProperty:@"BrailleScreenInput" forKey:v10];
    [v5 addObject:v27];
    v28 = +[VOSBluetoothManager sharedInstance];
    v29 = [v28 pairedBrailleDevices];

    v30 = settingsLocString(@"vo.braille.devices", @"VoiceOverSettings");
    v31 = [PSSpecifier groupSpecifierWithName:v30];

    v48 = v31;
    [v5 addObject:v31];
    v32 = settingsLocString(@"vo.braille.command.default", @"VoiceOverSettings");
    objc_opt_class();
    v33 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:v32 set:0 get:? detail:? cell:? edit:?];

    [v33 setVoBrailleDevice:0];
    v52 = v10;
    [v33 setProperty:@"BrailleKeyboardInput" forKey:v10];
    v34 = v5;
    [v5 addObject:v33];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v35 = v29;
    v36 = [v35 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v57;
      do
      {
        v39 = 0;
        v40 = v33;
        do
        {
          if (*v57 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v41 = *(*(&v56 + 1) + 8 * v39);
          v42 = [v41 name];
          v33 = [PSSpecifier preferenceSpecifierNamed:v42 target:v55 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          [v33 setVoBrailleDevice:v41];
          [v34 addObject:v33];
          v39 = v39 + 1;
          v40 = v33;
        }

        while (v37 != v39);
        v37 = [v35 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v37);
    }

    v43 = +[PSSpecifier emptyGroupSpecifier];

    [v34 addObject:v43];
    v44 = settingsLocString(@"vo.reset.commands.title", @"VoiceOverSettings");
    v45 = [PSSpecifier deleteButtonSpecifierWithName:v44 target:v55 action:"_resetVoiceOverCommandsButtonTapped:"];

    [v45 setProperty:@"ResetVoiceOverCommands" forKey:v52];
    [v34 addObject:v45];
    [(VoiceOverCommandsOverviewController *)v55 setAllSpecifiersUnsearchable:v34];
    v46 = *&v55->AXUISettingsBaseListController_opaque[v54];
    *&v55->AXUISettingsBaseListController_opaque[v54] = v34;

    v3 = *&v55->AXUISettingsBaseListController_opaque[v54];
  }

  return v3;
}

- (void)_resetVoiceOverCommandsButtonTapped:(id)a3
{
  v8 = objc_alloc_init(PSConfirmationSpecifier);
  v4 = settingsLocString(@"vo.reset.commands.prompt.title", @"VoiceOverSettings");
  [v8 setTitle:v4];

  v5 = settingsLocString(@"vo.reset.commands.prompt.details", @"VoiceOverSettings");
  [v8 setPrompt:v5];

  v6 = settingsLocString(@"vo.cancel", @"VoiceOverSettings");
  [v8 setCancelButton:v6];

  v7 = settingsLocString(@"vo.ok", @"VoiceOverSettings");
  [v8 setOkButton:v7];

  [v8 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [(VoiceOverCommandsOverviewController *)self showConfirmationViewForSpecifier:v8];
}

@end