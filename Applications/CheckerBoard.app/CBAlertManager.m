@interface CBAlertManager
+ (id)sharedInstance;
- (BOOL)_alertNotVisible;
- (BOOL)_modalNotVisible:(unint64_t)a3;
- (id)_init;
- (id)_pointImageOfColor:(id)a3;
- (void)_dismissDebugInfo;
- (void)_dismissWiFiPicker;
- (void)dismissThermalWarningWithCompletion:(id)a3;
- (void)powerDownViewRequestCancel:(id)a3;
- (void)powerDownViewRequestPowerDown:(id)a3;
- (void)showDebugInfoWithCompletion:(id)a3;
- (void)showExitConfirmationWithCompletion:(id)a3 response:(id)a4;
- (void)showMenuSheetWithOptions:(unint64_t)a3 completion:(id)a4 response:(id)a5;
- (void)showPowerDownWithCompletion:(id)a3 response:(id)a4;
- (void)showThermalWarningWithCompletion:(id)a3;
- (void)showWiFiPickerWithCompletion:(id)a3;
@end

@implementation CBAlertManager

+ (id)sharedInstance
{
  if (qword_1000923E8 != -1)
  {
    sub_1000476A0();
  }

  v3 = qword_1000923E0;

  return v3;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = CBAlertManager;
  v2 = [(CBAlertManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_powerDownVisible = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_dismissWiFiPicker" name:@"CBNetworkViewControllerWillDismissFromDoneButtonNotification" object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    v6 = +[CBDebugInfoViewController CBDebugInfoViewDismissButtonPressedNotification];
    [v5 addObserver:v3 selector:"_dismissDebugInfo" name:v6 object:0];
  }

  return v3;
}

- (void)showMenuSheetWithOptions:(unint64_t)a3 completion:(id)a4 response:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CBAlertManager *)self _alertNotVisible]&& [(CBAlertManager *)self _modalNotVisible:1]&& [(CBAlertManager *)self _modalNotVisible:2])
  {
    v10 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Presenting menu sheet…", buf, 2u);
    }

    v11 = +[UIDevice currentDevice];
    v12 = [v11 userInterfaceIdiom];

    v13 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:(v12 & 0xFFFFFFFFFFFFFFFBLL) == 1];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"EXIT_DIAGNOSTICS" value:&stru_10007EAB0 table:0];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10002200C;
    v43[3] = &unk_10007E058;
    v43[4] = self;
    v16 = v9;
    v44 = v16;
    v17 = [UIAlertAction actionWithTitle:v15 style:2 handler:v43];
    [v13 addAction:v17];

    if ((v6 & 1) != 0 && ![(CBAlertManager *)self wiFiPickerVisible])
    {
      v18 = MGGetBoolAnswer();
      v19 = +[NSBundle mainBundle];
      v20 = v19;
      if (v18)
      {
        v21 = @"WLAN_SETTINGS";
      }

      else
      {
        v21 = @"WIFI_SETTINGS";
      }

      v22 = [v19 localizedStringForKey:v21 value:&stru_10007EAB0 table:0];

      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10002209C;
      v41[3] = &unk_10007E058;
      v41[4] = self;
      v42 = v16;
      v23 = [UIAlertAction actionWithTitle:v22 style:0 handler:v41];
      [v13 addAction:v23];
    }

    if ((v6 & 2) != 0)
    {
      v24 = +[NSBundle mainBundle];
      v25 = [v24 localizedStringForKey:@"SHUT_DOWN" value:&stru_10007EAB0 table:0];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10002212C;
      v39[3] = &unk_10007E058;
      v39[4] = self;
      v40 = v16;
      v26 = [UIAlertAction actionWithTitle:v25 style:0 handler:v39];
      [v13 addAction:v26];
    }

    if ((v6 & 4) != 0 && ![(CBAlertManager *)self debugInfoVisible])
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000221BC;
      v37[3] = &unk_10007E058;
      v37[4] = self;
      v38 = v16;
      v27 = [UIAlertAction actionWithTitle:@"[Internal Only] CheckerBoard Debug 🐜" style:0 handler:v37];
      [v13 addAction:v27];
    }

    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"CANCEL" value:&stru_10007EAB0 table:0];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10002224C;
    v35[3] = &unk_10007E058;
    v35[4] = self;
    v36 = v16;
    v30 = [UIAlertAction actionWithTitle:v29 style:1 handler:v35];
    [v13 addAction:v30];

    [(CBAlertManager *)self setAlertVisible:1];
    v31 = +[CBWindowManager sharedInstance];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000222DC;
    v33[3] = &unk_10007DC38;
    v34 = v8;
    v32 = [v31 presentViewController:v13 onLayer:2 backgroundTunnel:0 statusBarVisible:0 animated:1 completion:v33];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }
}

