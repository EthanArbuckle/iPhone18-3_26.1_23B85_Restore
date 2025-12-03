@interface AccessibilityDataMigrator
- (BOOL)_isFreshInstall;
- (BOOL)performMigration;
- (id)_convertHADomainTypesToSD:(id)d;
- (void)_crystalMigrateAudioDuckingSettings;
- (void)_crystalMigrateBrailleScreenInputActivationGestureUsage;
- (void)_crystalMigrateBrailleScreenInputCommands;
- (void)_crystalMigrateGrayscaleSetting;
- (void)_crystalMigrateHearingControlCenterOrder;
- (void)_crystalMigratePMESettings;
- (void)_dawnMigrateGrayscaleSetting;
- (void)_dawnMigrateJapaneseSystemBrailleTable;
- (void)_dawnSUMigratePerAppSettingsIDs;
- (void)_ensureDefaultBrailleRotorItemExists;
- (void)_ensureGesture:(id)gesture isMappedToCommand:(id)command withCommandManager:(id)manager withResolver:(id)resolver;
- (void)_luckBMigrateAvoidShowingHelpBannerIfVoiceOverOrSwitchControlAlreadyEnabled;
- (void)_luckBMigrateVOQuickNavAnnouncementFeedback;
- (void)_luckMigrateMotionCuesStyle;
- (void)_migratePreferences;
- (void)_sydneyMigrateTapToWakeSetting;
- (void)_turnOffIgnoreTrackpad;
- (void)_turnOffMitigationOnUnsupportedDevices;
- (void)_turnOffSoundRecognitionIfNoSoundsEnabled;
- (void)_updateSiriVoiceList;
@end

@implementation AccessibilityDataMigrator

- (BOOL)performMigration
{
  _AXSSetInDataMigrationMode();
  [(AccessibilityDataMigrator *)self _migratePreferences];
  [(AccessibilityDataMigrator *)self _updateSiriVoiceList];
  _AXSSetInDataMigrationMode();
  return 1;
}

- (void)_updateSiriVoiceList
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration_UpdateSiriVoiceList_15.0"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setSiriAutoUpdateListInitialized:0];

    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration_UpdateSiriVoiceList_15.0"];
  }
}

- (void)_migratePreferences
{
  [(AccessibilityDataMigrator *)self _sydneyMigrateTapToWakeSetting];
  [(AccessibilityDataMigrator *)self _dawnMigrateGrayscaleSetting];
  [(AccessibilityDataMigrator *)self _dawnMigrateJapaneseSystemBrailleTable];
  [(AccessibilityDataMigrator *)self _crystalMigrateBrailleTableReplacements];
  [(AccessibilityDataMigrator *)self _crystalMigrateBrailleScreenInputCommands];
  [(AccessibilityDataMigrator *)self _crystalMigrateHearingControlCenterOrder];
  [(AccessibilityDataMigrator *)self _crystalMigrateBrailleScreenInputActivationGestureUsage];
  [(AccessibilityDataMigrator *)self _crystalMigratePMESettings];
  [(AccessibilityDataMigrator *)self _crystalMigrateAudioDuckingSettings];
  [(AccessibilityDataMigrator *)self _crystalMigrateGrayscaleSetting];
  [(AccessibilityDataMigrator *)self _dawnSUMigratePerAppSettingsIDs];
  [(AccessibilityDataMigrator *)self _turnOffIgnoreTrackpad];
  [(AccessibilityDataMigrator *)self _turnOffSoundRecognitionIfNoSoundsEnabled];
  [(AccessibilityDataMigrator *)self _luckMigrateMotionCuesStyle];
  [(AccessibilityDataMigrator *)self _luckBMigrateVOQuickNavAnnouncementFeedback];
  [(AccessibilityDataMigrator *)self _luckBMigrateAvoidShowingHelpBannerIfVoiceOverOrSwitchControlAlreadyEnabled];

  [(AccessibilityDataMigrator *)self _turnOffMitigationOnUnsupportedDevices];
}

