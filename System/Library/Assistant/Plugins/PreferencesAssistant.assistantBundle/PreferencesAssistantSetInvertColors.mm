@interface PreferencesAssistantSetInvertColors
- (void)performWithCompletion:(id)a3;
@end

@implementation PreferencesAssistantSetInvertColors

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[PSInvertColorsSettingsDetail isEnabled];
  if ([(PreferencesAssistantSetInvertColors *)self toggle])
  {
    v6 = (v5 ^ 1);
  }

  else
  {
    v6 = [(PreferencesAssistantSetInvertColors *)self value];
  }

  v7 = [(PreferencesAssistantSetInvertColors *)self dryRun];
  if (v5 == v6)
  {
    v8 = objc_alloc_init(SACommandFailed);
    [v8 setErrorCode:SASettingValueUnchangedErrorCode];
    [v8 setReason:{@"Value unchanged, No change was made"}];
    v9 = v8 == 0;
    if (v8)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      [PSInvertColorsSettingsDetail setEnabled:v6];
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  v11 = PALogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"Set";
    if (v7)
    {
      v12 = @"Dry Run";
    }

    *v20 = 138413058;
    *&v20[4] = v12;
    if (v5)
    {
      v13 = @"ON";
    }

    else
    {
      v13 = @"OFF";
    }

    *&v20[12] = 2112;
    *&v20[14] = v13;
    *&v20[22] = 2112;
    if (v6)
    {
      v14 = @"ON";
    }

    else
    {
      v14 = @"OFF";
    }

    v21 = v14;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantSetInvertColors (%@ / prev: %@ / value: %@ / %@)", v20, 0x2Au);
  }

  v15 = v8;
  v16 = v15;
  if (v9)
  {
    v17 = objc_alloc_init(SASettingBooleanEntity);
    [v17 setValue:v6];
    v18 = [NSNumber numberWithBool:v5];
    [v17 setPreviousValue:v18];

    v16 = objc_alloc_init(SASettingSetBoolResponse);
    [v16 setSetting:v17];
  }

  v19 = [v16 dictionary];
  v4[2](v4, v19);
}

@end