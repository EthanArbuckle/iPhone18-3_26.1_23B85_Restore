@interface FKASettingsController
- (FKASettingsController)init;
- (id)_instructionWithFormat:(id)format forStandardCommandIdentifier:(id)identifier;
- (id)activateItemInstruction;
- (id)appSwitcherInstruction;
- (id)controlCenterInstruction;
- (id)focusRingColor:(id)color;
- (id)focusRingHighContrastEnabled:(id)enabled;
- (id)focusRingTimeoutDescription:(id)description;
- (id)fullKeyboardAccessEnabled:(id)enabled;
- (id)helpInstruction;
- (id)homeInstruction;
- (id)largeFocusRingEnabled:(id)enabled;
- (id)moveBackwardInstruction;
- (id)moveForwardInstruction;
- (id)notificationCenterInstruction;
- (id)selectSpecifier:(id)specifier;
- (id)specifiers;
- (int64_t)selectedColorForSelectionController:(id)controller;
- (void)cursorColorSelectionController:(id)controller selectedCursorColor:(int64_t)color;
- (void)dealloc;
- (void)setFocusRingHighContrastEnabled:(id)enabled specifier:(id)specifier;
- (void)setFullKeyboardAccessEnabled:(id)enabled specifier:(id)specifier;
- (void)setLargeFocusRingEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation FKASettingsController

- (FKASettingsController)init
{
  v21.receiver = self;
  v21.super_class = FKASettingsController;
  v2 = [(FKASettingsController *)&v21 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_preferencesDidChange:" name:kAXSFullKeyboardAccessEnabledNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_preferencesDidChange:" name:kAXSAssistiveTouchScannerEnabledNotification object:0];

    objc_initWeak(&location, v2);
    v5 = +[AXSettings sharedInstance];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __29__FKASettingsController_init__block_invoke;
    v18[3] = &unk_255388;
    objc_copyWeak(&v19, &location);
    [v5 registerUpdateBlock:v18 forRetrieveSelector:"fullKeyboardAccessFocusRingTimeoutEnabled" withListener:v2];

    objc_destroyWeak(&v19);
    v6 = +[AXSettings sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __29__FKASettingsController_init__block_invoke_2;
    v16[3] = &unk_255388;
    objc_copyWeak(&v17, &location);
    [v6 registerUpdateBlock:v16 forRetrieveSelector:"fullKeyboardAccessFocusRingTimeout" withListener:v2];

    objc_destroyWeak(&v17);
    v7 = +[FKAAvailableCommands sharedInstance];
    commandMap = [v7 commandMap];
    cachedCommandMap = v2->_cachedCommandMap;
    v2->_cachedCommandMap = commandMap;

    v10 = +[FKAAvailableCommands sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __29__FKASettingsController_init__block_invoke_3;
    v14[3] = &unk_2568C0;
    objc_copyWeak(&v15, &location);
    v11 = [v10 registerUpdateBlock:v14];
    availableCommandsUpdateToken = v2->_availableCommandsUpdateToken;
    v2->_availableCommandsUpdateToken = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__FKASettingsController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __29__FKASettingsController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __29__FKASettingsController_init__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 commandMap];

  [WeakRetained setCachedCommandMap:v4];
  [WeakRetained reloadSpecifiers];
}

- (void)dealloc
{
  v3 = +[FKAAvailableCommands sharedInstance];
  [v3 unregisterUpdateBlockWithToken:self->_availableCommandsUpdateToken];

  v4.receiver = self;
  v4.super_class = FKASettingsController;
  [(FKASettingsController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [(FKASettingsController *)self loadSpecifiersFromPlistName:@"FullKeyboardAccessSettings" target:self];
    [v5 axSafelyAddObjectsFromArray:v6];

    v7 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
    *&self->AXUISettingsSetupCapableListController_opaque[v3] = v5;
    v8 = v5;

    v9 = [(FKASettingsController *)self specifierForID:@"FKAEnabledSwitch"];
    v10 = [NSNumber numberWithInt:[(FKASettingsController *)self _shouldDisableSwitch]^ 1];

    [v9 setProperty:v10 forKey:PSEnabledKey];
    v4 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (void)setFullKeyboardAccessEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  bOOLValue = [enabledCopy BOOLValue];
  if (bOOLValue)
  {
    _AXSFullKeyboardAccessSetEnabled();
  }

  else
  {
    v9 = AXUILocalizedStringForKey();
    v10 = AXUILocalizedStringForKey();
    v11 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];

    v12 = AXUILocalizedStringForKey();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __64__FKASettingsController_setFullKeyboardAccessEnabled_specifier___block_invoke;
    v19[3] = &__block_descriptor_33_e23_v16__0__UIAlertAction_8l;
    v20 = bOOLValue;
    v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v19];

    objc_initWeak(&location, self);
    v14 = AXUILocalizedStringForKey();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __64__FKASettingsController_setFullKeyboardAccessEnabled_specifier___block_invoke_2;
    v16[3] = &unk_255BF8;
    objc_copyWeak(&v17, &location);
    v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v16];

    [v11 addAction:v13];
    [v11 addAction:v15];
    [(FKASettingsController *)self presentViewController:v11 animated:1 completion:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __64__FKASettingsController_setFullKeyboardAccessEnabled_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)fullKeyboardAccessEnabled:(id)enabled
{
  v3 = _AXSFullKeyboardAccessEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (id)selectSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = FKASettingsController;
  v4 = [(FKASettingsController *)&v6 selectSpecifier:specifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDelegate:self];
  }

  return v4;
}

- (id)focusRingTimeoutDescription:(id)description
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 fullKeyboardAccessFocusRingTimeoutEnabled])
  {
    [v3 fullKeyboardAccessFocusRingTimeout];
    AXLocalizedTimeSummary();
  }

  else
  {
    settingsLocString(@"FOCUS_RING_TIMEOUT_DISABLED", @"FullKeyboardAccessSettings");
  }
  v4 = ;

  return v4;
}

