@interface AXSiriSettingsController
- (BOOL)_alwaysAllowVoiceActivation;
- (BOOL)_alwaysPrintSiriResponse;
- (BOOL)_updateFooterForSpecifier:(id)a3;
- (double)_speechRateFromValue:(double)a3;
- (id)_siriCallHangup:(id)a3;
- (id)_typeToSiriFooterString;
- (id)_voiceActivationFooterString;
- (id)announceNotificationsOnBuiltInSpeaker:(id)a3;
- (id)footerVariant;
- (id)isAlwaysAllowVoiceActivationEnabled:(id)a3;
- (id)isTypeToSiriEnabled:(id)a3;
- (id)showApps:(id)a3;
- (id)siriRequiredForInterruptions:(id)a3;
- (id)sliderValueForSpeechRate:(id)a3;
- (id)specifiers;
- (id)speechRate;
- (id)speechVarianceEnabled:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)_typeToSiriTTSDevice;
- (void)_handleSpeechEventCondition;
- (void)_reloadAnnounceNotificationSettingsGroupForAnnounceOnSpeakerEnabled:(BOOL)a3;
- (void)_setAlwaysAllowVoiceActivation:(BOOL)a3;
- (void)_setAlwaysPrintSiriResponse:(BOOL)a3;
- (void)_setTypeToSiriEnabled:(BOOL)a3;
- (void)_setUseDeviceSpeakerForTTS:(int64_t)a3;
- (void)_updateSpecifiersFromPreferences;
- (void)dealloc;
- (void)preferencesDidChange:(id)a3;
- (void)reloadSpecifiers;
- (void)setAlwaysAllowVoiceActivationEnabled:(id)a3 specifier:(id)a4;
- (void)setAnnounceNotificationsOnBuiltInSpeaker:(id)a3 specifier:(id)a4;
- (void)setShowApps:(id)a3 specifier:(id)a4;
- (void)setSiriRequiredForInterruptionsEnabled:(id)a3 specifier:(id)a4;
- (void)setSpeechVarianceEnabled:(id)a3 specifier:(id)a4;
- (void)setTypeToSiriEnabled:(id)a3 specifier:(id)a4;
- (void)setupSiriSpeechRateSlider:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActive;
@end

