@interface AccessibilityAirPodSettingsController
- (AccessibilityAirPodSettingsController)init;
- (BOOL)isBeatsProduct;
- (BOOL)supportsSpatialAudio;
- (double)caseToneVolumeValue;
- (double)holdSpeedValue;
- (double)tapSpeedValue;
- (double)toneVolumeValue;
- (double)volumeSwipeDurationValue;
- (id)caseTonesEnabled;
- (id)caseTonesVolume:(id)volume;
- (id)noiseCancellation:(id)cancellation;
- (id)spatialAudioLock:(id)lock;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)toneVolume:(id)volume;
- (id)volumeSwipeEnabled:(id)enabled;
- (void)_updateCaseTonesVolumeFooter:(float)footer;
- (void)_updateToneVolumeFooter:(float)footer;
- (void)confirmationViewAcceptedForSpecifier:(id)specifier;
- (void)jumpToAVSettings:(id)settings;
- (void)loudNoiseToggled:(id)toggled;
- (void)setCaseTonesEnabled:(id)enabled specifier:(id)specifier;
- (void)setCaseTonesVolume:(id)volume specifier:(id)specifier;
- (void)setNoiseCancellation:(id)cancellation specifier:(id)specifier;
- (void)setSpatialAudioLock:(id)lock specifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
- (void)setToneVolume:(id)volume specifier:(id)specifier;
- (void)setVolumeSwipeEnabled:(id)enabled specifier:(id)specifier;
- (void)showLoudNoiseLearnMore;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActive;
@end

@implementation AccessibilityAirPodSettingsController

- (AccessibilityAirPodSettingsController)init
{
  v7.receiver = self;
  v7.super_class = AccessibilityAirPodSettingsController;
  v2 = [(AXUISettingsSetupCapableListController *)&v7 init];
  if (v2)
  {
    sharedInstance = [getPAHMSManagerClass() sharedInstance];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_reloadSpecifiers name:*MEMORY[0x1E69E4BC8] object:0];

    v5 = v2;
  }

  return v2;
}

- (double)toneVolumeValue
{
  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
  {
    [mEMORY[0x1E6989850] nps_toneVolumeForDeviceAddress:_btDeviceAddress];
    v7 = v6;
  }

  else
  {
    v7 = [mEMORY[0x1E6989850] toneVolumeForDeviceAddress:_btDeviceAddress];
  }

  return v7;
}

- (double)caseToneVolumeValue
{
  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
  {
    [mEMORY[0x1E6989850] nps_caseTonesVolumeForDeviceAddress:_btDeviceAddress];
    v7 = v6;
  }

  else
  {
    v7 = [mEMORY[0x1E6989850] caseTonesVolumeForDeviceAddress:_btDeviceAddress];
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AccessibilityAirPodSettingsController;
  [(AccessibilityAirPodSettingsController *)&v6 viewWillAppear:appear];
  [(AccessibilityAirPodSettingsController *)self toneVolumeValue];
  *&v4 = v4;
  [(AccessibilityAirPodSettingsController *)self _updateToneVolumeFooter:v4];
  [(AccessibilityAirPodSettingsController *)self caseToneVolumeValue];
  *&v5 = v5;
  [(AccessibilityAirPodSettingsController *)self _updateCaseTonesVolumeFooter:v5];
}

- (void)willBecomeActive
{
  v5.receiver = self;
  v5.super_class = AccessibilityAirPodSettingsController;
  [(AccessibilityAirPodSettingsController *)&v5 willBecomeActive];
  [(AccessibilityAirPodSettingsController *)self toneVolumeValue];
  *&v3 = v3;
  [(AccessibilityAirPodSettingsController *)self _updateToneVolumeFooter:v3];
  [(AccessibilityAirPodSettingsController *)self caseToneVolumeValue];
  *&v4 = v4;
  [(AccessibilityAirPodSettingsController *)self _updateCaseTonesVolumeFooter:v4];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = AccessibilityAirPodSettingsController;
  [(AXUISettingsSetupCapableListController *)&v9 viewDidLoad];
  table = [(AccessibilityAirPodSettingsController *)self table];
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)AXSettingsToneVolumeSliderCell];
  [table registerClass:v4 forCellReuseIdentifier:v5];

  table2 = [(AccessibilityAirPodSettingsController *)self table];
  v7 = objc_opt_class();
  v8 = +[(PSTableCell *)AXSettingsCaseTonesVolumeSliderCell];
  [table2 registerClass:v7 forCellReuseIdentifier:v8];
}

- (BOOL)supportsSpatialAudio
{
  if ([(AccessibilityAirPodSettingsController *)self isInWatchSettings])
  {
    return 0;
  }

  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  supportsSpatialAudio = [mEMORY[0x1E6989850] supportsSpatialAudio];

  return supportsSpatialAudio;
}

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = AccessibilityAirPodSettingsController;
  [(AccessibilityAirPodSettingsController *)&v7 setSpecifier:specifier];
  specifier = [(AccessibilityAirPodSettingsController *)self specifier];
  v5 = [specifier propertyForKey:@"AirPods"];
  firstObject = [v5 firstObject];

  if (firstObject)
  {
    objc_storeStrong(&self->_holdGroup, firstObject);
  }
}

- (BOOL)isBeatsProduct
{
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  LOBYTE(self) = [mEMORY[0x1E6989850] isBeatsProduct:self->_holdGroup];

  return self;
}

- (double)holdSpeedValue
{
  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
  {
    [mEMORY[0x1E6989850] nps_holdDurationForDeviceAddress:_btDeviceAddress];
  }

  else
  {
    [mEMORY[0x1E6989850] holdDurationForDeviceAddress:_btDeviceAddress];
  }

  v7 = v6;

  return v7;
}

- (double)tapSpeedValue
{
  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
  {
    [mEMORY[0x1E6989850] nps_tapSpeedForDeviceAddress:_btDeviceAddress];
  }

  else
  {
    [mEMORY[0x1E6989850] tapSpeedForDeviceAddress:_btDeviceAddress];
  }

  v7 = v6;

  return v7;
}

