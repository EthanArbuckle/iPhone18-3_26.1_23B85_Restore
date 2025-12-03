@interface AssistantBridgeController
- (AssistantBridgeController)init;
- (BOOL)raiseToSpeakEnabledAndSupported;
- (id)_applicationSuggestionsSpecifierWithBundleId:(id)id device:(id)device;
- (id)_localizeTriggerString:(id)string;
- (id)_localizedNameForRemoteApp:(id)app;
- (id)digitalCrownEnabled;
- (id)messageWithoutConfirmationEnabled;
- (id)raiseToSpeakEnabled;
- (id)specifiers;
- (id)triggerPhrase;
- (id)voiceFeedbackMode;
- (id)voiceTriggerEnabled;
- (id)voiceVolume;
- (void)_addHyperlinkStyleToText:(id)text inString:(id)string action:(SEL)action forGroup:(id)group;
- (void)_showAboutActionSheet;
- (void)_updateAskSiriFooter;
- (void)dealloc;
- (void)languageCodeDidChange;
- (void)preferencesDidChange;
- (void)restrictionsDidChange;
- (void)setDigitalCrownEnabled:(id)enabled;
- (void)setMessageWithoutConfirmationEnabled:(id)enabled;
- (void)setRaiseToSpeakEnabled:(id)enabled;
- (void)setVoiceTriggerEnabled:(id)enabled;
- (void)setVoiceVolume:(id)volume;
@end

@implementation AssistantBridgeController

- (AssistantBridgeController)init
{
  v17.receiver = self;
  v17.super_class = AssistantBridgeController;
  v2 = [(AssistantBridgeController *)&v17 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    cachedAppSpecifiers = v2->_cachedAppSpecifiers;
    v2->_cachedAppSpecifiers = v3;

    v5 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v5 getActivePairedDevice];

    v7 = [[NSUUID alloc] initWithUUIDString:@"BFF435BD-ACFF-4AD8-9CC4-4DEA6D51BB3A"];
    v2->_siriSpeaksSupportedHardware = [getActivePairedDevice supportsCapability:v7];

    v8 = [[NSUUID alloc] initWithUUIDString:@"68E9D2AF-A820-45FC-8FB3-92A04428CBF8"];
    v2->_raiseToSpeakSupportedHardware = [getActivePairedDevice supportsCapability:v8];

    v9 = [[NSUUID alloc] initWithUUIDString:@"36BD47D1-7193-4236-867F-3555B4AC18B0"];
    v2->_siriResponsesSupported = [getActivePairedDevice supportsCapability:v9];

    v10 = +[AFPreferences sharedPreferences];
    nanoLanguageCode = [v10 nanoLanguageCode];
    v2->_siriSpeaksSupportedLanguage = AFGryphonAssetsExistForLanguage();

    v12 = [[NSUUID alloc] initWithUUIDString:@"3650D526-DBF6-4230-8502-4508D40210DB"];
    v2->_siriAutoSendSupported = [getActivePairedDevice supportsCapability:v12];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"languageCodeDidChange" name:AFLanguageCodeDidChangeNotification object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"preferencesDidChange" name:AFNanoPreferencesDidChangeNotification object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"restrictionsDidChange" name:MCRestrictionChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AssistantBridgeController;
  [(AssistantBridgeController *)&v4 dealloc];
}

- (void)preferencesDidChange
{
  v3 = +[AFPreferences sharedPreferences];
  nanoLanguageCode = [v3 nanoLanguageCode];
  self->_siriSpeaksSupportedLanguage = AFGryphonAssetsExistForLanguage();

  [(AssistantBridgeController *)self reloadSpecifiers];
}

