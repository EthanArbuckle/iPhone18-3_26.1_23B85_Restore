@interface PreferencesAssistantGetVoiceControl
- (void)performWithCompletion:(id)a3;
@end

@implementation PreferencesAssistantGetVoiceControl

- (void)performWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[PSCommandAndControlSettingsDetail isEnabled];
  v5 = objc_alloc_init(SASettingBooleanEntity);
  [v5 setValue:v4];
  v6 = objc_alloc_init(SASettingGetBoolResponse);
  [v6 setSetting:v5];
  v7 = PALogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"OFF";
    if (v4)
    {
      v8 = @"ON";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantGetVoiceControl (%@)", &v10, 0xCu);
  }

  v9 = [v6 dictionary];
  v3[2](v3, v9);
}

@end