- (double)volumeSwipeDurationValue
{
  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
  {
    [mEMORY[0x1E6989850] nps_volumeSwipeDurationForDeviceAddress:_btDeviceAddress];
  }

  else
  {
    [mEMORY[0x1E6989850] volumeSwipeDurationForDeviceAddress:_btDeviceAddress];
  }

  v7 = v6;

  return v7;
}

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C57B8]);
  if (!v3)
  {
    v177 = *MEMORY[0x1E69C57B8];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
    address = [(PSSpecifier *)self->_holdGroup address];
    v7 = [mEMORY[0x1E6989850] supportsTapSpeedForDeviceAddress:address];

    v180 = v4;
    if (v7)
    {
      v8 = MEMORY[0x1E69C5748];
      v9 = AXAirPodsLocalizedStringForKey();
      v10 = [v8 groupSpecifierWithName:v9];
      detailItems = self->super._detailItems;
      self->super._detailItems = v10;

      v12 = *MEMORY[0x1E69C5938];
      [(NSArray *)self->super._detailItems setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5938]];
      v13 = self->super._detailItems;
      v14 = AXAirPodsLocalizedStringForKey();
      v15 = *MEMORY[0x1E69C5900];
      [(NSArray *)v13 setProperty:v14 forKey:*MEMORY[0x1E69C5900]];

      v16 = *MEMORY[0x1E69C5918];
      [(NSArray *)self->super._detailItems setProperty:@"TapGroup" forKey:*MEMORY[0x1E69C5918]];
      v17 = MEMORY[0x1E69C5748];
      v18 = AXAirPodsLocalizedStringForKey();
      v19 = [v17 preferenceSpecifierNamed:v18 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      [v19 setProperty:@"TapDefault" forKey:v16];
      v20 = MEMORY[0x1E69C5748];
      v21 = AXAirPodsLocalizedStringForKey();
      v22 = [v20 preferenceSpecifierNamed:v21 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      [v22 setProperty:@"TapSlow" forKey:v16];
      v23 = MEMORY[0x1E69C5748];
      v24 = AXAirPodsLocalizedStringForKey();
      v25 = [v23 preferenceSpecifierNamed:v24 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      [v25 setProperty:@"TapSlowest" forKey:v16];
      [(AccessibilityAirPodSettingsController *)self tapSpeedValue];
      *&v26 = v26;
      v27 = *&v26;
      v28 = v19;
      if (fabs(v27 + -0.25) <= 0.0500000007 || (v28 = v22, fabs(v27 + -0.45) <= 0.0500000007) || (v28 = v25, fabs(v27 + -0.65) <= 0.0500000007))
      {
        [(NSArray *)self->super._detailItems setProperty:v28 forKey:*MEMORY[0x1E69C5958]];
      }

      v178 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->super._detailItems, v19, v22, v25, 0}];
      [v4 addObjectsFromArray:?];
      v29 = MEMORY[0x1E69C5748];
      v30 = AXAirPodsLocalizedStringForKey();
      v31 = [v29 groupSpecifierWithName:v30];
      doubleTapGroup = self->_doubleTapGroup;
      self->_doubleTapGroup = v31;

      [(PSSpecifier *)self->_doubleTapGroup setProperty:MEMORY[0x1E695E118] forKey:v12];
      v33 = self->_doubleTapGroup;
      v34 = AXAirPodsLocalizedStringForKey();
      [(PSSpecifier *)v33 setProperty:v34 forKey:v15];

      [(PSSpecifier *)self->_doubleTapGroup setProperty:@"HoldGroup" forKey:v16];
      if ([(AccessibilityAirPodSettingsController *)self isBeatsProduct])
      {
        v35 = self->_doubleTapGroup;
        v36 = AXBeats463LocalizedStringForKey();
        [(PSSpecifier *)v35 setProperty:v36 forKey:v15];
      }

      v37 = MEMORY[0x1E69C5748];
      v38 = AXAirPodsLocalizedStringForKey();
      v39 = [v37 preferenceSpecifierNamed:v38 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      [v39 setProperty:@"HoldDefault" forKey:v16];
      v40 = MEMORY[0x1E69C5748];
      v41 = AXAirPodsLocalizedStringForKey();
      v42 = [v40 preferenceSpecifierNamed:v41 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      [v42 setProperty:@"HoldFast" forKey:v16];
      v43 = MEMORY[0x1E69C5748];
      v44 = AXAirPodsLocalizedStringForKey();
      v45 = [v43 preferenceSpecifierNamed:v44 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      [v45 setProperty:@"HoldFastest" forKey:v16];
      [(AccessibilityAirPodSettingsController *)self holdSpeedValue];
      *&v46 = v46;
      v47 = *&v46;
      v48 = v39;
      if (fabs(v47 + -0.5) <= 0.0500000007 || (v48 = v42, fabs(v47 + -0.4) <= 0.0500000007) || (v48 = v45, fabs(v47 + -0.35) <= 0.0500000007))
      {
        [(PSSpecifier *)self->_doubleTapGroup setProperty:v48 forKey:*MEMORY[0x1E69C5958]];
      }

      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_doubleTapGroup, v39, v42, v45, 0}];
      v4 = v180;
      [v180 addObjectsFromArray:v49];
    }

    mEMORY[0x1E6989850]2 = [MEMORY[0x1E6989850] sharedInstance];
    address2 = [(PSSpecifier *)self->_holdGroup address];
    v52 = [mEMORY[0x1E6989850]2 supportsNoiseCancellationEnabledForDeviceAddress:address2];

    if (v52)
    {
      v53 = AXAirPodsLocalizedStringForKey();
      if ([(AccessibilityAirPodSettingsController *)self isBeatsProduct])
      {
        v54 = AXAirPodsB494LocalizedStringForKey();

        v53 = v54;
      }

      AXDeviceIsRealityDevice();
      v57 = MEMORY[0x1E69C5748];
      v58 = AXAirPodsLocalizedStringForKey();
      v56 = [v57 groupSpecifierWithName:v58];

      [v56 setProperty:v53 forKey:*MEMORY[0x1E69C5900]];
      v59 = *MEMORY[0x1E69C5918];
      [v56 setProperty:@"NoiseControlGroup" forKey:*MEMORY[0x1E69C5918]];
      [v4 addObject:v56];
      v60 = MEMORY[0x1E69C5748];
      v61 = AXAirPodsLocalizedStringForKey();
      v55 = [v60 preferenceSpecifierNamed:v61 target:self set:sel_setNoiseCancellation_specifier_ get:sel_noiseCancellation_ detail:0 cell:6 edit:0];

      [v55 setProperty:@"NoiseControl" forKey:v59];
      [v4 addObject:v55];
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    AXDeviceIsPhone();
    v62 = AXAirPodsLocalizedStringForKey();
    if ([(AccessibilityAirPodSettingsController *)self isBeatsProduct])
    {
      if (AXDeviceIsPhone())
      {
        AXAirPodsLocalizedStringForKey();
      }

      else
      {
        AXAirPodsB494LocalizedStringForKey();
      }
      v63 = ;

      v62 = v63;
    }

    v179 = v62;
    if (![(AccessibilityAirPodSettingsController *)self isInWatchSettings])
    {
      address3 = [(PSSpecifier *)self->_holdGroup address];
      if (_os_feature_enabled_impl())
      {
        sharedInstance = [getHUAccessoryHearingSettingsClass() sharedInstance];
        v66 = [sharedInstance activeHearingProtectionAvailableForAddress:address3];

        if (v66)
        {
          emptyGroupSpecifier = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
          v68 = accessibilityHearingAidSupportBundle_Soft();
          v175 = [v68 localizedStringForKey:@"LoudNoiseToggleFooter" value:@"LoudNoiseToggleFooter" table:@"HearingProtection-Yodel"];

          v69 = accessibilityHearingAidSupportBundle_Soft();
          v70 = [v69 localizedStringForKey:@"LoudNoiseToggleLearnMore" value:@"LoudNoiseToggleLearnMore" table:@"HearingProtection-Yodel"];

          v174 = v70;
          v71 = [v175 stringByAppendingFormat:@" %@", v70];
          v72 = objc_opt_class();
          v73 = NSStringFromClass(v72);
          [emptyGroupSpecifier setProperty:v73 forKey:*MEMORY[0x1E69C58D8]];

          v173 = v71;
          [emptyGroupSpecifier setProperty:v71 forKey:*MEMORY[0x1E69C58F8]];
          v183.location = [v71 rangeOfString:v70];
          v74 = NSStringFromRange(v183);
          [emptyGroupSpecifier setProperty:v74 forKey:*MEMORY[0x1E69C58E8]];

          v75 = NSStringFromSelector(sel_showLoudNoiseLearnMore);
          [emptyGroupSpecifier setProperty:v75 forKey:*MEMORY[0x1E69C58E0]];

          v76 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
          [emptyGroupSpecifier setProperty:v76 forKey:*MEMORY[0x1E69C58F0]];

          [v180 addObject:emptyGroupSpecifier];
          sharedInstance2 = [getHUAccessoryHearingSettingsClass() sharedInstance];
          v78 = [sharedInstance2 activeHearingProtectionEnabledForAddress:address3];
          v79 = @"LoudNoiseToggleOn";
          if (v78)
          {
            v79 = @"LoudNoiseToggleOff";
          }

          v80 = v79;

          v81 = MEMORY[0x1E69C5748];
          v82 = accessibilityHearingAidSupportBundle_Soft();
          v83 = [v82 localizedStringForKey:v80 value:v80 table:@"HearingProtection-Yodel"];

          v84 = [v81 preferenceSpecifierNamed:v83 target:self set:0 get:0 detail:0 cell:13 edit:0];

          v62 = v179;
          [v84 setButtonAction:sel_loudNoiseToggled_];
          [v180 addObject:v84];

          v4 = v180;
        }
      }

      emptyGroupSpecifier2 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
      [emptyGroupSpecifier2 setProperty:v62 forKey:*MEMORY[0x1E69C5900]];
      [v4 addObject:emptyGroupSpecifier2];
      AXDeviceIsPhone();
      v86 = AXAirPodsLocalizedStringForKey();
      v87 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:v86 target:self set:0 get:0 detail:0 cell:13 edit:0];
      [v87 setButtonAction:sel_jumpToAVSettings_];
      [v87 setProperty:@"PERSONAL_AUDIO_AIRPODS_BUTTON" forKey:*MEMORY[0x1E69C5918]];
      [v4 addObject:v87];
    }

    if ([(AccessibilityAirPodSettingsController *)self supportsSpatialAudio])
    {
      mEMORY[0x1E6989850]3 = [MEMORY[0x1E6989850] sharedInstance];
      _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
      v90 = [mEMORY[0x1E6989850]3 supportsSpatialAudioForDeviceAddress:_btDeviceAddress];

      if (v90)
      {
        v91 = MEMORY[0x1E69C5748];
        v92 = AXAirPodsLocalizedStringForKey();
        v93 = [v91 groupSpecifierWithName:v92];

        v94 = AXLocStringKeyForModel();
        v95 = AXAirPodsLocalizedStringForKey();
        [v93 setProperty:v95 forKey:*MEMORY[0x1E69C5900]];

        v96 = *MEMORY[0x1E69C5918];
        [v93 setProperty:@"SPATIAL_AUDIO_GROUP" forKey:*MEMORY[0x1E69C5918]];
        [v93 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5938]];
        [v4 addObject:v93];
        v97 = MEMORY[0x1E69C5748];
        v98 = AXLocStringKeyForModel();
        v99 = AXAirPodsLocalizedStringForKey();
        v100 = [v97 preferenceSpecifierNamed:v99 target:self set:sel_setSpatialAudioLock_specifier_ get:sel_spatialAudioLock_ detail:0 cell:6 edit:0];

        [v100 setProperty:@"SPATIAL_AUDIO_SWITCH" forKey:v96];
        [v4 addObject:v100];
        v55 = v100;
        v56 = v93;
      }
    }

    mEMORY[0x1E6989850]4 = [MEMORY[0x1E6989850] sharedInstance];
    address4 = [(PSSpecifier *)self->_holdGroup address];
    v103 = [mEMORY[0x1E6989850]4 supportsCaseTonesForDeviceAddress:address4];

    v176 = v55;
    if (v103)
    {
      v104 = MEMORY[0x1E69C5748];
      v105 = AXBeats463LocalizedStringForKey();
      v106 = [v104 groupSpecifierWithName:v105];

      [v106 setProperty:@"CASE_TONES" forKey:*MEMORY[0x1E69C5918]];
      v107 = AXBeats463LocalizedStringForKey();
      [v106 setProperty:v107 forKey:*MEMORY[0x1E69C5900]];

      [v4 addObject:v106];
      v108 = AXBeats463LocalizedStringForKey();
      v109 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:v108 target:self set:sel_setCaseTonesEnabled_specifier_ get:sel_caseTonesEnabled detail:0 cell:6 edit:0];
      [v4 addObject:v109];

      v56 = v106;
    }

    mEMORY[0x1E6989850]5 = [MEMORY[0x1E6989850] sharedInstance];
    address5 = [(PSSpecifier *)self->_holdGroup address];
    v112 = [mEMORY[0x1E6989850]5 supportsCaseTonesVolumeForDeviceAddress:address5];

    v113 = MEMORY[0x1E69C58A0];
    v114 = MEMORY[0x1E69C5860];
    v115 = MEMORY[0x1E69C58A8];
    if (v112)
    {
      v116 = MEMORY[0x1E69C5860];
      v117 = MEMORY[0x1E69C58A8];
      v118 = MEMORY[0x1E69C5928];
      v119 = MEMORY[0x1E69C5748];
      v120 = AXBeats463LocalizedStringForKey();
      v121 = [v119 groupSpecifierWithName:v120];

      v122 = *MEMORY[0x1E69C5918];
      [v121 setProperty:@"CaseTonesVolumeFooterID" forKey:*MEMORY[0x1E69C5918]];
      v123 = AXBeats463LocalizedStringForKey();
      [v121 setProperty:v123 forKey:*MEMORY[0x1E69C5900]];

      [v180 addObject:v121];
      v124 = v118;
      v115 = v117;
      v114 = v116;
      v113 = MEMORY[0x1E69C58A0];
      v125 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:0 target:self set:sel_setCaseTonesVolume_specifier_ get:sel_caseTonesVolume_ detail:0 cell:5 edit:0];
      v126 = AXSpeakerMaxImage();
      [v125 setProperty:v126 forKey:*MEMORY[0x1E69C5970]];

      v127 = AXSpeakerMuteImage();
      [v125 setProperty:v127 forKey:*MEMORY[0x1E69C5968]];

      [v125 setProperty:&unk_1F4051BC0 forKey:*v113];
      [v125 setProperty:objc_opt_class() forKey:*v114];
      [v125 setProperty:&unk_1F4051BD8 forKey:*v115];
      [v125 setProperty:MEMORY[0x1E695E118] forKey:*v124];
      [v125 setProperty:@"CASE_TONES_VOLUME" forKey:v122];
      address6 = [(PSSpecifier *)self->_holdGroup address];
      [v125 setProperty:address6 forKey:@"BTAddress"];

      v129 = [MEMORY[0x1E696AD98] numberWithBool:{-[AccessibilityAirPodSettingsController isInWatchSettings](self, "isInWatchSettings")}];
      [v125 setProperty:v129 forKey:@"isInWatchSettings"];

      [v180 addObject:v125];
      v56 = v121;
    }

    mEMORY[0x1E6989850]6 = [MEMORY[0x1E6989850] sharedInstance];
    address7 = [(PSSpecifier *)self->_holdGroup address];
    v132 = [mEMORY[0x1E6989850]6 supportsToneVolumeForDeviceAddress:address7];

    if (v132)
    {
      v133 = MEMORY[0x1E69C5748];
      v134 = AXAirPodsLocalizedStringForKey();
      v135 = [v133 groupSpecifierWithName:v134];

      v136 = *MEMORY[0x1E69C5918];
      [v135 setProperty:@"ToneVolumeFooterID" forKey:*MEMORY[0x1E69C5918]];
      [v180 addObject:v135];
      v137 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:0 target:self set:sel_setToneVolume_specifier_ get:sel_toneVolume_ detail:0 cell:5 edit:0];
      v138 = AXSpeakerMaxImage();
      [v137 setProperty:v138 forKey:*MEMORY[0x1E69C5970]];

      v139 = AXSpeakerMuteImage();
      v140 = v180;
      [v137 setProperty:v139 forKey:*MEMORY[0x1E69C5968]];

      [v137 setProperty:&unk_1F4051BC0 forKey:*v113];
      [v137 setProperty:objc_opt_class() forKey:*v114];
      [v137 setProperty:&unk_1F4051BD8 forKey:*v115];
      [v137 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5928]];
      [v137 setProperty:@"TONE_VOLUME" forKey:v136];
      address8 = [(PSSpecifier *)self->_holdGroup address];
      [v137 setProperty:address8 forKey:@"BTAddress"];

      v142 = [MEMORY[0x1E696AD98] numberWithBool:{-[AccessibilityAirPodSettingsController isInWatchSettings](self, "isInWatchSettings")}];
      [v137 setProperty:v142 forKey:@"isInWatchSettings"];

      [v180 addObject:v137];
      v56 = v135;
    }

    else
    {
      v140 = v180;
    }

    mEMORY[0x1E6989850]7 = [MEMORY[0x1E6989850] sharedInstance];
    _btDeviceAddress2 = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
    v145 = [mEMORY[0x1E6989850]7 supportsVolumeSwipeForDeviceAddress:_btDeviceAddress2];

    if (v145)
    {
      v146 = MEMORY[0x1E69C5748];
      v147 = AXAirPodsB698LocalizedStringForKey();
      v148 = [v146 groupSpecifierWithName:v147];

      v149 = AXAirPodsB698LocalizedStringForKey();
      v150 = *MEMORY[0x1E69C5900];
      [v148 setProperty:v149 forKey:*MEMORY[0x1E69C5900]];

      v181 = v148;
      [v140 addObject:v148];
      v151 = MEMORY[0x1E69C5748];
      v152 = AXAirPodsB698LocalizedStringForKey();
      v153 = [v151 preferenceSpecifierNamed:v152 target:self set:sel_setVolumeSwipeEnabled_specifier_ get:sel_volumeSwipeEnabled_ detail:0 cell:6 edit:0];

      v154 = *MEMORY[0x1E69C5918];
      [v153 setProperty:@"VOLUME_SWIPE_SWITCH" forKey:*MEMORY[0x1E69C5918]];
      [v140 addObject:v153];
      emptyGroupSpecifier3 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
      v156 = AXAirPodsB698LocalizedStringForKey();
      [emptyGroupSpecifier3 setProperty:v156 forKey:v150];

      [emptyGroupSpecifier3 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5938]];
      [emptyGroupSpecifier3 setProperty:@"VOLUME_SWIPE_GROUP" forKey:v154];
      v157 = MEMORY[0x1E69C5748];
      v158 = AXAirPodsB698LocalizedStringForKey();
      v159 = [v157 preferenceSpecifierNamed:v158 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      [v159 setProperty:@"VOLUME_SWIPE_DEFAULT" forKey:v154];
      v160 = MEMORY[0x1E69C5748];
      v161 = AXAirPodsB698LocalizedStringForKey();
      v162 = [v160 preferenceSpecifierNamed:v161 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      [v162 setProperty:@"VOLUME_SWIPE_LONG" forKey:v154];
      v163 = MEMORY[0x1E69C5748];
      v164 = AXAirPodsB698LocalizedStringForKey();
      v165 = [v163 preferenceSpecifierNamed:v164 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      [v165 setProperty:@"VOLUME_SWIPE_LONGEST" forKey:v154];
      [(AccessibilityAirPodSettingsController *)self volumeSwipeDurationValue];
      *&v166 = v166;
      v167 = *&v166;
      v168 = v159;
      if (fabs(v167 + -0.5) <= 0.0500000007 || (v168 = v162, fabs(v167 + -0.4) <= 0.0500000007) || (v168 = v165, fabs(v167 + -0.35) <= 0.0500000007))
      {
        [emptyGroupSpecifier3 setProperty:v168 forKey:*MEMORY[0x1E69C5958]];
      }

      v169 = [MEMORY[0x1E695DEC8] arrayWithObjects:{emptyGroupSpecifier3, v159, v162, v165, 0}];
      [v180 addObjectsFromArray:v169];

      v140 = v180;
      v170 = v153;
      v56 = v181;
    }

    else
    {
      v170 = v176;
    }

    v171 = *(&self->super.super.super.super.super.super.super.super.isa + v177);
    *(&self->super.super.super.super.super.super.super.super.isa + v177) = v140;

    v3 = *(&self->super.super.super.super.super.super.super.super.isa + v177);
  }

  return v3;
}

