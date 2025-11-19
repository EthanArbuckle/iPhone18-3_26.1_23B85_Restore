@interface AXAudioController
- (AXAudioController)init;
- (BOOL)spatialAudioEnabled;
- (id)alwaysShowVolumeControlEnabled:(id)a3;
- (id)audioLeftRightBalance:(id)a3;
- (id)callAudioRouting:(id)a3;
- (id)comfortSoundsEnabled:(id)a3;
- (id)extendedVoiceIsolationEnabled:(id)a3;
- (id)ledFlashEnabled:(id)a3;
- (id)mixToUplink:(id)a3;
- (id)monoAudioEnabled:(id)a3;
- (id)personalAudioEnabled:(id)a3;
- (id)phoneNoiseEnabled:(id)a3;
- (id)specifiers;
- (id)startupSound:(id)a3;
- (void)confirmationViewAcceptedForSpecifier:(id)a3;
- (void)setAlwaysShowVolumeControlEnabled:(id)a3 specifier:(id)a4;
- (void)setAudioLeftRightBalance:(id)a3 specifier:(id)a4;
- (void)setExtendedVoiceIsolationEnabled:(id)a3 specifier:(id)a4;
- (void)setHeadphoneNotificationsEnabled:(id)a3 specifier:(id)a4;
- (void)setMonoAudioEnabled:(id)a3 specifier:(id)a4;
- (void)setPhoneNoiseEnabled:(id)a3 specifier:(id)a4;
- (void)setSpatialAudioEnabled:(BOOL)a3;
- (void)setStartupSound:(id)a3 specifier:(id)a4;
- (void)showAudioAccommodationsLearnMore;
- (void)showComfortSoundsLearnMore;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AXAudioController

- (AXAudioController)init
{
  v21.receiver = self;
  v21.super_class = AXAudioController;
  v2 = [(AccessibilitySettingsBaseController *)&v21 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[PASettings sharedInstance];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __25__AXAudioController_init__block_invoke;
    v18[3] = &unk_255388;
    objc_copyWeak(&v19, &location);
    [v3 registerUpdateBlock:v18 forRetrieveSelector:"personalMediaConfiguration" withListener:v2];

    v4 = +[AXSettings sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __25__AXAudioController_init__block_invoke_3;
    v16[3] = &unk_255388;
    objc_copyWeak(&v17, &location);
    [v4 registerUpdateBlock:v16 forRetrieveSelector:"leftRightBalanceEnabled" withListener:v2];

    objc_destroyWeak(&v17);
    v5 = objc_alloc_init(AXDispatchTimer);
    balanceTimer = v2->_balanceTimer;
    v2->_balanceTimer = v5;

    v7 = objc_alloc_init(ADASManager);
    headphoneLevelManager = v2->_headphoneLevelManager;
    v2->_headphoneLevelManager = v7;

    v9 = +[HUComfortSoundsSettings sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __25__AXAudioController_init__block_invoke_4;
    v14[3] = &unk_255388;
    objc_copyWeak(&v15, &location);
    [v9 registerUpdateBlock:v14 forRetrieveSelector:"comfortSoundsEnabled" withListener:v2];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _accessibilityiTunesSettings_0, kAXSVisualAlertEnabledNotification, 0, 1028);
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v11, v2, _accessibilityiTunesSettings_0, kAXSAllowsMixToUplinkDidChangeNotification, 0, 1028);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, _accessibilityiTunesSettings_0, kAXSDefaultRouteChangedNotification, 0, 1028);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __25__AXAudioController_init__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void __25__AXAudioController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained specifierForID:@"AXPAEnableSpecID"];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 reloadSpecifier:v4];
}

void __25__AXAudioController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained adjustingBalance];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 reloadSpecifierID:@"LeftRightBalance"];
  }
}

