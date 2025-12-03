@interface PASetCellularData
- (void)performWithCompletion:(id)completion;
@end

@implementation PASetCellularData

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (+[PSCellularDataSettingsDetail deviceSupportsCellularData])
  {
    v5 = +[PSCellularDataSettingsDetail isEnabled];
    if ([(PASetCellularData *)self toggle])
    {
      value = (v5 ^ 1);
    }

    else
    {
      value = [(PASetCellularData *)self value];
    }

    dryRun = [(PASetCellularData *)self dryRun];
    if (v5 == value)
    {
      v10 = objc_alloc_init(SACommandFailed);
      [v10 setErrorCode:SASettingValueUnchangedErrorCode];
      [v10 setReason:{@"Value unchanged, No change was made"}];
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = dryRun;
    }

    if ((v11 & 1) == 0)
    {
      [PSCellularDataSettingsDetail setEnabled:value];
    }

    v12 = PALogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"Set";
      if (dryRun)
      {
        v13 = @"Dry Run";
      }

      *v21 = 138413058;
      *&v21[4] = v13;
      if (v5)
      {
        v14 = @"ON";
      }

      else
      {
        v14 = @"OFF";
      }

      *&v21[12] = 2112;
      *&v21[14] = v14;
      *&v21[22] = 2112;
      if (value)
      {
        v15 = @"ON";
      }

      else
      {
        v15 = @"OFF";
      }

      v22 = v15;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "########## PASetCellularData (%@ / prev: %@ / value: %@ / %@)", v21, 0x2Au);
    }

    v8 = v10;
    if (!v10)
    {
      v19 = objc_alloc_init(SASettingBooleanEntity);
      [v19 setValue:value];
      v20 = [NSNumber numberWithBool:v5];
      [v19 setPreviousValue:v20];

      v17 = objc_alloc_init(SASettingSetBoolResponse);
      [v17 setSetting:v19];

      v16 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v7 = objc_alloc_init(SACommandFailed);
    [v7 setErrorCode:SASettingPropertyUnsupportedByDeviceErrorCode];
    [v7 setReason:@"Device does not support Cellular Data"];
    v8 = v7;
  }

  v16 = v8;
  v17 = v8;
LABEL_26:
  dictionary = [v17 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end