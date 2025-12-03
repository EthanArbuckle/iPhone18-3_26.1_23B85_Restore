@interface COSSoundsController
- (COSSoundsController)init;
- (id)audioVolume:(id)volume;
- (id)contextualVolumeProfileValue;
- (id)detailTextForToneWithSpecifier:(id)specifier;
- (id)hapticIntensity:(id)intensity;
- (id)hapticState:(id)state;
- (id)hapticsValueText;
- (id)isAudioMuted:(id)muted;
- (id)isContextualVolumeEnabled:(id)enabled;
- (id)jackrabbitState:(id)state;
- (id)prominentHapticsEnabled:(id)enabled;
- (id)specifiers;
- (id)systemHapticsState:(id)state;
- (void)_handleTonePreferencesDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)setAudioMuted:(id)muted specifier:(id)specifier;
- (void)setAudioVolume:(id)volume specifier:(id)specifier;
- (void)setContextualVolumeEnabled:(id)enabled specifier:(id)specifier;
- (void)setHapticIntensity:(id)intensity specifier:(id)specifier;
- (void)setHapticState:(id)state specifier:(id)specifier;
- (void)setHapticStateValue:(int64_t)value;
- (void)setJackrabbitState:(id)state specifier:(id)specifier;
- (void)setProminentHapticsEnabled:(id)enabled specifier:(id)specifier;
- (void)setSystemHapticsState:(id)state specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateAudioVolumeSlider;
- (void)updateHapticIntensitySlider;
- (void)updateHapticSliderWithHighlightedDownGlyph:(BOOL)glyph;
- (void)updateVolumeSliderWithHighlightedDownGlyph:(BOOL)glyph;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation COSSoundsController