- (void)_luckBMigrateVOQuickNavAnnouncementFeedback
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v2 = [v5 objectForKey:@"_AccessibilityMigration__DefaultVOQuickNavAnnouncementFeedback_26.1"];
  bOOLValue = [v2 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v4 = +[AXSettings sharedInstance];
    [v4 setVoiceOverQuickNavAnnouncementFeedback:{objc_msgSend(v4, "voiceOverQuickNavAnnouncementFeedback") | 0x10}];

    [v5 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration__DefaultVOQuickNavAnnouncementFeedback_26.1"];
  }
}

- (void)_luckBMigrateAvoidShowingHelpBannerIfVoiceOverOrSwitchControlAlreadyEnabled
{
  v8 = +[NSUserDefaults standardUserDefaults];
  v2 = [v8 objectForKey:@"_AccessibilityMigration__AvoidShowingHelpBannerIfVoiceOverOrSwitchControlAlreadyEnabled_26.1"];
  bOOLValue = [v2 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (!_AXSVoiceOverTouchEnabled() && !_AXSAssistiveTouchScannerEnabled())
    {
      v4 = +[AXSettings sharedInstance];
      if (![v4 touchAccommodationsEnabled])
      {
        goto LABEL_5;
      }

      v6 = +[AXSettings sharedInstance];
      touchAccommodationsAreConfigured = [v6 touchAccommodationsAreConfigured];

      if (!touchAccommodationsAreConfigured)
      {
        goto LABEL_6;
      }
    }

    v4 = +[NSDate distantPast];
    v5 = +[AXSettings sharedInstance];
    [v5 setAccessibilityHelpBannerFirstShownTimestamp:v4];

LABEL_5:
LABEL_6:
    [v8 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration__AvoidShowingHelpBannerIfVoiceOverOrSwitchControlAlreadyEnabled_26.1"];
  }
}

- (void)_luckMigrateMotionCuesStyle
{
  v8 = +[NSUserDefaults standardUserDefaults];
  v2 = [v8 objectForKey:@"_AccessibilityMigration__DefaultMotionCuesStyle_26.0"];
  bOOLValue = [v2 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v4 = [NSUserDefaults alloc];
    v5 = [v4 initWithSuiteName:kAXSAccessibilityPreferenceDomain];
    v6 = [v5 objectForKey:@"AXSMotionCuesMode"];
    v7 = [NSNumber numberWithInt:v6 == 0];
    [v5 setObject:v7 forKey:@"AXSMotionCuesStyle"];

    [v8 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration__DefaultMotionCuesStyle_26.0"];
  }
}

- (void)_turnOffSoundRecognitionIfNoSoundsEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration__TurnOffSoundRecognitionNoSounds_18.3"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v5 = +[AXSDSettings sharedInstance];
    if ([v5 soundDetectionState])
    {
      enabledSoundDetectionTypes = [v5 enabledSoundDetectionTypes];
      if ([enabledSoundDetectionTypes count])
      {
      }

      else
      {
        enabledKShotDetectorIdentifiers = [v5 enabledKShotDetectorIdentifiers];
        v8 = [enabledKShotDetectorIdentifiers count];

        if (!v8)
        {
          v9 = AXLogDataMigrator();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v13 = 0;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Sound Recognition was on but has no sounds, turning off", v13, 2u);
          }

          [v5 setSoundDetectionState:0];
        }
      }
    }

    v10 = [AXSDSettingsEvent alloc];
    soundDetectionState = [v5 soundDetectionState];
    v12 = [v10 initWithState:soundDetectionState source:AXSDSettingsEventSourceDataMigrator];
    [v5 registerSettingsEvent:v12];

    [v2 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration__TurnOffSoundRecognitionNoSounds_18.3"];
  }
}

