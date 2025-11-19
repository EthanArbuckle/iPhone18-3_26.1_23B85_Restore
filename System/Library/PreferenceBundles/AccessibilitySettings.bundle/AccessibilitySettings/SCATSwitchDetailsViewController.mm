@interface SCATSwitchDetailsViewController
+ (id)switchDetailsViewControllerWithSwitch:(id)a3 SCATOnboarding:(BOOL)a4;
+ (id)switchDetailsViewControllerWithSwitch:(id)a3 parentController:(id)a4;
- (SCATSwitchDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SCATSwitchDetailsViewControllerDelegate)delegate;
- (id)_actionGroupSpecifiers;
- (id)_generalGroupSpecifiers;
- (id)_getResumeAutoScanning:(id)a3;
- (id)_getSwitchDefaultActionDescription:(id)a3;
- (id)_getSwitchIsEnabledDescription:(id)a3;
- (id)_getSwitchLongPressActionDescription:(id)a3;
- (id)_getSwitchMIDIChannelDescription:(id)a3;
- (id)_getSwitchMIDIKeyDescription:(id)a3;
- (id)_getSwitchNameDescription:(id)a3;
- (id)_getSwitchSourceDescription:(id)a3;
- (id)_midiGroupSpecifiers;
- (id)initSCATOnboarding:(BOOL)a3;
- (id)specifiers;
- (void)_setResumeAutoScanning:(id)a3 specifier:(id)a4;
- (void)_setSwitchIsEnabled:(id)a3 specifier:(id)a4;
- (void)_setSwitchNameDescription:(id)a3 specifier:(id)a4;
- (void)didUpdateOnboardingSwitchDetails;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SCATSwitchDetailsViewController

+ (id)switchDetailsViewControllerWithSwitch:(id)a3 parentController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _AXAssert();
  }

  v8 = objc_alloc_init(SCATSwitchDetailsViewController);
  [(SCATSwitchDetailsViewController *)v8 setModelSwitch:v6];
  [(SCATSwitchDetailsViewController *)v8 setParentController:v7];
  v9 = [v7 rootController];
  [(SCATSwitchDetailsViewController *)v8 setRootController:v9];

  v10 = AXParameterizedLocalizedString();
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:a1 set:0 get:0 detail:0 cell:-1 edit:0];
  [(SCATSwitchDetailsViewController *)v8 setSpecifier:v11];

  return v8;
}

+ (id)switchDetailsViewControllerWithSwitch:(id)a3 SCATOnboarding:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    _AXAssert();
  }

  v7 = [[SCATSwitchDetailsViewController alloc] initSCATOnboarding:v4];
  [v7 setModelSwitch:v6];
  v8 = AXParameterizedLocalizedString();
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:a1 set:0 get:0 detail:0 cell:-1 edit:0];
  [v7 setSpecifier:v9];

  return v7;
}

- (id)initSCATOnboarding:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SCATSwitchDetailsViewController;
  result = [(SCATSwitchDetailsViewController *)&v5 init];
  if (result)
  {
    *(result + 138) = a3;
  }

  return result;
}