- (void)showLoudNoiseLearnMore
{
  v2 = *MEMORY[0x1E69DDA98];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/120850?cid=mc-ols-airpods-article_120850-settings_ui-08212024"];
  [v2 openURL:v3 withCompletionHandler:0];
}

- (void)confirmationViewAcceptedForSpecifier:(id)specifier
{
  sharedInstance = [getPAHMSManagerClass() sharedInstance];
  address = [(PSSpecifier *)self->_holdGroup address];
  v6 = [sharedInstance ppeEnrolledForAddress:address];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DFF8]);
    v8 = MEMORY[0x1E696AEC0];
    address2 = [(PSSpecifier *)self->_holdGroup address];
    v10 = [v8 stringWithFormat:@"settings-navigation://com.apple.Settings.Bluetooth/HeadphoneDetail/?identifier=%@&Selection=HEARING_PROTECTION_ID", address2];
    v14 = [v7 initWithString:v10];

    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:v14 withOptions:0 error:0];
  }

  else
  {
    sharedInstance2 = [getHUAccessoryHearingSettingsClass() sharedInstance];
    address3 = [(PSSpecifier *)self->_holdGroup address];
    [sharedInstance2 setActiveHearingProtectionEnabled:0 forAddress:address3];

    [(AccessibilityAirPodSettingsController *)self reloadSpecifiers];
  }
}

