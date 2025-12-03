@interface SCATController
- (BOOL)_isUsingHeadSwitch;
- (SCATController)init;
- (id)_autoScanningOptionsSpecifiers;
- (id)_dwellScanningOptionsSpecifiers;
- (id)_manualScanningOptionsSpecifiers;
- (id)_pointPickerSpecifiers;
- (id)_scanTimeoutSpecifier;
- (id)_summaryForListOfItems:(id)items;
- (id)actionRepeatSummary:(id)summary;
- (id)alwaysTapKeyboardKeysEnabled:(id)enabled;
- (id)autoscanDelaySummary:(id)summary;
- (id)compactMenuEnabled:(id)enabled;
- (id)cursorColorDescription:(id)description;
- (id)cursorHighVisibility:(id)visibility;
- (id)customGesturesSummary:(id)summary;
- (id)delayAfterInputSummary:(id)summary;
- (id)dwellTimeSummary:(id)summary;
- (id)firstLaunchScanningMode:(id)mode;
- (id)headMovementSummary:(id)summary;
- (id)headScanningSummary:(id)summary;
- (id)holdDurationSummary:(id)summary;
- (id)inputCoalescingSummary:(id)summary;
- (id)itemGroupingEnabled:(id)enabled;
- (id)longPressSummary:(id)summary;
- (id)payWithSwitchControl:(id)control;
- (id)pointPickerSelectionStyleSummary:(id)summary;
- (id)profilesSummary:(id)summary;
- (id)recipesSummary:(id)summary;
- (id)restartScanningAtCurrentKey:(id)key;
- (id)scanByElements:(id)elements;
- (id)scanCyclesSummary:(id)summary;
- (id)scanLocationAfterTapSummary:(id)summary;
- (id)scanTimeoutSummary:(id)summary;
- (id)scanningStyle:(id)style;
- (id)selectActionDelaySummary:(id)summary;
- (id)selectSpecifier:(id)specifier;
- (id)soundEnabled:(id)enabled;
- (id)specifiers;
- (id)speechEnabled:(id)enabled;
- (id)switchScanningEnabled:(id)enabled;
- (id)switchesSummary:(id)summary;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tapBehaviorSummary:(id)summary;
- (id)useExtendedKeyboardPredictions:(id)predictions;
- (int64_t)selectedColorForSelectionController:(id)controller;
- (void)_preferencesDidChange:(id)change;
- (void)_reloadAfterSecureIntentDismissal;
- (void)_setUpSwitchControl;
- (void)_setUpSwitchControlProfileIfNecessary;
- (void)cursorColorSelectionController:(id)controller selectedCursorColor:(int64_t)color;
- (void)setAlwaysTapKeyboardKeysEnabled:(id)enabled specifier:(id)specifier;
- (void)setCompactMenuEnabled:(id)enabled specifier:(id)specifier;
- (void)setCursorHighVisibility:(id)visibility specifier:(id)specifier;
- (void)setItemGroupingEnabled:(id)enabled specifier:(id)specifier;
- (void)setPayWithSwitchControl:(id)control specifier:(id)specifier;
- (void)setRestartScanningAtCurrentKey:(id)key specifier:(id)specifier;
- (void)setScanByElements:(id)elements specifier:(id)specifier;
- (void)setSoundEnabled:(id)enabled specifier:(id)specifier;
- (void)setSwitchScanningEnabled:(id)enabled specifier:(id)specifier;
- (void)setUseExtendedKeyboardPredictions:(id)predictions specifier:(id)specifier;
- (void)showProfilesController:(id)controller;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SCATController

- (SCATController)init
{
  v46.receiver = self;
  v46.super_class = SCATController;
  v2 = [(SCATController *)&v46 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = __22__SCATController_init__block_invoke;
    v43[3] = &unk_255388;
    objc_copyWeak(&v44, &location);
    [v3 registerUpdateBlock:v43 forRetrieveSelector:"assistiveTouchStepInterval" withListener:v2];

    objc_destroyWeak(&v44);
    v4 = +[AXSettings sharedInstance];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = __22__SCATController_init__block_invoke_2;
    v41[3] = &unk_255388;
    objc_copyWeak(&v42, &location);
    [v4 registerUpdateBlock:v41 forRetrieveSelector:"switchControlAutoTapTimeout" withListener:v2];

    objc_destroyWeak(&v42);
    v5 = +[AXSettings sharedInstance];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __22__SCATController_init__block_invoke_3;
    v39[3] = &unk_255388;
    objc_copyWeak(&v40, &location);
    [v5 registerUpdateBlock:v39 forRetrieveSelector:"assistiveTouchScanTimeout" withListener:v2];

    objc_destroyWeak(&v40);
    v6 = +[AXSettings sharedInstance];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = __22__SCATController_init__block_invoke_4;
    v37[3] = &unk_255388;
    objc_copyWeak(&v38, &location);
    [v6 registerUpdateBlock:v37 forRetrieveSelector:"assistiveTouchScannerSpeechEnabled" withListener:v2];

    objc_destroyWeak(&v38);
    v7 = +[AXSettings sharedInstance];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = __22__SCATController_init__block_invoke_5;
    v35[3] = &unk_255388;
    objc_copyWeak(&v36, &location);
    [v7 registerUpdateBlock:v35 forRetrieveSelector:"assistiveTouchScannerSoundEnabled" withListener:v2];

    objc_destroyWeak(&v36);
    v8 = +[AXSettings sharedInstance];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __22__SCATController_init__block_invoke_6;
    v33[3] = &unk_255388;
    objc_copyWeak(&v34, &location);
    [v8 registerUpdateBlock:v33 forRetrieveSelector:"assistiveTouchScannerCompactMenuEnabled" withListener:v2];

    objc_destroyWeak(&v34);
    v9 = +[AXSettings sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __22__SCATController_init__block_invoke_7;
    v31[3] = &unk_255388;
    objc_copyWeak(&v32, &location);
    [v9 registerUpdateBlock:v31 forRetrieveSelector:"assistiveTouchGroupElementsEnabled" withListener:v2];

    objc_destroyWeak(&v32);
    v10 = +[AXSettings sharedInstance];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __22__SCATController_init__block_invoke_8;
    v29[3] = &unk_255388;
    objc_copyWeak(&v30, &location);
    [v10 registerUpdateBlock:v29 forRetrieveSelector:"assistiveTouchSwitches" withListener:v2];

    objc_destroyWeak(&v30);
    v11 = +[AXSettings sharedInstance];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __22__SCATController_init__block_invoke_9;
    v27[3] = &unk_255388;
    objc_copyWeak(&v28, &location);
    [v11 registerUpdateBlock:v27 forRetrieveSelector:"assistiveTouchSavedGestures" withListener:v2];

    objc_destroyWeak(&v28);
    if (AXShouldShowSwitchControlHeadTrackingModeFromSettings())
    {
      v12 = +[AXSettings sharedInstance];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = __22__SCATController_init__block_invoke_10;
      v25[3] = &unk_255388;
      objc_copyWeak(&v26, &location);
      [v12 registerUpdateBlock:v25 forRetrieveSelector:"switchControlUseCameraForPointMode" withListener:v2];

      objc_destroyWeak(&v26);
    }

    v13 = +[AXSettings sharedInstance];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = __22__SCATController_init__block_invoke_11;
    v23 = &unk_255388;
    objc_copyWeak(&v24, &location);
    [v13 registerUpdateBlock:&v20 forRetrieveSelector:"switchControlFirstLaunchScanningMode" withListener:v2];

    objc_destroyWeak(&v24);
    v14 = objc_loadWeakRetained(&location);
    [v14 _setUpSwitchControlProfileIfNecessary];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"_preferencesDidChange:" name:kAXSVoiceOverTouchEnabledNotification object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"_preferencesDidChange:" name:kAXSAssistiveTouchEnabledNotification object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v2 selector:"_preferencesDidChange:" name:kAXSAssistiveTouchScannerEnabledNotification object:0];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v2 selector:"_preferencesDidChange:" name:kAXSFullKeyboardAccessEnabledNotification object:0];

    objc_destroyWeak(&location);
  }

  return v2;
}