void __25__AXAudioController_init__block_invoke_4(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void __25__AXAudioController_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained specifierForID:@"AXCSEnableSpecID"];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 reloadSpecifier:v4];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXAudioController;
  [(AXAudioController *)&v6 viewDidLoad];
  v3 = [(AXAudioController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsLeftRightSliderCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = AXAudioController;
  [(AccessibilitySettingsBaseController *)&v8 viewWillAppear:a3];
  v4 = +[PASettings sharedInstance];
  v5 = [v4 personalMediaConfiguration];
  v6 = v5 != 0;

  v7 = [(AXAudioController *)self specifierForID:@"AXPAEnableSpecID"];
  if ((v6 ^ (v7 == 0)))
  {
    [(AXAudioController *)self reloadSpecifier:v7];
  }

  else
  {
    [(AXAudioController *)self reloadSpecifiers];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXAudioController;
  [(AXAudioController *)&v4 viewDidDisappear:a3];
  v3 = +[HUUtilities sharedUtilities];
  [v3 updateHearingFeatureUsage];
}

- (id)specifiers
{
  v2 = self;
  v3 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_49;
  }

  v131 = OBJC_IVAR___PSListController__specifiers;
  v4 = [objc_allocWithZone(NSMutableArray) init];
  v5 = settingsLocString(@"AUDIO_HEADING", @"Accessibility");
  v6 = [PSSpecifier groupSpecifierWithName:v5];

  v7 = settingsLocString(@"PERSONAL_AUDIO_FOOTER", @"Accessibility");
  v8 = settingsLocString(@"PERSONAL_AUDIO_LEARN_MORE", @"Accessibility");
  v130 = v7;
  v9 = [NSString stringWithFormat:v7, v8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v126 = PSFooterCellClassGroupKey;
  [v6 setProperty:v11 forKey:?];

  v12 = PSFooterHyperlinkViewTitleKey;
  [v6 setProperty:v9 forKey:PSFooterHyperlinkViewTitleKey];
  v128 = v9;
  v129 = v8;
  v144.location = [v9 rangeOfString:v8];
  v13 = NSStringFromRange(v144);
  v122 = PSFooterHyperlinkViewLinkRangeKey;
  [v6 setProperty:v13 forKey:?];

  v14 = [NSValue valueWithNonretainedObject:v2];
  v124 = PSFooterHyperlinkViewTargetKey;
  [v6 setProperty:v14 forKey:?];

  v15 = NSStringFromSelector("showAudioAccommodationsLearnMore");
  v16 = PSFooterHyperlinkViewActionKey;
  [v6 setProperty:v15 forKey:PSFooterHyperlinkViewActionKey];

  [v6 setIdentifier:@"AXPAAudioGroupSpecID"];
  [v4 addObject:v6];
  v17 = [(AccessibilitySettingsBaseController *)v2 detailClassForFeature:2];
  if (v17)
  {
    v18 = v17;
    v19 = settingsLocString(@"PERSONAL_AUDIO", @"Accessibility");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:v2 set:0 get:"personalAudioEnabled:" detail:v18 cell:2 edit:0];

    [v20 setIdentifier:@"AXPAEnableSpecID"];
    [v20 setProperty:@"AXPAEnableSpecID" forKey:PSIDKey];
    v21 = v4;
    [v4 addObject:v20];
    v6 = v20;
  }

  else
  {
    v21 = v4;
  }

  v22 = +[HUComfortSoundsSettings sharedInstance];
  v23 = [v22 comfortSoundsAvailable];

  if (v23)
  {
    v24 = +[PSSpecifier emptyGroupSpecifier];

    v25 = hearingLocString();
    v26 = hearingLocString();
    v27 = [NSString stringWithFormat:@"%@ %@", v25, v26];

    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    [v24 setProperty:v29 forKey:v126];

    [v24 setProperty:v27 forKey:v12];
    v30 = hearingLocString();
    v145.location = [v27 rangeOfString:v30];
    v31 = NSStringFromRange(v145);
    [v24 setProperty:v31 forKey:v122];

    v32 = [NSValue valueWithNonretainedObject:v2];
    [v24 setProperty:v32 forKey:v124];

    v33 = NSStringFromSelector("showComfortSoundsLearnMore");
    [v24 setProperty:v33 forKey:v16];

    [v21 addObject:v24];
    v34 = [(AccessibilitySettingsBaseController *)v2 detailClassForFeature:3];
    if (v34)
    {
      v35 = v34;
      v36 = PSListController_ptr;
      v37 = hearingLocString();
      v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:v2 set:0 get:"comfortSoundsEnabled:" detail:v35 cell:2 edit:0];

      [v38 setIdentifier:@"AXCSEnableSpecID"];
      [v38 setProperty:@"AXCSEnableSpecID" forKey:PSIDKey];
      [v21 addObject:v38];
      v24 = v38;
    }

    else
    {
      v36 = PSListController_ptr;
    }

    v6 = v24;
  }

  else
  {
    v36 = PSListController_ptr;
  }

  if (_os_feature_enabled_impl())
  {
    v39 = [(AccessibilitySettingsBaseController *)v2 detailClassForFeature:4];
    if (v39)
    {
      v40 = v39;
      v41 = [v36[5] emptyGroupSpecifier];

      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      [v41 setProperty:v43 forKey:v126];

      v44 = [&__NSArray0__struct mutableCopy];
      v45 = AXTeachableFeatureLiveListen;
      v46 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureLiveListen];
      if ([v46 count])
      {
        v121 = v41;
        v123 = v40;
        v125 = v21;
        v127 = v2;
        v141[0] = @"moreLabel";
        v47 = settingsLocString(@"LIVE_LISTEN_WHATS_NEW_LINK", @"Accessibility");
        v142[0] = v47;
        v141[1] = @"additionalTitleLabel";
        v48 = settingsLocString(@"LIVE_LISTEN_TITLE", @"Accessibility");
        v142[1] = v48;
        v142[2] = &__kCFBooleanTrue;
        v141[2] = @"alreadyLocalized";
        v141[3] = @"symbolName";
        v142[3] = @"microphone.fill";
        v49 = [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:4];
        v120 = [v49 mutableCopy];

        v50 = objc_opt_new();
        v139[0] = @"sectionLabel";
        v51 = [AXTeachableMomentsManager notificationTitleForFeature:v45];
        v139[1] = @"alreadyLocalized";
        v140[0] = v51;
        v140[1] = &__kCFBooleanTrue;
        v52 = [NSDictionary dictionaryWithObjects:v140 forKeys:v139 count:2];
        [v50 addObject:v52];

        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v53 = v46;
        v54 = [v53 countByEnumeratingWithState:&v132 objects:v138 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v133;
          do
          {
            for (i = 0; i != v55; i = i + 1)
            {
              if (*v133 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v132 + 1) + 8 * i);
              v136[0] = @"headerLabel";
              v59 = [v58 itemTitle];
              v137[0] = v59;
              v136[1] = @"contentLabel";
              v60 = [v58 itemDescription];
              v136[2] = @"alreadyLocalized";
              v137[1] = v60;
              v137[2] = &__kCFBooleanTrue;
              v61 = [NSDictionary dictionaryWithObjects:v137 forKeys:v136 count:3];
              [v50 addObject:v61];
            }

            v55 = [v53 countByEnumeratingWithState:&v132 objects:v138 count:16];
          }

          while (v55);
        }

        [v120 setObject:v50 forKey:@"additionalContent"];
        [v44 addObject:v120];

        v21 = v125;
        v2 = v127;
        v41 = v121;
        v40 = v123;
      }

      [v41 setProperty:v44 forKey:@"content"];
      [v21 addObject:v41];
      v36 = PSListController_ptr;
      v62 = hearingLocString();
      v6 = [PSSpecifier preferenceSpecifierNamed:v62 target:v2 set:0 get:0 detail:v40 cell:2 edit:0];

      [v6 setIdentifier:@"AXLLEnableSpecID"];
      [v6 setProperty:@"AXLLEnableSpecID" forKey:PSIDKey];
      [v21 addObject:v6];
    }
  }

  v63 = [v36[5] emptyGroupSpecifier];

  v64 = settingsLocString(@"MONO_AUDIO_FOOTER", @"Accessibility");
  v65 = PSFooterTextGroupKey;
  [v63 setProperty:v64 forKey:PSFooterTextGroupKey];

  [v21 addObject:v63];
  v66 = v36[5];
  v67 = settingsLocString(@"MONO_AUDIO", @"Accessibility");
  v68 = [v66 preferenceSpecifierNamed:v67 target:v2 set:"setMonoAudioEnabled:specifier:" get:"monoAudioEnabled:" detail:0 cell:6 edit:0];

  [v68 setIdentifier:@"AXPAMonoSpecID"];
  [v21 addObject:v68];
  v69 = [v36[5] emptyGroupSpecifier];

  v70 = settingsLocString(@"ALWAYS_SHOW_VOLUME_CONTROL_FOOTER", @"Accessibility");
  [v69 setProperty:v70 forKey:v65];

  [v21 addObject:v69];
  v71 = v36[5];
  v72 = settingsLocString(@"ALWAYS_SHOW_VOLUME_CONTROL", @"Accessibility");
  v73 = [v71 preferenceSpecifierNamed:v72 target:v2 set:"setAlwaysShowVolumeControlEnabled:specifier:" get:"alwaysShowVolumeControlEnabled:" detail:0 cell:6 edit:0];

  [v73 setIdentifier:@"AXPAAlwaysShowVolumeControlSpecID"];
  [v21 addObject:v73];
  if (AXHasCapability())
  {
    v74 = [v36[5] emptyGroupSpecifier];

    v75 = settingsLocString(@"EXTENDED_VOICE_ISOLATON_DETAILS", @"Accessibility");
    [v74 setProperty:v75 forKey:v65];

    [v21 addObject:v74];
    v76 = v36[5];
    v77 = settingsLocString(@"EXTENDED_VOICE_ISOLATON_TITLE", @"Accessibility");
    v73 = [v76 preferenceSpecifierNamed:v77 target:v2 set:"setExtendedVoiceIsolationEnabled:specifier:" get:"extendedVoiceIsolationEnabled:" detail:0 cell:6 edit:0];

    [v73 setIdentifier:@"ExtendedVoiceIsolationSpecID"];
    [v21 addObject:v73];
  }

  v78 = v131;
  v79 = +[AVAudioSession sharedInstance];
  v80 = [v79 isEarpieceActiveNoiseCancelationEnabled];

  if (v80)
  {
    v81 = [v36[5] emptyGroupSpecifier];

    v82 = settingsLocString(@"EARPIECE_NOISE_CANCELLATION_FOOTER", @"Accessibility");
    [v81 setProperty:v82 forKey:v65];

    [v21 addObject:v81];
    v83 = v36[5];
    v84 = settingsLocString(@"EARPIECE_NOISE_TITLE", @"Accessibility");
    v73 = [v83 preferenceSpecifierNamed:v84 target:v2 set:"setPhoneNoiseEnabled:specifier:" get:"phoneNoiseEnabled:" detail:0 cell:6 edit:0];

    [v73 setIdentifier:@"AXPANoiseSpecID"];
    [v73 setProperty:&off_27CB18 forKey:PSRequiredCapabilitiesKey];
    [v73 setProperty:&__kCFBooleanTrue forKey:PSSpecifierIsSearchableKey];
    [v21 addObject:v73];
  }

  if (AXHasCapability())
  {
    v85 = [v36[5] emptyGroupSpecifier];

    v86 = settingsLocString(@"STARTUP_SOUND_FOOTER", @"Accessibility-D73");
    [v85 setProperty:v86 forKey:v65];

    [v21 addObject:v85];
    v87 = v36[5];
    v88 = settingsLocString(@"STARTUP_SOUND", @"Accessibility-D73");
    v73 = [v87 preferenceSpecifierNamed:v88 target:v2 set:"setStartupSound:specifier:" get:"startupSound:" detail:0 cell:6 edit:0];

    [v73 setProperty:@"StartupSound" forKey:PSIDKey];
    [v21 addObject:v73];
  }

  if (AXHasCapability())
  {
    v89 = [(ADASManager *)v2->_headphoneLevelManager getPreferenceFor:ADAFPreferenceKeyHAENotificationIsMandatory];
    if (v89 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v90 = [v89 BOOLValue];
    }

    else
    {
      v90 = 0;
    }

    v91 = [(ADASManager *)v2->_headphoneLevelManager getPreferenceFor:ADAFPreferenceKeyHAEEnableHKWrite];
    if (v91 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ((([v91 BOOLValue] | v90) & 1) == 0)
      {
LABEL_37:
        v78 = v131;
        v36 = PSListController_ptr;
LABEL_43:

        goto LABEL_44;
      }
    }

    else if (!v90)
    {
      goto LABEL_37;
    }

    if (AXDeviceIsPod())
    {
      v92 = @"HEADPHONE_NOTIFICATIONS_FOOTER_iPOD";
    }

    else
    {
      v92 = @"HEADPHONE_NOTIFICATIONS_FOOTER_iPHONE";
    }

    v93 = +[PSSpecifier emptyGroupSpecifier];

    v94 = settingsLocString(v92, @"Accessibility");
    [v93 setProperty:v94 forKey:v65];

    v95 = PSIDKey;
    [v93 setProperty:@"AXHeadphoneNotificationsGroupSpecID" forKey:PSIDKey];
    [v21 addObject:v93];
    v96 = settingsLocString(@"HEADPHONE_NOTIFICATIONS_TITLE", @"Accessibility");
    v36 = PSListController_ptr;
    v73 = [PSSpecifier preferenceSpecifierNamed:v96 target:v2 set:"setHeadphoneNotificationsEnabled:specifier:" get:"headphoneNotificationsEnabled:" detail:0 cell:6 edit:0];

    [v73 setProperty:@"AXHeadphoneNotificationsSpecID" forKey:v95];
    [v21 addObject:v73];
    v78 = v131;
    goto LABEL_43;
  }

