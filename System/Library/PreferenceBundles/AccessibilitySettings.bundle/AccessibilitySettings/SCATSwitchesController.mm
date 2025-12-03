@interface SCATSwitchesController
+ (id)switchSpecifiersForSwitchesWithTarget:(id)target get:(SEL)get;
+ (id)switchSpecifiersForSwitchesWithTarget:(id)target get:(SEL)get isEnabled:(id)enabled;
- (BOOL)_shouldAllowEditing;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (id)_disabledSwitchSpecifiers;
- (id)_switchSpecifiers;
- (id)actionStringForSpecifier:(id)specifier;
- (id)ignoreInvalidSwitchConfiguration:(id)configuration;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_allowUSBRM;
- (void)_clearSCUSBRMDisabler;
- (void)_reloadSpecifiers;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setIgnoreInvalidSwitchConfiguration:(id)configuration specifier:(id)specifier;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SCATSwitchesController

- (BOOL)_shouldAllowEditing
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchSwitches = [v2 assistiveTouchSwitches];
  v4 = [assistiveTouchSwitches count] != 0;

  return v4;
}

- (id)_switchSpecifiers
{
  v3 = objc_opt_class();

  return [v3 switchSpecifiersForSwitchesWithTarget:self get:"actionStringForSpecifier:" isEnabled:&__kCFBooleanTrue];
}

- (id)_disabledSwitchSpecifiers
{
  v3 = objc_opt_class();

  return [v3 switchSpecifiersForSwitchesWithTarget:self get:"actionStringForSpecifier:" isEnabled:&__kCFBooleanFalse];
}

int64_t __40__SCATSwitchesController__sortSwitches___block_invoke(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 propertyForKey:@"SwitchKey"];
  v6 = [(PSSpecifier *)v4 propertyForKey:@"SwitchKey"];

  v7 = [v5 name];
  v8 = [v6 name];
  v9 = [v7 localizedCaseInsensitiveCompare:v8];

  return v9;
}

+ (id)switchSpecifiersForSwitchesWithTarget:(id)target get:(SEL)get
{
  v5 = objc_opt_class();

  return [v5 switchSpecifiersForSwitchesWithTarget:self get:"actionStringForSpecifier:" isEnabled:0];
}

+ (id)switchSpecifiersForSwitchesWithTarget:(id)target get:(SEL)get isEnabled:(id)enabled
{
  targetCopy = target;
  enabledCopy = enabled;
  v37 = +[AXSettings sharedInstance];
  assistiveTouchSwitches = [v37 assistiveTouchSwitches];
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [assistiveTouchSwitches count]);
  +[NSMutableDictionary dictionary];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = __78__SCATSwitchesController_switchSpecifiersForSwitchesWithTarget_get_isEnabled___block_invoke;
  v12 = v47[3] = &unk_259368;
  v48 = v12;
  v35 = targetCopy;
  v49 = v35;
  getCopy = get;
  selfCopy = self;
  v33 = enabledCopy;
  v50 = v33;
  v13 = v11;
  v51 = v13;
  v36 = assistiveTouchSwitches;
  [assistiveTouchSwitches enumerateObjectsUsingBlock:v47];
  v34 = v13;
  [self _sortSwitches:v13];
  v14 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v12 allKeys];
  v15 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v43 + 1) + 8 * i);
        v20 = [v12 objectForKey:v19];
        v21 = +[NSCharacterSet whitespaceCharacterSet];
        v22 = [v19 stringByTrimmingCharactersInSet:v21];
        v23 = [v22 length];

        if (v23)
        {
          v24 = [PSSpecifier groupSpecifierWithName:v19];
          [v14 addObject:v24];
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v25 = v20;
        v26 = [v25 countByEnumeratingWithState:&v39 objects:v54 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v40;
          do
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v40 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [v14 addObject:*(*(&v39 + 1) + 8 * j)];
            }

            v27 = [v25 countByEnumeratingWithState:&v39 objects:v54 count:16];
          }

          while (v27);
        }

        v30 = +[PSSpecifier emptyGroupSpecifier];
        [v14 addObject:v30];
      }

      v16 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v16);
  }

  if ([v14 count])
  {
    [v34 addObjectsFromArray:v14];
  }

  v31 = v34;

  return v34;
}

