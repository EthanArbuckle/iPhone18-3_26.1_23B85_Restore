@interface PASetAppearance
+ (void)setCarPlayAppearanceStyle:(id)a3;
+ (void)setiOSAppearanceStyle:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation PASetAppearance

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v16 = [(PASetAppearance *)self appearance];
  v5 = [[CARSessionStatus alloc] initAndWaitUntilSessionUpdated];
  v6 = [v5 currentSession];

  if (v6)
  {
    +[PAGetAppearance carPlayAppearanceStyle];
  }

  else
  {
    +[PAGetAppearance iOSAppearanceStyle];
  }
  v7 = ;
  NSLog(@"Setting value to %@, previous value is %@", v16, v7);
  v8 = [v16 isEqualToString:v7];
  v9 = [(PASetAppearance *)self dryRun];
  if (v8)
  {
    v10 = objc_alloc_init(SACommandFailed);
    [v10 setErrorCode:SASettingValueUnchangedErrorCode];
    [v10 setReason:{@"Value unchanged, No change was made"}];
    NSLog(@"Command failed due to value unchanged");
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

  if (v11)
  {
    v12 = v10;
    if (v10)
    {
      v13 = v12;
      goto LABEL_17;
    }
  }

  else if (v6)
  {
    [PASetAppearance setCarPlayAppearanceStyle:v16];
  }

  else
  {
    [PASetAppearance setiOSAppearanceStyle:v16];
  }

  v14 = objc_alloc_init(SASettingAppearanceEntity);
  [v14 setValue:v16];
  [v14 setPreviousValue:v7];
  v13 = objc_alloc_init(SASettingSetAppearanceResponse);
  [v13 setSetting:v14];

LABEL_17:
  v15 = [v13 dictionary];
  v4[2](v4, v15);
}

+ (void)setiOSAppearanceStyle:(id)a3
{
  v7 = a3;
  v3 = [[UISUserInterfaceStyleMode alloc] initWithDelegate:0];
  [v3 modeValue];
  if (UISUserInterfaceStyleModeValueIsAutomatic())
  {
    NSLog(@"User interface style is automatic");
    if ([v7 isEqualToString:SASettingAppearanceDarkValue])
    {
      v4 = 2;
    }

    else if ([v7 isEqualToString:SASettingAppearanceLightValue])
    {
      v4 = 1;
    }

    else
    {
      NSLog(@"Value is not equal to SASettingAppearanceDarkValue or SASettingAppearanceLightValue, setting override style to UISUserInterfaceStyleModeOverrideStyleNone");
      v4 = 0;
    }

    [v3 setOverride:{v4, 1}];
    goto LABEL_13;
  }

  if ([v7 isEqualToString:SASettingAppearanceDarkValue])
  {
    v5 = v3;
    v6 = 2;
  }

  else
  {
    if (![v7 isEqualToString:SASettingAppearanceLightValue])
    {
      goto LABEL_13;
    }

    v5 = v3;
    v6 = 1;
  }

  [v5 setModeValue:v6];
LABEL_13:
}

+ (void)setCarPlayAppearanceStyle:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:SASettingAppearanceDarkValue])
  {
    v3 = &off_10EE8;
  }

  else
  {
    if (![v5 isEqualToString:SASettingAppearanceLightValue])
    {
      goto LABEL_6;
    }

    v3 = &off_10F00;
  }

  v4 = +[CARPrototypePref interfaceStyle];
  [v4 setValue:v3];

LABEL_6:
}

@end