- (void)_turnOffIgnoreTrackpad
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration__IgnoreTrackpad_18.2"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v5 = +[AXSettings sharedInstance];
    ignoreTrackpad = [v5 ignoreTrackpad];

    if (ignoreTrackpad)
    {
      v7 = AXLogDataMigrator();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Ignore trackpad was enabled, turning off one time in 18.2", v10, 2u);
      }

      v8 = +[AXSettings sharedInstance];
      [v8 setIgnoreTrackpad:0];
    }

    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration__IgnoreTrackpad_18.2"];
  }
}

- (void)_turnOffMitigationOnUnsupportedDevices
{
  if (_AXSPhotosensitiveMitigationEnabled() && (AXDeviceSupportsPhotosensitiveMitigation() & 1) == 0)
  {
    v2 = AXLogDataMigrator();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Resetting PSE to no since device doesn't support", v3, 2u);
    }

    _AXSPhotosensitiveMitigationSetEnabled();
  }
}

- (void)_crystalMigrateGrayscaleSetting
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration__GrayscaleEnabled_18"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (MADisplayFilterPrefGetCategoryEnabled())
    {
      v5 = MADisplayFilterPrefGetType() == 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = AXLogDataMigrator();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Updating grayscale preference once more", v9, 2u);
    }

    v7 = [NSNumber numberWithBool:v5];
    CFPreferencesSetAppValue(@"GrayscaleDisplay", v7, kAXSAccessibilityPreferenceDomain);

    CFPreferencesAppSynchronize(kAXSAccessibilityPreferenceDomain);
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration__GrayscaleEnabled_18"];
  }
}

- (void)_crystalMigrateBrailleScreenInputActivationGestureUsage
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration_VoiceOverBrailleScreenInputOutOfRotor_18.0"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 valueForPreferenceKey:@"VoiceOverTouchRotorItemsPreference"];
    v15 = [v6 mutableCopy];

    if ([v15 count])
    {
      v7 = 0;
      while (1)
      {
        v8 = [v15 objectAtIndexedSubscript:v7];
        v9 = [v8 objectForKeyedSubscript:@"RotorItem"];
        v10 = [v9 isEqualToString:kAXSVoiceOverTouchRotorItemBrailleGesture];

        if (v10)
        {
          v11 = [v8 objectForKeyedSubscript:@"Enabled"];
          bOOLValue2 = [v11 BOOLValue];

          if (bOOLValue2)
          {
            break;
          }
        }

        if (++v7 >= [v15 count])
        {
          goto LABEL_9;
        }
      }

      v13 = +[AXSettings sharedInstance];
      [v13 setVoiceOverTouchBrailleGesturesActivationGestureEnabled:1];
    }

LABEL_9:
    v14 = +[NSUserDefaults standardUserDefaults];
    [v14 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration_VoiceOverBrailleScreenInputOutOfRotor_18.0"];
  }
}

