@interface PreferencesAssistantGetWiFi
- (void)performWithCompletion:(id)completion;
@end

@implementation PreferencesAssistantGetWiFi

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[PSWiFiSettingsDetail isEnabled];
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
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantGetWiFi (%@)", &v10, 0xCu);
  }

  dictionary = [v6 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end