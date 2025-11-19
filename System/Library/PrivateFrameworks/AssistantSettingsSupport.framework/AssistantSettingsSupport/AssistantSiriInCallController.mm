@interface AssistantSiriInCallController
+ (BOOL)isSettingEnabled;
+ (BOOL)isSettingSupported;
+ (Class)_config;
+ (id)bundle;
+ (id)localizedSettingName;
- (id)_localizedFooterText;
- (id)_localizedHangUpTriggerPhrase;
- (id)enabled:(id)a3;
- (id)specifiers;
- (void)_localizedHangUpTriggerPhrase;
- (void)setEnabled:(id)a3 specifier:(id)a4;
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

  v4 = [a1 _config];

  return [v4 supported];
}

+ (BOOL)isSettingEnabled
{
  v2 = [a1 _config];

  return [v2 enabled];
}

+ (id)localizedSettingName
{
  v3 = [a1 bundle];
  v4 = [objc_msgSend(a1 "_config")];
  v5 = [v3 localizedStringForKey:v4 value:&stru_285317CF0 table:@"AssistantSettings"];

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
    v6 = [(AssistantSiriInCallController *)self _localizedFooterText];
    [v5 setProperty:v6 forKey:*MEMORY[0x277D3FF88]];

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

- (id)enabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(objc_class *)+[AssistantSiriInCallController enabled:a3]];

  return [v3 numberWithBool:v4];
}

- (void)setEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v5 = +[AssistantSiriInCallController _config];
  v6 = [v4 BOOLValue];

  [(objc_class *)v5 setEnabled:v6];
}

- (id)_localizedFooterText
{
  v3 = [(objc_class *)+[AssistantSiriInCallController _config](AssistantSiriInCallController localizationFooterKey];
  v4 = [v3 stringByAppendingString:@"_EXPLANATION"];

  if ((MEMORY[0x245CE5E80]() & 1) == 0)
  {
    v5 = [v4 stringByAppendingString:@"_HEADPHONES_ONLY"];

    v4 = v5;
  }

  v6 = [(AssistantSiriInCallController *)self bundle];
  v7 = [v6 localizedStringForKey:v4 value:&stru_285317CF0 table:@"AssistantSettings"];

  v8 = +[AssistantSiriInCallController _config];
  if (v8 == objc_opt_class())
  {
    v9 = [(AssistantSiriInCallController *)self _localizedHangUpTriggerPhrase];
    v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v9];

    v7 = v10;
  }

  return v7;
}

- (id)_localizedHangUpTriggerPhrase
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 languageCode];

  v5 = [MEMORY[0x277D7A8D0] sharedPreferences];
  v6 = [v5 localizedTriggerPhraseForLanguageCode:v4];

  v7 = [MEMORY[0x277CEF2D8] sharedInstance];
  v8 = [(AssistantSiriInCallController *)self bundle];
  v9 = [v7 localizedStringForKey:@"CALL_HANG_UP_TRIGGER_PHRASE" table:@"AssistantSettings" bundle:v8 languageCode:v4];

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
      v19 = v4;
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
      [(AssistantSiriInCallController *)v4 _localizedHangUpTriggerPhrase];
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
  v6 = a1;
  _os_log_error_impl(&dword_2413B9000, a2, OS_LOG_TYPE_ERROR, "%s Missing localization for trigger phrase, languageCode: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end