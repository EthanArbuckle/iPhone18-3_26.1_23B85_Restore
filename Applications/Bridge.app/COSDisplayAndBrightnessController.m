@interface COSDisplayAndBrightnessController
- (COSDisplayAndBrightnessController)init;
- (NPSDomainAccessor)carouselDomainAccessor;
- (id)activateOnCrownUpValue:(id)a3;
- (id)activateOnWristRaiseValue:(id)a3;
- (id)boldTextEnabled:(id)a3;
- (id)contentSizeCategories;
- (id)specifiers;
- (id)textSize:(id)a3;
- (id)tritiumEnabled:(id)a3;
- (void)_setupWakeSpecifiers:(id)a3;
- (void)_synchronizeDomainWithAccessor:(id)a3 keys:(id)a4 withCompletion:(id)a5;
- (void)dealloc;
- (void)handleDidUnpair;
- (void)setActivateOnCrownUpValue:(id)a3 specifier:(id)a4;
- (void)setActivateOnWristRaiseValue:(id)a3 specifier:(id)a4;
- (void)setBoldTextEnabled:(id)a3 specifier:(id)a4;
- (void)setTextSize:(id)a3 specifier:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSDisplayAndBrightnessController

- (COSDisplayAndBrightnessController)init
{
  v18.receiver = self;
  v18.super_class = COSDisplayAndBrightnessController;
  v2 = [(COSDisplayAndBrightnessController *)&v18 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000C1C30, @"NanoBrightnessCurveChangedNotification", 0, 1024);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, sub_1000C1C38, @"NanoAccessibilityDefaultsChanged", 0, 1024);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, v2, sub_1000C1C9C, @"NanoPreferredContentSizeChangedNotification", 0, 1024);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, v2, sub_1000C1CA4, @"NanoAlwaysOnTimePreferencesChangedNotification", 0, 1024);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v2, sub_1000C1CAC, @"com.apple.nano.disableViewOnWakePreferenceDidChangeNotification", 0, 1024);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v10, v2, sub_1000C1CAC, @"com.apple.Carousel.kDisallowWakeGestureSetting", 0, 1024);
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v11, v2, sub_1000C1CAC, @"com.apple.Carousel.gizmoAutoScreenOffSecondsDidChange", 0, 1024);
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v12, v2, sub_1000C1CAC, @"com.apple.Carousel.EnableRotateToWakeChangedNotification", 0, 1024);
    v13 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v13, v2, sub_1000C1CAC, @"CSLSessionsSettingsChangedNotification", 0, 1024);
    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v14, v2, sub_1000C1CAC, @"CSLOnWakeTimeoutPreferenceChangedNotification", 0, 1024);
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"handleDidUnpair" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

    v16 = [(COSDisplayAndBrightnessController *)v2 carouselDomainAccessor];
    [(COSDisplayAndBrightnessController *)v2 _synchronizeDomainWithAccessor:v16 keys:0 withCompletion:0];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = COSDisplayAndBrightnessController;
  [(COSDisplayAndBrightnessController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSDisplayAndBrightnessController;
  [(COSDisplayAndBrightnessController *)&v4 viewWillAppear:a3];
  [(COSDisplayAndBrightnessController *)self reloadSpecifierID:@"TRITIUM_ID"];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = COSDisplayAndBrightnessController;
  [(COSDisplayAndBrightnessController *)&v9 viewDidAppear:a3];
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 bundleURL];
  v7 = [v3 initWithKey:@"DISPLAY_AND_BRIGHTNESS" table:@"Settings" locale:v4 bundleURL:v6];

  v8 = [NSURL URLWithString:@"bridge:root=DISPLAY_AND_BRIGHTNESS_ID"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"DISPLAY_AND_BRIGHTNESS_ID" title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v8];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(COSDisplayAndBrightnessController *)self loadSpecifiersFromPlistName:@"DisplayAndBrightness-tritium" target:self];
    v6 = [v5 specifierForID:@"BRIGHTNESS_LEVEL_ID"];
    brightnessSlider = self->_brightnessSlider;
    self->_brightnessSlider = v6;

    v8 = self->_brightnessSlider;
    v9 = BPSAccessoryHighlightColor();
    v10 = BPSTintedSymbol();
    v11 = PSSliderLeftImageKey;
    [(PSSpecifier *)v8 setProperty:v10 forKey:PSSliderLeftImageKey];

    v12 = self->_brightnessSlider;
    v13 = BPSAccessoryHighlightColor();
    v14 = BPSTintedSymbol();
    v15 = PSSliderRightImageKey;
    [(PSSpecifier *)v12 setProperty:v14 forKey:PSSliderRightImageKey];

    v16 = self->_brightnessSlider;
    v17 = UITableViewDefaultRowHeight;
    LODWORD(v18) = UITableViewDefaultRowHeight;
    v19 = [NSNumber numberWithFloat:v18];
    v20 = PSTableCellHeightKey;
    [(PSSpecifier *)v16 setProperty:v19 forKey:PSTableCellHeightKey];

    v21 = [v5 specifierForID:@"TEXT_SIZE_SLIDER_ID"];
    v22 = [(COSDisplayAndBrightnessController *)self contentSizeCategories];
    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 count] - 1);
    [v21 setProperty:v23 forKey:PSControlMaximumKey];

    v24 = BPSAccessoryHighlightColor();
    v25 = BPSTintedSymbol();
    [v21 setProperty:v25 forKey:v11];

    v26 = BPSAccessoryHighlightColor();
    v27 = BPSTintedSymbol();
    [v21 setProperty:v27 forKey:v15];

    LODWORD(v28) = v17;
    v29 = [NSNumber numberWithFloat:v28];
    [v21 setProperty:v29 forKey:v20];

    v30 = +[NRPairedDeviceRegistry sharedInstance];
    v31 = [v30 getActivePairedDevice];
    v32 = [[NSUUID alloc] initWithUUIDString:@"6AABB66B-8E1B-4CAB-8FC4-AC577BA0AFB0"];
    LOBYTE(v27) = [v31 supportsCapability:v32];

    if ((v27 & 1) == 0)
    {
      v33 = [v5 specifierForID:@"TRITIUM_ID"];
      [v5 removeObject:v33];

      v34 = [v5 specifierForID:@"TRITIUM_GROUP_ID"];
      [v5 removeObject:v34];
    }

    [(COSDisplayAndBrightnessController *)self _setupWakeSpecifiers:v5];
    v35 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v5;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (void)setBoldTextEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v5 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Accessibility"];
  [v5 setObject:v4 forKey:@"EnhancedTextLegibilityEnabled"];

  v6 = [v5 synchronize];
  v7 = objc_opt_new();
  v10 = @"EnhancedTextLegibilityEnabled";
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  v9 = [NSSet setWithArray:v8];
  [v7 synchronizeNanoDomain:@"com.apple.Accessibility" keys:v9];
}

