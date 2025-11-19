@interface SUSUIRemoteEmergencyCallContainerViewController
- (SUSUIRemoteEmergencyCallContainerViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)_fireActionWithResponseIfNecessary:(BOOL)a3;
- (void)_setRootViewController:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)dismissEmergencyCallViewController:(id)a3;
- (void)emergencyCallViewController:(id)a3 didExitWithError:(id)a4;
- (void)handleLockButtonPressed;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SUSUIRemoteEmergencyCallContainerViewController

- (SUSUIRemoteEmergencyCallContainerViewController)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  v4 = [(SUSUIRemoteEmergencyCallContainerViewController *)&v6 init];
  v8 = v4;
  objc_storeStrong(&v8, v4);
  if (v4)
  {
    oslog = SUSUILogEmergencyCallUI();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000050EC(v9, v8);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Created SUSUIRemoteEmergencyCallContainerViewController: %@", v9, 0xCu);
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
  location[0] = SUSUILogEmergencyCallUI();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v13 = v16;
    sub_100001BA4(v15);
    _os_log_impl(&_mh_execute_header, log, v13, "Creating view for SUSUIRemoteEmergencyCallContainerViewController", v15, 2u);
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

  [(SUSUIRemoteEmergencyCallContainerViewController *)v18 setView:v14];
  objc_storeStrong(&v14, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v5 viewWillAppear:a3];
  oslog = SUSUILogEmergencyCallUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteEmergencyCallContainerViewController viewWillAppear:]", v3);
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
  v5.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v5 viewDidAppear:a3];
  oslog = SUSUILogEmergencyCallUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteEmergencyCallContainerViewController viewDidAppear:]", v3);
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
  v5.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v5 viewWillDisappear:a3];
  oslog = SUSUILogEmergencyCallUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteEmergencyCallContainerViewController viewWillDisappear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s:%@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  oslog = SUSUILogEmergencyCallUI();
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

    sub_100006BC8(v10, "[SUSUIRemoteEmergencyCallContainerViewController viewDidDisappear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, type, "%s:%@", v10, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v4.receiver = v9;
  v4.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v4 viewDidDisappear:v7];
  [(SUSUIRemoteEmergencyCallContainerViewController *)v9 _fireActionWithResponseIfNecessary:0];
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v2 didReceiveMemoryWarning];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10000895C;
  v9 = &unk_100018A68;
  v10 = v14;
  v11 = v12;
  [SUSUIRemoteEmergencyCallViewController requestEmergencyCallControllerWithCompletion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
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
  v7 = sub_100008C5C;
  v8 = &unk_1000185A8;
  v9[0] = v10;
  dispatch_async(queue, &v4);

  objc_storeStrong(v9, 0);
}

- (void)dismissEmergencyCallViewController:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = SUSUILogEmergencyCallUI();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v19, "[SUSUIRemoteEmergencyCallContainerViewController dismissEmergencyCallViewController:]");
    _os_log_impl(&_mh_execute_header, v16, v15, "%s", v19, 0xCu);
  }

  objc_storeStrong(&v16, 0);
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_100008F00;
  v13 = &unk_1000185A8;
  v14 = v18;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100008F68;
  v7 = &unk_1000185F8;
  v8 = v18;
  [UIView animateWithDuration:&v9 animations:&v3 completion:0.4];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)emergencyCallViewController:(id)a3 didExitWithError:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  oslog = SUSUILogEmergencyCallUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v10, "[SUSUIRemoteEmergencyCallContainerViewController emergencyCallViewController:didExitWithError:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIRemoteEmergencyCallContainerViewController *)v9 _fireActionWithResponseIfNecessary:0];
  v4 = [(SUSUIRemoteEmergencyCallContainerViewController *)v9 _remoteViewControllerProxy];
  [v4 dismiss];

  objc_storeStrong(&v7, 0);
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
    [(SUSUIRemoteEmergencyCallAlertAction *)self->_action fireCompletionIfNecessaryForResult:a3];
    objc_storeStrong(&self->_action, 0);
  }
}

- (void)_setRootViewController:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(SUSUIRemoteEmergencyCallContainerViewController *)v13 view];
  [v7 bounds];
  *&v10 = v3;
  *(&v10 + 1) = v4;
  *&v11 = v5;
  *(&v11 + 1) = v6;

  v9 = [location[0] view];
  [v9 setFrame:{v10, v11}];
  [v9 setAutoresizingMask:18];
  [location[0] willMoveToParentViewController:v13];
  v8 = [(SUSUIRemoteEmergencyCallContainerViewController *)v13 view];
  [v8 addSubview:v9];

  [(SUSUIRemoteEmergencyCallContainerViewController *)v13 addChildViewController:location[0]];
  [location[0] didMoveToParentViewController:v13];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end