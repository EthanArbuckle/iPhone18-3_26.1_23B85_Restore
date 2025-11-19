@interface UIViewController
- (void)_clearRemoteSetupUX;
- (void)_remoteSetupCancelled;
- (void)_remoteSetupCompleted;
- (void)_remoteSetupConfiguring;
- (void)_remoteSetupFailed;
- (void)_remoteSetupPresentAuthentication:(id)a3;
- (void)_remoteSetupRequestAuthentication:(id)a3;
- (void)configureForRemoteSetup;
- (void)unConfigureForRemoteSetup;
@end

@implementation UIViewController

- (void)configureForRemoteSetup
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_remoteSetupPresentAuthentication:" name:@"CBRemoteSetupAuthenticaitonDisplayNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_remoteSetupRequestAuthentication:" name:@"CBRemoteSetupAuthenticationRequestNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_remoteSetupFailed" name:@"CBRemoteSetupFailedNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_remoteSetupConfiguring" name:@"CBRemoteSetupConfiguringNotification" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_remoteSetupCompleted" name:@"CBRemoteSetupCompletedNotification" object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_remoteSetupCancelled" name:@"CBRemoteSetupCancelledNotification" object:0];

  v9 = +[CBRemoteSetupManager sharedInstance];
  [(UIViewController *)self setRemoteSetupManager:v9];

  [(UIViewController *)self setRemoteSetupAuthController:0];
  [(UIViewController *)self setRemoteSetupConfiguringController:0];
  [(UIViewController *)self setRemoteSetupQRCodeScannerController:0];
  [(UIViewController *)self setRemoteSetupQRCodeScanner:0];
  v10 = +[NSUserDefaults standardUserDefaults];
  if (!v10 || ([v10 BOOLForKey:@"remoteSetupCompleted"] & 1) == 0)
  {
    v11 = +[CBRemoteSetupManager sharedInstance];
    [v11 startRemoteSetupBroadcast];
  }

  _objc_release_x1();
}

- (void)unConfigureForRemoteSetup
{
  v3 = +[CBRemoteSetupManager sharedInstance];
  [v3 endRemoteSetupBroadcast];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"CBRemoteSetupAuthenticaitonDisplayNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"CBRemoteSetupFailedNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:@"CBRemoteSetupConfiguringNotification" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:@"CBRemoteSetupCompletedNotification" object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:@"CBRemoteSetupCancelledNotification" object:0];
}

- (void)_remoteSetupPresentAuthentication:(id)a3
{
  v4 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 userInfo];
    v26 = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote setup is requesting we present authentication with info: %@", &v26, 0xCu);
  }

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"type"];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"pin"];

  v11 = [(UIViewController *)self remoteSetupAuthController];

  if (v11)
  {
    v12 = [(UIViewController *)self remoteSetupAuthController];
    [v12 dismissViewControllerAnimated:1 completion:0];
  }

  if (v10)
  {
    v13 = v8 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100044E04();
    }
  }

  else
  {
    if ([v8 isEqualToValue:&off_100080FA0])
    {
      v15 = @"REMOTE_SETUP_PIN_AUTH_DETAIL";
      v16 = @"REMOTE_SETUP_PIN_AUTH_TITLE";
LABEL_16:
      v17 = +[NSBundle mainBundle];
      v14 = [v17 localizedStringForKey:v16 value:&stru_10007EAB0 table:0];

      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:v15 value:&stru_10007EAB0 table:0];

      v20 = [[CBRemoteSetupAuthenticationViewController alloc] initWithTitle:v14 detailText:v19 icon:0];
      [(UIViewController *)self setRemoteSetupAuthController:v20];

      v21 = [(UIViewController *)self remoteSetupAuthController];
      [v21 setPairingCode:v10];

      v22 = [v8 intValue];
      v23 = [(UIViewController *)self remoteSetupAuthController];
      [v23 setPasswordType:v22];

      v24 = [(UIViewController *)self remoteSetupAuthController];
      [(UIViewController *)self presentViewController:v24 animated:1 completion:0];

      goto LABEL_20;
    }

    if ([v8 isEqualToValue:&off_100080FB8])
    {
      v15 = @"REMOTE_SETUP_QR_AUTH_DETAIL";
      v16 = @"REMOTE_SETUP_QR_AUTH_TITLE";
      goto LABEL_16;
    }

    v25 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100044E44();
    }

    v14 = [(UIViewController *)self remoteSetupManager];
    [v14 setupFailed];
  }

LABEL_20:
}