@implementation AXSiriSettingsController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AXSiriSettingsController;
  [(AXSiriSettingsController *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"preferencesDidChange:" name:AFPreferencesDidChangeNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXSiriSettingsController;
  [(AXSiriSettingsController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [(AXSiriSettingsController *)self loadSpecifiersFromPlistName:@"SiriSettings" target:self];
    v65 = 0;
    v66 = &v65;
    v67 = 0x2050000000;
    v7 = getBBSettingsGatewayClass_softClass;
    v68 = getBBSettingsGatewayClass_softClass;
    if (!getBBSettingsGatewayClass_softClass)
    {
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = __getBBSettingsGatewayClass_block_invoke;
      v64[3] = &unk_2555F8;
      v64[4] = &v65;
      __getBBSettingsGatewayClass_block_invoke(v64);
      v7 = v66[3];
    }

    v8 = v7;
    _Block_object_dispose(&v65, 8);
    v9 = objc_alloc_init(v7);
    bbSettingsGateway = self->_bbSettingsGateway;
    self->_bbSettingsGateway = v9;

    v64[0] = 2;
    v11 = [GMAvailabilityWrapper shouldBeShownInSettingsReturningAvailabilityStatus:v64];
    v12 = v64[0];
    if (_os_feature_enabled_impl() && v11 && v12 != 2)
    {
      v13 = [v6 specifierForID:@"SIRI_SETTINGS_TYPE_TO_SIRI"];
      [v6 removeObject:v13];
    }

    else
    {
      v14 = +[PSSpecifier emptyGroupSpecifier];
      typeToSiriGroupSpecifier = self->_typeToSiriGroupSpecifier;
      self->_typeToSiriGroupSpecifier = v14;

      v16 = self->_typeToSiriGroupSpecifier;
      v17 = [(AXSiriSettingsController *)self _typeToSiriFooterString];
      v18 = PSFooterTextGroupKey;
      [(PSSpecifier *)v16 setProperty:v17 forKey:PSFooterTextGroupKey];

      [(PSSpecifier *)self->_typeToSiriGroupSpecifier setIdentifier:@"TYPE_TO_SIRI_GROUP_ID"];
      [v5 addObject:self->_typeToSiriGroupSpecifier];
      v13 = [v6 specifierForID:@"ENDPOINTER"];
      v19 = settingsLocString(@"ENDPOINTER_FOOTER", @"SiriSettings");
      [v13 setProperty:v19 forKey:v18];

      v20 = [v6 specifierForID:@"SIRI_SETTINGS_TYPE_TO_SIRI"];
      typeToSiriSwitchSpecifier = self->_typeToSiriSwitchSpecifier;
      self->_typeToSiriSwitchSpecifier = v20;
    }

    v22 = [v6 specifierForID:@"VOICE_FEEDBACK_WITH_SWITCH_ID"];
    preferSpokenSpecifier = self->_preferSpokenSpecifier;
    self->_preferSpokenSpecifier = v22;

    v24 = self->_preferSpokenSpecifier;
    v25 = settingsLocString(@"VOICE_FEEDBACK_TITLE_PREFER_SPOKEN", @"Accessibility");
    [(PSSpecifier *)v24 setName:v25];

    v26 = [v6 specifierForID:@"VOICE_FEEDBACK_GROUP_ID"];
    groupSpecifier = self->_groupSpecifier;
    self->_groupSpecifier = v26;

    v28 = [v6 specifierForID:@"VOICE_FEEDBACK_AUTOMATIC_ID"];
    automaticSpecifier = self->_automaticSpecifier;
    self->_automaticSpecifier = v28;

    v30 = [v6 specifierForID:@"VOICE_FEEDBACK_NEVER_ID"];
    neverSpecifier = self->_neverSpecifier;
    self->_neverSpecifier = v30;

    v32 = self->_neverSpecifier;
    v33 = settingsLocString(@"VOICE_FEEDBACK_TITLE_NEVER", @"Accessibility");
    [(PSSpecifier *)v32 setName:v33];

    if (_os_feature_enabled_impl())
    {
      [(AXSiriSettingsController *)self setupSiriSpeechRateSlider:v6];
    }

    else
    {
      v34 = [v6 specifierForID:@"SPEECH_RATE"];
      [v6 removeObject:v34];
    }

    v63 = v5;
    v35 = [v6 specifierForID:@"SIRI_SETTINGS_VOICE_ACTIVATION_GROUP_ID"];
    v36 = [(AXSiriSettingsController *)self _voiceActivationFooterString];
    v37 = PSFooterTextGroupKey;
    [v35 setProperty:v36 forKey:PSFooterTextGroupKey];

    v38 = [v6 specifierForID:@"SIRI_SETTINGS_VOICE_ACTIVATION_ALWAYS_ALLOW"];
    v39 = [(AXSiriSettingsController *)self _localizeTriggerString:@"SIRI_SETTINGS_VOICE_ACTIVATION_ALWAYS_ALLOW"];
    [v38 setName:v39];

    v40 = v38;
    v41 = v40;
    if (AXHasCapability())
    {
      v42 = +[PSSpecifier emptyGroupSpecifier];
      v43 = settingsLocString(@"SIRI_BARGE_FOOTER", @"SiriSettings");
      [v42 setProperty:v43 forKey:v37];

      [v6 ps_insertObject:v42 afterObject:v40];
      v44 = settingsLocString(@"SIRI_BARGE_LABEL", @"SiriSettings");
      v41 = [PSSpecifier preferenceSpecifierNamed:v44 target:self set:"setSiriRequiredForInterruptionsEnabled:specifier:" get:"siriRequiredForInterruptions:" detail:0 cell:6 edit:0];

      [v41 setProperty:@"SIRI_BARGE" forKey:PSIDKey];
      [v6 ps_insertObject:v41 afterObject:v42];
    }

    if (AXHasCapability())
    {
      v45 = +[PSSpecifier emptyGroupSpecifier];
      v46 = settingsLocString(@"SPEECH_VARIANCE_FOOTER", @"SiriSettings");
      [v45 setProperty:v46 forKey:v37];

      [v6 ps_insertObject:v45 afterObject:v41];
      v47 = settingsLocString(@"SPEECH_VARIANCE_LABEL", @"SiriSettings");
      v48 = [PSSpecifier preferenceSpecifierNamed:v47 target:self set:"setSpeechVarianceEnabled:specifier:" get:"speechVarianceEnabled:" detail:0 cell:6 edit:0];

      [v48 setProperty:@"SIRI_ATYPICAL_SPEECH" forKey:PSIDKey];
      [v6 ps_insertObject:v48 afterObject:v45];

      v41 = v48;
    }

    v49 = v63;
    if (_os_feature_enabled_impl() && AFSupportsCallHangUp())
    {
      v50 = [PSSpecifier groupSpecifierWithID:@"SiriCallHangupGroup"];
      v51 = settingsLocString(@"CALL_HANG_UP", @"Accessibility");
      v49 = v63;
      v52 = [PSSpecifier preferenceSpecifierNamed:v51 target:self set:0 get:"_siriCallHangup:" detail:objc_opt_class() cell:2 edit:0];

      [v52 setIdentifier:@"SIRI_CALL_HANGUP_ID"];
      [v6 addObject:v50];
      [v6 addObject:v52];
    }

    if (_os_feature_enabled_impl())
    {
      v53 = [v6 specifierForID:@"ANNOUNCE_NOTIFICATIONS_SETTINGS_ID"];
      announceNotificationsSpecifier = self->_announceNotificationsSpecifier;
      self->_announceNotificationsSpecifier = v53;

      v55 = self->_announceNotificationsSpecifier;
      v56 = PSBundlePathForPreferenceBundle();
      [(PSSpecifier *)v55 setProperty:v56 forKey:PSLazilyLoadedBundleKey];

      [(PSSpecifier *)self->_announceNotificationsSpecifier setProperty:&__kCFBooleanTrue forKey:PSBundleOverridePrincipalClassKey];
      [(PSSpecifier *)self->_announceNotificationsSpecifier setControllerLoadAction:"lazyLoadBundle:"];
      v57 = +[AFPreferences sharedPreferences];
      LOBYTE(v56) = [v57 announceNotificationsOnBuiltInSpeakerEnabled];

      if ((v56 & 1) == 0)
      {
        [v6 removeObject:self->_announceNotificationsSpecifier];
      }
    }

    else
    {
      v58 = [v6 specifierForID:@"ANNOUNCE_NOTIFICATIONS_BUILT_IN_SPEAKER_GROUP"];
      [v6 removeObject:v58];

      v59 = [v6 specifierForID:@"ANNOUNCE_NOTIFICATIONS_BUILT_IN_SPEAKER_ID"];
      [v6 removeObject:v59];

      v60 = [v6 specifierForID:@"ANNOUNCE_NOTIFICATIONS_SETTINGS_ID"];
      [v6 removeObject:v60];
    }

    [v49 addObjectsFromArray:v6];
    v61 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v49;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = AXSiriSettingsController;
  [(AXSiriSettingsController *)&v3 reloadSpecifiers];
  [(AXSiriSettingsController *)self _updateSpecifiersFromPreferences];
}

- (void)setSiriRequiredForInterruptionsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  _AXSetSiriRequireSiriForInterruptionsInValue(v4);
}

- (id)siriRequiredForInterruptions:(id)a3
{
  v3 = AXGetSiriRequireSiriForInterruptionsInValue();

  return [NSNumber numberWithBool:v3];
}

- (void)setSpeechVarianceEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[AFPreferences sharedPreferences];
  v5 = [v4 BOOLValue];

  [v6 setUseAtypicalSpeechModel:v5];
}

- (id)speechVarianceEnabled:(id)a3
{
  v3 = +[AFPreferences sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 useAtypicalSpeechModel]);

  return v4;
}

