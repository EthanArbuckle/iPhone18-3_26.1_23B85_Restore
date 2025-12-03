@interface STRemoteServiceViewController
+ (void)dismissPinController;
- (BOOL)validatePIN:(id)n forPINController:(id)controller;
- (STRemoteServiceViewController)init;
- (void)_dismissPINControllerWithCompletionHandler:(id)handler;
- (void)_provideAuthenticationResultToClient:(id)client;
- (void)_providePINToClient:(id)client;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)devicePINControllerDidDismissPINPane:(id)pane;
- (void)didAcceptEnteredPIN;
- (void)didCancelEnteringPIN;
- (void)setPIN:(id)n forPINController:(id)controller;
- (void)showRestrictionsPINControllerWithMode:(int64_t)mode;
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
  _remoteViewControllerProxy = [qword_10000CEC8 _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];

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
  _remoteViewControllerProxy = [(STRemoteServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStyleOverridesToCancel:-1048577 animationSettings:0];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  userInfo = [contextCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"STRemoteServiceUserInfoContextData"];

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

  userInfo2 = [contextCopy userInfo];
  v13 = [userInfo2 objectForKeyedSubscript:STRemoteAlertConfigurationContextKeyPasscodeMode];

  if (v13)
  {
    integerValue = [v13 integerValue];
    selfCopy2 = self;
  }

  else
  {
    v16 = +[STLog remoteViewService];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Defaulting remote view service to auth mode.", v25, 2u);
    }

    selfCopy2 = self;
    integerValue = 0;
  }

  [(STRemoteServiceViewController *)selfCopy2 setPasscodeMode:integerValue];
  xpcEndpoint = [contextCopy xpcEndpoint];

  if (xpcEndpoint)
  {
    v18 = objc_opt_new();
    xpcEndpoint2 = [contextCopy xpcEndpoint];
    [v18 _setEndpoint:xpcEndpoint2];

    v20 = [[NSXPCConnection alloc] initWithListenerEndpoint:v18];
    passcodeMode = [(STRemoteServiceViewController *)self passcodeMode];
    if (passcodeMode)
    {
      if (passcodeMode != 1)
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
  _remoteViewControllerProxy = [(STRemoteServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)showRestrictionsPINControllerWithMode:(int64_t)mode
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
  if (mode == 1)
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

  if (!mode)
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
  presentedViewController = [(STRemoteServiceViewController *)self presentedViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002020;
  v4[3] = &unk_1000082E8;
  v4[4] = self;
  [presentedViewController dismissViewControllerAnimated:+[STRestrictionsPINNavigationController st_shouldAnimate](STRestrictionsPINNavigationController completion:{"st_shouldAnimate"), v4}];
}

- (void)didCancelEnteringPIN
{
  [(STRemoteServiceViewController *)self _dismissPINControllerWithCompletionHandler:0];
  [(STRemoteServiceViewController *)self _providePINToClient:0];

  [(STRemoteServiceViewController *)self _provideAuthenticationResultToClient:0];
}

- (void)_dismissPINControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  presentedViewController = [(STRemoteServiceViewController *)self presentedViewController];
  v6 = +[STRestrictionsPINNavigationController st_shouldAnimate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002180;
  v8[3] = &unk_100008310;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [presentedViewController dismissViewControllerAnimated:v6 completion:v8];
}

- (void)devicePINControllerDidDismissPINPane:(id)pane
{
  -[STRemoteServiceViewController _restrictionsPINControllerDidDismiss:](self, "_restrictionsPINControllerDidDismiss:", [pane success]);
  [(STRemoteServiceViewController *)self _providePINToClient:0];

  [(STRemoteServiceViewController *)self _provideAuthenticationResultToClient:0];
}

- (void)_providePINToClient:(id)client
{
  clientCopy = client;
  if ([(STRemoteServiceViewController *)self passcodeMode])
  {
    clientConnection = [(STRemoteServiceViewController *)self clientConnection];

    if (clientConnection)
    {
      if (clientCopy)
      {
        v6 = [[STOpaquePasscode alloc] initWithPasscode:clientCopy];
      }

      else
      {
        v6 = 0;
      }

      clientConnection2 = [(STRemoteServiceViewController *)self clientConnection];
      v8 = [clientConnection2 synchronousRemoteObjectProxyWithErrorHandler:&stru_100008350];

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100002510;
      v10[3] = &unk_100008378;
      v10[4] = self;
      [v8 receivePasscode:v6 completionHandler:v10];
      clientConnection3 = [(STRemoteServiceViewController *)self clientConnection];
      [clientConnection3 invalidate];

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

- (void)_provideAuthenticationResultToClient:(id)client
{
  clientCopy = client;
  if ([(STRemoteServiceViewController *)self passcodeMode]!= 1)
  {
    if (clientCopy)
    {
      v4 = [[STAuthenticationResult alloc] initWithResult:{objc_msgSend(clientCopy, "BOOLValue")}];
    }

    else
    {
      v4 = 0;
    }

    clientConnection = [(STRemoteServiceViewController *)self clientConnection];
    v6 = [clientConnection synchronousRemoteObjectProxyWithErrorHandler:&stru_100008398];

    [v6 receivePasscodeAuthenticationResult:v4 completionHandler:&stru_1000083B8];
  }
}

- (BOOL)validatePIN:(id)n forPINController:(id)controller
{
  controller = [SFRestrictionsPasscodeController validatePIN:n, controller];
  v6 = +[STLog remoteViewService];
  v7 = v6;
  if (controller)
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

  return controller;
}

- (void)setPIN:(id)n forPINController:(id)controller
{
  nCopy = n;
  v6 = +[STLog remoteViewService];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User did set pin - making call to client", v7, 2u);
  }

  [(STRemoteServiceViewController *)self _providePINToClient:nCopy];
}

@end