void __78__SCATSwitchesController_switchSpecifiersForSwitchesWithTarget_get_isEnabled___block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [v23 source];
  v4 = [v3 isEqualToString:SCATSwitchSourceMFI];

  if (v4)
  {
    v5 = [v23 productName];
    v6 = [v23 manufacturerName];
    if ([v5 length] || objc_msgSend(v6, "length"))
    {
      if ([v5 length] || !objc_msgSend(v6, "length"))
      {
        if ([v5 length] && !objc_msgSend(v6, "length"))
        {
          v7 = v5;
        }

        else
        {
          v7 = [NSString stringWithFormat:@"%@ (%@)", v5, v6];
        }
      }

      else
      {
        v7 = v6;
      }

      v19 = v7;
    }

    else
    {
      v19 = @" ";
    }

    v20 = [*(a1 + 32) objectForKey:v19];
    if (!v20)
    {
      v20 = +[NSMutableArray array];
      [*(a1 + 32) setObject:v20 forKey:v19];
    }

    v21 = [v23 name];
    v18 = [PSSpecifier preferenceSpecifierNamed:v21 target:*(a1 + 40) set:0 get:*(a1 + 64) detail:0 cell:2 edit:0];

    [v18 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v18 setProperty:v23 forKey:@"SwitchKey"];
    [v20 addObject:v18];
    [*(a1 + 72) _sortSwitches:v20];

LABEL_30:
    v12 = v23;
    goto LABEL_31;
  }

  v8 = [v23 source];
  if ([v8 isEqualToString:SCATSwitchSourceBackTap])
  {
    v9 = AXDeviceSupportsBackTap();

    if (!v9)
    {
      v10 = AXDeviceSupportsVoiceTriggers() ^ 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v11 = [v23 source];
  if ([v11 isEqualToString:SCATSwitchSourceSound])
  {
    LOBYTE(v10) = AXDeviceSupportsVoiceTriggers() ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

LABEL_16:
  v12 = v23;
  if (!*(a1 + 48))
  {
    if (v10)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  v13 = [v23 isEnabled];
  v14 = v13 == [*(a1 + 48) BOOLValue];
  v12 = v23;
  if (v14)
  {
LABEL_20:
    v5 = [v12 name];
    v15 = [v23 remoteDeviceName];
    v16 = [v15 length];

    if (v16)
    {
      v22 = [v23 remoteDeviceName];
      v17 = AXParameterizedLocalizedString();

      v5 = v17;
    }

    v18 = [PSSpecifier preferenceSpecifierNamed:v5 target:*(a1 + 40) set:0 get:*(a1 + 64) detail:0 cell:2 edit:0, v22];
    [v18 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v18 setProperty:v23 forKey:@"SwitchKey"];
    [*(a1 + 56) addObject:v18];
    goto LABEL_30;
  }

LABEL_31:
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v18.receiver = self;
  v18.super_class = SCATSwitchesController;
  [(SCATSwitchesController *)&v18 setEditing:editing animated:animated];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v19[0] = @"AddSwitchIdentifier";
  v19[1] = @"BluetoothDevicesIdentifier";
  v6 = [NSArray arrayWithObjects:v19 count:2, 0];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = PSEnabledKey;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(SCATSwitchesController *)self specifierForID:*(*(&v14 + 1) + 8 * v11)];
        v13 = [NSNumber numberWithInt:!editingCopy];
        [v12 setProperty:v13 forKey:v10];

        [(SCATSwitchesController *)self reloadSpecifier:v12];
        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = AXParameterizedLocalizedString();
    v7 = [PSSpecifier groupSpecifierWithID:@"EnabledSwitchesGroupIdentifier" name:v6];

    [(SCATSwitchesController *)self setEnabledSwitchesSpecifierGroup:v7];
    _switchSpecifiers = [(SCATSwitchesController *)self _switchSpecifiers];
    if ([_switchSpecifiers count])
    {
      [v5 addObject:v7];
      [v5 addObjectsFromArray:_switchSpecifiers];
    }

    v30 = _switchSpecifiers;
    v31 = v7;
    v9 = [PSSpecifier groupSpecifierWithID:@"AddSwitchGroupIdentifier"];
    [(SCATSwitchesController *)self setAddSwitchesSpecifierGroup:v9];
    v10 = +[AXSettings sharedInstance];
    switchControlScanningStyle = [v10 switchControlScanningStyle];

    if (switchControlScanningStyle > 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = AXParameterizedLocalizedString();
    }

    v28 = PSFooterTextGroupKey;
    v29 = v12;
    [v9 setProperty:v12 forKey:?];
    [v5 addObject:v9];
    v13 = AXParameterizedLocalizedString();
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v14 setIdentifier:@"AddSwitchIdentifier"];
    [v14 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v5 addObject:v14];
    v15 = AXParameterizedLocalizedString();
    v16 = [PSSpecifier groupSpecifierWithID:@"DisabledSwitchesGroupIdentifier" name:v15];

    _disabledSwitchSpecifiers = [(SCATSwitchesController *)self _disabledSwitchSpecifiers];
    if ([_disabledSwitchSpecifiers count])
    {
      [v5 addObject:v16];
      [v5 addObjectsFromArray:_disabledSwitchSpecifiers];
    }

    v18 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v18];
    v27 = v16;
    v19 = settingsLocString(@"BluetoothDevicesScanning", @"HandSettings");
    [(SCATSwitchesController *)self inSetup];
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v20 setIdentifier:@"BluetoothDevicesIdentifier"];
    [v5 addObject:v20];
    v21 = +[PSSpecifier emptyGroupSpecifier];

    v22 = settingsLocString(@"IGNORE_INVALID_SWITCH_FOOTER", @"HandSettings");
    [v21 setProperty:v22 forKey:v28];

    [v5 addObject:v21];
    v23 = settingsLocString(@"IGNORE_INVALID_SWITCH", @"HandSettings");
    v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:"setIgnoreInvalidSwitchConfiguration:specifier:" get:"ignoreInvalidSwitchConfiguration:" detail:0 cell:6 edit:0];

    [v24 setProperty:@"IgnoreInvalidSwitchConfiguration" forKey:PSIDKey];
    [v5 addObject:v24];
    v25 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)_reloadSpecifiers
{
  [(SCATSwitchesController *)self beginUpdates];
  _switchSpecifiers = [(SCATSwitchesController *)self _switchSpecifiers];
  v4 = [_switchSpecifiers count];

  if (v4)
  {
    v5 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
    enabledSwitchesSpecifierGroup = [(SCATSwitchesController *)self enabledSwitchesSpecifierGroup];
    LOBYTE(v5) = [v5 containsObject:enabledSwitchesSpecifierGroup];

    if (v5)
    {
      goto LABEL_6;
    }

    enabledSwitchesSpecifierGroup2 = [(SCATSwitchesController *)self enabledSwitchesSpecifierGroup];
    [(SCATSwitchesController *)self insertSpecifier:enabledSwitchesSpecifierGroup2 atIndex:0];
  }

  else
  {
    enabledSwitchesSpecifierGroup2 = [(SCATSwitchesController *)self enabledSwitchesSpecifierGroup];
    [(SCATSwitchesController *)self removeSpecifier:enabledSwitchesSpecifierGroup2 animated:1];
  }

LABEL_6:

  [(SCATSwitchesController *)self endUpdates];
}

