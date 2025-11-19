@interface AssistantAudioFeedbackController
+ (id)bundle;
- (BOOL)_isDeviceSpeakerSupportedForBluetoothAudioRoute;
- (id)_localizeTriggerString:(id)a3;
- (id)alwaysShowRecognizedSpeech;
- (id)isAlwaysPrintSiriResponseEnabled:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_hideSiriBluetoothVehicleAudioRouteSettingsIfNeeded:(id)a3;
- (void)_refreshFooterForPreferredAudioRouteSpecifier:(id)a3;
- (void)_refreshFooterForSpecifier:(id)a3;
- (void)_refreshFooterForUpdateDeviceSpeaker;
- (void)_updateDeviceSpeakerForTTSPreferenceIfNeeded:(id)a3;
- (void)_updateDeviceSpeakerForTTSSpecifiersFromPreferences;
- (void)_updatePreferedAudioRouteFromPreferences;
- (void)_updatePreferencesIfNeeded:(id)a3;
- (void)_updatePreferredAudioRouteIfNeeded:(id)a3;
- (void)_updateSpecifiersFromPreferences;
- (void)preferencesDidChange:(id)a3;
- (void)registerUndoActionWithKey:(id)a3 urlString:(id)a4 undoAction:(id)a5;
- (void)setAlwaysPrintSiriResponseEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setAlwaysShowRecognizedSpeech:(id)a3 forSpecifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AssistantAudioFeedbackController

+ (id)bundle
{
  v2 = bundle_sAssistantBundle_3;
  if (!bundle_sAssistantBundle_3)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantBundle_3;
    bundle_sAssistantBundle_3 = v3;

    v2 = bundle_sAssistantBundle_3;
  }

  return v2;
}