- (id)_siriCallHangup:(id)a3
{
  v3 = +[VTPreferences sharedPreferences];
  if ([v3 canUseVoiceTriggerDuringPhoneCall])
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

- (void)setShowApps:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AFPreferences sharedPreferences];
  [v5 setAlwaysObscureBackgroundContentWhenActive:v4 ^ 1];
}

- (id)showApps:(id)a3
{
  v3 = +[AFPreferences sharedPreferences];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 alwaysObscureBackgroundContentWhenActive] ^ 1);

  return v4;
}

- (id)announceNotificationsOnBuiltInSpeaker:(id)a3
{
  v3 = +[AFPreferences sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 announceNotificationsOnBuiltInSpeakerEnabled]);

  return v4;
}

- (void)setAnnounceNotificationsOnBuiltInSpeaker:(id)a3 specifier:(id)a4
{
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = +[AFPreferences sharedPreferences];
    [v5 setAnnounceNotificationsOnBuiltInSpeakerEnabled:{objc_msgSend(v6, "BOOLValue")}];

    if ([v6 BOOLValue])
    {
      if ([(BBSettingsGateway *)self->_bbSettingsGateway effectiveGlobalAnnounceSetting]== &dword_0 + 1)
      {
        [(BBSettingsGateway *)self->_bbSettingsGateway setEffectiveGlobalAnnounceSetting:2];
      }
    }
  }
}

