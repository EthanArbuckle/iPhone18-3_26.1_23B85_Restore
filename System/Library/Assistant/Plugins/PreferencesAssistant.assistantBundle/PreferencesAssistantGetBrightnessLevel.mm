@interface PreferencesAssistantGetBrightnessLevel
- (void)performWithCompletion:(id)a3;
@end

@implementation PreferencesAssistantGetBrightnessLevel

- (void)performWithCompletion:(id)a3
{
  v3 = a3;
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

  v10 = [v8 dictionary];
  v3[2](v3, v10);
}

@end