- (void)_crystalMigrateBrailleScreenInputCommands
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"_AccessibilityMigration_VoiceOverBrailleScreenInputCommands_18.0"];
  bOOLValue = [v4 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v6 = +[VOSCommandResolver resolverForCurrentHost];
    v7 = +[VOSScreenreaderMode Default];
    v40 = [v6 resolverWithScreenreaderModeVariant:v7];

    v8 = +[VOSCommandResolver resolverForCurrentHost];
    v9 = +[VOSScreenreaderMode BrailleScreenInput];
    v10 = [v8 resolverWithScreenreaderModeVariant:v9];

    initPreferringUserProfile = [[VOSCommandManager alloc] initPreferringUserProfile];
    v12 = +[VOSGesture TwoFingerPinch];
    v13 = +[VOSCommand BSIExit];
    [(AccessibilityDataMigrator *)self _ensureGesture:v12 isMappedToCommand:v13 withCommandManager:initPreferringUserProfile withResolver:v10];

    v14 = +[VOSGesture TwoFingerScrub];
    v15 = +[VOSCommand BSIEscape];
    [(AccessibilityDataMigrator *)self _ensureGesture:v14 isMappedToCommand:v15 withCommandManager:initPreferringUserProfile withResolver:v10];

    v16 = +[VOSGesture TwoFingerRotateClockwise];
    v17 = +[VOSCommand BSINextRotor];
    [(AccessibilityDataMigrator *)self _ensureGesture:v16 isMappedToCommand:v17 withCommandManager:initPreferringUserProfile withResolver:v10];

    v18 = +[VOSGesture TwoFingerRotateCounterclockwise];
    v19 = +[VOSCommand BSIPreviousRotor];
    [(AccessibilityDataMigrator *)self _ensureGesture:v18 isMappedToCommand:v19 withCommandManager:initPreferringUserProfile withResolver:v10];

    v20 = +[VOSGesture OneFingerSplitFlickLeft];
    v21 = +[VOSCommand BSIPreviousTextSegment];
    [(AccessibilityDataMigrator *)self _ensureGesture:v20 isMappedToCommand:v21 withCommandManager:initPreferringUserProfile withResolver:v10];

    v22 = +[VOSGesture OneFingerSplitFlickRight];
    v23 = +[VOSCommand BSINextTextSegment];
    [(AccessibilityDataMigrator *)self _ensureGesture:v22 isMappedToCommand:v23 withCommandManager:initPreferringUserProfile withResolver:v10];

    v24 = +[VOSGesture TwoFingerSplitFlickLeft];
    v25 = +[VOSCommand BSISelectPreviousTextSegment];
    [(AccessibilityDataMigrator *)self _ensureGesture:v24 isMappedToCommand:v25 withCommandManager:initPreferringUserProfile withResolver:v10];

    v26 = +[VOSGesture TwoFingerSplitFlickRight];
    v27 = +[VOSCommand BSISelectNextTextSegment];
    [(AccessibilityDataMigrator *)self _ensureGesture:v26 isMappedToCommand:v27 withCommandManager:initPreferringUserProfile withResolver:v10];

    v28 = +[VOSGesture OneFingerSplitFlickDown];
    v29 = +[VOSCommand BSIPreviousTextSegmentType];
    [(AccessibilityDataMigrator *)self _ensureGesture:v28 isMappedToCommand:v29 withCommandManager:initPreferringUserProfile withResolver:v10];

    v30 = +[VOSGesture OneFingerSplitFlickUp];
    v31 = +[VOSCommand BSINextTextSegmentType];
    [(AccessibilityDataMigrator *)self _ensureGesture:v30 isMappedToCommand:v31 withCommandManager:initPreferringUserProfile withResolver:v10];

    v32 = +[VOSGesture TwoDistantFingerSingleTap];
    v33 = +[VOSCommand ActivateBrailleScreenInput];
    v34 = [initPreferringUserProfile removeGesture:v32 fromCommand:v33 withResolver:v40];

    v35 = +[VOSGesture TwoDistantFingerDoubleTap];
    v36 = +[VOSCommand ActivateBrailleScreenInput];
    [(AccessibilityDataMigrator *)self _ensureGesture:v35 isMappedToCommand:v36 withCommandManager:initPreferringUserProfile withResolver:v40];

    v37 = +[VOSGesture TwoDistantFingerTripleTap];
    v38 = +[VOSCommand ActivateBrailleScreenInputCommand];
    [(AccessibilityDataMigrator *)self _ensureGesture:v37 isMappedToCommand:v38 withCommandManager:initPreferringUserProfile withResolver:v40];

    [initPreferringUserProfile saveAsUserProfile];
    v39 = +[NSUserDefaults standardUserDefaults];
    [v39 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration_VoiceOverBrailleScreenInputCommands_18.0"];
  }
}