- (void)showExitConfirmationWithCompletion:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CBAlertManager *)self _alertNotVisible])
  {
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Presenting exit CheckerBoard confirmation alert…", buf, 2u);
    }

    v9 = +[UIDevice currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"ARE_YOU_SURE" value:&stru_10007EAB0 table:0];
    v13 = [UIAlertController alertControllerWithTitle:v12 message:0 preferredStyle:(v10 & 0xFFFFFFFFFFFFFFFBLL) == 1];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"EXIT_DIAGNOSTICS" value:&stru_10007EAB0 table:0];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000226F0;
    v27[3] = &unk_10007E058;
    v27[4] = self;
    v16 = v7;
    v28 = v16;
    v17 = [UIAlertAction actionWithTitle:v15 style:2 handler:v27];
    [v13 addAction:v17];

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_10007EAB0 table:0];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002273C;
    v25[3] = &unk_10007E058;
    v25[4] = self;
    v26 = v16;
    v20 = [UIAlertAction actionWithTitle:v19 style:1 handler:v25];
    [v13 addAction:v20];

    [(CBAlertManager *)self setAlertVisible:1];
    v21 = +[CBWindowManager sharedInstance];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100022788;
    v23[3] = &unk_10007DC38;
    v24 = v6;
    v22 = [v21 presentViewController:v13 onLayer:2 backgroundTunnel:0 statusBarVisible:0 animated:1 completion:v23];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (void)showWiFiPickerWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CBAlertManager *)self _modalNotVisible:0])
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting Wi-Fi picker…", buf, 2u);
    }

    v6 = [[CBNetworkViewController alloc] initWithSetupPresentationTheme:0];
    v7 = +[UIColor whiteColor];
    v8 = [(CBNetworkViewController *)v6 view];
    [v8 setBackgroundColor:v7];

    v9 = [[UINavigationController alloc] initWithRootViewController:v6];
    [(CBAlertManager *)self setWiFiPickerVisible:1];
    v10 = +[CBWindowManager sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000229E4;
    v12[3] = &unk_10007DC38;
    v13 = v4;
    v11 = [v10 presentViewController:v9 onLayer:2 backgroundTunnel:0 statusBarVisible:1 animated:1 completion:v12];
    [(CBAlertManager *)self setWiFiPickerWindow:v11];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)showThermalWarningWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CBAlertManager *)self _modalNotVisible:1])
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting thermal warning UI…", buf, 2u);
    }

    v6 = objc_alloc_init(CBTemperatureWarningViewController);
    [(CBTemperatureWarningViewController *)v6 setModalPresentationStyle:5];
    [(CBTemperatureWarningViewController *)v6 setModalTransitionStyle:2];
    v7 = [[UINavigationController alloc] initWithRootViewController:v6];
    v8 = [UIColor colorWithWhite:0.0 alpha:1.0];
    v9 = [(CBAlertManager *)self _pointImageOfColor:v8];

    v10 = [v7 navigationBar];
    [v10 setBackgroundImage:v9 forBarMetrics:0];

    [(CBAlertManager *)self setThermalWarningVisible:1];
    v11 = +[CBWindowManager sharedInstance];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100022C78;
    v13[3] = &unk_10007DC38;
    v14 = v4;
    v12 = [v11 presentViewController:v7 onLayer:2 backgroundTunnel:0 statusBarVisible:0 animated:1 completion:v13];
    [(CBAlertManager *)self setThermalWarningWindow:v12];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)showPowerDownWithCompletion:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CBAlertManager *)self _modalNotVisible:2])
  {
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Presenting power down UI…", buf, 2u);
    }

    [(CBAlertManager *)self setPowerDownResponse:v7];
    v9 = +[SBUIPowerDownViewControllerFactory newPowerDownViewController];
    v10 = +[UIColor lightGrayColor];
    v11 = [v9 view];
    [v11 setBackgroundColor:v10];

    [v9 setPowerDownDelegate:self];
    [v9 setModalPresentationStyle:5];
    [v9 setModalTransitionStyle:2];
    [(CBAlertManager *)self setPowerDownVisible:1];
    v12 = +[CBWindowManager sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100022EF0;
    v14[3] = &unk_10007DC38;
    v15 = v6;
    v13 = [v12 presentViewController:v9 onLayer:2 backgroundTunnel:0 statusBarVisible:0 animated:1 completion:v14];
    [(CBAlertManager *)self setPowerDownWindow:v13];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (void)showDebugInfoWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CBAlertManager *)self _modalNotVisible:3])
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting debug info UI...", buf, 2u);
    }

    v6 = objc_alloc_init(CBDebugInfoViewController);
    v7 = +[UIColor whiteColor];
    v8 = [(CBDebugInfoViewController *)v6 view];
    [v8 setBackgroundColor:v7];

    v9 = [[UINavigationController alloc] initWithRootViewController:v6];
    [(CBAlertManager *)self setDebugInfoVisible:1];
    v10 = +[CBWindowManager sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100023144;
    v12[3] = &unk_10007DC38;
    v13 = v4;
    v11 = [v10 presentViewController:v9 onLayer:2 backgroundTunnel:0 statusBarVisible:1 animated:1 completion:v12];
    [(CBAlertManager *)self setDebugInfoWindow:v11];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)dismissThermalWarningWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CBAlertManager *)self _modalNotVisible:1])
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing thermal warning.", v7, 2u);
    }

    v6 = [(CBAlertManager *)self thermalWarningWindow];
    [v6 dismissViewControllerAnimated:1];

    [(CBAlertManager *)self setThermalWarningVisible:0];
    [(CBAlertManager *)self setThermalWarningWindow:0];
  }
}