- (void)loudNoiseToggled:(id)toggled
{
  holdGroup = self->_holdGroup;
  toggledCopy = toggled;
  address = [(PSSpecifier *)holdGroup address];
  sharedInstance = [getHUAccessoryHearingSettingsClass() sharedInstance];
  v7 = [sharedInstance activeHearingProtectionEnabledForAddress:address];

  sharedInstance2 = [getPAHMSManagerClass() sharedInstance];
  v9 = [sharedInstance2 regionSupportedForHearingProtection:address];

  v10 = @"LoudNoiseToggleAlertDescription";
  if (v9)
  {
    v10 = @"LoudNoiseToggleAlertForSupportedRegionDescription";
  }

  v11 = v10;
  sharedInstance3 = [getPAHMSManagerClass() sharedInstance];
  v13 = [sharedInstance3 ppeEnrolledForAddress:address];

  if (v13)
  {
    sharedInstance4 = objc_alloc_init(MEMORY[0x1E69C56F0]);
    v15 = accessibilityHearingAidSupportBundle_Soft();
    v16 = @"HearingProtection-B788";
    v17 = [v15 localizedStringForKey:@"PPEAlertTitle" value:@"PPEAlertTitle" table:@"HearingProtection-B788"];
    [sharedInstance4 setTitle:v17];

    v18 = MEMORY[0x1E696AEC0];
    v19 = accessibilityHearingAidSupportBundle_Soft();
    v20 = [v19 localizedStringForKey:@"PPEAlertDescription" value:@"PPEAlertDescription" table:@"HearingProtection-B788"];
    name = [(PSSpecifier *)self->_holdGroup name];
    v22 = [v18 stringWithFormat:v20, name];
    [sharedInstance4 setPrompt:v22];

    v23 = accessibilityHearingAidSupportBundle_Soft();
    v24 = [v23 localizedStringForKey:@"hpCancel" value:@"hpCancel" table:@"HearingProtection-Yodel"];
    [sharedInstance4 setCancelButton:v24];

    v25 = accessibilityHearingAidSupportBundle_Soft();
    v26 = v25;
    v27 = @"PPEAlertSettingsButton";
LABEL_7:
    v37 = [v25 localizedStringForKey:v27 value:v27 table:v16];
    [sharedInstance4 setOkButton:v37];

    [(AccessibilityAirPodSettingsController *)self showConfirmationViewForSpecifier:sharedInstance4 useAlert:1];
    goto LABEL_9;
  }

  if (v7)
  {
    sharedInstance4 = objc_alloc_init(MEMORY[0x1E69C56F0]);
    v28 = accessibilityHearingAidSupportBundle_Soft();
    v16 = @"HearingProtection-Yodel";
    v29 = [v28 localizedStringForKey:@"LoudNoiseToggleAlertTitle" value:@"LoudNoiseToggleAlertTitle" table:@"HearingProtection-Yodel"];
    [sharedInstance4 setTitle:v29];

    v30 = MEMORY[0x1E696AEC0];
    v31 = accessibilityHearingAidSupportBundle_Soft();
    v32 = [v31 localizedStringForKey:v11 value:v11 table:@"HearingProtection-Yodel"];
    name2 = [(PSSpecifier *)self->_holdGroup name];
    v34 = [v30 stringWithFormat:v32, name2];
    [sharedInstance4 setPrompt:v34];

    v35 = accessibilityHearingAidSupportBundle_Soft();
    v36 = [v35 localizedStringForKey:@"hpCancel" value:@"hpCancel" table:@"HearingProtection-Yodel"];
    [sharedInstance4 setCancelButton:v36];

    v25 = accessibilityHearingAidSupportBundle_Soft();
    v26 = v25;
    v27 = @"hpOk";
    goto LABEL_7;
  }

  sharedInstance4 = [getHUAccessoryHearingSettingsClass() sharedInstance];
  [sharedInstance4 setActiveHearingProtectionEnabled:1 forAddress:address];
LABEL_9:

  sharedInstance5 = [getHUAccessoryHearingSettingsClass() sharedInstance];
  v39 = [sharedInstance5 activeHearingProtectionEnabledForAddress:address];
  v40 = @"LoudNoiseToggleOn";
  if (v39)
  {
    v40 = @"LoudNoiseToggleOff";
  }

  v41 = v40;

  v42 = accessibilityHearingAidSupportBundle_Soft();
  v43 = [v42 localizedStringForKey:v41 value:v41 table:@"HearingProtection-Yodel"];

  [toggledCopy setName:v43];
  [(AccessibilityAirPodSettingsController *)self reloadSpecifier:toggledCopy];
}

