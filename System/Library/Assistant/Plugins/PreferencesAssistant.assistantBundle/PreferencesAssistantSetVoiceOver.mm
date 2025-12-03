@interface PreferencesAssistantSetVoiceOver
- (void)performWithCompletion:(id)completion;
@end

@implementation PreferencesAssistantSetVoiceOver

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[PSVoiceOverSettingsDetail isEnabled];
  if ([(PreferencesAssistantSetVoiceOver *)self toggle])
  {
    value = (v5 ^ 1);
  }

  else
  {
    value = [(PreferencesAssistantSetVoiceOver *)self value];
  }

  dryRun = [(PreferencesAssistantSetVoiceOver *)self dryRun];
  if (v5 == value)
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
    v9 = dryRun;
  }

  if ((v9 & 1) == 0)
  {
    [PSVoiceOverSettingsDetail setEnabled:value];
  }

  v10 = PALogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Set";
    if (dryRun)
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
    if (value)
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
    [v16 setValue:value];
    v17 = [NSNumber numberWithBool:v5];
    [v16 setPreviousValue:v17];

    v15 = objc_alloc_init(SASettingSetBoolResponse);
    [v15 setSetting:v16];
  }

  dictionary = [v15 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end