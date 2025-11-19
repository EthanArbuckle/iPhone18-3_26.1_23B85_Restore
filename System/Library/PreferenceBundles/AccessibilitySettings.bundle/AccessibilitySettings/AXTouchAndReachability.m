@interface AXTouchAndReachability
- (AXTouchAndReachability)init;
- (BOOL)_vibrationVibratesForEmergencies;
- (id)backTapEnabled:(id)a3;
- (id)callAudioRouting:(id)a3;
- (id)forceTouchEnabled:(id)a3;
- (id)handEnabled:(id)a3;
- (id)phoneLockButton:(id)a3;
- (id)preferActionSliderAlternative:(id)a3;
- (id)shakeToUndo:(id)a3;
- (id)specifiers;
- (id)tapToWake:(id)a3;
- (id)touchAccommodationsEnabled:(id)a3;
- (id)vibrationEnabled:(id)a3;
- (void)_easyReachChanged:(id)a3;
- (void)_vibrationVibratesForEmergencies;
- (void)setPhoneLockButton:(id)a3 specifier:(id)a4;
- (void)setPreferActionSliderAlternative:(id)a3 specifier:(id)a4;
- (void)setReachabilityEnabled:(id)a3 specifier:(id)a4;
- (void)setShakeToUndo:(id)a3 specifier:(id)a4;
- (void)setTapToWake:(id)a3 specifier:(id)a4;
- (void)setVibrationEnabled:(id)a3 specifier:(id)a4;
@end

@implementation AXTouchAndReachability

- (AXTouchAndReachability)init
{
  v16.receiver = self;
  v16.super_class = AXTouchAndReachability;
  v2 = [(AccessibilitySettingsBaseController *)&v16 init];
  if (v2)
  {
    v2->_easyReachCache = SBSIsReachabilityEnabled() != 0;
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_easyReachChanged:" name:@"AXEasyReachModeChanged" object:0];

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, _accessibilityiTunesSettings_1, kAXSShakeToUndoDisabledPreferenceDidChangeNotification, 0, 1028);
    v5 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v5, v2, _accessibilityiTunesSettings_1, kAXSForceTouchEnabledPreferenceNotification, 0, 1028);
    v6 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v6, v2, _accessibilityiTunesSettings_1, kAXSVibrationDisabledPreferenceDidChangeNotification, 0, 1028);
    v7 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v7, v2, _accessibilityiTunesSettings_1, kAXSAssistiveTouchEnabledNotification, 0, 1028);
    v8 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v8, v2, _accessibilityiTunesSettings_1, kAXSBackTapEnabledDidChangeNotification, 0, 1028);
    v9 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v9, v2, _defaultRouteChanged, kAXSDefaultRouteChangedNotification, 0, 1028);
    objc_initWeak(&location, v2);
    v10 = +[AXSettings sharedInstance];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __30__AXTouchAndReachability_init__block_invoke;
    v13[3] = &unk_255388;
    objc_copyWeak(&v14, &location);
    [v10 registerUpdateBlock:v13 forRetrieveSelector:"touchAccommodationsEnabled" withListener:v2];

    objc_destroyWeak(&v14);
    v11 = v2;
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__AXTouchAndReachability_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiersFromNotification];
}

- (void)_easyReachChanged:(id)a3
{
  self->_easyReachCache = SBSIsReachabilityEnabled() != 0;
  v4 = [(AXTouchAndReachability *)self specifierForID:@"REACHABILITY"];
  [(AXTouchAndReachability *)self reloadSpecifier:v4];
}

