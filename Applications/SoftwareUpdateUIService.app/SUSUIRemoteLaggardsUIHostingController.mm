@interface SUSUIRemoteLaggardsUIHostingController
- (SUSUIRemoteLaggardsUIHostingController)init;
- (id)laggardsUIViewControllerForAction:(id)action;
- (unint64_t)supportedInterfaceOrientations;
- (void)_configureWithAction:(id)action completion:(id)completion;
- (void)_fireActionWithResponseIfNecessary:(BOOL)necessary;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didReceiveMemoryWarning;
- (void)handleCancelButtonTapped:(id)tapped;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  selfCopy = self;
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
  layer = [v12 layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [v12 layer];
  [layer2 setAllowsGroupOpacity:0];

  [(SUSUIRemoteLaggardsUIHostingController *)selfCopy setView:v12];
  objc_storeStrong(&v12, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v5 viewWillAppear:appear];
  oslog = SUSUILogLaggardsUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteLaggardsUIHostingController viewWillAppear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v5 viewDidAppear:appear];
  oslog = SUSUILogLaggardsUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteLaggardsUIHostingController viewDidAppear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v7 = a2;
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v5 viewWillDisappear:disappear];
  oslog = SUSUILogLaggardsUI();
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

    sub_100006BC8(v9, "[SUSUIRemoteLaggardsUIHostingController viewWillDisappear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v8 = a2;
  disappearCopy = disappear;
  oslog = SUSUILogLaggardsUI();
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

    sub_100006BC8(v10, "[SUSUIRemoteLaggardsUIHostingController viewDidDisappear:]", v3);
    _os_log_impl(&_mh_execute_header, oslog, type, "%s: %@", v10, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v4.receiver = selfCopy;
  v4.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v4 viewDidDisappear:disappearCopy];
  [(SUSUIRemoteLaggardsUIHostingController *)selfCopy _fireActionWithResponseIfNecessary:0];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSUIRemoteLaggardsUIHostingController;
  [(SUSUIRemoteLaggardsUIHostingController *)&v2 didReceiveMemoryWarning];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v13 = SUSUILogLaggardsUI();
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

  [(SUSUIRemoteLaggardsUIHostingController *)selfCopy _configureWithAction:anyObject completion:v14];
  objc_storeStrong(&anyObject, 0);
  objc_storeStrong(&v14, 0);
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

- (id)laggardsUIViewControllerForAction:(id)action
{
  selfCopy = self;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, action);
  oslog = SUSUILogLaggardsUI();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000063DC(v8, "[SUSUIRemoteLaggardsUIHostingController laggardsUIViewControllerForAction:]");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Should implement this method in each inheriting class.", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(SUSUIRemoteLaggardsUIHostingController *)selfCopy doesNotRecognizeSelector:v6];
  objc_storeStrong(&location, 0);
  return 0;
}

- (void)_configureWithAction:(id)action completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  v26 = SUSUILogLaggardsUI();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006BC8(v30, "[SUSUIRemoteLaggardsUIHostingController _configureWithAction:completion:]", location[0]);
    _os_log_impl(&_mh_execute_header, v26, v25, "%s: configuring with action - %@", v30, 0x16u);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&selfCopy->_action, location[0]);
  if ([(SUSUIRemoteLaggardsUIHostingController *)selfCopy useNavigationController])
  {
    v4 = [(SUSUIRemoteLaggardsUIHostingController *)selfCopy laggardsUIViewControllerForAction:location[0]];
    rootViewController = selfCopy->_rootViewController;
    selfCopy->_rootViewController = v4;

    v6 = [OBNavigationController alloc];
    v7 = [v6 initWithRootViewController:selfCopy->_rootViewController];
    presentingViewController = selfCopy->_presentingViewController;
    selfCopy->_presentingViewController = v7;

    if ([(SUSUIRemoteLaggardsUIHostingController *)selfCopy allowCancel])
    {
      v9 = [UIBarButtonItem alloc];
      v24 = [v9 initWithBarButtonSystemItem:1 target:selfCopy action:"handleCancelButtonTapped:"];
      navigationBar = [(UIViewController *)selfCopy->_presentingViewController navigationBar];
      topItem = [navigationBar topItem];
      [topItem setRightBarButtonItem:v24];

      objc_storeStrong(&v24, 0);
    }
  }

  else
  {
    v10 = [(SUSUIRemoteLaggardsUIHostingController *)selfCopy laggardsUIViewControllerForAction:location[0]];
    v11 = selfCopy->_presentingViewController;
    selfCopy->_presentingViewController = v10;

    objc_storeStrong(&selfCopy->_rootViewController, selfCopy->_presentingViewController);
  }

  if (![(SUSUIRemoteLaggardsUIHostingController *)selfCopy enableSwipeToCancel])
  {
    [(UIViewController *)selfCopy->_presentingViewController setModalInPresentation:1];
  }

  presentationController = [(UIViewController *)selfCopy->_presentingViewController presentationController];
  [(UIPresentationController *)presentationController setDelegate:selfCopy];

  v14 = selfCopy;
  v13 = selfCopy->_presentingViewController;
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

- (void)_fireActionWithResponseIfNecessary:(BOOL)necessary
{
  if (self->_action)
  {
    objc_storeStrong(&self->_action, 0);
  }
}

- (void)handleCancelButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000C31C;
  v12[3] = &unk_1000185A8;
  v13 = selfCopy;
  v14 = objc_retainBlock(v12);
  v11 = selfCopy->_rootViewController;
  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = v11;
    v3 = selfCopy;
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

- (void)presentationControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dismiss);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10000C84C;
  v9 = &unk_1000185A8;
  v10 = selfCopy;
  dispatch_async(queue, &v5);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end