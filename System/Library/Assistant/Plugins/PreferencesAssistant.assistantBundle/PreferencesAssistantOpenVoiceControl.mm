@interface PreferencesAssistantOpenVoiceControl
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation PreferencesAssistantOpenVoiceControl

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  helperCopy = helper;
  completionCopy = completion;
  v7 = PALogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantOpenVoiceControl", v11, 2u);
  }

  v8 = +[PSCommandAndControlSettingsDetail preferencesURL];
  [helperCopy openSensitiveURL:v8];

  v9 = objc_alloc_init(SACommandSucceeded);
  dictionary = [v9 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end