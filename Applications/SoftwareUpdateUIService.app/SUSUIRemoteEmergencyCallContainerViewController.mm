@interface SUSUIRemoteEmergencyCallContainerViewController
- (SUSUIRemoteEmergencyCallContainerViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)_fireActionWithResponseIfNecessary:(BOOL)necessary;
- (void)_setRootViewController:(id)controller;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didReceiveMemoryWarning;
- (void)dismissEmergencyCallViewController:(id)controller;
- (void)emergencyCallViewController:(id)controller didExitWithError:(id)error;
- (void)handleLockButtonPressed;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  selfCopy = self;
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
  layer = [v14 layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [v14 layer];
  [layer2 setAllowsGroupOpacity:0];

  [(SUSUIRemoteEmergencyCallContainerViewController *)selfCopy setView:v14];
  objc_storeStrong(&v14, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v5 viewWillAppear:appear];
  oslog = SUSUILogEmergencyCallUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteEmergencyCallContainerViewController viewWillAppear:]", v3);
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
  v5.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v5 viewDidAppear:appear];
  oslog = SUSUILogEmergencyCallUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteEmergencyCallContainerViewController viewDidAppear:]", v3);
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
  v5.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v5 viewWillDisappear:disappear];
  oslog = SUSUILogEmergencyCallUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteEmergencyCallContainerViewController viewWillDisappear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s:%@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v8 = a2;
  disappearCopy = disappear;
  oslog = SUSUILogEmergencyCallUI();
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

    sub_100006BC8(v10, "[SUSUIRemoteEmergencyCallContainerViewController viewDidDisappear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, type, "%s:%@", v10, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v4.receiver = selfCopy;
  v4.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v4 viewDidDisappear:disappearCopy];
  [(SUSUIRemoteEmergencyCallContainerViewController *)selfCopy _fireActionWithResponseIfNecessary:0];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSUIRemoteEmergencyCallContainerViewController;
  [(SUSUIRemoteEmergencyCallContainerViewController *)&v2 didReceiveMemoryWarning];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v12 = 0;
  objc_storeStrong(&v12, completion);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10000895C;
  v9 = &unk_100018A68;
  v10 = selfCopy;
  v11 = v12;
  [SUSUIRemoteEmergencyCallViewController requestEmergencyCallControllerWithCompletion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
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
  v7 = sub_100008C5C;
  v8 = &unk_1000185A8;
  v9[0] = selfCopy;
  dispatch_async(queue, &v4);

  objc_storeStrong(v9, 0);
}

- (void)dismissEmergencyCallViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
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
  v14 = selfCopy;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100008F68;
  v7 = &unk_1000185F8;
  v8 = selfCopy;
  [UIView animateWithDuration:&v9 animations:&v3 completion:0.4];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)emergencyCallViewController:(id)controller didExitWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v7 = 0;
  objc_storeStrong(&v7, error);
  oslog = SUSUILogEmergencyCallUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v10, "[SUSUIRemoteEmergencyCallContainerViewController emergencyCallViewController:didExitWithError:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIRemoteEmergencyCallContainerViewController *)selfCopy _fireActionWithResponseIfNecessary:0];
  _remoteViewControllerProxy = [(SUSUIRemoteEmergencyCallContainerViewController *)selfCopy _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];

  objc_storeStrong(&v7, 0);
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
    [(SUSUIRemoteEmergencyCallAlertAction *)self->_action fireCompletionIfNecessaryForResult:necessary];
    objc_storeStrong(&self->_action, 0);
  }
}

- (void)_setRootViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  view = [(SUSUIRemoteEmergencyCallContainerViewController *)selfCopy view];
  [view bounds];
  *&v10 = v3;
  *(&v10 + 1) = v4;
  *&v11 = v5;
  *(&v11 + 1) = v6;

  view2 = [location[0] view];
  [view2 setFrame:{v10, v11}];
  [view2 setAutoresizingMask:18];
  [location[0] willMoveToParentViewController:selfCopy];
  view3 = [(SUSUIRemoteEmergencyCallContainerViewController *)selfCopy view];
  [view3 addSubview:view2];

  [(SUSUIRemoteEmergencyCallContainerViewController *)selfCopy addChildViewController:location[0]];
  [location[0] didMoveToParentViewController:selfCopy];
  objc_storeStrong(&view2, 0);
  objc_storeStrong(location, 0);
}

@end