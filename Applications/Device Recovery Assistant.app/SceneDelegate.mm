@interface SceneDelegate
- (UIEdgeInsets)_additionalSafeAreaInsets;
- (void)_performNextStepWithInfo:(id)a3;
- (void)doneViewControllerDidReboot:(id)a3;
- (void)failureViewControllerDidReboot:(id)a3;
- (void)languageViewController:(id)a3 didChooseLanguageCodeWithRegion:(id)a4;
- (void)passcodeViewController:(id)a3 didEnterPasscode:(id)a4;
- (void)promptToBootToNeRDFromViewController:(id)a3;
- (void)promptToCancelAndRebootFromViewController:(id)a3;
- (void)recoveryViewControllerDidBegin:(id)a3;
- (void)resetPasscodeView;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)showCompletionViewWithError:(id)a3;
- (void)showLockoutViewUntilDate:(id)a3;
- (void)showPasscodeView;
- (void)showRebootView;
- (void)showRecoveryView;
- (void)showTermsView;
- (void)showUserApprovalView:(id)a3;
- (void)showWiFiView;
- (void)termsViewControllerDidAgree:(id)a3;
- (void)termsViewControllerDidDisagree:(id)a3;
- (void)userApprovalViewControllerDidCancel:(id)a3;
- (void)userApprovalViewControllerDidContinue:(id)a3;
- (void)welcomeViewControllerDidCancel:(id)a3;
- (void)welcomeViewControllerDidChooseDisable:(id)a3;
- (void)welcomeViewControllerDidChooseLanguage:(id)a3;
- (void)welcomeViewControllerDidChooseNeRD:(id)a3;
- (void)welcomeViewControllerDidContinue:(id)a3;
- (void)wifiViewControllerDelegateDidCancel:(id)a3;
- (void)wifiViewControllerDelegateDidChooseNetwork:(id)a3;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v32 = a3;
  v7 = [a4 persistentIdentifier];
  v8 = [v7 isEqualToString:@"dre-main-view"];

  if (v8)
  {
    v9 = [[FlowController alloc] initWithViewFactory:self];
    [(SceneDelegate *)self setFlowController:v9];

    v10 = objc_alloc_init(WiFiViewController);
    [(SceneDelegate *)self setWifiViewController:v10];

    v11 = [(SceneDelegate *)self wifiViewController];
    [v11 setDelegate:self];

    v12 = [WFNetworkListController alloc];
    v13 = [(SceneDelegate *)self wifiViewController];
    v14 = [v12 initWithViewController:v13];
    [(SceneDelegate *)self setWifiManager:v14];

    v15 = [(SceneDelegate *)self wifiManager];
    [v15 startScanning];

    v16 = +[NetworkMonitor shared];
    [v16 activate];

    v17 = [[UIWindow alloc] initWithWindowScene:v32];
    [(SceneDelegate *)self setWindow:v17];

    v18 = objc_alloc_init(WelcomeViewController);
    [(WelcomeViewController *)v18 setDelegate:self];
    v19 = [[OBNavigationController alloc] initWithRootViewController:v18];
    [(SceneDelegate *)self setNavigationController:v19];

    [(SceneDelegate *)self _additionalSafeAreaInsets];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [(SceneDelegate *)self navigationController];
    [v28 setAdditionalSafeAreaInsets:{v21, v23, v25, v27}];

    v29 = [(SceneDelegate *)self window];
    v30 = [(SceneDelegate *)self navigationController];
    [v29 setRootViewController:v30];

    v31 = [(SceneDelegate *)self window];
    [v31 makeKeyAndVisible];
  }
}

- (void)doneViewControllerDidReboot:(id)a3
{
  v3 = [(SceneDelegate *)self flowController];
  [v3 reboot];
}

- (void)failureViewControllerDidReboot:(id)a3
{
  v3 = [(SceneDelegate *)self flowController];
  [v3 reboot];
}

- (void)languageViewController:(id)a3 didChooseLanguageCodeWithRegion:(id)a4
{
  v5 = a4;
  v6 = sub_100012608();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[SceneDelegate languageViewController:didChooseLanguageCodeWithRegion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Restarting DRE shell to pickup language change.", &v9, 0xCu);
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 setObject:v5 forKey:@"preferredLanguageCode"];

  v8 = +[FBSystemService sharedInstance];
  [v8 exitAndRelaunch:self != 0];
}

- (void)passcodeViewController:(id)a3 didEnterPasscode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100012608();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v13 = "[SceneDelegate passcodeViewController:didEnterPasscode:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Passcode screen did provide passcode.", buf, 0xCu);
  }

  if ([v7 length])
  {
    v10 = DeviceRecoveryUserAuthParamPasscode;
    v11 = v7;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v9 = &__NSDictionary0__struct;
  }

  [v6 disable];
  [(SceneDelegate *)self _performNextStepWithInfo:v9];
}

