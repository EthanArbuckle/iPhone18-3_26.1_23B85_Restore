@interface WGABridgeDoubleTapSettingsViewController
- (BOOL)_pairedDeviceSupportsFlick;
- (id)_doubleTapSettingSpecifiers;
- (id)_getIgnoreGesturesWhileVisionProDonned:(id)donned;
- (id)_ignoreWhileVisionProDonnedSettingSpecifiers;
- (id)_phoneSettings;
- (id)_playbackSettingSpecifiers;
- (id)_smartStackSettingSpecifiers;
- (id)getEltonEnabled:(id)enabled;
- (id)specifiers;
- (unint64_t)_gestureMode;
- (unint64_t)getNowPlayingType;
- (unint64_t)getSmartStackPrimaryActionType;
- (void)_setIgnoreGesturesWhileVisionProDonned:(id)donned specifier:(id)specifier;
- (void)openTipsPage;
- (void)setEltonEnabled:(id)enabled specifier:(id)specifier;
- (void)setNowPlayingTypeForSpecifier:(id)specifier;
- (void)setSmartStackPrimaryActionTypeForSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation WGABridgeDoubleTapSettingsViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WGABridgeDoubleTapSettingsViewController;
  [(WGABridgeDoubleTapSettingsViewController *)&v7 viewDidLoad];
  v3 = [NPSDomainAccessor alloc];
  v4 = [v3 initWithDomain:WAGPreferencesDomain];
  eltonAccessor = self->_eltonAccessor;
  self->_eltonAccessor = v4;

  synchronize = [(NPSDomainAccessor *)self->_eltonAccessor synchronize];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    _doubleTapSettingSpecifiers = [(WGABridgeDoubleTapSettingsViewController *)self _doubleTapSettingSpecifiers];
    [v5 addObjectsFromArray:_doubleTapSettingSpecifiers];

    _playbackSettingSpecifiers = [(WGABridgeDoubleTapSettingsViewController *)self _playbackSettingSpecifiers];
    [v5 addObjectsFromArray:_playbackSettingSpecifiers];

    _smartStackSettingSpecifiers = [(WGABridgeDoubleTapSettingsViewController *)self _smartStackSettingSpecifiers];
    [v5 addObjectsFromArray:_smartStackSettingSpecifiers];

    _ignoreWhileVisionProDonnedSettingSpecifiers = [(WGABridgeDoubleTapSettingsViewController *)self _ignoreWhileVisionProDonnedSettingSpecifiers];
    [v5 addObjectsFromArray:_ignoreWhileVisionProDonnedSettingSpecifiers];

    v10 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v5;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (id)_doubleTapSettingSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"ELTON_LEARN_MORE_FOOTER_GROUP_ID"];
  if (![(WGABridgeDoubleTapSettingsViewController *)self _pairedDeviceSupportsFlick])
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ELTON_LEARN_MORE" value:&stru_8680 table:@"Localizable"];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ELTON_FOOTER" value:&stru_8680 table:@"Localizable"];
    v9 = [NSString stringWithFormat:@"%@ %@", v8, v6];

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v4 setProperty:v11 forKey:PSFooterCellClassGroupKey];

    [v4 setProperty:v9 forKey:PSFooterHyperlinkViewTitleKey];
    v20.location = [v9 rangeOfString:v6];
    v12 = NSStringFromRange(v20);
    [v4 setProperty:v12 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v13 = [NSValue valueWithNonretainedObject:self];
    [v4 setProperty:v13 forKey:PSFooterHyperlinkViewTargetKey];

    v14 = NSStringFromSelector("openTipsPage");
    [v4 setProperty:v14 forKey:PSFooterHyperlinkViewActionKey];

    [v3 addObject:v4];
  }

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"ELTON_DOUBLE_TAP_STATE" value:&stru_8680 table:@"Localizable"];
  v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"setEltonEnabled:specifier:" get:"getEltonEnabled:" detail:0 cell:6 edit:0];

  [v3 addObject:v17];

  return v3;
}

