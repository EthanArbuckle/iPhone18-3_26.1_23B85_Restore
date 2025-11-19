@interface STRemoteServiceViewController
+ (void)dismissPinController;
- (BOOL)validatePIN:(id)a3 forPINController:(id)a4;
- (STRemoteServiceViewController)init;
- (void)_dismissPINControllerWithCompletionHandler:(id)a3;
- (void)_provideAuthenticationResultToClient:(id)a3;
- (void)_providePINToClient:(id)a3;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)devicePINControllerDidDismissPINPane:(id)a3;
- (void)didAcceptEnteredPIN;
- (void)didCancelEnteringPIN;
- (void)setPIN:(id)a3 forPINController:(id)a4;
- (void)showRestrictionsPINControllerWithMode:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation STRemoteServiceViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = STRemoteServiceViewController;
  [(STRemoteServiceViewController *)&v3 viewDidLoad];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "STUI:: STRemoteServiceViewController.viewDidLoad", v2, 2u);
  }
}

+ (void)dismissPinController
{
  v2 = [qword_10000CEC8 _remoteViewControllerProxy];
  [v2 dismiss];

  v3 = qword_10000CEC8;
  qword_10000CEC8 = 0;
}

- (STRemoteServiceViewController)init
{
  v4.receiver = self;
  v4.super_class = STRemoteServiceViewController;
  v2 = [(STRemoteServiceViewController *)&v4 init];
  if (v2)
  {
    [objc_opt_class() dismissPinController];
    objc_storeStrong(&qword_10000CEC8, v2);
  }

  return v2;
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = STRemoteServiceViewController;
  [(STRemoteServiceViewController *)&v4 _willAppearInRemoteViewController];
  v3 = [(STRemoteServiceViewController *)self _remoteViewControllerProxy];
  [v3 setStyleOverridesToCancel:-1048577 animationSettings:0];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"STRemoteServiceUserInfoContextData"];

  if (v9)
  {
    v10 = [STLockoutAppContext contextWithData:v9];
  }

  else
  {
    v10 = 0;
  }

  appContext = self->_appContext;
  self->_appContext = v10;

  v12 = [v6 userInfo];
  v13 = [v12 objectForKeyedSubscript:STRemoteAlertConfigurationContextKeyPasscodeMode];

  if (v13)
  {
    v14 = [v13 integerValue];
    v15 = self;
  }

  else
  {
    v16 = +[STLog remoteViewService];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Defaulting remote view service to auth mode.", v25, 2u);
    }

    v15 = self;
    v14 = 0;
  }

  [(STRemoteServiceViewController *)v15 setPasscodeMode:v14];
  v17 = [v6 xpcEndpoint];

  if (v17)
  {
    v18 = objc_opt_new();
    v19 = [v6 xpcEndpoint];
    [v18 _setEndpoint:v19];

    v20 = [[NSXPCConnection alloc] initWithListenerEndpoint:v18];
    v21 = [(STRemoteServiceViewController *)self passcodeMode];
    if (v21)
    {
      if (v21 != 1)
      {
LABEL_15:
        [v20 resume];
        [(STRemoteServiceViewController *)self setClientConnection:v20];

        goto LABEL_16;
      }

      v22 = &protocolRef_STPasscodeReceiverInterface;
    }

    else
    {
      v22 = &protocolRef_STPasscodeAuthenticationResultReceiverInterface;
    }

    v23 = [NSXPCInterface interfaceWithProtocol:*v22];
    [v20 setRemoteObjectInterface:v23];

    goto LABEL_15;
  }

LABEL_16:
  v24 = [(STRemoteServiceViewController *)self _remoteViewControllerProxy];
  [v24 setDesiredHardwareButtonEvents:16];

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)showRestrictionsPINControllerWithMode:(int64_t)a3
{
  if ((byte_10000CED0 & 1) == 0)
  {
    v5 = +[UIColor labelColor];
    v6 = +[PSListController appearance];
    [v6 setTextColor:v5];

    byte_10000CED0 = 1;
  }

  v7 = objc_opt_new();
  [v7 setPinDelegate:self];
  if (a3 == 1)
  {
    v8 = +[STLog remoteViewService];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Showing restrictions controller in Set mode", v11, 2u);
    }

    v9 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
    v8 = +[STLog remoteViewService];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Showing restrictions controller in Auth mode", buf, 2u);
    }

    v9 = 3;
