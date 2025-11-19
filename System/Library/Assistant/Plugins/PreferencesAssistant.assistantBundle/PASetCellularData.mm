@interface PASetCellularData
- (void)performWithCompletion:(id)a3;
@end

@implementation PASetCellularData

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  if (+[PSCellularDataSettingsDetail deviceSupportsCellularData])
  {
    v5 = +[PSCellularDataSettingsDetail isEnabled];
    if ([(PASetCellularData *)self toggle])
    {
      v6 = (v5 ^ 1);
    }

    else
    {
      v6 = [(PASetCellularData *)self value];
    }

    v9 = [(PASetCellularData *)self dryRun];
    if (v5 == v6)
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
      v11 = v9;
    }

    if ((v11 & 1) == 0)
    {
      [PSCellularDataSettingsDetail setEnabled:v6];
    }

    v12 = PALogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"Set";
      if (v9)
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
      if (v6)
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
      [v19 setValue:v6];
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
  v18 = [v17 dictionary];
  v4[2](v4, v18);
}

@end