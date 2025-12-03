@interface AssistantActivationController
+ (id)bundle;
- (AssistantActivationDelegate)delegate;
- (BOOL)_isVoiceTriggerEnabled;
- (id)_localizeTriggerString:(id)string;
- (id)_updateAndGetCheckedSpecifier;
- (id)footerVariant;
- (id)hardwareButtonTrigger:(id)trigger;
- (id)specifiers;
- (id)typeToSiriTrigger:(id)trigger;
- (id)voiceActivation:(id)activation;
- (void)_refreshFootersForSpecifiers;
- (void)_updateAndGetCheckedSpecifier;
- (void)_updateSelectedPhrase;
- (void)_updateSpecifiersFromPreferences;
- (void)preferencesDidChange:(id)change;
- (void)setHardwareButtonTrigger:(id)trigger forSpecifier:(id)specifier;
- (void)setTypeToSiriTrigger:(id)trigger forSpecifier:(id)specifier;
- (void)setVoiceActivation:(id)activation forSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation AssistantActivationController

+ (id)bundle
{
  v2 = bundle_sAssistantBundle_0;
  if (!bundle_sAssistantBundle_0)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantBundle_0;
    bundle_sAssistantBundle_0 = v3;

    v2 = bundle_sAssistantBundle_0;
  }

  return v2;
}

