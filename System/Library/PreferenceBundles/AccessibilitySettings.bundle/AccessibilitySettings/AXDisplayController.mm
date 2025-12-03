@interface AXDisplayController
- (AXDisplayController)init;
- (id)autoBrightnessEnabled:(id)enabled;
- (id)classicInvertEnabled:(id)enabled;
- (id)colorFiltersEnabled:(id)enabled;
- (id)grayscaleEnabled:(id)enabled;
- (id)pulseWidthMaximization:(id)maximization;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)whitePointEnabled:(id)enabled;
- (id)whitepointIntensity:(id)intensity;
- (void)_updateFilterOptionSpecifiers;
- (void)reloadSpecifiers;
- (void)setAutoBrightnessEnabled:(id)enabled specifier:(id)specifier;
- (void)setClassicInvertEnabled:(id)enabled specifier:(id)specifier;
- (void)setGrayscaleEnabled:(id)enabled specifier:(id)specifier;
- (void)setPulseWidthMaximization:(id)maximization specifier:(id)specifier;
- (void)setWhitePointEnabled:(id)enabled specifier:(id)specifier;
- (void)setWhitepointIntensity:(id)intensity specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation AXDisplayController

- (AXDisplayController)init
{
  v31.receiver = self;
  v31.super_class = AXDisplayController;
  v2 = [(AccessibilitySettingsBaseController *)&v31 init];
  if (v2)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, _accessibilityiTunesSettings_2, kAXSEnhanceBackgroundContrastChangedNotification, 0, 1028);
    v4 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v4, v2, _accessibilityiTunesSettings_2, kAXSReduceMotionChangedNotification, 0, 1028);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = kMADisplayFilterSettingsChangedNotification;
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _accessibilityiTunesSettings_2, kMADisplayFilterSettingsChangedNotification, 0, 1028);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, v2, _accessibilityiTunesSettings_2, kAXSAutoBrightnessChangedNotification, 0, 1028);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, v2, _accessibilityiTunesSettings_2, kAXSReduceWhitePointEnabledNotification, 0, 1028);
    v9 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v9, v2, _accessibilityiTunesSettings_2, kAXSDefaultRouteChangedNotification, 0, 1028);
    v10 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v10, v2, _accessibilityiTunesSettings_2, kAXSDarkenSystemColorsEnabledNotification, 0, 1028);
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v11, v2, _accessibilityiTunesSettings_2, kAXSDifferentiateWithoutColorChangedNotification, 0, 1028);
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v12, v2, _accessibilityiTunesSettings_2, kAXSInvertColorsEnabledNotification, 0, 1028);
    v13 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v13, v2, _accessibilityiTunesSettings_2, v6, 0, 1028);
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"reloadSpecifiersFromNotification" name:@"DidPostContentSizeChanged" object:0];

    objc_initWeak(&location, v2);
    v15 = +[AXSettings sharedInstance];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __27__AXDisplayController_init__block_invoke;
    v28[3] = &unk_255388;
    objc_copyWeak(&v29, &location);
    [v15 registerUpdateBlock:v28 forRetrieveSelector:"classicInvertColors" withListener:v2];

    objc_destroyWeak(&v29);
    v16 = +[AXSettings sharedInstance];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __27__AXDisplayController_init__block_invoke_2;
    v25[3] = &unk_257960;
    v17 = v2;
    v26 = v17;
    objc_copyWeak(&v27, &location);
    [v16 registerUpdateBlock:v25 forRetrieveSelector:"pulseWidthMaximization" withListener:v17];

    objc_destroyWeak(&v27);
    v18 = +[AXSettings sharedInstance];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __27__AXDisplayController_init__block_invoke_3;
    v22[3] = &unk_257960;
    v19 = v17;
    v23 = v19;
    objc_copyWeak(&v24, &location);
    [v18 registerUpdateBlock:v22 forRetrieveSelector:"classicInvertColors" withListener:v19];

    objc_destroyWeak(&v24);
    v20 = v19;
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__AXDisplayController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiersFromNotification];
}

void __27__AXDisplayController_init__block_invoke_2(uint64_t a1)
{
  if (CFAbsoluteTimeGetCurrent() - *(*(a1 + 32) + 168) > 0.5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained reloadSpecifierFromID:@"PWM"];
  }
}