- (void)restrictionsDidChange
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1598;
  v2[3] = &unk_10420;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AssistantBridgeController *)self loadSpecifiersFromPlistName:@"AssistantBridgeSettings" target:self];
    v6 = [v5 specifierForID:@"HEY_SIRI_SWITCH_ID"];
    v7 = [v5 specifierForID:@"VOICE_TRIGGER_ID"];
    v53 = v3;
    v50 = v7;
    if (+[AssistantBridgeSettingsUtilities isCompactVoiceTriggerAvailable])
    {
      [v5 removeObject:v6];
    }

    else
    {
      [v5 removeObject:v7];
      v8 = [(AssistantBridgeController *)self _localizeTriggerString:@"VOICE_ACTIVATION"];
      [v6 setName:v8];
    }

    if (!self->_raiseToSpeakSupportedHardware || (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v9 = objc_claimAutoreleasedReturnValue(), [v9 nanoLanguageCode], v10 = objc_claimAutoreleasedReturnValue(), v11 = AFRaiseToSpeakSupportedForLanguage(), v10, v9, (v11 & 1) == 0))
    {
      v12 = [v5 specifierForID:@"RAISE_TO_SPEAK_SWITCH_ID"];
      [v5 removeObject:v12];
    }

    v13 = [v5 specifierForID:@"VOICE_VOLUME_SLIDER_ID"];
    if (self->_siriSpeaksSupportedHardware && self->_siriSpeaksSupportedLanguage && !self->_siriResponsesSupported)
    {
      WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);

      if (WeakRetained)
      {
        v45 = [UIImage imageNamed:@"Volume-Min"];
        WeakRetained = [v45 imageFlippedForRightToLeftLayoutDirection];

        v46 = [UIImage imageNamed:@"Volume-Max"];
        imageFlippedForRightToLeftLayoutDirection = [v46 imageFlippedForRightToLeftLayoutDirection];
      }

      else
      {
        imageFlippedForRightToLeftLayoutDirection = 0;
      }

      [v13 setProperty:WeakRetained forKey:PSSliderLeftImageKey];
      [v13 setProperty:imageFlippedForRightToLeftLayoutDirection forKey:PSSliderRightImageKey];
    }

    else
    {
      WeakRetained = [v5 specifierForID:@"VOICE_FEEDBACK_GROUP_ID"];
      [v5 removeObject:WeakRetained];
      imageFlippedForRightToLeftLayoutDirection = [v5 specifierForID:@"VOICE_FEEDBACK_ID"];
      [v5 removeObject:imageFlippedForRightToLeftLayoutDirection];
      v16 = [v5 specifierForID:@"VOICE_VOLUME_GROUP_ID"];
      [v5 removeObject:v16];
      [v5 removeObject:v13];
    }

    if (!self->_siriAutoSendSupported)
    {
      v17 = [v5 specifierForID:@"AUTOMATICALLY_SEND_MESSAGES_GROUP_ID"];
      [v5 removeObject:v17];
      v18 = [v5 specifierForID:@"AUTOMATICALLY_SEND_MESSAGES_SWITCH_ID"];
      [v5 removeObject:v18];
    }

    if (!self->_siriResponsesSupported)
    {
      v19 = [v5 specifierForID:@"SIRI_RESPONSES_GROUP_ID"];
      [v5 removeObject:v19];
      v20 = [v5 specifierForID:@"SIRI_RESPONSES_ID"];
      [v5 removeObject:v20];
    }

    v49 = v13;
    v21 = AFAssistantRestricted();
    v22 = [NSNumber numberWithBool:v21 ^ 1u];
    v23 = PSEnabledKey;
    v51 = v6;
    [v6 setProperty:v22 forKey:PSEnabledKey];
    v24 = [v5 specifierForID:@"VOICE_TRIGGER_ID"];
    [v24 setProperty:v22 forKey:v23];

    v25 = [v5 specifierForID:@"RAISE_TO_SPEAK_SWITCH_ID"];
    [v25 setProperty:v22 forKey:v23];

    v26 = [v5 specifierForID:@"DIGITAL_CROWN_SWITCH_ID"];
    v48 = v22;
    [v26 setProperty:v22 forKey:v23];

    if ((v21 & 1) != 0 || (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 nanoAssistantEnabled], v27, (v28 & 1) == 0))
    {
      v29 = [v5 indexOfSpecifierWithID:@"DIGITAL_CROWN_SWITCH_ID"] + 1;
      [v5 removeObjectsInRange:{v29, objc_msgSend(v5, "indexOfSpecifierWithID:", @"ASSISTANT_SUGGESTIONS_GROUP_ID"}];
    }

    v52 = v5;
    v47 = [v5 specifierForID:@"ASSISTANT_SUGGESTIONS_GROUP_ID"];
    v30 = objc_opt_new();
    v31 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v31 getActivePairedDevice];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v33 = [[NSSet alloc] initWithObjects:{@"com.apple.NanoMaps", @"com.apple.SessionTrackerApp", 0}];
    v34 = [v33 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v55;
      do
      {
        v37 = 0;
        do
        {
          if (*v55 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [(AssistantBridgeController *)self _applicationSuggestionsSpecifierWithBundleId:*(*(&v54 + 1) + 8 * v37) device:getActivePairedDevice];
          v39 = v38;
          if (v38)
          {
            name = [v38 name];

            if (name)
            {
              v41 = AFSiriLogContextConnection;
              if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v59 = "[AssistantBridgeController specifiers]";
                v60 = 2112;
                v61 = v39;
                _os_log_debug_impl(&dword_0, v41, OS_LOG_TYPE_DEBUG, "%s AssistantBridge: adding %@", buf, 0x16u);
              }

              [v30 addObject:v39];
            }
          }

          v37 = v37 + 1;
        }

        while (v35 != v37);
        v35 = [v33 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v35);
    }

    if ([v30 count])
    {
      [v52 ps_insertObjectsFromArray:v30 afterObject:v47];
    }

    else
    {
      [v52 removeObject:v47];
    }

    v42 = [v52 copy];
    v43 = *&self->PSListController_opaque[v53];
    *&self->PSListController_opaque[v53] = v42;

    [(AssistantBridgeController *)self _updateAskSiriFooter];
    v4 = *&self->PSListController_opaque[v53];
  }

  return v4;
}