- (void)setEltonEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  bOOLValue = [enabledCopy BOOLValue];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_41C4;
  v34[3] = &unk_83D0;
  v34[4] = self;
  v9 = enabledCopy;
  v35 = v9;
  v10 = objc_retainBlock(v34);
  v11 = +[WatchControlSettings sharedInstance];
  hasGreySupportFeatureEnabled = [v11 hasGreySupportFeatureEnabled];

  if (bOOLValue && hasGreySupportFeatureEnabled)
  {
    v13 = _os_feature_enabled_impl();
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = v14;
    if (v13)
    {
      v16 = @"ASSISTIVE_TOUCH_WARNING_DESCRIPTION_GESTURES_ENABLEMENT";
      v17 = @"Localizable_Flick";
    }

    else
    {
      v16 = @"ASSISTIVE_TOUCH_WARNING_DESCRIPTION_DOUBLE_TAP_ENABLEMENT";
      v17 = @"Localizable";
    }

    v18 = [v14 localizedStringForKey:v16 value:&stru_8680 table:v17];

    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"ASSISTIVE_TOUCH_WARNING_TITLE" value:&stru_8680 table:@"Localizable"];
    v21 = [UIAlertController alertControllerWithTitle:v20 message:v18 preferredStyle:1];

    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"ASSISTIVE_TOUCH_WARNING_TURN_OFF_ASSISTIVE_TOUCH_BUTTON" value:&stru_8680 table:@"Localizable"];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_42CC;
    v32[3] = &unk_8380;
    v33 = v10;
    v24 = [UIAlertAction actionWithTitle:v23 style:0 handler:v32];
    [v21 addAction:v24];

    objc_initWeak(&location, self);
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"ASSISTIVE_TOUCH_WARNING_CANCEL_BUTTON" value:&stru_8680 table:@"Localizable"];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_43A0;
    v28[3] = &unk_83A8;
    v29 = specifierCopy;
    objc_copyWeak(&v30, &location);
    v27 = [UIAlertAction actionWithTitle:v26 style:1 handler:v28];
    [v21 addAction:v27];

    [(WGABridgeDoubleTapSettingsViewController *)self presentViewController:v21 animated:1 completion:0];
    objc_destroyWeak(&v30);

    objc_destroyWeak(&location);
  }

  else
  {
    (v10[2])(v10);
  }
}

- (id)getEltonEnabled:(id)enabled
{
  v3 = [(WGABridgeDoubleTapSettingsViewController *)self _gestureMode]== &dword_0 + 1;

  return [NSNumber numberWithBool:v3];
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

- (id)_playbackSettingSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ELTON_DOUBLE_TAP_PLAYBACK_SECTION" value:&stru_8680 table:@"Localizable"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:0 edit:0];

  [v6 setIdentifier:@"playbackSettingsGroup"];
  [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  [v3 addObject:v6];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ELTON_DOUBLE_TAP_PLAYBACK_SECTION_PLAY_PAUSE" value:&stru_8680 table:@"Localizable"];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v9 setIdentifier:@"playbackSettingsPlayPause"];
  [v9 setButtonAction:"setNowPlayingTypeForSpecifier:"];
  v10 = PSValueKey;
  [v9 setProperty:&off_8DA8 forKey:PSValueKey];
  [v3 addObject:v9];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"ELTON_DOUBLE_TAP_PLAYBACK_SECTION_SKIP" value:&stru_8680 table:@"Localizable"];
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v13 setIdentifier:@"playbackSettingsSkip"];
  [v13 setButtonAction:"setNowPlayingTypeForSpecifier:"];
  [v13 setProperty:&off_8DC0 forKey:v10];
  [v3 addObject:v13];
  if ([(WGABridgeDoubleTapSettingsViewController *)self getNowPlayingType])
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  [v6 setProperty:v14 forKey:PSRadioGroupCheckedSpecifierKey];

  return v3;
}

- (unint64_t)getNowPlayingType
{
  v3 = 0;
  result = [(NPSDomainAccessor *)self->_eltonAccessor integerForKey:@"NowPlayingPrimaryAction" keyExistsAndHasValidFormat:&v3];
  if (!v3)
  {
    return 0;
  }

  return result;
}

- (void)setNowPlayingTypeForSpecifier:(id)specifier
{
  eltonAccessor = self->_eltonAccessor;
  v5 = [specifier propertyForKey:PSValueKey];
  [(NPSDomainAccessor *)eltonAccessor setObject:v5 forKey:@"NowPlayingPrimaryAction"];

  synchronize = [(NPSDomainAccessor *)self->_eltonAccessor synchronize];
  v7 = objc_opt_new();
  v8 = WAGPreferencesDomain;
  v11 = @"NowPlayingPrimaryAction";
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  v10 = [NSSet setWithArray:v9];
  [v7 synchronizeNanoDomain:v8 keys:v10];

  [(WGABridgeDoubleTapSettingsViewController *)self reloadSpecifiers];
}

- (id)_smartStackSettingSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ELTON_DOUBLE_TAP_SMART_STACK_SECTION" value:&stru_8680 table:@"Localizable"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:0 edit:0];

  [v6 setIdentifier:@"smartStackGroup"];
  [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  [v3 addObject:v6];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ELTON_DOUBLE_TAP_SMART_STACK_SECTION_PLAY_PAUSE" value:&stru_8680 table:@"Localizable"];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v9 setIdentifier:@"smartStackSettingsAdvance"];
  v10 = PSValueKey;
  [v9 setProperty:&off_8DC0 forKey:PSValueKey];
  [v9 setButtonAction:"setSmartStackPrimaryActionTypeForSpecifier:"];
  [v3 addObject:v9];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"ELTON_DOUBLE_TAP_SMART_STACK_SECTION_SELECT" value:&stru_8680 table:@"Localizable"];
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v13 setIdentifier:@"smartStackSettingsSelect"];
  [v13 setProperty:&off_8DD8 forKey:v10];
  [v13 setButtonAction:"setSmartStackPrimaryActionTypeForSpecifier:"];
  [v3 addObject:v13];
  if ([(WGABridgeDoubleTapSettingsViewController *)self getSmartStackPrimaryActionType]== &dword_0 + 1)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  [v6 setProperty:v14 forKey:PSRadioGroupCheckedSpecifierKey];

  return v3;
}

