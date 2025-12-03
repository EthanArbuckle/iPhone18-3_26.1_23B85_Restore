@interface UIViewController
- (void)_clearRemoteSetupUX;
- (void)_remoteSetupCancelled;
- (void)_remoteSetupCompleted;
- (void)_remoteSetupConfiguring;
- (void)_remoteSetupFailed;
- (void)_remoteSetupPresentAuthentication:(id)authentication;
- (void)_remoteSetupRequestAuthentication:(id)authentication;
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

- (void)_remoteSetupPresentAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [authenticationCopy userInfo];
    v26 = 138412290;
    v27 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote setup is requesting we present authentication with info: %@", &v26, 0xCu);
  }

  userInfo2 = [authenticationCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"type"];

  userInfo3 = [authenticationCopy userInfo];
  v10 = [userInfo3 objectForKeyedSubscript:@"pin"];

  remoteSetupAuthController = [(UIViewController *)self remoteSetupAuthController];

  if (remoteSetupAuthController)
  {
    remoteSetupAuthController2 = [(UIViewController *)self remoteSetupAuthController];
    [remoteSetupAuthController2 dismissViewControllerAnimated:1 completion:0];
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
    remoteSetupManager = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(remoteSetupManager, OS_LOG_TYPE_ERROR))
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
      remoteSetupManager = [v17 localizedStringForKey:v16 value:&stru_10007EAB0 table:0];

      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:v15 value:&stru_10007EAB0 table:0];

      v20 = [[CBRemoteSetupAuthenticationViewController alloc] initWithTitle:remoteSetupManager detailText:v19 icon:0];
      [(UIViewController *)self setRemoteSetupAuthController:v20];

      remoteSetupAuthController3 = [(UIViewController *)self remoteSetupAuthController];
      [remoteSetupAuthController3 setPairingCode:v10];

      intValue = [v8 intValue];
      remoteSetupAuthController4 = [(UIViewController *)self remoteSetupAuthController];
      [remoteSetupAuthController4 setPasswordType:intValue];

      remoteSetupAuthController5 = [(UIViewController *)self remoteSetupAuthController];
      [(UIViewController *)self presentViewController:remoteSetupAuthController5 animated:1 completion:0];

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

    remoteSetupManager = [(UIViewController *)self remoteSetupManager];
    [remoteSetupManager setupFailed];
  }

LABEL_20:
}