- (void)setIgnoreInvalidSwitchConfiguration:(id)configuration specifier:(id)specifier
{
  bOOLValue = [configuration BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlIgnoreInvalidSwitchConfiguration:bOOLValue];
}

- (id)ignoreInvalidSwitchConfiguration:(id)configuration
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 switchControlIgnoreInvalidSwitchConfiguration]);

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SCATSwitchesController;
  [(SCATSwitchesController *)&v6 viewWillAppear:appear];
  if ([(SCATSwitchesController *)self _shouldAllowEditing])
  {
    editButtonItem = [(SCATSwitchesController *)self editButtonItem];
    navigationItem = [(SCATSwitchesController *)self navigationItem];
    [navigationItem setRightBarButtonItem:editButtonItem];
  }

  [(SCATSwitchesController *)self reloadSpecifiers];
}

- (id)actionStringForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"SwitchKey"];
  hasLongPressAction = [v4 hasLongPressAction];
  if ((hasLongPressAction & 1) == 0)
  {
    longPressShortcutIdentifier = [v4 longPressShortcutIdentifier];
    if (!longPressShortcutIdentifier)
    {
      goto LABEL_5;
    }
  }

  v6 = +[AXSettings sharedInstance];
  assistiveTouchLongPressEnabled = [v6 assistiveTouchLongPressEnabled];

  if ((hasLongPressAction & 1) == 0)
  {

    if ((assistiveTouchLongPressEnabled & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v13 = AXParameterizedLocalizedString();
    goto LABEL_10;
  }

  if (assistiveTouchLongPressEnabled)
  {
    goto LABEL_8;
  }

LABEL_5:
  shortcutIdentifier = [v4 shortcutIdentifier];

  if (shortcutIdentifier)
  {
    v9 = +[AXSiriShortcutsManager sharedManager];
    shortcutIdentifier2 = [v4 shortcutIdentifier];
    v11 = [v9 shortcutForIdentifier:shortcutIdentifier2];
    shortcutName = [v11 shortcutName];

    goto LABEL_11;
  }

  [v4 action];
  v13 = SCATLocStringForAction();
LABEL_10:
  shortcutName = v13;
LABEL_11:

  return shortcutName;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(SCATSwitchesController *)self specifierForIndexPath:path];
  v5 = [v4 propertyForKey:@"SwitchKey"];
  v6 = v5 != 0;

  return v6;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (style == 1)
  {
    v10 = [(SCATSwitchesController *)self specifierForIndexPath:pathCopy];
    v11 = [v10 propertyForKey:@"SwitchKey"];
    source = [v11 source];
    v13 = [source isEqual:SCATSwitchSourceMFI];

    v14 = +[AXSettings sharedInstance];
    assistiveTouchSwitches = [v14 assistiveTouchSwitches];
    v15 = [assistiveTouchSwitches mutableCopy];
    [v15 removeObject:v11];
    [v14 setAssistiveTouchSwitches:v15];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    assistiveTouchSwitches2 = [v14 assistiveTouchSwitches];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __73__SCATSwitchesController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
    v29[3] = &unk_258D20;
    v29[4] = &v30;
    [assistiveTouchSwitches2 enumerateObjectsUsingBlock:v29];

    [(SCATSwitchesController *)self removeSpecifier:v10 animated:1];
    if (![(SCATSwitchesController *)self _shouldAllowEditing])
    {
      v28[5] = _NSConcreteStackBlock;
      v28[6] = 3221225472;
      v28[7] = __73__SCATSwitchesController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2;
      v28[8] = &unk_2553B0;
      v28[9] = self;
      AXPerformBlockOnMainThreadAfterDelay();
    }

    v17 = _AXSGetUSBRMDisablers();
    if (v13 && (v31[3] & 1) == 0 && (v17 & 2) != 0)
    {
      v18 = AXParameterizedLocalizedString();
      v19 = AXLocStringKeyForModel();
      v20 = AXParameterizedLocalizedString();
      v25 = [UIAlertController alertControllerWithTitle:v18 message:v20 preferredStyle:1];

      v21 = AXParameterizedLocalizedString();
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = __73__SCATSwitchesController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_3;
      v28[3] = &unk_2557A8;
      v28[4] = self;
      v22 = [UIAlertAction actionWithTitle:v21 style:0 handler:v28];
      [v25 addAction:v22];

      v23 = AXParameterizedLocalizedString();
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = __73__SCATSwitchesController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_4;
      v27[3] = &unk_2557A8;
      v27[4] = self;
      v24 = [UIAlertAction actionWithTitle:v23 style:0 handler:v27];
      [v25 addAction:v24];

      [(SCATSwitchesController *)self presentViewController:v25 animated:1 completion:0];
    }

    _Block_object_dispose(&v30, 8);
  }

  [(SCATSwitchesController *)self _reloadSpecifiers];
}