- (id)_applicationSuggestionsSpecifierWithBundleId:(id)id device:(id)device
{
  idCopy = id;
  deviceCopy = device;
  v8 = [(NSMutableDictionary *)self->_cachedAppSpecifiers objectForKeyedSubscript:idCopy];

  v9 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v9)
    {
      sub_8A8C();
    }

    v10 = [(NSMutableDictionary *)self->_cachedAppSpecifiers objectForKeyedSubscript:idCopy];
  }

  else
  {
    if (v9)
    {
      sub_8B0C();
    }

    v11 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    [v11 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v11 setProperty:idCopy forKey:PSIDKey];
    [v11 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v11 setDetailControllerClass:objc_opt_class()];
    [v11 setProperty:idCopy forKey:PSLazyIconAppID];
    [v11 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
    [(NSMutableDictionary *)self->_cachedAppSpecifiers setObject:v11 forKeyedSubscript:idCopy];
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      sub_8B8C();
    }

    objc_initWeak(&location, self);
    v12 = +[ACXDeviceConnection sharedDeviceConnection];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_200C;
    v16[3] = &unk_10470;
    v17 = idCopy;
    objc_copyWeak(&v19, &location);
    v13 = v11;
    v18 = v13;
    [v12 fetchApplicationOnPairedDevice:deviceCopy withBundleID:v17 completion:v16];

    v14 = v18;
    v10 = v13;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (id)_localizedNameForRemoteApp:(id)app
{
  appCopy = app;
  v4 = _kCFBundleDisplayNameKey;
  v5 = [[NSSet alloc] initWithObjects:{_kCFBundleDisplayNameKey, 0}];
  v6 = +[NSLocale preferredLanguages];
  v7 = [appCopy localizedInfoPlistStringsForKeys:v5 fetchingFirstMatchingLocalizationInList:v6];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:v4];
  }

  else
  {
    v8 = 0;
  }

  if (![v8 length])
  {
    applicationName = [appCopy applicationName];

    v8 = applicationName;
  }

  return v8;
}