- (void)_reloadAnnounceNotificationSettingsGroupForAnnounceOnSpeakerEnabled:(BOOL)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(AXSiriSettingsController *)self containsSpecifier:self->_announceNotificationsSpecifier];
    if (!v3 || (v5 & 1) != 0)
    {
      if (!v3 && ((v5 ^ 1) & 1) == 0)
      {
        [(AXSiriSettingsController *)self removeSpecifierID:@"ANNOUNCE_NOTIFICATIONS_SETTINGS_ID"];
      }
    }

    else
    {
      [(AXSiriSettingsController *)self insertSpecifier:self->_announceNotificationsSpecifier afterSpecifierID:@"ANNOUNCE_NOTIFICATIONS_BUILT_IN_SPEAKER_ID"];
    }

    [(AXSiriSettingsController *)self reloadSpecifierID:@"ANNOUNCE_NOTIFICATIONS_BUILT_IN_SPEAKER_GROUP"];
  }
}

- (id)isTypeToSiriEnabled:(id)a3
{
  v3 = [(AXSiriSettingsController *)self _typeToSiriEnabled];

  return [NSNumber numberWithBool:v3];
}

- (void)setTypeToSiriEnabled:(id)a3 specifier:(id)a4
{
  -[AXSiriSettingsController _setTypeToSiriEnabled:](self, "_setTypeToSiriEnabled:", [a3 BOOLValue]);
  typeToSiriGroupSpecifier = self->_typeToSiriGroupSpecifier;
  v6 = [(AXSiriSettingsController *)self _typeToSiriFooterString];
  [(PSSpecifier *)typeToSiriGroupSpecifier setProperty:v6 forKey:PSFooterTextGroupKey];

  v7 = self->_typeToSiriGroupSpecifier;

  [(AXSiriSettingsController *)self reloadSpecifier:v7 animated:0];
}

- (id)isAlwaysAllowVoiceActivationEnabled:(id)a3
{
  v3 = [(AXSiriSettingsController *)self _alwaysAllowVoiceActivation];

  return [NSNumber numberWithBool:v3];
}

- (void)setAlwaysAllowVoiceActivationEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];

  [(AXSiriSettingsController *)self _setAlwaysAllowVoiceActivation:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = AXSiriSettingsController;
  v4 = [(AXSiriSettingsController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  return v4;
}

- (void)preferencesDidChange:(id)a3
{
  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 useDeviceSpeakerForTTS];

  if (v5 != self->_useDeviceSpeakerForTTSPreference)
  {
    self->_useDeviceSpeakerForTTSPreference = v5;
    AXPerformBlockOnMainThread();
  }

  v6 = +[AFPreferences sharedPreferences];
  v7 = [v6 announceNotificationsOnBuiltInSpeakerEnabled];

  [(AXSiriSettingsController *)self _reloadAnnounceNotificationSettingsGroupForAnnounceOnSpeakerEnabled:v7];
}

- (void)_setTypeToSiriEnabled:(BOOL)a3
{
  AFPreferencesSetTypeToSiriEnabled();

  [(AXSiriSettingsController *)self _updateSpecifiersFromPreferences];
}

- (void)_setUseDeviceSpeakerForTTS:(int64_t)a3
{
  v4 = +[AFPreferences sharedPreferences];
  [v4 setUseDeviceSpeakerForTTS:a3];
}

- (int64_t)_typeToSiriTTSDevice
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 useDeviceSpeakerForTTS];

  return v3;
}

