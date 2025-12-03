@interface FKACommandsController
- (BOOL)_isTabUnavailableForCommand:(id)command;
- (FKACommandsController)init;
- (id)_keyDisplayStringForCommandSpecifier:(id)specifier;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_didTapEditKeyComboForCommandSpecifier:(id)specifier;
- (void)_didTapRestoreDefaultsSpecifier:(id)specifier;
- (void)applicationWillResignActive:(id)active;
- (void)confirmationViewAcceptedForSpecifier:(id)specifier;
- (void)dealloc;
@end

@implementation FKACommandsController

- (FKACommandsController)init
{
  v16.receiver = self;
  v16.super_class = FKACommandsController;
  v2 = [(FKACommandsController *)&v16 init];
  if (v2)
  {
    v3 = +[FKAAvailableCommands sharedInstance];
    commandMap = [v3 commandMap];
    commandMap = v2->_commandMap;
    v2->_commandMap = commandMap;

    objc_initWeak(&location, v2);
    v6 = +[FKAAvailableCommands sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __29__FKACommandsController_init__block_invoke;
    v12[3] = &unk_2559F8;
    objc_copyWeak(&v14, &location);
    v7 = v2;
    v13 = v7;
    v8 = [v6 registerUpdateBlock:v12];
    availableCommandsUpdateToken = v7->_availableCommandsUpdateToken;
    v7->_availableCommandsUpdateToken = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v7 selector:"applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__FKACommandsController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 commandMap];

  [*(a1 + 32) setCommandMap:v4];
  [WeakRetained reloadSpecifiers];
}

- (void)applicationWillResignActive:(id)active
{
  [(FKACommandsController *)self dismissViewControllerAnimated:1 completion:0];

  [(FKACommandsController *)self setKeyChordPresenter:0];
}

- (void)dealloc
{
  v3 = +[FKAAvailableCommands sharedInstance];
  [v3 unregisterUpdateBlockWithToken:self->_availableCommandsUpdateToken];

  v4.receiver = self;
  v4.super_class = FKACommandsController;
  [(FKACommandsController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v28 = OBJC_IVAR___PSListController__specifiers;
    selfCopy = self;
    v4 = +[NSMutableArray array];
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = settingsLocString(@"COMMANDS_EXPLANATORY_TEXT", @"FullKeyboardAccessSettings");
    [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

    v36 = v4;
    v27 = v5;
    [v4 addObject:v5];
    v7 = +[FKAAvailableCommands sharedInstance];
    categories = [v7 categories];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = categories;
    v31 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v31)
    {
      v30 = *v42;
      v9 = PSCellClassKey;
      v10 = AXLongTitleValueTableViewCellButtonBoolKey;
      do
      {
        v11 = 0;
        do
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v11;
          v12 = *(*(&v41 + 1) + 8 * v11);
          localizedName = [v12 localizedName];
          v14 = [PSSpecifier groupSpecifierWithName:localizedName];

          v32 = v14;
          [v36 addObject:v14];
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          commands = [v12 commands];
          v15 = [commands countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v38;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v38 != v17)
                {
                  objc_enumerationMutation(commands);
                }

                v19 = *(*(&v37 + 1) + 8 * i);
                localizedName2 = [v19 localizedName];
                v21 = [PSSpecifier preferenceSpecifierNamed:localizedName2 target:selfCopy set:0 get:"_keyDisplayStringForCommandSpecifier:" detail:0 cell:4 edit:0];

                [v21 setButtonAction:"_didTapEditKeyComboForCommandSpecifier:"];
                [v21 setProperty:v19 forKey:@"command"];
                [v21 setProperty:objc_opt_class() forKey:v9];
                [v21 setProperty:&__kCFBooleanTrue forKey:v10];
                [v36 addObject:v21];
              }

              v16 = [commands countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v16);
          }

          v11 = v33 + 1;
        }

        while ((v33 + 1) != v31);
        v31 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v31);
    }

    v22 = +[PSSpecifier emptyGroupSpecifier];
    [v36 addObject:v22];
    v23 = settingsLocString(@"RESTORE_DEFAULTS", @"FullKeyboardAccessSettings");
    v24 = [PSSpecifier deleteButtonSpecifierWithName:v23 target:selfCopy action:"_didTapRestoreDefaultsSpecifier:"];

    [v36 addObject:v24];
    v25 = *&selfCopy->AXUISettingsSetupCapableListController_opaque[v28];
    *&selfCopy->AXUISettingsSetupCapableListController_opaque[v28] = v36;

    v3 = *&selfCopy->AXUISettingsSetupCapableListController_opaque[v28];
  }

  return v3;
}

- (id)_keyDisplayStringForCommandSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"command"];
  commandMap = [(FKACommandsController *)self commandMap];
  v6 = [commandMap keyChordForCommand:v4];
  fkaSpeakableDisplayValue = [v6 fkaSpeakableDisplayValue];

  return fkaSpeakableDisplayValue;
}

