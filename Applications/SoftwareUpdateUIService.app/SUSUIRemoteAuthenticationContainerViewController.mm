@interface SUSUIRemoteAuthenticationContainerViewController
- (SUSUIRemoteAuthenticationContainerViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)_fireActionWithResponseIfNecessary:(BOOL)necessary;
- (void)_setRootViewController:(id)controller;
- (void)configureWithAction:(id)action;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleLockButtonPressed;
- (void)loadView;
- (void)viewController:(id)controller wantsStatusBarHidden:(BOOL)hidden withDuration:(double)duration;
- (void)viewControllerAuthenticatedWithResult:(BOOL)result;
- (void)viewControllerWantsDismissal:(id)dismissal;
- (void)viewControllerWantsIdleTimerReset:(id)reset;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  selfCopy = self;
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
  layer = [v14 layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [v14 layer];
  [layer2 setAllowsGroupOpacity:0];

  [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy setView:v14];
  objc_storeStrong(&v14, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteAuthenticationContainerViewController;
  [(SUSUIRemoteAuthenticationContainerViewController *)&v5 viewWillAppear:appear];
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (appearCopy)
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteAuthenticationContainerViewController;
  [(SUSUIRemoteAuthenticationContainerViewController *)&v5 viewDidAppear:appear];
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (appearCopy)
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

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v7 = a2;
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteAuthenticationContainerViewController;
  [(SUSUIRemoteAuthenticationContainerViewController *)&v5 viewWillDisappear:disappear];
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (disappearCopy)
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

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v8 = a2;
  disappearCopy = disappear;
  oslog = SUSUILogAuthenticationUI();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (disappearCopy)
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
  v4.receiver = selfCopy;
  v4.super_class = SUSUIRemoteAuthenticationContainerViewController;
  [(SUSUIRemoteAuthenticationContainerViewController *)&v4 viewDidDisappear:disappearCopy];
  [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy _fireActionWithResponseIfNecessary:0];
}

- (void)configureWithAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  objc_storeStrong(&selfCopy->_action, location[0]);
  if ([(SUSUIAuthenticationAlertAction *)selfCopy->_action alertType]== 1)
  {
    v20 = [SUSUISoftwareUpdateAuthenticationViewController alloc];
    rollbackDescriptor = [(SUSUIAuthenticationAlertAction *)selfCopy->_action rollbackDescriptor];
    v3 = [(SUSUISoftwareUpdateAuthenticationViewController *)v20 initWithRollbackDescriptor:rollbackDescriptor canDeferInstallation:[(SUSUIAuthenticationAlertAction *)selfCopy->_action canDeferInstallation]];
    authVC = selfCopy->_authVC;
    selfCopy->_authVC = v3;
  }

  else
  {
    v17 = [SUSUISoftwareUpdateAuthenticationViewController alloc];
    descriptor = [(SUSUIAuthenticationAlertAction *)selfCopy->_action descriptor];
    forInstallTonight = [(SUSUIAuthenticationAlertAction *)selfCopy->_action forInstallTonight];
    autoInstallForecast = [(SUSUIAuthenticationAlertAction *)selfCopy->_action autoInstallForecast];
    v5 = [(SUSUISoftwareUpdateAuthenticationViewController *)v17 initWithDescriptor:descriptor forInstallTonight:forInstallTonight withInstallForecast:autoInstallForecast canDeferInstallation:[(SUSUIAuthenticationAlertAction *)selfCopy->_action canDeferInstallation]];
    v6 = selfCopy->_authVC;
    selfCopy->_authVC = v5;
  }

  [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy->_authVC setDelegate:selfCopy];
  [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy viewController:selfCopy->_authVC wantsStatusBarHidden:0 withDuration:0.0];
  v30 = SBSGetScreenLockStatus() != 0;
  if (v30 && ([(SUSUIAuthenticationAlertAction *)selfCopy->_action canDeferInstallation]& 1) == 0)
  {
    _remoteViewControllerProxy = [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy _remoteViewControllerProxy];
    [_remoteViewControllerProxy setDesiredHardwareButtonEvents:1];
  }

  _remoteViewControllerProxy2 = [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 setAllowsAlertItems:0];

  [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy _setRootViewController:selfCopy->_authVC];
  v29 = SUSUILogAuthenticationUI();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (([(SUSUIAuthenticationAlertAction *)selfCopy->_action forInstallTonight]& 1) != 0)
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
    autoInstallForecast2 = [(SUSUIAuthenticationAlertAction *)selfCopy->_action autoInstallForecast];
    v25 = autoInstallForecast2;
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
    descriptor2 = [(SUSUIAuthenticationAlertAction *)selfCopy->_action descriptor];
    v22 = descriptor2;
    sub_1000050EC(v33, v22);
    _os_log_impl(&_mh_execute_header, v8, v9, "configureWithContext: descriptor: %@", v33, 0xCu);

    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v13 = SUSUILogAuthenticationUI();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v5 = selfCopy;
    actions = [location[0] actions];
    v11 = actions;
    sub_100001A74(v17, v5, v11);
    _os_log_impl(&_mh_execute_header, log, type, "%@ - configure with context: %@", v17, 0x16u);

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  actions2 = [location[0] actions];
  anyObject = [actions2 anyObject];

  [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy configureWithAction:anyObject];
  if (v14)
  {
    (*(v14 + 2))();
  }

  objc_storeStrong(&anyObject, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)handleLockButtonPressed
{
  selfCopy = self;
  v9[1] = a2;
  v2 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10000A4C8;
  v8 = &unk_1000185A8;
  v9[0] = selfCopy;
  dispatch_async(queue, &v4);

  objc_storeStrong(v9, 0);
}

- (void)viewController:(id)controller wantsStatusBarHidden:(BOOL)hidden withDuration:(double)duration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  hiddenCopy = hidden;
  v10 = *&duration;
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (hiddenCopy)
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
  _remoteViewControllerProxy = [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:hiddenCopy withDuration:*&v10];

  objc_storeStrong(location, 0);
}

