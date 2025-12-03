@interface PAGetAppearance
+ (id)carPlayAppearanceStyle;
+ (id)iOSAppearanceStyle;
- (void)performWithCompletion:(id)completion;
@end

@implementation PAGetAppearance

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  initAndWaitUntilSessionUpdated = [[CARSessionStatus alloc] initAndWaitUntilSessionUpdated];
  currentSession = [initAndWaitUntilSessionUpdated currentSession];

  if (currentSession)
  {
    +[PAGetAppearance carPlayAppearanceStyle];
  }

  else
  {
    +[PAGetAppearance iOSAppearanceStyle];
  }
  v5 = ;
  v6 = objc_alloc_init(SASettingAppearanceEntity);
  [v6 setValue:v5];
  v7 = objc_alloc_init(SASettingGetAppearanceResponse);
  [v7 setSetting:v6];
  dictionary = [v7 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

+ (id)iOSAppearanceStyle
{
  v2 = [[UISUserInterfaceStyleMode alloc] initWithDelegate:0];
  modeValue = [v2 modeValue];
  if (!UISUserInterfaceStyleModeValueIsAutomatic())
  {
    NSLog(@"Mode value is %ld", modeValue);
    if (modeValue != &dword_0 + 1)
    {
      if (modeValue != &dword_0 + 2)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

LABEL_8:
    v5 = &SASettingAppearanceLightValue;
    goto LABEL_9;
  }

  NSLog(@"User interface style is automatic");
  override = [v2 override];
  NSLog(@"Mode override style is %ld", override);
  if (override == &dword_0 + 1)
  {
    goto LABEL_8;
  }

  if (override == &dword_0 + 2)
  {
LABEL_7:
    v5 = &SASettingAppearanceDarkValue;
LABEL_9:
    v6 = *v5;
    goto LABEL_11;
  }

  NSLog(@"Value is set to nil");
LABEL_10:
  v6 = 0;
LABEL_11:

  return v6;
}

+ (id)carPlayAppearanceStyle
{
  v2 = +[CARPrototypePref interfaceStyle];
  value = [v2 value];
  integerValue = [value integerValue];

  NSLog(@"Car style is %ld", integerValue);
  if (integerValue == &dword_0 + 2)
  {
    v5 = &SASettingAppearanceDarkValue;
LABEL_5:
    v6 = *v5;
    goto LABEL_7;
  }

  if (integerValue <= 1)
  {
    v5 = &SASettingAppearanceLightValue;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end