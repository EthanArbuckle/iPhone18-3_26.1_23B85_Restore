@interface WGAEltonBridgeSettingsController
- (BOOL)_getCurrentCachedLocalCoverToMuteEnablement;
- (BOOL)_pairedDeviceIsTinker;
- (BOOL)_pairedDeviceSupportsElton;
- (BOOL)_pairedDeviceSupportsFlick;
- (id)_coverToMuteSpecifiers;
- (id)_doubleTapGroupSpecifiers;
- (id)_flickSpecifiers;
- (id)_gesturesToggleSpecifiers;
- (id)_getAllGesturesToggleEnabledState:(id)state;
- (id)_getCoverToMuteEnableState:(id)state;
- (id)_getFlickEnabledState:(id)state;
- (id)_phoneSettings;
- (id)getEltonStateDescription:(id)description;
- (id)specifiers;
- (unint64_t)_allGesturesToggleState;
- (unint64_t)_flickGestureState;
- (unint64_t)_gestureMode;
- (void)_openTipsPage:(id)page;
- (void)_setAllGesturesToggleEnabled:(id)enabled specifier:(id)specifier;
- (void)_setCoverToMuteEnabled:(id)enabled specifier:(id)specifier;
- (void)_setFlickEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation WGAEltonBridgeSettingsController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = WGAEltonBridgeSettingsController;
  [(WGAEltonBridgeSettingsController *)&v10 viewDidLoad];
  v3 = [NPSDomainAccessor alloc];
  v4 = [v3 initWithDomain:WAGPreferencesDomain];
  eltonAccessor = self->_eltonAccessor;
  self->_eltonAccessor = v4;

  synchronize = [(NPSDomainAccessor *)self->_eltonAccessor synchronize];
  v7 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel"];
  cslAccessor = self->_cslAccessor;
  self->_cslAccessor = v7;

  synchronize2 = [(NPSDomainAccessor *)self->_cslAccessor synchronize];
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
LABEL_2:
    v4 = v3;
    goto LABEL_11;
  }

  v6 = objc_alloc_init(NSMutableArray);
  if ([(WGAEltonBridgeSettingsController *)self _pairedDeviceSupportsElton])
  {
    if (!-[WGAEltonBridgeSettingsController _pairedDeviceSupportsFlick](self, "_pairedDeviceSupportsFlick") || (-[WGAEltonBridgeSettingsController _gesturesToggleSpecifiers](self, "_gesturesToggleSpecifiers"), v7 = objc_claimAutoreleasedReturnValue(), [v6 addObjectsFromArray:v7], v7, -[WGAEltonBridgeSettingsController _allGesturesToggleState](self, "_allGesturesToggleState")))
    {
      _doubleTapGroupSpecifiers = [(WGAEltonBridgeSettingsController *)self _doubleTapGroupSpecifiers];
      [v6 addObjectsFromArray:_doubleTapGroupSpecifiers];

      if ([(WGAEltonBridgeSettingsController *)self _pairedDeviceSupportsFlick])
      {
        _flickSpecifiers = [(WGAEltonBridgeSettingsController *)self _flickSpecifiers];
        [v6 addObjectsFromArray:_flickSpecifiers];
      }

      _coverToMuteSpecifiers = [(WGAEltonBridgeSettingsController *)self _coverToMuteSpecifiers];
      [v6 addObjectsFromArray:_coverToMuteSpecifiers];

      v11 = *&self->BPSListController_opaque[v2];
      *&self->BPSListController_opaque[v2] = v6;

      v3 = *&self->BPSListController_opaque[v2];
      goto LABEL_2;
    }
  }

  else
  {
    _coverToMuteSpecifiers2 = [(WGAEltonBridgeSettingsController *)self _coverToMuteSpecifiers];
    [v6 addObjectsFromArray:_coverToMuteSpecifiers2];
  }

  v13 = *&self->BPSListController_opaque[v2];
  *&self->BPSListController_opaque[v2] = v6;
  v14 = v6;

  v4 = *&self->BPSListController_opaque[v2];
LABEL_11:

  return v4;
}

