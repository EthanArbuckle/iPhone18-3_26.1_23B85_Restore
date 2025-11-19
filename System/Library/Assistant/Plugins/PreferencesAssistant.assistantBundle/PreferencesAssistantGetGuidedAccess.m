@interface PreferencesAssistantGetGuidedAccess
- (void)performWithCompletion:(id)a3;
@end

@implementation PreferencesAssistantGetGuidedAccess

- (void)performWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SASettingBooleanEntity);
  [v4 setValue:0];
  v5 = objc_alloc_init(SASettingGetBoolResponse);
  [v5 setSetting:v4];
  v6 = PALogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"OFF";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantGetGuidedAccess (%@)", &v8, 0xCu);
  }

  v7 = [v5 dictionary];
  v3[2](v3, v7);
}

@end