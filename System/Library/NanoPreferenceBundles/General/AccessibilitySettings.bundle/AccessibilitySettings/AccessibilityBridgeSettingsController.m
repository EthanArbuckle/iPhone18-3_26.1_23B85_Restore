@interface AccessibilityBridgeSettingsController
- (AccessibilityBridgeSettingsController)init;
- (BOOL)_activeDeviceSupportsWorkoutBuddy;
- (BOOL)_deviceSupportsSideButtonClickSpeed;
- (BOOL)_gizmoSupportsAXAirPodSettings;
- (BOOL)_siriIsEnabled;
- (BOOL)_supportsLiveSpeech;
- (BOOL)_supportsWatchControl;
- (BOOL)_tapticChimesIsSupported;
- (BOOL)_tapticTimeSpeedAdjustmentSupported;
- (BOOL)_typeToSiriIsSupported;
- (BOOL)_walkieTalkieIsSupported;
- (double)_axConvertAudioBalanceValueToDisplay:(double)a3;
- (id)_localizedAudioTranscriptionsFooterText;
- (id)_watchControlDescription;
- (id)_watchQuickActionsV2Description;
- (id)accessibilityPreferenceForSpecifier:(id)a3;
- (id)accessibilityShortcut:(id)a3;
- (id)audioTranscriptionsEnabled:(id)a3;
- (id)autoAnswerCallDescription:(id)a3;
- (id)boldTextEnabled:(id)a3;
- (id)contentSizeCategories;
- (id)globalColorFilterEnabled;
- (id)hearingDevicesComplicationPreferredDisplayMode:(id)a3;
- (id)increaseContrastEnabled:(id)a3;
- (id)isIncreaseBrightnessFloorEnabled:(id)a3;
- (id)liveSpeechEnabled:(id)a3;
- (id)monoAudioEnabled:(id)a3;
- (id)reduceMotionEnabled:(id)a3;
- (id)reduceTransparencyEnabled:(id)a3;
- (id)rttEnabled:(id)a3;
- (id)sideButtonStatus:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tapticTimeSpeed:(id)a3;
- (id)textSize:(id)a3;
- (id)touchAccommodationsEnabled:(id)a3;
- (id)voiceOverTouchEnabled:(id)a3;
- (id)wristFlickSpeed;
- (id)zoomEnabled:(id)a3;
- (void)_handleWorkoutVoiceFeatureAvailabilityChanged;
- (void)_previewHapticSpeed;
- (void)accessibilitySetPreference:(id)a3 specifier:(id)a4;
- (void)dealloc;
- (void)setAudioTranscriptionsEnabled:(id)a3 specifier:(id)a4;
- (void)setHeadphoneNotificationsEnabled:(id)a3 specifier:(id)a4;
- (void)setTapticTimeSpeed:(id)a3 specifier:(id)a4;
- (void)setTextSize:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation AccessibilityBridgeSettingsController

- (AccessibilityBridgeSettingsController)init
{
  v18.receiver = self;
  v18.super_class = AccessibilityBridgeSettingsController;
  v2 = [(AccessibilityBridgeBaseController *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(AccessibilityBridgeSettingsController *)v2 view];
    [v4 setAutoresizesSubviews:1];

    v5 = [(AccessibilityBridgeSettingsController *)v3 view];
    [v5 setAutoresizingMask:18];

    v6 = objc_alloc_init(MEMORY[0x277CEFB38]);
    headphoneLevelManager = v3->_headphoneLevelManager;
    v3->_headphoneLevelManager = v6;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, headphoneLevelSettingChanged, *MEMORY[0x277CEFA68], 0, 1028);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v3, headphoneLevelSettingChanged, *MEMORY[0x277CEFA80], 0, 1028);
    v10 = objc_alloc_init(WorkoutVoiceAvailabilityProviderBridge);
    workoutVoiceAvailabilityProvider = v3->_workoutVoiceAvailabilityProvider;
    v3->_workoutVoiceAvailabilityProvider = v10;

    objc_initWeak(&location, v3);
    v12 = v3->_workoutVoiceAvailabilityProvider;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__AccessibilityBridgeSettingsController_init__block_invoke;
    v15[3] = &unk_278B90918;
    objc_copyWeak(&v16, &location);
    [(WorkoutVoiceAvailabilityProviderBridge *)v12 refreshIsFeatureSupportedWithCompletionHandler:v15];
    v13 = v3;
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __45__AccessibilityBridgeSettingsController_init__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__AccessibilityBridgeSettingsController_init__block_invoke_2;
  v2[3] = &unk_278B908F0;
  v4 = a2;
  objc_copyWeak(&v3, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
}