- (void)preferencesDidChange:(id)a3
{
  v4 = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = [v4 useDeviceSpeakerForTTS];

  if (v5 != self->_useDeviceSpeakerForTTSPreference)
  {
    self->_useDeviceSpeakerForTTSPreference = v5;
  }

  [(AssistantAudioFeedbackController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(AssistantAudioFeedbackController *)self loadSpecifiersFromPlistName:@"AssistantAudioFeedback" target:self];
    v6 = [v5 specifierForID:@"VOICE_FEEDBACK_GROUP_ID"];
    groupSpecifier = self->_groupSpecifier;
    self->_groupSpecifier = v6;

    v8 = [v5 specifierForID:@"VOICE_FEEDBACK_PREFER_SILENT_RESPONSES_ID"];
    preferSilentResponsesSpecifier = self->_preferSilentResponsesSpecifier;
    self->_preferSilentResponsesSpecifier = v8;

    v10 = [v5 specifierForID:@"VOICE_FEEDBACK_AUTOMATIC_ID"];
    automaticSpecifier = self->_automaticSpecifier;
    self->_automaticSpecifier = v10;

    v12 = [v5 specifierForID:@"VOICE_FEEDBACK_PREFER_SPOKEN_RESPONSES_ID"];
    preferSpokenResponsesSpecifier = self->_preferSpokenResponsesSpecifier;
    self->_preferSpokenResponsesSpecifier = v12;

    v14 = [v5 specifierForID:@"PREFERRED_AUDIO_GROUP_ID"];
    preferredAudioRouteGroupSpecifier = self->_preferredAudioRouteGroupSpecifier;
    self->_preferredAudioRouteGroupSpecifier = v14;

    v16 = [v5 specifierForID:@"PREFFERED_AUDIO_ROUTE_BLUETOOTH_AUDIO_ID"];
    preferredAudioRouteBluetoothSpecifier = self->_preferredAudioRouteBluetoothSpecifier;
    self->_preferredAudioRouteBluetoothSpecifier = v16;

    v18 = [v5 specifierForID:@"PREFERRED_AUDIO_ROUTE_CAR_RADIO_ID"];
    preferredAudioRouteCarRadioSpecifier = self->_preferredAudioRouteCarRadioSpecifier;
    self->_preferredAudioRouteCarRadioSpecifier = v18;

    v20 = [v5 specifierForID:@"PREFERRED_AUDIO_ROUTE_PHONE_SPEAKER_ID"];
    preferredAudioRoutePhoneSpeakerSpecifier = self->_preferredAudioRoutePhoneSpeakerSpecifier;
    self->_preferredAudioRoutePhoneSpeakerSpecifier = v20;

    [(AssistantAudioFeedbackController *)self _hideSiriBluetoothVehicleAudioRouteSettingsIfNeeded:v5];
    if (![(AssistantAudioFeedbackController *)self _isDeviceSpeakerSupportedForBluetoothAudioRoute])
    {
      v22 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v28 = 136315138;
        v29 = "[AssistantAudioFeedbackController specifiers]";
        _os_log_impl(&dword_2413B9000, v22, OS_LOG_TYPE_DEFAULT, "%s The current device doesn't support device speaker option. Removing option.", &v28, 0xCu);
      }

      [v5 removeObject:self->_preferredAudioRoutePhoneSpeakerSpecifier];
    }

    if ([MEMORY[0x277CEF4D0] saeAvailable])
    {
      v23 = [v5 specifierForID:@"ALWAYS_PRINT_RESPONSE_GROUP_ID"];
      [v5 removeObject:v23];
      v24 = [v5 specifierForID:@"ALWAYS_PRINT_RESPONSE_ID"];
      [v5 removeObject:v24];
    }

    v25 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    [(AssistantAudioFeedbackController *)self _updateSpecifiersFromPreferences];
    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_hideSiriBluetoothVehicleAudioRouteSettingsIfNeeded:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!CFPreferencesGetAppBooleanValue(@"showBTAudioRouteSetting", @"com.apple.siri.CarBluetooth", 0))
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[AssistantAudioFeedbackController _hideSiriBluetoothVehicleAudioRouteSettingsIfNeeded:]";
      _os_log_impl(&dword_2413B9000, v5, OS_LOG_TYPE_DEFAULT, "%s Hiding the BT Car Audio Route Settings.", &v7, 0xCu);
    }

    [v4 removeObject:self->_preferredAudioRouteGroupSpecifier];
    [v4 removeObject:self->_preferredAudioRoutePhoneSpeakerSpecifier];
    [v4 removeObject:self->_preferredAudioRouteBluetoothSpecifier];
    [v4 removeObject:self->_preferredAudioRouteCarRadioSpecifier];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateSpecifiersFromPreferences
{
  [(AssistantAudioFeedbackController *)self _updateDeviceSpeakerForTTSSpecifiersFromPreferences];

  [(AssistantAudioFeedbackController *)self _updatePreferedAudioRouteFromPreferences];
}

- (void)_updateDeviceSpeakerForTTSSpecifiersFromPreferences
{
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  self->_useDeviceSpeakerForTTSPreference = [v3 useDeviceSpeakerForTTS];

  v4 = self->_useDeviceSpeakerForTTSPreference - 1;
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&self->super.super.super.super.super.isa + *off_278CD1EC8[v4]);
  }

  v6 = v5;
  [(PSSpecifier *)self->_groupSpecifier setProperty:v5 forKey:*MEMORY[0x277D40090]];
  [(AssistantAudioFeedbackController *)self _refreshFooterForSpecifier:v6];
}

