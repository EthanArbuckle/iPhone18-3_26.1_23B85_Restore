@interface PASetAppearance
+ (void)setCarPlayAppearanceStyle:(id)style;
+ (void)setiOSAppearanceStyle:(id)style;
- (void)performWithCompletion:(id)completion;
@end

@implementation PASetAppearance

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  appearance = [(PASetAppearance *)self appearance];
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
  v7 = ;
  NSLog(@"Setting value to %@, previous value is %@", appearance, v7);
  v8 = [appearance isEqualToString:v7];
  dryRun = [(PASetAppearance *)self dryRun];
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
    v11 = dryRun;
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

  else if (currentSession)
  {
    [PASetAppearance setCarPlayAppearanceStyle:appearance];
  }

  else
  {
    [PASetAppearance setiOSAppearanceStyle:appearance];
  }

  v14 = objc_alloc_init(SASettingAppearanceEntity);
  [v14 setValue:appearance];
  [v14 setPreviousValue:v7];
  v13 = objc_alloc_init(SASettingSetAppearanceResponse);
  [v13 setSetting:v14];

LABEL_17:
  dictionary = [v13 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

+ (void)setiOSAppearanceStyle:(id)style
{
  styleCopy = style;
  v3 = [[UISUserInterfaceStyleMode alloc] initWithDelegate:0];
  [v3 modeValue];
  if (UISUserInterfaceStyleModeValueIsAutomatic())
  {
    NSLog(@"User interface style is automatic");
    if ([styleCopy isEqualToString:SASettingAppearanceDarkValue])
    {
      v4 = 2;
    }

    else if ([styleCopy isEqualToString:SASettingAppearanceLightValue])
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

  if ([styleCopy isEqualToString:SASettingAppearanceDarkValue])
  {
    v5 = v3;
    v6 = 2;
  }

  else
  {
    if (![styleCopy isEqualToString:SASettingAppearanceLightValue])
    {
      goto LABEL_13;
    }

    v5 = v3;
    v6 = 1;
  }

  [v5 setModeValue:v6];
LABEL_13:
}

+ (void)setCarPlayAppearanceStyle:(id)style
{
  styleCopy = style;
  if ([styleCopy isEqualToString:SASettingAppearanceDarkValue])
  {
    v3 = &off_10EE8;
  }

  else
  {
    if (![styleCopy isEqualToString:SASettingAppearanceLightValue])
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