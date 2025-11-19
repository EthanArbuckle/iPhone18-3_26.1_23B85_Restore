@interface HKBridgePrivacyController
+ (BOOL)shouldShowSmartStackPrivacySwitch;
- (BOOL)_doesDeviceSupportOxygenSaturationRecording;
- (BOOL)_hasOxygenSaturationRecordingBeenOnboarded;
- (BOOL)_isRespiratoryRateEnabled;
- (BOOL)_isRespiratoryRateRescinded;
- (BOOL)_isWristTemperatureEnabledWithFeatureStatus:(id)a3;
- (BOOL)_isWristTemperatureRescindedWithFeatureStatus:(id)a3;
- (BOOL)_shouldShowOxygenSaturationSection;
- (BOOL)_shouldShowRespiratoryRateSection;
- (BOOL)_shouldShowWristTemperatureSectionWithFeatureStatus:(id)a3;
- (HKBridgePrivacyController)init;
- (id)_footerTextForGroupID:(id)a3;
- (id)_wristTemperatureGroupSpecifierWithFeatureStatus:(id)a3;
- (id)_wristTemperatureSpecifiers;
- (id)_wristTemperatureSwitchSpecifierWithFeatureStatus:(id)a3;
- (id)fitnessTrackingEnabled:(id)a3;
- (id)heartRateEnabled:(id)a3;
- (id)oxygenSaturationEnabled:(id)a3;
- (id)respiratoryRateEnabled:(id)a3;
- (id)smartStackAudioEnabled:(id)a3;
- (id)specifiers;
- (id)wristTemperatureEnabled:(id)a3;
- (void)_didTapRespiratoryRateRescindedLearnMore;
- (void)_didTapWristTemperatureRescindedLearnMore;
- (void)_registerObservers;
- (void)_unregisterObservers;
- (void)privacyDefaultsDidChange;
- (void)resetMotionCalibrationConfirmed:(id)a3;
- (void)setFitnessTrackingEnabled:(id)a3 specifier:(id)a4;
- (void)setHeartRateEnabled:(id)a3 specifier:(id)a4;
- (void)setNoiseEnabled:(id)a3 specifier:(id)a4;
- (void)setOxygenSaturationEnabled:(id)a3 specifier:(id)a4;
- (void)setRespiratoryRateEnabled:(id)a3 specifier:(id)a4;
- (void)setSmartStackAudioEnabled:(id)a3 specifier:(id)a4;
- (void)setWristTemperatureEnabled:(id)a3 specifier:(id)a4;
- (void)showSettingsPrivacyPane;
@end

@implementation HKBridgePrivacyController

- (HKBridgePrivacyController)init
{
  v19.receiver = self;
  v19.super_class = HKBridgePrivacyController;
  v2 = [(HKBridgePrivacyController *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKHealthStore);
    v4 = [[FIUIUnitManager alloc] initWithHealthStore:v3];
    v5 = [[FIUIFormattingManager alloc] initWithUnitManager:v4];
    formattingManager = v2->_formattingManager;
    v2->_formattingManager = v5;

    v2->_activityMoveMode = FIActivityMoveModeWithHealthStore();
    v7 = +[HKRPOxygenSaturationSettings standardSettings];
    oxygenSaturationSettings = v2->_oxygenSaturationSettings;
    v2->_oxygenSaturationSettings = v7;

    v9 = [HKFeatureAvailabilityStore alloc];
    v10 = [v9 initWithFeatureIdentifier:HKFeatureIdentifierOxygenSaturationRecording healthStore:v3];
    oxygenSaturationFeatureAvailabilityStore = v2->_oxygenSaturationFeatureAvailabilityStore;
    v2->_oxygenSaturationFeatureAvailabilityStore = v10;

    v12 = [HKFeatureStatusManager alloc];
    v13 = [v12 initWithFeatureIdentifier:HKFeatureIdentifierRespiratoryRateMeasurements healthStore:v3];
    respiratoryRateStatusManager = v2->_respiratoryRateStatusManager;
    v2->_respiratoryRateStatusManager = v13;

    v15 = [HKFeatureStatusManager alloc];
    v16 = [v15 initWithFeatureIdentifier:HKFeatureIdentifierSleepingWristTemperatureMeasurements healthStore:v3];
    wristTemperatureStatusManager = v2->_wristTemperatureStatusManager;
    v2->_wristTemperatureStatusManager = v16;
  }

  return v2;
}