- (id)_doubleTapGroupSpecifiers
{
  _pairedDeviceSupportsElton = [(WGAEltonBridgeSettingsController *)self _pairedDeviceSupportsElton];
  _pairedDeviceIsTinker = [(WGAEltonBridgeSettingsController *)self _pairedDeviceIsTinker];
  v5 = &__NSArray0__struct;
  if (_pairedDeviceSupportsElton && (_pairedDeviceIsTinker & 1) == 0)
  {
    v5 = +[NSMutableArray array];
    if ([(WGAEltonBridgeSettingsController *)self _pairedDeviceSupportsFlick])
    {
      v6 = [PSSpecifier groupSpecifierWithID:@"ELTON_SETTINGS_GROUP_ID"];
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"ELTON_LEARN_MORE" value:&stru_8680 table:@"Localizable"];

      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"ELTON_FOOTER" value:&stru_8680 table:@"Localizable"];
      v11 = [NSString stringWithFormat:@"%@ %@", v10, v8];

      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [v6 setProperty:v13 forKey:PSFooterCellClassGroupKey];

      [v6 setProperty:v11 forKey:PSFooterHyperlinkViewTitleKey];
      v22.location = [v11 rangeOfString:v8];
      v14 = NSStringFromRange(v22);
      [v6 setProperty:v14 forKey:PSFooterHyperlinkViewLinkRangeKey];

      v15 = [NSValue valueWithNonretainedObject:self];
      [v6 setProperty:v15 forKey:PSFooterHyperlinkViewTargetKey];

      v16 = NSStringFromSelector("openDoubleTapTipsPage");
      [v6 setProperty:v16 forKey:PSFooterHyperlinkViewActionKey];

      [v5 addObject:v6];
    }

    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"ELTON_DOUBLE_TAP_STATE" value:&stru_8680 table:@"Localizable"];
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:"getEltonStateDescription:" detail:objc_opt_class() cell:2 edit:0];

    [v19 setIdentifier:@"ELTON_DOUBLE_TAP_ID"];
    [v5 addObject:v19];
  }

  return v5;
}

- (id)_gesturesToggleSpecifiers
{
  _pairedDeviceSupportsElton = [(WGAEltonBridgeSettingsController *)self _pairedDeviceSupportsElton];
  _pairedDeviceIsTinker = [(WGAEltonBridgeSettingsController *)self _pairedDeviceIsTinker];
  v5 = &__NSArray0__struct;
  if (_pairedDeviceSupportsElton && (_pairedDeviceIsTinker & 1) == 0)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"GESTURES_TOGGLE_GROUP_ID"];
    [v5 addObject:v6];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"GESTURES_TOGGLE" value:&stru_8680 table:@"Localizable_Flick"];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"_setAllGesturesToggleEnabled:specifier:" get:"_getAllGesturesToggleEnabledState:" detail:0 cell:6 edit:0];

    [v5 addObject:v9];
  }

  return v5;
}

- (void)_setAllGesturesToggleEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  bOOLValue = [enabledCopy BOOLValue];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1D58;
  v32[3] = &unk_8330;
  v32[4] = self;
  v9 = enabledCopy;
  v33 = v9;
  v35 = bOOLValue;
  v10 = specifierCopy;
  v34 = v10;
  v11 = objc_retainBlock(v32);
  v12 = +[WatchControlSettings sharedInstance];
  hasGreySupportFeatureEnabled = [v12 hasGreySupportFeatureEnabled];

  if (bOOLValue && hasGreySupportFeatureEnabled)
  {
    v25 = v9;
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"ASSISTIVE_TOUCH_WARNING_TITLE" value:&stru_8680 table:@"Localizable_Flick"];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"ASSISTIVE_TOUCH_WARNING_DESCRIPTION_GESTURES_ENABLEMENT" value:&stru_8680 table:@"Localizable_Flick"];
    v18 = [UIAlertController alertControllerWithTitle:v15 message:v17 preferredStyle:1];

    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"ASSISTIVE_TOUCH_WARNING_TURN_OFF_ASSISTIVE_TOUCH_BUTTON" value:&stru_8680 table:@"Localizable_Flick"];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1EE8;
    v30[3] = &unk_8380;
    v31 = v11;
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:v30];
    [v18 addAction:v21];

    objc_initWeak(&location, self);
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"ASSISTIVE_TOUCH_WARNING_CANCEL_BUTTON" value:&stru_8680 table:@"Localizable_Flick"];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1FBC;
    v26[3] = &unk_83A8;
    v27 = v10;
    objc_copyWeak(&v28, &location);
    v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:v26];
    [v18 addAction:v24];

    [(WGAEltonBridgeSettingsController *)self presentViewController:v18 animated:1 completion:0];
    objc_destroyWeak(&v28);

    objc_destroyWeak(&location);
    v9 = v25;
  }

  else
  {
    (v11[2])(v11);
  }
}

- (id)_getAllGesturesToggleEnabledState:(id)state
{
  _allGesturesToggleState = [(WGAEltonBridgeSettingsController *)self _allGesturesToggleState];
  _phoneSettings = [(WGAEltonBridgeSettingsController *)self _phoneSettings];
  if (os_log_type_enabled(_phoneSettings, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = @"Disabled";
    if (_allGesturesToggleState == 1)
    {
      v9 = @"Enabled";
    }

    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_0, _phoneSettings, OS_LOG_TYPE_DEFAULT, "%@ Get Gestures toggle state %@", &v12, 0x16u);
  }

  v10 = [NSNumber numberWithBool:_allGesturesToggleState == 1];

  return v10;
}

