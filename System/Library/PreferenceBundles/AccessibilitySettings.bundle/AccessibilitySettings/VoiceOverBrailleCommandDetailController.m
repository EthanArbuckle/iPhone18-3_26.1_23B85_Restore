@interface VoiceOverBrailleCommandDetailController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (VoiceOverBrailleCommandDetailController)init;
- (id)_assignedCommandSpecifiers;
- (id)_specifierForBrailleKeyIdentifier:(id)a3;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_donePressed;
- (void)_editPressed:(id)a3;
- (void)_updateEditButtonState;
- (void)handleBrailleKeyMemorize:(id)a3;
- (void)memorizeNextKey:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverBrailleCommandDetailController

- (VoiceOverBrailleCommandDetailController)init
{
  v6.receiver = self;
  v6.super_class = VoiceOverBrailleCommandDetailController;
  v2 = [(VoiceOverBrailleCommandDetailController *)&v6 init];
  if (v2)
  {
    v3 = [[SCROBrailleClient alloc] initWithDelegate:v2];
    brailleClient = v2->_brailleClient;
    v2->_brailleClient = v3;

    [(SCROBrailleClient *)v2->_brailleClient setKeepConnectionAlive:1];
    [(SCROBrailleClient *)v2->_brailleClient setDisplayDescriptorCallbackEnabled:0];
  }

  return v2;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v5 = [v4 objectForKey:@"bt-device"];
  device = self->_device;
  self->_device = v5;

  v7 = [*&self->AXUISettingsBaseListController_opaque[v3] userInfo];
  v8 = [v7 objectForKey:@"braille-command"];
  command = self->_command;
  self->_command = v8;

  v10 = [*&self->AXUISettingsBaseListController_opaque[v3] userInfo];
  v11 = [v10 objectForKey:@"input-manager"];
  inputManager = self->_inputManager;
  self->_inputManager = v11;

  v13 = [*&self->AXUISettingsBaseListController_opaque[v3] userInfo];
  v14 = [v13 objectForKey:@"display-token"];
  self->_token = [v14 intValue];

  v15 = OBJC_IVAR___PSListController__specifiers;
  v16 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v16)
  {
    v17 = objc_alloc_init(NSMutableArray);
    v18 = settingsLocString(@"ASSIGNED_BRAILLE_KEYS", @"VoiceOverBrailleOptions");
    v19 = [PSSpecifier groupSpecifierWithID:@"BrailleCommandGroup" name:v18];

    [v17 addObject:v19];
    v20 = [(VoiceOverBrailleCommandDetailController *)self _assignedCommandSpecifiers];
    if ([v20 count])
    {
      [(VoiceOverBrailleCommandDetailController *)self _updateEditButtonState];
      [v17 addObjectsFromArray:v20];
    }

    else
    {
      v21 = settingsLocString(@"NO_ASSIGNED_BRAILLE_KEYS", @"VoiceOverBrailleOptions");
      v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:objc_opt_class() cell:3 edit:0];

      [v22 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
      [v17 addObject:v22];
    }

    v23 = [PSSpecifier groupSpecifierWithID:@"AddNewCommand"];
    [v17 addObject:v23];
    v24 = settingsLocString(@"ASSIGN_NEW_CHORD", @"VoiceOverBrailleOptions");
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v25 setButtonAction:"memorizeNextKey:"];
    [v17 addObject:v25];
    v26 = *&self->AXUISettingsBaseListController_opaque[v15];
    *&self->AXUISettingsBaseListController_opaque[v15] = v17;

    v16 = *&self->AXUISettingsBaseListController_opaque[v15];
  }

  return v16;
}

- (id)_assignedCommandSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [(SCROMobileBrailleDisplayInputManager *)self->_inputManager commandDictionaryForDisplayWithToken:self->_token];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __69__VoiceOverBrailleCommandDetailController__assignedCommandSpecifiers__block_invoke;
  v9[3] = &unk_256A78;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __69__VoiceOverBrailleCommandDetailController__assignedCommandSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if ([a3 isEqualToString:*(*(a1 + 32) + 176)] && objc_msgSend(*(a1 + 32), "keyIsSupported:", v6))
  {
    v5 = [*(a1 + 32) _specifierForBrailleKeyIdentifier:v6];
    if (v5)
    {
      [*(a1 + 40) addObject:v5];
    }
  }
}

- (id)_specifierForBrailleKeyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(VoiceOverBrailleCommandDetailController *)self _buttonNameForKeyIdentifier:v4];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:objc_opt_class() cell:3 edit:0];
  [v6 setProperty:v4 forKey:@"braille-key"];

  return v6;
}

