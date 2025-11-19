@interface DADiagnosticResponder
+ (id)sharedInstance;
- (DADiagnosticResponder)init;
- (void)enableVolumeHUD:(BOOL)a3;
- (void)resetScreenBrightness:(id)a3;
- (void)setAutoBrightness:(BOOL)a3;
- (void)setScreenToBrightness:(float)a3 animate:(BOOL)a4;
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

- (void)enableVolumeHUD:(BOOL)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001030C;
  block[3] = &unk_1001BCCA8;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setScreenToBrightness:(float)a3 animate:(BOOL)a4
{
  v7 = dispatch_queue_create("com.apple.Diagnostics.brightnessQueue", 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000104FC;
  v8[3] = &unk_1001BCCF0;
  v8[4] = self;
  v10 = a4;
  v9 = a3;
  dispatch_async(v7, v8);
}

- (void)setAutoBrightness:(BOOL)a3
{
  v3 = a3;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting auto brightness to %d", v9, 8u);
  }

  v6 = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];

  if (!v6)
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

- (void)resetScreenBrightness:(id)a3
{
  v4 = a3;
  v5 = [(DADiagnosticResponder *)self screenBrightnessUserSetting];
  if (v5)
  {

LABEL_4:
    v7 = [(DADiagnosticResponder *)self screenBrightnessUserSetting];
    v8 = v7 != 0;

    v9 = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];
    v10 = v9 != 0;

    v11 = [(DADiagnosticResponder *)self screenBrightnessUserSetting];
    [v11 floatValue];
    v13 = v12;

    v14 = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];
    v15 = [v14 BOOLValue];

    [(DADiagnosticResponder *)self setScreenBrightnessUserSetting:0];
    [(DADiagnosticResponder *)self setAutoBrightnessEnabledUserSetting:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010B48;
    block[3] = &unk_1001BCD18;
    v20 = v8;
    v21 = v10;
    v18 = v13;
    v19 = v15;
    v17 = v4;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_5;
  }

  v6 = [(DADiagnosticResponder *)self autoBrightnessEnabledUserSetting];

  if (v6)
  {
    goto LABEL_4;
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_5:
}

@end