- (void)_ensureGesture:(id)gesture isMappedToCommand:(id)command withCommandManager:(id)manager withResolver:(id)resolver
{
  gestureCopy = gesture;
  commandCopy = command;
  managerCopy = manager;
  resolverCopy = resolver;
  v12 = [managerCopy commandForTouchGesture:gestureCopy withResolver:resolverCopy];
  if (v12)
  {
    v13 = [managerCopy removeGesture:gestureCopy fromCommand:v12 withResolver:resolverCopy];
  }

  v14 = [managerCopy addGesture:gestureCopy toCommand:commandCopy withResolver:resolverCopy];
}

- (void)_crystalMigrateHearingControlCenterOrder
{
  v2 = _AXSHearingCCEnabledOptions();
  if (v2)
  {
    +[NSMutableArray array];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_22A4;
    v6 = v5[3] = &unk_8268;
    v3 = v6;
    [v2 enumerateObjectsUsingBlock:v5];
    v4 = +[HUHearingSettings sharedInstance];
    [v4 setHearingControlCenterOrder:v3];
  }
}

- (void)_crystalMigratePMESettings
{
  v15 = +[PASettings sharedInstance];
  v2 = [v15 preferenceKeyForSelector:"personalMediaEnabled"];
  v3 = [v15 objectValueForKey:v2 withClass:objc_opt_class() andDefaultValue:0];
  v4 = v3;
  if (v3)
  {
    [v15 setPersonalMediaEnabled:{objc_msgSend(v3, "BOOLValue")}];
    [v15 setValue:0 forPreferenceKey:v2];
  }

  v5 = [v15 preferenceKeyForSelector:"personalAudioAccommodationTypes"];

  v6 = [v15 objectValueForKey:v5 withClass:objc_opt_class() andDefaultValue:0];

  if (v6)
  {
    [v15 setPersonalAudioAccommodationTypes:{objc_msgSend(v6, "unsignedIntegerValue")}];
    [v15 setValue:0 forPreferenceKey:v5];
  }

  v7 = [v15 preferenceKeyForSelector:"personalMediaConfiguration"];

  v8 = [v15 objectValueForKey:v7 withClass:objc_opt_class() andDefaultValue:0];
  if (v8)
  {
    personalMediaConfigurationByRouteUID = [v15 personalMediaConfigurationByRouteUID];
    v10 = [NSMutableDictionary dictionaryWithDictionary:personalMediaConfigurationByRouteUID];

    [v10 setValue:v8 forKey:PAConfigurationWildcard];
    [v15 setPersonalMediaConfigurationByRouteUID:v10];
    [v15 setValue:0 forPreferenceKey:v7];
  }

  v11 = [v15 preferenceKeyForSelector:"audiogramConfiguration"];

  v12 = [v15 objectValueForKey:v11 withClass:objc_opt_class() andDefaultValue:0];

  if (v12)
  {
    audiogramConfigurationByRouteUID = [v15 audiogramConfigurationByRouteUID];
    v14 = [NSMutableDictionary dictionaryWithDictionary:audiogramConfigurationByRouteUID];

    [v14 setValue:v12 forKey:PAConfigurationWildcard];
    [v15 setAudiogramConfigurationByRouteUID:v14];
    [v15 setValue:0 forPreferenceKey:v11];
  }
}

- (void)_crystalMigrateAudioDuckingSettings
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration_AudioDuckingSettings_18.0"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v5 = +[AXSettings sharedInstance];
    voiceOverAudioDuckingEnabled = [v5 voiceOverAudioDuckingEnabled];

    if ((voiceOverAudioDuckingEnabled & 1) == 0)
    {
      v7 = +[AXSettings sharedInstance];
      [v7 setVoiceOverMediaDuckingMode:0];
    }

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration_AudioDuckingSettings_18.0"];
  }
}