- (void)_updatePreferedAudioRouteFromPreferences
{
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 bluetoothPreferredCarAudioRoute];
  preferredCarAudioRoute = self->_preferredCarAudioRoute;
  self->_preferredCarAudioRoute = v4;

  if (([(NSString *)self->_preferredCarAudioRoute isEqual:@"A2DP"]& 1) != 0)
  {
    v6 = &OBJC_IVAR___AssistantAudioFeedbackController__preferredAudioRouteBluetoothSpecifier;
  }

  else if ([(AssistantAudioFeedbackController *)self _isDeviceSpeakerSupportedForBluetoothAudioRoute]&& ([(NSString *)self->_preferredCarAudioRoute isEqual:@"DeviceSpeaker"]& 1) != 0)
  {
    v6 = &OBJC_IVAR___AssistantAudioFeedbackController__preferredAudioRoutePhoneSpeakerSpecifier;
  }

  else
  {
    v6 = &OBJC_IVAR___AssistantAudioFeedbackController__preferredAudioRouteCarRadioSpecifier;
  }

  v7 = *(&self->super.super.super.super.super.isa + *v6);
  [(PSSpecifier *)self->_preferredAudioRouteGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D40090]];
  [(AssistantAudioFeedbackController *)self _refreshFooterForSpecifier:v7];
}

- (void)_refreshFooterForSpecifier:(id)a3
{
  v4 = a3;
  [(AssistantAudioFeedbackController *)self _refreshFooterForUpdateDeviceSpeaker];
  [(AssistantAudioFeedbackController *)self _refreshFooterForPreferredAudioRouteSpecifier:v4];
}

- (void)_refreshFooterForUpdateDeviceSpeaker
{
  groupSpecifier = self->_groupSpecifier;
  v4 = +[AssistantAudioFeedbackController bundle];
  v3 = [v4 localizedStringForKey:@"VOICE_FEEDBACK_FOOTER" value:&stru_285317CF0 table:@"AssistantAudioFeedback"];
  [(PSSpecifier *)groupSpecifier setProperty:v3 forKey:*MEMORY[0x277D3FF88]];
}

- (void)_refreshFooterForPreferredAudioRouteSpecifier:(id)a3
{
  v7 = a3;
  if (self->_preferredAudioRouteCarRadioSpecifier == v7)
  {
    v4 = @"PREFERRED_AUDIO_ROUTE_CAR_RADIO_FOOTER_TEXT";
  }

  else if ([(AssistantAudioFeedbackController *)self _isDeviceSpeakerSupportedForBluetoothAudioRoute]&& self->_preferredAudioRoutePhoneSpeakerSpecifier == v7)
  {
    v4 = @"PREFERRED_AUDIO_ROUTE_PHONE_SPEAKER_FOOTER_TEXT";
  }

  else if (self->_preferredAudioRouteBluetoothSpecifier == v7)
  {
    v4 = @"PREFFERED_AUDIO_ROUTE_BLUETOOTH_AUDIO_FOOTER_TEXT";
  }

  else
  {
    v4 = 0;
  }

  if (AFIsInternalInstall())
  {
    v4 = [(__CFString *)v4 stringByAppendingString:@"_INTERNAL"];
  }

  if (v4 && [(__CFString *)v4 length])
  {
    preferredAudioRouteGroupSpecifier = self->_preferredAudioRouteGroupSpecifier;
    v6 = [(AssistantAudioFeedbackController *)self _localizeTriggerString:v4];
    [(PSSpecifier *)preferredAudioRouteGroupSpecifier setProperty:v6 forKey:*MEMORY[0x277D3FF88]];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = AssistantAudioFeedbackController;
  v6 = a4;
  [(AssistantAudioFeedbackController *)&v10 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AssistantAudioFeedbackController *)self indexForIndexPath:v6, v10.receiver, v10.super_class];

  v8 = [(AssistantAudioFeedbackController *)self specifierAtIndex:v7];
  [(AssistantAudioFeedbackController *)self _refreshFooterForSpecifier:v8];
  [(AssistantAudioFeedbackController *)self _updatePreferencesIfNeeded:v8];
  v9 = [MEMORY[0x277CEF368] sharedPreferences];
  [v9 synchronize];
}

- (void)_updatePreferencesIfNeeded:(id)a3
{
  v4 = a3;
  [(AssistantAudioFeedbackController *)self _updateDeviceSpeakerForTTSPreferenceIfNeeded:v4];
  [(AssistantAudioFeedbackController *)self _updatePreferredAudioRouteIfNeeded:v4];
}

