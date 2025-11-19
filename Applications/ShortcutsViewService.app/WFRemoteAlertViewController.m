@interface WFRemoteAlertViewController
- (WFRemoteAlertViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismissPersistentChromeWithSuccess:(BOOL)a3 customAttribution:(id)a4 completionHandler:(id)a5;
- (void)dismissPresentedContentWithCompletionHandler:(id)a3;
- (void)handleButtonActions:(id)a3;
- (void)hostingViewControllerDidRequestExit:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)preparePersistentChromeWithContext:(id)a3 attribution:(id)a4;
- (void)showDialogRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation WFRemoteAlertViewController

- (void)hostingViewControllerDidRequestExit:(id)a3
{
  v3 = [(WFRemoteAlertViewController *)self xpcConnection];
  v4 = [v3 remoteObjectProxy];

  v5 = getWFDialogLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[WFRemoteAlertViewController hostingViewControllerDidRequestExit:]";
    v8 = 2114;
    v9 = WFViewServiceDismissalReasonBadState;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Requesting dismissal with reason: %{public}@. host interface: %@", &v6, 0x20u);
  }

  [v4 requestDismissalWithReason:WFViewServiceDismissalReasonBadState];
}

- (void)dismissPersistentChromeWithSuccess:(BOOL)a3 customAttribution:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
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
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)dismissPresentedContentWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)showDialogRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003510();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[WFRemoteAlertViewController showDialogRequest:completionHandler:]";
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Showing dialog request: %{public}@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000038D8;
  block[3] = &unk_1000104E0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)preparePersistentChromeWithContext:(id)a3 attribution:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003510();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[WFRemoteAlertViewController preparePersistentChromeWithContext:attribution:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Received running context: %@, attribution: %@", buf, 0x20u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003A8C;
  block[3] = &unk_1000104B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v5 = sub_100003510();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[WFRemoteAlertViewController handleButtonActions:]";
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Received button actions: %{public}@", buf, 0x16u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003CAC;
  v13[3] = &unk_1000105A8;
  v13[4] = self;
  v6 = objc_retainBlock(v13);
  v7 = [(WFRemoteAlertViewController *)self compactViewController];
  v8 = [v7 actionInterfaceListener];
  v9 = [v8 actionInterface];

  if (v9)
  {
    v10 = [(WFRemoteAlertViewController *)self compactViewController];
    v11 = [v10 actionInterfaceListener];
    v12 = [v11 actionInterface];
    [v12 cancelPresentationWithCompletionHandler:v6];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = sub_100003510();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFRemoteAlertViewController prepareForActivationWithContext:completion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Preparing for activation", &v6, 0xCu);
  }

  if (v4)
  {
    v4[2](v4);
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(WFRemoteAlertViewController *)self compactViewController];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003510();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136315138;
    v34 = "[WFRemoteAlertViewController configureWithContext:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Configuring", &v33, 0xCu);
  }

  [WFInitialization initializeProcessWithDatabase:0];
  v9 = [(WFRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v9 setWallpaperStyle:6 withDuration:0.0];
  [v9 setDesiredHardwareButtonEvents:16];
  [v9 setSwipeDismissalStyle:1];
  [v9 setAllowsAlertStacking:1];
  v10 = [(WFRemoteAlertViewController *)self compactViewController];
  [(WFRemoteAlertViewController *)self addChildViewController:v10];
  v11 = [v10 view];
  [v11 setAutoresizingMask:18];

  v12 = [(WFRemoteAlertViewController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v10 view];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [v10 view];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:1];

  v23 = [(WFRemoteAlertViewController *)self view];
  v24 = [v10 view];
  [v23 addSubview:v24];

  [v10 didMoveToParentViewController:self];
  v25 = [v6 xpcEndpoint];

  if (v25)
  {
    v26 = objc_alloc_init(NSXPCListenerEndpoint);
    v27 = [v6 xpcEndpoint];
    [v26 _setEndpoint:v27];

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

    v31 = [v28 remoteObjectProxy];
    [v31 beginConnection];

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

  if (v7)
  {
    v7[2](v7);
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