- (void)_updateEditButtonState
{
  v3 = [(VoiceOverBrailleCommandDetailController *)self _assignedCommandSpecifiers];
  v4 = [v3 count];

  if (v4)
  {
    if (([*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] isEditing] & 1) == 0)
    {
      v7 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:2 target:self action:"_editPressed:"];
      v6 = [(VoiceOverBrailleCommandDetailController *)self navigationItem];
      [v6 setRightBarButtonItem:v7];
    }
  }

  else
  {
    v5 = [(VoiceOverBrailleCommandDetailController *)self navigationItem];
    [v5 setRightBarButtonItem:0];

    [(VoiceOverBrailleCommandDetailController *)self setEditing:0 animated:1];
  }
}

- (void)_editPressed:(id)a3
{
  [(VoiceOverBrailleCommandDetailController *)self setEditing:1 animated:1];
  v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:self action:"_donePressed"];
  v4 = [(VoiceOverBrailleCommandDetailController *)self navigationItem];
  [v4 setRightBarButtonItem:v5];
}

- (void)_donePressed
{
  [(VoiceOverBrailleCommandDetailController *)self setEditing:0 animated:1];

  [(VoiceOverBrailleCommandDetailController *)self _updateEditButtonState];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 >= [v6 numberOfSections] || (v9 = objc_msgSend(v7, "row"), v9 >= objc_msgSend(v6, "numberOfRowsInSection:", objc_msgSend(v7, "section"))))
  {
    v12 = 0;
  }

  else
  {
    v10 = [(VoiceOverBrailleCommandDetailController *)self specifierAtIndex:[(VoiceOverBrailleCommandDetailController *)self indexForIndexPath:v7]];
    v11 = [v10 propertyForKey:@"braille-key"];
    v12 = v11 != 0;
  }

  return v12;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(VoiceOverBrailleCommandDetailController *)self specifierAtIndex:[(VoiceOverBrailleCommandDetailController *)self indexForIndexPath:a4]];
  v5 = [v4 propertyForKey:@"braille-key"];
  v6 = v5 != 0;

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  [(VoiceOverBrailleCommandDetailController *)self beginUpdates];
  v8 = [(VoiceOverBrailleCommandDetailController *)self indexForIndexPath:v7];

  v9 = [(VoiceOverBrailleCommandDetailController *)self specifierAtIndex:v8];
  v10 = v9;
  if (a4 == 1)
  {
    v11 = [v9 propertyForKey:@"braille-key"];
    if (v11)
    {
      [(SCROMobileBrailleDisplayInputManager *)self->_inputManager setCommand:kVOTEventCommandNullCommand forInputIdentifier:v11 forDisplayWithToken:self->_token];
      v13 = v10;
      v12 = [NSArray arrayWithObjects:&v13 count:1];
      [(VoiceOverBrailleCommandDetailController *)self removeContiguousSpecifiers:v12 animated:1];
    }
  }

  [(VoiceOverBrailleCommandDetailController *)self _updateEditButtonState];
  [(VoiceOverBrailleCommandDetailController *)self endUpdates];
}

- (void)memorizeNextKey:(id)a3
{
  v4 = a3;
  if (self->_token == kSCROSystemVirtualBrailleDisplayToken)
  {
    v5 = @"BRAILLE_PRESS_KEYS_TO_BIND_BSI_BKI";
  }

  else
  {
    v5 = @"BRAILLE_PRESS_KEYS_TO_BIND";
  }

  v6 = settingsLocString(v5, @"VoiceOverBrailleOptions");
  v7 = objc_alloc_init(VOSVoiceOverCommandInfo);
  v8 = [v7 localizedNameForCommand:self->_command];
  v9 = [NSString stringWithFormat:v6, v8];

  v10 = settingsLocString(@"BRAILLE_PRESS_KEYS_TITLE", @"VoiceOverBrailleOptions");
  v11 = [UIAlertController alertControllerWithTitle:v10 message:v9 preferredStyle:1];
  alertController = self->_alertController;
  self->_alertController = v11;

  v13 = settingsLocString(@"CANCEL", @"VoiceOverBluetoothDevices");
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];

  [(UIAlertController *)self->_alertController addAction:v14];
  self->_hasMemorizedKey = 0;
  if (([(VoiceOverBrailleCommandDetailController *)self inSetup]& 1) != 0)
  {
    v15 = [(VoiceOverBrailleCommandDetailController *)self navigationController];
  }

  else
  {
    v16 = [(VoiceOverBrailleCommandDetailController *)self view];
    v17 = [v16 window];
    v15 = [v17 rootViewController];
  }

  v18 = self->_alertController;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __59__VoiceOverBrailleCommandDetailController_memorizeNextKey___block_invoke;
  v19[3] = &unk_2553B0;
  v19[4] = self;
  [v15 presentViewController:v18 animated:1 completion:v19];
}