void __45__AccessibilityBridgeSettingsController_init__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_23BCCF000, v2, OS_LOG_TYPE_DEFAULT, "[WorkoutVoice] isFeatureSupported=%@", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setWorkoutVoiceIsSupported:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _handleWorkoutVoiceFeatureAvailabilityChanged];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = AccessibilityBridgeSettingsController;
  [(AccessibilityBridgeBaseController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AccessibilityBridgeSettingsController;
  [(AccessibilityBridgeBaseController *)&v3 viewDidLoad];
  [(AccessibilityBridgeSettingsController *)self beginUpdates];
  [(AccessibilityBridgeSettingsController *)self reload];
  [(AccessibilityBridgeSettingsController *)self endUpdates];
}

- (id)specifiers
{
  v133 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v111 = *MEMORY[0x277D3FC48];
    v123 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    v4 = [(AccessibilityBridgeSettingsController *)self loadSpecifiersFromPlistName:@"AccessibilitySettings" target:self];
    v5 = [v4 specifierForID:@"TEXT_SIZE_SLIDER_ID"];
    v6 = MEMORY[0x277CCABB0];
    v7 = [(AccessibilityBridgeSettingsController *)self contentSizeCategories];
    v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count") - 1}];
    [v5 setProperty:v8 forKey:*MEMORY[0x277D3FEB8]];

    v9 = BPSAccessoryHighlightColor();
    v10 = BPSTintedSymbol();
    v122 = *MEMORY[0x277D400D0];
    [v5 setProperty:v10 forKey:?];

    v11 = BPSAccessoryHighlightColor();
    v12 = BPSTintedSymbol();
    v121 = *MEMORY[0x277D400E0];
    [v5 setProperty:v12 forKey:?];

    LODWORD(v13) = *MEMORY[0x277D76F38];
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    v110 = v5;
    [v5 setProperty:v14 forKey:*MEMORY[0x277D40140]];

    v15 = [(AccessibilityBridgeSettingsController *)self _supportsAudioTranscriptions];
    v16 = MEMORY[0x277D3FF88];
    if (v15)
    {
      v17 = [v4 specifierForID:@"HearingDevicesComplicationGroupID"];
      if (v17)
      {
        v18 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        [v18 setIdentifier:@"AudioTranscriptionsGroup"];
        v19 = [(AccessibilityBridgeSettingsController *)self _localizedAudioTranscriptionsFooterText];
        [v18 setProperty:v19 forKey:*v16];

        [v4 ps_addGroup:v18 afterGroup:v17];
        v20 = MEMORY[0x277D3FAD8];
        v21 = settingsLocString(@"AUDIO_TRANSCRIPTIONS_TITLE", @"AccessibilitySettings-dinnerbell");
        v22 = [v20 preferenceSpecifierNamed:v21 target:self set:sel_setAudioTranscriptionsEnabled_specifier_ get:sel_audioTranscriptionsEnabled_ detail:0 cell:6 edit:0];

        [v22 setIdentifier:@"AudioTranscriptionsSpec"];
        [v4 ps_addSpecifier:v22 toGroup:v18];
      }
    }

    if ([(AccessibilityBridgeSettingsController *)self _supportsAutoAnswerCalls])
    {
      v23 = [v4 specifierForID:@"MotorGroupCell"];
      if (v23)
      {
        v24 = MEMORY[0x277D3FAD8];
        v25 = settingsLocString(@"AutoAnswerCalls", @"AccessibilitySettings");
        v26 = [v24 preferenceSpecifierNamed:v25 target:self set:0 get:sel_autoAnswerCallDescription_ detail:objc_opt_class() cell:2 edit:0];

        [v26 setIdentifier:@"AUTO_ANSWER_CALLS_ID"];
        [v4 ps_addSpecifier:v26 toGroup:v23];
      }
    }

    if ([(AccessibilityBridgeSettingsController *)self _supportsWatchControl])
    {
      v27 = [v4 specifierForID:@"MotorGroupCell"];
      if (v27)
      {
        v28 = [v4 indexOfObject:v27];
        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = v28;
          v30 = MEMORY[0x277D3FAD8];
          v31 = settingsLocString(@"WATCH_CONTROL_ROW_TITLE", @"AccessibilitySettings-watchcontrol");
          v32 = [v30 preferenceSpecifierNamed:v31 target:self set:0 get:sel__watchControlDescription detail:objc_opt_class() cell:2 edit:0];

          [v32 setIdentifier:@"WATCH_CONTROL_ROW_ID"];
          [v4 insertObject:v32 atIndex:v29 + 1];
        }
      }
    }

    v33 = AXActivePairedDeviceSupportsWatchQuickActionsV2();
    v34 = MEMORY[0x277D3FFB8];
    if (v33 && AXActivePairedDeviceSupportsQuickActionsAlwaysOnState())
    {
      v35 = [v4 specifierForID:@"MotorGroupCell"];
      if (v35)
      {
        v36 = [v4 indexOfObject:v35];
        if (v36 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v37 = v36;
          v38 = MEMORY[0x277D3FAD8];
          v39 = settingsLocString(@"QUICK_ACTIONS_ROW_TITLE", @"AccessibilitySettings-quickactions");
          v40 = [v38 preferenceSpecifierNamed:v39 target:self set:0 get:sel__watchQuickActionsV2Description detail:objc_opt_class() cell:2 edit:0];

          [v40 setProperty:@"QUICK_ACTIONS" forKey:*v34];
          [v4 insertObject:v40 atIndex:v37 + 1];
        }
      }
    }

    if ([(AccessibilityBridgeSettingsController *)self _gizmoSupportsAXAirPodSettings])
    {
      v41 = [MEMORY[0x277CE7CF8] sharedInstance];
      v42 = [v41 pairedAirPods];

      if ([v42 count])
      {
        v43 = [v4 specifierForID:@"AppSwitcherAutoSelectGroup"];
        if (v43)
        {
          v44 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"AirPodsGroup"];
          [v4 ps_addGroup:v44 afterGroup:v43];
          v45 = [v42 count];
          v46 = off_278B8FEC8;
          if (v45 <= 1)
          {
            v46 = off_278B8FED0;
          }

          v47 = *v46;
          v48 = objc_opt_class();
          v49 = MEMORY[0x277D3FAD8];
          v50 = [MEMORY[0x277CE7CF8] sharedInstance];
          [v50 titleForSettings];
          v52 = v51 = v16;
          v53 = [v49 preferenceSpecifierNamed:v52 target:self set:0 get:0 detail:v48 cell:2 edit:0];

          v16 = v51;
          v34 = MEMORY[0x277D3FFB8];

          [v53 setProperty:v42 forKey:@"AirPods"];
          [v4 ps_addSpecifier:v53 toGroup:v44];
        }
      }
    }

    if (_os_feature_enabled_impl() && [(AccessibilityBridgeSettingsController *)self _supportsLiveSpeech])
    {
      v54 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v55 = MEMORY[0x277D3FAD8];
      v56 = settingsLocString(@"LIVE_SPEECH_TITLE", @"AccessibilitySettings");
      v57 = [v55 preferenceSpecifierNamed:v56 target:self set:0 get:sel_liveSpeechEnabled_ detail:objc_opt_class() cell:2 edit:0];

      [v57 setProperty:@"LIVE_SPEECH_TITLE" forKey:*v34];
      v58 = [(AccessibilityBridgeBaseController *)self imageForKey:@"Speech"];
      [v57 setProperty:v58 forKey:*MEMORY[0x277D3FFC0]];

      [v57 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE0]];
      [v57 setProperty:@"com.apple.Accessibility" forKey:*MEMORY[0x277D3FEF8]];
      v59 = [v4 specifierForID:@"TapticTimeSpeedAdjustmentSlider"];
      if (!v59 || (v60 = [v4 indexOfObject:v59], v60 == 0x7FFFFFFFFFFFFFFFLL) || (v61 = v60, v60 >= objc_msgSend(v4, "count") - 1))
      {
        [v4 addObject:v54];
        [v4 addObject:v57];
      }

      else
      {
        [v4 insertObject:v54 atIndex:v61 + 1];
        [v4 insertObject:v57 atIndex:v61 + 2];
      }
    }

    if (_os_feature_enabled_impl())
    {
      v62 = [v4 indexOfSpecifierWithID:@"GrayscaleDisplay"];
      if (v62 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v4 removeObjectAtIndex:v62];
      }

      v63 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"COLOR_FILTERS_GROUP"];
      v64 = settingsLocString(@"COLOR_FILTERS_SECTION_FOOTER", @"AccessibilitySettings");
      [v63 setProperty:v64 forKey:*v16];

      v65 = [v4 specifierForID:@"INCREASE_CONTRAST_GROUP"];
      [v4 ps_addGroup:v63 afterGroup:v65];

      v66 = MEMORY[0x277D3FAD8];
      v67 = settingsLocString(@"COLOR_FILTERS_ROW_TITLE", @"AccessibilitySettings");
      v68 = [v66 preferenceSpecifierNamed:v67 target:self set:0 get:sel_globalColorFilterEnabled detail:objc_opt_class() cell:2 edit:0];

      [v68 setProperty:@"COLOR_FILTERS_ROW_TITLE" forKey:*v34];
      [v68 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE0]];
      [v68 setProperty:@"com.apple.Accessibility" forKey:*MEMORY[0x277D3FEF8]];
      [v4 ps_addSpecifier:v68 toGroup:v63];
    }

    if (AXRuntimeCheck_SupportsIncreaseBrightnessFloor() && AXActivePairedDeviceIsLighthouseEOrLater())
    {
      v69 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v70 = settingsLocString(@"INCREASE_BRIGHTNESS_FLOOR_SECTION_FOOTER", @"AccessibilitySettings");
      [v69 setProperty:v70 forKey:*v16];

      v71 = [v4 specifierForID:@"COLOR_FILTERS_GROUP"];
      [v4 ps_addGroup:v69 afterGroup:v71];

      v72 = MEMORY[0x277D3FAD8];
      v73 = settingsLocString(@"INCREASE_BRIGHTNESS_FLOOR_ROW_TITLE", @"AccessibilitySettings");
      v74 = [v72 preferenceSpecifierNamed:v73 target:self set:sel_setIncreaseBrightnessFloorEnabled_specifier_ get:sel_isIncreaseBrightnessFloorEnabled_ detail:0 cell:6 edit:0];

      [v74 setProperty:@"INCREASE_BRIGHTNESS_FLOOR_SWITCH_ID" forKey:*v34];
      [v74 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE0]];
      [v74 setProperty:@"com.apple.Accessibility" forKey:*MEMORY[0x277D3FEF8]];
      [v4 ps_addSpecifier:v74 toGroup:v69];
    }

    if (AXActivePairedDeviceSupportsElton() && AXActivePairedDeviceSupportsFlick())
    {
      v75 = [v4 indexOfSpecifierWithID:@"SideButton"];
      v76 = MEMORY[0x277D3FAD8];
      v77 = settingsLocString(@"WRIST_FLICK_SPEED_ROW_TITLE", @"WristFlickSettings-twister");
      v78 = [v76 preferenceSpecifierNamed:v77 target:self set:0 get:sel_wristFlickSpeed detail:objc_opt_class() cell:2 edit:0];

      [v78 setProperty:@"WRIST_FLICK_SPEED_ID" forKey:*v34];
      [v78 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE0]];
      [v4 insertObject:v78 atIndex:v75];
    }

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    obj = v4;
    v127 = [obj countByEnumeratingWithState:&v128 objects:v132 count:16];
    if (v127)
    {
      v79 = @"<A>";
      v80 = *v34;
      v125 = *v34;
      v126 = *v129;
      v117 = *MEMORY[0x277D3FF48];
      v116 = *MEMORY[0x277D3FF70];
      v114 = *MEMORY[0x277D3FF68];
      v115 = *MEMORY[0x277D3FF58];
      v112 = *v16;
      v113 = *MEMORY[0x277D3FF50];
      v119 = *MEMORY[0x277CEFAF8];
      v120 = *MEMORY[0x277D3FD80];
      v118 = *MEMORY[0x277CEFAB8];
      do
      {
        for (i = 0; i != v127; ++i)
        {
          if (*v129 != v126)
          {
            objc_enumerationMutation(obj);
          }

          v82 = *(*(&v128 + 1) + 8 * i);
          v83 = [v82 propertyForKey:v125];
          if ([v83 isEqualToString:@"MOBILITY"])
          {
            v84 = settingsLocString(@"MOBILITY_FOOTER_TEXT", @"AccessibilitySettings");
            v85 = [v84 rangeOfString:v79];
            if (v85 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v86 = v85;
              v87 = objc_opt_class();
              v88 = NSStringFromClass(v87);
              [v82 setProperty:v88 forKey:v117];

              v89 = [v84 rangeOfString:@"</A>"];
              v90 = v89 - ([(__CFString *)v79 length]+ v86);
              v91 = [v84 stringByReplacingOccurrencesOfString:v79 withString:&stru_284E770C0];

              v84 = [v91 stringByReplacingOccurrencesOfString:@"</A>" withString:&stru_284E770C0];

              [v82 setProperty:v84 forKey:v116];
              v135.location = v86;
              v135.length = v90;
              v92 = NSStringFromRange(v135);
              [v82 setProperty:v92 forKey:v115];

              v93 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
              [v82 setProperty:v93 forKey:v114];

              [v82 setProperty:@"showHealthPane" forKey:v113];
            }
          }

          v94 = v79;
          if ([v83 isEqualToString:@"RTT"])
          {
            v95 = [MEMORY[0x277D440E0] isRTTSupported] ^ 1;
          }

          else
          {
            v95 = 0;
          }

          if ([v83 hasPrefix:@"SideButton"])
          {
            v96 = [(AccessibilityBridgeSettingsController *)self _deviceSupportsSideButtonClickSpeed];
            if (AXActivePairedDeviceIsLighthouseOrLater())
            {
              v97 = settingsLocString(@"BUTTON_CLICK_SPEED", @"AccessibilitySettings");
              [v82 setName:v97];
            }

            v95 |= !v96;
            [v82 setProperty:MEMORY[0x277CBEC38] forKey:v120];
          }

          if ([v83 hasPrefix:@"TouchAccommodations"])
          {
            v95 |= AXGizmoTouchAccommodationsSupported() ^ 1;
          }

          if ([v83 isEqualToString:@"TapticTimeSpeedAdjustmentSlider"])
          {
            v98 = AXHareImage();
            [v82 setProperty:v98 forKey:v121];

            v99 = AXTortoiseImage();
            [v82 setProperty:v99 forKey:v122];
          }

          if ([v83 hasPrefix:@"TapticTimeSpeedAdjustment"])
          {
            v95 |= ![(AccessibilityBridgeSettingsController *)self _tapticTimeSpeedAdjustmentSupported];
          }

          if ([v83 hasPrefix:@"WalkieTalkieTapToTalk"])
          {
            v95 |= ![(AccessibilityBridgeSettingsController *)self _walkieTalkieIsSupported];
          }

          if ([v83 hasPrefix:@"AppSwitcherAutoSelect"])
          {
            if (AXActivePairedDeviceIsLighthouseEOrLater())
            {
              if ([v83 isEqualToString:@"AppSwitcherAutoSelectGroup"])
              {
                v100 = settingsLocString(@"APP_SWITCHER_AUTO_SELECT_DETAILS", @"AccessibilitySettings");
                v101 = AXCFormattedString();

                [v82 setProperty:v101 forKey:{v112, 1}];
              }
            }

            else
            {
              v95 = 1;
            }
          }

          if ([v83 hasPrefix:@"TapticChimes"])
          {
            if ([(AccessibilityBridgeSettingsController *)self _tapticChimesIsSupported])
            {
              if ([v83 isEqualToString:@"TapticChimesCell"])
              {
                v102 = [MEMORY[0x277CE6FA8] sharedInstance];
                v103 = [v102 tapticChimesLocalizedTitle];
                [v82 setName:v103];
              }
            }

            else
            {
              v95 = 1;
            }
          }

          if ([v83 hasPrefix:@"HeadphoneNotificationsID"])
          {
            v104 = [(ADASManager *)self->_headphoneLevelManager getNanoPreferenceFor:v119];
            if (v104 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v105 = [v104 BOOLValue];
            }

            else
            {
              v105 = 0;
            }

            v106 = [(ADASManager *)self->_headphoneLevelManager getNanoPreferenceFor:v118];
            if (v106 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v107 = [v106 BOOLValue] ^ 1;
              if (v105)
              {
                goto LABEL_92;
              }

LABEL_91:
              v95 |= v107;
            }

            else
            {
              v107 = 1;
              if ((v105 & 1) == 0)
              {
                goto LABEL_91;
              }
            }

LABEL_92:
          }

          if ([v83 hasPrefix:@"SIRI_"] && (!-[AccessibilityBridgeSettingsController _siriIsEnabled](self, "_siriIsEnabled") || !-[AccessibilityBridgeSettingsController _typeToSiriIsSupported](self, "_typeToSiriIsSupported")))
          {
            v95 = 1;
          }

          if ([v83 hasPrefix:@"INCREASE_CONTRAST"])
          {
            v95 |= !AXActivePairedDeviceIsLighthouseOrLater();
          }

          if (![v83 hasPrefix:@"ButtonShapes"])
          {
            if (v95)
            {
              goto LABEL_104;
            }

LABEL_103:
            [v123 addObject:v82];
            goto LABEL_104;
          }

          if (!(v95 & 1 | !AXActivePairedDeviceIsNapiliBOrLater()))
          {
            goto LABEL_103;
          }

LABEL_104:

          v79 = v94;
        }

        v127 = [obj countByEnumeratingWithState:&v128 objects:v132 count:16];
      }

      while (v127);
    }

    objc_storeStrong((&self->super.super.super.super.super.super.isa + v111), v123);
    v3 = *(&self->super.super.super.super.super.super.isa + v111);
  }

  v108 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_deviceSupportsSideButtonClickSpeed
{
  v2 = AXGetActivePairedDevice();
  v3 = [v2 valueForProperty:*MEMORY[0x277D2BB08]];
  v4 = [v3 lowercaseString];

  if ([v4 hasPrefix:@"n27"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"n28") & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"n74"))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v4 hasPrefix:@"n75"] ^ 1;
  }

  return v5;
}