- (void)powerDownViewRequestCancel:(id)a3
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Power down request canceled - dismissing power down UI.", v7, 2u);
  }

  [(CBAlertManager *)self setPowerDownVisible:0];
  v5 = [(CBAlertManager *)self powerDownWindow];
  [v5 dismissViewControllerAnimated:1];

  [(CBAlertManager *)self setPowerDownWindow:0];
  v6 = [(CBAlertManager *)self powerDownResponse];
  v6[2](v6, 1);
}

- (void)powerDownViewRequestPowerDown:(id)a3
{
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Power down requested.", v6, 2u);
  }

  [(CBAlertManager *)self setPowerDownVisible:0];
  v5 = [(CBAlertManager *)self powerDownResponse];
  v5[2](v5, 0);
}

- (id)_pointImageOfColor:(id)a3
{
  v3 = a3;
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContext(v7);
  [v3 set];

  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  UIRectFill(v8);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

- (void)_dismissWiFiPicker
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing Wi-Fi picker.", v5, 2u);
  }

  [(CBAlertManager *)self setWiFiPickerVisible:0];
  v4 = [(CBAlertManager *)self wiFiPickerWindow];
  [v4 dismissViewControllerAnimated:1];

  [(CBAlertManager *)self setWiFiPickerWindow:0];
}

- (void)_dismissDebugInfo
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing Debug Info view", v5, 2u);
  }

  [(CBAlertManager *)self setDebugInfoVisible:0];
  v4 = [(CBAlertManager *)self debugInfoWindow];
  [v4 dismissViewControllerAnimated:1];

  [(CBAlertManager *)self setDebugInfoWindow:0];
}

- (BOOL)_alertNotVisible
{
  if ([(CBAlertManager *)self alertVisible])
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "An alert is already visible.", v5, 2u);
    }
  }

  return ![(CBAlertManager *)self alertVisible];
}

- (BOOL)_modalNotVisible:(unint64_t)a3
{
  if (!a3)
  {
    if ([(CBAlertManager *)self wiFiPickerVisible])
    {
      goto LABEL_7;
    }

    return 1;
  }

  if (a3 == 2)
  {
    if ([(CBAlertManager *)self powerDownVisible])
    {
      goto LABEL_7;
    }

    return 1;
  }

  if (a3 != 1 || ![(CBAlertManager *)self thermalWarningVisible])
  {
    return 1;
  }

LABEL_7:
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Modal (%ld) is already visible.", &v6, 0xCu);
  }

  return 0;
}

@end