@interface PASetPrivacyLocationService
- (void)performWithCompletion:(id)a3;
@end

@implementation PASetPrivacyLocationService

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[PSLocationServicesSettingsDetail isEnabled];
  if ([(PASetPrivacyLocationService *)self toggle])
  {
    v6 = (v5 ^ 1);
  }

  else
  {
    v6 = [(PASetPrivacyLocationService *)self value];
  }

  v7 = [(PASetPrivacyLocationService *)self dryRun];
  if (v5 == v6)
  {
    v8 = objc_alloc_init(SACommandFailed);
    [v8 setErrorCode:SASettingValueUnchangedErrorCode];
    [v8 setReason:{@"Value unchanged, No change was made"}];
    if (([(PASetPrivacyLocationService *)self userConfirmed]& 1) != 0)
    {
      goto LABEL_8;
    }

    if (v8)
    {
      v15 = 0;
      goto LABEL_29;
    }

LABEL_27:
    v16 = objc_alloc_init(SACommandFailed);
    [v16 setErrorCode:SASettingLocationServiceChangeRequiresConfirmationErrorCode];
    [v16 setReason:@"User did not confirm Location Services change"];
    v8 = v16;
    v15 = v8;
    goto LABEL_29;
  }

  if (![(PASetPrivacyLocationService *)self userConfirmed])
  {
    goto LABEL_27;
  }

  v8 = 0;
LABEL_8:
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
    [PSLocationServicesSettingsDetail setEnabled:v6];
  }

  v10 = PALogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Set";
    if (v7)
    {
      v11 = @"Dry Run";
    }

    *v20 = 138413058;
    *&v20[4] = v11;
    if (v5)
    {
      v12 = @"ON";
    }

    else
    {
      v12 = @"OFF";
    }

    *&v20[12] = 2112;
    *&v20[14] = v12;
    *&v20[22] = 2112;
    if (v6)
    {
      v13 = @"ON";
    }

    else
    {
      v13 = @"OFF";
    }

    v21 = v13;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "########## PASetPrivacyLocationService (%@ / prev: %@ / value: %@ / %@)", v20, 0x2Au);
  }

  v14 = v8;
  if (v8)
  {
    v15 = v14;
    v8 = v14;
  }

  else
  {
    v17 = objc_alloc_init(SASettingBooleanEntity);
    [v17 setValue:v6];
    v18 = [NSNumber numberWithBool:v5];
    [v17 setPreviousValue:v18];

    v15 = objc_alloc_init(SASettingSetBoolResponse);
    [v15 setSetting:v17];

    v8 = 0;
  }

LABEL_29:
  v19 = [v15 dictionary];
  v4[2](v4, v19);
}

@end