- (void)setVolumeSwipeEnabled:(id)enabled specifier:(id)specifier
{
  v5 = MEMORY[0x1E6989850];
  enabledCopy = enabled;
  sharedInstance = [v5 sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  [sharedInstance setVolumeSwipeEnabled:bOOLValue forDeviceAddress:_btDeviceAddress];
}

- (id)volumeSwipeEnabled:(id)enabled
{
  v4 = MEMORY[0x1E696AD98];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  v7 = [v4 numberWithBool:{objc_msgSend(mEMORY[0x1E6989850], "volumeSwipeEnabledForDeviceAddress:", _btDeviceAddress)}];

  return v7;
}

- (void)setCaseTonesEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
  {
    [mEMORY[0x1E6989850] nps_setCaseTonesEnabled:bOOLValue forDeviceAddress:_btDeviceAddress];
  }

  else
  {
    [mEMORY[0x1E6989850] setCaseTonesEnabled:bOOLValue forDeviceAddress:_btDeviceAddress];
  }
}

- (id)caseTonesEnabled
{
  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  v4 = MEMORY[0x1E696AD98];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
  {
    v7 = [mEMORY[0x1E6989850] nps_caseTonesEnabledForDeviceAddress:_btDeviceAddress];
  }

  else
  {
    v7 = [mEMORY[0x1E6989850] caseTonesEnabledForDeviceAddress:_btDeviceAddress];
  }

  v8 = [v4 numberWithBool:v7];

  return v8;
}