- (id)boldTextEnabled:(id)a3
{
  v3 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Accessibility"];
  v4 = [v3 synchronize];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 BOOLForKey:@"EnhancedTextLegibilityEnabled"]);

  return v5;
}

- (id)contentSizeCategories
{
  contentSizeCategories = self->_contentSizeCategories;
  if (contentSizeCategories)
  {
    v3 = contentSizeCategories;
  }

  else
  {
    v5 = [[NSArray alloc] initWithObjects:{UIContentSizeCategoryExtraSmall, UIContentSizeCategorySmall, UIContentSizeCategoryLarge, UIContentSizeCategoryExtraLarge, UIContentSizeCategoryExtraExtraLarge, UIContentSizeCategoryExtraExtraExtraLarge, UIContentSizeCategoryAccessibilityMedium, 0}];
    v6 = self->_contentSizeCategories;
    self->_contentSizeCategories = v5;

    v7 = BPSGetActiveSetupCompletedDevice();
    if (v7)
    {
      v8 = [PBBridgeWatchAttributeController sizeFromDevice:v7];
      if (v8 <= 0x19 && ((1 << v8) & 0x2386080) != 0)
      {
        v9 = self->_contentSizeCategories;
        v14[0] = UIContentSizeCategoryAccessibilityLarge;
        v14[1] = UIContentSizeCategoryAccessibilityExtraLarge;
        v10 = [NSArray arrayWithObjects:v14 count:2];
        v11 = [(NSArray *)v9 arrayByAddingObjectsFromArray:v10];
        v12 = self->_contentSizeCategories;
        self->_contentSizeCategories = v11;
      }
    }

    v3 = self->_contentSizeCategories;
  }

  return v3;
}

- (void)setTextSize:(id)a3 specifier:(id)a4
{
  v5 = [a3 integerValue];
  v6 = [(COSDisplayAndBrightnessController *)self contentSizeCategories];
  v11 = [v6 objectAtIndex:v5];

  v7 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.UIKit"];
  [v7 setObject:v11 forKey:@"UIPreferredContentSizeCategoryName"];
  v8 = [v7 synchronize];
  v9 = objc_opt_new();
  v10 = [NSSet setWithObject:@"UIPreferredContentSizeCategoryName"];
  [v9 synchronizeNanoDomain:@"com.apple.UIKit" keys:v10];
}

- (id)textSize:(id)a3
{
  v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.UIKit"];
  v5 = [v4 synchronize];
  v6 = [v4 objectForKey:@"UIPreferredContentSizeCategoryName"];
  if (!v6)
  {
    v6 = UIContentSizeCategorySmall;
  }

  v7 = [(COSDisplayAndBrightnessController *)self contentSizeCategories];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 indexOfObject:v6]);

  return v8;
}

- (id)tritiumEnabled:(id)a3
{
  v3 = sub_1000EAC2C();
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"TRITIUM_ON";
  }

  else
  {
    v6 = @"TRITIUM_OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_10026E598 table:@"DisplayAndBrightness-tritium"];

  return v7;
}