void __22__SCATController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"ScanningSpeedIdentifier" animated:0];
}

void __22__SCATController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"SelectActionDelayIdentifier" animated:0];
}

void __22__SCATController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"ScanTimeoutIdentifier" animated:0];
}

void __22__SCATController_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"SpeechIdentifier" animated:0];
}

void __22__SCATController_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"SoundIdentifier" animated:0];
}

void __22__SCATController_init__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"CompactMenuIdentifier" animated:0];
}

void __22__SCATController_init__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"ItemGroupingIdentifier" animated:0];
}

void __22__SCATController_init__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"SwitchesIdentifier" animated:0];
}

void __22__SCATController_init__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"CustomGesturesIdentifier" animated:0];
}

void __22__SCATController_init__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"CameraPointPickerSwitch"];
}

void __22__SCATController_init__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"FirstLaunchScanningModeIdentifier" animated:0];
}

- (void)_preferencesDidChange:(id)change
{
  v4 = [(SCATController *)self specifierForID:@"EnablingCell"];
  v5 = [NSNumber numberWithInt:[(SCATController *)self _shouldDisableSwitch]^ 1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_setUpSwitchControlProfileIfNecessary
{
  v7 = +[AXSettings sharedInstance];
  switchControlSelectedProfile = [v7 switchControlSelectedProfile];
  if (!switchControlSelectedProfile || (v3 = switchControlSelectedProfile, [v7 switchControlProfiles], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, !v5))
  {
    v6 = +[AXSCATProfile defaultProfile];
    SCATAddProfileToSettings();
    [v7 setSwitchControlSelectedProfile:v6];
  }
}

- (id)selectSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = SCATController;
  v4 = [(SCATController *)&v6 selectSpecifier:specifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDelegate:self];
  }

  return v4;
}

