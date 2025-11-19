@interface PreferencesAssistantOpenWiFi
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation PreferencesAssistantOpenWiFi

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = PALogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantOpenWiFi", &v12, 2u);
  }

  if (sub_92A8(off_19EC0))
  {
    v8 = +[PSWiFiSettingsDetail preferencesURL];
    [v5 openSensitiveURL:v8];
    v9 = SACommandSucceeded_ptr;
  }

  else
  {
    v8 = PALogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = @"missing capability";
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "########## %@", &v12, 0xCu);
    }

    v9 = SACommandFailed_ptr;
  }

  v10 = objc_alloc_init(*v9);
  v11 = [v10 dictionary];
  v6[2](v6, v11);
}

@end