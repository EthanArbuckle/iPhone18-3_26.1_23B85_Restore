@interface PreferencesAssistantSetLowPowerMode
- (BOOL)isLowPowerModeSupported;
- (void)performWithCompletion:(id)a3;
@end

@implementation PreferencesAssistantSetLowPowerMode

- (BOOL)isLowPowerModeSupported
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFStringCompare(v2, @"iPhone", 0) == kCFCompareEqualTo;
  CFRelease(v3);
  return v4;
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[PSLowPowerModeSettingsDetail isEnabled];
  if (![(PreferencesAssistantSetLowPowerMode *)self isLowPowerModeSupported])
  {
    v14 = objc_alloc_init(SACommandFailed);
    [v14 setErrorCode:SASettingPropertyUnsupportedByDeviceErrorCode];
    [v14 setReason:@"Device does not support Low Power Mode"];
    v7 = [v14 dictionary];
    v4[2](v4, v7);
    goto LABEL_18;
  }

  if ([(PreferencesAssistantSetLowPowerMode *)self toggle])
  {
    v6 = (v5 ^ 1);
  }

  else
  {
    v6 = [(PreferencesAssistantSetLowPowerMode *)self value];
  }

  v8 = [(PreferencesAssistantSetLowPowerMode *)self dryRun];
  if (v5 == v6)
  {
    v7 = objc_alloc_init(SACommandFailed);
    [v7 setErrorCode:SASettingValueUnchangedErrorCode];
    [v7 setReason:{@"Value unchanged, No change was made"}];
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if ((v9 & 1) == 0)
  {
    [PSLowPowerModeSettingsDetail setEnabled:v6];
LABEL_16:
    v11 = objc_alloc_init(SASettingBooleanEntity);
    [v11 setValue:v6];
    v12 = [NSNumber numberWithBool:v5];
    [v11 setPreviousValue:v12];

    v15 = objc_alloc_init(SASettingSetBoolResponse);
    [v15 setSetting:v11];

    v10 = v15;
    goto LABEL_17;
  }

  v10 = v7;
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_17:
  v14 = v10;
  v13 = [v10 dictionary];
  v4[2](v4, v13);

  v4 = v13;
LABEL_18:
}

@end