- (SCATSwitchDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SCATSwitchDetailsViewController;
  v4 = [(SCATSwitchDetailsViewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [[SCATAlertCoordinator alloc] initWithViewController:v4];
    [(SCATSwitchDetailsViewController *)v4 setSwitchAlertCoordinator:v5];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SCATSwitchDetailsViewController;
  [(SCATSwitchDetailsViewController *)&v4 viewWillAppear:a3];
  [(SCATSwitchDetailsViewController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = +[NSMutableArray array];
    v7 = [(SCATSwitchDetailsViewController *)self _generalGroupSpecifiers];
    [v6 addObjectsFromArray:v7];

    v8 = [(SCATSwitchDetailsViewController *)self _actionGroupSpecifiers];
    [v6 addObjectsFromArray:v8];

    v9 = [(SCATSwitchDetailsViewController *)self modelSwitch];
    v10 = [v9 source];
    v11 = [v10 isEqualToString:SCATSwitchSourceMIDI];

    if (v11)
    {
      v12 = [(SCATSwitchDetailsViewController *)self _midiGroupSpecifiers];
      [v6 addObjectsFromArray:v12];
    }

    v13 = *&self->AXUISettingsSetupCapableListController_opaque[v2];
    *&self->AXUISettingsSetupCapableListController_opaque[v2] = v6;
    v14 = v6;

    v4 = *&self->AXUISettingsSetupCapableListController_opaque[v2];
  }

  return v4;
}

- (id)_generalGroupSpecifiers
{
  v3 = AXParameterizedLocalizedString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:"_getSwitchNameDescription:" detail:0 cell:4 edit:0];

  [v4 setIdentifier:@"switchNameID"];
  v5 = PSEnabledKey;
  [v4 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v6 = AXParameterizedLocalizedString();
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"_getSwitchSourceDescription:" detail:0 cell:4 edit:0];

  v8 = AXParameterizedLocalizedString();
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"_setSwitchIsEnabled:specifier:" get:"_getSwitchIsEnabledDescription:" detail:0 cell:6 edit:0];

  [v9 setProperty:&__kCFBooleanTrue forKey:v5];
  v12[0] = v4;
  v12[1] = v7;
  v12[2] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:3];

  return v10;
}

- (id)_actionGroupSpecifiers
{
  v3 = AXParameterizedLocalizedString();
  v4 = [PSSpecifier groupSpecifierWithID:@"switchActionsGroupID" name:v3];

  v5 = AXParameterizedLocalizedString();
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"_getSwitchDefaultActionDescription:" detail:0 cell:2 edit:0];

  [v6 setIdentifier:@"defaultActionID"];
  v7 = PSEnabledKey;
  [v6 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v8 = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v9 = +[AXSettings sharedInstance];
  v10 = [v9 assistiveTouchLongPressEnabled];

  v11 = [v8 supportsLongPress];
  v12 = AXParameterizedLocalizedString();
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:"_getSwitchLongPressActionDescription:" detail:0 cell:2 edit:0];

  [v13 setIdentifier:@"longPressActionID"];
  v14 = v10 & v11;
  v15 = [NSNumber numberWithInt:v14];
  [v13 setProperty:v15 forKey:v7];

  if ((v14 & 1) == 0)
  {
    v16 = AXParameterizedLocalizedString();
    [v4 setProperty:v16 forKey:PSFooterTextGroupKey];
  }

  v22[0] = v4;
  v22[1] = v6;
  v22[2] = v13;
  v17 = [NSArray arrayWithObjects:v22 count:3];
  v18 = [v17 mutableCopy];

  if ([v8 action] == &stru_20.flags + 3 || objc_msgSend(v8, "action") == &stru_68.sectname[5] || objc_msgSend(v8, "longPressAction") == &stru_20.flags + 3 || objc_msgSend(v8, "longPressAction") == &stru_68.sectname[5])
  {
    v19 = AXParameterizedLocalizedString();
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:"_setResumeAutoScanning:specifier:" get:"_getResumeAutoScanning:" detail:0 cell:6 edit:0];

    [v18 addObject:v20];
  }

  return v18;
}

- (id)_midiGroupSpecifiers
{
  v3 = AXParameterizedLocalizedString();
  v4 = [PSSpecifier groupSpecifierWithName:v3];

  v5 = AXParameterizedLocalizedString();
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"_getSwitchMIDIChannelDescription:" detail:0 cell:2 edit:0];

  [v6 setIdentifier:@"midiChannelID"];
  v7 = PSEnabledKey;
  [v6 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v8 = AXParameterizedLocalizedString();
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"_getSwitchMIDIKeyDescription:" detail:0 cell:2 edit:0];

  [v9 setIdentifier:@"midiKeyID"];
  [v9 setProperty:&__kCFBooleanTrue forKey:v7];
  v12[0] = v4;
  v12[1] = v6;
  v12[2] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:3];

  return v10;
}