- (BOOL)_alwaysPrintSiriResponse
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 siriResponseShouldAlwaysPrint];

  return v3;
}

- (void)_setAlwaysPrintSiriResponse:(BOOL)a3
{
  v3 = a3;
  v4 = +[AFPreferences sharedPreferences];
  [v4 setSiriResponseShouldAlwaysPrint:v3];
}

- (BOOL)_alwaysAllowVoiceActivation
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 alwaysAllowVoiceActivation];

  return v3;
}

- (void)_setAlwaysAllowVoiceActivation:(BOOL)a3
{
  v3 = a3;
  v4 = +[AFPreferences sharedPreferences];
  [v4 setAlwaysAllowVoiceActivation:v3];
}

- (id)_typeToSiriFooterString
{
  [(AXSiriSettingsController *)self _typeToSiriEnabled];
  v2 = AXLocStringKeyForHomeButtonAndExclusiveModel();
  v3 = settingsLocString(v2, @"Accessibility");

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXSiriSettingsController;
  [(AXSiriSettingsController *)&v4 viewWillAppear:a3];
  [(AXSiriSettingsController *)self _updateSpecifiersFromPreferences];
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = AXSiriSettingsController;
  [(AXSiriSettingsController *)&v3 willBecomeActive];
  [(AXSiriSettingsController *)self _updateSpecifiersFromPreferences];
}

- (void)_updateSpecifiersFromPreferences
{
  v3 = +[AFPreferences sharedPreferences];
  self->_useDeviceSpeakerForTTSPreference = [v3 useDeviceSpeakerForTTS];

  v4 = self->_useDeviceSpeakerForTTSPreference - 1;
  if (v4 > 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = *&self->AXUISettingsBaseListController_opaque[*off_256EB8[v4]];
  }

  v5 = PSRadioGroupCheckedSpecifierKey;
  v6 = [(PSSpecifier *)self->_groupSpecifier propertyForKey:PSRadioGroupCheckedSpecifierKey];
  [(PSSpecifier *)self->_groupSpecifier setProperty:v15 forKey:v5];
  v7 = [(AXSiriSettingsController *)self _updateFooterForSpecifier:v15];
  [(AXSiriSettingsController *)self beginUpdates];
  if (v7)
  {
    [(AXSiriSettingsController *)self reloadSpecifier:self->_groupSpecifier animated:1];
  }

  if (v6 != v15)
  {
    [(AXSiriSettingsController *)self reloadSpecifier:self->_automaticSpecifier animated:1];
    [(AXSiriSettingsController *)self reloadSpecifier:self->_preferSpokenSpecifier animated:1];
    [(AXSiriSettingsController *)self reloadSpecifier:self->_neverSpecifier animated:1];
  }

  v8 = [(AXSiriSettingsController *)self specifierForID:@"ENDPOINTER"];
  v9 = +[AFPreferences sharedPreferences];
  v10 = [v9 accessibleEndpointerThreshold];

  v11 = @"ENDPOINTER_DEFAULT";
  if (v10 == &dword_0 + 2)
  {
    v11 = @"ENDPOINTER_EXTENDED";
  }

  if (v10 == &dword_0 + 3)
  {
    v12 = @"ENDPOINTER_MAXIMUM";
  }

  else
  {
    v12 = v11;
  }

  v13 = [(AXSiriSettingsController *)self specifierForID:v12];
  v14 = [v8 propertyForKey:v5];

  if (v14 != v13)
  {
    [v8 setProperty:v13 forKey:v5];
    [(AXSiriSettingsController *)self reloadSpecifier:v8 animated:0];
  }

  [(AXSiriSettingsController *)self endUpdates];
}