- (void)setCaseTonesVolume:(id)volume specifier:(id)specifier
{
  v20 = *MEMORY[0x1E69E9840];
  [volume floatValue];
  v6 = v5;
  if (([(AXSettingsTickedSliderCell *)self->_toneVolumeSliderCell isTracking]& 1) == 0)
  {
    caseTonesVolumeSlider = self->_caseTonesVolumeSlider;
    if (caseTonesVolumeSlider)
    {
      [(UISlider *)caseTonesVolumeSlider roundValueIfNeeded:v6];
      if (v8 != v6)
      {
        v6 = v8;
        *&v8 = v6;
        [(AXSettingsTickedSliderCell *)self->_toneVolumeSliderCell setValue:1 animated:v8];
      }
    }
  }

  v9 = AXLogAirPodSettings();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *&v10 = v6;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    v18 = 138412290;
    v19 = v11;
    _os_log_impl(&dword_1C0DFB000, v9, OS_LOG_TYPE_DEFAULT, "Set case tones volume value: %@", &v18, 0xCu);
  }

  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
    v14 = {;
    *&v15 = v6;
    [mEMORY[0x1E6989850] nps_setCaseTonesVolume:v14 forDeviceAddress:v15];
  }

  else
    v14 = {;
    [mEMORY[0x1E6989850] setCaseTonesVolume:v6 forDeviceAddress:v14];
  }

  toneVolumeSliderCell = self->_toneVolumeSliderCell;
  if (toneVolumeSliderCell)
  {
    if (([(AXSettingsTickedSliderCell *)toneVolumeSliderCell isTracking]& 1) == 0)
    {
      *&v17 = v6;
      [(AccessibilityAirPodSettingsController *)self _updateCaseTonesVolumeFooter:v17];
    }
  }
}

- (id)caseTonesVolume:(id)volume
{
  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  v5 = MEMORY[0x1E696AD98];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
  {
    [mEMORY[0x1E6989850] nps_caseTonesVolumeForDeviceAddress:_btDeviceAddress];
    [v5 numberWithFloat:?];
  }

  else
  {
    [v5 numberWithUnsignedInt:{objc_msgSend(mEMORY[0x1E6989850], "caseTonesVolumeForDeviceAddress:", _btDeviceAddress)}];
  }
  v8 = ;

  return v8;
}