- (id)specifiers
{
  v2 = self;
  v3 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v105 = OBJC_IVAR___PSListController__specifiers;
    v4 = [objc_allocWithZone(NSMutableArray) init];
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = AXLocStringKeyForModel();
    v7 = settingsLocString(v6, @"HandSettings");

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 setProperty:v9 forKey:PSFooterCellClassGroupKey];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 bundlePath];
    [v5 setProperty:v11 forKey:@"bundlePath"];

    [v5 setProperty:@"Accessibility" forKey:@"table"];
    v122[0] = @"contentLabel";
    v122[1] = @"alreadyLocalized";
    v104 = v7;
    v123[0] = v7;
    v123[1] = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:v123 forKeys:v122 count:2];
    v124 = v12;
    v13 = [NSArray arrayWithObjects:&v124 count:1];
    v14 = [v13 mutableCopy];

    v15 = AXTeachableFeatureAssistiveTouch;
    v106 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureAssistiveTouch];
    v107 = v14;
    v108 = v2;
    if ([v106 count])
    {
      v101 = v5;
      v109 = v4;
      v120[0] = @"moreLabel";
      v16 = settingsLocString(@"AssistiveTouchWhatsNewLink", @"Accessibility");
      v121[0] = v16;
      v120[1] = @"additionalTitleLabel";
      v17 = settingsLocString(@"AIR_TOUCH_TITLE", @"Accessibility");
      v121[1] = v17;
      v121[2] = &__kCFBooleanTrue;
      v120[2] = @"alreadyLocalized";
      v120[3] = @"symbolName";
      v121[3] = @"hand.point.up.left.fill";
      v18 = [NSDictionary dictionaryWithObjects:v121 forKeys:v120 count:4];
      v100 = [v18 mutableCopy];

      v19 = objc_opt_new();
      v118[0] = @"sectionLabel";
      v20 = [AXTeachableMomentsManager notificationTitleForFeature:v15];
      v118[1] = @"alreadyLocalized";
      v119[0] = v20;
      v119[1] = &__kCFBooleanTrue;
      v21 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:2];
      [v19 addObject:v21];

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v22 = v106;
      v23 = [v22 countByEnumeratingWithState:&v111 objects:v117 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v112;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v112 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v111 + 1) + 8 * i);
            v115[0] = @"headerLabel";
            v28 = [v27 itemTitle];
            v116[0] = v28;
            v115[1] = @"contentLabel";
            v29 = [v27 itemDescription];
            v115[2] = @"alreadyLocalized";
            v116[1] = v29;
            v116[2] = &__kCFBooleanTrue;
            v30 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:3];
            [v19 addObject:v30];
          }

          v24 = [v22 countByEnumeratingWithState:&v111 objects:v117 count:16];
        }

        while (v24);
      }

      [v100 setObject:v19 forKey:@"additionalContent"];
      v14 = v107;
      [v107 addObject:v100];

      v2 = v108;
      v4 = v109;
      v5 = v101;
    }

    [v5 setProperty:v14 forKey:@"content"];
    [v4 addObject:v5];
    v31 = settingsLocString(@"AIR_TOUCH_TITLE", @"Accessibility");
    v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:v2 set:0 get:"handEnabled:" detail:objc_opt_class() cell:2 edit:0];

    v33 = AXInBuddySetupKey;
    [v32 setProperty:&__kCFBooleanTrue forKey:AXInBuddySetupKey];
    v34 = v2;
    v35 = PSIDKey;
    [v32 setProperty:@"AIR_TOUCH_TITLE" forKey:PSIDKey];
    [v4 addObject:v32];

    if (AXHasCapability())
    {
      v36 = [PSSpecifier groupSpecifierWithName:0];
      [v36 setProperty:&__kCFBooleanTrue forKey:v33];
      [v4 addObject:v36];
      v37 = AXLocStringKeyForHomeButton();
      v38 = settingsLocString(v37, @"Accessibility");
      v39 = v33;
      v110 = PSFooterTextGroupKey;
      [v36 setProperty:v38 forKey:?];

      v40 = settingsLocString(@"REACHABILITY", @"Accessibility");
      v41 = [PSSpecifier preferenceSpecifierNamed:v40 target:v34 set:"setReachabilityEnabled:specifier:" get:"reachabilityEnabled:" detail:0 cell:6 edit:0];

      v33 = v39;
      [v41 setProperty:@"REACHABILITY" forKey:v35];
      [v41 setProperty:&__kCFBooleanTrue forKey:v39];
      [v4 addObject:v41];
    }

    else
    {
      v110 = PSFooterTextGroupKey;
    }

    v42 = +[PSSpecifier emptyGroupSpecifier];
    [v42 setProperty:&__kCFBooleanFalse forKey:v33];
    [v4 addObject:v42];
    if (AXDeviceHasForcePress3dTouch())
    {
      v43 = @"FORCE_TOUCH_FOOTER";
    }

    else
    {
      v43 = @"HAPTIC_TOUCH_FOOTER";
    }

    v44 = settingsLocString(v43, @"Accessibility");
    [v42 setProperty:v44 forKey:v110];

    if (AXDeviceHasForcePress3dTouch())
    {
      v45 = @"FORCE_TOUCH_AND_HAPTIC_TOUCH";
    }

    else
    {
      v45 = @"HAPTIC_TOUCH";
    }

    settingsLocString(v45, @"Accessibility");
    v46 = v4;
    v48 = v47 = v33;
    v49 = [PSSpecifier preferenceSpecifierNamed:v48 target:v34 set:0 get:"forceTouchEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v49 setProperty:@"ForceTouch" forKey:PSKeyNameKey];
    [v49 setObject:@"ForceTouch" forKeyedSubscript:v35];
    [v49 setProperty:&__kCFBooleanFalse forKey:v47];
    [v46 addObject:v49];
    v50 = +[PSSpecifier emptyGroupSpecifier];

    [v46 addObject:v50];
    [v50 setProperty:&__kCFBooleanTrue forKey:v47];
    v51 = settingsLocString(@"TOUCH_ACCOMMODATIONS_FOOTER", @"Accessibility");
    [v50 setProperty:v51 forKey:v110];

    v52 = settingsLocString(@"TOUCH_ACCOMMODATIONS", @"Accessibility");
    v53 = [PSSpecifier preferenceSpecifierNamed:v52 target:v34 set:0 get:"touchAccommodationsEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v53 setProperty:&__kCFBooleanTrue forKey:v47];
    [v53 setProperty:@"TOUCH_ACCOMMODATIONS" forKey:v35];
    [v46 addObject:v53];
    v54 = v47;
    v55 = v46;
    if ((AXHasCapability() & 1) != 0 || AXHasCapability())
    {
      v56 = AXHasCapability();
      v57 = PSListController_ptr;
      v58 = +[PSSpecifier emptyGroupSpecifier];

      [v58 setProperty:&__kCFBooleanTrue forKey:v54];
      [v55 addObject:v58];
      v59 = settingsLocString(@"TAP_TO_WAKE_TITLE_FOOTER", @"Accessibility");
      if (v56)
      {
        v60 = settingsLocString(@"TAP_TOUCH_TO_WAKE_TITLE_FOOTER", @"Accessibility-D73");

        v59 = v60;
      }

      [v58 setProperty:v59 forKey:v110];
      v61 = settingsLocString(@"TAP_TO_WAKE_TITLE", @"Accessibility");
      if (v56)
      {
        v62 = settingsLocString(@"TAP_TOUCH_TO_WAKE_TITLE", @"Accessibility-D73");

        v61 = v62;
      }

      v53 = [PSSpecifier preferenceSpecifierNamed:v61 target:v108 set:"setTapToWake:specifier:" get:"tapToWake:" detail:0 cell:6 edit:0];

      [v53 setProperty:&__kCFBooleanTrue forKey:v54];
      [v53 setProperty:@"TAP_TO_WAKE_TITLE" forKey:v35];
      [v55 addObject:v53];
    }

    else
    {
      v57 = PSListController_ptr;
    }

    v63 = +[PSSpecifier emptyGroupSpecifier];

    v64 = AXLocStringKeyForModel();
    v65 = settingsLocString(v64, @"Accessibility");
    [v63 setProperty:v65 forKey:v110];

    [v63 setProperty:&__kCFBooleanTrue forKey:v54];
    [v55 addObject:v63];
    v66 = settingsLocString(@"SHAKE_TO_UNDO", @"Accessibility");
    v67 = [PSSpecifier preferenceSpecifierNamed:v66 target:v108 set:"setShakeToUndo:specifier:" get:"shakeToUndo:" detail:0 cell:6 edit:0];

    [v67 setProperty:&__kCFBooleanTrue forKey:v54];
    [v67 setProperty:@"SHAKE_TO_UNDO" forKey:v35];
    [v55 addObject:v67];
    v68 = v54;
    if (AXHasCapability())
    {
      v69 = +[PSSpecifier emptyGroupSpecifier];

      v70 = v108;
      if ([(AXTouchAndReachability *)v108 _vibrationVibratesForEmergencies])
      {
        v71 = @"DisableVibrationFooterTextFormat";
      }

      else
      {
        v71 = @"DisableVibrationFooterTextFormat_ExceptEmergencies";
      }

      v102 = settingsLocString(v71, @"Accessibility");
      v72 = +[UIDevice currentDevice];
      v73 = [v72 localizedModel];
      v74 = [NSString stringWithFormat:v102, v73];
      [v69 setProperty:v74 forKey:v110];

      [v69 setProperty:&__kCFBooleanTrue forKey:v68];
      [v55 addObject:v69];
      v75 = settingsLocString(@"VIBRATION", @"Accessibility");
      v67 = [PSSpecifier preferenceSpecifierNamed:v75 target:v108 set:"setVibrationEnabled:specifier:" get:"vibrationEnabled:" detail:0 cell:6 edit:0];

      v76 = v68;
      [v67 setProperty:&__kCFBooleanTrue forKey:v68];
      v57 = PSListController_ptr;
      [v67 setProperty:@"VIBRATION" forKey:v35];
      [v55 addObject:v67];
    }

    else
    {
      v76 = v54;
      v70 = v108;
    }

    v77 = [v57[5] emptyGroupSpecifier];

    [v77 setProperty:&__kCFBooleanFalse forKey:v76];
    [v55 addObject:v77];
    if (AXDeviceHasTopButton())
    {
      v78 = @"LOCK_BUTTON_IGNORE_FOOTER_TOP";
    }

    else
    {
      v78 = @"LOCK_BUTTON_IGNORE_FOOTER_SIDE";
    }

    v103 = settingsLocString(v78, @"Accessibility");
    [v77 setProperty:? forKey:?];
    v79 = v57[5];
    v80 = settingsLocString(@"LOCK_BUTTON_IGNORE_TITLE", @"Accessibility");
    v81 = [v79 preferenceSpecifierNamed:v80 target:v70 set:"setPhoneLockButton:specifier:" get:"phoneLockButton:" detail:0 cell:6 edit:0];

    [v81 setProperty:@"LockButtonIgnore" forKey:v35];
    [v81 setProperty:&__kCFBooleanFalse forKey:v68];
    [v55 addObject:v81];
    v82 = [v57[5] emptyGroupSpecifier];

    [v82 setProperty:&__kCFBooleanFalse forKey:v68];
    [v55 addObject:v82];
    v83 = settingsLocString(@"CALL_AUDIO_ROUTING_FOOTER", @"CallAudioRoutingSettings");
    v84 = v68;
    [v82 setProperty:v83 forKey:v110];

    v85 = v57[5];
    v86 = settingsLocString(@"CALL_AUDIO_ROUTING_TITLE", @"Accessibility");
    v87 = [v85 preferenceSpecifierNamed:v86 target:v70 set:0 get:"callAudioRouting:" detail:objc_opt_class() cell:2 edit:0];

    [v87 setProperty:@"CALL_AUDIO_ROUTING" forKey:v35];
    [v87 setProperty:&__kCFBooleanFalse forKey:v84];
    [v55 addObject:v87];
    if (AXHasCapability())
    {
      v88 = [v57[5] emptyGroupSpecifier];

      [v88 setProperty:&__kCFBooleanFalse forKey:v84];
      v89 = settingsLocString(@"BACK_TAP_FOOTER", @"Accessibility");
      [v88 setProperty:v89 forKey:v110];

      [v55 addObject:v88];
      v90 = v57[5];
      v91 = settingsLocString(@"BACK_TAP", @"Accessibility");
      v87 = [v90 preferenceSpecifierNamed:v91 target:v70 set:0 get:"backTapEnabled:" detail:objc_opt_class() cell:2 edit:0];

      [v87 setProperty:&__kCFBooleanFalse forKey:v84];
      [v87 setProperty:@"BackTap" forKey:v35];
      [v55 addObject:v87];
    }

    v92 = [v57[5] emptyGroupSpecifier];

    v93 = settingsLocString(@"PreferActionSliderAlternativeFooter", @"Accessibility");
    [v92 setObject:v93 forKeyedSubscript:v110];

    [v55 addObject:v92];
    v94 = v57[5];
    v95 = settingsLocString(@"PreferActionSliderAlternative", @"Accessibility");
    v96 = [v94 preferenceSpecifierNamed:v95 target:v70 set:"setPreferActionSliderAlternative:specifier:" get:"preferActionSliderAlternative:" detail:0 cell:6 edit:0];

    [v55 addObject:v96];
    [(AXTouchAndReachability *)v70 filterBuddy:v55];
    v97 = [v55 copy];
    v98 = *&v70->super.AXUISettingsListController_opaque[v105];
    *&v70->super.AXUISettingsListController_opaque[v105] = v97;

    v3 = *&v70->super.AXUISettingsListController_opaque[v105];
  }

  return v3;
}