- (void)_dawnSUMigratePerAppSettingsIDs
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"_AccessibilityMigration__PerAppSettingsIDs_17"];
  bOOLValue = [v4 BOOLValue];

  if (!bOOLValue || [(AccessibilityDataMigrator *)self inUnitTest])
  {
    v6 = +[AXSettings sharedInstance];
    perAppSettingsCustomizedAppIDs = [v6 perAppSettingsCustomizedAppIDs];
    v8 = [perAppSettingsCustomizedAppIDs count];

    if (v8)
    {
      v9 = +[AXSettings sharedInstance];
      perAppSettingsCustomizedAppIDs2 = [v9 perAppSettingsCustomizedAppIDs];
      ax_arrayByRemovingDuplicates = [perAppSettingsCustomizedAppIDs2 ax_arrayByRemovingDuplicates];

      CFPreferencesSetValue(@"AXSettingsPerAppIDsArray", ax_arrayByRemovingDuplicates, AX_PreferencesBundleName, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v12 = +[AXSettings sharedInstance];
      [v12 setPerAppSettingsCustomizedAppIDs:0];
    }

    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration__PerAppSettingsIDs_17"];
  }
}

- (void)_dawnMigrateJapaneseSystemBrailleTable
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration__JapaneseSystemBrailleTable_17"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v5 = +[AXSettings sharedInstance];
    voiceOverBrailleTableIdentifier = [v5 voiceOverBrailleTableIdentifier];
    v7 = [voiceOverBrailleTableIdentifier isEqual:@"com.apple.scrod.braille.table.duxbury.jpn"];

    if (v7)
    {
      v8 = +[AXSettings sharedInstance];
      [v8 setVoiceOverBrailleTableIdentifier:@"com.apple.scrod.braille.table.apple.ja"];
    }

    v9 = +[AXSettings sharedInstance];
    voiceOverBrailleLanguageRotorItems = [v9 voiceOverBrailleLanguageRotorItems];

    v31 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = voiceOverBrailleLanguageRotorItems;
    v32 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v32)
    {
      v30 = *v41;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          v13 = [v12 mutableCopy];
          v14 = [v12 objectForKeyedSubscript:@"LanguageDefaults"];
          v15 = v14;
          if (v14)
          {
            v33 = v12;
            v34 = v13;
            v35 = i;
            v16 = [v14 mutableCopy];
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            allKeys = [v15 allKeys];
            v18 = [allKeys countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v37;
              do
              {
                for (j = 0; j != v19; j = j + 1)
                {
                  if (*v37 != v20)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v22 = *(*(&v36 + 1) + 8 * j);
                  v23 = [v15 objectForKeyedSubscript:v22];
                  v24 = [v23 isEqual:@"com.apple.scrod.braille.table.duxbury.jpn"];

                  if (v24)
                  {
                    [v16 setObject:@"com.apple.scrod.braille.table.apple.ja" forKeyedSubscript:v22];
                  }
                }

                v19 = [allKeys countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v19);
            }

            v13 = v34;
            [v34 setObject:v16 forKeyedSubscript:@"LanguageDefaults"];

            i = v35;
            v12 = v33;
          }

          v25 = [v12 objectForKeyedSubscript:@"RotorItem"];
          v26 = [v25 isEqual:@"com.apple.scrod.braille.table.duxbury.jpn"];

          if (v26)
          {
            [v13 setObject:@"com.apple.scrod.braille.table.apple.ja" forKeyedSubscript:@"RotorItem"];
          }

          [v31 addObject:v13];
        }

        v32 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v32);
    }

    v27 = +[AXSettings sharedInstance];
    [v27 setVoiceOverBrailleLanguageRotorItems:v31];

    v28 = +[NSUserDefaults standardUserDefaults];
    [v28 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration__JapaneseSystemBrailleTable_17"];
  }
}

