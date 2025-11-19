@interface SUSUIRemoteAuthenticationContainerViewController
- (SUSUIRemoteAuthenticationContainerViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)_fireActionWithResponseIfNecessary:(BOOL)a3;
- (void)_setRootViewController:(id)a3;
- (void)configureWithAction:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleLockButtonPressed;
- (void)loadView;
- (void)viewController:(id)a3 wantsStatusBarHidden:(BOOL)a4 withDuration:(double)a5;
- (void)viewControllerAuthenticatedWithResult:(BOOL)a3;
- (void)viewControllerWantsDismissal:(id)a3;
- (void)viewControllerWantsIdleTimerReset:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SUSUIRemoteAuthenticationContainerViewController

- (SUSUIRemoteAuthenticationContainerViewController)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = SUSUIRemoteAuthenticationContainerViewController;
  v4 = [(SUSUIRemoteAuthenticationContainerViewController *)&v6 init];
  v8 = v4;
  objc_storeStrong(&v8, v4);
  if (v4)
  {
    oslog = SUSUILogAuthenticationUI();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000050EC(v9, v8);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Created SUSUIRemoteViewControllerContainerViewController: %@", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v3 = v8;
  objc_storeStrong(&v8, 0);
  return v3;
}

- (void)loadView
{
  v18 = self;
  location[1] = a2;
  location[0] = SUSUILogAuthenticationUI();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v13 = v16;
    sub_100001BA4(v15);
    _os_log_impl(&_mh_execute_header, log, v13, "Creating view for SUSUIRemoteViewControllerContainerViewController", v15, 2u);
  }

  objc_storeStrong(location, 0);
  v6 = [UIView alloc];
  v7 = +[UIScreen mainScreen];
  [(UIScreen *)v7 bounds];
  v14 = [v6 initWithFrame:{v2, v3, v4, v5}];

  v8 = v14;
  v9 = +[UIColor clearColor];
  [v8 setBackgroundColor:?];

  [v14 setAutoresizingMask:18];
  [v14 setOpaque:0];
  v10 = [v14 layer];
  [v10 setAllowsGroupBlending:0];

  v11 = [v14 layer];
  [v11 setAllowsGroupOpacity:0];

  [(SUSUIRemoteAuthenticationContainerViewController *)v18 setView:v14];
  objc_storeStrong(&v14, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteAuthenticationContainerViewController;
  [(SUSUIRemoteAuthenticationContainerViewController *)&v5 viewWillAppear:a3];
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_100006BC8(v9, "[SUSUIRemoteAuthenticationContainerViewController viewWillAppear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s:%@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteAuthenticationContainerViewController;
  [(SUSUIRemoteAuthenticationContainerViewController *)&v5 viewDidAppear:a3];
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_100006BC8(v9, "[SUSUIRemoteAuthenticationContainerViewController viewDidAppear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s:%@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteAuthenticationContainerViewController;
  [(SUSUIRemoteAuthenticationContainerViewController *)&v5 viewWillDisappear:a3];
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_100006BC8(v9, "[SUSUIRemoteAuthenticationContainerViewController viewWillDisappear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s:%@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  oslog = SUSUILogAuthenticationUI();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_100006BC8(v10, "[SUSUIRemoteAuthenticationContainerViewController viewDidDisappear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, type, "%s:%@", v10, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v4.receiver = v9;
  v4.super_class = SUSUIRemoteAuthenticationContainerViewController;
  [(SUSUIRemoteAuthenticationContainerViewController *)&v4 viewDidDisappear:v7];
  [(SUSUIRemoteAuthenticationContainerViewController *)v9 _fireActionWithResponseIfNecessary:0];
}

- (void)configureWithAction:(id)a3
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v32->_action, location[0]);
  if ([(SUSUIAuthenticationAlertAction *)v32->_action alertType]== 1)
  {
    v20 = [SUSUISoftwareUpdateAuthenticationViewController alloc];
    v21 = [(SUSUIAuthenticationAlertAction *)v32->_action rollbackDescriptor];
    v3 = [(SUSUISoftwareUpdateAuthenticationViewController *)v20 initWithRollbackDescriptor:v21 canDeferInstallation:[(SUSUIAuthenticationAlertAction *)v32->_action canDeferInstallation]];
    authVC = v32->_authVC;
    v32->_authVC = v3;
  }

  else
  {
    v17 = [SUSUISoftwareUpdateAuthenticationViewController alloc];
    v19 = [(SUSUIAuthenticationAlertAction *)v32->_action descriptor];
    v16 = [(SUSUIAuthenticationAlertAction *)v32->_action forInstallTonight];
    v18 = [(SUSUIAuthenticationAlertAction *)v32->_action autoInstallForecast];
    v5 = [(SUSUISoftwareUpdateAuthenticationViewController *)v17 initWithDescriptor:v19 forInstallTonight:v16 withInstallForecast:v18 canDeferInstallation:[(SUSUIAuthenticationAlertAction *)v32->_action canDeferInstallation]];
    v6 = v32->_authVC;
    v32->_authVC = v5;
  }

  [(SUSUISoftwareUpdateAuthenticationViewController *)v32->_authVC setDelegate:v32];
  [(SUSUIRemoteAuthenticationContainerViewController *)v32 viewController:v32->_authVC wantsStatusBarHidden:0 withDuration:0.0];
  v30 = SBSGetScreenLockStatus() != 0;
  if (v30 && ([(SUSUIAuthenticationAlertAction *)v32->_action canDeferInstallation]& 1) == 0)
  {
    v15 = [(SUSUIRemoteAuthenticationContainerViewController *)v32 _remoteViewControllerProxy];
    [v15 setDesiredHardwareButtonEvents:1];
  }

  v14 = [(SUSUIRemoteAuthenticationContainerViewController *)v32 _remoteViewControllerProxy];
  [v14 setAllowsAlertItems:0];

  [(SUSUIRemoteAuthenticationContainerViewController *)v32 _setRootViewController:v32->_authVC];
  v29 = SUSUILogAuthenticationUI();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (([(SUSUIAuthenticationAlertAction *)v32->_action forInstallTonight]& 1) != 0)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    sub_1000050EC(v35, v7);
    _os_log_impl(&_mh_execute_header, v29, v28, "configureWithContext: forInstallTonight: %@", v35, 0xCu);
  }

  objc_storeStrong(&v29, 0);
  v27 = SUSUILogAuthenticationUI();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v27;
    v12 = v26;
    v13 = [(SUSUIAuthenticationAlertAction *)v32->_action autoInstallForecast];
    v25 = v13;
    sub_1000050EC(v34, v25);
    _os_log_impl(&_mh_execute_header, v11, v12, "configureWithContext: autoInstallForecast: %@", v34, 0xCu);

    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&v27, 0);
  v24 = SUSUILogAuthenticationUI();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v24;
    v9 = v23;
    v10 = [(SUSUIAuthenticationAlertAction *)v32->_action descriptor];
    v22 = v10;
    sub_1000050EC(v33, v22);
    _os_log_impl(&_mh_execute_header, v8, v9, "configureWithContext: descriptor: %@", v33, 0xCu);

    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = SUSUILogAuthenticationUI();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v5 = v16;
    v8 = [location[0] actions];
    v11 = v8;
    sub_100001A74(v17, v5, v11);
    _os_log_impl(&_mh_execute_header, log, type, "%@ - configure with context: %@", v17, 0x16u);

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  v4 = [location[0] actions];
  v10 = [v4 anyObject];

  [(SUSUIRemoteAuthenticationContainerViewController *)v16 configureWithAction:v10];
  if (v14)
  {
    (*(v14 + 2))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)handleLockButtonPressed
{
  v10 = self;
  v9[1] = a2;
  v2 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10000A4C8;
  v8 = &unk_1000185A8;
  v9[0] = v10;
  dispatch_async(queue, &v4);

  objc_storeStrong(v9, 0);
}

- (void)viewController:(id)a3 wantsStatusBarHidden:(BOOL)a4 withDuration:(double)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  v10 = *&a5;
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    sub_10000A694(v14, "[SUSUIRemoteAuthenticationContainerViewController viewController:wantsStatusBarHidden:withDuration:]", v5, v10);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: hidden=%@, duration=%f", v14, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [(SUSUIRemoteAuthenticationContainerViewController *)v13 _remoteViewControllerProxy];
  [v6 setStatusBarHidden:v11 withDuration:*&v10];

  objc_storeStrong(location, 0);
}