- (void)_remoteSetupRequestAuthentication:(id)a3
{
  v4 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote setup wants us to answer authenticiation with info: %@", buf, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"type"];

  if ([v7 isEqualToValue:&off_100080FB8])
  {
    v8 = @"REMOTE_SETUP_QR_SCAN_DETAIL";
  }

  else
  {
    if (([v7 isEqualToValue:&off_100080FA0] & 1) == 0)
    {
      v24 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100044EB8();
      }

      goto LABEL_15;
    }

    v8 = @"REMOTE_SETUP_ACC_SCAN_DETAIL";
  }

  v9 = [(UIViewController *)self remoteSetupQRCodeScannerController];

  if (v9)
  {
    v10 = [(UIViewController *)self remoteSetupQRCodeScannerController];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000356C;
    v29[3] = &unk_10007D540;
    v29[4] = self;
    [v10 dismissViewControllerAnimated:1 completion:v29];

    [(UIViewController *)self setRemoteSetupQRCodeScannerController:0];
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000035E4;
  v28[3] = &unk_10007D568;
  v28[4] = self;
  v11 = [[CBQRCodeScanner alloc] initWithScanCompletion:v28];
  [(UIViewController *)self setRemoteSetupQRCodeScanner:v11];

  v12 = [(UIViewController *)self remoteSetupQRCodeScanner];

  if (!v12)
  {
    v24 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100044F2C();
    }

LABEL_15:

    v25 = [(UIViewController *)self remoteSetupManager];
    [v25 setupFailed];

    goto LABEL_16;
  }

  v13 = [CBRemoteSetupQRCodeScanViewController alloc];
  v14 = +[NSBundle mainBundle];
  [v14 localizedStringForKey:@"REMOTE_SETUP_QR_SCAN_TITLE" value:&stru_10007EAB0 table:0];
  v26 = v7;
  v16 = v15 = v4;
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:v8 value:&stru_10007EAB0 table:0];
  v19 = [(UIViewController *)self remoteSetupManager];
  v20 = [(UIViewController *)self remoteSetupQRCodeScanner];
  v21 = [v20 captureSession];
  v22 = [(CBRemoteSetupQRCodeScanViewController *)v13 initWithTitle:v16 detailText:v18 icon:0 remoteSetupManager:v19 captureSession:v21];
  [(UIViewController *)self setRemoteSetupQRCodeScannerController:v22];

  v4 = v15;
  v7 = v26;

  v23 = [(UIViewController *)self remoteSetupQRCodeScannerController];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100003724;
  v27[3] = &unk_10007D540;
  v27[4] = self;
  [(UIViewController *)self presentViewController:v23 animated:1 completion:v27];

LABEL_16:
}

- (void)_remoteSetupConfiguring
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remote setup is now configuring", v13, 2u);
  }

  v4 = [(UIViewController *)self remoteSetupAuthController];

  if (v4)
  {
    v5 = [(UIViewController *)self remoteSetupAuthController];
    [v5 dismissViewControllerAnimated:1 completion:0];

    [(UIViewController *)self setRemoteSetupAuthController:0];
  }

  v6 = [CBRemoteSetupConfiguringViewController alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"REMOTE_SETUP_CONFIGURING_TITLE" value:&stru_10007EAB0 table:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"REMOTE_SETUP_CONFIGURING_DETAIL" value:&stru_10007EAB0 table:0];
  v11 = [(CBRemoteSetupConfiguringViewController *)v6 initWithTitle:v8 detailText:v10 icon:0];
  [(UIViewController *)self setRemoteSetupConfiguringController:v11];

  v12 = [(UIViewController *)self remoteSetupConfiguringController];
  [(UIViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_remoteSetupCompleted
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remote setup complete. Leaving breadcrumb prior to restart.", buf, 2u);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:1 forKey:@"remoteSetupCompleted"];
  v5 = [(UIViewController *)self remoteSetupManager];
  v6 = [v5 remoteLocaleCode];

  if (v6)
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Applying language from remote setup", v12, 2u);
    }

    v8 = +[CBLocationController sharedLocationController];
    [v8 selectLanguage:v6 restartAfterCompletion:0];
  }

  v9 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restarting CheckerBoard to complete remote setup.", v11, 2u);
  }

  v10 = +[FBSystemService sharedInstance];
  [v10 exitAndRelaunch:1];
}

- (void)_clearRemoteSetupUX
{
  v3 = [(UIViewController *)self remoteSetupConfiguringController];

  if (v3)
  {
    v4 = [(UIViewController *)self remoteSetupConfiguringController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    [(UIViewController *)self setRemoteSetupConfiguringController:0];
  }

  v5 = [(UIViewController *)self remoteSetupAuthController];

  if (v5)
  {
    v6 = [(UIViewController *)self remoteSetupAuthController];
    [v6 dismissViewControllerAnimated:1 completion:0];

    [(UIViewController *)self setRemoteSetupAuthController:0];
  }

  v7 = [(UIViewController *)self remoteSetupQRCodeScannerController];

  if (v7)
  {
    v8 = [(UIViewController *)self remoteSetupQRCodeScannerController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100003CA4;
    v9[3] = &unk_10007D540;
    v9[4] = self;
    [v8 dismissViewControllerAnimated:1 completion:v9];

    [(UIViewController *)self setRemoteSetupQRCodeScannerController:0];
  }
}

- (void)_remoteSetupCancelled
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remote setup cancelled.", v4, 2u);
  }

  [(UIViewController *)self _clearRemoteSetupUX];
}

- (void)_remoteSetupFailed
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remote setup failed. Restarting broadcast after alert.", buf, 2u);
  }

  [(UIViewController *)self _clearRemoteSetupUX];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"REMOTE_SETUP_FAILED_TITLE" value:&stru_10007EAB0 table:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"REMOTE_SETUP_FAILED_DETAIL" value:&stru_10007EAB0 table:0];
  v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"DISMISS" value:&stru_10007EAB0 table:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003F84;
  v12[3] = &unk_10007D590;
  v12[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:v12];
  [v8 addAction:v11];

  [(UIViewController *)self presentViewController:v8 animated:1 completion:0];
}

@end