- (BOOL)_updateFooterForSpecifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_automaticSpecifier == v4)
  {
    v6 = @"VOICE_FEEDBACK_FOOTER_TEXT_AUTOMATIC";
  }

  else if (self->_preferSpokenSpecifier == v4)
  {
    v6 = @"VOICE_FEEDBACK_FOOTER_PREFER_SPOKEN";
  }

  else if (self->_neverSpecifier == v4)
  {
    v6 = AXLocStringKeyForModel();
  }

  else
  {
    v6 = 0;
  }

  v7 = [(AXSiriSettingsController *)self _localizeTriggerString:v6];
  v8 = PSFooterTextGroupKey;
  v9 = [(PSSpecifier *)self->_groupSpecifier propertyForKey:PSFooterTextGroupKey];
  v10 = [v7 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    [(PSSpecifier *)self->_groupSpecifier setProperty:v7 forKey:v8];
  }

  return v10 ^ 1;
}

- (id)_voiceActivationFooterString
{
  v3 = AXLocStringKeyForModel();
  v4 = [(AXSiriSettingsController *)self _localizeTriggerString:v3];

  return v4;
}

- (id)footerVariant
{
  if (AXDeviceIsPhoneIdiom())
  {
    v2 = @"IPHONE";
  }

  else
  {
    v2 = @"IPAD";
  }

  return v2;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AXSiriSettingsController *)self specifierAtIndex:[(AXSiriSettingsController *)self indexForIndexPath:v5]];
  if (v6 == self->_groupSpecifier)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15.receiver = self;
  v15.super_class = AXSiriSettingsController;
  v6 = a4;
  [(AXSiriSettingsController *)&v15 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXSiriSettingsController *)self specifierForIndexPath:v6, v15.receiver, v15.super_class];

  v8 = [(PSSpecifier *)v7 propertyForKey:@"groupKey"];
  LODWORD(v6) = [v8 isEqualToString:@"VOICE_FEEDBACK"];

  if (v6)
  {
    if (v7 == self->_preferSpokenSpecifier)
    {
      useDeviceSpeakerForTTSPreference = 2;
    }

    else if (v7 == self->_automaticSpecifier)
    {
      useDeviceSpeakerForTTSPreference = 1;
    }

    else
    {
      if (v7 != self->_neverSpecifier)
      {
        useDeviceSpeakerForTTSPreference = self->_useDeviceSpeakerForTTSPreference;
LABEL_15:
        [(AXSiriSettingsController *)self _setUseDeviceSpeakerForTTS:useDeviceSpeakerForTTSPreference];
        [(AXSiriSettingsController *)self _updateSpecifiersFromPreferences];
        goto LABEL_20;
      }

      useDeviceSpeakerForTTSPreference = 3;
    }

    self->_useDeviceSpeakerForTTSPreference = useDeviceSpeakerForTTSPreference;
    goto LABEL_15;
  }

  v10 = [(PSSpecifier *)v7 propertyForKey:@"groupKey"];
  v11 = [v10 isEqualToString:@"ENDPOINTER"];

  if (v11)
  {
    v12 = [(PSSpecifier *)v7 propertyForKey:PSIDKey];
    if ([v12 isEqualToString:@"ENDPOINTER_DEFAULT"])
    {
      v13 = 1;
    }

    else if ([v12 isEqualToString:@"ENDPOINTER_EXTENDED"])
    {
      v13 = 2;
    }

    else
    {
      if (![v12 isEqualToString:@"ENDPOINTER_MAXIMUM"])
      {
LABEL_19:

        goto LABEL_20;
      }

      v13 = 3;
    }

    v14 = +[AFPreferences sharedPreferences];
    [v14 setAccessibleEndpointerThreshold:v13];

    goto LABEL_19;
  }

LABEL_20:
}

- (double)_speechRateFromValue:(double)a3
{
  v5 = [(PSSpecifier *)self->_speechRateSpecifier propertyForKey:@"SRSliderMinimumSpeechRate"];
  [v5 floatValue];
  v7 = v6;

  v8 = [(PSSpecifier *)self->_speechRateSpecifier propertyForKey:@"SRSliderMaximumSpeechRate"];
  [v8 floatValue];
  v10 = v9;

  return v7 + a3 * (v10 - v7);
}