- (void)preferencesDidChange:(id)change
{
  [(AssistantActivationController *)self reloadSpecifierID:@"ACTIVATION_COMPACT_ID"];
  [(AssistantActivationController *)self reloadSpecifier:self->_groupSpecifier];
  [(AssistantActivationController *)self reloadSpecifier:self->_voiceActivationHSAndCompactSpecifier];
  [(AssistantActivationController *)self reloadSpecifier:self->_voiceActivationHSSpecifier];
  [(AssistantActivationController *)self reloadSpecifier:self->_voiceActivationOffSpecifier];
  [(AssistantActivationController *)self reloadSpecifier:self->_talkToSiriGroup];
  [(AssistantActivationController *)self reloadSpecifier:self->_typeToSiriGroup];
  [(AssistantActivationController *)self _updateSpecifiersFromPreferences];

  [(AssistantActivationController *)self _refreshFootersForSpecifiers];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(AssistantActivationController *)self loadSpecifiersFromPlistName:@"AssistantActivation" target:self];
    v6 = [v5 specifierForID:@"ACTIVATION_PHRASE_GROUP_ID"];
    groupSpecifier = self->_groupSpecifier;
    self->_groupSpecifier = v6;

    v8 = [v5 specifierForID:@"ACTIVATION_PHRASE_HS_ID"];
    voiceActivationHSSpecifier = self->_voiceActivationHSSpecifier;
    self->_voiceActivationHSSpecifier = v8;

    v10 = self->_voiceActivationHSSpecifier;
    v11 = [(AssistantActivationController *)self _localizeTriggerString:@"ACTIVATION_PHRASE_HS_TITLE"];
    [(PSSpecifier *)v10 setName:v11];

    v12 = [v5 specifierForID:@"ACTIVATION_PHRASE_COMPACT_ID"];
    voiceActivationHSAndCompactSpecifier = self->_voiceActivationHSAndCompactSpecifier;
    self->_voiceActivationHSAndCompactSpecifier = v12;

    v14 = self->_voiceActivationHSAndCompactSpecifier;
    v15 = [(AssistantActivationController *)self _localizeTriggerString:@"ACTIVATION_PHRASE_COMPACT_TITLE"];
    [(PSSpecifier *)v14 setName:v15];

    v16 = [v5 specifierForID:@"ACTIVATION_PHRASE_OFF_ID"];
    voiceActivationOffSpecifier = self->_voiceActivationOffSpecifier;
    self->_voiceActivationOffSpecifier = v16;

    v18 = self->_voiceActivationOffSpecifier;
    v19 = [(AssistantActivationController *)self _localizeTriggerString:@"ACTIVATION_PHRASE_OFF_TITLE"];
    [(PSSpecifier *)v18 setName:v19];

    v20 = objc_alloc_init(MEMORY[0x277D3F9C8]);
    confirmationSpecifier = self->_confirmationSpecifier;
    self->_confirmationSpecifier = v20;

    [(PSConfirmationSpecifier *)self->_confirmationSpecifier setName:@"ACTIVATION_CONFIRMATION"];
    [(PSConfirmationSpecifier *)self->_confirmationSpecifier setupWithDictionary:&unk_285320050];
    v22 = [v5 specifierForID:@"ACTIVATION_LONG_PRESS_GROUP_ID"];
    talkToSiriGroup = self->_talkToSiriGroup;
    self->_talkToSiriGroup = v22;

    v24 = [v5 specifierForID:@"ACTIVATION_LONG_PRESS_ID"];
    [v24 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    if (MGGetSInt32Answer() == 2)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      sf_isiPad = [currentDevice sf_isiPad];

      v27 = +[AssistantController bundle];
      v28 = v27;
      v29 = @"ASSISTANT_HARDWARE_BUTTON_SLEEPWAKE";
      if (sf_isiPad)
      {
        v30 = @"AssistantSettings-j3xx";
      }

      else
      {
        v30 = @"AssistantSettings-D22";
      }
    }

    else
    {
      v27 = +[AssistantController bundle];
      v28 = v27;
      v29 = @"ASSISTANT_HARDWARE_BUTTON";
      v30 = @"AssistantSettings";
    }

    v31 = [v27 localizedStringForKey:v29 value:&stru_285317CF0 table:v30];
    [v24 setName:v31];

    v32 = [v5 specifierForID:@"ACTIVATION_DOUBLE_TAP_GROUP_ID"];
    typeToSiriGroup = self->_typeToSiriGroup;
    self->_typeToSiriGroup = v32;

    v34 = [v5 specifierForID:@"ACTIVATION_DOUBLE_TAP_ID"];
    typeToSiriSpecifier = self->_typeToSiriSpecifier;
    self->_typeToSiriSpecifier = v34;

    v36 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
    activeEnabled = [v36 activeEnabled];

    if (+[AssistantUtilities deviceIsVision]|| !activeEnabled)
    {
      v38 = +[AssistantActivationController bundle];
      v39 = [v38 localizedStringForKey:@"ACTIVATION_COMPACT_TITLE_ALT" value:&stru_285317CF0 table:@"AssistantActivation"];
      [(AssistantActivationController *)self setTitle:v39];

      [v5 removeObject:self->_typeToSiriGroup];
      [v5 removeObject:self->_typeToSiriSpecifier];
    }

    if (+[AssistantUtilities deviceIsVision])
    {
      v40 = [v5 specifierForID:@"ACTIVATION_LONG_PRESS_ID"];
      [v5 removeObject:v40];
    }

    if (!+[AssistantUtilities shouldShowCompactVoiceTriggerSpecifier])
    {
      [v5 removeObject:self->_voiceActivationHSAndCompactSpecifier];
    }

    v41 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    [(AssistantActivationController *)self _updateSpecifiersFromPreferences];
    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_updateSelectedPhrase
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[AssistantActivationController _updateSelectedPhrase]";
  v5 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_2413B9000, a2, OS_LOG_TYPE_ERROR, "%s Error updating preferred voice trigger phrase: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)_updateAndGetCheckedSpecifier
{
  [(AssistantActivationController *)self _updateSelectedPhrase];
  selectedPhrase = self->_selectedPhrase;
  if (selectedPhrase != 10)
  {
    if (selectedPhrase == 1)
    {
      v4 = &OBJC_IVAR___AssistantActivationController__voiceActivationHSAndCompactSpecifier;
      goto LABEL_9;
    }

    if (!selectedPhrase)
    {
      v4 = &OBJC_IVAR___AssistantActivationController__voiceActivationHSSpecifier;
      goto LABEL_9;
    }

    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(AssistantActivationController *)&self->_selectedPhrase _updateAndGetCheckedSpecifier];
    }
  }

  v4 = &OBJC_IVAR___AssistantActivationController__voiceActivationOffSpecifier;
LABEL_9:
  v6 = *(&self->super.super.super.super.super.isa + *v4);

  return v6;
}

- (void)_updateSpecifiersFromPreferences
{
  _updateAndGetCheckedSpecifier = [(AssistantActivationController *)self _updateAndGetCheckedSpecifier];
  [(PSSpecifier *)self->_groupSpecifier setProperty:_updateAndGetCheckedSpecifier forKey:*MEMORY[0x277D40090]];
  [(AssistantActivationController *)self _refreshFootersForSpecifiers];
}