- (id)voiceTriggerEnabled
{
  v2 = +[AssistantBridgeSettingsUtilities voiceTriggerEnabled];

  return [NSNumber numberWithBool:v2];
}

- (void)setVoiceTriggerEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];
  if (-[AssistantBridgeController raiseToSpeakEnabledAndSupported](self, "raiseToSpeakEnabledAndSupported") || (-[AssistantBridgeController digitalCrownEnabled](self, "digitalCrownEnabled"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 BOOLValue], v5, (v6 & 1) != 0))
  {
    v7 = +[AFPreferences sharedPreferences];
    [v7 setNanoPhraseSpotterEnabled:bOOLValue];
  }

  else
  {

    [(AssistantBridgeController *)self setAssistantEnabled:bOOLValue withConfirmationAction:&stru_104B0];
  }
}

- (id)_localizeTriggerString:(id)string
{
  stringCopy = string;
  v4 = +[AFPreferences sharedPreferences];
  nanoLanguageCode = [v4 nanoLanguageCode];

  v6 = +[VTPreferences sharedPreferences];
  v7 = [v6 localizedTriggerPhraseForLanguageCode:nanoLanguageCode];

  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[AssistantBridgeController _localizeTriggerString:]";
    v16 = 2112;
    v17 = nanoLanguageCode;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s languageCode: %@, triggerPhrase: %@", buf, 0x20u);
  }

  v9 = [v7 stringByReplacingOccurrencesOfString:@" " withString:@" "];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:stringCopy value:&stru_10AF0 table:@"AssistantBridgeSettings"];

  v12 = [NSString stringWithFormat:v11, v9];

  return v12;
}

- (id)triggerPhrase
{
  voiceTriggerEnabled = [(AssistantBridgeController *)self voiceTriggerEnabled];
  bOOLValue = [voiceTriggerEnabled BOOLValue];

  if (bOOLValue)
  {
    v4 = +[AFPreferences sharedPreferences];
    nanoVTPhraseType = [v4 nanoVTPhraseType];

    if (nanoVTPhraseType == &dword_0 + 1)
    {
      v6 = +[AssistantBridgeSettingsUtilities triggerPhraseChoiceHSJS];
    }

    else
    {
      if (nanoVTPhraseType)
      {
        goto LABEL_8;
      }

      v6 = +[AssistantBridgeSettingsUtilities triggerPhraseChoiceHS];
    }

    v4 = v6;
  }

  else
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v7 localizedStringForKey:@"VOICE_TRIGGER_DISABLED" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
  }

LABEL_8:

  return v4;
}

- (BOOL)raiseToSpeakEnabledAndSupported
{
  v2 = +[AssistantBridgeSettingsUtilities raiseToSpeakEnabled];
  if (v2)
  {
    v3 = +[AFPreferences sharedPreferences];
    nanoLanguageCode = [v3 nanoLanguageCode];
    v5 = AFRaiseToSpeakSupportedForLanguage();

    LOBYTE(v2) = v5;
  }

  return v2;
}

- (id)raiseToSpeakEnabled
{
  v2 = +[AssistantBridgeSettingsUtilities raiseToSpeakEnabled];

  return [NSNumber numberWithBool:v2];
}

- (void)setRaiseToSpeakEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];
  voiceTriggerEnabled = [(AssistantBridgeController *)self voiceTriggerEnabled];
  if ([voiceTriggerEnabled BOOLValue])
  {

LABEL_4:
    v8 = +[AFPreferences sharedPreferences];
    [v8 setNanoRaiseToSpeakEnabled:bOOLValue];

    return;
  }

  digitalCrownEnabled = [(AssistantBridgeController *)self digitalCrownEnabled];
  bOOLValue2 = [digitalCrownEnabled BOOLValue];

  if (bOOLValue2)
  {
    goto LABEL_4;
  }

  [(AssistantBridgeController *)self setAssistantEnabled:bOOLValue withConfirmationAction:&stru_104D0];
}

