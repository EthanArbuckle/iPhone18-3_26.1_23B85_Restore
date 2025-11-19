@interface PAGetAppearance
+ (id)carPlayAppearanceStyle;
+ (id)iOSAppearanceStyle;
- (void)performWithCompletion:(id)a3;
@end

@implementation PAGetAppearance

- (void)performWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [[CARSessionStatus alloc] initAndWaitUntilSessionUpdated];
  v9 = [v4 currentSession];

  if (v9)
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
  v8 = [v7 dictionary];
  v3[2](v3, v8);
}

+ (id)iOSAppearanceStyle
{
  v2 = [[UISUserInterfaceStyleMode alloc] initWithDelegate:0];
  v3 = [v2 modeValue];
  if (!UISUserInterfaceStyleModeValueIsAutomatic())
  {
    NSLog(@"Mode value is %ld", v3);
    if (v3 != &dword_0 + 1)
    {
      if (v3 != &dword_0 + 2)
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
  v4 = [v2 override];
  NSLog(@"Mode override style is %ld", v4);
  if (v4 == &dword_0 + 1)
  {
    goto LABEL_8;
  }

  if (v4 == &dword_0 + 2)
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
  v3 = [v2 value];
  v4 = [v3 integerValue];

  NSLog(@"Car style is %ld", v4);
  if (v4 == &dword_0 + 2)
  {
    v5 = &SASettingAppearanceDarkValue;
LABEL_5:
    v6 = *v5;
    goto LABEL_7;
  }

  if (v4 <= 1)
  {
    v5 = &SASettingAppearanceLightValue;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end