- (void)_registerObservers
{
  if (![(HKBridgePrivacyController *)self hasRegisteredObservers])
  {
    if ([(HKBridgePrivacyController *)self _doesDeviceSupportOxygenSaturationRecording])
    {
      [(HKFeatureAvailabilityStore *)self->_oxygenSaturationFeatureAvailabilityStore registerObserver:self queue:&_dispatch_main_q];
      [(HKRPOxygenSaturationSettings *)self->_oxygenSaturationSettings addObserver:self queue:&_dispatch_main_q];
    }

    [(HKFeatureStatusManager *)self->_respiratoryRateStatusManager registerObserver:self queue:&_dispatch_main_q];
    [(HKFeatureStatusManager *)self->_wristTemperatureStatusManager registerObserver:self queue:&_dispatch_main_q];

    v3 = +[NHSSPrivacyDefaults sharedInstance];
    [v3 addObserver:self];

    [(HKBridgePrivacyController *)self setHasRegisteredObservers:1];
  }
}

- (void)_unregisterObservers
{
  if ([(HKBridgePrivacyController *)self hasRegisteredObservers])
  {
    [(HKFeatureAvailabilityStore *)self->_oxygenSaturationFeatureAvailabilityStore unregisterObserver:self];
    [(HKRPOxygenSaturationSettings *)self->_oxygenSaturationSettings removeObserver:self];
    [(HKFeatureStatusManager *)self->_respiratoryRateStatusManager unregisterObserver:self];
    [(HKFeatureStatusManager *)self->_wristTemperatureStatusManager unregisterObserver:self];
    v3 = +[NHSSPrivacyDefaults sharedInstance];
    [v3 removeObserver:self];

    [(HKBridgePrivacyController *)self setHasRegisteredObservers:0];
  }
}

- (id)_footerTextForGroupID:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"HEART_RATE_ENABLED_GROUP_ID"])
  {
    v5 = +[HKHeartRhythmAvailability isElectrocardiogramSupportedOnAnyWatch];
    v6 = @"HEART_RATE_ENABLED_FOOTER";
    if (v5)
    {
      v6 = @"HEART_RATE_ENABLED_FOOTER_ECG";
    }

    activityMoveMode = self->_activityMoveMode;
    v8 = v6;
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    formattingManager = self->_formattingManager;
    if (activityMoveMode == 2)
    {
      [(FIUIFormattingManager *)formattingManager localizationKeyForMoveMinutesBaseKey:v8];
    }

    else
    {
      [(FIUIFormattingManager *)formattingManager localizationKeyForEnergyBaseKey:v8];
    }
    v14 = ;

    v15 = [v9 localizedStringForKey:v14 value:&stru_C4D8 table:@"Privacy"];

    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"ENVIRONMENTAL_AUDIO_ENABLED_GROUP_ID"])
  {
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = v11;
    v12 = @"ENVIRONMENTAL_AUDIO_ENABLED_FOOTER";
LABEL_8:
    v13 = [v11 localizedStringForKey:v12 value:&stru_C4D8 table:@"Privacy"];
LABEL_13:
    v15 = v13;
LABEL_14:

    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"SMART_STACK_AUDIO_ENABLED_GROUP_ID"])
  {
    v9 = +[NHSSPrivacyDefaults sharedInstance];
    v13 = [v9 localizedMicrophonePermissionSwitchFootnote];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"FITNESS_TRACKING_ENABLED_GROUP_ID"])
  {
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = v11;
    v12 = @"FITNESS_TRACKING_ENABLED_FOOTER";
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"OXYGEN_SATURATION_ENABLED_GROUP_ID"])
  {
    v15 = [(HKRPOxygenSaturationSettings *)self->_oxygenSaturationSettings aboutBloodOxygenFooter];
  }

  else
  {
    if ([v4 isEqualToString:@"TIME_IN_DAYLIGHT_ENABLED_GROUP_ID"])
    {
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = v11;
      v12 = @"TIME_IN_DAYLIGHT_ENABLED_FOOTER";
      goto LABEL_8;
    }

    v15 = 0;
  }

