@interface PAOpenAppSetting
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation PAOpenAppSetting

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PAOpenAppSetting *)self appWithSettingsId];
  v9 = [(PAOpenAppSetting *)self location];
  v10 = sub_3488(v9);
  v11 = PALogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_3610(v10);
    v17 = 138412290;
    v18 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "########## PAOpenAppSetting (%@)", &v17, 0xCu);
  }

  v13 = [PSThirdPartySettingsDetail preferencesURLForBundleID:v8 forSettingType:v10];
  if (v13)
  {
    [v6 openSensitiveURL:v13];
    v14 = objc_alloc_init(SACommandSucceeded);
  }

  else
  {
    v15 = PALogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "########## PSThirdPartySettings not available for %@ and %ld", &v17, 0x16u);
    }

    v14 = objc_alloc_init(SACommandFailed);
    [v14 setErrorCode:SASettingAppPrefenceBundleNotExistErrorCode];
  }

  v16 = [v14 dictionary];
  v7[2](v7, v16);
}

@end