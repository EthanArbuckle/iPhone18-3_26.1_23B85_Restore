@interface SCATSwitchDetailsViewController
+ (id)switchDetailsViewControllerWithSwitch:(id)switch SCATOnboarding:(BOOL)onboarding;
+ (id)switchDetailsViewControllerWithSwitch:(id)switch parentController:(id)controller;
- (SCATSwitchDetailsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SCATSwitchDetailsViewControllerDelegate)delegate;
- (id)_actionGroupSpecifiers;
- (id)_generalGroupSpecifiers;
- (id)_getResumeAutoScanning:(id)scanning;
- (id)_getSwitchDefaultActionDescription:(id)description;
- (id)_getSwitchIsEnabledDescription:(id)description;
- (id)_getSwitchLongPressActionDescription:(id)description;
- (id)_getSwitchMIDIChannelDescription:(id)description;
- (id)_getSwitchMIDIKeyDescription:(id)description;
- (id)_getSwitchNameDescription:(id)description;
- (id)_getSwitchSourceDescription:(id)description;
- (id)_midiGroupSpecifiers;
- (id)initSCATOnboarding:(BOOL)onboarding;
- (id)specifiers;
- (void)_setResumeAutoScanning:(id)scanning specifier:(id)specifier;
- (void)_setSwitchIsEnabled:(id)enabled specifier:(id)specifier;
- (void)_setSwitchNameDescription:(id)description specifier:(id)specifier;
- (void)didUpdateOnboardingSwitchDetails;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SCATSwitchDetailsViewController

+ (id)switchDetailsViewControllerWithSwitch:(id)switch parentController:(id)controller
{
  switchCopy = switch;
  controllerCopy = controller;
  if (!switchCopy)
  {
    _AXAssert();
  }

  v8 = objc_alloc_init(SCATSwitchDetailsViewController);
  [(SCATSwitchDetailsViewController *)v8 setModelSwitch:switchCopy];
  [(SCATSwitchDetailsViewController *)v8 setParentController:controllerCopy];
  rootController = [controllerCopy rootController];
  [(SCATSwitchDetailsViewController *)v8 setRootController:rootController];

  v10 = AXParameterizedLocalizedString();
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [(SCATSwitchDetailsViewController *)v8 setSpecifier:v11];

  return v8;
}

+ (id)switchDetailsViewControllerWithSwitch:(id)switch SCATOnboarding:(BOOL)onboarding
{
  onboardingCopy = onboarding;
  switchCopy = switch;
  if (!switchCopy)
  {
    _AXAssert();
  }

  v7 = [[SCATSwitchDetailsViewController alloc] initSCATOnboarding:onboardingCopy];
  [v7 setModelSwitch:switchCopy];
  v8 = AXParameterizedLocalizedString();
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v7 setSpecifier:v9];

  return v7;
}

- (id)initSCATOnboarding:(BOOL)onboarding
{
  v5.receiver = self;
  v5.super_class = SCATSwitchDetailsViewController;
  result = [(SCATSwitchDetailsViewController *)&v5 init];
  if (result)
  {
    *(result + 138) = onboarding;
  }

  return result;
}