LABEL_15:

  return v15;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(HKBridgePrivacyController *)self loadSpecifiersFromPlistName:@"Privacy" target:self];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v90 objects:v97 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v91;
      v9 = PSFooterTextGroupKey;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v91 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v90 + 1) + 8 * i);
          v12 = [v11 identifier];
          v13 = [(HKBridgePrivacyController *)self _footerTextForGroupID:v12];
          [v11 setProperty:v13 forKey:v9];
        }

        v7 = [v5 countByEnumeratingWithState:&v90 objects:v97 count:16];
      }

      while (v7);
    }

    v14 = [v5 specifierForID:@"OXYGEN_SATURATION_ENABLED_SWITCH_ID"];
    v15 = [v5 indexOfObject:v14];

    v16 = [(HKBridgePrivacyController *)self _wristTemperatureSpecifiers];
    v17 = v16;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 addObjectsFromArray:v16];
    }

    else if ([v16 count])
    {
      v18 = 0;
      v19 = v15 + 1;
      do
      {
        v20 = [v17 objectAtIndexedSubscript:v18];
        [v5 insertObject:v20 atIndex:&v19[v18]];

        ++v18;
      }

      while (v18 < [v17 count]);
    }

    v21 = [PSSpecifier groupSpecifierWithID:@"PRIVACY_SETTINGS"];
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"PRIVACY_SETTINGS" value:&stru_C4D8 table:@"Privacy"];

    v24 = v23;
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"SHARED_SETTINGS_DESCRIPTION" value:&stru_C4D8 table:@"Privacy"];

    v89 = v24;
    v27 = [v26 rangeOfString:v24 options:5];
    v29 = v28;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v87 = PSFooterCellClassGroupKey;
    [v21 setProperty:v31 forKey:?];

    v88 = v26;
    v85 = PSFooterHyperlinkViewTitleKey;
    [v21 setProperty:v26 forKey:?];
    v99.location = v27;
    v99.length = v29;
    v32 = NSStringFromRange(v99);
    v33 = PSFooterHyperlinkViewLinkRangeKey;
    [v21 setProperty:v32 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v34 = [NSValue valueWithNonretainedObject:self];
    v86 = PSFooterHyperlinkViewTargetKey;
    [v21 setProperty:v34 forKey:?];

    v35 = NSStringFromSelector("showSettingsPrivacyPane");
    v84 = PSFooterHyperlinkViewActionKey;
    [v21 setProperty:v35 forKey:?];

    [v5 insertObject:v21 atIndex:0];
    v36 = +[BPSBridgeAppContext shared];
    v37 = [v36 activeDevice];
    LOBYTE(v35) = BPSDeviceHasCapabilityForString();

    if (v35)
    {
      v38 = [v5 specifierForID:@"ENVIRONMENTAL_AUDIO_ENABLED_SWITCH_ID"];
      [v38 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    }

    else
    {
      v38 = [v5 specifierForID:@"ENVIRONMENTAL_AUDIO_ENABLED_GROUP_ID"];
      v39 = [v5 specifierForID:@"ENVIRONMENTAL_AUDIO_ENABLED_SWITCH_ID"];
      v40 = [NSArray arrayWithObjects:v38, v39, 0];
      [v5 removeObjectsInArray:v40];
    }

    if ([objc_opt_class() shouldShowSmartStackPrivacySwitch])
    {
      v41 = [v5 specifierForID:@"SMART_STACK_AUDIO_ENABLED_SWITCH_ID"];
      v42 = +[NHSSPrivacyDefaults sharedInstance];
      v43 = [v42 localizedMicrophonePermissionSwitchName];
      [v41 setName:v43];

      [v41 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    }

    else
    {
      v41 = [v5 specifierForID:@"SMART_STACK_AUDIO_ENABLED_GROUP_ID"];
      v44 = [v5 specifierForID:@"SMART_STACK_AUDIO_ENABLED_SWITCH_ID"];
      v45 = [NSArray arrayWithObjects:v41, v44, 0];
      [v5 removeObjectsInArray:v45];
    }

    v46 = +[BPSBridgeAppContext shared];
    v47 = [v46 activeDevice];
    HasCapabilityForString = BPSDeviceHasCapabilityForString();

    if (HasCapabilityForString)
    {
      v49 = [v5 specifierForID:@"HeadphoneAudio"];
      [v49 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    }

    else
    {
      v50 = [v5 specifierForID:@"HEADPHONE_AUDIO_MEASUREMENTS_GROUP_ID"];
      v49 = [v5 specifierForID:@"HeadphoneAudio"];
      [v5 removeObject:v49];
    }

    if ([(HKBridgePrivacyController *)self _shouldShowOxygenSaturationSection])
    {
      v51 = [v5 specifierForID:@"OXYGEN_SATURATION_ENABLED_SWITCH_ID"];
      v52 = [(HKRPOxygenSaturationSettings *)self->_oxygenSaturationSettings backgroundRecordingsTitle];
      [v51 setName:v52];

      [v51 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    }

    else
    {
      v51 = [v5 specifierForID:@"OXYGEN_SATURATION_ENABLED_GROUP_ID"];
      v96[0] = v51;
      v53 = [v5 specifierForID:@"OXYGEN_SATURATION_ENABLED_SWITCH_ID"];
      v96[1] = v53;
      v54 = [NSArray arrayWithObjects:v96 count:2];
      [v5 removeObjectsInArray:v54];
    }

    v55 = +[BPSBridgeAppContext shared];
    v56 = [v55 activeDevice];
    v57 = BPSDeviceHasCapabilityForString();

    if (v57)
    {
      v58 = [v5 specifierForID:@"TIME_IN_DAYLIGHT_ENABLED_SWITCH_ID"];
      [v58 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    }

    else
    {
      v58 = [v5 specifierForID:@"TIME_IN_DAYLIGHT_ENABLED_GROUP_ID"];
      v95[0] = v58;
      v59 = [v5 specifierForID:@"TIME_IN_DAYLIGHT_ENABLED_SWITCH_ID"];
      v95[1] = v59;
      v60 = [NSArray arrayWithObjects:v95 count:2];
      [v5 removeObjectsInArray:v60];
    }

    v61 = [v5 specifierForID:@"RESPIRATORY_RATE_GROUP_ID"];
    v62 = [v5 specifierForID:@"RESPIRATORY_RATE_LABEL"];
    if ([(HKBridgePrivacyController *)self _shouldShowRespiratoryRateSection])
    {
      v83 = v33;
      v63 = [(HKBridgePrivacyController *)self _isRespiratoryRateRescinded];
      v64 = [NSNumber numberWithBool:v63 ^ 1];
      [v62 setProperty:v64 forKey:PSEnabledKey];

      v65 = [NSBundle bundleForClass:objc_opt_class()];
      v66 = v65;
      if (v63)
      {
        [v65 localizedStringForKey:@"RESPIRATORY_RATE_RESCINDED_FOOTER_LEARN_MORE" value:&stru_C4D8 table:@"Privacy"];
        v67 = v81 = v21;

        v82 = v3;
        v68 = [NSBundle bundleForClass:objc_opt_class()];
        v69 = [v68 localizedStringForKey:@"RESPIRATORY_RATE_RESCINDED_FOOTER_FORMAT" value:&stru_C4D8 table:@"Privacy"];
        v70 = [NSBundle bundleForClass:objc_opt_class()];
        v71 = [v70 localizedStringForKey:@"RESPIRATORY_RATE_RESCINDED_FOOTER_TEXT" value:&stru_C4D8 table:@"Privacy"];
        v72 = [NSString stringWithFormat:v69, v71, v67];

        v3 = v82;
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        [v61 setObject:v74 forKeyedSubscript:v87];

        [v61 setObject:v72 forKeyedSubscript:v85];
        v75 = v67;
        v21 = v81;
        v100.location = [v72 rangeOfString:v75];
        v76 = NSStringFromRange(v100);
        [v61 setObject:v76 forKeyedSubscript:v83];

        v77 = [NSValue valueWithNonretainedObject:self];
        [v61 setObject:v77 forKeyedSubscript:v86];

        [v61 setObject:@"_didTapRespiratoryRateRescindedLearnMore" forKeyedSubscript:v84];
        v66 = v75;
      }

      else
      {
        v78 = [v65 localizedStringForKey:@"RESPIRATORY_RATE_FOOTER" value:&stru_C4D8 table:@"Privacy"];
        [v61 setObject:v78 forKeyedSubscript:PSFooterTextGroupKey];
      }
    }

    else
    {
      v94[0] = v61;
      v94[1] = v62;
      v66 = [NSArray arrayWithObjects:v94 count:2];
      [v5 removeObjectsInArray:v66];
    }

    v79 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)showSettingsPrivacyPane
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = +[HAServicesDefines internalPrivacySettingsURLString];
  v3 = [NSURL URLWithString:v2];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (void)resetMotionCalibrationConfirmed:(id)a3
{
  v7 = 0;
  v3 = [CMNatalimeter resetCalibrationDataWithError:&v7];
  v4 = v7;
  _HKInitializeLogging();
  v5 = HKLogDefault;
  if (v3)
  {
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[Fitness] Reset motion calibration data", v6, 2u);
    }
  }

  else if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    sub_4E10(v4, v5);
  }
}

- (id)fitnessTrackingEnabled:(id)a3
{
  v3 = FIIsFitnessTrackingEnabled();

  return [NSNumber numberWithBool:v3];
}

- (void)setFitnessTrackingEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  _FISetFitnessTrackingEnabled(v4);
}

- (id)heartRateEnabled:(id)a3
{
  v3 = FIUIIsHeartRateEnabled();

  return [NSNumber numberWithBool:v3];
}

- (void)setHeartRateEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  _FIUISetHeartRateEnabled(v4);
}

- (id)respiratoryRateEnabled:(id)a3
{
  v3 = [(HKBridgePrivacyController *)self _isRespiratoryRateEnabled];

  return [NSNumber numberWithBool:v3];
}

- (void)setRespiratoryRateEnabled:(id)a3 specifier:(id)a4
{
  respiratoryRateStatusManager = self->_respiratoryRateStatusManager;
  v5 = a3;
  v6 = [(HKFeatureStatusManager *)respiratoryRateStatusManager featureAvailabilityProviding];
  [v6 setFeatureSettingNumber:v5 forKey:HKFeatureSettingsKeyEnabled completion:&stru_C3B8];
}

- (void)setNoiseEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[HUNoiseSettings sharedInstance];
  [v5 setNoiseEnabled:v4];

  v6 = +[HUNoiseSettings sharedInstance];
  v7 = [v6 onboardingCompleted];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4 == 0;
  }

  if (!v8)
  {
    v9 = +[HUNoiseSettings sharedInstance];
    [v9 setOnboardingCompleted:1];

    v10 = +[HUNoiseSettings sharedInstance];
    [v10 setNotificationsEnabled:1];
  }
}