- (id)footerVariant
{
  if (+[AssistantUtilities deviceIsiPhone])
  {
    return @"IPHONE";
  }

  if (+[AssistantUtilities deviceIsVision])
  {
    return @"VISION";
  }

  return @"IPAD";
}

- (void)_refreshFootersForSpecifiers
{
  _updateAndGetCheckedSpecifier = [(AssistantActivationController *)self _updateAndGetCheckedSpecifier];
  if (![(AssistantActivationController *)self _isVoiceTriggerEnabled])
  {
    footerVariant = [(AssistantActivationController *)self footerVariant];
    v5 = @"ACTIVATION_PHRASE_COMPACT_OFF_FOOTER_TEXT_";
LABEL_6:
    v6 = [(__CFString *)v5 stringByAppendingString:footerVariant];
    v7 = [(AssistantActivationController *)self _localizeTriggerString:v6];
    goto LABEL_7;
  }

  if (_updateAndGetCheckedSpecifier != self->_voiceActivationHSAndCompactSpecifier)
  {
    if (_updateAndGetCheckedSpecifier != self->_voiceActivationHSSpecifier)
    {
      v3 = 0;
      goto LABEL_9;
    }

    footerVariant = [(AssistantActivationController *)self footerVariant];
    v5 = @"ACTIVATION_PHRASE_HS_FOOTER_TEXT_";
    goto LABEL_6;
  }

  footerVariant2 = [(AssistantActivationController *)self footerVariant];
  v20 = [@"ACTIVATION_PHRASE_COMPACT_FOOTER_TEXT_" stringByAppendingString:footerVariant2];
  footerVariant = [(AssistantActivationController *)self _localizeTriggerString:v20];

  if (+[AssistantUtilities deviceIsVision])
  {
    footerVariant = footerVariant;
    v3 = footerVariant;
    goto LABEL_8;
  }

  v6 = [(AssistantActivationController *)self _localizeTriggerString:@"ACTIVATION_PHRASE_COMPACT_FOOTER_TEXT_HEADPHONES"];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", footerVariant, v6];
LABEL_7:
  v3 = v7;

LABEL_8:
LABEL_9:
  v8 = *MEMORY[0x277D3FF88];
  [(PSSpecifier *)self->_groupSpecifier setProperty:v3 forKey:*MEMORY[0x277D3FF88]];
  [(AssistantActivationController *)self reloadSpecifier:self->_groupSpecifier];
  v9 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  activeEnabled = [v9 activeEnabled];

  if (activeEnabled)
  {
    v11 = +[AssistantActivationController bundle];
    footerVariant3 = [(AssistantActivationController *)self footerVariant];
    v13 = [@"ACTIVATION_LONG_PRESS_FOOTER_" stringByAppendingString:footerVariant3];
    v14 = [v11 localizedStringForKey:v13 value:&stru_285317CF0 table:@"AssistantActivation"];

    [(PSSpecifier *)self->_talkToSiriGroup setProperty:v14 forKey:v8];
    [(AssistantActivationController *)self reloadSpecifier:self->_talkToSiriGroup];
    v15 = +[AssistantActivationController bundle];
    footerVariant4 = [(AssistantActivationController *)self footerVariant];
    v17 = [@"ACTIVATION_DOUBLE_TAP_FOOTER_" stringByAppendingString:footerVariant4];
    v18 = [v15 localizedStringForKey:v17 value:&stru_285317CF0 table:@"AssistantActivation"];

    [(PSSpecifier *)self->_typeToSiriGroup setProperty:v18 forKey:v8];
    [(AssistantActivationController *)self reloadSpecifier:self->_typeToSiriGroup];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = AssistantActivationController;
  pathCopy = path;
  [(AssistantActivationController *)&v17 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AssistantActivationController *)self indexForIndexPath:pathCopy, v17.receiver, v17.super_class];

  v8 = [(AssistantActivationController *)self specifierAtIndex:v7];
  v9 = v8;
  if (v8 == self->_voiceActivationHSAndCompactSpecifier)
  {
    v11 = 1;
LABEL_7:
    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[AssistantActivationController tableView:didSelectRowAtIndexPath:]";
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_2413B9000, v12, OS_LOG_TYPE_DEFAULT, "%s Setting preferred voice trigger phrase: %lu", buf, 0x16u);
    }

    mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
    v14 = [mEMORY[0x277D7A8D0] setUserPreferredVoiceTriggerPhraseType:v11 sender:self deviceType:0 endpointId:0];

    v10 = 1;
    goto LABEL_10;
  }

  if (v8 == self->_voiceActivationHSSpecifier)
  {
    v11 = 0;
    goto LABEL_7;
  }

  if (v8 == self->_voiceActivationOffSpecifier)
  {
    v10 = 0;
LABEL_10:
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    [(AssistantActivationController *)self setVoiceActivation:v15 forSpecifier:self->_confirmationSpecifier];

    [(AssistantActivationController *)self _updateSpecifiersFromPreferences];
    [(AssistantActivationController *)self preferencesDidChange:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_localizeTriggerString:(id)string
{
  v3 = MEMORY[0x277D7A8D0];
  stringCopy = string;
  sharedPreferences = [v3 sharedPreferences];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];
  v8 = [sharedPreferences localizedTriggerPhraseForLanguageCode:languageCode];

  v9 = [v8 stringByReplacingOccurrencesOfString:@" " withString:@" "];
  v10 = MEMORY[0x277CCACA8];
  v11 = +[AssistantActivationController bundle];
  v12 = [v11 localizedStringForKey:stringCopy value:&stru_285317CF0 table:@"AssistantActivation"];

  v13 = [v10 stringWithFormat:v12, v9];

  return v13;
}

- (id)voiceActivation:(id)activation
{
  v3 = MEMORY[0x277CCABB0];
  _isVoiceTriggerEnabled = [(AssistantActivationController *)self _isVoiceTriggerEnabled];

  return [v3 numberWithBool:_isVoiceTriggerEnabled];
}

- (void)setVoiceActivation:(id)activation forSpecifier:(id)specifier
{
  activationCopy = activation;
  specifierCopy = specifier;
  objc_initWeak(&location, self);
  delegate = [(AssistantActivationController *)self delegate];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__AssistantActivationController_setVoiceActivation_forSpecifier___block_invoke;
  v9[3] = &unk_278CD1520;
  objc_copyWeak(&v10, &location);
  [delegate setVoiceActivation:activationCopy forSpecifier:specifierCopy withTrainingCompletionIfNecessary:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __65__AssistantActivationController_setVoiceActivation_forSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained preferencesDidChange:0];
    WeakRetained = v2;
  }
}