- (id)specifiers
{
  selfCopy = self;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_47;
  }

  v167 = OBJC_IVAR___PSListController__specifiers;
  v4 = objc_opt_new();
  if (AXDeviceSupportsSwitchControlOnboarding())
  {
    v5 = [PSSpecifier preferenceSpecifierNamed:@"Set Up Switch Control" target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];
    [v5 setProperty:@"SCATOnboardingSpecifier" forKey:PSIDKey];
    [v5 setButtonAction:"_setUpSwitchControl"];
    [v5 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v4 addObject:v5];
  }

  v6 = +[PSSpecifier emptyGroupSpecifier];
  [v4 addObject:v6];
  v7 = AXLocStringKeyForModel();
  v8 = AXParameterizedLocalizedString();

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v6 setProperty:v10 forKey:PSFooterCellClassGroupKey];

  v11 = [NSBundle bundleWithIdentifier:@"com.apple.accessibility.AccessibilityUIUtilities"];
  bundlePath = [v11 bundlePath];
  [v6 setProperty:bundlePath forKey:@"bundlePath"];

  v187[0] = @"contentLabel";
  v187[1] = @"alreadyLocalized";
  v13 = &__kCFBooleanTrue;
  v170 = v8;
  v188[0] = v8;
  v188[1] = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:v188 forKeys:v187 count:2];
  v189 = v14;
  v15 = [NSArray arrayWithObjects:&v189 count:1];
  v16 = [v15 mutableCopy];

  v17 = AXTeachableFeatureSwitchControl;
  v171 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureSwitchControl];
  v172 = v16;
  v168 = v4;
  v169 = v6;
  if ([v171 count])
  {
    v165 = selfCopy;
    v185[0] = @"moreLabel";
    v18 = AXParameterizedLocalizedString();
    v186[0] = v18;
    v185[1] = @"additionalTitleLabel";
    v19 = AXParameterizedLocalizedString();
    v186[1] = v19;
    v186[2] = &__kCFBooleanTrue;
    v20 = @"alreadyLocalized";
    v185[2] = @"alreadyLocalized";
    v185[3] = @"symbolName";
    v186[3] = @"square.grid.2x2";
    v21 = [NSDictionary dictionaryWithObjects:v186 forKeys:v185 count:4];
    v163 = [v21 mutableCopy];

    v22 = objc_opt_new();
    v183[0] = @"sectionLabel";
    v23 = [AXTeachableMomentsManager notificationTitleForFeature:v17];
    v183[1] = @"alreadyLocalized";
    v184[0] = v23;
    v184[1] = &__kCFBooleanTrue;
    v24 = [NSDictionary dictionaryWithObjects:v184 forKeys:v183 count:2];
    [v22 addObject:v24];

    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    obj = v171;
    v25 = [obj countByEnumeratingWithState:&v175 objects:v182 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v176;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v176 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v175 + 1) + 8 * i);
          v180[0] = @"headerLabel";
          itemTitle = [v29 itemTitle];
          v181[0] = itemTitle;
          v180[1] = @"contentLabel";
          itemDescription = [v29 itemDescription];
          v180[2] = v20;
          v181[1] = itemDescription;
          v181[2] = v13;
          [NSDictionary dictionaryWithObjects:v181 forKeys:v180 count:3];
          v32 = v13;
          v34 = v33 = v20;
          [v22 addObject:v34];

          v20 = v33;
          v13 = v32;
        }

        v26 = [obj countByEnumeratingWithState:&v175 objects:v182 count:16];
      }

      while (v26);
    }

    [v163 setObject:v22 forKey:@"additionalContent"];
    v16 = v172;
    [v172 addObject:v163];

    selfCopy = v165;
    v4 = v168;
    v6 = v169;
  }

  [v6 setProperty:v16 forKey:@"content"];
  v35 = AXParameterizedLocalizedString();
  v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:selfCopy set:"setSwitchScanningEnabled:specifier:" get:"switchScanningEnabled:" detail:0 cell:6 edit:0];

  [v36 setProperty:@"EnablingCell" forKey:PSIDKey];
  [v4 addObject:v36];
  obja = v36;
  if ([(SCATController *)selfCopy _shouldDisableSwitch])
  {
    [v36 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    if (_AXSAssistiveTouchEnabled() || _AXSVoiceOverTouchEnabled() || _AXSFullKeyboardAccessEnabled())
    {
      v37 = AXParameterizedLocalizedString();
      if (v37)
      {
        v38 = v37;
        v39 = [NSString stringWithFormat:@"%@\n\n%@", v8, v37];

        [v6 setProperty:v39 forKey:PSFooterTextGroupKey];
        v170 = v39;
      }
    }
  }

  v166 = +[PSSpecifier emptyGroupSpecifier];
  [v4 addObject:?];
  v40 = objc_opt_class();
  if (_os_feature_enabled_impl())
  {
    v40 = objc_opt_class();
  }

  v41 = AXParameterizedLocalizedString();
  v42 = [PSSpecifier preferenceSpecifierNamed:v41 target:selfCopy set:0 get:"switchesSummary:" detail:v40 cell:2 edit:0];

  [v42 setIdentifier:@"SwitchesIdentifier"];
  v164 = v42;
  [v4 addObject:v42];
  v43 = AXParameterizedLocalizedString();
  v44 = [PSSpecifier preferenceSpecifierNamed:v43 target:selfCopy set:0 get:"recipesSummary:" detail:objc_opt_class() cell:2 edit:0];

  [v44 setIdentifier:@"RecipesIdentifier"];
  v162 = v44;
  [v4 addObject:v44];
  v45 = AXParameterizedLocalizedString();
  v46 = [PSSpecifier preferenceSpecifierNamed:v45 target:selfCopy set:0 get:"profilesSummary:" detail:0 cell:2 edit:0];

  [v46 setIdentifier:@"ProfilesIdentifier"];
  v47 = PSEnabledKey;
  [v46 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v46 setControllerLoadAction:"showProfilesController:"];
  v161 = v46;
  [v4 addObject:v46];
  v160 = +[PSSpecifier emptyGroupSpecifier];
  [v4 addObject:?];
  v48 = AXParameterizedLocalizedString();
  v49 = [PSSpecifier preferenceSpecifierNamed:v48 target:selfCopy set:0 get:"scanningStyle:" detail:objc_opt_class() cell:2 edit:0];

  [v49 setIdentifier:@"ScanningStyleIdentifier"];
  v159 = v49;
  [v4 addObject:v49];
  v50 = AXParameterizedLocalizedString();
  v51 = [PSSpecifier preferenceSpecifierNamed:v50 target:selfCopy set:0 get:"firstLaunchScanningMode:" detail:objc_opt_class() cell:2 edit:0];

  [v51 setIdentifier:@"FirstLaunchScanningModeIdentifier"];
  v158 = v51;
  [v4 addObject:v51];
  v52 = AXParameterizedLocalizedString();
  v53 = [PSSpecifier groupSpecifierWithName:v52];

  [v53 setIdentifier:@"TimingIdentifier"];
  v157 = v53;
  [v4 addObject:v53];
  v156 = +[AXSettings sharedInstance];
  switchControlScanningStyle = [v156 switchControlScanningStyle];
  if (switchControlScanningStyle == &dword_0 + 2)
  {
    _dwellScanningOptionsSpecifiers = [(SCATController *)selfCopy _dwellScanningOptionsSpecifiers];
    goto LABEL_27;
  }

  if (switchControlScanningStyle == &dword_0 + 1)
  {
    _dwellScanningOptionsSpecifiers = [(SCATController *)selfCopy _manualScanningOptionsSpecifiers];
    goto LABEL_27;
  }

  if (!switchControlScanningStyle)
  {
    _dwellScanningOptionsSpecifiers = [(SCATController *)selfCopy _autoScanningOptionsSpecifiers];
LABEL_27:
    v56 = _dwellScanningOptionsSpecifiers;
    [v4 addObjectsFromArray:_dwellScanningOptionsSpecifiers];
  }

  v57 = AXParameterizedLocalizedString();
  v58 = [PSSpecifier preferenceSpecifierNamed:v57 target:selfCopy set:0 get:"actionRepeatSummary:" detail:objc_opt_class() cell:2 edit:0];

  [v58 setIdentifier:@"ActionRepeatIdentifier"];
  v155 = v58;
  [v4 addObject:v58];
  v59 = AXParameterizedLocalizedString();
  v60 = [PSSpecifier preferenceSpecifierNamed:v59 target:selfCopy set:0 get:"longPressSummary:" detail:objc_opt_class() cell:2 edit:0];

  [v60 setIdentifier:@"LongPressIdentifier"];
  v154 = v60;
  [v4 addObject:v60];
  v153 = +[PSSpecifier emptyGroupSpecifier];
  [v4 addObject:?];
  v61 = AXParameterizedLocalizedString();
  v62 = [PSSpecifier preferenceSpecifierNamed:v61 target:selfCopy set:0 get:"tapBehaviorSummary:" detail:objc_opt_class() cell:2 edit:0];

  [v62 setObject:&__kCFBooleanTrue forKeyedSubscript:v47];
  [v62 setIdentifier:@"TapBehaviorIdentifier"];
  v152 = v62;
  [v4 addObject:v62];
  v63 = AXParameterizedLocalizedString();
  v64 = [PSSpecifier preferenceSpecifierNamed:v63 target:selfCopy set:0 get:"scanLocationAfterTapSummary:" detail:objc_opt_class() cell:2 edit:0];

  [v64 setIdentifier:@"ScanLocationIdentifier"];
  v151 = v64;
  [v4 addObject:v64];
  v65 = AXParameterizedLocalizedString();
  v66 = [PSSpecifier groupSpecifierWithName:v65];

  [v66 setIdentifier:@"SwitchKeyboardIdentifier"];
  v150 = v66;
  [v4 addObject:v66];
  v67 = AXParameterizedLocalizedString();
  v68 = [PSSpecifier preferenceSpecifierNamed:v67 target:selfCopy set:"setRestartScanningAtCurrentKey:specifier:" get:"restartScanningAtCurrentKey:" detail:0 cell:6 edit:0];

  [v68 setIdentifier:@"RestartScanAtCurrentIdentifier"];
  v149 = v68;
  [v4 addObject:v68];
  v69 = +[AXSettings sharedInstance];
  switchControlTapBehavior = [v69 switchControlTapBehavior];

  if (switchControlTapBehavior != &dword_0 + 2)
  {
    v71 = AXParameterizedLocalizedString();
    v72 = [PSSpecifier preferenceSpecifierNamed:v71 target:selfCopy set:"setAlwaysTapKeyboardKeysEnabled:specifier:" get:"alwaysTapKeyboardKeysEnabled:" detail:0 cell:6 edit:0];

    [v72 setIdentifier:@"AlwaysTapKeyboardIdentifier"];
    [v4 addObject:v72];
  }

  v73 = AXParameterizedLocalizedString();
  v74 = [PSSpecifier preferenceSpecifierNamed:v73 target:selfCopy set:"setUseExtendedKeyboardPredictions:specifier:" get:"useExtendedKeyboardPredictions:" detail:0 cell:6 edit:0];

  [v74 setIdentifier:@"UseExtendedKeyboardPredictionsIdentifier"];
  v148 = v74;
  [v4 addObject:v74];
  v75 = AXParameterizedLocalizedString();
  v76 = [PSSpecifier groupSpecifierWithName:v75];

  [v76 setIdentifier:@"SwitchStabilityIdentifier"];
  v147 = v76;
  [v4 addObject:v76];
  v77 = AXParameterizedLocalizedString();
  v78 = [PSSpecifier preferenceSpecifierNamed:v77 target:selfCopy set:0 get:"holdDurationSummary:" detail:objc_opt_class() cell:2 edit:0];

  [v78 setIdentifier:@"HoldDurationIdentifier"];
  v146 = v78;
  [v4 addObject:v78];
  v79 = AXParameterizedLocalizedString();
  v80 = [PSSpecifier preferenceSpecifierNamed:v79 target:selfCopy set:0 get:"inputCoalescingSummary:" detail:objc_opt_class() cell:2 edit:0];

  [v80 setIdentifier:@"IgnoreRepeatIdentifier"];
  v145 = v80;
  [v4 addObject:v80];
  if ([(SCATController *)selfCopy _isUsingHeadSwitch])
  {
    v81 = AXParameterizedLocalizedString();
    v82 = [PSSpecifier preferenceSpecifierNamed:v81 target:selfCopy set:0 get:"headMovementSummary:" detail:objc_opt_class() cell:2 edit:0];

    [v4 addObject:v82];
  }

  v83 = AXParameterizedLocalizedString();
  v84 = [PSSpecifier groupSpecifierWithName:v83];

  [v84 setIdentifier:@"AxisSelectionGroupIdentifier"];
  v144 = v84;
  [v4 addObject:v84];
  _pointPickerSpecifiers = [(SCATController *)selfCopy _pointPickerSpecifiers];
  [v4 addObjectsFromArray:_pointPickerSpecifiers];

  v86 = AXParameterizedLocalizedString();
  v87 = [PSSpecifier groupSpecifierWithName:v86];

  [v87 setIdentifier:@"AudioGroupIdentifier"];
  v143 = v87;
  [v4 addObject:v87];
  v88 = AXParameterizedLocalizedString();
  v89 = [PSSpecifier preferenceSpecifierNamed:v88 target:selfCopy set:"setSoundEnabled:specifier:" get:"soundEnabled:" detail:0 cell:6 edit:0];

  [v89 setIdentifier:@"SoundIdentifier"];
  v142 = v89;
  [v4 addObject:v89];
  v90 = AXParameterizedLocalizedString();
  v91 = [PSSpecifier preferenceSpecifierNamed:v90 target:selfCopy set:0 get:"speechEnabled:" detail:objc_opt_class() cell:2 edit:0];

  [v91 setIdentifier:@"SpeechIdentifier"];
  v141 = v91;
  [v4 addObject:v91];
  v140 = +[PSSpecifier emptyGroupSpecifier];
  [v4 addObject:?];
  v92 = AXParameterizedLocalizedString();
  v93 = [PSSpecifier preferenceSpecifierNamed:v92 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v93 setIdentifier:@"CustomizeMenuIdentifier"];
  v139 = v93;
  [v4 addObject:v93];
  v94 = +[PSSpecifier emptyGroupSpecifier];
  v95 = AXParameterizedLocalizedString();
  v134 = PSFooterTextGroupKey;
  [v94 setProperty:v95 forKey:?];

  v138 = v94;
  [v4 addObject:v94];
  v96 = AXParameterizedLocalizedString();
  v97 = [PSSpecifier preferenceSpecifierNamed:v96 target:selfCopy set:"setItemGroupingEnabled:specifier:" get:"itemGroupingEnabled:" detail:0 cell:6 edit:0];

  [v97 setIdentifier:@"ItemGroupingIdentifier"];
  v137 = v97;
  [v4 addObject:v97];
  v98 = AXParameterizedLocalizedString();
  v99 = [PSSpecifier groupSpecifierWithName:v98];

  [v99 setIdentifier:@"VisualGroupIdentifier"];
  v136 = v99;
  [v4 addObject:v99];
  v100 = AXParameterizedLocalizedString();
  v101 = [PSSpecifier preferenceSpecifierNamed:v100 target:selfCopy set:"setCursorHighVisibility:specifier:" get:"cursorHighVisibility:" detail:0 cell:6 edit:0];

  [v101 setIdentifier:@"CursorVisibilityIdentifier"];
  [v4 addObject:v101];
  v102 = AXParameterizedLocalizedString();
  v103 = [PSSpecifier preferenceSpecifierNamed:v102 target:selfCopy set:0 get:"cursorColorDescription:" detail:objc_opt_class() cell:2 edit:0];

  [v103 setProperty:&stru_25D420 forKey:PSSpecifierSearchPlistKey];
  [v103 setProperty:&__kCFBooleanFalse forKey:PSSpecifierIsSearchableKey];
  [v103 setIdentifier:@"CursorColorIdentifier"];
  [v4 addObject:v103];
  v104 = AXParameterizedLocalizedString();
  v105 = [PSSpecifier preferenceSpecifierNamed:v104 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v105 setIdentifier:@"BannersIdentifier"];
  [v4 addObject:v105];
  v135 = +[PSSpecifier emptyGroupSpecifier];
  [v4 addObject:?];
  v106 = AXParameterizedLocalizedString();
  v107 = v4;
  v108 = [PSSpecifier preferenceSpecifierNamed:v106 target:selfCopy set:0 get:"customGesturesSummary:" detail:objc_opt_class() cell:2 edit:0];

  [v108 setIdentifier:@"CustomGesturesIdentifier"];
  [v107 addObject:v108];
  if (AXHasCapability())
  {
    v133 = v101;
    AXDeviceIsPad();
    v109 = AXParameterizedLocalizedString();
    v110 = [PSSpecifier groupSpecifierWithName:v109];

    if (AXDeviceHasTopTouchIDButton())
    {
      v111 = settingsLocStringTopTouchIDButton(@"APPLE_PAY_IPAD_TOUCHID");
      [v110 setName:v111];
    }

    [v110 setIdentifier:@"APPLE_PAY"];
    v112 = +[BiometricKit manager];
    v113 = [v112 identities:0];
    v114 = [v113 count];

    IsPad = AXDeviceIsPad();
    v116 = @"APPLE_PAY_FOOTER";
    if (IsPad)
    {
      v116 = @"APPLE_PAY_FOOTER_IPAD";
    }

    v117 = @"APPLE_PAY_FOOTER_PASSCODE_IPAD";
    if (!IsPad)
    {
      v117 = @"APPLE_PAY_FOOTER_PASSCODE";
    }

    if (!v114)
    {
      v116 = v117;
    }

    v118 = v116;
    v119 = AXParameterizedLocalizedString();
    if (AXDeviceHasTopTouchIDButton())
    {
      v120 = settingsLocStringTopTouchIDButton(@"APPLE_PAY_FOOTER_PASSCODE_IPAD_TOUCHID");

      v119 = v120;
    }

    if (_AXSAssistiveTouchEnabled())
    {
      v121 = AXParameterizedLocalizedString();
      v179[0] = v119;
      v179[1] = v121;
      v122 = [NSArray arrayWithObjects:v179 count:2];
      [v122 componentsJoinedByString:@"\n\n"];
      v123 = v103;
      v124 = v108;
      v125 = v110;
      v126 = v105;
      v128 = v127 = v118;

      v119 = v128;
      v118 = v127;
      v105 = v126;
      v110 = v125;
      v108 = v124;
      v103 = v123;
    }

    [v110 setProperty:v119 forKey:v134];

    v107 = v168;
    [v168 addObject:v110];
    v129 = AXParameterizedLocalizedString();
    v130 = [PSSpecifier preferenceSpecifierNamed:v129 target:selfCopy set:"setPayWithSwitchControl:specifier:" get:"payWithSwitchControl:" detail:0 cell:6 edit:0];

    [v130 setIdentifier:@"APPLE_PAY_SWITCH"];
    [v168 addObject:v130];

    v6 = v169;
    v101 = v133;
  }

  v131 = *&selfCopy->AXUISettingsBaseListController_opaque[v167];
  *&selfCopy->AXUISettingsBaseListController_opaque[v167] = v107;

  v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v167];