- (void)setSmartStackAudioEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[NHSSPrivacyDefaults sharedInstance];
  v7 = v5;
  if (v4)
  {
    v6 = 1735552628;
  }

  else
  {
    v6 = 1684369017;
  }

  [v5 setMicrophonePermission:v6];
}

- (id)smartStackAudioEnabled:(id)a3
{
  v3 = +[NHSSPrivacyDefaults sharedInstance];
  if ([v3 microphonePermission] == 1735552628)
  {
    v4 = &off_CBB8;
  }

  else
  {
    v4 = &off_CBD0;
  }

  v5 = v4;

  return v4;
}

- (id)wristTemperatureEnabled:(id)a3
{
  v4 = [(HKFeatureStatusManager *)self->_wristTemperatureStatusManager featureStatusWithError:0];
  if (v4)
  {
    v5 = [NSNumber numberWithBool:[(HKBridgePrivacyController *)self _isWristTemperatureEnabledWithFeatureStatus:v4]];
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  return v5;
}

- (void)setWristTemperatureEnabled:(id)a3 specifier:(id)a4
{
  wristTemperatureStatusManager = self->_wristTemperatureStatusManager;
  v5 = a3;
  v6 = [(HKFeatureStatusManager *)wristTemperatureStatusManager featureAvailabilityProviding];
  [v6 setFeatureSettingNumber:v5 forKey:HKFeatureSettingsKeyEnabled completion:&stru_C3D8];
}

- (id)oxygenSaturationEnabled:(id)a3
{
  v4 = ([(HKRPOxygenSaturationSettings *)self->_oxygenSaturationSettings oxygenSaturationDisabled]& 1) == 0 && [(HKBridgePrivacyController *)self _hasOxygenSaturationRecordingBeenOnboarded];

  return [NSNumber numberWithInt:v4];
}

- (void)setOxygenSaturationEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  [(HKRPOxygenSaturationSettings *)self->_oxygenSaturationSettings setOxygenSaturationDisabled:v5 ^ 1];
  oxygenSaturationSettings = self->_oxygenSaturationSettings;

  [(HKRPOxygenSaturationSettings *)oxygenSaturationSettings setBackgroundRecordingsEnabled:v5];
}

