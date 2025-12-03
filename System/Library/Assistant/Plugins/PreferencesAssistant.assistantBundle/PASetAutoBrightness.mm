@interface PASetAutoBrightness
- (void)performWithCompletion:(id)completion;
@end

@implementation PASetAutoBrightness

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (+[PSBrightnessSettingsDetail deviceSupportsAutoBrightness])
  {
    v5 = +[PSBrightnessSettingsDetail autoBrightnessEnabled];
    if ([(PASetAutoBrightness *)self toggle])
    {
      value = (v5 ^ 1);
    }

    else
    {
      value = [(PASetAutoBrightness *)self value];
    }

    dryRun = [(PASetAutoBrightness *)self dryRun];
    if (v5 == value)
    {
      v11 = objc_alloc_init(SACommandFailed);
      [v11 setErrorCode:SASettingValueUnchangedErrorCode];
      [v11 setReason:{@"Value unchanged, No change was made"}];
      v12 = v11 == 0;
      if (v11)
      {
        v13 = dryRun;
      }

      else
      {
        v13 = 1;
      }

      if ((v13 & 1) == 0)
      {
        [PSBrightnessSettingsDetail setAutoBrightnessEnabled:value];
        v12 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 1;
    }

    v14 = PALogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"Set";
      if (dryRun)
      {
        v15 = @"Dry Run";
      }

      *v22 = 138413058;
      *&v22[4] = v15;
      if (v5)
      {
        v16 = @"ON";
      }

      else
      {
        v16 = @"OFF";
      }

      *&v22[12] = 2112;
      *&v22[14] = v16;
      *&v22[22] = 2112;
      if (value)
      {
        v17 = @"ON";
      }

      else
      {
        v17 = @"OFF";
      }

      v23 = v17;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "########## PASetAutoBrightness (%@ / prev: %@ / value: %@ / %@)", v22, 0x2Au);
    }

    v18 = v11;
    v8 = v18;
    if (v12)
    {
      v19 = objc_alloc_init(SASettingBooleanEntity);
      [v19 setValue:value];
      v20 = [NSNumber numberWithBool:v5];
      [v19 setPreviousValue:v20];

      v9 = objc_alloc_init(SASettingSetBoolResponse);
      [v9 setSetting:v19];
    }

    else
    {
      v9 = v18;
    }
  }

  else
  {
    v7 = objc_alloc_init(SACommandFailed);
    [v7 setErrorCode:SASettingPropertyUnsupportedByDeviceErrorCode];
    [v7 setReason:@"Device does not support ALS"];
    v8 = v7;
    v9 = v8;
  }

  dictionary = [v9 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end