- (void)setupSiriSpeechRateSlider:(id)a3
{
  v4 = a3;
  v5 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setSpeechRateFromSliderValue:specifier:" get:"sliderValueForSpeechRate:" detail:0 cell:5 edit:0];
  speechRateSpecifier = self->_speechRateSpecifier;
  self->_speechRateSpecifier = v5;

  [(PSSpecifier *)self->_speechRateSpecifier setProperty:@"SPEECH_RATE_SLIDER" forKey:PSIDKey];
  [(PSSpecifier *)self->_speechRateSpecifier setProperty:&off_27D130 forKey:PSDefaultValueKey];
  [(PSSpecifier *)self->_speechRateSpecifier setProperty:&off_27D140 forKey:@"SRSliderMinimumSpeechRate"];
  [(PSSpecifier *)self->_speechRateSpecifier setProperty:&off_27D150 forKey:@"SRSliderMaximumSpeechRate"];
  [(PSSpecifier *)self->_speechRateSpecifier setProperty:&off_27D160 forKey:@"SRSliderDefaultSpeechRate"];
  objc_initWeak(location, self);
  [(PSSpecifier *)self->_speechRateSpecifier setProperty:objc_opt_class() forKey:PSCellClassKey];
  objc_initWeak(&from, self->_speechRateSpecifier);
  v7 = self->_speechRateSpecifier;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke;
  v30[3] = &unk_256DE0;
  objc_copyWeak(&v31, location);
  v8 = objc_retainBlock(v30);
  [(PSSpecifier *)v7 setProperty:v8 forKey:@"SpeechRateFormatterProperty"];

  v9 = self->_speechRateSpecifier;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke_2;
  v28[3] = &unk_256E08;
  objc_copyWeak(&v29, location);
  v10 = objc_retainBlock(v28);
  [(PSSpecifier *)v9 setProperty:v10 forKey:@"SpeechShouldPlayHapticDistance"];

  v11 = self->_speechRateSpecifier;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke_3;
  v26[3] = &unk_256E30;
  objc_copyWeak(&v27, &from);
  v12 = objc_retainBlock(v26);
  [(PSSpecifier *)v11 setProperty:v12 forKey:@"SpeechRateChangedProperty"];

  v13 = self->_speechRateSpecifier;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke_4;
  v24[3] = &unk_255388;
  objc_copyWeak(&v25, location);
  v14 = objc_retainBlock(v24);
  [(PSSpecifier *)v13 setProperty:v14 forKey:@"SpeechRateSelectedProperty"];

  v15 = self->_speechRateSpecifier;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke_5;
  v22[3] = &unk_256E58;
  objc_copyWeak(&v23, &from);
  v16 = objc_retainBlock(v22);
  [(PSSpecifier *)v15 setProperty:v16 forKey:@"SpeechRateProperty"];

  v17 = self->_speechRateSpecifier;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke_6;
  v20[3] = &unk_256DE0;
  objc_copyWeak(&v21, &from);
  v18 = objc_retainBlock(v20);
  [(PSSpecifier *)v17 setProperty:v18 forKey:@"SpeechRateForSliderValueProperty"];

  v19 = settingsLocString(@"SPEECH_RATE_SPECIFIER_ACCESSIBILITY_LABEL", @"SiriSettings");
  [(PSSpecifier *)self->_speechRateSpecifier setAccessibilityLabel:v19];

  [v4 insertObject:self->_speechRateSpecifier atIndex:{objc_msgSend(v4, "indexOfSpecifierWithID:", @"SPEECH_RATE"}];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

double __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _speechRateFromValue:a2];
  v5 = v4 * 100.0;

  return v5;
}

double __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke_2(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _speechRateFromValue:a2];
  v8 = v7;

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 _speechRateFromValue:a3];
  v11 = v10;

  return vabdd_f64(v8, v11);
}

