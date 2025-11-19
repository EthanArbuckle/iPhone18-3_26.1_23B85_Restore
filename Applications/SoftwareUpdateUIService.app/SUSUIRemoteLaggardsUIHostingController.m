@interface SUSUIRemoteLaggardsUIHostingController
- (SUSUIRemoteLaggardsUIHostingController)init;
- (id)laggardsUIViewControllerForAction:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_configureWithAction:(id)a3 completion:(id)a4;
- (void)_fireActionWithResponseIfNecessary:(BOOL)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)handleCancelButtonTapped:(id)a3;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SUSUIRemoteLaggardsUIHostingController

- (SUSUIRemoteLaggardsUIHostingController)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = SUSUIRemoteLaggardsUIHostingController;
  v4 = [(SUSUIRemoteLaggardsUIHostingController *)&v6 init];
  v8 = v4;
  objc_storeStrong(&v8, v4);
  if (v4)
  {
    oslog = SUSUILogLaggardsUI();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000050EC(v9, v8);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Created SUSUIRemoteLaggardsUIHostingController: %@", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v3 = v8;
  objc_storeStrong(&v8, 0);
  return v3;
}

- (void)loadView
{
  v15 = self;
  location[1] = a2;
  location[0] = SUSUILogLaggardsUI();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v16, "[SUSUIRemoteLaggardsUIHostingController loadView]");
    _os_log_impl(&_mh_execute_header, location[0], v13, "%s: Creating view for SUSUIRemoteLaggardsUIHostingController", v16, 0xCu);
  }

  objc_storeStrong(location, 0);
  v6 = [UIView alloc];
  v7 = +[UIScreen mainScreen];
  [(UIScreen *)v7 bounds];
  v12 = [v6 initWithFrame:{v2, v3, v4, v5}];

  v8 = v12;
  v9 = +[UIColor clearColor];
  [v8 setBackgroundColor:?];

  [v12 setAutoresizingMask:18];
  [v12 setOpaque:0];
  v10 = [v12 layer];
  [v10 setAllowsGroupBlending:0];

  v11 = [v12 layer];
  [v11 setAllowsGroupOpacity:0];

  [(SUSUIRemoteLaggardsUIHostingController *)v15 setView:v12];
  objc_storeStrong(&v12, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v5 viewWillAppear:a3];
  oslog = SUSUILogLaggardsUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteLaggardsUIHostingController viewWillAppear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v5 viewDidAppear:a3];
  oslog = SUSUILogLaggardsUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteLaggardsUIHostingController viewDidAppear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v5 viewWillDisappear:a3];
  oslog = SUSUILogLaggardsUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteLaggardsUIHostingController viewWillDisappear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  oslog = SUSUILogLaggardsUI();
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

    sub_100006BC8(v10, "[SUSUIRemoteLaggardsUIHostingController viewDidDisappear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, type, "%s: %@", v10, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v4.receiver = v9;
  v4.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v4 viewDidDisappear:v7];
  [(SUSUIRemoteLaggardsUIHostingController *)v9 _fireActionWithResponseIfNecessary:0];
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v2 didReceiveMemoryWarning];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = SUSUILogLaggardsUI();
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

  [(SUSUIRemoteLaggardsUIHostingController *)v16 _configureWithAction:v10 completion:v14];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v14, 0);
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

- (id)laggardsUIViewControllerForAction:(id)a3
{
  v7 = self;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog = SUSUILogLaggardsUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v8, "[SUSUIRemoteLaggardsUIHostingController laggardsUIViewControllerForAction:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Should implement this method in each inheriting class.", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIRemoteLaggardsUIHostingController *)v7 doesNotRecognizeSelector:v6];
  objc_storeStrong(&location, 0);
  return 0;
}

- (void)_configureWithAction:(id)a3 completion:(id)a4
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = SUSUILogLaggardsUI();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006BC8(v30, "[SUSUIRemoteLaggardsUIHostingController _configureWithAction:completion:]", location[0]);
    _os_log_impl(&_mh_execute_header, v26, v25, "%s: configuring with action - %@", v30, 0x16u);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v29->_action, location[0]);
  if ([(SUSUIRemoteLaggardsUIHostingController *)v29 useNavigationController])
  {
    v4 = [(SUSUIRemoteLaggardsUIHostingController *)v29 laggardsUIViewControllerForAction:location[0]];
    rootViewController = v29->_rootViewController;
    v29->_rootViewController = v4;

    v6 = [OBNavigationController alloc];
    v7 = [v6 initWithRootViewController:v29->_rootViewController];
    presentingViewController = v29->_presentingViewController;
    v29->_presentingViewController = v7;

    if ([(SUSUIRemoteLaggardsUIHostingController *)v29 allowCancel])
    {
      v9 = [UIBarButtonItem alloc];
      v24 = [v9 initWithBarButtonSystemItem:1 target:v29 action:"handleCancelButtonTapped:"];
      v16 = [(UIViewController *)v29->_presentingViewController navigationBar];
      v15 = [v16 topItem];
      [v15 setRightBarButtonItem:v24];

      objc_storeStrong(&v24, 0);
    }
  }

  else
  {
    v10 = [(SUSUIRemoteLaggardsUIHostingController *)v29 laggardsUIViewControllerForAction:location[0]];
    v11 = v29->_presentingViewController;
    v29->_presentingViewController = v10;

    objc_storeStrong(&v29->_rootViewController, v29->_presentingViewController);
  }

  if (![(SUSUIRemoteLaggardsUIHostingController *)v29 enableSwipeToCancel])
  {
    [(UIViewController *)v29->_presentingViewController setModalInPresentation:1];
  }

  v12 = [(UIViewController *)v29->_presentingViewController presentationController];
  [(UIPresentationController *)v12 setDelegate:v29];

  v14 = v29;
  v13 = v29->_presentingViewController;
  v18 = _NSConcreteStackBlock;
  v19 = -1073741824;
  v20 = 0;
  v21 = sub_10000C084;
  v22 = &unk_100018AB8;
  v23 = v27;
  [(SUSUIRemoteLaggardsUIHostingController *)v14 presentViewController:v13 animated:1 completion:&v18];
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_fireActionWithResponseIfNecessary:(BOOL)a3
{
  if (self->_action)
  {
    objc_storeStrong(&self->_action, 0);
  }
}

- (void)handleCancelButtonTapped:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000C31C;
  v12[3] = &unk_1000185A8;
  v13 = v16;
  v14 = objc_retainBlock(v12);
  v11 = v16->_rootViewController;
  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = v11;
    v3 = v16;
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_10000C614;
    v9 = &unk_100018AE0;
    v10 = v14;
    [v4 remoteLaggardsUIHostingControllerWillCancelOperation:v3 withCompletionBlock:&v5];
    objc_storeStrong(&v10, 0);
  }

  else
  {
    (*(v14 + 2))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10000C84C;
  v9 = &unk_1000185A8;
  v10 = v12;
  dispatch_async(queue, &v5);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end