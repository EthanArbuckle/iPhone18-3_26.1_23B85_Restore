@interface PreferencesAssistantSetVoiceOver
- (void)performWithCompletion:(id)a3;
@end

@implementation PreferencesAssistantSetVoiceOver

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[PSVoiceOverSettingsDetail isEnabled];
  if ([(PreferencesAssistantSetVoiceOver *)self toggle])
  {
    v6 = (v5 ^ 1);
  }

  else
  {
    v6 = [(PreferencesAssistantSetVoiceOver *)self value];
  }

  v7 = [(PreferencesAssistantSetVoiceOver *)self dryRun];
  if (v5 == v6)
  {
    v8 = objc_alloc_init(SACommandFailed);
    [v8 setErrorCode:SASettingValueUnchangedErrorCode];
    [v8 setReason:{@"Value unchanged, No change was made"}];
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  if ((v9 & 1) == 0)
  {
    [PSVoiceOverSettingsDetail setEnabled:v6];
  }

  v10 = PALogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Set";
    if (v7)
    {
      v11 = @"Dry Run";
    }

    *v19 = 138413058;
    *&v19[4] = v11;
    if (v5)
    {
      v12 = @"ON";
    }

    else
    {
      v12 = @"OFF";
    }

    *&v19[12] = 2112;
    *&v19[14] = v12;
    *&v19[22] = 2112;
    if (v6)
    {
      v13 = @"ON";
    }

    else
    {
      v13 = @"OFF";
    }

    v20 = v13;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantSetVoiceOver (%@ / prev: %@ / value: %@ / %@)", v19, 0x2Au);
  }

  v14 = v8;
  v15 = v14;
  if (!v8)
  {
    v16 = objc_alloc_init(SASettingBooleanEntity);
    [v16 setValue:v6];
    v17 = [NSNumber numberWithBool:v5];
    [v16 setPreviousValue:v17];

    v15 = objc_alloc_init(SASettingSetBoolResponse);
    [v15 setSetting:v16];
  }

  v18 = [v15 dictionary];
  v4[2](v4, v18);
}

@end