- (void)setActivateOnWristRaiseValue:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = [(COSDisplayAndBrightnessController *)self carouselDomainAccessor];
  [v6 setBool:v5 ^ 1 forKey:@"kDisallowWakeGestureSetting"];

  v8 = [(COSDisplayAndBrightnessController *)self carouselDomainAccessor];
  v7 = [NSSet setWithObject:@"kDisallowWakeGestureSetting"];
  [(COSDisplayAndBrightnessController *)self _synchronizeDomainWithAccessor:v8 keys:v7 withCompletion:&stru_10026B1B0];
}

- (id)activateOnWristRaiseValue:(id)a3
{
  v3 = [(COSDisplayAndBrightnessController *)self carouselDomainAccessor];
  v4 = [v3 BOOLForKey:@"kDisallowWakeGestureSetting"];

  return [NSNumber numberWithInt:v4 ^ 1];
}

- (void)setActivateOnCrownUpValue:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = [(COSDisplayAndBrightnessController *)self carouselDomainAccessor];
  [v6 setBool:v5 forKey:@"enableRotateToWake"];

  v8 = [(COSDisplayAndBrightnessController *)self carouselDomainAccessor];
  v7 = [NSSet setWithObject:@"enableRotateToWake"];
  [(COSDisplayAndBrightnessController *)self _synchronizeDomainWithAccessor:v8 keys:v7 withCompletion:0];
}

- (id)activateOnCrownUpValue:(id)a3
{
  v7 = 0;
  v3 = [(COSDisplayAndBrightnessController *)self carouselDomainAccessor];
  v4 = [v3 BOOLForKey:@"enableRotateToWake" keyExistsAndHasValidFormat:&v7];

  v5 = [NSNumber numberWithInt:v4 & 1 | ((v7 & 1) == 0)];

  return v5;
}

- (NPSDomainAccessor)carouselDomainAccessor
{
  carouselDomainAccessor = self->_carouselDomainAccessor;
  if (!carouselDomainAccessor)
  {
    v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel"];
    v5 = self->_carouselDomainAccessor;
    self->_carouselDomainAccessor = v4;

    carouselDomainAccessor = self->_carouselDomainAccessor;
  }

  return carouselDomainAccessor;
}

- (void)_synchronizeDomainWithAccessor:(id)a3 keys:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1000C1958();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v8 domain];
    *buf = 138412546;
    v22 = v12;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "synchronizing %@ %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C2C00;
  v16[3] = &unk_10026B200;
  objc_copyWeak(&v20, buf);
  v13 = v8;
  v17 = v13;
  v14 = v9;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  [v13 synchronizeWithCompletionHandler:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (void)handleDidUnpair
{
  carouselDomainAccessor = self->_carouselDomainAccessor;
  self->_carouselDomainAccessor = 0;
}

- (void)_setupWakeSpecifiers:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"WAKE_GROUP_LABEL" value:&stru_10026E598 table:@"DisplayAndBrightness-tritium"];
  v25 = [PSSpecifier groupSpecifierWithName:v6];

  [v4 addObject:v25];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"WAKE_ON_WRIST_RAISE" value:&stru_10026E598 table:@"DisplayAndBrightness-tritium"];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setActivateOnWristRaiseValue:specifier:" get:"activateOnWristRaiseValue:" detail:0 cell:6 edit:0];

  v10 = PSIDKey;
  [v9 setProperty:@"WAKE_SCREEN_ON_WRIST_RAISE_SWITCH_ID" forKey:PSIDKey];
  [v4 addObject:v9];
  v11 = sub_1000EAC2C();
  v12 = @"WAKE_ON_CROWN_UP";
  if (v11)
  {
    v12 = @"WAKE_ON_CROWN";
  }

  v13 = v12;
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:v13 value:&stru_10026E598 table:@"DisplayAndBrightness-tritium"];

  v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"setActivateOnCrownUpValue:specifier:" get:"activateOnCrownUpValue:" detail:0 cell:6 edit:0];

  [v16 setProperty:@"WAKE_SCREEN_ON_CROWN_UP_SWITCH_ID" forKey:v10];
  [v16 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v4 addObject:v16];
  v30[0] = PSTitleKey;
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"WAKE_DURATION_LABEL" value:&stru_10026E598 table:@"DisplayAndBrightness-tritium"];
  v31[0] = v18;
  v31[1] = @"PSLinkCell";
  v30[1] = PSTableCellClassKey;
  v30[2] = PSBundlePathKey;
  v31[2] = @"CompanionWakeSettings";
  v31[3] = &__kCFBooleanTrue;
  v30[3] = PSBundleIsControllerKey;
  v30[4] = PSSearchNanoSettingsBundlePath;
  v31[4] = &__kCFBooleanTrue;
  v30[5] = BPSForbiddenWatchCapabilitiesKey;
  v29 = BPSTinkerCapabilityKey;
  v19 = [NSArray arrayWithObjects:&v29 count:1];
  v30[6] = v10;
  v31[5] = v19;
  v31[6] = @"WAKE_DURATION_SELECTION_KEY";
  v20 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:7];

  v26 = v20;
  v27 = @"items";
  v21 = [NSArray arrayWithObjects:&v26 count:1];
  v28 = v21;
  v22 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v23 = +[NSBundle mainBundle];
  v24 = SpecifiersFromPlist();

  [v4 addObjectsFromArray:{v24, 0}];
}

@end