- (void)setLargeFocusRingEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setFullKeyboardAccessLargeFocusRingEnabled:bOOLValue];
}

- (id)largeFocusRingEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 fullKeyboardAccessLargeFocusRingEnabled]);

  return v4;
}

- (void)setFocusRingHighContrastEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setFullKeyboardAccessFocusRingHighContrastEnabled:bOOLValue];
}

- (id)focusRingHighContrastEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 fullKeyboardAccessFocusRingHighContrastEnabled]);

  return v4;
}

- (id)focusRingColor:(id)color
{
  v3 = +[AXSettings sharedInstance];
  [v3 fullKeyboardAccessFocusRingColor];
  v4 = AXAssistiveTouchScannerColorDescription();

  return v4;
}

- (id)_instructionWithFormat:(id)format forStandardCommandIdentifier:(id)identifier
{
  formatCopy = format;
  identifierCopy = identifier;
  cachedCommandMap = [(FKASettingsController *)self cachedCommandMap];
  v9 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:identifierCopy];

  v10 = [cachedCommandMap keyChordForCommand:v9];
  fkaSpeakableDisplayValue = [v10 fkaSpeakableDisplayValue];

  if ([fkaSpeakableDisplayValue length])
  {
    v12 = [NSString localizedStringWithFormat:formatCopy, fkaSpeakableDisplayValue];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)helpInstruction
{
  v3 = settingsLocString(@"HELP_INSTRUCTION", @"FullKeyboardAccessSettings");
  v4 = [(FKASettingsController *)self _instructionWithFormat:v3 forStandardCommandIdentifier:AXSSKeyboardCommandIdentifierHelp];

  return v4;
}

- (id)moveForwardInstruction
{
  v3 = settingsLocString(@"MOVE_FORWARD_INSTRUCTION", @"FullKeyboardAccessSettings");
  v4 = [(FKASettingsController *)self _instructionWithFormat:v3 forStandardCommandIdentifier:AXSSKeyboardCommandIdentifierGoToNextElement];

  return v4;
}

- (id)moveBackwardInstruction
{
  v3 = settingsLocString(@"MOVE_BACKWARD_INSTRUCTION", @"FullKeyboardAccessSettings");
  v4 = [(FKASettingsController *)self _instructionWithFormat:v3 forStandardCommandIdentifier:AXSSKeyboardCommandIdentifierGoToPreviousElement];

  return v4;
}

- (id)activateItemInstruction
{
  v3 = settingsLocString(@"ACTIVATE_ITEM_INSTRUCTION", @"FullKeyboardAccessSettings");
  v4 = [(FKASettingsController *)self _instructionWithFormat:v3 forStandardCommandIdentifier:AXSSKeyboardCommandIdentifierPerformDefaultAction];

  return v4;
}

- (id)homeInstruction
{
  v3 = settingsLocString(@"HOME_INSTRUCTION", @"FullKeyboardAccessSettings");
  v4 = [(FKASettingsController *)self _instructionWithFormat:v3 forStandardCommandIdentifier:AXSSKeyboardCommandIdentifierGoHome];

  return v4;
}

- (id)appSwitcherInstruction
{
  v3 = settingsLocString(@"APP_SWITCHER_INSTRUCTION", @"FullKeyboardAccessSettings");
  v4 = [(FKASettingsController *)self _instructionWithFormat:v3 forStandardCommandIdentifier:AXSSKeyboardCommandIdentifierToggleAppSwitcher];

  return v4;
}

- (id)controlCenterInstruction
{
  v3 = settingsLocString(@"CONTROL_CENTER_INSTRUCTION", @"FullKeyboardAccessSettings");
  v4 = [(FKASettingsController *)self _instructionWithFormat:v3 forStandardCommandIdentifier:AXSSKeyboardCommandIdentifierToggleControlCenter];

  return v4;
}

- (id)notificationCenterInstruction
{
  v3 = settingsLocString(@"NOTIFICATION_CENTER_INSTRUCTION", @"FullKeyboardAccessSettings");
  v4 = [(FKASettingsController *)self _instructionWithFormat:v3 forStandardCommandIdentifier:AXSSKeyboardCommandIdentifierToggleNotificationCenter];

  return v4;
}

- (void)cursorColorSelectionController:(id)controller selectedCursorColor:(int64_t)color
{
  v6 = +[AXSettings sharedInstance];
  [v6 setFullKeyboardAccessFocusRingColor:color];

  [(FKASettingsController *)self reloadSpecifierID:@"FKAFocusRingColor"];
}

- (int64_t)selectedColorForSelectionController:(id)controller
{
  v3 = +[AXSettings sharedInstance];
  fullKeyboardAccessFocusRingColor = [v3 fullKeyboardAccessFocusRingColor];

  return fullKeyboardAccessFocusRingColor;
}

@end