- (SCATSwitchDetailsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SCATSwitchDetailsViewController;
  v4 = [(SCATSwitchDetailsViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [[SCATAlertCoordinator alloc] initWithViewController:v4];
    [(SCATSwitchDetailsViewController *)v4 setSwitchAlertCoordinator:v5];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SCATSwitchDetailsViewController;
  [(SCATSwitchDetailsViewController *)&v4 viewWillAppear:appear];
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
    _generalGroupSpecifiers = [(SCATSwitchDetailsViewController *)self _generalGroupSpecifiers];
    [v6 addObjectsFromArray:_generalGroupSpecifiers];

    _actionGroupSpecifiers = [(SCATSwitchDetailsViewController *)self _actionGroupSpecifiers];
    [v6 addObjectsFromArray:_actionGroupSpecifiers];

    modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
    source = [modelSwitch source];
    v11 = [source isEqualToString:SCATSwitchSourceMIDI];

    if (v11)
    {
      _midiGroupSpecifiers = [(SCATSwitchDetailsViewController *)self _midiGroupSpecifiers];
      [v6 addObjectsFromArray:_midiGroupSpecifiers];
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
  modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v9 = +[AXSettings sharedInstance];
  assistiveTouchLongPressEnabled = [v9 assistiveTouchLongPressEnabled];

  supportsLongPress = [modelSwitch supportsLongPress];
  v12 = AXParameterizedLocalizedString();
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:"_getSwitchLongPressActionDescription:" detail:0 cell:2 edit:0];

  [v13 setIdentifier:@"longPressActionID"];
  v14 = assistiveTouchLongPressEnabled & supportsLongPress;
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

  if ([modelSwitch action] == &stru_20.flags + 3 || objc_msgSend(modelSwitch, "action") == &stru_68.sectname[5] || objc_msgSend(modelSwitch, "longPressAction") == &stru_20.flags + 3 || objc_msgSend(modelSwitch, "longPressAction") == &stru_68.sectname[5])
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
  delegate = [(SCATSwitchDetailsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(SCATSwitchDetailsViewController *)self delegate];
    [delegate2 reloadSwitchesForDetailsView];
  }
}

- (id)_getSwitchNameDescription:(id)description
{
  modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
  name = [modelSwitch name];

  return name;
}

- (void)_setSwitchNameDescription:(id)description specifier:(id)specifier
{
  descriptionCopy = description;
  if ([descriptionCopy length])
  {
    modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
    [modelSwitch setName:descriptionCopy];

    modelSwitch2 = [(SCATSwitchDetailsViewController *)self modelSwitch];
    SCATAddOrUpdateSwitchToSettings();
  }
}

- (id)_getSwitchSourceDescription:(id)description
{
  modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
  localizedSourceDescription = [modelSwitch localizedSourceDescription];

  return localizedSourceDescription;
}

- (id)_getSwitchIsEnabledDescription:(id)description
{
  modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [modelSwitch isEnabled]);

  return v4;
}

- (void)_setSwitchIsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
  bOOLValue = [enabledCopy BOOLValue];

  [modelSwitch setIsEnabled:bOOLValue];
  SCATAddOrUpdateSwitchToSettings();
  if (self->_isSCATOnboarding)
  {
    [(SCATSwitchDetailsViewController *)self didUpdateOnboardingSwitchDetails];
  }
}

- (id)_getSwitchDefaultActionDescription:(id)description
{
  modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
  shortcutIdentifier = [modelSwitch shortcutIdentifier];

  if (shortcutIdentifier)
  {
    v6 = +[AXSiriShortcutsManager sharedManager];
    v7 = [v6 shortcutForIdentifier:shortcutIdentifier];

    shortcutName = [v7 shortcutName];
  }

  else
  {
    modelSwitch2 = [(SCATSwitchDetailsViewController *)self modelSwitch];
    action = [modelSwitch2 action];

    if (action)
    {
      SCATLocStringForAction();
    }

    else
    {
      AXParameterizedLocalizedString();
    }
    shortcutName = ;
  }

  return shortcutName;
}

- (id)_getSwitchLongPressActionDescription:(id)description
{
  modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
  longPressShortcutIdentifier = [modelSwitch longPressShortcutIdentifier];

  if (longPressShortcutIdentifier)
  {
    v6 = +[AXSiriShortcutsManager sharedManager];
    v7 = [v6 shortcutForIdentifier:longPressShortcutIdentifier];

    shortcutName = [v7 shortcutName];
  }

  else
  {
    modelSwitch2 = [(SCATSwitchDetailsViewController *)self modelSwitch];
    longPressAction = [modelSwitch2 longPressAction];

    if (longPressAction)
    {
      SCATLocStringForAction();
    }

    else
    {
      AXParameterizedLocalizedString();
    }
    shortcutName = ;
  }

  return shortcutName;
}

- (id)_getSwitchMIDIChannelDescription:(id)description
{
  modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
  midiEvent = [modelSwitch midiEvent];
  v5 = AXLocalizedNameForMIDIChannel([midiEvent channel]);

  return v5;
}