- (void)viewControllerAuthenticatedWithResult:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_100001A74(v8, v7, v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@ - Returning result to caller: %@", v8, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIRemoteAuthenticationContainerViewController *)v7 _fireActionWithResponseIfNecessary:v5];
}

- (void)viewControllerWantsDismissal:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v6, "[SUSUIRemoteAuthenticationContainerViewController viewControllerWantsDismissal:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIRemoteAuthenticationContainerViewController *)v5 _fireActionWithResponseIfNecessary:0];
  [(SUSUIRemoteAuthenticationContainerViewController *)v5 _dismiss];
  objc_storeStrong(location, 0);
}

- (void)viewControllerWantsIdleTimerReset:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = SUSUILogAuthenticationUI();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v19, "[SUSUIRemoteAuthenticationContainerViewController viewControllerWantsIdleTimerReset:]");
    _os_log_impl(&_mh_execute_header, v16, v15, "%s", v19, 0xCu);
  }

  objc_storeStrong(&v16, 0);
  if (v18->_authVC == location[0])
  {
    v14 = ++dword_10001F900;
    v4 = [(SUSUIRemoteAuthenticationContainerViewController *)v18 _remoteViewControllerProxy];
    [v4 setIdleTimerDisabled:1 forReason:@"reset"];

    when = dispatch_time(0, 1000000000);
    v3 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10000AB80;
    v11 = &unk_100018A90;
    v13 = v14;
    v12 = v18;
    dispatch_after(when, queue, &v7);

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(location, 0);
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = +[UIDevice currentDevice];
  v4 = [(UIDevice *)v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_fireActionWithResponseIfNecessary:(BOOL)a3
{
  if (self->_action)
  {
    [(SUSUIAuthenticationAlertAction *)self->_action fireCompletionIfNecessaryForResult:a3];
    objc_storeStrong(&self->_action, 0);
  }
}

- (void)_setRootViewController:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(SUSUIRemoteAuthenticationContainerViewController *)v13 view];
  [v7 bounds];
  *&v10 = v3;
  *(&v10 + 1) = v4;
  *&v11 = v5;
  *(&v11 + 1) = v6;

  v9 = [location[0] view];
  [v9 setFrame:{v10, v11}];
  [v9 setAutoresizingMask:18];
  [location[0] willMoveToParentViewController:v13];
  v8 = [(SUSUIRemoteAuthenticationContainerViewController *)v13 view];
  [v8 addSubview:v9];

  [(SUSUIRemoteAuthenticationContainerViewController *)v13 addChildViewController:location[0]];
  [location[0] didMoveToParentViewController:v13];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_dismiss
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = SUSUIRemoteAuthenticationContainerViewController;
  v2 = [(SUSUIRemoteAuthenticationContainerViewController *)&v3 _remoteViewControllerProxy];
  [v2 dismiss];
}

@end