- (void)_remoteSetupRequestAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = authenticationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote setup wants us to answer authenticiation with info: %@", buf, 0xCu);
  }

  userInfo = [authenticationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"type"];

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

  remoteSetupQRCodeScannerController = [(UIViewController *)self remoteSetupQRCodeScannerController];

  if (remoteSetupQRCodeScannerController)
  {
    remoteSetupQRCodeScannerController2 = [(UIViewController *)self remoteSetupQRCodeScannerController];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000356C;
    v29[3] = &unk_10007D540;
    v29[4] = self;
    [remoteSetupQRCodeScannerController2 dismissViewControllerAnimated:1 completion:v29];

    [(UIViewController *)self setRemoteSetupQRCodeScannerController:0];
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000035E4;
  v28[3] = &unk_10007D568;
  v28[4] = self;
  v11 = [[CBQRCodeScanner alloc] initWithScanCompletion:v28];
  [(UIViewController *)self setRemoteSetupQRCodeScanner:v11];

  remoteSetupQRCodeScanner = [(UIViewController *)self remoteSetupQRCodeScanner];

  if (!remoteSetupQRCodeScanner)
  {
    v24 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100044F2C();
    }

LABEL_15:

    remoteSetupManager = [(UIViewController *)self remoteSetupManager];
    [remoteSetupManager setupFailed];

    goto LABEL_16;
  }

  v13 = [CBRemoteSetupQRCodeScanViewController alloc];
  v14 = +[NSBundle mainBundle];
  [v14 localizedStringForKey:@"REMOTE_SETUP_QR_SCAN_TITLE" value:&stru_10007EAB0 table:0];
  v26 = v7;
  v16 = v15 = authenticationCopy;
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:v8 value:&stru_10007EAB0 table:0];
  remoteSetupManager2 = [(UIViewController *)self remoteSetupManager];
  remoteSetupQRCodeScanner2 = [(UIViewController *)self remoteSetupQRCodeScanner];
  captureSession = [remoteSetupQRCodeScanner2 captureSession];
  v22 = [(CBRemoteSetupQRCodeScanViewController *)v13 initWithTitle:v16 detailText:v18 icon:0 remoteSetupManager:remoteSetupManager2 captureSession:captureSession];
  [(UIViewController *)self setRemoteSetupQRCodeScannerController:v22];

  authenticationCopy = v15;
  v7 = v26;

  remoteSetupQRCodeScannerController3 = [(UIViewController *)self remoteSetupQRCodeScannerController];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100003724;
  v27[3] = &unk_10007D540;
  v27[4] = self;
  [(UIViewController *)self presentViewController:remoteSetupQRCodeScannerController3 animated:1 completion:v27];

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

  remoteSetupAuthController = [(UIViewController *)self remoteSetupAuthController];

  if (remoteSetupAuthController)
  {
    remoteSetupAuthController2 = [(UIViewController *)self remoteSetupAuthController];
    [remoteSetupAuthController2 dismissViewControllerAnimated:1 completion:0];

    [(UIViewController *)self setRemoteSetupAuthController:0];
  }

  v6 = [CBRemoteSetupConfiguringViewController alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"REMOTE_SETUP_CONFIGURING_TITLE" value:&stru_10007EAB0 table:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"REMOTE_SETUP_CONFIGURING_DETAIL" value:&stru_10007EAB0 table:0];
  v11 = [(CBRemoteSetupConfiguringViewController *)v6 initWithTitle:v8 detailText:v10 icon:0];
  [(UIViewController *)self setRemoteSetupConfiguringController:v11];

  remoteSetupConfiguringController = [(UIViewController *)self remoteSetupConfiguringController];
  [(UIViewController *)self presentViewController:remoteSetupConfiguringController animated:1 completion:0];
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
  remoteSetupManager = [(UIViewController *)self remoteSetupManager];
  remoteLocaleCode = [remoteSetupManager remoteLocaleCode];

  if (remoteLocaleCode)
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Applying language from remote setup", v12, 2u);
    }

    v8 = +[CBLocationController sharedLocationController];
    [v8 selectLanguage:remoteLocaleCode restartAfterCompletion:0];
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
  remoteSetupConfiguringController = [(UIViewController *)self remoteSetupConfiguringController];

  if (remoteSetupConfiguringController)
  {
    remoteSetupConfiguringController2 = [(UIViewController *)self remoteSetupConfiguringController];
    [remoteSetupConfiguringController2 dismissViewControllerAnimated:1 completion:0];

    [(UIViewController *)self setRemoteSetupConfiguringController:0];
  }

  remoteSetupAuthController = [(UIViewController *)self remoteSetupAuthController];

  if (remoteSetupAuthController)
  {
    remoteSetupAuthController2 = [(UIViewController *)self remoteSetupAuthController];
    [remoteSetupAuthController2 dismissViewControllerAnimated:1 completion:0];

    [(UIViewController *)self setRemoteSetupAuthController:0];
  }

  remoteSetupQRCodeScannerController = [(UIViewController *)self remoteSetupQRCodeScannerController];

  if (remoteSetupQRCodeScannerController)
  {
    remoteSetupQRCodeScannerController2 = [(UIViewController *)self remoteSetupQRCodeScannerController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100003CA4;
    v9[3] = &unk_10007D540;
    v9[4] = self;
    [remoteSetupQRCodeScannerController2 dismissViewControllerAnimated:1 completion:v9];

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