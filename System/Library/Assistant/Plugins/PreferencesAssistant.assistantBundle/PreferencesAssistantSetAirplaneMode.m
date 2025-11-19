@interface PreferencesAssistantSetAirplaneMode
- (void)performWithCompletion:(id)a3;
@end

@implementation PreferencesAssistantSetAirplaneMode

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[PSAirplaneModeSettingsDetail isEnabled];
  v6 = [(PreferencesAssistantSetAirplaneMode *)self failOnSiriDisconnectWarnings];
  if ([(PreferencesAssistantSetAirplaneMode *)self toggle])
  {
    v7 = (v5 ^ 1);
  }

  else
  {
    v7 = [(PreferencesAssistantSetAirplaneMode *)self value];
  }

  v8 = [(PreferencesAssistantSetAirplaneMode *)self dryRun];
  v9 = v6 & v7;
  v10 = v5 ^ v7 ^ 1;
  if ((v9 & 1) != 0 || v10)
  {
    v12 = objc_alloc_init(SACommandFailed);
    v11 = v12;
    if ((v7 | v10))
    {
      if (v7)
      {
        v13 = @"This action will disconnect the user from reaching Siri Servers.";
      }

      else
      {
        v13 = @"Value unchanged, No change was made";
      }

      v14 = &SASettingSiriDisconnectErrorCode;
      if (!v7)
      {
        v14 = &SASettingValueUnchangedErrorCode;
      }

      [v12 setErrorCode:*v14];
      [v11 setReason:v13];
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  if ((v15 & 1) == 0)
  {
    [PSAirplaneModeSettingsDetail setEnabled:v7];
  }

  v16 = PALogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"Set";
    if (v8)
    {
      v17 = @"Dry Run";
    }

    *v25 = 138413058;
    *&v25[4] = v17;
    if (v5)
    {
      v18 = @"ON";
    }

    else
    {
      v18 = @"OFF";
    }

    *&v25[12] = 2112;
    *&v25[14] = v18;
    *&v25[22] = 2112;
    if (v7)
    {
      v19 = @"ON";
    }

    else
    {
      v19 = @"OFF";
    }

    v26 = v19;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantSetAirplaneMode (%@ / prev: %@ / value: %@ / %@)", v25, 0x2Au);
  }

  v20 = v11;
  v21 = v20;
  if (!v11)
  {
    v22 = objc_alloc_init(SASettingBooleanEntity);
    [v22 setValue:v7];
    v23 = [NSNumber numberWithBool:v5];
    [v22 setPreviousValue:v23];

    v21 = objc_alloc_init(SASettingSetBoolResponse);
    [v21 setSetting:v22];
  }

  v24 = [v21 dictionary];
  v4[2](v4, v24);
}

@end