- (BOOL)_shouldShowOxygenSaturationSection
{
  v3 = [(HKBridgePrivacyController *)self _doesDeviceSupportOxygenSaturationRecording];
  if (v3)
  {
    v3 = [(HKBridgePrivacyController *)self _hasOxygenSaturationRecordingBeenOnboarded];
    if (v3)
    {
      LOBYTE(v3) = ![(HKBridgePrivacyController *)self _isOxygenSaturationRecordingRemoteDisabled];
    }
  }

  return v3;
}

- (BOOL)_doesDeviceSupportOxygenSaturationRecording
{
  if (HKRPShouldSkipHardwareCheck())
  {
    return 1;
  }

  v3 = +[BPSBridgeAppContext shared];
  v4 = [v3 activeDevice];
  HasCapabilityForString = BPSDeviceHasCapabilityForString();

  return HasCapabilityForString;
}

- (BOOL)_hasOxygenSaturationRecordingBeenOnboarded
{
  v2 = [(HKFeatureAvailabilityStore *)self->_oxygenSaturationFeatureAvailabilityStore isCurrentOnboardingVersionCompletedWithError:0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)_shouldShowRespiratoryRateSection
{
  respiratoryRateStatusManager = self->_respiratoryRateStatusManager;
  v13 = 0;
  v3 = [(HKFeatureStatusManager *)respiratoryRateStatusManager featureStatusWithError:&v13];
  v4 = v13;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:HKFeatureAvailabilityContextUsage];
    v6 = [v5 objectForKeyedSubscript:HKFeatureAvailabilityRequirementIdentifierCapabilityIsSupportedOnActiveRemoteDevice];
    v7 = [v6 BOOLValue];

    v8 = [v5 objectForKeyedSubscript:HKFeatureAvailabilityRequirementIdentifierNotAgeGatedForUserDefaultsKey];
    v9 = [v8 BOOLValue];

    v10 = [v3 isOnboardingRecordPresent] & v7 & v9;
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_4E88(v4, v11);
    }

    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_isRespiratoryRateRescinded
{
  v2 = [(HKFeatureStatusManager *)self->_respiratoryRateStatusManager featureStatusWithError:0];
  v3 = [v2 objectForKeyedSubscript:HKFeatureAvailabilityContextUsage];
  v4 = [v3 objectForKeyedSubscript:HKFeatureAvailabilityRequirementIdentifierCountryIsSupportedOnActiveRemoteDevice];
  v5 = [v4 BOOLValue];

  v6 = [v3 objectForKeyedSubscript:HKFeatureAvailabilityRequirementIdentifierFeatureIsNotRemotelyDisabled];
  v7 = [v6 BOOLValue];

  return v5 & v7 ^ 1;
}