- (void)_updateDeviceSpeakerForTTSPreferenceIfNeeded:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_preferSilentResponsesSpecifier == v4)
  {
    v6 = 3;
  }

  else if (self->_automaticSpecifier == v4)
  {
    v6 = 1;
  }

  else
  {
    if (self->_preferSpokenResponsesSpecifier != v4)
    {
      goto LABEL_8;
    }

    v6 = 2;
  }

  self->_useDeviceSpeakerForTTSPreference = v6;
LABEL_8:
  v7 = [MEMORY[0x277CEF368] sharedPreferences];
  v8 = [v7 useDeviceSpeakerForTTS];

  if (v8 != self->_useDeviceSpeakerForTTSPreference)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__AssistantAudioFeedbackController__updateDeviceSpeakerForTTSPreferenceIfNeeded___block_invoke;
    v10[3] = &unk_278CD1EA8;
    v10[4] = self;
    v10[5] = v8;
    [(AssistantAudioFeedbackController *)self registerUndoActionWithKey:@"VOICE_FEEDBACK" urlString:@"prefs:root=SIRI&path=VOICE_FEEDBACK_ID" undoAction:v10];
    v9 = [MEMORY[0x277CEF368] sharedPreferences];
    [v9 setUseDeviceSpeakerForTTS:self->_useDeviceSpeakerForTTSPreference];
  }
}

uint64_t __81__AssistantAudioFeedbackController__updateDeviceSpeakerForTTSPreferenceIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  [v2 setUseDeviceSpeakerForTTS:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 reloadSpecifiers];
}

- (void)_updatePreferredAudioRouteIfNeeded:(id)a3
{
  v4 = a3;
  if (self->_preferredAudioRouteBluetoothSpecifier == v4)
  {
    v5 = @"A2DP";
  }

  else if ([(AssistantAudioFeedbackController *)self _isDeviceSpeakerSupportedForBluetoothAudioRoute]&& self->_preferredAudioRoutePhoneSpeakerSpecifier == v4)
  {
    v5 = @"DeviceSpeaker";
  }

  else
  {
    v5 = @"HFP";
  }

  preferredCarAudioRoute = self->_preferredCarAudioRoute;
  self->_preferredCarAudioRoute = &v5->isa;

  v7 = [MEMORY[0x277CEF368] sharedPreferences];
  v8 = [v7 bluetoothPreferredCarAudioRoute];

  if (self->_preferredCarAudioRoute != v8)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __71__AssistantAudioFeedbackController__updatePreferredAudioRouteIfNeeded___block_invoke;
    v13 = &unk_278CD1708;
    v14 = v8;
    v15 = self;
    [(AssistantAudioFeedbackController *)self registerUndoActionWithKey:@"PREFERRED_AUDIO_ROUTE_TITLE" urlString:@"prefs:root=SIRI&path=PREFERRED_AUDIO_GROUP_ID" undoAction:&v10];
    v9 = [MEMORY[0x277CEF368] sharedPreferences];
    [v9 setBluetoothPreferredCarAudioRoute:self->_preferredCarAudioRoute];
  }
}

uint64_t __71__AssistantAudioFeedbackController__updatePreferredAudioRouteIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  [v2 setBluetoothPreferredCarAudioRoute:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 reloadSpecifiers];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = AssistantAudioFeedbackController;
  v4 = [(AssistantAudioFeedbackController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  return v4;
}

- (id)_localizeTriggerString:(id)a3
{
  v3 = MEMORY[0x277D7A8D0];
  v4 = a3;
  v5 = [v3 sharedPreferences];
  v6 = [MEMORY[0x277CEF368] sharedPreferences];
  v7 = [v6 languageCode];
  v8 = [v5 localizedTriggerPhraseForLanguageCode:v7];

  v9 = [v8 stringByReplacingOccurrencesOfString:@" " withString:@" "];
  v10 = MEMORY[0x277CCACA8];
  v11 = +[AssistantAudioFeedbackController bundle];
  v12 = [v11 localizedStringForKey:v4 value:&stru_285317CF0 table:@"AssistantAudioFeedback"];

  v13 = [v10 stringWithFormat:v12, v9];

  return v13;
}

- (id)isAlwaysPrintSiriResponseEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "siriResponseShouldAlwaysPrint")}];

  return v5;
}