- (id)voiceOverTouchEnabled:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  if ([v3 BOOLForKey:@"VoiceOverTouchEnabled"])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"AccessibilitySettings");

  return v5;
}

- (id)zoomEnabled:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  if ([v3 BOOLForKey:@"ZoomTouchEnabled"])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"AccessibilitySettings");

  return v5;
}

- (id)touchAccommodationsEnabled:(id)a3
{
  if (AXGizmoTouchAccommodationsEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"AccessibilitySettings");
}

- (id)reduceTransparencyEnabled:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  if ([v3 BOOLForKey:@"EnhancedBackgroundContrastEnabled"])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"AccessibilitySettings");

  return v5;
}

- (id)increaseContrastEnabled:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  if ([v3 BOOLForKey:@"DarkenSystemColors"])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"AccessibilitySettings");

  return v5;
}

- (id)reduceMotionEnabled:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  if ([v3 BOOLForKey:@"ReduceMotionEnabled"])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"AccessibilitySettings");

  return v5;
}

- (id)boldTextEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLForKey:", @"EnhancedTextLegibilityEnabled"}];

  return v5;
}

- (id)contentSizeCategories
{
  if (contentSizeCategories_onceToken != -1)
  {
    [AccessibilityBridgeSettingsController contentSizeCategories];
  }

  v3 = contentSizeCategories_contentSizeCategories;

  return v3;
}

