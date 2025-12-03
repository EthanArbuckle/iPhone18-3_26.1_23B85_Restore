@interface PreferencesAssistantSetAirplaneMode
- (void)performWithCompletion:(id)completion;
@end

@implementation PreferencesAssistantSetAirplaneMode

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[PSAirplaneModeSettingsDetail isEnabled];
  failOnSiriDisconnectWarnings = [(PreferencesAssistantSetAirplaneMode *)self failOnSiriDisconnectWarnings];
  if ([(PreferencesAssistantSetAirplaneMode *)self toggle])
  {
    value = (v5 ^ 1);
  }

  else
  {
    value = [(PreferencesAssistantSetAirplaneMode *)self value];
  }

  dryRun = [(PreferencesAssistantSetAirplaneMode *)self dryRun];
  v9 = failOnSiriDisconnectWarnings & value;
  v10 = v5 ^ value ^ 1;
  if ((v9 & 1) != 0 || v10)
  {
    v12 = objc_alloc_init(SACommandFailed);
    v11 = v12;
    if ((value | v10))
    {
      if (value)
      {
        v13 = @"This action will disconnect the user from reaching Siri Servers.";
      }

      else
      {
        v13 = @"Value unchanged, No change was made";
      }

      v14 = &SASettingSiriDisconnectErrorCode;
      if (!value)
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
    v15 = dryRun;
  }

  if ((v15 & 1) == 0)
  {
    [PSAirplaneModeSettingsDetail setEnabled:value];
  }

  v16 = PALogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"Set";
    if (dryRun)
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
    if (value)
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
    [v22 setValue:value];
    v23 = [NSNumber numberWithBool:v5];
    [v22 setPreviousValue:v23];

    v21 = objc_alloc_init(SASettingSetBoolResponse);
    [v21 setSetting:v22];
  }

  dictionary = [v21 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end