- (void)_updateCaseTonesVolumeFooter:(float)footer
{
  v5 = [(AccessibilityAirPodSettingsController *)self specifierForID:@"CaseTonesVolumeFooterID"];
  if (v5)
  {
    v11 = v5;
    v6 = AXBeats463LocalizedStringForKey();
    mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
    _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
    v9 = [mEMORY[0x1E6989850] defaultCaseTonesVolumeForDeviceAddress:_btDeviceAddress];

    if (v9 < footer)
    {
      v10 = AXBeats463LocalizedStringForKey();

      v6 = v10;
    }

    [v11 setProperty:v6 forKey:*MEMORY[0x1E69C5900]];
    [(AccessibilityAirPodSettingsController *)self reloadSpecifier:v11];

    v5 = v11;
  }
}

- (void)setToneVolume:(id)volume specifier:(id)specifier
{
  v19 = *MEMORY[0x1E69E9840];
  [volume floatValue];
  v6 = v5;
  if (([(BluetoothDevice *)self->_btDevice isTracking]& 1) == 0)
  {
    toneVolumeSlider = self->_toneVolumeSlider;
    if (toneVolumeSlider)
    {
      [(UISlider *)toneVolumeSlider roundValueIfNeeded:v6];
      if (v8 != v6)
      {
        v6 = v8;
        *&v8 = v6;
        [(BluetoothDevice *)self->_btDevice setValue:1 animated:v8];
      }
    }
  }

  v9 = AXLogAirPodSettings();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *&v10 = v6;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    v17 = 138412290;
    v18 = v11;
    _os_log_impl(&dword_1C0DFB000, v9, OS_LOG_TYPE_DEFAULT, "Set tone volume value: %@", &v17, 0xCu);
  }

  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
    v14 = {;
    *&v15 = v6;
    [mEMORY[0x1E6989850] nps_setToneVolume:v14 forDeviceAddress:v15];
  }

  else
    v14 = {;
    [mEMORY[0x1E6989850] setToneVolume:v6 forDeviceAddress:v14];
  }

  if (([(BluetoothDevice *)self->_btDevice isTracking]& 1) == 0)
  {
    *&v16 = v6;
    [(AccessibilityAirPodSettingsController *)self _updateToneVolumeFooter:v16];
  }
}

- (void)_updateToneVolumeFooter:(float)footer
{
  v11 = [(AccessibilityAirPodSettingsController *)self specifierForID:@"ToneVolumeFooterID"];
  v5 = AXAirPodsLocalizedStringForKey();
  if ([(AccessibilityAirPodSettingsController *)self isBeatsProduct])
  {
    v6 = AXAirPodsLocalizedStringForKey();

    v5 = v6;
  }

  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  v9 = [mEMORY[0x1E6989850] defaultToneVolumeForDeviceAddress:_btDeviceAddress];

  if (v9 < footer)
  {
    v10 = AXAirPodsLocalizedStringForKey();

    if ([(AccessibilityAirPodSettingsController *)self isBeatsProduct])
    {
      v5 = AXAirPodsLocalizedStringForKey();
    }

    else
    {
      v5 = v10;
    }
  }

  [v11 setProperty:v5 forKey:*MEMORY[0x1E69C5900]];
  [(AccessibilityAirPodSettingsController *)self reloadSpecifier:v11];
}

- (id)toneVolume:(id)volume
{
  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  v5 = MEMORY[0x1E696AD98];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
  {
    [mEMORY[0x1E6989850] nps_toneVolumeForDeviceAddress:_btDeviceAddress];
    [v5 numberWithFloat:?];
  }

  else
  {
    [v5 numberWithUnsignedInt:{objc_msgSend(mEMORY[0x1E6989850], "toneVolumeForDeviceAddress:", _btDeviceAddress)}];
  }
  v8 = ;

  return v8;
}

- (void)setSpatialAudioLock:(id)lock specifier:(id)specifier
{
  if ([lock BOOLValue])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1EEE60FC8](v4);
}

- (id)spatialAudioLock:(id)lock
{
  v3 = _AXSSpatialAudioHeadTracking() != 0;
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithInt:v3];
}

- (void)jumpToAVSettings:(id)settings
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=ACCESSIBILITY&path=AUDIO_VISUAL_TITLE"];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

- (id)noiseCancellation:(id)cancellation
{
  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  v5 = MEMORY[0x1E696AD98];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
  {
    v8 = [mEMORY[0x1E6989850] nps_noiseCancellationEnabledWithOneUnitForDeviceAddress:_btDeviceAddress];
  }

  else
  {
    v8 = [mEMORY[0x1E6989850] noiseCancellationEnabledWithOneUnitForDeviceAddress:_btDeviceAddress];
  }

  v9 = [v5 numberWithBool:v8];

  return v9;
}