- (unint64_t)_allGesturesToggleState
{
  v3 = 0;
  result = [(NPSDomainAccessor *)self->_eltonAccessor integerForKey:@"allGesturesToggleEnabledState" keyExistsAndHasValidFormat:&v3];
  if (!v3)
  {
    return 1;
  }

  return result;
}

- (id)_flickSpecifiers
{
  _pairedDeviceSupportsElton = [(WGAEltonBridgeSettingsController *)self _pairedDeviceSupportsElton];
  _pairedDeviceIsTinker = [(WGAEltonBridgeSettingsController *)self _pairedDeviceIsTinker];
  v5 = &__NSArray0__struct;
  if (_pairedDeviceSupportsElton && (_pairedDeviceIsTinker & 1) == 0)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"FLICK_GROUP_SETTINGS_FOOTER"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ELTON_FLICK_LEARN_MORE" value:&stru_8680 table:@"Localizable_Flick"];

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"FLICK_GROUP_SETTINGS_FOOTER" value:&stru_8680 table:@"Localizable_Flick"];
    v11 = [NSString stringWithFormat:@"%@ %@", v10, v8];

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v6 setProperty:v13 forKey:PSFooterCellClassGroupKey];

    [v6 setProperty:v11 forKey:PSFooterHyperlinkViewTitleKey];
    v22.location = [v11 rangeOfString:v8];
    v14 = NSStringFromRange(v22);
    [v6 setProperty:v14 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v15 = [NSValue valueWithNonretainedObject:self];
    [v6 setProperty:v15 forKey:PSFooterHyperlinkViewTargetKey];

    v16 = NSStringFromSelector("openWristFlickTipsPage");
    [v6 setProperty:v16 forKey:PSFooterHyperlinkViewActionKey];

    [v5 addObject:v6];
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"FLICK_TOGGLE" value:&stru_8680 table:@"Localizable_Flick"];
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"_setFlickEnabled:specifier:" get:"_getFlickEnabledState:" detail:0 cell:6 edit:0];

    [v5 addObject:v19];
  }

  return v5;
}

- (void)_setFlickEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  bOOLValue = [enabledCopy BOOLValue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_2874;
  v31[3] = &unk_83D0;
  v31[4] = self;
  v9 = enabledCopy;
  v32 = v9;
  v10 = objc_retainBlock(v31);
  v11 = +[WatchControlSettings sharedInstance];
  hasGreySupportFeatureEnabled = [v11 hasGreySupportFeatureEnabled];

  if (bOOLValue && hasGreySupportFeatureEnabled)
  {
    v24 = specifierCopy;
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"ASSISTIVE_TOUCH_WARNING_TITLE" value:&stru_8680 table:@"Localizable_Flick"];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"ASSISTIVE_TOUCH_WARNING_DESCRIPTION_GESTURES_ENABLEMENT" value:&stru_8680 table:@"Localizable_Flick"];
    v17 = [UIAlertController alertControllerWithTitle:v14 message:v16 preferredStyle:1];

    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"ASSISTIVE_TOUCH_WARNING_TURN_OFF_ASSISTIVE_TOUCH_BUTTON" value:&stru_8680 table:@"Localizable_Flick"];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_298C;
    v29[3] = &unk_8380;
    v30 = v10;
    v20 = [UIAlertAction actionWithTitle:v19 style:0 handler:v29];
    [v17 addAction:v20];

    objc_initWeak(&location, self);
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"ASSISTIVE_TOUCH_WARNING_CANCEL_BUTTON" value:&stru_8680 table:@"Localizable_Flick"];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_2A60;
    v25[3] = &unk_83A8;
    specifierCopy = v24;
    v26 = v24;
    objc_copyWeak(&v27, &location);
    v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:v25];
    [v17 addAction:v23];

    [(WGAEltonBridgeSettingsController *)self presentViewController:v17 animated:1 completion:0];
    objc_destroyWeak(&v27);

    objc_destroyWeak(&location);
  }

  else
  {
    (v10[2])(v10);
  }
}

- (id)_getFlickEnabledState:(id)state
{
  _flickGestureState = [(WGAEltonBridgeSettingsController *)self _flickGestureState];
  _phoneSettings = [(WGAEltonBridgeSettingsController *)self _phoneSettings];
  if (os_log_type_enabled(_phoneSettings, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = @"Disabled";
    if (_flickGestureState == 1)
    {
      v9 = @"Enabled";
    }

    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_0, _phoneSettings, OS_LOG_TYPE_DEFAULT, "%@ Get Flick toggle state %@", &v12, 0x16u);
  }

  v10 = [NSNumber numberWithBool:_flickGestureState == 1];

  return v10;
}