- (void)viewControllerAuthenticatedWithResult:(BOOL)result
{
  selfCopy = self;
  v6 = a2;
  resultCopy = result;
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (resultCopy)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_100001A74(v8, selfCopy, v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@ - Returning result to caller: %@", v8, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy _fireActionWithResponseIfNecessary:resultCopy];
}

- (void)viewControllerWantsDismissal:(id)dismissal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dismissal);
  oslog = SUSUILogAuthenticationUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v6, "[SUSUIRemoteAuthenticationContainerViewController viewControllerWantsDismissal:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy _fireActionWithResponseIfNecessary:0];
  [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy _dismiss];
  objc_storeStrong(location, 0);
}

- (void)viewControllerWantsIdleTimerReset:(id)reset
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reset);
  v16 = SUSUILogAuthenticationUI();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v19, "[SUSUIRemoteAuthenticationContainerViewController viewControllerWantsIdleTimerReset:]");
    _os_log_impl(&_mh_execute_header, v16, v15, "%s", v19, 0xCu);
  }

  objc_storeStrong(&v16, 0);
  if (selfCopy->_authVC == location[0])
  {
    v14 = ++dword_10001F900;
    _remoteViewControllerProxy = [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy _remoteViewControllerProxy];
    [_remoteViewControllerProxy setIdleTimerDisabled:1 forReason:@"reset"];

    when = dispatch_time(0, 1000000000);
    v3 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10000AB80;
    v11 = &unk_100018A90;
    v13 = v14;
    v12 = selfCopy;
    dispatch_after(when, queue, &v7);

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(location, 0);
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [(UIDevice *)v3 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_fireActionWithResponseIfNecessary:(BOOL)necessary
{
  if (self->_action)
  {
    [(SUSUIAuthenticationAlertAction *)self->_action fireCompletionIfNecessaryForResult:necessary];
    objc_storeStrong(&self->_action, 0);
  }
}

- (void)_setRootViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  view = [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy view];
  [view bounds];
  *&v10 = v3;
  *(&v10 + 1) = v4;
  *&v11 = v5;
  *(&v11 + 1) = v6;

  view2 = [location[0] view];
  [view2 setFrame:{v10, v11}];
  [view2 setAutoresizingMask:18];
  [location[0] willMoveToParentViewController:selfCopy];
  view3 = [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy view];
  [view3 addSubview:view2];

  [(SUSUIRemoteAuthenticationContainerViewController *)selfCopy addChildViewController:location[0]];
  [location[0] didMoveToParentViewController:selfCopy];
  objc_storeStrong(&view2, 0);
  objc_storeStrong(location, 0);
}

- (void)_dismiss
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = SUSUIRemoteAuthenticationContainerViewController;
  _remoteViewControllerProxy = [(SUSUIRemoteAuthenticationContainerViewController *)&v3 _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];
}

@end