LABEL_44:
  v97 = v36[5];
  v98 = settingsLocString(@"BALANCE", @"Accessibility");
  v99 = [v97 groupSpecifierWithName:v98];

  v100 = settingsLocString(@"LEFT_RIGHT_BALANCE_DETAILS", @"Accessibility");
  [v99 setProperty:v100 forKey:v65];

  [v99 setIdentifier:@"AXPABalanceSpecID"];
  [v21 addObject:v99];
  v101 = [v36[5] preferenceSpecifierNamed:0 target:v2 set:"setAudioLeftRightBalance:specifier:" get:"audioLeftRightBalance:" detail:0 cell:5 edit:0];

  [v101 setProperty:&__kCFBooleanTrue forKey:PSSliderIsContinuous];
  v102 = PSIDKey;
  [v101 setProperty:@"LeftRightBalance" forKey:PSIDKey];
  [v101 setProperty:kAXSLeftRightBalancePreference forKey:PSKeyNameKey];
  [v101 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v103 = settingsLocString(@"LEFT_RIGHT_BALANCE_SPOKEN", @"Accessibility");
  [v101 setProperty:v103 forKey:@"accessibilityLabel"];

  [v21 addObject:v101];
  if (AXHasCapability())
  {
    v104 = [v36[5] emptyGroupSpecifier];

    v105 = settingsLocString(@"MIX_TO_UPLINK_FOOTER", @"Accessibility");
    [v104 setProperty:v105 forKey:v65];

    [v21 addObject:v104];
    v106 = v36[5];
    v107 = settingsLocString(@"MIX_TO_UPLINK_TITLE", @"Accessibility");
    v101 = [v106 preferenceSpecifierNamed:v107 target:v2 set:0 get:"mixToUplink:" detail:objc_opt_class() cell:2 edit:0];

    [v101 setProperty:@"MIX_TO_UPLINK" forKey:v102];
    [v21 addObject:v101];
  }

  v108 = [v36[5] emptyGroupSpecifier];

  [v21 addObject:v108];
  v109 = v36[5];
  v110 = settingsLocString(@"CALL_AUDIO_ROUTING_TITLE", @"Accessibility");
  v111 = [v109 preferenceSpecifierNamed:v110 target:v2 set:0 get:"callAudioRouting:" detail:objc_opt_class() cell:2 edit:0];

  [v111 setProperty:@"CALL_AUDIO_ROUTING" forKey:v102];
  [v111 setProperty:&__kCFBooleanFalse forKey:AXInBuddySetupKey];
  [v21 addObject:v111];
  if (AXHasCapability())
  {
    v112 = v36[5];
    v113 = settingsLocString(@"VISUAL_HEADING", @"Accessibility");
    v114 = [v112 groupSpecifierWithName:v113];

    [v114 setProperty:@"VISUAL_HEADING" forKey:v102];
    [v21 addObject:v114];
    v115 = v36[5];
    v116 = settingsLocString(@"FLASH_LED", @"Accessibility");
    v111 = [v115 preferenceSpecifierNamed:v116 target:v2 set:0 get:"ledFlashEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v111 setProperty:@"LED_FLASH" forKey:v102];
    [v21 addObject:v111];
  }

  [(AXAudioController *)v2 setupLongTitleSpecifiers:v21];
  v117 = [v21 copy];
  v118 = *&v2->super.AXUISettingsListController_opaque[v78];
  *&v2->super.AXUISettingsListController_opaque[v78] = v117;

  v3 = *&v2->super.AXUISettingsListController_opaque[v78];
LABEL_49:

  return v3;
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
    v4 = settingsLocString(off_256798[v3], @"CallAudioRoutingSettings");
  }

  return v4;
}