void __62__AccessibilityBridgeSettingsController_contentSizeCategories__block_invoke()
{
  v14[7] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D76858];
  v14[0] = *MEMORY[0x277D76830];
  v14[1] = v0;
  v1 = *MEMORY[0x277D76828];
  v14[2] = *MEMORY[0x277D76838];
  v14[3] = v1;
  v2 = *MEMORY[0x277D76818];
  v14[4] = *MEMORY[0x277D76820];
  v14[5] = v2;
  v14[6] = *MEMORY[0x277D76808];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:7];
  v4 = contentSizeCategories_contentSizeCategories;
  contentSizeCategories_contentSizeCategories = v3;

  v5 = AXGetActivePairedDevice();
  if (v5)
  {
    v6 = [MEMORY[0x277D37A78] sizeFromDevice:v5];
    if (v6 <= 0x19 && ((1 << v6) & 0x2386080) != 0)
    {
      v7 = contentSizeCategories_contentSizeCategories;
      v8 = *MEMORY[0x277D767F8];
      v13[0] = *MEMORY[0x277D76800];
      v13[1] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
      v10 = [v7 arrayByAddingObjectsFromArray:v9];
      v11 = contentSizeCategories_contentSizeCategories;
      contentSizeCategories_contentSizeCategories = v10;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setTextSize:(id)a3 specifier:(id)a4
{
  v5 = [a3 integerValue];
  v6 = [(AccessibilityBridgeSettingsController *)self contentSizeCategories];
  v11 = [v6 objectAtIndex:v5];

  v7 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.UIKit"];
  [v7 setObject:v11 forKey:@"UIPreferredContentSizeCategoryName"];
  v8 = [v7 synchronize];
  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CBEB98] setWithObject:@"UIPreferredContentSizeCategoryName"];
  [v9 synchronizeNanoDomain:@"com.apple.UIKit" keys:v10];
}

