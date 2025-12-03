@interface PAOpenAppSetting
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation PAOpenAppSetting

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  helperCopy = helper;
  completionCopy = completion;
  appWithSettingsId = [(PAOpenAppSetting *)self appWithSettingsId];
  location = [(PAOpenAppSetting *)self location];
  v10 = sub_3488(location);
  v11 = PALogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_3610(v10);
    v17 = 138412290;
    v18 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "########## PAOpenAppSetting (%@)", &v17, 0xCu);
  }

  v13 = [PSThirdPartySettingsDetail preferencesURLForBundleID:appWithSettingsId forSettingType:v10];
  if (v13)
  {
    [helperCopy openSensitiveURL:v13];
    v14 = objc_alloc_init(SACommandSucceeded);
  }

  else
  {
    v15 = PALogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = appWithSettingsId;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "########## PSThirdPartySettings not available for %@ and %ld", &v17, 0x16u);
    }

    v14 = objc_alloc_init(SACommandFailed);
    [v14 setErrorCode:SASettingAppPrefenceBundleNotExistErrorCode];
  }

  dictionary = [v14 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end