- (id)digitalCrownEnabled
{
  v2 = +[AssistantBridgeSettingsUtilities digitalCrownEnabled];

  return [NSNumber numberWithBool:v2];
}

- (void)setDigitalCrownEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];
  voiceTriggerEnabled = [(AssistantBridgeController *)self voiceTriggerEnabled];
  if ([voiceTriggerEnabled BOOLValue])
  {

LABEL_4:
    v7 = +[AFPreferences sharedPreferences];
    [v7 setNanoCrownActivationEnabled:bOOLValue];

    return;
  }

  raiseToSpeakEnabledAndSupported = [(AssistantBridgeController *)self raiseToSpeakEnabledAndSupported];

  if (raiseToSpeakEnabledAndSupported)
  {
    goto LABEL_4;
  }

  [(AssistantBridgeController *)self setAssistantEnabled:bOOLValue withConfirmationAction:&stru_104F0];
}

- (id)messageWithoutConfirmationEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 nanoMessageWithoutConfirmationEnabled]);

  return v3;
}

- (void)setMessageWithoutConfirmationEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];
  v4 = +[AFPreferences sharedPreferences];
  [v4 setNanoMessageWithoutConfirmationEnabled:bOOLValue];
}

- (void)_updateAskSiriFooter
{
  v3 = +[AssistantBridgeSettingsUtilities voiceTriggerEnabled];
  v4 = +[AssistantBridgeSettingsUtilities raiseToSpeakEnabled];
  v5 = +[AssistantBridgeSettingsUtilities digitalCrownEnabled];
  v6 = +[AFPreferences sharedPreferences];
  languageCode = [v6 languageCode];
  v8 = AFRaiseToSpeakSupportedForLanguage();

  v9 = &AFAssistantRestricted_ptr;
  if (!v3)
  {
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = v18;
    if ((v4 & v8) == 1)
    {
      if (v5)
      {
        v19 = @"ACTIVATION_FOOTER_CROWN_AND_RAISE_TO_SPEAK";
      }

      else
      {
        v19 = @"ACTIVATION_FOOTER_RAISE_TO_SPEAK_ONLY";
      }
    }

    else if (v5)
    {
      v19 = @"ACTIVATION_FOOTER_CROWN_ONLY";
    }

    else
    {
      v19 = @"ACTIVATION_FOOTER_ALL_DISABLED";
    }

    v33 = [v18 localizedStringForKey:v19 value:&stru_10AF0 table:@"AssistantBridgeSettings"];
    goto LABEL_31;
  }

  v10 = +[AssistantBridgeSettingsUtilities languageCode];
  v11 = +[VTPreferences sharedPreferences];
  v12 = [v11 localizedTriggerPhraseForLanguageCode:v10];

  v13 = +[VTPreferences sharedPreferences];
  v14 = [v13 localizedCompactTriggerPhraseForLanguageCode:v10];

  if (+[AssistantBridgeSettingsUtilities isCompactVoiceTriggerAvailable])
  {
    v15 = +[AFPreferences sharedPreferences];
    nanoVTPhraseType = [v15 nanoVTPhraseType];

    v17 = nanoVTPhraseType == &dword_0 + 1;
  }

  else
  {
    v17 = 0;
  }

  v20 = v4 & v8;
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = v21;
  if (v20 != 1)
  {
    if (v5)
    {
      if (v17)
      {
        v23 = @"ACTIVATION_FOOTER_BOTH_VOICE_TRIGGERS_AND_CROWN";
        goto LABEL_24;
      }

      v25 = @"ACTIVATION_FOOTER_HS_AND_CROWN";
    }

    else
    {
      if (v17)
      {
        v23 = @"ACTIVATION_FOOTER_BOTH_VOICE_TRIGGERS";
        goto LABEL_24;
      }

      v25 = @"ACTIVATION_FOOTER_HS_ONLY";
    }

LABEL_29:
    v24 = [v21 localizedStringForKey:v25 value:&stru_10AF0 table:@"AssistantBridgeSettings"];
    [NSString stringWithFormat:v24, v12, v32];
    goto LABEL_30;
  }

  if (!v5)
  {
    if (v17)
    {
      v23 = @"ACTIVATION_FOOTER_BOTH_VOICE_TRIGGERS_AND_RAISE_TO_SPEAK";
      goto LABEL_24;
    }

    v25 = @"ACTIVATION_FOOTER_HS_AND_RAISE_TO_SPEAK";
    goto LABEL_29;
  }

  if (!v17)
  {
    v25 = @"ACTIVATION_FOOTER_HS_RAISE_TO_SPEAK_AND_CROWN";
    goto LABEL_29;
  }

  v23 = @"ACTIVATION_FOOTER_BOTH_VOICE_TRIGGERS_RAISE_TO_SPEAK_AND_CROWN_ENABLED";
LABEL_24:
  v24 = [v21 localizedStringForKey:v23 value:&stru_10AF0 table:@"AssistantBridgeSettings"];
  [NSString stringWithFormat:v24, v14, v12];
  v33 = LABEL_30:;

  v9 = &AFAssistantRestricted_ptr;
LABEL_31:

  v26 = [NSBundle bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"ACTIVATION_FOOTER_PRIVACY_LINK_TEXT" value:&stru_10AF0 table:@"AssistantBridgeSettings"];

  v28 = [v9[116] stringWithFormat:@"%@ %@", v33, v27];
  v29 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] specifierForID:@"ASK_SIRI_GROUP_ID"];
  [v29 setProperty:v28 forKey:PSFooterTextGroupKey];
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  [v29 setProperty:v31 forKey:PSFooterCellClassGroupKey];

  [(AssistantBridgeController *)self _addHyperlinkStyleToText:v27 inString:v28 action:"_showAboutActionSheet" forGroup:v29];
}