- (id)mixToUplink:(id)a3
{
  if (_AXSAllowsMixToUplink())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (void)setStartupSound:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setStartupSoundEnabled:v4];
}

- (id)startupSound:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 startupSoundEnabled]);

  return v4;
}

- (id)personalAudioEnabled:(id)a3
{
  v3 = +[PASettings sharedInstance];
  if ([v3 personalMediaEnabled])
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

- (id)comfortSoundsEnabled:(id)a3
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  if ([v3 comfortSoundsEnabled])
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

- (void)showComfortSoundsLearnMore
{
  v2 = UIApp;
  v3 = [NSURL URLWithString:@"https://support.apple.com/en-us/109346"];
  [v2 openURL:v3 withCompletionHandler:0];
}

- (id)ledFlashEnabled:(id)a3
{
  if (_AXSVisualAlertEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)audioLeftRightBalance:(id)a3
{
  _AXSLeftRightAudioBalance();
  AXSLinearValueForLogarithmicValue();

  return [NSNumber numberWithFloat:?];
}

- (void)setAudioLeftRightBalance:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXAudioController *)self cellForSpecifier:v7];
  v9 = [v8 control];
  self->_adjustingBalance = 1;
  [(AXDispatchTimer *)self->_balanceTimer cancel];
  objc_initWeak(&location, self);
  balanceTimer = self->_balanceTimer;
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = __56__AXAudioController_setAudioLeftRightBalance_specifier___block_invoke;
  v23 = &unk_255388;
  objc_copyWeak(&v24, &location);
  [(AXDispatchTimer *)balanceTimer afterDelay:&v20 processBlock:0.5];
  [v6 floatValue];
  AXSLogarithmicValueForLinearValue();
  v12 = v11;
  [v6 floatValue];
  if (v13 >= 0.5)
  {
    v14 = v13 + -0.5 + v13 + -0.5;
  }

  else
  {
    v14 = (0.5 - v13) * -2.0;
  }

  [v8 setDisplayValue:v14];
  if (fabs(v12) < 0.1)
  {
    hapticGenerator = self->_hapticGenerator;
    if (!hapticGenerator)
    {
      v16 = [[UIImpactFeedbackGenerator alloc] initWithStyle:1];
      v17 = self->_hapticGenerator;
      self->_hapticGenerator = v16;

      hapticGenerator = self->_hapticGenerator;
    }

    [(UIImpactFeedbackGenerator *)hapticGenerator impactOccurred];
  }

  v18 = +[AXSettings sharedInstance];
  [v18 setLeftRightBalanceEnabled:v12 != 0.0];

  v19 = +[AXSettings sharedInstance];
  [v19 setLeftRightBalanceValue:v12];

  _AXSSetLeftRightAudioBalance();
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __56__AXAudioController_setAudioLeftRightBalance_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAdjustingBalance:0];
}