void __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke_3(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained propertyForKey:@"SRSliderMinimumSpeechRate"];
  [v5 floatValue];
  v7 = v6;

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 propertyForKey:@"SRSliderMaximumSpeechRate"];
  [v9 floatValue];
  v11 = v10;

  *&a2 = v7 + (v11 - v7) * a2;
  v14 = +[AFPreferences sharedPreferences];
  LODWORD(v12) = LODWORD(a2);
  v13 = [NSNumber numberWithFloat:v12];
  [v14 setSiriSpeechRate:v13];
}

void __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSpeechEventCondition];
}

double __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained propertyForKey:@"SRSliderMinimumSpeechRate"];
  [v3 floatValue];
  v5 = v4;

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 propertyForKey:@"SRSliderMaximumSpeechRate"];
  [v7 floatValue];
  v9 = v8;

  v10 = +[AFPreferences sharedPreferences];
  v11 = [v10 siriSpeechRate];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &off_27D160;
  }

  [v12 doubleValue];
  v14 = (v13 - v5) / (v9 - v5);

  return v14;
}

double __54__AXSiriSettingsController_setupSiriSpeechRateSlider___block_invoke_6(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained propertyForKey:@"SRSliderMinimumSpeechRate"];
  [v5 floatValue];
  v7 = v6;

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 propertyForKey:@"SRSliderMaximumSpeechRate"];
  [v9 floatValue];
  v11 = v10;

  return (a2 - v7) / (v11 - v7);
}

- (void)_handleSpeechEventCondition
{
  if (!_AXSVoiceOverTouchEnabled())
  {
    if (!self->_siriSession)
    {
      v3 = objc_opt_new();
      siriSession = self->_siriSession;
      self->_siriSession = v3;
    }

    v5 = +[AFConnection outputVoice];
    v6 = [SiriTTSSynthesisVoice alloc];
    v7 = [v5 languageCode];
    v8 = [v5 name];
    v9 = [v6 initWithLanguage:v7 name:v8];

    v10 = [(AXSiriSettingsController *)self speechRate];
    [v10 doubleValue];
    v12 = v11;

    v13 = [SiriTTSSpeechRequest alloc];
    v14 = [v5 languageCode];
    v15 = siriSpeakingSampleLocString(v14, v12);
    v16 = [v13 initWithText:v15 voice:v9];

    *&v17 = v12;
    [v16 setRate:v17];
    if (self->_activeSampleSpeechRequest)
    {
      [(SiriTTSDaemonSession *)self->_siriSession cancelWithRequest:?];
    }

    activeSampleSpeechRequest = self->_activeSampleSpeechRequest;
    self->_activeSampleSpeechRequest = v16;
    v19 = v16;

    v20 = self->_siriSession;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __55__AXSiriSettingsController__handleSpeechEventCondition__block_invoke;
    v21[3] = &unk_256E80;
    v21[4] = self;
    [(SiriTTSDaemonSession *)v20 speakWithSpeechRequest:v19 didFinish:v21];
  }
}

void __55__AXSiriSettingsController__handleSpeechEventCondition__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = AXLogSettings();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    LOWORD(v13) = 0;
    v8 = "Spoke siri sample string";
    goto LABEL_7;
  }

  v5 = [v3 code];
  v6 = AXLogSettings();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5 == &dword_0 + 1)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    LOWORD(v13) = 0;
    v8 = "Siri sample cancelled early";
LABEL_7:
    v9 = v6;
    v10 = 2;
    goto LABEL_10;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v13 = 138412290;
  v14 = v4;
  v8 = "Failed to speak siri sample string with error: %@";
  v9 = v6;
  v10 = 12;
LABEL_10:
  _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v8, &v13, v10);
LABEL_11:

  v11 = *(a1 + 32);
  v12 = *(v11 + 224);
  if (v12)
  {
    *(v11 + 224) = 0;
  }
}

- (id)speechRate
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 siriSpeechRate];

  [v3 floatValue];
  if (v4 <= 0.0)
  {
    v5 = &off_27D160;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (id)sliderValueForSpeechRate:(id)a3
{
  v3 = [a3 propertyForKey:@"SpeechRateProperty"];
  v3[2]();
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

@end