LABEL_47:

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SCATController;
  [(SCATController *)&v4 viewWillAppear:appear];
  [(SCATController *)self reloadSpecifiers];
}

- (id)_scanTimeoutSpecifier
{
  v3 = AXParameterizedLocalizedString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:"scanTimeoutSummary:" detail:objc_opt_class() cell:2 edit:0];

  return v4;
}

- (id)_autoScanningOptionsSpecifiers
{
  cachedAutoScanningOptionsSpecifiers = self->_cachedAutoScanningOptionsSpecifiers;
  if (!cachedAutoScanningOptionsSpecifiers)
  {
    v4 = objc_opt_new();
    v5 = AXParameterizedLocalizedString();
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"autoscanDelaySummary:" detail:objc_opt_class() cell:2 edit:0];

    [v6 setIdentifier:@"ScanningSpeedIdentifier"];
    v7 = AXParameterizedLocalizedString();
    [v6 setAccessibilityLabel:v7];

    [(NSArray *)v4 addObject:v6];
    v8 = AXParameterizedLocalizedString();
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"delayAfterInputSummary:" detail:objc_opt_class() cell:2 edit:0];

    [v9 setIdentifier:@"DelayAfterInputIdentifier"];
    [(NSArray *)v4 addObject:v9];
    v10 = AXParameterizedLocalizedString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"scanCyclesSummary:" detail:objc_opt_class() cell:2 edit:0];

    [v11 setIdentifier:@"ScanCyclesIdentifier"];
    [v11 setProperty:&__kCFBooleanFalse forKey:PSSpecifierIsSearchableKey];
    [(NSArray *)v4 addObject:v11];
    v12 = self->_cachedAutoScanningOptionsSpecifiers;
    self->_cachedAutoScanningOptionsSpecifiers = v4;

    cachedAutoScanningOptionsSpecifiers = self->_cachedAutoScanningOptionsSpecifiers;
  }

  return cachedAutoScanningOptionsSpecifiers;
}