- (id)_getSwitchMIDIKeyDescription:(id)description
{
  modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
  midiEvent = [modelSwitch midiEvent];
  [midiEvent note];
  v5 = AXLocalizedNameForMIDINote();

  return v5;
}

- (id)_getResumeAutoScanning:(id)scanning
{
  modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
  if ([modelSwitch action] == &stru_68.sectname[5])
  {
    v5 = [NSNumber numberWithInt:1];
  }

  else
  {
    modelSwitch2 = [(SCATSwitchDetailsViewController *)self modelSwitch];
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [modelSwitch2 longPressAction] == &stru_68.sectname[5]);
  }

  return v5;
}

- (void)_setResumeAutoScanning:(id)scanning specifier:(id)specifier
{
  scanningCopy = scanning;
  modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
  action = [modelSwitch action];
  longPressAction = [modelSwitch longPressAction];
  bOOLValue = [scanningCopy BOOLValue];

  if (bOOLValue)
  {
    if (action == &stru_20.flags + 3)
    {
      [modelSwitch setAction:109];
    }

    if (longPressAction == &stru_20.flags + 3)
    {
      v9 = 109;
LABEL_10:
      [modelSwitch setLongPressAction:v9];
    }
  }

  else
  {
    if (action == &stru_68.sectname[5])
    {
      [modelSwitch setAction:103];
    }

    if (longPressAction == &stru_68.sectname[5])
    {
      v9 = 103;
      goto LABEL_10;
    }
  }

  SCATAddOrUpdateSwitchToSettings();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v31.receiver = self;
  v31.super_class = SCATSwitchDetailsViewController;
  v8 = [(SCATSwitchDetailsViewController *)&v31 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  identifier = [specifier identifier];

  objc_initWeak(&location, self);
  if ([identifier isEqualToString:@"switchNameID"])
  {
    switchAlertCoordinator = [(SCATSwitchDetailsViewController *)self switchAlertCoordinator];
    modelSwitch = [(SCATSwitchDetailsViewController *)self modelSwitch];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __69__SCATSwitchDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v28[3] = &unk_255388;
    objc_copyWeak(&v29, &location);
    [switchAlertCoordinator showSwitchNamingAlertWithSwitch:modelSwitch message:0 successHandler:v28 cancelHandler:0];

    objc_destroyWeak(&v29);
  }

  else
  {
    if (([identifier isEqualToString:@"defaultActionID"] & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"longPressActionID"))
    {
      v13 = [SCATSwitchActionsController alloc];
      modelSwitch2 = [(SCATSwitchDetailsViewController *)self modelSwitch];
      v15 = [(SCATSwitchActionsController *)v13 initWithSwitch:modelSwitch2];

      [(SCATSwitchActionsController *)v15 setParentController:self];
      rootController = [(SCATSwitchDetailsViewController *)self rootController];
      [(SCATSwitchActionsController *)v15 setRootController:rootController];

      v17 = AXParameterizedLocalizedString();
      v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:-1 edit:0];
      [(SCATSwitchActionsController *)v15 setSpecifier:v18];

      -[SCATSwitchActionsController setSelectLongPress:](v15, "setSelectLongPress:", [identifier isEqualToString:@"longPressActionID"]);
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

    else if ([identifier isEqualToString:@"midiChannelID"])
    {
      modelSwitch3 = [(SCATSwitchDetailsViewController *)self modelSwitch];
      v15 = [SCATMIDISwitchChannelViewController channelViewControllerWithSwitch:modelSwitch3 parentController:self];

      [(SCATSwitchDetailsViewController *)self showController:v15 animate:1];
    }

    else
    {
      if (![identifier isEqualToString:@"midiKeyID"])
      {
        goto LABEL_7;
      }

      modelSwitch4 = [(SCATSwitchDetailsViewController *)self modelSwitch];
      v15 = [SCATMIDISwitchKeyViewController keyViewControllerWithSwitch:modelSwitch4 parentController:self];

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