- (void)didUpdateOnboardingSwitchDetails
{
  [(SCATSwitchDetailsViewController *)self reloadSpecifiers];
  v3 = [(SCATSwitchDetailsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SCATSwitchDetailsViewController *)self delegate];
    [v5 reloadSwitchesForDetailsView];
  }
}

- (id)_getSwitchNameDescription:(id)a3
{
  v3 = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v4 = [v3 name];

  return v4;
}

- (void)_setSwitchNameDescription:(id)a3 specifier:(id)a4
{
  v7 = a3;
  if ([v7 length])
  {
    v5 = [(SCATSwitchDetailsViewController *)self modelSwitch];
    [v5 setName:v7];

    v6 = [(SCATSwitchDetailsViewController *)self modelSwitch];
    SCATAddOrUpdateSwitchToSettings();
  }
}

- (id)_getSwitchSourceDescription:(id)a3
{
  v3 = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v4 = [v3 localizedSourceDescription];

  return v4;
}

- (id)_getSwitchIsEnabledDescription:(id)a3
{
  v3 = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabled]);

  return v4;
}

- (void)_setSwitchIsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v7 = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v6 = [v5 BOOLValue];

  [v7 setIsEnabled:v6];
  SCATAddOrUpdateSwitchToSettings();
  if (self->_isSCATOnboarding)
  {
    [(SCATSwitchDetailsViewController *)self didUpdateOnboardingSwitchDetails];
  }
}

- (id)_getSwitchDefaultActionDescription:(id)a3
{
  v4 = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v5 = [v4 shortcutIdentifier];

  if (v5)
  {
    v6 = +[AXSiriShortcutsManager sharedManager];
    v7 = [v6 shortcutForIdentifier:v5];

    v8 = [v7 shortcutName];
  }

  else
  {
    v9 = [(SCATSwitchDetailsViewController *)self modelSwitch];
    v10 = [v9 action];

    if (v10)
    {
      SCATLocStringForAction();
    }

    else
    {
      AXParameterizedLocalizedString();
    }
    v8 = ;
  }

  return v8;
}

- (id)_getSwitchLongPressActionDescription:(id)a3
{
  v4 = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v5 = [v4 longPressShortcutIdentifier];

  if (v5)
  {
    v6 = +[AXSiriShortcutsManager sharedManager];
    v7 = [v6 shortcutForIdentifier:v5];

    v8 = [v7 shortcutName];
  }

  else
  {
    v9 = [(SCATSwitchDetailsViewController *)self modelSwitch];
    v10 = [v9 longPressAction];

    if (v10)
    {
      SCATLocStringForAction();
    }

    else
    {
      AXParameterizedLocalizedString();
    }
    v8 = ;
  }

  return v8;
}

- (id)_getSwitchMIDIChannelDescription:(id)a3
{
  v3 = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v4 = [v3 midiEvent];
  v5 = AXLocalizedNameForMIDIChannel([v4 channel]);

  return v5;
}

- (id)_getSwitchMIDIKeyDescription:(id)a3
{
  v3 = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v4 = [v3 midiEvent];
  [v4 note];
  v5 = AXLocalizedNameForMIDINote();

  return v5;
}

- (id)_getResumeAutoScanning:(id)a3
{
  v4 = [(SCATSwitchDetailsViewController *)self modelSwitch];
  if ([v4 action] == &stru_68.sectname[5])
  {
    v5 = [NSNumber numberWithInt:1];
  }

  else
  {
    v6 = [(SCATSwitchDetailsViewController *)self modelSwitch];
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 longPressAction] == &stru_68.sectname[5]);
  }

  return v5;
}