- (BOOL)_isRespiratoryRateEnabled
{
  if ([(HKBridgePrivacyController *)self _isRespiratoryRateRescinded])
  {
    return 0;
  }

  v4 = [(HKFeatureStatusManager *)self->_respiratoryRateStatusManager featureStatusWithError:0];
  v5 = [v4 onboardingRecord];
  v6 = [v5 featureSettings];
  v7 = [v6 numberForKey:HKFeatureSettingsKeyEnabled];

  v8 = [v7 BOOLValue];
  if (v7)
  {
    v3 = v8;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_didTapRespiratoryRateRescindedLearnMore
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"RESPIRATORY_RATE_RESCINDED_FOOTER_LEARN_MORE_URL" value:&stru_C4D8 table:@"Privacy"];
  v5 = [NSURL URLWithString:v3];

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openURL:v5 withOptions:0];
}

- (id)_wristTemperatureSpecifiers
{
  v3 = [(HKFeatureStatusManager *)self->_wristTemperatureStatusManager featureStatusWithError:0];
  if (v3 && [(HKBridgePrivacyController *)self _shouldShowWristTemperatureSectionWithFeatureStatus:v3])
  {
    v4 = [(HKBridgePrivacyController *)self _wristTemperatureGroupSpecifierWithFeatureStatus:v3];
    v8[0] = v4;
    v5 = [(HKBridgePrivacyController *)self _wristTemperatureSwitchSpecifierWithFeatureStatus:v3];
    v8[1] = v5;
    v6 = [NSArray arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)_wristTemperatureGroupSpecifierWithFeatureStatus:(id)a3
{
  v4 = a3;
  v5 = [PSSpecifier groupSpecifierWithID:@"WRIST_TEMPERATURE_GROUP_ID"];
  v6 = [(HKBridgePrivacyController *)self _isWristTemperatureRescindedWithFeatureStatus:v4];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 localizedStringForKey:@"WRIST_TEMPERATURE_RESCINDED_FOOTER_LEARN_MORE" value:&stru_C4D8 table:@"Privacy-Kali"];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"WRIST_TEMPERATURE_RESCINDED_FOOTER_FORMAT" value:&stru_C4D8 table:@"Privacy-Kali"];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"WRIST_TEMPERATURE_RESCINDED_FOOTER_TEXT" value:&stru_C4D8 table:@"Privacy-Kali"];
    v14 = [NSString stringWithFormat:v11, v13, v9];

    [v5 setObject:v14 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v5 setObject:v16 forKeyedSubscript:PSFooterCellClassGroupKey];

    v22.location = [v14 rangeOfString:v9];
    v17 = NSStringFromRange(v22);
    [v5 setObject:v17 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

    v18 = [NSValue valueWithNonretainedObject:self];
    [v5 setObject:v18 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

    v19 = NSStringFromSelector("_didTapWristTemperatureRescindedLearnMore");
    [v5 setObject:v19 forKeyedSubscript:PSFooterHyperlinkViewActionKey];

    v8 = v9;
  }

  else
  {
    v14 = [v7 localizedStringForKey:@"WRIST_TEMPERATURE_FOOTER" value:&stru_C4D8 table:@"Privacy-Kali"];
    [v5 setObject:v14 forKeyedSubscript:PSFooterTextGroupKey];
  }

  return v5;
}

