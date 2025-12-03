@interface WFRemoteAlertViewController
- (WFRemoteAlertViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismissPersistentChromeWithSuccess:(BOOL)success customAttribution:(id)attribution completionHandler:(id)handler;
- (void)dismissPresentedContentWithCompletionHandler:(id)handler;
- (void)handleButtonActions:(id)actions;
- (void)hostingViewControllerDidRequestExit:(id)exit;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)preparePersistentChromeWithContext:(id)context attribution:(id)attribution;
- (void)showDialogRequest:(id)request completionHandler:(id)handler;
@end

@implementation WFRemoteAlertViewController

- (void)hostingViewControllerDidRequestExit:(id)exit
{
  xpcConnection = [(WFRemoteAlertViewController *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];

  v5 = getWFDialogLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[WFRemoteAlertViewController hostingViewControllerDidRequestExit:]";
    v8 = 2114;
    v9 = WFViewServiceDismissalReasonBadState;
    v10 = 2112;
    v11 = remoteObjectProxy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Requesting dismissal with reason: %{public}@. host interface: %@", &v6, 0x20u);
  }

  [remoteObjectProxy requestDismissalWithReason:WFViewServiceDismissalReasonBadState];
}

- (void)dismissPersistentChromeWithSuccess:(BOOL)success customAttribution:(id)attribution completionHandler:(id)handler
{
  attributionCopy = attribution;
  handlerCopy = handler;
  v10 = sub_100003510();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[WFRemoteAlertViewController dismissPersistentChromeWithSuccess:customAttribution:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Dismissing chrome", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003564;
  v13[3] = &unk_100010530;
  successCopy = success;
  v13[4] = self;
  v14 = attributionCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = attributionCopy;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)dismissPresentedContentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100003510();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[WFRemoteAlertViewController dismissPresentedContentWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Dismissing presented content", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000372C;
  v7[3] = &unk_100010508;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)showDialogRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = sub_100003510();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[WFRemoteAlertViewController showDialogRequest:completionHandler:]";
    v16 = 2114;
    v17 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Showing dialog request: %{public}@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000038D8;
  block[3] = &unk_1000104E0;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)preparePersistentChromeWithContext:(id)context attribution:(id)attribution
{
  contextCopy = context;
  attributionCopy = attribution;
  v8 = sub_100003510();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[WFRemoteAlertViewController preparePersistentChromeWithContext:attribution:]";
    v16 = 2112;
    v17 = contextCopy;
    v18 = 2112;
    v19 = attributionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Received running context: %@, attribution: %@", buf, 0x20u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003A8C;
  block[3] = &unk_1000104B8;
  block[4] = self;
  v12 = contextCopy;
  v13 = attributionCopy;
  v9 = attributionCopy;
  v10 = contextCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v5 = sub_100003510();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[WFRemoteAlertViewController handleButtonActions:]";
    v16 = 2114;
    v17 = actionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Received button actions: %{public}@", buf, 0x16u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003CAC;
  v13[3] = &unk_1000105A8;
  v13[4] = self;
  v6 = objc_retainBlock(v13);
  compactViewController = [(WFRemoteAlertViewController *)self compactViewController];
  actionInterfaceListener = [compactViewController actionInterfaceListener];
  actionInterface = [actionInterfaceListener actionInterface];

  if (actionInterface)
  {
    compactViewController2 = [(WFRemoteAlertViewController *)self compactViewController];
    actionInterfaceListener2 = [compactViewController2 actionInterfaceListener];
    actionInterface2 = [actionInterfaceListener2 actionInterface];
    [actionInterface2 cancelPresentationWithCompletionHandler:v6];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100003510();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFRemoteAlertViewController prepareForActivationWithContext:completion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Preparing for activation", &v6, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  compactViewController = [(WFRemoteAlertViewController *)self compactViewController];
  supportedInterfaceOrientations = [compactViewController supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = sub_100003510();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136315138;
    v34 = "[WFRemoteAlertViewController configureWithContext:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Configuring", &v33, 0xCu);
  }

  [WFInitialization initializeProcessWithDatabase:0];
  _remoteViewControllerProxy = [(WFRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setWallpaperStyle:6 withDuration:0.0];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setSwipeDismissalStyle:1];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  compactViewController = [(WFRemoteAlertViewController *)self compactViewController];
  [(WFRemoteAlertViewController *)self addChildViewController:compactViewController];
  view = [compactViewController view];
  [view setAutoresizingMask:18];

  view2 = [(WFRemoteAlertViewController *)self view];
  [view2 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  view3 = [compactViewController view];
  [view3 setFrame:{v14, v16, v18, v20}];

  view4 = [compactViewController view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:1];

  view5 = [(WFRemoteAlertViewController *)self view];
  view6 = [compactViewController view];
  [view5 addSubview:view6];

  [compactViewController didMoveToParentViewController:self];
  xpcEndpoint = [contextCopy xpcEndpoint];

  if (xpcEndpoint)
  {
    v26 = objc_alloc_init(NSXPCListenerEndpoint);
    xpcEndpoint2 = [contextCopy xpcEndpoint];
    [v26 _setEndpoint:xpcEndpoint2];

    v28 = [[NSXPCConnection alloc] initWithListenerEndpoint:v26];
    [v28 setExportedObject:self];
    v29 = WFDialogXPCInterface();
    [v28 setExportedInterface:v29];

    [v28 setInterruptionHandler:&stru_100010470];
    [v28 setInvalidationHandler:&stru_100010490];
    [v28 resume];
    [(WFRemoteAlertViewController *)self setXpcConnection:v28];
    v30 = WFDialogXPCHostInterface();
    [v28 setRemoteObjectInterface:v30];

    remoteObjectProxy = [v28 remoteObjectProxy];
    [remoteObjectProxy beginConnection];

    v32 = sub_100003510();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 136315138;
      v34 = "[WFRemoteAlertViewController configureWithContext:completion:]";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s Opened XPC connection to specified endpoint", &v33, 0xCu);
    }
  }

  else
  {
    v26 = sub_100003510();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v33 = 136315138;
      v34 = "[WFRemoteAlertViewController configureWithContext:completion:]";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s No XPC endpoint to connect to", &v33, 0xCu);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (WFRemoteAlertViewController)init
{
  v7.receiver = self;
  v7.super_class = WFRemoteAlertViewController;
  v2 = [(WFRemoteAlertViewController *)&v7 init];
  if (v2)
  {
    v3 = [[WFCompactHostingViewController alloc] initWithScreenLocked:SBSGetScreenLockStatus() != 0 delegate:v2];
    compactViewController = v2->_compactViewController;
    v2->_compactViewController = v3;

    v5 = v2;
  }

  return v2;
}

@end