- (unint64_t)getSmartStackPrimaryActionType
{
  v3 = 0;
  result = [(NPSDomainAccessor *)self->_eltonAccessor integerForKey:@"smartStackPrimaryAction_v1" keyExistsAndHasValidFormat:&v3];
  if (!v3)
  {
    return 1;
  }

  return result;
}

- (void)setSmartStackPrimaryActionTypeForSpecifier:(id)specifier
{
  eltonAccessor = self->_eltonAccessor;
  v5 = [specifier propertyForKey:PSValueKey];
  [(NPSDomainAccessor *)eltonAccessor setObject:v5 forKey:@"smartStackPrimaryAction_v1"];

  synchronize = [(NPSDomainAccessor *)self->_eltonAccessor synchronize];
  v7 = objc_opt_new();
  v8 = WAGPreferencesDomain;
  v11 = @"smartStackPrimaryAction_v1";
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  v10 = [NSSet setWithArray:v9];
  [v7 synchronizeNanoDomain:v8 keys:v10];

  [(WGABridgeDoubleTapSettingsViewController *)self reloadSpecifiers];
}

- (id)_ignoreWhileVisionProDonnedSettingSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"IGNORE_WHILE_VISION_PRO_DONNED_HEADER" value:&stru_8680 table:@"Localizable"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"IGNORE_WHILE_VISION_PRO_DONNED_FOOTER" value:&stru_8680 table:@"Localizable"];
  [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

  [v6 setIdentifier:@"ignoreWhileVisionProDonned"];
  [v3 addObject:v6];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"IGNORE_DOUBLE_TAP" value:&stru_8680 table:@"Localizable"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"_setIgnoreGesturesWhileVisionProDonned:specifier:" get:"_getIgnoreGesturesWhileVisionProDonned:" detail:0 cell:6 edit:0];

  [v11 setIdentifier:@"ignoreDoubleTap"];
  [v3 addObject:v11];

  return v3;
}

- (void)_setIgnoreGesturesWhileVisionProDonned:(id)donned specifier:(id)specifier
{
  [(NPSDomainAccessor *)self->_eltonAccessor setObject:donned forKey:@"ignoreGesturesWhileVisionProDonned"];
  synchronize = [(NPSDomainAccessor *)self->_eltonAccessor synchronize];
  v6 = objc_opt_new();
  v7 = WAGPreferencesDomain;
  v10 = @"ignoreGesturesWhileVisionProDonned";
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  v9 = [NSSet setWithArray:v8];
  [v6 synchronizeNanoDomain:v7 keys:v9];
}

- (id)_getIgnoreGesturesWhileVisionProDonned:(id)donned
{
  v3 = [(NPSDomainAccessor *)self->_eltonAccessor BOOLForKey:@"ignoreGesturesWhileVisionProDonned"];

  return [NSNumber numberWithBool:v3];
}

- (void)openTipsPage
{
  _phoneSettings = [(WGABridgeDoubleTapSettingsViewController *)self _phoneSettings];
  if (os_log_type_enabled(_phoneSettings, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v9 = 138412546;
    v10 = v5;
    v11 = 2080;
    v12 = "[WGABridgeDoubleTapSettingsViewController openTipsPage]";
    _os_log_impl(&dword_0, _phoneSettings, OS_LOG_TYPE_DEFAULT, "%@ %s", &v9, 0x16u);
  }

  _phoneSettings2 = [(WGABridgeDoubleTapSettingsViewController *)self _phoneSettings];
  if (os_log_type_enabled(_phoneSettings2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"x-apple-tips://open?tip=TouchFreeWatch&referrer=com.apple.Bridge";
    _os_log_impl(&dword_0, _phoneSettings2, OS_LOG_TYPE_DEFAULT, "Will open url %@", &v9, 0xCu);
  }

  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = [NSURL URLWithString:@"x-apple-tips://open?tip=TouchFreeWatch&referrer=com.apple.Bridge"];
  [v7 openSensitiveURL:v8 withOptions:0];
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

- (id)_phoneSettings
{
  if (qword_C5A8 != -1)
  {
    sub_5388();
  }

  v3 = qword_C5A0;

  return v3;
}

@end