void __27__AXDisplayController_init__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_copyWeak(&v3, (a1 + 40));
  AXPerformBlockOnMainThreadAfterDelay();
  objc_destroyWeak(&v3);
}

void __27__AXDisplayController_init__block_invoke_4(uint64_t a1)
{
  if (CFAbsoluteTimeGetCurrent() - *(*(a1 + 32) + 168) > 0.5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained reloadSpecifierFromID:@"CLASSIC_INVERT"];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXDisplayController;
  [(AXDisplayController *)&v6 viewDidLoad];
  table = [(AXDisplayController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXWhitePointSliderCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  if (!self->_helper)
  {
    v3 = objc_opt_new();
    helper = self->_helper;
    self->_helper = v3;

    [(AXDisplayTextMotionSpecifiersHelper *)self->_helper setSettingsController:self];
  }

  v5 = OBJC_IVAR___PSListController__specifiers;
  v6 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v6)
  {
    v7 = [objc_allocWithZone(NSMutableArray) init];
    v8 = [(AXDisplayTextMotionSpecifiersHelper *)self->_helper displayTextSpecifiersIncludingSmartInvert:1 isPerApp:0];
    [v7 axSafelyAddObjectsFromArray:v8];

    if ([(AccessibilitySettingsBaseController *)self isSettingAvailableOnPlatform])
    {
      v51 = v5;
      v9 = PSListController_ptr;
      v10 = +[PSSpecifier emptyGroupSpecifier];
      v11 = settingsLocString(@"ClassicInvertColorsFooter", @"Accessibility");
      v12 = PSFooterTextGroupKey;
      [v10 setProperty:v11 forKey:PSFooterTextGroupKey];

      v13 = AXInBuddySetupKey;
      [v10 setProperty:&__kCFBooleanTrue forKey:AXInBuddySetupKey];
      [v7 addObject:v10];
      v14 = settingsLocString(@"CLASSIC_INVERT", @"Accessibility");
      v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setClassicInvertEnabled:specifier:" get:"classicInvertEnabled:" detail:0 cell:6 edit:0];

      v16 = PSIDKey;
      [v15 setProperty:@"CLASSIC_INVERT" forKey:PSIDKey];
      [v15 setProperty:&__kCFBooleanTrue forKey:v13];
      [v7 addObject:v15];
      v17 = +[AXSettings sharedInstance];
      supportsAdvancedDisplayFilters = [v17 supportsAdvancedDisplayFilters];

      v19 = +[PSSpecifier emptyGroupSpecifier];

      v52 = v12;
      if (supportsAdvancedDisplayFilters)
      {
        v20 = settingsLocString(@"DISPLAY_FILTER_COLOR_DESCRIPTION", @"DisplayFilterSettings");
        [v19 setProperty:v20 forKey:v12];

        [v19 setProperty:&__kCFBooleanTrue forKey:v13];
        [v7 addObject:v19];
        v21 = settingsLocString(@"DISPLAY_FILTER_COLOR", @"DisplayFilterSettings");
        v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:"colorFiltersEnabled:" detail:objc_opt_class() cell:2 edit:0];

        [v22 setProperty:&__kCFBooleanTrue forKey:v13];
        v23 = v22;
        v24 = @"DISPLAY_FILTER_COLOR";
        v9 = PSListController_ptr;
        v25 = v16;
      }

      else
      {
        [v19 setProperty:0 forKey:v12];
        [v7 addObject:v19];
        v26 = settingsLocString(@"GRAY_SCALE", @"Accessibility");
        v22 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"setGrayscaleEnabled:specifier:" get:"grayscaleEnabled:" detail:0 cell:6 edit:0];

        v24 = &__kCFBooleanTrue;
        v23 = v22;
        v25 = v13;
      }

      [v23 setProperty:v24 forKey:v25];
      [v7 addObject:v22];
      if (AXDeviceSupportsPulseWidthMaximization())
      {
        emptyGroupSpecifier = [v9[5] emptyGroupSpecifier];

        v28 = settingsLocString(@"PulseWidthMaximizationFooter", @"Accessibility-V54");
        v29 = v52;
        [emptyGroupSpecifier setProperty:v28 forKey:v52];

        [emptyGroupSpecifier setProperty:&__kCFBooleanTrue forKey:v13];
        [v7 addObject:emptyGroupSpecifier];
        v30 = v9[5];
        v31 = settingsLocString(@"PulseWidthMaximizationTitle", @"Accessibility-V54");
        v22 = [v30 preferenceSpecifierNamed:v31 target:self set:"setPulseWidthMaximization:specifier:" get:"pulseWidthMaximization:" detail:0 cell:6 edit:0];

        [v22 setProperty:@"PWM" forKey:v16];
        [v22 setProperty:&__kCFBooleanFalse forKey:v13];
        [v7 addObject:v22];
      }

      else
      {
        v29 = v52;
      }

      emptyGroupSpecifier2 = [v9[5] emptyGroupSpecifier];

      v33 = settingsLocString(@"ReduceWhitePointFooterText", @"Accessibility");
      [emptyGroupSpecifier2 setProperty:v33 forKey:v29];

      [emptyGroupSpecifier2 setProperty:&__kCFBooleanTrue forKey:v13];
      [v7 addObject:emptyGroupSpecifier2];
      v34 = v9[5];
      v35 = settingsLocString(@"REDUCE_WHITE_POINT", @"Accessibility");
      v36 = [v34 preferenceSpecifierNamed:v35 target:self set:"setWhitePointEnabled:specifier:" get:"whitePointEnabled:" detail:0 cell:6 edit:0];

      [v36 setProperty:@"WHITE_POINT" forKey:v16];
      [v36 setProperty:&__kCFBooleanTrue forKey:v13];
      [(AXDisplayController *)self setReduceWhitePointSpecifier:v36];
      [v7 addObject:v36];
      v37 = [v9[5] preferenceSpecifierNamed:0 target:self set:"setWhitepointIntensity:specifier:" get:"whitepointIntensity:" detail:0 cell:5 edit:0];
      [v37 setProperty:@"WHITE_POINT_INTENSITY" forKey:v16];
      [v37 setProperty:objc_opt_class() forKey:PSCellClassKey];
      [v37 setProperty:&__kCFBooleanTrue forKey:v13];
      [(AXDisplayController *)self setReduceWhitePointIntensitySpecifier:v37];
      reduceWhitePointSpecifier = [(AXDisplayController *)self reduceWhitePointSpecifier];
      v39 = [(AXDisplayController *)self whitePointEnabled:reduceWhitePointSpecifier];
      bOOLValue = [v39 BOOLValue];

      if (bOOLValue)
      {
        reduceWhitePointIntensitySpecifier = [(AXDisplayController *)self reduceWhitePointIntensitySpecifier];
        [v7 addObject:reduceWhitePointIntensitySpecifier];
      }

      if (MGGetBoolAnswer())
      {
        emptyGroupSpecifier3 = [v9[5] emptyGroupSpecifier];

        v43 = AXLocStringKeyForHomeButton();
        v44 = settingsLocString(v43, @"DisplayFilterSettings");
        [emptyGroupSpecifier3 setProperty:v44 forKey:v52];

        [emptyGroupSpecifier3 setProperty:&__kCFBooleanFalse forKey:v13];
        [v7 addObject:emptyGroupSpecifier3];
        v45 = v9[5];
        v46 = settingsLocString(@"AUTO_BRIGHTNESS", @"DisplayFilterSettings");
        v36 = [v45 preferenceSpecifierNamed:v46 target:self set:"setAutoBrightnessEnabled:specifier:" get:"autoBrightnessEnabled:" detail:0 cell:6 edit:0];

        [v36 setProperty:&__kCFBooleanFalse forKey:v13];
        v47 = [NSNumber numberWithBool:BKSDisplayBrightnessIsBrightnessLevelControlAvailable()];
        [v36 setProperty:v47 forKey:PSEnabledKey];

        [v36 setProperty:@"AUTO_BRIGHTNESS" forKey:v16];
        [v7 addObject:v36];
      }

      v5 = v51;
    }

    [(AXDisplayController *)self filterBuddy:v7];
    v48 = [v7 copy];
    v49 = *&self->super.AXUISettingsListController_opaque[v5];
    *&self->super.AXUISettingsListController_opaque[v5] = v48;

    v6 = *&self->super.AXUISettingsListController_opaque[v5];
  }

  return v6;
}