- (COSSoundsController)init
{
  v32.receiver = self;
  v32.super_class = COSSoundsController;
  v2 = [(COSSoundsController *)&v32 init];
  if (v2)
  {
    v3 = [NACVolumeController proxyVolumeControllerWithAudioCategory:@"Ringtone"];
    volumeController = v2->_volumeController;
    v2->_volumeController = v3;

    [(NACVolumeController *)v2->_volumeController setDelegate:v2];
    v5 = objc_alloc_init(COSContextualVolumeController);
    contextualVolumeController = v2->_contextualVolumeController;
    v2->_contextualVolumeController = v5;

    [(COSContextualVolumeController *)v2->_contextualVolumeController setDelegate:v2];
    v7 = [[NPSDomainAccessor alloc] initWithDomain:@".GlobalPreferences"];
    gizmoGlobalDomain = v2->_gizmoGlobalDomain;
    v2->_gizmoGlobalDomain = v7;

    v9 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel"];
    carouselDomain = v2->_carouselDomain;
    v2->_carouselDomain = v9;

    v11 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.coreaudio"];
    coreaudioDomain = v2->_coreaudioDomain;
    v2->_coreaudioDomain = v11;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_100065C28, @"com.apple.Carousel.CSLDisableDetentsNotification", 0, 1024);
    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v14, v2, sub_100065C28, @"NanoAccessibilityDefaultsChanged", 0, 1028);
    v15 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v15, v2, sub_100065C28, @"CSLCoverToMuteChangedNotification", 0, 1024);
    v16 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v16, v2, sub_100065C28, @"com.apple.coreaudio.disable_watch_ui_haptics_did_change", 0, 1024);
    v17 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v17, v2, sub_100065C28, +[COSContextualVolumeController prefsDidChangeNotification], 0, 1024);
    activeWatch = [UIApp activeWatch];
    v19 = [[NSUUID alloc] initWithUUIDString:@"9B2FB519-D14B-49AB-BB91-67A6BF4E2B9A"];
    v20 = [activeWatch supportsCapability:v19];

    if (v20)
    {
      v21 = +[NSNotificationCenter defaultCenter];
      v22 = TLTonePreferencesDidChangeNotification;
      v23 = +[TLToneManager sharedToneManager];
      [v21 addObserver:v2 selector:"_handleTonePreferencesDidChangeNotification:" name:v22 object:v23];
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2050000000;
    v24 = qword_1002BD438;
    v37 = qword_1002BD438;
    if (!qword_1002BD438)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100068164;
      v33[3] = &unk_1002680D0;
      v33[4] = &v34;
      sub_100068164(v33);
      v24 = v35[3];
    }

    v25 = v24;
    _Block_object_dispose(&v34, 8);
    v26 = objc_alloc_init(v24);
    audioSettingsManager = v2->_audioSettingsManager;
    v2->_audioSettingsManager = v26;

    v28 = objc_alloc_init(NSNumberFormatter);
    [v28 setNumberStyle:1];
    [v28 setMaximumFractionDigits:0];
    v29 = [NSNumber numberWithInt:0];
    v30 = [v28 stringFromNumber:v29];
    [v28 setNotANumberSymbol:v30];

    [(COSSoundsController *)v2 setNumberFormatter:v28];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = COSSoundsController;
  [(COSSoundsController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v111 = OBJC_IVAR___PSListController__specifiers;
    v4 = [(COSSoundsController *)self loadSpecifiersFromPlistName:@"Sounds" target:self];
    v5 = [v4 specifierForID:@"audio_slider"];
    audioSlider = self->_audioSlider;
    p_audioSlider = &self->_audioSlider;
    self->_audioSlider = v5;

    v7 = [v4 specifierForID:@"audio_mute_switch"];
    audioMuteSwitch = self->_audioMuteSwitch;
    self->_audioMuteSwitch = v7;

    v9 = [v4 specifierForID:@"haptic_slider"];
    hapticSlider = self->_hapticSlider;
    self->_hapticSlider = v9;

    v11 = [v4 specifierForID:@"prominent_haptic_switch"];
    prominentHapticSwitch = self->_prominentHapticSwitch;
    self->_prominentHapticSwitch = v11;

    v13 = [v4 specifierForID:@"contextual_volume_switch"];
    contextualVolumeSwitch = self->_contextualVolumeSwitch;
    self->_contextualVolumeSwitch = v13;

    v15 = [v4 specifierForID:@"contextual_volume_profile"];
    contextualVolumeProfile = self->_contextualVolumeProfile;
    self->_contextualVolumeProfile = v15;

    activeWatch = [UIApp activeWatch];
    v110 = [v4 indexOfSpecifierWithID:@"haptic_group_id"];
    v18 = [[NSUUID alloc] initWithUUIDString:@"5DA2E6C5-2C4D-444E-B3E8-CCDEF7AB41AB"];
    v19 = [activeWatch supportsCapability:v18];

    v113 = activeWatch;
    if (v19)
    {
      v20 = [v4 specifierForID:@"haptic_group_id"];
      [v4 removeObject:v20];

      v21 = [v4 specifierForID:@"haptic_slider"];
      [v4 removeObject:v21];

      v22 = [v4 specifierForID:@"prominent_haptic_group_id"];
      [v4 removeObject:v22];

      [v4 removeObject:self->_prominentHapticSwitch];
      v23 = self->_prominentHapticSwitch;
      self->_prominentHapticSwitch = 0;

      v24 = [[NSUUID alloc] initWithUUIDString:@"9B2FB519-D14B-49AB-BB91-67A6BF4E2B9A"];
      v25 = [activeWatch supportsCapability:v24];

      if ((v25 & 1) == 0)
      {
        hapticState = [(NACVolumeController *)self->_volumeController hapticState];
        v26 = +[NSBundle mainBundle];
        v27 = [v26 localizedStringForKey:@"HAPTIC_ALERTS_GROUP_TITLE" value:&stru_10026E598 table:@"Sounds"];
        v28 = [PSSpecifier groupSpecifierWithName:v27];

        v29 = +[NSBundle mainBundle];
        v30 = [v29 localizedStringForKey:@"HAPTIC_ALERTS_TITLE" value:&stru_10026E598 table:@"Sounds"];
        v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:"setHapticState:specifier:" get:"hapticState:" detail:0 cell:6 edit:0];

        v32 = v28;
        [v4 insertObject:v28 atIndex:v110];
        v33 = v110 + 2;
        [v4 insertObject:v31 atIndex:v110 + 1];
        if (hapticState >= 1)
        {
          v105 = +[PSSpecifier emptyGroupSpecifier];
          [v105 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
          v34 = +[NSBundle mainBundle];
          v35 = [v34 localizedStringForKey:@"DEFAULTS_HAPTIC_RADIO_TITLE" value:&stru_10026E598 table:@"Sounds"];
          v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v36 setIdentifier:@"DEFAULTS_HAPTIC_RADIO_ID"];
          v37 = +[NSBundle mainBundle];
          [v37 localizedStringForKey:@"PROMINENT_HAPTIC_RADIO_TITLE" value:&stru_10026E598 table:@"Sounds"];
          v38 = v32;
          v40 = v39 = v31;
          v41 = [PSSpecifier preferenceSpecifierNamed:v40 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v31 = v39;
          v32 = v38;

          [v41 setIdentifier:@"PROMINENT_HAPTIC_RADIO_ID"];
          if (hapticState == 1)
          {
            v42 = v36;
          }

          else
          {
            v42 = v41;
          }

          [v105 setProperty:v42 forKey:PSRadioGroupCheckedSpecifierKey];
          [v4 insertObject:v105 atIndex:v110 + 2];
          [v4 insertObject:v36 atIndex:v110 + 3];
          v33 = v110 + 5;
          [v4 insertObject:v41 atIndex:v110 + 4];
        }

        v110 = v33;
      }
    }

    else
    {
      [(PSSpecifier *)self->_hapticSlider setProperty:&off_100281A80 forKey:PSControlMaximumKey];
    }

    WeakRetained = objc_loadWeakRetained(&self->BPSListController_opaque[OBJC_IVAR___PSViewController__parentController]);

    if (WeakRetained)
    {
      v44 = BPSAccessoryHighlightColor();
      v45 = BPSTintedSymbol();
      imageFlippedForRightToLeftLayoutDirection = [v45 imageFlippedForRightToLeftLayoutDirection];

      v47 = BPSAccessoryHighlightColor();
      v48 = BPSTintedSymbol();

      v49 = BPSAccessoryHighlightColor();
      v50 = BPSTintedSymbol();
      imageFlippedForRightToLeftLayoutDirection2 = [v50 imageFlippedForRightToLeftLayoutDirection];
      volumeSliderDownEnabled = self->_volumeSliderDownEnabled;
      self->_volumeSliderDownEnabled = imageFlippedForRightToLeftLayoutDirection2;

      v53 = BPSAccessoryColor();
      v54 = BPSTintedSymbol();
      imageFlippedForRightToLeftLayoutDirection3 = [v54 imageFlippedForRightToLeftLayoutDirection];
      volumeSliderDownDisabled = self->_volumeSliderDownDisabled;
      self->_volumeSliderDownDisabled = imageFlippedForRightToLeftLayoutDirection3;

      v57 = BPSAccessoryHighlightColor();
      v58 = BPSTintedSymbol();
      hapticSliderDownEnabled = self->_hapticSliderDownEnabled;
      self->_hapticSliderDownEnabled = v58;

      v60 = BPSAccessoryColor();
      v61 = BPSTintedSymbol();
      hapticSliderDownDisabled = self->_hapticSliderDownDisabled;
      self->_hapticSliderDownDisabled = v61;
    }

    else
    {
      v48 = 0;
      imageFlippedForRightToLeftLayoutDirection = 0;
    }

    v63 = PSSliderRightImageKey;
    v109 = imageFlippedForRightToLeftLayoutDirection;
    [(PSSpecifier *)*p_audioSlider setProperty:imageFlippedForRightToLeftLayoutDirection forKey:PSSliderRightImageKey];
    [(NACVolumeController *)self->_volumeController volumeValue];
    v65 = v64;
    isVolumeControlAvailable = [(NACVolumeController *)self->_volumeController isVolumeControlAvailable];
    v67 = isVolumeControlAvailable;
    if (v65 > 0.0635)
    {
      v68 = isVolumeControlAvailable;
    }

    else
    {
      v68 = 0;
    }

    [(COSSoundsController *)self updateVolumeSliderWithHighlightedDownGlyph:v68, v65];
    v69 = *p_audioSlider;
    v70 = [NSNumber numberWithBool:v67];
    [(PSSpecifier *)v69 setProperty:v70 forKey:PSEnabledKey];

    [(PSSpecifier *)self->_hapticSlider setProperty:self->_hapticSliderDownDisabled forKey:PSSliderLeftImageKey];
    [(PSSpecifier *)self->_hapticSlider setProperty:v48 forKey:v63];
    v71 = self->_audioMuteSwitch;
    v72 = [NSNumber numberWithBool:[(NACVolumeController *)self->_volumeController isMuted]];
    [(PSSpecifier *)v71 setProperty:v72 forKey:PSValueKey];

    v73 = [[NSUUID alloc] initWithUUIDString:@"1E189BE1-6A71-44AA-B116-0066A83035E8"];
    v74 = v113;
    LODWORD(v72) = [v113 supportsCapability:v73];

    v75 = v48;
    if (v72)
    {
      v107 = v48;
      v76 = [[NSUUID alloc] initWithUUIDString:@"9B2FB519-D14B-49AB-BB91-67A6BF4E2B9A"];
      if ([v113 supportsCapability:v76])
      {
        v77 = +[NSBundle mainBundle];
        v78 = [v77 localizedStringForKey:@"SYSTEM_SOUNDS_AND_HAPTICS_GROUP_TITLE" value:&stru_10026E598 table:@"Sounds"];
        v79 = [PSSpecifier groupSpecifierWithID:@"JACKRABBIT_GROUP_ID" name:v78];
      }

      else
      {
        v79 = [PSSpecifier groupSpecifierWithID:@"JACKRABBIT_GROUP_ID" name:0];
      }

      v106 = v79;

      v80 = +[NSBundle mainBundle];
      v81 = [v80 localizedStringForKey:@"JACKRABBIT_GROUP_FOOTER" value:&stru_10026E598 table:@"JackRabbitLocalizable-n1y1"];
      v82 = PSFooterTextGroupKey;
      [v79 setProperty:v81 forKey:PSFooterTextGroupKey];

      v83 = +[NSBundle mainBundle];
      v84 = [v83 localizedStringForKey:@"JACKRABBIT_TITLE" value:&stru_10026E598 table:@"JackRabbitLocalizable-n1y1"];
      v85 = [PSSpecifier preferenceSpecifierNamed:v84 target:self set:"setJackrabbitState:specifier:" get:"jackrabbitState:" detail:0 cell:6 edit:0];

      [v85 setIdentifier:@"JACKRABBIT_ID"];
      [v4 insertObject:v79 atIndex:v110];
      [v4 insertObject:v85 atIndex:v110 + 1];
      v86 = [PSSpecifier groupSpecifierWithID:@"SYSTEM_HAPTICS_GROUP_ID"];
      v87 = +[NSBundle mainBundle];
      v88 = [v87 localizedStringForKey:@"SYSTEM_HAPTICS_DESCRIPTION" value:&stru_10026E598 table:@"Sounds"];
      [v86 setProperty:v88 forKey:v82];

      v89 = +[NSBundle mainBundle];
      v90 = [v89 localizedStringForKey:@"SYSTEM_HAPTICS_LABEL" value:&stru_10026E598 table:@"Sounds"];
      v91 = [PSSpecifier preferenceSpecifierNamed:v90 target:self set:"setSystemHapticsState:specifier:" get:"systemHapticsState:" detail:0 cell:6 edit:0];

      [v91 setIdentifier:@"SYSTEM_HAPTICS_ID"];
      [v91 setProperty:@"com.apple.coreaudio.disable_watch_ui_haptics_did_change" forKey:PSValueChangedNotificationKey];
      [v4 insertObject:v86 atIndex:v110 + 2];
      [v4 insertObject:v91 atIndex:v110 + 3];

      v74 = v113;
      v75 = v107;
    }

    v92 = [[NSUUID alloc] initWithUUIDString:@"78E1881C-F6E1-421F-BC90-A1EBF1784BB1"];
    v93 = [v74 supportsCapability:v92];

    if (v93)
    {
      v94 = [v4 specifierForID:@"tap_to_speak_group"];
      [v4 removeObject:v94];

      v95 = [v4 specifierForID:@"tap_to_speak_switch"];
      [v4 removeObject:v95];
    }

    v96 = [[NSUUID alloc] initWithUUIDString:@"27EC88C0-A142-4C22-BCEB-4B6A90B5184F"];
    p_contextualVolumeProfile = &self->_contextualVolumeProfile;
    if ([v74 supportsCapability:v96])
    {
      v98 = _os_feature_enabled_impl();

      if (v98)
      {
        v99 = self->_contextualVolumeProfile;
        contextualVolumeController = [(COSSoundsController *)self contextualVolumeController];
        v101 = +[COSContextualVolumeController propertyKey];
        [(PSSpecifier *)v99 setProperty:contextualVolumeController forKey:v101];

        contextualVolumeController2 = [(COSSoundsController *)self contextualVolumeController];
        LODWORD(contextualVolumeController) = [contextualVolumeController2 enabled];

        if (contextualVolumeController)
        {
          p_contextualVolumeProfile = &self->_audioSlider;
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

    [v4 removeObject:self->_contextualVolumeSwitch];
LABEL_31:
    [v4 removeObject:*p_contextualVolumeProfile];
    v103 = *&self->BPSListController_opaque[v111];
    *&self->BPSListController_opaque[v111] = v4;

    v3 = *&self->BPSListController_opaque[v111];
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = COSSoundsController;
  [(COSSoundsController *)&v4 viewWillAppear:appear];
  [(NACVolumeController *)self->_volumeController beginObservingVolume];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = COSSoundsController;
  [(COSSoundsController *)&v9 viewDidAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 initWithKey:@"SOUNDS" table:@"Settings" locale:v6 bundleURL:bundleURL];

  v8 = [NSURL URLWithString:@"bridge:root=SOUNDS_ID"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"SOUNDS_ID" title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v8];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = COSSoundsController;
  [(COSSoundsController *)&v4 viewWillDisappear:disappear];
  [(NACVolumeController *)self->_volumeController endObservingVolume];
}

- (id)hapticsValueText
{
  hapticState = [(NACVolumeController *)self->_volumeController hapticState];
  if (hapticState > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1002698E8[hapticState];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_10026E598 table:@"Haptics"];
  }

  return v5;
}

- (void)setHapticState:(id)state specifier:(id)specifier
{
  bOOLValue = [state BOOLValue];

  [(COSSoundsController *)self setHapticStateValue:bOOLValue];
}

- (id)hapticState:(id)state
{
  hapticState = [(NACVolumeController *)self->_volumeController hapticState];

  return [NSNumber numberWithInteger:hapticState];
}

- (void)setHapticStateValue:(int64_t)value
{
  [(NACVolumeController *)self->_volumeController setHapticState:value];

  [(COSSoundsController *)self reloadSpecifiers];
}

- (void)updateAudioVolumeSlider
{
  [(NACVolumeController *)self->_volumeController volumeValue];
  v4 = v3;
  isVolumeControlAvailable = [(NACVolumeController *)self->_volumeController isVolumeControlAvailable];
  audioSlider = self->_audioSlider;
  v7 = [NSNumber numberWithBool:isVolumeControlAvailable];
  [(PSSpecifier *)audioSlider setProperty:v7 forKey:PSEnabledKey];

  if (v4 > 0.0635)
  {
    v8 = isVolumeControlAvailable;
  }

  else
  {
    v8 = 0;
  }

  [(COSSoundsController *)self updateVolumeSliderWithHighlightedDownGlyph:v8, v4];
  v9 = self->_audioSlider;

  [(COSSoundsController *)self reloadSpecifier:v9];
}

- (void)updateHapticIntensitySlider
{
  [(NACVolumeController *)self->_volumeController hapticIntensity];
  [(COSSoundsController *)self updateHapticSliderWithHighlightedDownGlyph:v3 > 0.001];
  hapticSlider = self->_hapticSlider;

  [(COSSoundsController *)self reloadSpecifier:hapticSlider];
}

- (void)updateVolumeSliderWithHighlightedDownGlyph:(BOOL)glyph
{
  v3 = &OBJC_IVAR___COSSoundsController__volumeSliderDownDisabled;
  if (glyph)
  {
    v3 = &OBJC_IVAR___COSSoundsController__volumeSliderDownEnabled;
  }

  [(PSSpecifier *)self->_audioSlider setProperty:*&self->BPSListController_opaque[*v3] forKey:PSSliderLeftImageKey];
}

- (void)updateHapticSliderWithHighlightedDownGlyph:(BOOL)glyph
{
  v3 = &OBJC_IVAR___COSSoundsController__hapticSliderDownDisabled;
  if (glyph)
  {
    v3 = &OBJC_IVAR___COSSoundsController__hapticSliderDownEnabled;
  }

  [(PSSpecifier *)self->_hapticSlider setProperty:*&self->BPSListController_opaque[*v3] forKey:PSSliderLeftImageKey];
}

- (id)audioVolume:(id)volume
{
  [(NACVolumeController *)self->_volumeController volumeValue];

  return [NSNumber numberWithFloat:?];
}

- (void)setAudioVolume:(id)volume specifier:(id)specifier
{
  volumeCopy = volume;
  specifierCopy = specifier;
  if ([(NACVolumeController *)self->_volumeController isVolumeControlAvailable])
  {
    [volumeCopy floatValue];
    v8 = v7;
    [(NACVolumeController *)self->_volumeController setVolumeValue:?];
    contextualVolumeController = [(COSSoundsController *)self contextualVolumeController];
    *&v10 = v8;
    [contextualVolumeController setRingtoneUserVolume:v10];

    [(COSSoundsController *)self updateVolumeSliderWithHighlightedDownGlyph:v8 > 0.0635, v8];
    [(COSSoundsController *)self reloadSpecifier:specifierCopy];
  }
}

- (id)isContextualVolumeEnabled:(id)enabled
{
  contextualVolumeController = [(COSSoundsController *)self contextualVolumeController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [contextualVolumeController enabled]);

  return v4;
}

- (void)setContextualVolumeEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  contextualVolumeController = [(COSSoundsController *)self contextualVolumeController];
  [contextualVolumeController setEnabled:bOOLValue];

  contextualVolumeController2 = [(COSSoundsController *)self contextualVolumeController];
  ringtoneUserVolume = [contextualVolumeController2 ringtoneUserVolume];

  if ((bOOLValue & 1) == 0 && ringtoneUserVolume)
  {
    [ringtoneUserVolume floatValue];
    v10 = v9;
    volumeController = [(COSSoundsController *)self volumeController];
    LODWORD(v12) = v10;
    [volumeController setVolumeValue:v12];
  }

  audioSlider = [(COSSoundsController *)self audioSlider];
  if (audioSlider && (v14 = audioSlider, [(COSSoundsController *)self contextualVolumeProfile], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    if (bOOLValue)
    {
      audioSlider2 = [(COSSoundsController *)self audioSlider];
      v24 = audioSlider2;
      v17 = [NSArray arrayWithObjects:&v24 count:1];
      contextualVolumeProfile = [(COSSoundsController *)self contextualVolumeProfile];
      v23 = contextualVolumeProfile;
      v19 = &v23;
    }

    else
    {
      audioSlider2 = [(COSSoundsController *)self contextualVolumeProfile];
      v22 = audioSlider2;
      v17 = [NSArray arrayWithObjects:&v22 count:1];
      contextualVolumeProfile = [(COSSoundsController *)self audioSlider];
      v21 = contextualVolumeProfile;
      v19 = &v21;
    }

    v20 = [NSArray arrayWithObjects:v19 count:1];
    [(COSSoundsController *)self replaceContiguousSpecifiers:v17 withSpecifiers:v20 animated:1];
  }

  else
  {
    [(COSSoundsController *)self reloadSpecifiers];
  }
}

- (id)contextualVolumeProfileValue
{
  contextualVolumeController = [(COSSoundsController *)self contextualVolumeController];
  profileValue = [contextualVolumeController profileValue];

  return profileValue;
}

- (id)hapticIntensity:(id)intensity
{
  [(NACVolumeController *)self->_volumeController hapticIntensity];

  return [NSNumber numberWithFloat:?];
}

- (void)setHapticIntensity:(id)intensity specifier:(id)specifier
{
  specifierCopy = specifier;
  [intensity floatValue];
  v7 = v6;
  [(NACVolumeController *)self->_volumeController setHapticIntensity:?];
  [(COSSoundsController *)self updateHapticSliderWithHighlightedDownGlyph:v7 > 0.001, v7];
  [(COSSoundsController *)self reloadSpecifier:specifierCopy];
}

- (void)setAudioMuted:(id)muted specifier:(id)specifier
{
  volumeController = self->_volumeController;
  bOOLValue = [muted BOOLValue];

  [(NACVolumeController *)volumeController setSystemMuted:bOOLValue];
}

- (id)isAudioMuted:(id)muted
{
  isSystemMuted = [(NACVolumeController *)self->_volumeController isSystemMuted];

  return [NSNumber numberWithBool:isSystemMuted];
}

- (id)prominentHapticsEnabled:(id)enabled
{
  isProminentHapticEnabled = [(NACVolumeController *)self->_volumeController isProminentHapticEnabled];

  return [NSNumber numberWithBool:isProminentHapticEnabled];
}

- (void)setProminentHapticsEnabled:(id)enabled specifier:(id)specifier
{
  volumeController = self->_volumeController;
  bOOLValue = [enabled BOOLValue];

  [(NACVolumeController *)volumeController setProminentHapticEnabled:bOOLValue];
}

- (id)detailTextForToneWithSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"alertType"];
  v4 = TLAlertTypeFromString();

  v5 = +[TLToneManager sharedToneManager];
  v6 = [v5 currentWatchToneIdentifierForAlertType:v4];

  v7 = +[TLToneManager sharedToneManager];
  v8 = [v7 nameForToneIdentifier:v6];

  return v8;
}

- (void)_handleTonePreferencesDidChangeNotification:(id)notification
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100067650;
  v3[3] = &unk_100268430;
  objc_copyWeak(&v4, &location);
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)setJackrabbitState:(id)state specifier:(id)specifier
{
  stateCopy = state;
  -[NPSDomainAccessor setBool:forKey:](self->_carouselDomain, "setBool:forKey:", [stateCopy BOOLValue] ^ 1, @"CSLDisableDetents");
  synchronize = [(NPSDomainAccessor *)self->_carouselDomain synchronize];
  v7 = objc_opt_new();
  v17 = @"CSLDisableDetents";
  v8 = [NSArray arrayWithObjects:&v17 count:1];
  v9 = [NSSet setWithArray:v8];
  [v7 synchronizeNanoDomain:@"com.apple.Carousel" keys:v9];

  v10 = pbb_setup_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [stateCopy BOOLValue];
    v12 = @"Disabled";
    if (bOOLValue)
    {
      v12 = @"Enabled";
    }

    v13 = 136315394;
    v14 = "[COSSoundsController setJackrabbitState:specifier:]";
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s -> Haptic Crown %@", &v13, 0x16u);
  }
}