id __59__VoiceOverBrailleCommandDetailController_memorizeNextKey___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 152) setPrimaryBrailleDisplay:*(*(a1 + 32) + 168)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  v4 = *(v2 + 168);

  return [v3 setPrepareToMemorizeNextKey:1 immediate:1 forDisplayWithToken:v4];
}

- (void)handleBrailleKeyMemorize:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __68__VoiceOverBrailleCommandDetailController_handleBrailleKeyMemorize___block_invoke;
  v4[3] = &unk_255538;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

void __68__VoiceOverBrailleCommandDetailController_handleBrailleKeyMemorize___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 200) & 1) == 0 && *(a1 + 40))
  {
    *(v1 + 200) = 1;
    v3 = [*(*(a1 + 32) + 160) commandForBrailleKey:*(a1 + 40)];
    if ([v3 length] && (objc_msgSend(v3, "isEqualToString:", kVOTEventCommandNullCommand) & 1) == 0)
    {
      v6 = *(*(a1 + 32) + 184);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = __68__VoiceOverBrailleCommandDetailController_handleBrailleKeyMemorize___block_invoke_2;
      v11[3] = &unk_2561D8;
      v7 = v3;
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12 = v7;
      v13 = v8;
      v14 = v9;
      [v6 dismissViewControllerAnimated:0 completion:v11];
    }

    else
    {
      [*(*(a1 + 32) + 160) setCommand:*(*(a1 + 32) + 176) forBrailleKey:*(a1 + 40)];
      v4 = *(a1 + 32);
      v5 = *(v4 + 184);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __68__VoiceOverBrailleCommandDetailController_handleBrailleKeyMemorize___block_invoke_5;
      v10[3] = &unk_2553B0;
      v10[4] = v4;
      [v5 dismissViewControllerAnimated:1 completion:v10];
    }
  }
}

void __68__VoiceOverBrailleCommandDetailController_handleBrailleKeyMemorize___block_invoke_2(uint64_t a1)
{
  v2 = settingsLocString(@"BRAILLE_KEY_IN_USE_TITLE", @"VoiceOverBrailleOptions");
  v3 = objc_alloc_init(VOSVoiceOverCommandInfo);
  v4 = [v3 localizedNameForCommand:*(a1 + 32)];

  v5 = settingsLocString(@"CONFLICT_BRAILLE_KEY_BINDING", @"VoiceOverBrailleOptions");
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) identifier];
  v8 = [v6 _buttonNameForKeyIdentifier:v7];
  v9 = [NSString stringWithFormat:v5, v8, v4];

  v10 = [UIAlertController alertControllerWithTitle:v2 message:v9 preferredStyle:1];
  v11 = *(a1 + 40);
  v12 = *(v11 + 192);
  *(v11 + 192) = v10;

  v13 = settingsLocString(@"CANCEL", @"VoiceOverBluetoothDevices");
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __68__VoiceOverBrailleCommandDetailController_handleBrailleKeyMemorize___block_invoke_3;
  v25[3] = &unk_2557A8;
  v25[4] = *(a1 + 40);
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:v25];

  [*(*(a1 + 40) + 192) addAction:v14];
  v15 = settingsLocString(@"REPLACE", @"VoiceOverBrailleOptions");
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __68__VoiceOverBrailleCommandDetailController_handleBrailleKeyMemorize___block_invoke_4;
  v23[3] = &unk_256AA0;
  v16 = *(a1 + 48);
  v23[4] = *(a1 + 40);
  v24 = v16;
  v17 = [UIAlertAction actionWithTitle:v15 style:2 handler:v23];

  [*(*(a1 + 40) + 192) addAction:v17];
  v18 = [*(a1 + 40) inSetup];
  v19 = *(a1 + 40);
  if (v18)
  {
    v20 = [v19 navigationController];
  }

  else
  {
    v21 = [v19 view];
    v22 = [v21 window];
    v20 = [v22 rootViewController];
  }

  [v20 presentViewController:*(*(a1 + 40) + 192) animated:1 completion:0];
}

id __68__VoiceOverBrailleCommandDetailController_handleBrailleKeyMemorize___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 192) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

id __68__VoiceOverBrailleCommandDetailController_handleBrailleKeyMemorize___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 160) setCommand:*(*(a1 + 32) + 176) forBrailleKey:*(a1 + 40)];
  [*(*(a1 + 32) + 192) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

@end