- (id)_manualScanningOptionsSpecifiers
{
  cachedManualScanningOptionsSpecifiers = self->_cachedManualScanningOptionsSpecifiers;
  if (!cachedManualScanningOptionsSpecifiers)
  {
    v4 = objc_opt_new();
    _scanTimeoutSpecifier = [(SCATController *)self _scanTimeoutSpecifier];
    [(NSArray *)v4 addObject:_scanTimeoutSpecifier];
    v6 = self->_cachedManualScanningOptionsSpecifiers;
    self->_cachedManualScanningOptionsSpecifiers = v4;

    cachedManualScanningOptionsSpecifiers = self->_cachedManualScanningOptionsSpecifiers;
  }

  return cachedManualScanningOptionsSpecifiers;
}

- (id)_dwellScanningOptionsSpecifiers
{
  cachedDwellScanningOptionsSpecifiers = [(SCATController *)self cachedDwellScanningOptionsSpecifiers];

  if (!cachedDwellScanningOptionsSpecifiers)
  {
    v4 = +[NSMutableArray array];
    v5 = AXParameterizedLocalizedString();
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"dwellTimeSummary:" detail:objc_opt_class() cell:2 edit:0];

    [v4 addObject:v6];
    _scanTimeoutSpecifier = [(SCATController *)self _scanTimeoutSpecifier];
    [v4 addObject:_scanTimeoutSpecifier];
    [(SCATController *)self setCachedDwellScanningOptionsSpecifiers:v4];
  }

  return [(SCATController *)self cachedDwellScanningOptionsSpecifiers];
}

