@interface PreferencesAssistantSetBrightnessLevel
- (void)performWithCompletion:(id)completion;
@end

@implementation PreferencesAssistantSetBrightnessLevel

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  [(PreferencesAssistantSetBrightnessLevel *)self value];
  v6 = v5;
  +[PSBrightnessSettingsDetail currentValue];
  v8 = v7;
  increment = [(PreferencesAssistantSetBrightnessLevel *)self increment];
  dryRun = [(PreferencesAssistantSetBrightnessLevel *)self dryRun];
  if (increment)
  {
    [PSBrightnessSettingsDetail incrementedBrightnessValue:v6];
    v6 = v11;
  }

  if (v8 == v6)
  {
    v12 = objc_alloc_init(SACommandFailed);
    [v12 setErrorCode:SASettingValueUnchangedErrorCode];
    [v12 setReason:{@"Value unchanged, No change was made"}];
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = dryRun;
  }

  if ((v13 & 1) == 0)
  {
    if (increment)
    {
      [PSBrightnessSettingsDetail incrementBrightnessValue:v6];
    }

    else
    {
      +[PSBrightnessSettingsDetail beginBrightnessAdjustmentTransaction];
      [PSBrightnessSettingsDetail setValue:v6];
      +[PSBrightnessSettingsDetail endBrightnessAdjustmentTransaction];
    }
  }

  v14 = PALogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"Set";
    v16 = @"Dry Run";
    *v24 = 138413314;
    if (!dryRun)
    {
      v16 = @"Set";
    }

    *&v24[4] = v16;
    *&v24[12] = 2112;
    if (increment)
    {
      v15 = @"Increment";
    }

    *&v24[14] = v15;
    v25 = 2048;
    v26 = v8;
    v27 = 2048;
    v28 = v6;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantSetBrightnessLevel (%@ / %@ / prev: %f / value: %f / %@)", v24, 0x34u);
  }

  v17 = v12;
  v18 = v17;
  if (!v12)
  {
    v19 = objc_alloc_init(SASettingFloatEntity);
    *&v20 = v6;
    [v19 setValue:v20];
    *&v21 = v8;
    v22 = [NSNumber numberWithFloat:v21];
    [v19 setPreviousValue:v22];

    v18 = objc_alloc_init(SASettingSetFloatResponse);
    [v18 setSetting:v19];
  }

  dictionary = [v18 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end