- (void)recoveryViewControllerDidBegin:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[SceneDelegate recoveryViewControllerDidBegin:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Recovery screen did start.", &v5, 0xCu);
  }

  [(SceneDelegate *)self _performNextStepWithInfo:0];
}

- (void)termsViewControllerDidAgree:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[SceneDelegate termsViewControllerDidAgree:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Terms screen did agree.", &v7, 0xCu);
  }

  v5 = [(SceneDelegate *)self flowController];
  [v5 setPromptForPasscodeComplete:0];

  v6 = [(SceneDelegate *)self flowController];
  [v6 setUserApprovedDiagnosticsSubmission:1];

  [(SceneDelegate *)self _performNextStepWithInfo:0];
}

- (void)termsViewControllerDidDisagree:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[SceneDelegate termsViewControllerDidDisagree:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Terms screen did disagree.", &v7, 0xCu);
  }

  v5 = [(SceneDelegate *)self flowController];
  [v5 setPromptForPasscodeComplete:0];

  v6 = [(SceneDelegate *)self flowController];
  [v6 setUserApprovedDiagnosticsSubmission:0];

  [(SceneDelegate *)self _performNextStepWithInfo:0];
}

- (void)userApprovalViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[SceneDelegate userApprovalViewControllerDidCancel:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: User approval screen did cancel.", &v6, 0xCu);
  }

  [(SceneDelegate *)self promptToCancelAndRebootFromViewController:v4];
}

- (void)userApprovalViewControllerDidContinue:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[SceneDelegate userApprovalViewControllerDidContinue:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: User approval screen did continue.", &v5, 0xCu);
  }

  [(SceneDelegate *)self _performNextStepWithInfo:0];
}

- (void)welcomeViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[SceneDelegate welcomeViewControllerDidCancel:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Cancel on the welcome screen was pressed.", &v6, 0xCu);
  }

  [(SceneDelegate *)self promptToCancelAndRebootFromViewController:v4];
}

- (void)welcomeViewControllerDidChooseDisable:(id)a3
{
  v4 = a3;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v11 = "[SceneDelegate welcomeViewControllerDidChooseDisable:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Showing recovery auto-boot disable confirmation", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E83C;
  v9[3] = &unk_100028B68;
  v9[4] = self;
  v6 = [UIAlertAction actionWithTitle:@"Disable and Reboot" style:0 handler:v9];
  v7 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:&stru_100028BA8];
  v8 = [UIAlertController alertControllerWithTitle:@"Disable Recovery auto-boot and reboot to the main OS." message:0 preferredStyle:1];
  [v8 addAction:v6];
  [v8 addAction:v7];
  [v4 presentViewController:v8 animated:1 completion:&stru_100028BC8];
}

- (void)welcomeViewControllerDidChooseLanguage:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[SceneDelegate welcomeViewControllerDidChooseLanguage:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Presenting the language picker.", &v7, 0xCu);
  }

  v5 = objc_alloc_init(LanguageViewController);
  [(LanguageViewController *)v5 setDelegate:self];
  v6 = [(SceneDelegate *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

- (void)welcomeViewControllerDidChooseNeRD:(id)a3
{
  v4 = a3;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[SceneDelegate welcomeViewControllerDidChooseNeRD:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Welcome screen did choose NeRD.", &v6, 0xCu);
  }

  [(SceneDelegate *)self promptToBootToNeRDFromViewController:v4];
}

- (void)welcomeViewControllerDidContinue:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[SceneDelegate welcomeViewControllerDidContinue:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Welcome screen did continue.", &v6, 0xCu);
  }

  v5 = [(SceneDelegate *)self flowController];
  [v5 setPromptForTermsComplete:0];

  [(SceneDelegate *)self _performNextStepWithInfo:0];
}

- (void)wifiViewControllerDelegateDidChooseNetwork:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[SceneDelegate wifiViewControllerDelegateDidChooseNetwork:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: WiFi screen did choose network.", &v5, 0xCu);
  }

  [(SceneDelegate *)self _performNextStepWithInfo:0];
}

- (void)wifiViewControllerDelegateDidCancel:(id)a3
{
  v4 = a3;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[SceneDelegate wifiViewControllerDelegateDidCancel:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: WiFi screen did Cancel.", &v6, 0xCu);
  }

  [(SceneDelegate *)self promptToCancelAndRebootFromViewController:v4];
}