- (void)_addHyperlinkStyleToText:(id)text inString:(id)string action:(SEL)action forGroup:(id)group
{
  textCopy = text;
  stringCopy = string;
  groupCopy = group;
  v12 = [groupCopy propertyForKey:PSFooterCellClassGroupKey];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v12 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [NSException raise:NSInternalInconsistencyException format:@"Group must use %@ as footer cell class", v17];
  }

  v18 = [stringCopy rangeOfString:textCopy];
  if (v19)
  {
    [groupCopy addFooterHyperlinkWithRange:v18 target:v19 action:{self, action}];
  }
}

- (void)_showAboutActionSheet
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)languageCodeDidChange
{
  v3 = +[AFPreferences sharedPreferences];
  nanoLanguageCode = [v3 nanoLanguageCode];
  self->_siriSpeaksSupportedLanguage = AFGryphonAssetsExistForLanguage();

  [(AssistantBridgeController *)self reloadSpecifiers];
}

- (id)voiceFeedbackMode
{
  v2 = +[AFPreferences sharedPreferences];
  nanoUseDeviceSpeakerForTTS = [v2 nanoUseDeviceSpeakerForTTS];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = @"VOICE_FEEDBACK_HEADPHONES_ONLY";
  if (nanoUseDeviceSpeakerForTTS == &dword_0 + 1)
  {
    v6 = @"VOICE_FEEDBACK_CONTROL_WITH_SILENT_MODE";
  }

  if (nanoUseDeviceSpeakerForTTS == &dword_0 + 2)
  {
    v7 = @"VOICE_FEEDBACK_ALWAYS_ON";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v4 localizedStringForKey:v7 value:&stru_10AF0 table:@"AssistantBridgeSettings"];

  return v8;
}

- (id)voiceVolume
{
  v2 = +[AFPreferences sharedPreferences];
  [v2 nanoTTSSpeakerVolume];
  v3 = [NSNumber numberWithFloat:?];

  return v3;
}

- (void)setVoiceVolume:(id)volume
{
  [volume floatValue];
  v4 = v3;
  v6 = +[AFPreferences sharedPreferences];
  LODWORD(v5) = v4;
  [v6 setNanoTTSSpeakerVolume:v5];
}

@end