- (BOOL)_isVoiceTriggerEnabled
{
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  voiceTriggerEnabled = [mEMORY[0x277D7A8D0] voiceTriggerEnabled];

  return voiceTriggerEnabled;
}

- (id)hardwareButtonTrigger:(id)trigger
{
  triggerCopy = trigger;
  delegate = [(AssistantActivationController *)self delegate];
  v6 = [delegate hardwareButtonTrigger:triggerCopy];

  return v6;
}

- (void)setHardwareButtonTrigger:(id)trigger forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  triggerCopy = trigger;
  delegate = [(AssistantActivationController *)self delegate];
  [delegate setHardwareButtonTrigger:triggerCopy forSpecifier:specifierCopy];
}

- (id)typeToSiriTrigger:(id)trigger
{
  triggerCopy = trigger;
  delegate = [(AssistantActivationController *)self delegate];
  v6 = [delegate typeToSiriTrigger:triggerCopy];

  return v6;
}

- (void)setTypeToSiriTrigger:(id)trigger forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  triggerCopy = trigger;
  delegate = [(AssistantActivationController *)self delegate];
  [delegate setTypeToSiriTrigger:triggerCopy forSpecifier:specifierCopy];
}

- (AssistantActivationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAndGetCheckedSpecifier
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v4 = 136315394;
  v5 = "[AssistantActivationController _updateAndGetCheckedSpecifier]";
  v6 = 2048;
  v7 = v2;
  _os_log_error_impl(&dword_2413B9000, a2, OS_LOG_TYPE_ERROR, "%s Error updating preferred voice trigger phrase specifier, unknown phrase type: %lu", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end