- (void)setPhoneNoiseEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  [v5 BOOLValue];
  _AXSEarpieceNoiseCancellationSetEnabled();
  v6 = [v5 BOOLValue];

  if (v6)
  {
    if (AXHACHearingAidComplianceEnabled())
    {
      [(AccessibilitySettingsBaseController *)self handleHACorNoiseCancellationToggle];
    }

    AXHACHearingAidComplianceSetEnabled();
  }

  v7 = [(AXAudioController *)self specifierForKey:@"HearingAidCompliance"];
  [(AXAudioController *)self reloadSpecifier:v7 animated:1];
}

- (id)phoneNoiseEnabled:(id)a3
{
  v3 = _AXSEarpieceNoiseCancellationEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setHeadphoneNotificationsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(ADASManager *)self->_headphoneLevelManager getPreferenceFor:ADAFPreferenceKeyHAENotificationIsMandatory];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  if ([v5 BOOLValue])
  {
    headphoneLevelManager = self->_headphoneLevelManager;
    v9 = ADAFPreferenceKeyHAENotificationFeatureEnabled;
    v10 = &__kCFBooleanTrue;
LABEL_10:
    v18 = [(ADASManager *)headphoneLevelManager setPreferenceFor:v9 value:v10];
    goto LABEL_11;
  }

  if (!v7)
  {
    headphoneLevelManager = self->_headphoneLevelManager;
    v9 = ADAFPreferenceKeyHAENotificationFeatureEnabled;
    v10 = &__kCFBooleanFalse;
    goto LABEL_10;
  }

  v11 = settingsLocString(@"HEADPHONE_NOTIFICATIONS_ALERT_TITLE", @"Accessibility");
  v12 = settingsLocString(@"HEADPHONE_NOTIFICATIONS_ALERT_MESSAGE", @"Accessibility");
  v13 = [UIAlertController alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  v14 = settingsLocString(@"HEADPHONE_NOTIFICATIONS_ALERT_OPTION_ON", @"Accessibility");
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __64__AXAudioController_setHeadphoneNotificationsEnabled_specifier___block_invoke;
  v20[3] = &unk_2557A8;
  v20[4] = self;
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v20];
  [v13 addAction:v15];

  v16 = settingsLocString(@"HEADPHONE_NOTIFICATIONS_ALERT_OPTION_OFF", @"Accessibility");
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __64__AXAudioController_setHeadphoneNotificationsEnabled_specifier___block_invoke_2;
  v19[3] = &unk_2557A8;
  v19[4] = self;
  v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:v19];
  [v13 addAction:v17];

  [(AXAudioController *)self presentViewController:v13 animated:1 completion:0];