- (id)phoneLockButton:(id)a3
{
  v3 = _AXSPhoneLockToEndCallEnabled() == 0;

  return [NSNumber numberWithInt:v3];
}

- (void)setPhoneLockButton:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue] ^ 1;

  __AXSPhoneLockToEndCallSetEnabled(v4);
}

- (id)backTapEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 backTapEnabled])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"Accessibility");

  return v5;
}

- (BOOL)_vibrationVibratesForEmergencies
{
  if (!_CTServerConnectionCreate())
  {
    return 1;
  }

  CellBroadcastOverrideAccessibilityVibrationSetting = _CTServerConnectionGetCellBroadcastOverrideAccessibilityVibrationSetting();
  v3 = CellBroadcastOverrideAccessibilityVibrationSetting;
  v4 = HIDWORD(CellBroadcastOverrideAccessibilityVibrationSetting);
  v5 = AXLogCommon();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AXTouchAndReachability *)v3 _vibrationVibratesForEmergencies];
    }

    return 1;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v9 = 0;
    v10 = 1024;
    v11 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "override accessibility setting didSucceed: %d, isAccessibilityVibrationSettingOverridenForAlerts: %d", buf, 0xEu);
  }

  return 1;
}

- (id)callAudioRouting:(id)a3
{
  v3 = _AXSDefaultRouteForCall();
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_256B28[v3], @"CallAudioRoutingSettings");
  }

  return v4;
}