- (BOOL)_isUsingHeadSwitch
{
  v2 = SCATSwitchesWithSource();
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_pointPickerSpecifiers
{
  cachedPointPickerOptionsSpecifiers = self->_cachedPointPickerOptionsSpecifiers;
  if (!cachedPointPickerOptionsSpecifiers)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = self->_cachedPointPickerOptionsSpecifiers;
    self->_cachedPointPickerOptionsSpecifiers = v4;

    v6 = AXParameterizedLocalizedString();
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"pointPickerSelectionStyleSummary:" detail:objc_opt_class() cell:2 edit:0];

    [v7 setIdentifier:@"AxisSweepIdentifier"];
    [(NSMutableArray *)self->_cachedPointPickerOptionsSpecifiers addObject:v7];
    if (AXShouldShowSwitchControlHeadTrackingModeFromSettings())
    {
      v8 = AXParameterizedLocalizedString();
      v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"headScanningSummary:" detail:objc_opt_class() cell:2 edit:0];

      v10 = PSIDKey;
      [v9 setProperty:@"CameraPointPickerSwitch" forKey:PSIDKey];
      [(NSMutableArray *)self->_cachedPointPickerOptionsSpecifiers addObject:v9];
    }

    else
    {
      v10 = PSIDKey;
    }

    v11 = AXParameterizedLocalizedString();
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v12 setProperty:@"EYE_TRACKING" forKey:v10];
    [(NSMutableArray *)self->_cachedPointPickerOptionsSpecifiers addObject:v12];

    cachedPointPickerOptionsSpecifiers = self->_cachedPointPickerOptionsSpecifiers;
  }

  return cachedPointPickerOptionsSpecifiers;
}

- (void)_setUpSwitchControl
{
  v3 = objc_alloc_init(SCATOnboardingController);
  [(SCATController *)self presentModalViewController:v3 withTransition:3];
}

- (id)cursorHighVisibility:(id)visibility
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchScannerCursorHighVisibilityEnabled]);

  return v4;
}

- (void)setCursorHighVisibility:(id)visibility specifier:(id)specifier
{
  bOOLValue = [visibility BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchScannerCursorHighVisibilityEnabled:bOOLValue];
}

- (id)cursorColorDescription:(id)description
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchCursorColor];
  v4 = AXAssistiveTouchScannerColorDescription();

  return v4;
}

- (id)switchScanningEnabled:(id)enabled
{
  v3 = _AXSAssistiveTouchScannerEnabled() != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setSwitchScanningEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  bOOLValue = [enabledCopy BOOLValue];
  v9 = _AXSTripleClickCopyOptions();
  if (bOOLValue)
  {
    _AXSAssistiveTouchScannerSetEnabled();
    if (([v9 containsObject:&off_27B508] & 1) == 0)
    {
      _AXSTripleClickAddOption();
      v10 = +[AXSettings sharedInstance];
      [v10 setAssistiveTouchScannerAddedTripleClickAutomatically:1];
    }
  }

  else
  {
    v11 = AXUILocalizedStringForKey();
    v12 = AXUILocalizedStringForKey();
    v13 = [UIAlertController alertControllerWithTitle:v11 message:v12 preferredStyle:1];

    v14 = AXUILocalizedStringForKey();
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __53__SCATController_setSwitchScanningEnabled_specifier___block_invoke;
    v24[3] = &unk_257608;
    v26 = bOOLValue;
    v25 = v9;
    v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:v24];

    objc_initWeak(&location, self);
    v16 = AXUILocalizedStringForKey();
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = __53__SCATController_setSwitchScanningEnabled_specifier___block_invoke_790;
    v21 = &unk_255BF8;
    objc_copyWeak(&v22, &location);
    v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:&v18];

    [v13 addAction:{v15, v18, v19, v20, v21}];
    [v13 addAction:v17];
    [(SCATController *)self presentViewController:v13 animated:1 completion:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __53__SCATController_setSwitchScanningEnabled_specifier___block_invoke(uint64_t a1)
{
  _AXSAssistiveTouchScannerSetEnabled();
  v2 = +[AXSettings sharedInstance];
  [v2 setSwitchControlOnDeviceEyeTrackingEnabled:0];

  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchScannerAddedTripleClickAutomatically];

  if (v4)
  {
    if ([*(a1 + 32) containsObject:&off_27B508])
    {
      v5 = [*(a1 + 32) mutableCopy];
      [v5 removeObject:&off_27B508];
      _AXSSetTripleClickOptions();
    }

    v6 = +[AXSettings sharedInstance];
    [v6 setAssistiveTouchScannerAddedTripleClickAutomatically:0];
  }
}

