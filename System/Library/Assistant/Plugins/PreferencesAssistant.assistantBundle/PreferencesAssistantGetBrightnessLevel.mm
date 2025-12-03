@interface PreferencesAssistantGetBrightnessLevel
- (void)performWithCompletion:(id)completion;
@end

@implementation PreferencesAssistantGetBrightnessLevel

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  +[PSBrightnessSettingsDetail currentValue];
  v5 = v4;
  v6 = objc_alloc_init(SASettingFloatEntity);
  *&v7 = v5;
  [v6 setValue:v7];
  v8 = objc_alloc_init(SASettingGetFloatResponse);
  [v8 setSetting:v6];
  v9 = PALogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v5;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantGetBrightnessLevel (%f)", &v11, 0xCu);
  }

  dictionary = [v8 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end