- (id)textSize:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.UIKit"];
  v5 = [v4 synchronize];
  v6 = [v4 objectForKey:@"UIPreferredContentSizeCategoryName"];
  if (!v6)
  {
    v6 = *MEMORY[0x277D76858];
  }

  v7 = MEMORY[0x277CCABB0];
  v8 = [(AccessibilityBridgeSettingsController *)self contentSizeCategories];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "indexOfObject:", v6)}];

  return v9;
}

- (id)monoAudioEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLForKey:", @"MonoAudioEnabled"}];

  return v5;
}

- (void)setHeadphoneNotificationsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(ADASManager *)self->_headphoneLevelManager getPreferenceFor:*MEMORY[0x277CEFAF8]];
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
    v9 = *MEMORY[0x277CEFAF0];
    v10 = MEMORY[0x277CBEC38];
LABEL_10:
    v21 = [(ADASManager *)headphoneLevelManager setNanoPreferenceFor:v9 value:v10];
    goto LABEL_11;
  }

  if (!v7)
  {
    headphoneLevelManager = self->_headphoneLevelManager;
    v9 = *MEMORY[0x277CEFAF0];
    v10 = MEMORY[0x277CBEC28];
    goto LABEL_10;
  }

  v11 = MEMORY[0x277D75110];
  v12 = settingsLocString(@"HEADPHONE_NOTIFICATIONS_ALERT_TITLE", @"AccessibilitySettings");
  v13 = settingsLocString(@"HEADPHONE_NOTIFICATIONS_ALERT_MESSAGE", @"AccessibilitySettings");
  v14 = [v11 alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  v15 = MEMORY[0x277D750F8];
  v16 = settingsLocString(@"HEADPHONE_NOTIFICATIONS_ALERT_OPTION_ON", @"AccessibilitySettings");
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__AccessibilityBridgeSettingsController_setHeadphoneNotificationsEnabled_specifier___block_invoke;
  v23[3] = &unk_278B908C8;
  v23[4] = self;
  v17 = [v15 actionWithTitle:v16 style:1 handler:v23];
  [v14 addAction:v17];

  v18 = MEMORY[0x277D750F8];
  v19 = settingsLocString(@"HEADPHONE_NOTIFICATIONS_ALERT_OPTION_OFF", @"AccessibilitySettings");
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __84__AccessibilityBridgeSettingsController_setHeadphoneNotificationsEnabled_specifier___block_invoke_2;
  v22[3] = &unk_278B908C8;
  v22[4] = self;
  v20 = [v18 actionWithTitle:v19 style:0 handler:v22];
  [v14 addAction:v20];

  [(AccessibilityBridgeSettingsController *)self presentViewController:v14 animated:1 completion:0];
LABEL_11:
}

- (id)accessibilityShortcut:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 objectForKey:@"TripleClickOptions"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = MEMORY[0x277CBEBF8];
  }

  if ([v4 count] >= 2)
  {
    v5 = @"TRIPLE_CLICK_MULTIPLE_OPTIONS";
LABEL_13:
    v8 = @"TripleClickSettings";
LABEL_14:
    v9 = settingsLocString(v5, v8);
    goto LABEL_15;
  }

  if (![v4 count])
  {
    v5 = @"TRIPLE_CLICK_OFF";
    goto LABEL_13;
  }

  v6 = [v4 firstObject];
  v7 = [v6 intValue];

  if (v7 > 20)
  {
    if (v7 <= 23)
    {
      if (v7 == 21)
      {
        v5 = @"TRIPLE_CLICK_INCREASE_CONTRAST_LONG";
        goto LABEL_13;
      }

      if (v7 == 23)
      {
        v5 = @"WATCH_CONTROL_TRIPLE_CLICK_TITLE";
        v8 = @"AccessibilitySettings-watchcontrol";
        goto LABEL_14;
      }
    }

    else
    {
      switch(v7)
      {
        case 0x18:
          v5 = @"TRIPLE_CLICK_REDUCE_MOTION_LONG";
          goto LABEL_13;
        case 0x1A:
          v5 = @"TRIPLE_CLICK_LEFT_RIGHT_BALANCE_LONG";
          goto LABEL_13;
        case 0x29:
          v5 = @"TRIPLE_CLICK_INCREASE_BRIGHTNESS_FLOOR";
          goto LABEL_13;
      }
    }
  }

  else if (v7 <= 7)
  {
    if (v7 == 1)
    {
      v5 = @"TRIPLE_CLICK_VOICEOVER_LONG";
      goto LABEL_13;
    }

    if (v7 == 4)
    {
      v5 = @"TRIPLE_CLICK_ZOOM_LONG";
      goto LABEL_13;
    }
  }

  else
  {
    switch(v7)
    {
      case 8:
        v5 = @"TRIPLE_CLICK_HEARING_DEVICES_LONG";
        goto LABEL_13;
      case 0xB:
        v5 = @"TRIPLE_CLICK_TOUCH_ACCOMMODATIONS_LONG";
        goto LABEL_13;
      case 0x14:
        v5 = @"TRIPLE_CLICK_REDUCE_TRANSPARENCY_LONG";
        goto LABEL_13;
    }
  }

  v9 = [MEMORY[0x277CE7E70] titleForTripleClickOption:v7];
