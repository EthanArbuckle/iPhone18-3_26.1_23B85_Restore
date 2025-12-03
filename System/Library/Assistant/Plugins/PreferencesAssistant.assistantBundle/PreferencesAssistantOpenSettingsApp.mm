@interface PreferencesAssistantOpenSettingsApp
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation PreferencesAssistantOpenSettingsApp

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  helperCopy = helper;
  completionCopy = completion;
  v7 = PALogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantOpenSettingsApp", v11, 2u);
  }

  v8 = PSPreferencesLaunchURL();
  [helperCopy openSensitiveURL:v8];

  v9 = objc_alloc_init(SACommandSucceeded);
  dictionary = [v9 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end