LABEL_11:

    [v7 setMode:v9];
  }

  v10 = [[STRestrictionsPINNavigationController alloc] initWithRootViewController:v7];
  NSLog(@"presenting restrictions PIN controller");
  [(STRemoteServiceViewController *)self presentViewController:v10 animated:+[STRestrictionsPINNavigationController completion:"st_shouldAnimate"], &stru_1000082C0];
}

- (void)didAcceptEnteredPIN
{
  v3 = [(STRemoteServiceViewController *)self presentedViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002020;
  v4[3] = &unk_1000082E8;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:+[STRestrictionsPINNavigationController st_shouldAnimate](STRestrictionsPINNavigationController completion:{"st_shouldAnimate"), v4}];
}

- (void)didCancelEnteringPIN
{
  [(STRemoteServiceViewController *)self _dismissPINControllerWithCompletionHandler:0];
  [(STRemoteServiceViewController *)self _providePINToClient:0];

  [(STRemoteServiceViewController *)self _provideAuthenticationResultToClient:0];
}

- (void)_dismissPINControllerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STRemoteServiceViewController *)self presentedViewController];
  v6 = +[STRestrictionsPINNavigationController st_shouldAnimate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002180;
  v8[3] = &unk_100008310;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 dismissViewControllerAnimated:v6 completion:v8];
}

- (void)devicePINControllerDidDismissPINPane:(id)a3
{
  -[STRemoteServiceViewController _restrictionsPINControllerDidDismiss:](self, "_restrictionsPINControllerDidDismiss:", [a3 success]);
  [(STRemoteServiceViewController *)self _providePINToClient:0];

  [(STRemoteServiceViewController *)self _provideAuthenticationResultToClient:0];
}

- (void)_providePINToClient:(id)a3
{
  v4 = a3;
  if ([(STRemoteServiceViewController *)self passcodeMode])
  {
    v5 = [(STRemoteServiceViewController *)self clientConnection];

    if (v5)
    {
      if (v4)
      {
        v6 = [[STOpaquePasscode alloc] initWithPasscode:v4];
      }

      else
      {
        v6 = 0;
      }

      v7 = [(STRemoteServiceViewController *)self clientConnection];
      v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&stru_100008350];

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100002510;
      v10[3] = &unk_100008378;
      v10[4] = self;
      [v8 receivePasscode:v6 completionHandler:v10];
      v9 = [(STRemoteServiceViewController *)self clientConnection];
      [v9 invalidate];

      [(STRemoteServiceViewController *)self setClientConnection:0];
    }

    else
    {
      v6 = +[STLog remoteViewService];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100003068();
      }
    }
  }
}

- (void)_provideAuthenticationResultToClient:(id)a3
{
  v7 = a3;
  if ([(STRemoteServiceViewController *)self passcodeMode]!= 1)
  {
    if (v7)
    {
      v4 = [[STAuthenticationResult alloc] initWithResult:{objc_msgSend(v7, "BOOLValue")}];
    }

    else
    {
      v4 = 0;
    }

    v5 = [(STRemoteServiceViewController *)self clientConnection];
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100008398];

    [v6 receivePasscodeAuthenticationResult:v4 completionHandler:&stru_1000083B8];
  }
}

- (BOOL)validatePIN:(id)a3 forPINController:(id)a4
{
  v5 = [SFRestrictionsPasscodeController validatePIN:a3, a4];
  v6 = +[STLog remoteViewService];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User did successfully authenticate pin - making call to client", v9, 2u);
    }

    v7 = [NSNumber numberWithBool:1];
    [(STRemoteServiceViewController *)self _provideAuthenticationResultToClient:v7];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10000322C(v7);
  }

  return v5;
}

- (void)setPIN:(id)a3 forPINController:(id)a4
{
  v5 = a3;
  v6 = +[STLog remoteViewService];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User did set pin - making call to client", v7, 2u);
  }

  [(STRemoteServiceViewController *)self _providePINToClient:v5];
}

@end