LABEL_11:
}

- (void)confirmationViewAcceptedForSpecifier:(id)a3
{
  _AXSMonoAudioSetEnabled();

  [(AXAudioController *)self setSpatialAudioEnabled:0];
}

- (void)setMonoAudioEnabled:(id)a3 specifier:(id)a4
{
  v10 = a3;
  if ([v10 BOOLValue] && -[AXAudioController spatialAudioEnabled](self, "spatialAudioEnabled"))
  {
    v5 = objc_alloc_init(PSConfirmationSpecifier);
    v6 = settingsLocString(@"TURN_ON", @"Accessibility");
    [v5 setTitle:v6];

    v7 = settingsLocString(@"MONO_SPATIAL_ALERT_PROMPT", @"Accessibility");
    [v5 setPrompt:v7];

    v8 = settingsLocString(@"OK", @"Accessibility");
    [v5 setOkButton:v8];

    v9 = settingsLocString(@"CANCEL", @"Accessibility");
    [v5 setCancelButton:v9];

    [(AXAudioController *)self showConfirmationViewForSpecifier:v5];
  }

  else
  {
    [v10 BOOLValue];
    _AXSMonoAudioSetEnabled();
  }
}

- (id)monoAudioEnabled:(id)a3
{
  v3 = _AXSMonoAudioEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setAlwaysShowVolumeControlEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSAlwaysShowVolumeControlSetEnabled(v4);
}