- (void)setPulseWidthMaximization:(id)maximization specifier:(id)specifier
{
  maximizationCopy = maximization;
  self->_lastPreferenceChange = CFAbsoluteTimeGetCurrent();
  bOOLValue = [maximizationCopy BOOLValue];

  v7 = +[AXSettings sharedInstance];
  [v7 setPulseWidthMaximization:bOOLValue];
}

- (id)pulseWidthMaximization:(id)maximization
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 pulseWidthMaximization]);

  return v4;
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = AXDisplayController;
  [(AXDisplayController *)&v3 reloadSpecifiers];
  [(AXDisplayController *)self _updateFilterOptionSpecifiers];
}

- (void)_updateFilterOptionSpecifiers
{
  reduceWhitePointSpecifier = [(AXDisplayController *)self reduceWhitePointSpecifier];
  v4 = [(AXDisplayController *)self whitePointEnabled:reduceWhitePointSpecifier];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    specifiers = [(AXDisplayController *)self specifiers];
    reduceWhitePointIntensitySpecifier = [(AXDisplayController *)self reduceWhitePointIntensitySpecifier];
    v8 = [specifiers containsObject:reduceWhitePointIntensitySpecifier];

    if (v8)
    {
      return;
    }

    reduceWhitePointIntensitySpecifier2 = [(AXDisplayController *)self reduceWhitePointIntensitySpecifier];
    [AXDisplayController insertSpecifier:"insertSpecifier:afterSpecifierID:animated:" afterSpecifierID:? animated:?];
  }

  else
  {
    reduceWhitePointIntensitySpecifier2 = [(AXDisplayController *)self reduceWhitePointIntensitySpecifier];
    [AXDisplayController removeSpecifier:"removeSpecifier:animated:" animated:?];
  }
}