- (unint64_t)_flickGestureState
{
  v3 = 0;
  result = [(NPSDomainAccessor *)self->_eltonAccessor integerForKey:@"flickGestureState" keyExistsAndHasValidFormat:&v3];
  if (!v3)
  {
    return 1;
  }

  return result;
}

- (id)_coverToMuteSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"COVER_TO_MUTE_GROUP_ID"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"COVER_TO_MUTE_FOOTER" value:&stru_8680 table:@"Localizable"];
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"COVER_TO_MUTE" value:&stru_8680 table:@"Localizable"];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"_setCoverToMuteEnabled:specifier:" get:"_getCoverToMuteEnableState:" detail:0 cell:6 edit:0];

  [v3 addObject:v9];

  return v3;
}

- (void)_setCoverToMuteEnabled:(id)enabled specifier:(id)specifier
{
  -[NPSDomainAccessor setBool:forKey:](self->_cslAccessor, "setBool:forKey:", [enabled BOOLValue], @"CSLCoverToMute");
  synchronize = [(NPSDomainAccessor *)self->_cslAccessor synchronize];
  v6 = objc_opt_new();
  v9 = @"CSLCoverToMute";
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  v8 = [NSSet setWithArray:v7];
  [v6 synchronizeNanoDomain:@"com.apple.Carousel" keys:v8];
}

- (id)_getCoverToMuteEnableState:(id)state
{
  v6 = 0;
  v3 = [(NPSDomainAccessor *)self->_cslAccessor BOOLForKey:@"CSLCoverToMute" keyExistsAndHasValidFormat:&v6];
  v4 = [NSNumber numberWithBool:v3 & 1u | ((v6 & 1) == 0)];

  return v4;
}

- (BOOL)_getCurrentCachedLocalCoverToMuteEnablement
{
  v4 = 0;
  v2 = [(NPSDomainAccessor *)self->_cslAccessor BOOLForKey:@"WatchGestureCoverToMuteKey" keyExistsAndHasValidFormat:&v4];
  return v2 & 1 | ((v4 & 1) == 0);
}

- (id)getEltonStateDescription:(id)description
{
  _gestureMode = [(WGAEltonBridgeSettingsController *)self _gestureMode];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (_gestureMode == 1)
  {
    v6 = @"ELTON_DOUBLE_TAP_STATE_ON";
  }

  else
  {
    v6 = @"ELTON_DOUBLE_TAP_STATE_OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_8680 table:@"Localizable"];

  return v7;
}

- (unint64_t)_gestureMode
{
  v3 = 0;
  result = [(NPSDomainAccessor *)self->_eltonAccessor integerForKey:@"gestureMode" keyExistsAndHasValidFormat:&v3];
  if (!v3)
  {
    return 1;
  }

  return result;
}

- (BOOL)_pairedDeviceSupportsElton
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v2 getActivePairedDevice];

  v4 = [[NSUUID alloc] initWithUUIDString:@"0E581E21-36BA-4770-9408-0467585E8495"];
  v5 = [getActivePairedDevice supportsCapability:v4];

  return v5;
}

- (BOOL)_pairedDeviceIsTinker
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v2 getActivePairedDevice];

  v4 = [getActivePairedDevice valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)_pairedDeviceSupportsFlick
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v2 getActivePairedDevice];

  if (_os_feature_enabled_impl())
  {
    v4 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
    v5 = [getActivePairedDevice supportsCapability:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_openTipsPage:(id)page
{
  pageCopy = page;
  _phoneSettings = [(WGAEltonBridgeSettingsController *)self _phoneSettings];
  if (os_log_type_enabled(_phoneSettings, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v11 = 138412546;
    v12 = v7;
    v13 = 2080;
    v14 = "[WGAEltonBridgeSettingsController _openTipsPage:]";
    _os_log_impl(&dword_0, _phoneSettings, OS_LOG_TYPE_DEFAULT, "%@ %s", &v11, 0x16u);
  }

  _phoneSettings2 = [(WGAEltonBridgeSettingsController *)self _phoneSettings];
  if (os_log_type_enabled(_phoneSettings2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = pageCopy;
    _os_log_impl(&dword_0, _phoneSettings2, OS_LOG_TYPE_DEFAULT, "Will open url %@", &v11, 0xCu);
  }

  v9 = +[LSApplicationWorkspace defaultWorkspace];
  v10 = [NSURL URLWithString:pageCopy];
  [v9 openSensitiveURL:v10 withOptions:0];
}

- (id)_phoneSettings
{
  if (qword_C598 != -1)
  {
    sub_5374();
  }

  v3 = qword_C590;

  return v3;
}

@end