@interface AssistantSiriInCallController
+ (BOOL)isSettingEnabled;
+ (BOOL)isSettingSupported;
+ (Class)_config;
+ (id)bundle;
+ (id)localizedSettingName;
- (id)_localizedFooterText;
- (id)_localizedHangUpTriggerPhrase;
- (id)enabled:(id)enabled;
- (id)specifiers;
- (void)_localizedHangUpTriggerPhrase;
- (void)setEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation AssistantSiriInCallController

+ (id)bundle
{
  v2 = bundle_sAssistantBundle;
  if (!bundle_sAssistantBundle)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantBundle;
    bundle_sAssistantBundle = v3;

    v2 = bundle_sAssistantBundle;
  }

  return v2;
}

+ (BOOL)isSettingSupported
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  _config = [self _config];

  return [_config supported];
}

+ (BOOL)isSettingEnabled
{
  _config = [self _config];

  return [_config enabled];
}

+ (id)localizedSettingName
{
  bundle = [self bundle];
  v4 = [objc_msgSend(self "_config")];
  v5 = [bundle localizedStringForKey:v4 value:&stru_285317CF0 table:@"AssistantSettings"];

  return v5;
}

- (id)specifiers
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SIRI_IN_CALL_GROUP"];
    _localizedFooterText = [(AssistantSiriInCallController *)self _localizedFooterText];
    [v5 setProperty:_localizedFooterText forKey:*MEMORY[0x277D3FF88]];

    v7 = MEMORY[0x277D3FAD8];
    v8 = +[AssistantSiriInCallController localizedSettingName];
    v9 = [v7 preferenceSpecifierNamed:v8 target:self set:sel_setEnabled_specifier_ get:sel_enabled_ detail:0 cell:6 edit:0];

    v14[0] = v5;
    v14[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v11 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v10;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (Class)_config
{
  v2 = objc_opt_class();
  if (AFSupportsSiriInCall())
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (id)enabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(objc_class *)+[AssistantSiriInCallController enabled:enabled]];

  return [v3 numberWithBool:v4];
}

- (void)setEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v5 = +[AssistantSiriInCallController _config];
  bOOLValue = [enabledCopy BOOLValue];

  [(objc_class *)v5 setEnabled:bOOLValue];
}

- (id)_localizedFooterText
{
  localizationFooterKey = [(objc_class *)+[AssistantSiriInCallController _config](AssistantSiriInCallController localizationFooterKey];
  v4 = [localizationFooterKey stringByAppendingString:@"_EXPLANATION"];

  if ((MEMORY[0x245CE5E80]() & 1) == 0)
  {
    v5 = [v4 stringByAppendingString:@"_HEADPHONES_ONLY"];

    v4 = v5;
  }

  bundle = [(AssistantSiriInCallController *)self bundle];
  v7 = [bundle localizedStringForKey:v4 value:&stru_285317CF0 table:@"AssistantSettings"];

  v8 = +[AssistantSiriInCallController _config];
  if (v8 == objc_opt_class())
  {
    _localizedHangUpTriggerPhrase = [(AssistantSiriInCallController *)self _localizedHangUpTriggerPhrase];
    v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, _localizedHangUpTriggerPhrase];

    v7 = v10;
  }

  return v7;
}

- (id)_localizedHangUpTriggerPhrase
{
  v22 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  v6 = [mEMORY[0x277D7A8D0] localizedTriggerPhraseForLanguageCode:languageCode];

  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  bundle = [(AssistantSiriInCallController *)self bundle];
  v9 = [mEMORY[0x277CEF2D8] localizedStringForKey:@"CALL_HANG_UP_TRIGGER_PHRASE" table:@"AssistantSettings" bundle:bundle languageCode:languageCode];

  if ([v6 length] && objc_msgSend(v9, "length"))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v6];
    v11 = [v10 stringByReplacingOccurrencesOfString:@" " withString:@" "];
    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[AssistantSiriInCallController _localizedHangUpTriggerPhrase]";
      v18 = 2112;
      v19 = languageCode;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_2413B9000, v12, OS_LOG_TYPE_DEFAULT, "%s languageCode: %@, triggerPhrase: %@", buf, 0x20u);
    }
  }

  else
  {
    v13 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(AssistantSiriInCallController *)languageCode _localizedHangUpTriggerPhrase];
    }

    v11 = &stru_285317CF0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_localizedHangUpTriggerPhrase
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[AssistantSiriInCallController _localizedHangUpTriggerPhrase]";
  v5 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_2413B9000, a2, OS_LOG_TYPE_ERROR, "%s Missing localization for trigger phrase, languageCode: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end