- (void)_setResumeAutoScanning:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v10 = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v6 = [v10 action];
  v7 = [v10 longPressAction];
  v8 = [v5 BOOLValue];

  if (v8)
  {
    if (v6 == &stru_20.flags + 3)
    {
      [v10 setAction:109];
    }

    if (v7 == &stru_20.flags + 3)
    {
      v9 = 109;
LABEL_10:
      [v10 setLongPressAction:v9];
    }
  }

  else
  {
    if (v6 == &stru_68.sectname[5])
    {
      [v10 setAction:103];
    }

    if (v7 == &stru_68.sectname[5])
    {
      v9 = 103;
      goto LABEL_10;
    }
  }

  SCATAddOrUpdateSwitchToSettings();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = SCATSwitchDetailsViewController;
  v8 = [(SCATSwitchDetailsViewController *)&v31 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = [v8 specifier];
  v10 = [v9 identifier];

  objc_initWeak(&location, self);
  if ([v10 isEqualToString:@"switchNameID"])
  {
    v11 = [(SCATSwitchDetailsViewController *)self switchAlertCoordinator];
    v12 = [(SCATSwitchDetailsViewController *)self modelSwitch];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __69__SCATSwitchDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v28[3] = &unk_255388;
    objc_copyWeak(&v29, &location);
    [v11 showSwitchNamingAlertWithSwitch:v12 message:0 successHandler:v28 cancelHandler:0];

    objc_destroyWeak(&v29);
  }

  else
  {
    if (([v10 isEqualToString:@"defaultActionID"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"longPressActionID"))
    {
      v13 = [SCATSwitchActionsController alloc];
      v14 = [(SCATSwitchDetailsViewController *)self modelSwitch];
      v15 = [(SCATSwitchActionsController *)v13 initWithSwitch:v14];

      [(SCATSwitchActionsController *)v15 setParentController:self];
      v16 = [(SCATSwitchDetailsViewController *)self rootController];
      [(SCATSwitchActionsController *)v15 setRootController:v16];

      v17 = AXParameterizedLocalizedString();
      v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:-1 edit:0];
      [(SCATSwitchActionsController *)v15 setSpecifier:v18];

      -[SCATSwitchActionsController setSelectLongPress:](v15, "setSelectLongPress:", [v10 isEqualToString:@"longPressActionID"]);
      [(SCATSwitchActionsController *)v15 setPopToRootSwitchViewControlAfterSelection:1];
      v19 = [[UINavigationController alloc] initWithRootViewController:v15];
      objc_initWeak(&from, self);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __69__SCATSwitchDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
      v24[3] = &unk_255818;
      objc_copyWeak(&v26, &from);
      v20 = v19;
      v25 = v20;
      [(SCATSettingsCompletionController *)v15 setCompletion:v24];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __69__SCATSwitchDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
      v23[3] = &unk_2553B0;
      v23[4] = self;
      [(SCATSwitchDetailsViewController *)self presentViewController:v20 animated:1 completion:v23];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&from);
    }

    else if ([v10 isEqualToString:@"midiChannelID"])
    {
      v21 = [(SCATSwitchDetailsViewController *)self modelSwitch];
      v15 = [SCATMIDISwitchChannelViewController channelViewControllerWithSwitch:v21 parentController:self];

      [(SCATSwitchDetailsViewController *)self showController:v15 animate:1];
    }

    else
    {
      if (![v10 isEqualToString:@"midiKeyID"])
      {
        goto LABEL_7;
      }

      v22 = [(SCATSwitchDetailsViewController *)self modelSwitch];
      v15 = [SCATMIDISwitchKeyViewController keyViewControllerWithSwitch:v22 parentController:self];

      [(SCATSwitchDetailsViewController *)self showController:v15 animate:1];
    }
  }

LABEL_7:
  objc_destroyWeak(&location);
}

void __69__SCATSwitchDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained modelSwitch];
  SCATAddOrUpdateSwitchToSettings();

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 reloadSpecifiers];
}

void __69__SCATSwitchDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifierID:@"switchActionsGroupID"];
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

- (SCATSwitchDetailsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end