- (id)alwaysShowVolumeControlEnabled:(id)a3
{
  v3 = _AXSAlwaysShowVolumeControlEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (id)extendedVoiceIsolationEnabled:(id)a3
{
  v3 = _AXSExtendedVoiceIsolationMediaModesEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setExtendedVoiceIsolationEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  [v4 BOOLValue];
  _AXSSetExtendedVoiceIsolationMediaModesEnabled();
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    v12 = 0;
    v13 = 0;
    v6 = [AVAudioApplication getEnhanceDialogueLevel:&v13 error:&v12];
    v7 = v12;
    if (v6)
    {
      if (v13 != 3)
      {
LABEL_12:

        return;
      }

      v11 = v7;
      v8 = [AVAudioApplication setEnhanceDialogueLevel:2 error:&v11];
      v9 = v11;

      if (v8)
      {
        v7 = v9;
        goto LABEL_12;
      }

      v10 = AXLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AXAudioController setExtendedVoiceIsolationEnabled:v9 specifier:v10];
      }

      v7 = v9;
    }

    else
    {
      v10 = AXLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AXAudioController setExtendedVoiceIsolationEnabled:v7 specifier:v10];
      }
    }

    goto LABEL_12;
  }
}

- (BOOL)spatialAudioEnabled
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  if (CFPreferencesGetAppBooleanValue(@"spatial-audio-accessory-feature", @"com.apple.springboard", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (void)setSpatialAudioEnabled:(BOOL)a3
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"spatial-audio-accessory-feature", *v3, @"com.apple.springboard");

  CFPreferencesAppSynchronize(@"com.apple.springboard");
}