- (void)setAlwaysPrintSiriResponseEnabled:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __83__AssistantAudioFeedbackController_setAlwaysPrintSiriResponseEnabled_forSpecifier___block_invoke;
  v11 = &unk_278CD1708;
  v12 = v5;
  v13 = self;
  v6 = v5;
  [(AssistantAudioFeedbackController *)self registerUndoActionWithKey:@"ALWAYS_PRINT_RESPONSE" urlString:@"prefs:root=SIRI&path=VOICE_FEEDBACK_ID/ALWAYS_PRINT_RESPONSE_GROUP_ID" undoAction:&v8];
  v7 = [MEMORY[0x277CEF368] sharedPreferences];
  [v7 setSiriResponseShouldAlwaysPrint:{objc_msgSend(v6, "BOOLValue")}];
}

uint64_t __83__AssistantAudioFeedbackController_setAlwaysPrintSiriResponseEnabled_forSpecifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  [v2 setSiriResponseShouldAlwaysPrint:{objc_msgSend(*(a1 + 32), "BOOLValue") ^ 1}];

  v3 = *(a1 + 40);

  return [v3 reloadSpecifiers];
}

- (BOOL)_isDeviceSpeakerSupportedForBluetoothAudioRoute
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = [v2 pickableRoutesForCategory:*MEMORY[0x277CEF5D8] andMode:@"Default"];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    v7 = MEMORY[0x277D26D38];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:{*v7, v13}];
        v10 = [v9 BOOLValue];

        if (v10)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)alwaysShowRecognizedSpeech
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "alwaysShowRecognizedSpeech")}];

  return v4;
}

- (void)setAlwaysShowRecognizedSpeech:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __79__AssistantAudioFeedbackController_setAlwaysShowRecognizedSpeech_forSpecifier___block_invoke;
  v11 = &unk_278CD1708;
  v12 = v5;
  v13 = self;
  v6 = v5;
  [(AssistantAudioFeedbackController *)self registerUndoActionWithKey:@"ALWAYS_SHOW_RECOGNIZED_SPEECH" urlString:@"prefs:root=SIRI&path=VOICE_FEEDBACK_ID/ALWAYS_SHOW_RECOGNIZED_SPEECH_GROUP_ID" undoAction:&v8];
  v7 = [MEMORY[0x277CEF368] sharedPreferences];
  [v7 setAlwaysShowRecognizedSpeech:{objc_msgSend(v6, "BOOLValue")}];
}

uint64_t __79__AssistantAudioFeedbackController_setAlwaysShowRecognizedSpeech_forSpecifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  [v2 setAlwaysShowRecognizedSpeech:{objc_msgSend(*(a1 + 32), "BOOLValue") ^ 1}];

  v3 = *(a1 + 40);

  return [v3 reloadSpecifiers];
}

- (void)registerUndoActionWithKey:(id)a3 urlString:(id)a4 undoAction:(id)a5
{
  v8 = MEMORY[0x277CCAEB8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 alloc];
  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 bundleURL];
  v17 = [v12 initWithKey:v11 table:@"AssistantAudioFeedback" locale:v13 bundleURL:v15];

  v16 = [MEMORY[0x277CBEBC0] URLWithString:v10];

  [(AssistantAudioFeedbackController *)self pe_registerUndoActionName:v17 associatedDeepLink:v16 undoAction:v9];
}

@end