void __53__SCATController_setSwitchScanningEnabled_specifier___block_invoke_790(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)profilesSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  switchControlSelectedProfile = [v3 switchControlSelectedProfile];

  if (switchControlSelectedProfile)
  {
    [switchControlSelectedProfile name];
  }

  else
  {
    AXParameterizedLocalizedString();
  }
  v5 = ;

  return v5;
}

- (id)switchesSummary:(id)summary
{
  summaryCopy = summary;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v4 = +[AXSettings sharedInstance];
  assistiveTouchSwitches = [v4 assistiveTouchSwitches];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __34__SCATController_switchesSummary___block_invoke;
  v8[3] = &unk_258D20;
  v8[4] = v9;
  [assistiveTouchSwitches enumerateObjectsUsingBlock:v8];

  v6 = AXFormatInteger();

  _Block_object_dispose(v9, 8);

  return v6;
}

id __34__SCATController_switchesSummary___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isEnabled];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (id)selectActionDelaySummary:(id)summary
{
  v4 = +[AXSettings sharedInstance];
  if ([v4 switchControlTapBehavior] == &dword_0 + 1)
  {
    v5 = +[AXSettings sharedInstance];
    [v5 switchControlAutoTapTimeout];
    v6 = [(SCATController *)self _localizedSummaryForDelay:?];
  }

  else
  {
    v6 = AXParameterizedLocalizedString();
  }

  return v6;
}

- (id)holdDurationSummary:(id)summary
{
  v4 = +[AXSettings sharedInstance];
  if ([v4 assistiveTouchInputHoldEnabled])
  {
    [v4 assistiveTouchInputHoldDuration];
    [(SCATController *)self _localizedSummaryForDelay:?];
  }

  else
  {
    AXParameterizedLocalizedString();
  }
  v5 = ;

  return v5;
}

- (id)autoscanDelaySummary:(id)summary
{
  v4 = +[AXSettings sharedInstance];
  [v4 assistiveTouchStepInterval];
  v5 = [(SCATController *)self _localizedSummaryForDelay:?];

  return v5;
}

- (id)inputCoalescingSummary:(id)summary
{
  v4 = +[AXSettings sharedInstance];
  if ([v4 assistiveTouchInputCoalescingEnabled])
  {
    [v4 assistiveTouchInputCoalescingDuration];
    [(SCATController *)self _localizedSummaryForDelay:?];
  }

  else
  {
    AXParameterizedLocalizedString();
  }
  v5 = ;

  return v5;
}

- (id)headMovementSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchHeadMovementSensitivity];
  v4 = SCATLocalizedHeadMovementSummary();

  return v4;
}

- (id)actionRepeatSummary:(id)summary
{
  v4 = +[AXSettings sharedInstance];
  if ([v4 assistiveTouchActionRepeatEnabled])
  {
    [v4 assistiveTouchActionRepeatInterval];
    [(SCATController *)self _localizedSummaryForDelay:?];
  }

  else
  {
    AXParameterizedLocalizedString();
  }
  v5 = ;

  return v5;
}

- (id)longPressSummary:(id)summary
{
  v4 = +[AXSettings sharedInstance];
  if ([v4 assistiveTouchLongPressEnabled])
  {
    [v4 assistiveTouchLongPressDuration];
    [(SCATController *)self _localizedSummaryForDelay:?];
  }

  else
  {
    AXParameterizedLocalizedString();
  }
  v5 = ;

  return v5;
}

- (id)tapBehaviorSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  switchControlTapBehavior = [v3 switchControlTapBehavior];

  if (switchControlTapBehavior <= 2)
  {
    v5 = AXParameterizedLocalizedString();
  }

  return v5;
}

- (id)scanLocationAfterTapSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  switchControlScanAfterTapLocation = [v3 switchControlScanAfterTapLocation];

  if (switchControlScanAfterTapLocation <= 1)
  {
    v5 = AXParameterizedLocalizedString();
  }

  return v5;
}

- (id)delayAfterInputSummary:(id)summary
{
  v4 = +[AXSettings sharedInstance];
  if ([v4 assistiveTouchDelayAfterInputEnabled])
  {
    [v4 assistiveTouchDelayAfterInput];
    [(SCATController *)self _localizedSummaryForDelay:?];
  }

  else
  {
    AXParameterizedLocalizedString();
  }
  v5 = ;

  return v5;
}

- (id)headScanningSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  [v3 switchControlUseCameraForPointMode];
  v4 = AXParameterizedLocalizedString();

  return v4;
}

- (id)scanTimeoutSummary:(id)summary
{
  v4 = +[AXSettings sharedInstance];
  if ([v4 assistiveTouchScanTimeoutEnabled])
  {
    [v4 assistiveTouchScanTimeout];
    [(SCATController *)self _localizedSummaryForDelay:?];
  }

  else
  {
    AXParameterizedLocalizedString();
  }
  v5 = ;

  return v5;
}

- (id)dwellTimeSummary:(id)summary
{
  v4 = +[AXSettings sharedInstance];
  [v4 switchControlDwellTime];
  v5 = [(SCATController *)self _localizedSummaryForDelay:?];

  return v5;
}

- (id)_summaryForListOfItems:(id)items
{
  if ([items count])
  {
    AXFormatInteger();
  }

  else
  {
    AXParameterizedLocalizedString();
  }
  v3 = ;

  return v3;
}

- (id)customGesturesSummary:(id)summary
{
  v4 = +[AXSettings sharedInstance];
  assistiveTouchSavedGestures = [v4 assistiveTouchSavedGestures];
  v6 = [(SCATController *)self _summaryForListOfItems:assistiveTouchSavedGestures];

  return v6;
}

- (id)scanningStyle:(id)style
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 switchControlScanningStyle] > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = AXParameterizedLocalizedString();
  }

  return v4;
}

- (id)firstLaunchScanningMode:(id)mode
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[AXSettings sharedInstance];
  v5 = [v3 switchControlLocStringForFirstLaunchScanningMode:{objc_msgSend(v4, "switchControlFirstLaunchScanningMode")}];

  return v5;
}

- (id)scanByElements:(id)elements
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 assistiveTouchScanningMode] == 0);

  return v4;
}

- (void)setScanByElements:(id)elements specifier:(id)specifier
{
  elementsCopy = elements;
  v6 = +[AXSettings sharedInstance];
  bOOLValue = [elementsCopy BOOLValue];

  [v6 setAssistiveTouchScanningMode:bOOLValue ^ 1];
}