LABEL_15:
  v10 = v9;

  return v10;
}

- (id)hearingDevicesComplicationPreferredDisplayMode:(id)a3
{
  v4 = [objc_opt_class() domainAccessorForDomain:*MEMORY[0x277D81CF0]];
  v5 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:@"HearingAidComplicationPreferredDisplayMode" domainAccessor:v4];
  [v5 integerValue];

  return nameForComplicationPreferredDisplayMode();
}

- (id)accessibilityPreferenceForSpecifier:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 objectForKey:*MEMORY[0x277D81DA8]];

  objc_opt_class();
  valuePtr = 0.0;
  v5 = 0.0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v4)
  {
    CFNumberGetValue(v4, kCFNumberFloatType, &valuePtr);
    v5 = valuePtr;
  }

  v6 = fabsf(v5);
  *&v7 = __exp10f(v6 + v6) + -1.0;
  if (v5 < 0.0)
  {
    *&v7 = -*&v7;
  }

  *&v7 = (*&v7 / 198.0) + 0.5;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];

  return v8;
}

- (void)accessibilitySetPreference:(id)a3 specifier:(id)a4
{
  v5 = a3;
  [v5 floatValue];
  v7 = (v6 + -0.5) * 198.0;
  v8 = log10f(fabsf(v7) + 1.0) * 0.5;
  if (v7 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  [v5 floatValue];
  v11 = v10;

  if (fabsf(v11 + -0.5) < 0.03 && ([(UISlider *)self->_leftRightSlider isTracking]& 1) == 0)
  {
    v11 = 0.5;
    LODWORD(v12) = 0.5;
    [(UISlider *)self->_leftRightSlider setValue:1 animated:v12];
    v9 = 0.0;
  }

  [(AccessibilityBridgeSettingsController *)self _axConvertAudioBalanceValueToDisplay:v11];
  [(AXUISettingsLeftRightSliderCell *)self->_leftRightCell setDisplayValue:?];
  v13 = fabsf(v9);
  if (v13 < 0.1)
  {
    hapticGenerator = self->_hapticGenerator;
    if (!hapticGenerator)
    {
      v15 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:1];
      v16 = self->_hapticGenerator;
      self->_hapticGenerator = v15;

      hapticGenerator = self->_hapticGenerator;
    }

    [(UIImpactFeedbackGenerator *)hapticGenerator impactOccurred];
  }

  *&v13 = v9;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v17 forKey:*MEMORY[0x277D81DA8] reloadSpecifiers:0];
}

- (double)_axConvertAudioBalanceValueToDisplay:(double)a3
{
  if (a3 >= 0.5)
  {
    return a3 + -0.5 + a3 + -0.5;
  }

  else
  {
    return (0.5 - a3) * -2.0;
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v20 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = MEMORY[0x277D81DA8];
  if (isKindOfClass)
  {
    v9 = [v20 specifier];
    v10 = [v9 properties];
    v11 = [v10 objectForKey:*MEMORY[0x277D3FFF0]];
    v12 = [v11 isEqualToString:*v8];

    if (v12)
    {
      v13 = [MEMORY[0x277D75348] colorWithRed:0.654901961 green:0.654901961 blue:0.654901961 alpha:1.0];
      [(UISlider *)self->_leftRightSlider setMinimumTrackTintColor:v13];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_leftRightCell, a4);
    v14 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v15 = [v14 objectForKey:*v8];

    [v15 floatValue];
    v17 = v16;
    v18 = fabsf(v16);
    v19 = __exp10f(v18 + v18) + -1.0;
    if (v17 < 0.0)
    {
      v19 = -v19;
    }

    [(AccessibilityBridgeSettingsController *)self _axConvertAudioBalanceValueToDisplay:((v19 / 198.0) + 0.5)];
    [(AXUISettingsLeftRightSliderCell *)self->_leftRightCell setDisplayValue:?];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v29.receiver = self;
  v29.super_class = AccessibilityBridgeSettingsController;
  v7 = [(AccessibilityBridgeSettingsController *)&v29 tableView:a3 cellForRowAtIndexPath:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 specifier];
    v9 = [v8 properties];
    v10 = [v9 objectForKey:*MEMORY[0x277D3FFF0]];
    v11 = [v10 isEqualToString:*MEMORY[0x277D81DA8]];

    if (v11)
    {
      v12 = [v7 control];
      objc_storeStrong(&self->_leftRightSlider, v12);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __73__AccessibilityBridgeSettingsController_tableView_cellForRowAtIndexPath___block_invoke;
      v27[3] = &unk_278B90960;
      v13 = v12;
      v28 = v13;
      [v7 setAccessibilityLabelBlock:v27];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __73__AccessibilityBridgeSettingsController_tableView_cellForRowAtIndexPath___block_invoke_2;
      v25[3] = &unk_278B90960;
      v14 = v13;
      v26 = v14;
      [v7 setAccessibilityValueBlock:v25];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __73__AccessibilityBridgeSettingsController_tableView_cellForRowAtIndexPath___block_invoke_3;
      v23[3] = &unk_278B90988;
      v24 = v14;
      v15 = v14;
      [v7 setAccessibilityTraitsBlock:v23];
    }
  }

  v16 = [(AccessibilityBridgeSettingsController *)self specifierAtIndexPath:v6];
  v17 = [v16 identifier];
  v18 = [v17 isEqualToString:@"AudioTranscriptionsSpec"];

  if (v18)
  {
    v19 = [v7 textLabel];
    [v19 setNumberOfLines:0];

    v20 = [v7 textLabel];
    LODWORD(v21) = 0.5;
    [v20 _setHyphenationFactor:v21];
  }

  return v7;
}

- (id)sideButtonStatus:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [v3 doubleForKey:@"SideButtonDoubleTapInterval"];
  v5 = v4;

  if (vabdd_f64(v5, *MEMORY[0x277CE68A8]) >= 0.00999999978)
  {
    if (vabdd_f64(v5, *MEMORY[0x277CE68A0]) >= 0.00999999978)
    {
      v6 = @"SIDE_CLICK_SPEED_DEFAULT";
    }

    else
    {
      v6 = @"SIDE_CLICK_SPEED_SLOW";
    }
  }

  else
  {
    v6 = @"SIDE_CLICK_SPEED_SLOWEST";
  }

  v7 = settingsLocString(v6, @"SideButtonSettings");

  return v7;
}

