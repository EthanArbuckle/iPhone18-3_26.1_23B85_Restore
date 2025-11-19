@interface PreferencesAssistantSetGuidedAccess
- (void)performWithCompletion:(id)a3;
@end

@implementation PreferencesAssistantSetGuidedAccess

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  if (([(PreferencesAssistantSetGuidedAccess *)self toggle]& 1) != 0 || [(PreferencesAssistantSetGuidedAccess *)self value])
  {
    v5 = +[PSGuidedAccessSettingsDetail guidedAccessAvailability];
    if (v5 == 12)
    {
      [PSGuidedAccessSettingsDetail setGuidedAccessSwitchEnabled:1];
      v5 = +[PSGuidedAccessSettingsDetail guidedAccessAvailability];
    }

    v6 = &stru_106E8;
    v7 = -1;
    if (v5 > 3)
    {
      if (v5 > 0xC)
      {
LABEL_15:
        v8 = objc_alloc_init(SACommandFailed);
        [v8 setErrorCode:v7];
        [v8 setReason:v6];
        v9 = 1;
        goto LABEL_18;
      }

      if (((1 << v5) & 0x1070) == 0)
      {
        if (((1 << v5) & 0x380) != 0)
        {
          v7 = SASettingGuidedAccessUnavailableForAppErrorCode;
          v6 = @"Guided Access can not be started over this application";
        }

        else if (v5 == 11)
        {
          v7 = SASettingGuidedAccessPasscodeRequiredErrorCode;
          v6 = @"Guided Access requires a pin code to be set.";
        }

        goto LABEL_15;
      }

LABEL_14:
      v7 = SASettingGuidedAccessTemporarilyUnavailableErrorCode;
      v6 = @"Guided Access not available Right Now";
      goto LABEL_15;
    }

    if ((v5 - 1) < 2)
    {
      goto LABEL_14;
    }

    if (v5)
    {
      if (v5 == 3)
      {
        v7 = SASettingGuidedAccessUnavailableInRestoreOrUpdateErrorCode;
        v6 = @"Guided Access not available while restoring or updating";
      }

      goto LABEL_15;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  +[PSGuidedAccessSettingsDetail enterGuidedAccessMode];
  v8 = 0;
LABEL_18:
  v10 = PALogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(PreferencesAssistantSetGuidedAccess *)self dryRun];
    v12 = @"Set";
    if (v11)
    {
      v12 = @"Dry Run";
    }

    *v19 = 138413058;
    *&v19[4] = v12;
    v13 = @"ON";
    *&v19[12] = 2112;
    *&v19[14] = @"OFF";
    *&v19[22] = 2112;
    if (!v9)
    {
      v13 = @"OFF";
    }

    v20 = v13;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "########## PreferencesAssistantSetGuidedAccess (%@ / prev: %@ / value: %@ / %@)", v19, 0x2Au);
  }

  v14 = v8;
  v15 = v14;
  if (!v14)
  {
    v16 = objc_alloc_init(SASettingBooleanEntity);
    [v16 setValue:v9];
    v17 = [NSNumber numberWithBool:0];
    [v16 setPreviousValue:v17];

    v15 = objc_alloc_init(SASettingSetBoolResponse);
    [v15 setSetting:v16];
  }

  v18 = [v15 dictionary];
  v4[2](v4, v18);
}

@end