- (id)jackrabbitState:(id)state
{
  synchronize = [(NPSDomainAccessor *)self->_carouselDomain synchronize];
  v5 = [(NPSDomainAccessor *)self->_carouselDomain objectForKey:@"CSLDisableDetents"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = pbb_setup_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"Disabled";
    if (v7)
    {
      v9 = @"Enabled";
    }

    v12 = 136315394;
    v13 = "[COSSoundsController jackrabbitState:]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s -> Haptic Crown %@", &v12, 0x16u);
  }

  v10 = [NSNumber numberWithBool:v7];

  return v10;
}

- (void)setSystemHapticsState:(id)state specifier:(id)specifier
{
  stateCopy = state;
  -[NPSDomainAccessor setBool:forKey:](self->_coreaudioDomain, "setBool:forKey:", [stateCopy BOOLValue] ^ 1, @"disable_watch_ui_haptics");
  synchronize = [(NPSDomainAccessor *)self->_coreaudioDomain synchronize];
  v7 = objc_opt_new();
  v17 = @"disable_watch_ui_haptics";
  v8 = [NSArray arrayWithObjects:&v17 count:1];
  v9 = [NSSet setWithArray:v8];
  [v7 synchronizeNanoDomain:@"com.apple.coreaudio" keys:v9];

  v10 = pbb_setup_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [stateCopy BOOLValue];
    v12 = @"Disabled";
    if (bOOLValue)
    {
      v12 = @"Enabled";
    }

    v13 = 136315394;
    v14 = "[COSSoundsController setSystemHapticsState:specifier:]";
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s -> System Haptics %@", &v13, 0x16u);
  }
}

- (id)systemHapticsState:(id)state
{
  synchronize = [(NPSDomainAccessor *)self->_coreaudioDomain synchronize];
  v5 = [(NPSDomainAccessor *)self->_coreaudioDomain objectForKey:@"disable_watch_ui_haptics"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = pbb_setup_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"Disabled";
    if (v7)
    {
      v9 = @"Enabled";
    }

    v12 = 136315394;
    v13 = "[COSSoundsController systemHapticsState:]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s -> System Haptics %@", &v12, 0x16u);
  }

  v10 = [NSNumber numberWithBool:v7];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(COSSoundsController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  identifier = [v9 identifier];
  v11 = [identifier isEqualToString:@"DEFAULTS_HAPTIC_RADIO_ID"];

  identifier2 = [v9 identifier];
  v13 = [identifier2 isEqualToString:@"PROMINENT_HAPTIC_RADIO_ID"];

  if ((v11 & 1) != 0 || v13)
  {
    if (v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    [(COSSoundsController *)self setHapticStateValue:v14];
  }

  v15.receiver = self;
  v15.super_class = COSSoundsController;
  [(COSSoundsController *)&v15 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

@end