- (id)rttEnabled:(id)a3
{
  v3 = [MEMORY[0x277D440C0] sharedInstance];
  if ([v3 TTYSoftwareEnabled])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"AccessibilitySettings");

  return v5;
}

- (BOOL)_supportsWatchControl
{
  v2 = AXGetActivePairedDevice();
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D7B1DB8F-6F20-44A7-B454-95B8A418D208"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (id)_watchControlDescription
{
  v2 = [MEMORY[0x277D7A910] sharedInstance];
  if ([v2 featureEnabled])
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  v4 = settingsLocString(v3, @"AccessibilitySettings");

  return v4;
}

- (id)_watchQuickActionsV2Description
{
  if (AXActivePairedDeviceIsNapiliBOrLater() && AXActivePairedDeviceHasDoubleTapActivationGesture())
  {
    v3 = @"OFF";
  }

  else
  {
    v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v5 = [v4 objectForKey:*MEMORY[0x277D81EB8]];
    v6 = [v5 intValue];

    v7 = [MEMORY[0x277D7A910] sharedInstance];
    LOBYTE(v5) = [v7 featureEnabled];

    v8 = v5 & (v6 == 0);
    if (v6 == 1)
    {
      v8 = 1;
    }

    if (v8)
    {
      v3 = @"ON";
    }

    else
    {
      v3 = @"OFF";
    }
  }

  v9 = settingsLocString(v3, @"AccessibilitySettings");

  return v9;
}

- (BOOL)_activeDeviceSupportsWorkoutBuddy
{
  v2 = AXGetActivePairedDevice();
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (id)_localizedAudioTranscriptionsFooterText
{
  if ([(AccessibilityBridgeSettingsController *)self workoutVoiceIsSupported]&& [(AccessibilityBridgeSettingsController *)self _activeDeviceSupportsWorkoutBuddy])
  {
    v3 = @"AUDIO_TRANSCRIPTIONS_WITH_WORKOUT_BUDDY_FOOTER";
  }

  else
  {
    v3 = @"AUDIO_TRANSCRIPTIONS_FOOTER";
  }

  v4 = settingsLocString(v3, @"AccessibilitySettings-dinnerbell");

  return v4;
}

- (void)_handleWorkoutVoiceFeatureAvailabilityChanged
{
  v3 = [(AccessibilityBridgeSettingsController *)self specifiers];
  v5 = [v3 specifierForID:@"AudioTranscriptionsGroup"];

  if (v5)
  {
    v4 = [(AccessibilityBridgeSettingsController *)self _localizedAudioTranscriptionsFooterText];
    [v5 setProperty:v4 forKey:*MEMORY[0x277D3FF88]];

    [(AccessibilityBridgeSettingsController *)self reloadSpecifier:v5];
  }
}

- (BOOL)_gizmoSupportsAXAirPodSettings
{
  if (!AXActivePairedDeviceIsHunterOrLater())
  {
    return 0;
  }

  v2 = AXGetActivePairedDevice();
  v3 = [v2 valueForProperty:*MEMORY[0x277D2BB28]];
  v4 = [v3 BOOLValue];

  v5 = v4 ^ 1;
  return v5;
}

- (BOOL)_tapticTimeSpeedAdjustmentSupported
{
  v2 = AXGetActivePairedDevice();
  NRWatchOSVersionForRemoteDevice();
  IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();

  return IsGreaterThanOrEqual;
}

- (BOOL)_tapticChimesIsSupported
{
  v2 = AXGetActivePairedDevice();
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"78E1881C-F6E1-421F-BC90-A1EBF1784BB1"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (BOOL)_siriIsEnabled
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 nanoAssistantEnabled];

  return v3;
}

- (BOOL)_typeToSiriIsSupported
{
  v2 = AXGetActivePairedDevice();
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"0EEFEB2D-0DDD-44CC-B240-BA8EDE9A1BC5"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (BOOL)_walkieTalkieIsSupported
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D2BA58]);
  v3 = [v2 initWithDomain:*MEMORY[0x277D71538]];
  v4 = [v3 synchronize];
  v14 = 0;
  v5 = [v3 BOOLForKey:*MEMORY[0x277D71530] keyExistsAndHasValidFormat:&v14];
  v6 = v14 ^ 1 | v5;
  _TCSInitializeLogging();
  v7 = *MEMORY[0x277D71520];
  if (os_log_type_enabled(*MEMORY[0x277D71520], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = NSStringFromBOOL();
    v10 = NSStringFromBOOL();
    v11 = NSStringFromBOOL();
    *buf = 136315906;
    v16 = "[AccessibilityBridgeSettingsController _walkieTalkieIsSupported]";
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_23BCCF000, v8, OS_LOG_TYPE_DEFAULT, "%s returning %@ (keyExists=%@ isWalkieTalkieInstalled=%@)", buf, 0x2Au);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (void)_previewHapticSpeed
{
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v2 = [v8 timeZone];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v8 componentsInTimeZone:v2 fromDate:v3];

  [v4 setHour:3];
  [v4 setMinute:0];
  v5 = [v4 date];
  v6 = [MEMORY[0x277CE7E60] sharedInstance];
  [v6 setDateOverride:v5];

  v7 = [MEMORY[0x277CE7E60] sharedInstance];
  [v7 outputHours:1];
}