- (id)itemGroupingEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchGroupElementsEnabled]);

  return v4;
}

- (void)setItemGroupingEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchGroupElementsEnabled:bOOLValue];
}

- (id)compactMenuEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchScannerCompactMenuEnabled]);

  return v4;
}

- (void)setCompactMenuEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchScannerCompactMenuEnabled:bOOLValue];
}

- (id)scanCyclesSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchScanCycles];
  v4 = AXFormatInteger();

  return v4;
}

- (id)soundEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchScannerSoundEnabled]);

  return v4;
}

- (void)setSoundEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchScannerSoundEnabled:bOOLValue];
}

- (id)speechEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchScannerSpeechEnabled];
  v4 = AXParameterizedLocalizedString();

  return v4;
}

- (id)recipesSummary:(id)summary
{
  v4 = +[AXSettings sharedInstance];
  switchControlRecipes = [v4 switchControlRecipes];
  v6 = [(SCATController *)self _summaryForListOfItems:switchControlRecipes];

  return v6;
}

- (void)setAlwaysTapKeyboardKeysEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlShouldAlwaysActivateKeyboardKeys:bOOLValue];
}

- (id)alwaysTapKeyboardKeysEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 switchControlShouldAlwaysActivateKeyboardKeys]);

  return v4;
}

- (void)setRestartScanningAtCurrentKey:(id)key specifier:(id)specifier
{
  bOOLValue = [key BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlRestartScanningAtCurrentKey:bOOLValue];
}

- (id)restartScanningAtCurrentKey:(id)key
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 switchControlRestartScanningAtCurrentKey]);

  return v4;
}

- (void)setUseExtendedKeyboardPredictions:(id)predictions specifier:(id)specifier
{
  bOOLValue = [predictions BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlShouldUseExtendedKeyboardPredictions:bOOLValue];
}

- (id)useExtendedKeyboardPredictions:(id)predictions
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 switchControlShouldUseExtendedKeyboardPredictions]);

  return v4;
}

- (id)pointPickerSelectionStyleSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchScannerPointPickerModeEnabled = [v3 assistiveTouchScannerPointPickerModeEnabled];

  if (assistiveTouchScannerPointPickerModeEnabled && (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 switchControlPointPickerSelectionStyle], v5, v6 > 2))
  {
    v7 = 0;
  }

  else
  {
    v7 = AXParameterizedLocalizedString();
  }

  return v7;
}

- (void)setPayWithSwitchControl:(id)control specifier:(id)specifier
{
  if ([control BOOLValue])
  {
    if (!self->_localAuthContext)
    {
      v5 = objc_alloc_init(LAContext);
      localAuthContext = self->_localAuthContext;
      self->_localAuthContext = v5;
    }

    v16 = [[SecureIntentViewController alloc] initWithSource:0 context:self->_localAuthContext delegate:self];
    if ((AXDeviceIsPad() & 1) == 0)
    {
      view = [(SCATController *)self view];
      window = [view window];
      [window setAutorotates:0 forceUpdateInterfaceOrientation:1];
    }

    [(SCATController *)self presentModalViewController:v16 withTransition:3, v16];
  }

  else
  {
    v9 = AXParameterizedLocalizedString();
    v10 = AXParameterizedLocalizedString();
    v11 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];

    v12 = AXParameterizedLocalizedString();
    v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:&__block_literal_global_65];

    v14 = AXParameterizedLocalizedString();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __52__SCATController_setPayWithSwitchControl_specifier___block_invoke_856;
    v18[3] = &unk_2557A8;
    v18[4] = self;
    v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v18];

    [v11 addAction:v13];
    [v11 addAction:v15];
    [v11 setPreferredAction:v13];
    [(SCATController *)self presentViewController:v11 animated:1 completion:0];
  }
}

void __52__SCATController_setPayWithSwitchControl_specifier___block_invoke(id a1, UIAlertAction *a2)
{
  v2 = AXLogSettings();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__HandController_setPayWithAST_specifier___block_invoke_cold_1(v2);
  }

  v3 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
  [v3 removeObjectForKey:1 completionHandler:&__block_literal_global_852];
}

void __52__SCATController_setPayWithSwitchControl_specifier___block_invoke_849(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AXLogSettings();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__HandController_setPayWithAST_specifier___block_invoke_661_cold_1(v2, v3);
    }
  }

  else
  {
    _AXSAccessibilitySetSecureIntentProvider();
  }
}

- (id)payWithSwitchControl:(id)control
{
  v3 = +[AXSettings sharedInstance];
  payWithSwitchControl = [v3 payWithSwitchControl];

  return payWithSwitchControl;
}

- (void)_reloadAfterSecureIntentDismissal
{
  [(SCATController *)self reloadSpecifierID:@"APPLE_PAY_SWITCH" animated:1];
  if ((AXDeviceIsPad() & 1) == 0)
  {
    view = [(SCATController *)self view];
    window = [view window];
    [window setAutorotates:1 forceUpdateInterfaceOrientation:0];
  }
}

- (void)showProfilesController:(id)controller
{
  controllerCopy = controller;
  v6 = [[SCATProfilesController alloc] initWithDelegate:self];
  rootController = [(SCATController *)self rootController];
  [(SCATProfilesController *)v6 setRootController:rootController];

  [(SCATProfilesController *)v6 setParentController:self];
  [(SCATProfilesController *)v6 setSpecifier:controllerCopy];

  [(SCATController *)self showController:v6 animate:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = SCATController;
  v4 = [(SCATController *)&v10 tableView:view cellForRowAtIndexPath:path];
  specifier = [v4 specifier];
  identifier = [specifier identifier];
  v7 = [identifier isEqualToString:@"APPLE_PAY_SWITCH"];

  if (v7)
  {
    titleLabel = [v4 titleLabel];
    [titleLabel setNumberOfLines:0];
  }

  return v4;
}

- (void)cursorColorSelectionController:(id)controller selectedCursorColor:(int64_t)color
{
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchCursorColor:color];
}

- (int64_t)selectedColorForSelectionController:(id)controller
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchCursorColor = [v3 assistiveTouchCursorColor];

  return assistiveTouchCursorColor;
}

@end