- (id)_wristTemperatureSwitchSpecifierWithFeatureStatus:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"WRIST_TEMPERATURE_LABEL" value:&stru_C4D8 table:@"Privacy-Kali"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setWristTemperatureEnabled:specifier:" get:"wristTemperatureEnabled:" detail:0 cell:6 edit:0];

  [v7 setIdentifier:@"WRIST_TEMPERATURE_SWITCH_ID"];
  LODWORD(self) = [(HKBridgePrivacyController *)self _isWristTemperatureRescindedWithFeatureStatus:v4];

  v8 = [NSNumber numberWithBool:self ^ 1];
  [v7 setProperty:v8 forKey:PSEnabledKey];

  return v7;
}

- (BOOL)_shouldShowWristTemperatureSectionWithFeatureStatus:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:HKFeatureAvailabilityContextSettingsVisibility];
  v4 = [v3 areAllRequirementsSatisfied];

  return v4;
}

- (BOOL)_isWristTemperatureRescindedWithFeatureStatus:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:HKFeatureAvailabilityContextSettingsUserInteractionEnabled];
  v4 = [v3 areAllRequirementsSatisfied];

  return v4 ^ 1;
}

- (BOOL)_isWristTemperatureEnabledWithFeatureStatus:(id)a3
{
  v4 = a3;
  if ([(HKBridgePrivacyController *)self _isWristTemperatureRescindedWithFeatureStatus:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 onboardingRecord];
    v7 = [v6 featureSettings];
    v8 = [v7 numberForKey:HKFeatureSettingsKeyEnabled];

    if (v8)
    {
      v5 = [v8 BOOLValue];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)_didTapWristTemperatureRescindedLearnMore
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WRIST_TEMPERATURE_RESCINDED_FOOTER_LEARN_MORE_URL" value:&stru_C4D8 table:@"Privacy-Kali"];
  v5 = [NSURL URLWithString:v3];

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openURL:v5 withOptions:0];
}

- (void)privacyDefaultsDidChange
{
  v3 = [(HKBridgePrivacyController *)self specifiers];
  v4 = [v3 specifierForID:@"SMART_STACK_AUDIO_ENABLED_SWITCH_ID"];

  [(HKBridgePrivacyController *)self reloadSpecifier:v4];
}

+ (BOOL)shouldShowSmartStackPrivacySwitch
{
  v2 = +[BPSBridgeAppContext shared];
  v3 = [v2 activeDevice];
  HasCapabilityForString = BPSDeviceHasCapabilityForString();

  return HasCapabilityForString & (_os_feature_enabled_impl() ^ 1);
}

@end