- (void)setAudioTranscriptionsEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__AccessibilityBridgeSettingsController_setAudioTranscriptionsEnabled_specifier___block_invoke;
  aBlock[3] = &unk_278B909B0;
  aBlock[4] = self;
  v8 = v6;
  v33 = v8;
  v9 = _Block_copy(aBlock);
  if ([v8 BOOLValue] && (objc_msgSend(MEMORY[0x277CEF368], "sharedPreferences"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "nanoDictationEnabled"), v10, (v11 & 1) == 0))
  {
    v12 = MEMORY[0x277D75110];
    v13 = settingsLocString(@"DICTATION_OPT_IN_TITLE", @"AccessibilitySettings-dinnerbell");
    v14 = settingsLocString(@"DICTATION_OPT_IN_MESSAGE", @"AccessibilitySettings-dinnerbell");
    v15 = [v12 alertControllerWithTitle:v13 message:v14 preferredStyle:1];

    v16 = MEMORY[0x277D750F8];
    v17 = settingsLocString(@"DICTATION_OPT_IN_ENABLE", @"AccessibilitySettings-dinnerbell");
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __81__AccessibilityBridgeSettingsController_setAudioTranscriptionsEnabled_specifier___block_invoke_2;
    v30[3] = &unk_278B909D8;
    v31 = v9;
    v25 = [v16 actionWithTitle:v17 style:0 handler:v30];

    [v15 addAction:v25];
    v18 = MEMORY[0x277D750F8];
    v19 = settingsLocString(@"DICTATION_OPT_IN_NOT_NOW", @"AccessibilitySettings-dinnerbell");
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __81__AccessibilityBridgeSettingsController_setAudioTranscriptionsEnabled_specifier___block_invoke_3;
    v28[3] = &unk_278B90A00;
    v28[4] = self;
    v20 = v7;
    v29 = v20;
    v21 = [v18 actionWithTitle:v19 style:0 handler:v28];

    [v15 addAction:v21];
    v22 = MEMORY[0x277D750F8];
    v23 = settingsLocString(@"DICTATION_OPT_IN_ABOUT", @"AccessibilitySettings-dinnerbell");
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __81__AccessibilityBridgeSettingsController_setAudioTranscriptionsEnabled_specifier___block_invoke_4;
    v26[3] = &unk_278B90A00;
    v26[4] = self;
    v27 = v20;
    v24 = [v22 actionWithTitle:v23 style:1 handler:v26];

    [v15 addAction:v24];
    [(AccessibilityBridgeSettingsController *)self presentViewController:v15 animated:1 completion:0];
  }

  else
  {
    v9[2](v9);
  }
}

uint64_t __81__AccessibilityBridgeSettingsController_setAudioTranscriptionsEnabled_specifier___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  [v2 setNanoDictationEnabled:1];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __81__AccessibilityBridgeSettingsController_setAudioTranscriptionsEnabled_specifier___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifier:*(a1 + 40)];
  v2 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
  [v2 setPresentingViewController:*(a1 + 32)];
  [v2 present];
}

- (id)audioTranscriptionsEnabled:(id)a3
{
  v7 = 0;
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 BOOLForKey:@"ShowAudioTranscriptionsEnabled" keyExistsAndHasValidFormat:&v7];

  if (v7 == 1)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  return v5;
}

- (id)autoAnswerCallDescription:(id)a3
{
  v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [v4 BOOLForKey:*MEMORY[0x277CE7ED8]];

  if (v5)
  {
    v9 = 0;
    v6 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    [v6 floatForKey:*MEMORY[0x277CE7EE0] keyExistsAndHasValidFormat:&v9];

    v7 = AXLocDuration();
  }

  else
  {
    v7 = settingsLocString(@"OFF", @"AccessibilitySettings");
  }

  return v7;
}

- (void)setTapticTimeSpeed:(id)a3 specifier:(id)a4
{
  v5 = a3;
  [v5 floatValue];
  v7 = v6;
  v8 = [MEMORY[0x277CE7E20] sharedInstance];
  LODWORD(v9) = v7;
  [v8 setVoiceOverTapticTimeSpeed:v9];

  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v5 forKey:*MEMORY[0x277CE7F98]];

  [(AccessibilityBridgeSettingsController *)self _previewHapticSpeed];
}

- (id)tapticTimeSpeed:(id)a3
{
  v9 = 0;
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [v3 floatForKey:*MEMORY[0x277CE7F98] keyExistsAndHasValidFormat:&v9];
  v5 = v4;

  LODWORD(v6) = *MEMORY[0x277CE6890];
  if (v9)
  {
    *&v6 = v5;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];

  return v7;
}

- (BOOL)_supportsLiveSpeech
{
  v2 = AXGetActivePairedDevice();
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"9A815CF5-4377-41E5-A00A-161FC5C51956"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (id)liveSpeechEnabled:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 objectForKey:@"TripleClickOptions"];

  if ([v4 containsObject:&unk_284E7E330])
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  v6 = settingsLocString(v5, @"AccessibilitySettings");

  return v6;
}

- (id)globalColorFilterEnabled
{
  v7 = 0;
  v2 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v3 = [v2 BOOLForKey:@"ColorFiltersEnabled" keyExistsAndHasValidFormat:&v7];

  if (v7 & v3)
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"AccessibilitySettings");

  return v5;
}

- (id)isIncreaseBrightnessFloorEnabled:(id)a3
{
  v4 = *MEMORY[0x277D81D98];
  v5 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v6 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v4 domainAccessor:v5];

  return v6;
}

- (id)wristFlickSpeed
{
  v2 = AXGetWristFlickSpeed();

  return AXLocalizedStringForFlickSpeed(v2);
}

@end