- (void)resetPasscodeView
{
  v2 = [(SceneDelegate *)self navigationController];
  v3 = [v2 topViewController];

  [v3 enable];
}

- (void)showCompletionViewWithError:(id)a3
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[SceneDelegate showCompletionViewWithError:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Pushing failure screen onto stack.", buf, 0xCu);
  }

  v5 = objc_alloc_init(FailureViewController);
  [(FailureViewController *)v5 setDelegate:self];
  v6 = [(SceneDelegate *)self navigationController];
  v8 = v5;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v6 setViewControllers:v7 animated:1];
}

- (void)showLockoutViewUntilDate:(id)a3
{
  v4 = a3;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[SceneDelegate showLockoutViewUntilDate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Pushing lockout screen onto stack.", &v8, 0xCu);
  }

  v6 = [[LockoutViewController alloc] initWithEndDate:v4];
  v7 = [(SceneDelegate *)self navigationController];
  [v7 pushViewController:v6 animated:1];
}

- (void)showPasscodeView
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[SceneDelegate showPasscodeView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Pushing passcode screen onto stack.", &v6, 0xCu);
  }

  v4 = objc_alloc_init(PasscodeViewController);
  [(PasscodeViewController *)v4 setDelegate:self];
  v5 = [(SceneDelegate *)self navigationController];
  [v5 pushViewController:v4 animated:1];
}

- (void)showRebootView
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[SceneDelegate showRebootView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Pushing reboot screen onto stack.", buf, 0xCu);
  }

  v4 = objc_alloc_init(RebootViewController);
  v5 = [(SceneDelegate *)self navigationController];
  v7 = v4;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v5 setViewControllers:v6 animated:1];
}

- (void)showRecoveryView
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[SceneDelegate showRecoveryView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Pushing recovery screen onto stack.", buf, 0xCu);
  }

  v4 = objc_alloc_init(RecoveryViewController);
  [(RecoveryViewController *)v4 setDelegate:self];
  v5 = [(SceneDelegate *)self navigationController];
  v7 = v4;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v5 setViewControllers:v6 animated:1];
}

- (void)showTermsView
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[SceneDelegate showTermsView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Pushing terms screen onto stack.", &v6, 0xCu);
  }

  v4 = objc_alloc_init(TermsViewController);
  [(TermsViewController *)v4 setDelegate:self];
  v5 = [(SceneDelegate *)self navigationController];
  [v5 pushViewController:v4 animated:1];
}

- (void)showUserApprovalView:(id)a3
{
  v4 = a3;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v11 = "[SceneDelegate showUserApprovalView:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Pushing user approval screen onto stack.", buf, 0xCu);
  }

  v6 = [[UserApprovalViewController alloc] initWithUserApprovalOptions:v4];
  [(UserApprovalViewController *)v6 setDelegate:self];
  v7 = [(SceneDelegate *)self navigationController];
  v9 = v6;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v7 setViewControllers:v8 animated:1];
}

- (void)showWiFiView
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[SceneDelegate showWiFiView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Pushing wifi screen onto stack.", buf, 0xCu);
  }

  v4 = [(SceneDelegate *)self navigationController];
  v5 = [(SceneDelegate *)self wifiViewController];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 setViewControllers:v6 animated:1];
}

- (void)_performNextStepWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(SceneDelegate *)self flowController];
  [v5 performNextStepWithInfo:v4];
}

- (void)promptToCancelAndRebootFromViewController:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"RESTART_ALERT_BUTTON" value:&stru_100028E90 table:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000F928;
  v14[3] = &unk_100028B68;
  v14[4] = self;
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:v14];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_100028E90 table:0];
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:&stru_100028BE8];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"CANCEL_AND_REBOOT_MESSAGE" value:&stru_100028E90 table:0];
  v13 = [UIAlertController alertControllerWithTitle:v12 message:0 preferredStyle:1];

  [v13 addAction:v7];
  [v13 addAction:v10];
  [v4 presentViewController:v13 animated:1 completion:&stru_100028C08];
}

- (void)promptToBootToNeRDFromViewController:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"RESTART_ALERT_BUTTON" value:&stru_100028E90 table:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000FBDC;
  v14[3] = &unk_100028B68;
  v14[4] = self;
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:v14];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_100028E90 table:0];
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:&stru_100028C28];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"NERD_REBOOT_MESSAGE" value:&stru_100028E90 table:0];
  v13 = [UIAlertController alertControllerWithTitle:v12 message:0 preferredStyle:1];

  [v13 addAction:v7];
  [v13 addAction:v10];
  [v4 presentViewController:v13 animated:1 completion:&stru_100028C48];
}

- (UIEdgeInsets)_additionalSafeAreaInsets
{
  v2 = 40.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end