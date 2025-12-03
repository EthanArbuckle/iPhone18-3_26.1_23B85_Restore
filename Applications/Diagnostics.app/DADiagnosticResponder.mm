@interface DADiagnosticResponder
+ (id)sharedInstance;
- (DADiagnosticResponder)init;
- (void)enableVolumeHUD:(BOOL)d;
- (void)resetScreenBrightness:(id)brightness;
- (void)setAutoBrightness:(BOOL)brightness;
- (void)setScreenToBrightness:(float)brightness animate:(BOOL)animate;
@end

@implementation DADiagnosticResponder

+ (id)sharedInstance
{
  if (qword_100202D48 != -1)
  {
    sub_100158764();
  }

  v3 = qword_100202D40;

  return v3;
}

- (DADiagnosticResponder)init
{
  v7.receiver = self;
  v7.super_class = DADiagnosticResponder;
  v2 = [(DADiagnosticResponder *)&v7 init];
  v3 = v2;
  if (v2)
  {
    screenBrightnessUserSetting = v2->_screenBrightnessUserSetting;
    v2->_screenBrightnessUserSetting = 0;

    autoBrightnessEnabledUserSetting = v3->_autoBrightnessEnabledUserSetting;
    v3->_autoBrightnessEnabledUserSetting = 0;
  }

  return v3;
}

- (void)enableVolumeHUD:(BOOL)d
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001030C;
  block[3] = &unk_1001BCCA8;
  dCopy = d;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setScreenToBrightness:(float)brightness animate:(BOOL)animate
{
  v7 = dispatch_queue_create("com.apple.Diagnostics.brightnessQueue", 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000104FC;
  v8[3] = &unk_1001BCCF0;
  v8[4] = self;
  animateCopy = animate;
  brightnessCopy = brightness;
  dispatch_async(v7, v8);
}

- (void)setAutoBrightness:(BOOL)brightness
{
  brightnessCopy = brightness;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = brightnessCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting auto brightness to %d", v9, 8u);
  }

  autoBrightnessEnabledUserSetting = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];

  if (!autoBrightnessEnabledUserSetting)
  {
    LOBYTE(v9[0]) = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"BKEnableALS", @"com.apple.backboardd", v9);
    if (LOBYTE(v9[0]))
    {
      v8 = [NSNumber numberWithBool:AppBooleanValue != 0];
      [(DADiagnosticResponder *)self setAutoBrightnessEnabledUserSetting:v8];
    }
  }

  BKSDisplayBrightnessSetAutoBrightnessEnabled();
}

- (void)resetScreenBrightness:(id)brightness
{
  brightnessCopy = brightness;
  screenBrightnessUserSetting = [(DADiagnosticResponder *)self screenBrightnessUserSetting];
  if (screenBrightnessUserSetting)
  {

LABEL_4:
    screenBrightnessUserSetting2 = [(DADiagnosticResponder *)self screenBrightnessUserSetting];
    v8 = screenBrightnessUserSetting2 != 0;

    autoBrightnessEnabledUserSetting = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];
    v10 = autoBrightnessEnabledUserSetting != 0;

    screenBrightnessUserSetting3 = [(DADiagnosticResponder *)self screenBrightnessUserSetting];
    [screenBrightnessUserSetting3 floatValue];
    v13 = v12;

    autoBrightnessEnabledUserSetting2 = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];
    bOOLValue = [autoBrightnessEnabledUserSetting2 BOOLValue];

    [(DADiagnosticResponder *)self setScreenBrightnessUserSetting:0];
    [(DADiagnosticResponder *)self setAutoBrightnessEnabledUserSetting:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010B48;
    block[3] = &unk_1001BCD18;
    v20 = v8;
    v21 = v10;
    v18 = v13;
    v19 = bOOLValue;
    v17 = brightnessCopy;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_5;
  }

  autoBrightnessEnabledUserSetting3 = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];

  if (autoBrightnessEnabledUserSetting3)
  {
    goto LABEL_4;
  }

  if (brightnessCopy)
  {
    brightnessCopy[2](brightnessCopy);
  }

LABEL_5:
}

@end