void __73__SCATSwitchesController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 source];
  v6 = [v5 isEqual:SCATSwitchSourceMFI];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

id __73__SCATSwitchesController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  [v2 setRightBarButtonItem:0];

  v3 = *(a1 + 32);

  return [v3 setEditing:0 animated:1];
}

id __73__SCATSwitchesController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _allowUSBRM];
  v2 = *(a1 + 32);

  return [v2 _clearSCUSBRMDisabler];
}

- (void)_clearSCUSBRMDisabler
{
  v2 = _AXSGetUSBRMDisablers() & 0xFFFFFFFDLL;

  __AXSSetUSBRMDisablers(v2);
}

- (void)_allowUSBRM
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 setBoolValue:1 forSetting:MCFeatureUSBRestrictedModeAllowed];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SCATSwitchesController *)self specifierForIndexPath:pathCopy];
  identifier = [v8 identifier];
  if ([identifier isEqualToString:@"AddSwitchIdentifier"])
  {
    v10 = objc_opt_new();
    [v10 setParentController:self];
    rootController = [(SCATSwitchesController *)self rootController];
    [v10 setRootController:rootController];

    v12 = AXParameterizedLocalizedString();
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v10 setSpecifier:v13];

    [(SCATSwitchesController *)self showController:v10 animate:1];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }

  else
  {
    v14 = [v8 propertyForKey:@"SwitchKey"];

    if (!v14)
    {
      v16.receiver = self;
      v16.super_class = SCATSwitchesController;
      [(SCATSwitchesController *)&v16 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
      goto LABEL_6;
    }

    v10 = [v8 propertyForKey:@"SwitchKey"];
    v15 = [SCATSwitchDetailsViewController switchDetailsViewControllerWithSwitch:v10 parentController:self];
    [(SCATSwitchesController *)self showController:v15 animate:1];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }

LABEL_6:
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(SCATSwitchesController *)self specifierForIndexPath:path];
  v5 = [v4 propertyForKey:@"SwitchKey"];
  v6 = v5 != 0;

  return v6;
}

@end