- (void)_didTapRestoreDefaultsSpecifier:(id)specifier
{
  v8 = objc_alloc_init(PSConfirmationSpecifier);
  v4 = settingsLocString(@"RESTORE_DEFAULTS_PROMPT_TITLE", @"FullKeyboardAccessSettings");
  [v8 setTitle:v4];

  v5 = settingsLocString(@"RESTORE_DEFAULTS_PROMPT_MESSAGE", @"FullKeyboardAccessSettings");
  [v8 setPrompt:v5];

  v6 = settingsLocString(@"RESTORE_DEFAULTS_PROMPT_BUTTON", @"FullKeyboardAccessSettings");
  [v8 setOkButton:v6];

  v7 = settingsLocString(@"CANCEL", @"Accessibility");
  [v8 setCancelButton:v7];

  [v8 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [(FKACommandsController *)self showConfirmationViewForSpecifier:v8];
}

- (BOOL)_isTabUnavailableForCommand:(id)command
{
  standardCommandIdentifier = [command standardCommandIdentifier];
  v4 = [standardCommandIdentifier isEqualToString:AXSSKeyboardCommandIdentifierTogglePassthroughMode];

  return v4;
}

- (void)_didTapEditKeyComboForCommandSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:@"command"];
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __64__FKACommandsController__didTapEditKeyComboForCommandSpecifier___block_invoke;
  v16[3] = &unk_255A20;
  objc_copyWeak(&v18, &location);
  v16[4] = self;
  v6 = v5;
  v17 = v6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __64__FKACommandsController__didTapEditKeyComboForCommandSpecifier___block_invoke_2;
  v14[3] = &unk_255388;
  objc_copyWeak(&v15, &location);
  v7 = [AXKeyboardShortcutEntryPresenter presenterWithSpecifier:specifierCopy selectionBlock:v16 cancelBlock:v14];
  [(FKACommandsController *)self setKeyChordPresenter:v7];

  keyChordPresenter = [(FKACommandsController *)self keyChordPresenter];
  [keyChordPresenter setShouldAllowTabAsModifier:1];

  keyChordPresenter2 = [(FKACommandsController *)self keyChordPresenter];
  [keyChordPresenter2 setShouldAllowEndingEventCapture:1];

  keyChordPresenter3 = [(FKACommandsController *)self keyChordPresenter];
  [keyChordPresenter3 setShouldAllowClearingKeyChord:1];

  keyChordPresenter4 = [(FKACommandsController *)self keyChordPresenter];
  commandMap = [(FKACommandsController *)self commandMap];
  v13 = [commandMap keyChordForCommand:v6];
  [keyChordPresenter4 presentWithController:self initialKeyChord:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __64__FKACommandsController__didTapEditKeyComboForCommandSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([*(a1 + 32) _isTabUnavailableForCommand:*(a1 + 40)])
  {
    v4 = [v26 keys];
    v5 = [v4 containsObject:@"⇥"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [WeakRetained commandMap];
  v7 = [v6 commandForKeyChord:v26];

  if (v5)
  {
    v8 = settingsLocString(@"KEYBOARD_SHORTCUT_TAB_UNAVAILABLE_MESSAGE", @"FullKeyboardAccessSettings");
    v9 = [AXSSKeyChord keyChordWithKeys:&off_27C9F8];
    v10 = [v9 fkaSpeakableDisplayValue];
    v11 = [NSString localizedStringWithFormat:v8, v10];

    v12 = settingsLocString(@"KEYBOARD_SHORTCUT_TAB_UNAVAILABLE_TITLE", @"FullKeyboardAccessSettings");
    v13 = [UIAlertController alertControllerWithTitle:v12 message:v11 preferredStyle:1];

    v14 = settingsLocString(@"OK", @"Accessibility");
    v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
    [v13 addAction:v15];

    v16 = [*(a1 + 32) presentedViewController];
    [v16 presentViewController:v13 animated:1 completion:0];
  }

  else if (v7)
  {
    v17 = settingsLocString(@"KEYBOARD_SHORTCUT_IN_USE_TITLE", @"FullKeyboardAccessSettings");
    v18 = settingsLocString(@"KEYBOARD_SHORTCUT_IN_USE_MESSAGE", @"FullKeyboardAccessSettings");
    v19 = [v7 localizedName];
    v20 = [NSString localizedStringWithFormat:v18, v19];
    v11 = [UIAlertController alertControllerWithTitle:v17 message:v20 preferredStyle:1];

    v21 = settingsLocString(@"OK", @"Accessibility");
    v22 = [UIAlertAction actionWithTitle:v21 style:1 handler:0];
    [v11 addAction:v22];

    v23 = [*(a1 + 32) presentedViewController];
    [v23 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v24 = [WeakRetained commandMap];
    v11 = [v24 commandMapWithKeyChord:v26 forCommand:*(a1 + 40)];

    [WeakRetained setCommandMap:v11];
    v25 = +[FKAAvailableCommands sharedInstance];
    [v25 setCommandMap:v11];

    [WeakRetained reloadSpecifiers];
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
    [WeakRetained setKeyChordPresenter:0];
  }
}

void __64__FKACommandsController__didTapEditKeyComboForCommandSpecifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
  [WeakRetained setKeyChordPresenter:0];
}

- (void)confirmationViewAcceptedForSpecifier:(id)specifier
{
  v4 = +[FKAAvailableCommands sharedInstance];
  [v4 setCommandMap:0];

  v5 = +[FKAAvailableCommands sharedInstance];
  commandMap = [v5 commandMap];
  [(FKACommandsController *)self setCommandMap:commandMap];

  [(FKACommandsController *)self reloadSpecifiers];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = FKACommandsController;
  v4 = [(FKACommandsController *)&v7 tableView:view cellForRowAtIndexPath:path];
  titleLabel = [v4 titleLabel];
  [titleLabel setNumberOfLines:0];

  return v4;
}

@end