- (void)setNoiseCancellation:(id)cancellation specifier:(id)specifier
{
  cancellationCopy = cancellation;
  isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
  mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
  bOOLValue = [cancellationCopy BOOLValue];

  _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
  if (isInWatchSettings)
  {
    [mEMORY[0x1E6989850] nps_setNoiseCancellationEnabledWithOneUnit:bOOLValue forDeviceAddress:_btDeviceAddress];
  }

  else
  {
    [mEMORY[0x1E6989850] setNoiseCancellationEnabledWithOneUnit:bOOLValue forDeviceAddress:_btDeviceAddress];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v22.receiver = self;
  v22.super_class = AccessibilityAirPodSettingsController;
  pathCopy = path;
  v7 = [(AccessibilityAirPodSettingsController *)&v22 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(AccessibilityAirPodSettingsController *)self specifierAtIndexPath:pathCopy, v22.receiver, v22.super_class];

  v9 = *MEMORY[0x1E69C5918];
  v10 = [v8 propertyForKey:*MEMORY[0x1E69C5918]];
  if ([v10 isEqualToString:@"NoiseControl"])
  {

LABEL_4:
    textLabel = [v7 textLabel];
    [textLabel setNumberOfLines:0];

    goto LABEL_5;
  }

  v11 = [v8 propertyForKey:v9];
  v12 = [v11 isEqualToString:@"PERSONAL_AUDIO_AIRPODS_BUTTON"];

  if (v12)
  {
    goto LABEL_4;
  }

  v15 = [v8 propertyForKey:v9];
  v16 = [v15 isEqualToString:@"TONE_VOLUME"];

  if (v16)
  {
    objc_storeStrong(&self->_toneVolumeSlider, v7);
    [(UISlider *)self->_toneVolumeSlider setController:self];
    slider = [(UISlider *)self->_toneVolumeSlider slider];
    v18 = 1520;
  }

  else
  {
    v19 = [v8 propertyForKey:v9];
    v20 = [v19 isEqualToString:@"CASE_TONES_VOLUME"];

    if (!v20)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_caseTonesVolumeSlider, v7);
    [(UISlider *)self->_caseTonesVolumeSlider setController:self];
    slider = [(UISlider *)self->_caseTonesVolumeSlider slider];
    v18 = 1536;
  }

  v21 = *(&self->super.super.super.super.super.super.super.super.isa + v18);
  *(&self->super.super.super.super.super.super.super.super.isa + v18) = slider;

  [v7 layoutSubviews];
LABEL_5:

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v43.receiver = self;
  v43.super_class = AccessibilityAirPodSettingsController;
  pathCopy = path;
  [(AXUISettingsSetupCapableListController *)&v43 tableView:view didSelectRowAtIndexPath:pathCopy];
  section = [pathCopy section];

  v8 = [(AccessibilityAirPodSettingsController *)self specifierAtIndex:[(AccessibilityAirPodSettingsController *)self indexOfGroup:section]];
  v9 = *MEMORY[0x1E69C5918];
  v10 = [v8 propertyForKey:*MEMORY[0x1E69C5918]];
  v11 = [v10 isEqualToString:@"TapGroup"];

  if (v11)
  {
    v12 = [v8 propertyForKey:*MEMORY[0x1E69C5958]];
    v13 = [v12 propertyForKey:v9];

    mEMORY[0x1E6989850] = [MEMORY[0x1E6989850] sharedInstance];
    _btDeviceAddress = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
    [mEMORY[0x1E6989850] tapSpeedForDeviceAddress:_btDeviceAddress];
    v17 = v16;

    v18 = 0.25;
    if (([v13 isEqualToString:@"TapDefault"] & 1) == 0)
    {
      if ([v13 isEqualToString:@"TapSlow"])
      {
        v18 = 0.45;
      }

      else if ([v13 isEqualToString:@"TapSlowest"])
      {
        v18 = 0.65;
      }

      else
      {
        v18 = v17;
      }
    }

    isInWatchSettings = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
    mEMORY[0x1E6989850]2 = [MEMORY[0x1E6989850] sharedInstance];
    _btDeviceAddress2 = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
    *&v38 = v18;
    if (isInWatchSettings)
    {
      [mEMORY[0x1E6989850]2 nps_setTapSpeed:_btDeviceAddress2 forDeviceAddress:v38];
    }

    else
    {
      [mEMORY[0x1E6989850]2 setTapSpeed:_btDeviceAddress2 forDeviceAddress:v38];
    }

LABEL_31:

    goto LABEL_32;
  }

  v19 = [v8 propertyForKey:v9];
  v20 = [v19 isEqualToString:@"HoldGroup"];

  if (v20)
  {
    v21 = [v8 propertyForKey:*MEMORY[0x1E69C5958]];
    v13 = [v21 propertyForKey:v9];

    mEMORY[0x1E6989850]3 = [MEMORY[0x1E6989850] sharedInstance];
    _btDeviceAddress3 = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
    [mEMORY[0x1E6989850]3 holdDurationForDeviceAddress:_btDeviceAddress3];
    v25 = v24;

    v26 = 0.5;
    if (([v13 isEqualToString:@"HoldDefault"] & 1) == 0)
    {
      if ([v13 isEqualToString:@"HoldFast"])
      {
        v26 = 0.4;
      }

      else if ([v13 isEqualToString:@"HoldFastest"])
      {
        v26 = 0.35;
      }

      else
      {
        v26 = v25;
      }
    }

    isInWatchSettings2 = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
    mEMORY[0x1E6989850]2 = [MEMORY[0x1E6989850] sharedInstance];
    _btDeviceAddress2 = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
    *&v40 = v26;
    if (isInWatchSettings2)
    {
      [mEMORY[0x1E6989850]2 nps_setHoldDuration:_btDeviceAddress2 forDeviceAddress:v40];
    }

    else
    {
      [mEMORY[0x1E6989850]2 setHoldDuration:_btDeviceAddress2 forDeviceAddress:v40];
    }

    goto LABEL_31;
  }

  v27 = [v8 propertyForKey:v9];
  v28 = [v27 isEqualToString:@"VOLUME_SWIPE_GROUP"];

  if (v28)
  {
    v29 = [v8 propertyForKey:*MEMORY[0x1E69C5958]];
    v13 = [v29 propertyForKey:v9];

    mEMORY[0x1E6989850]4 = [MEMORY[0x1E6989850] sharedInstance];
    _btDeviceAddress4 = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
    [mEMORY[0x1E6989850]4 volumeSwipeDurationForDeviceAddress:_btDeviceAddress4];
    v33 = v32;

    v34 = 0.5;
    if (([v13 isEqualToString:@"VOLUME_SWIPE_DEFAULT"] & 1) == 0)
    {
      if ([v13 isEqualToString:@"VOLUME_SWIPE_LONG"])
      {
        v34 = 0.4;
      }

      else if ([v13 isEqualToString:@"VOLUME_SWIPE_LONGEST"])
      {
        v34 = 0.35;
      }

      else
      {
        v34 = v33;
      }
    }

    isInWatchSettings3 = [(AccessibilityAirPodSettingsController *)self isInWatchSettings];
    mEMORY[0x1E6989850]2 = [MEMORY[0x1E6989850] sharedInstance];
    _btDeviceAddress2 = [(AccessibilityAirPodSettingsController *)self _btDeviceAddress];
    *&v42 = v34;
    if (isInWatchSettings3)
    {
      [mEMORY[0x1E6989850]2 nps_setVolumeSwipeDuration:_btDeviceAddress2 forDeviceAddress:v42];
    }

    else
    {
      [mEMORY[0x1E6989850]2 setVolumeSwipeDuration:_btDeviceAddress2 forDeviceAddress:v42];
    }

    goto LABEL_31;
  }

LABEL_32:
}

@end