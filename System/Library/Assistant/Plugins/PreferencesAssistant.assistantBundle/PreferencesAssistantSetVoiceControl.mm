@interface PreferencesAssistantSetVoiceControl
- (void)performWithCompletion:(id)completion;
@end

@implementation PreferencesAssistantSetVoiceControl

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[PSCommandAndControlSettingsDetail isEnabled];
  if ([(PreferencesAssistantSetVoiceControl *)self toggle])
  {
    value = (v5 ^ 1);
  }

  else
  {
    value = [(PreferencesAssistantSetVoiceControl *)self value];
  }

  dryRun = [(PreferencesAssistantSetVoiceControl *)self dryRun];
  v8 = +[CACPreferences sharedPreferences];
  didShowOnboarding = [v8 didShowOnboarding];

  if (didShowOnboarding)
  {
    if (v5 != value)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v11 = @"Value unchanged, No change was made";
    v12 = &SASettingValueUnchangedErrorCode;
  }

  else
  {
    v11 = @"User has not been onboarded";
    v12 = &SASettingVoiceControlNeverOnboardedErrorCode;
  }

  v10 = objc_alloc_init(SACommandFailed);
  [v10 setErrorCode:*v12];
  [v10 setReason:v11];
LABEL_10:
  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = dryRun;
  }

  if ((v13 & 1) == 0)
  {
    [PSCommandAndControlSettingsDetail setEnabled:value];
  }

  v14 = PALogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"Set";
    if (dryRun)
    {
      v15 = @"Dry Run";
    }

    *v23 = 138413058;
    *&v23[4] = v15;
    if (v5)
    {
      v16 = @"ON";
    }

    else
    {
      v16 = @"OFF";
    }

    *&v23[12] = 2112;
    *&v23[14] = v16;
    *&v23[22] = 2112;
    if (value)
    {
      v17 = @"ON";
    }

    else
    {
      v17 = @"OFF";
    }

    v24 = v17;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantSetVoiceControl (%@ / prev: %@ / value: %@ / %@)", v23, 0x2Au);
  }

  v18 = v10;
  v19 = v18;
  if (!v10)
  {
    v20 = objc_alloc_init(SASettingBooleanEntity);
    [v20 setValue:value];
    v21 = [NSNumber numberWithBool:v5];
    [v20 setPreviousValue:v21];

    v19 = objc_alloc_init(SASettingSetBoolResponse);
    [v19 setSetting:v20];
  }

  dictionary = [v19 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end