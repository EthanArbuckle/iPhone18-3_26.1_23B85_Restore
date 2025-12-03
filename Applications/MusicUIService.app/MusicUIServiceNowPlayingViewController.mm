@interface MusicUIServiceNowPlayingViewController
- (id)connectionWithEndpoint:(id)endpoint;
- (void)cleanup;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)customRowDidTap:(id)tap;
- (void)handleButtonActions:(id)actions;
- (void)updateMediaControlsWithConfiguration:(id)configuration;
- (void)viewDidLayoutSubviews;
@end

@implementation MusicUIServiceNowPlayingViewController

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = MusicUIServiceNowPlayingViewController;
  [(MusicUIServiceNowPlayingViewController *)&v13 viewDidLayoutSubviews];
  view = [(MusicUIServiceNowPlayingViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(MRUViewServiceViewController *)self->_remoteViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  _remoteViewControllerProxy = [(MusicUIServiceNowPlayingViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setSwipeDismissalStyle:{+[MRUFeatureFlagProvider isCayenneEnabled](MRUFeatureFlagProvider, "isCayenneEnabled") ^ 1}];
  [_remoteViewControllerProxy setDismissalAnimationStyle:0];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  [_remoteViewControllerProxy setSceneDeactivationReason:0];
  [_remoteViewControllerProxy setOrientationChangedEventsEnabled:0];
  userInfo = [contextCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:kMRMediaRemoteMediaControlsConfigurationKey];

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Successfully deserialized the initial media controls configuration.", buf, 2u);
    }

    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:0];
    v12 = [MRUViewServiceProvider viewControllerForConfiguration:v11];
    remoteViewController = self->_remoteViewController;
    self->_remoteViewController = v12;

    [(MRUViewServiceViewController *)self->_remoteViewController setConfiguration:v11];
    objc_initWeak(buf, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100001E94;
    v25[3] = &unk_10000C2B0;
    objc_copyWeak(&v26, buf);
    [(MRUViewServiceViewController *)self->_remoteViewController setDismissalBlock:v25];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100001ED4;
    v23[3] = &unk_10000C2D8;
    objc_copyWeak(&v24, buf);
    [(MRUViewServiceViewController *)self->_remoteViewController setCustomRowTappedBlock:v23];
    [(MusicUIServiceNowPlayingViewController *)self addChildViewController:self->_remoteViewController];
    view = [(MusicUIServiceNowPlayingViewController *)self view];
    view2 = [(MRUViewServiceViewController *)self->_remoteViewController view];
    [view addSubview:view2];

    [(MRUViewServiceViewController *)self->_remoteViewController didMoveToParentViewController:self];
    view3 = [(MusicUIServiceNowPlayingViewController *)self view];
    [view3 setNeedsLayout];

    [(MusicUIServiceNowPlayingViewController *)self setNeedsStatusBarAppearanceUpdate];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  xpcEndpoint = [contextCopy xpcEndpoint];

  if (xpcEndpoint)
  {
    xpcEndpoint2 = [contextCopy xpcEndpoint];
    v19 = [(MusicUIServiceNowPlayingViewController *)self connectionWithEndpoint:xpcEndpoint2];
    v20 = [v19 remoteObjectProxyWithErrorHandler:&stru_10000C318];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Attempting to open connection to host app.", buf, 2u);
    }

    [v20 openConnection];
    hostProxy = self->_hostProxy;
    self->_hostProxy = v20;
  }

  v22.receiver = self;
  v22.super_class = MusicUIServiceNowPlayingViewController;
  [(MusicUIServiceNowPlayingViewController *)&v22 configureWithContext:contextCopy completion:completionCopy];
}

- (void)handleButtonActions:(id)actions
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002044;
  v3[3] = &unk_10000C340;
  v3[4] = self;
  [actions enumerateObjectsUsingBlock:v3];
}

- (void)updateMediaControlsWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    presentingAppBundleID = [configurationCopy presentingAppBundleID];
    *buf = 138412290;
    v11 = presentingAppBundleID;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received updated media controls configuration from:  %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000222C;
  v7[3] = &unk_10000C368;
  objc_copyWeak(&v9, buf);
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)customRowDidTap:(id)tap
{
  tapCopy = tap;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = tapCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Custom row did tap: %@", &v6, 0xCu);
  }

  hostProxy = self->_hostProxy;
  if (hostProxy)
  {
    [(MPMediaControlsProtocol *)hostProxy setTappedCustomRowIdentifier:tapCopy];
  }

  [(MusicUIServiceNowPlayingViewController *)self cleanup];
}

- (void)cleanup
{
  [(MRUViewServiceViewController *)self->_remoteViewController willMoveToParentViewController:0];
  view = [(MRUViewServiceViewController *)self->_remoteViewController view];
  [view removeFromSuperview];

  [(MRUViewServiceViewController *)self->_remoteViewController removeFromParentViewController];
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = 0;

  [(NSXPCConnection *)self->_connection invalidate];
  _remoteViewControllerProxy = [(MusicUIServiceNowPlayingViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy deactivate];
  [_remoteViewControllerProxy invalidate];
}

- (id)connectionWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  connection = self->_connection;
  if (!connection)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Creating XPC connection to host app.", buf, 2u);
    }

    v6 = objc_alloc_init(NSXPCListenerEndpoint);
    [v6 _setEndpoint:endpointCopy];
    v7 = [[NSXPCConnection alloc] initWithListenerEndpoint:v6];
    v8 = self->_connection;
    self->_connection = v7;

    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MPMediaControlsProtocol];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v9];

    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MPMediaControlsRemoteViewControllerProtocol];
    [(NSXPCConnection *)self->_connection setExportedInterface:v10];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    objc_initWeak(buf, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000025E8;
    v13[3] = &unk_10000C2B0;
    objc_copyWeak(&v14, buf);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v13];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);

    connection = self->_connection;
  }

  v11 = connection;

  return connection;
}

@end