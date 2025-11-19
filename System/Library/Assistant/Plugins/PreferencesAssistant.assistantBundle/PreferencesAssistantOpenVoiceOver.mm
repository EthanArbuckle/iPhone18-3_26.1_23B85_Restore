@interface PreferencesAssistantOpenVoiceOver
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation PreferencesAssistantOpenVoiceOver

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = PALogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantOpenVoiceOver", v11, 2u);
  }

  v8 = +[PSVoiceOverSettingsDetail preferencesURL];
  [v5 openSensitiveURL:v8];

  v9 = objc_alloc_init(SACommandSucceeded);
  v10 = [v9 dictionary];
  v6[2](v6, v10);
}

@end