- (id)grayscaleEnabled:(id)enabled
{
  v3 = _AXSGrayscaleEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setGrayscaleEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  __AXSGrayscaleSetEnabled(bOOLValue);
}

- (id)colorFiltersEnabled:(id)enabled
{
  if (MADisplayFilterPrefGetCategoryEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (void)setAutoBrightnessEnabled:(id)enabled specifier:(id)specifier
{
  [enabled BOOLValue];
  BKSDisplayBrightnessSetAutoBrightnessEnabled();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = kAXSAutoBrightnessChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
}

- (id)autoBrightnessEnabled:(id)enabled
{
  v3 = _AXSAutoBrightnessEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setClassicInvertEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  self->_lastPreferenceChange = CFAbsoluteTimeGetCurrent();
  bOOLValue = [enabledCopy BOOLValue];

  v7 = +[AXSettings sharedInstance];
  [v7 setClassicInvertColors:bOOLValue];

  [(AXDisplayController *)self reloadSpecifierID:@"SMART_INVERT"];
}

- (id)classicInvertEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  classicInvertColors = [v3 classicInvertColors];

  return [NSNumber numberWithBool:classicInvertColors];
}

- (id)whitepointIntensity:(id)intensity
{
  MADisplayFilterPrefGetReduceWhitePointIntensity();

  return [NSNumber numberWithDouble:?];
}

- (void)setWhitepointIntensity:(id)intensity specifier:(id)specifier
{
  floatValue = [intensity floatValue];
  v5.n128_f64[0] = v5.n128_f32[0];

  _MADisplayFilterPrefSetReduceWhitePointIntensity(floatValue, v5);
}

- (id)whitePointEnabled:(id)enabled
{
  v3 = _AXSReduceWhitePointEnabled() != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setWhitePointEnabled:(id)enabled specifier:(id)specifier
{
  [enabled BOOLValue];
  _AXSSetReduceWhitePointEnabled();

  [(AXDisplayController *)self _updateFilterOptionSpecifiers];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = AXDisplayController;
  v4 = [(AXDisplayController *)&v10 tableView:view cellForRowAtIndexPath:path];
  specifier = [v4 specifier];
  v6 = [specifier propertyForKey:PSKeyNameKey];
  v7 = [v6 isEqualToString:@"OnOffLabels"];

  if (v7)
  {
    control = [v4 control];
    [control _setAlwaysShowsOnOffLabel:1];
  }

  return v4;
}

@end