- (void)_dawnMigrateGrayscaleSetting
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration__GrayscaleEnabled_17"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    keyExistsAndHasValidFormat = 0;
    CFPreferencesGetAppBooleanValue(@"GrayscaleDisplay", kAXSAccessibilityPreferenceDomain, &keyExistsAndHasValidFormat);
    if (!keyExistsAndHasValidFormat)
    {
      if (MADisplayFilterPrefGetCategoryEnabled())
      {
        v5 = MADisplayFilterPrefGetType() == 1;
      }

      else
      {
        v5 = 0;
      }

      v6 = AXLogDataMigrator();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Updating grayscale preference", v9, 2u);
      }

      v7 = [NSNumber numberWithBool:v5];
      CFPreferencesSetAppValue(@"GrayscaleDisplay", v7, kAXSAccessibilityPreferenceDomain);

      CFPreferencesAppSynchronize(kAXSAccessibilityPreferenceDomain);
    }

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration__GrayscaleEnabled_17"];
  }
}

- (void)_sydneyMigrateTapToWakeSetting
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_AccessibilityMigration__TapToWake_16"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (AXDeviceIsD7x())
    {
      v5 = [NSUserDefaults alloc];
      v6 = [v5 initWithSuiteName:AX_SpringBoardBundleName];
      v7 = [v6 objectForKey:@"SBSupportTapToWake"];
      v8 = v7;
      if (v7 && ([v7 BOOLValue] & 1) == 0 && !_AXSVoiceOverTouchEnabled())
      {
        [v6 setBool:1 forKey:@"SBSupportTapToWake"];
        v9 = AXLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Resetting tap to wake setting because we're on a supported model", v11, 2u);
        }
      }
    }

    v10 = +[NSUserDefaults standardUserDefaults];
    [v10 setObject:&__kCFBooleanTrue forKey:@"_AccessibilityMigration__TapToWake_16"];
  }
}

- (id)_convertHADomainTypesToSD:(id)d
{
  dCopy = d;
  v4 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = dCopy;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        v11 = [v10 isEqualToString:{@"AXHASoundDetectionTypeFireAlarms", v30}];
        v12 = @"AXSDSoundDetectionTypeFireAlarms";
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = [v10 isEqualToString:@"AXHASoundDetectionTypeSirenAlarms"];
        v12 = @"AXSDSoundDetectionTypeSirenAlarms";
        if (v13)
        {
          goto LABEL_21;
        }

        v14 = [v10 isEqualToString:@"AXHASoundDetectionTypeSmokeAlarms"];
        v12 = @"AXSDSoundDetectionTypeSmokeAlarms";
        if (v14)
        {
          goto LABEL_21;
        }

        v15 = [v10 isEqualToString:@"AXHASoundDetectionTypeCatMeows"];
        v12 = @"AXSDSoundDetectionTypeCatMeows";
        if (v15)
        {
          goto LABEL_21;
        }

        v16 = [v10 isEqualToString:@"AXHASoundDetectionTypeDogBarks"];
        v12 = @"AXSDSoundDetectionTypeDogBarks";
        if (v16)
        {
          goto LABEL_21;
        }

        v17 = [v10 isEqualToString:@"AXHASoundDetectionTypeApplianceBeeps"];
        v12 = @"AXSDSoundDetectionTypeApplianceBeeps";
        if (v17)
        {
          goto LABEL_21;
        }

        v18 = [v10 isEqualToString:@"AXHASoundDetectionTypeApplianceBuzzes"];
        v12 = @"AXSDSoundDetectionTypeApplianceBuzzes";
        if (v18)
        {
          goto LABEL_21;
        }

        v19 = [v10 isEqualToString:@"AXHASoundDetectionTypeApplianceBellDings"];
        v12 = @"AXSDSoundDetectionTypeApplianceBellDings";
        if (v19)
        {
          goto LABEL_21;
        }

        v20 = [v10 isEqualToString:@"AXHASoundDetectionTypeCarHorns"];
        v12 = @"AXSDSoundDetectionTypeCarHorns";
        if (v20)
        {
          goto LABEL_21;
        }

        v21 = [v10 isEqualToString:@"AXHASoundDetectionTypeDoorbells"];
        v12 = @"AXSDSoundDetectionTypeDoorbells";
        if (v21)
        {
          goto LABEL_21;
        }

        v22 = [v10 isEqualToString:@"AXHASoundDetectionTypeDoorKnocks"];
        v12 = @"AXSDSoundDetectionTypeDoorKnocks";
        if (v22)
        {
          goto LABEL_21;
        }

        if ([v10 isEqualToString:@"AXHASoundDetectionTypeWaterRunning"])
        {
          goto LABEL_18;
        }

        v23 = [v10 isEqualToString:@"AXHASoundDetectionTypeDistressedBaby"];
        v12 = @"AXSDSoundDetectionTypeDistressedBaby";
        if (v23)
        {
          goto LABEL_21;
        }

        v24 = [v10 isEqualToString:@"AXHASoundDetectionTypePersonShouting"];
        v12 = @"AXSDSoundDetectionTypePersonShouting";
        if (v24)
        {
          goto LABEL_21;
        }

        if ([v10 isEqualToString:@"AXHASoundDetectionTypeWaterRunning"])
        {
LABEL_18:
          v12 = @"AXSDSoundDetectionTypeWaterRunning";
LABEL_21:
          [v4 addObject:v12];
          goto LABEL_22;
        }

        v25 = [v10 isEqualToString:@"AXHASoundDetectionTypeCough"];
        v12 = @"AXSDSoundDetectionTypeCough";
        if (v25)
        {
          goto LABEL_21;
        }

        v26 = [v10 isEqualToString:@"AXHASoundDetectionTypeGlassBreaking"];
        v12 = @"AXSDSoundDetectionTypeGlassBreaking";
        if (v26)
        {
          goto LABEL_21;
        }

        v27 = [v10 isEqualToString:@"AXHASoundDetectionTypKettle"];
        v12 = @"AXSDSoundDetectionTypeKettle";
        if (v27)
        {
          goto LABEL_21;
        }

LABEL_22:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v28 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v7 = v28;
    }

    while (v28);
  }

  return v4;
}

