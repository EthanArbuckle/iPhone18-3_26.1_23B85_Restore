@interface PreferencesAssistantSetLowPowerMode
- (BOOL)isLowPowerModeSupported;
- (void)performWithCompletion:(id)completion;
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

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[PSLowPowerModeSettingsDetail isEnabled];
  if (![(PreferencesAssistantSetLowPowerMode *)self isLowPowerModeSupported])
  {
    v14 = objc_alloc_init(SACommandFailed);
    [v14 setErrorCode:SASettingPropertyUnsupportedByDeviceErrorCode];
    [v14 setReason:@"Device does not support Low Power Mode"];
    dictionary = [v14 dictionary];
    completionCopy[2](completionCopy, dictionary);
    goto LABEL_18;
  }

  if ([(PreferencesAssistantSetLowPowerMode *)self toggle])
  {
    value = (v5 ^ 1);
  }

  else
  {
    value = [(PreferencesAssistantSetLowPowerMode *)self value];
  }

  dryRun = [(PreferencesAssistantSetLowPowerMode *)self dryRun];
  if (v5 == value)
  {
    dictionary = objc_alloc_init(SACommandFailed);
    [dictionary setErrorCode:SASettingValueUnchangedErrorCode];
    [dictionary setReason:{@"Value unchanged, No change was made"}];
  }

  else
  {
    dictionary = 0;
  }

  if (dictionary)
  {
    v9 = 1;
  }

  else
  {
    v9 = dryRun;
  }

  if ((v9 & 1) == 0)
  {
    [PSLowPowerModeSettingsDetail setEnabled:value];
LABEL_16:
    v11 = objc_alloc_init(SASettingBooleanEntity);
    [v11 setValue:value];
    v12 = [NSNumber numberWithBool:v5];
    [v11 setPreviousValue:v12];

    v15 = objc_alloc_init(SASettingSetBoolResponse);
    [v15 setSetting:v11];

    v10 = v15;
    goto LABEL_17;
  }

  v10 = dictionary;
  if (!dictionary)
  {
    goto LABEL_16;
  }

LABEL_17:
  v14 = v10;
  dictionary2 = [v10 dictionary];
  completionCopy[2](completionCopy, dictionary2);

  completionCopy = dictionary2;
LABEL_18:
}

@end