- (void)showAudioAccommodationsLearnMore
{
  v2 = UIApp;
  v3 = [NSURL URLWithString:@"https://support.apple.com/ht211218?cid=mc-ols-audio-article_ht211218-ios_ui-06042020"];
  [v2 openURL:v3 withCompletionHandler:0];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v14 specifier];
    v6 = [v5 propertyForKey:PSKeyNameKey];
    v7 = [v6 isEqualToString:kAXSLeftRightBalancePreference];

    if (v7)
    {
      v8 = v14;
      v9 = [v8 control];
      v10 = [UIColor colorWithRed:0.654901961 green:0.654901961 blue:0.654901961 alpha:1.0];
      [v9 setMinimumTrackTintColor:v10];

      v11 = +[AXSettings sharedInstance];
      [v11 leftRightBalanceValue];
      AXSLinearValueForLogarithmicValue();
      if (v12 >= 0.5)
      {
        v13 = v12 + -0.5 + v12 + -0.5;
      }

      else
      {
        v13 = (0.5 - v12) * -2.0;
      }

      [v8 setDisplayValue:v13];
    }
  }
}

- (void)setExtendedVoiceIsolationEnabled:(uint64_t)a1 specifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "getEnhanceDialogueLevel SPI call failed: %@", &v2, 0xCu);
}

- (void)setExtendedVoiceIsolationEnabled:(uint64_t)a1 specifier:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "setEnhanceDialogueLevel: SPI call failed: %@", &v2, 0xCu);
}

@end