- (void)_ensureDefaultBrailleRotorItemExists
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v2 = +[AXSettings sharedInstance];
  voiceOverBrailleLanguageRotorItems = [v2 voiceOverBrailleLanguageRotorItems];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_349C;
  v17[3] = &unk_8290;
  v17[4] = &v18;
  [voiceOverBrailleLanguageRotorItems enumerateObjectsUsingBlock:v17];

  if ((v19[3] & 1) == 0)
  {
    v4 = +[AXSettings sharedInstance];
    voiceOverBrailleLanguageRotorItems2 = [v4 voiceOverBrailleLanguageRotorItems];
    v6 = [voiceOverBrailleLanguageRotorItems2 mutableCopy];

    if (!v6)
    {
      v6 = +[NSMutableArray array];
    }

    v7 = +[AXLanguageManager sharedInstance];
    userLocale = [v7 userLocale];

    v9 = +[AXLanguageManager sharedInstance];
    userLocale2 = [v9 userLocale];
    v11 = [BRLTTableEnumerator defaultTableForLocale:userLocale2];

    localeIdentifier = [userLocale localeIdentifier];
    v24 = localeIdentifier;
    identifier = [v11 identifier];
    v25 = identifier;
    v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    v22[0] = @"Enabled";
    v22[1] = @"Default";
    v23[0] = &__kCFBooleanTrue;
    v23[1] = &__kCFBooleanTrue;
    v22[2] = @"LanguageDefaults";
    v23[2] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
    [v6 insertObject:v15 atIndex:0];
    v16 = +[AXSettings sharedInstance];
    [v16 setVoiceOverBrailleLanguageRotorItems:v6];
  }

  _Block_object_dispose(&v18, 8);
}

- (BOOL)_isFreshInstall
{
  if (([(AccessibilityDataMigrator *)self didUpgrade]& 1) != 0 || ([(AccessibilityDataMigrator *)self didRestoreFromBackup]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(AccessibilityDataMigrator *)self didMigrateBackupFromDifferentDevice]^ 1;
  }
}

@end