- (id)handEnabled:(id)a3
{
  if (_AXSAssistiveTouchEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (void)setVibrationEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue] ^ 1;

  __AXSSetVibrationDisabled(v4);
}

- (id)vibrationEnabled:(id)a3
{
  v3 = _AXSVibrationDisabled() == 0;

  return [NSNumber numberWithInt:v3];
}

- (id)shakeToUndo:(id)a3
{
  v3 = _AXSShakeToUndoDisabled() == 0;

  return [NSNumber numberWithInt:v3];
}

- (void)setShakeToUndo:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue] ^ 1;

  __AXSSetShakeToUndoDisabled(v4);
}

- (void)setTapToWake:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v5 = [NSUserDefaults alloc];
  v7 = [v5 initWithSuiteName:AX_SpringBoardBundleName];
  v6 = [v4 BOOLValue];

  [v7 setBool:v6 forKey:@"SBSupportTapToWake"];
}

- (id)tapToWake:(id)a3
{
  v3 = [NSUserDefaults alloc];
  v4 = [v3 initWithSuiteName:AX_SpringBoardBundleName];
  v5 = [v4 objectForKey:@"SBSupportTapToWake"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &__kCFBooleanTrue;
  }

  v8 = v7;

  return v7;
}

- (id)touchAccommodationsEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 touchAccommodationsEnabled])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"Accessibility");

  return v5;
}

- (id)forceTouchEnabled:(id)a3
{
  if (AXDeviceHasForcePress3dTouch())
  {
    if (_AXSForceTouchEnabled())
    {
      v3 = @"ON";
    }

    else
    {
      v3 = @"OFF";
    }

    v4 = settingsLocString(v3, @"Accessibility");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setReachabilityEnabled:(id)a3 specifier:(id)a4
{
  self->_easyReachCache = [a3 BOOLValue];
  SBSSetReachabilityEnabled();
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"AXEasyReachModeChanged" object:0];
}

- (id)preferActionSliderAlternative:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 preferActionSliderAlternative]);

  return v4;
}

- (void)setPreferActionSliderAlternative:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setPreferActionSliderAlternative:v4];
}

- (void)_vibrationVibratesForEmergencies
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "error getting override accessibility setting: domain: %d error: %d", v3, 0xEu);
}

@end