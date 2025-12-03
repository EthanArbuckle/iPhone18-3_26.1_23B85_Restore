@interface CARSplashScreenViewController
- (void)_dismissAnimated:(BOOL)animated;
- (void)_setupXPCConnectionWithEndpoint:(id)endpoint;
- (void)configureBackgroundLayer;
- (void)configureImages;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismissAlertAnimated:(BOOL)animated;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation CARSplashScreenViewController

- (void)configureBackgroundLayer
{
  v3 = objc_alloc_init(UIVisualEffectView);
  v26 = [UIBlurEffect effectWithBlurRadius:50.0];
  v25 = [UIColorEffect colorEffectSaturate:1.25];
  v4 = +[UIColor systemBlackColor];
  v24 = [UIVisualEffect effectCompositingColor:v4 withMode:7 alpha:0.45];

  v28[0] = v26;
  v28[1] = v25;
  v28[2] = v24;
  v5 = [NSArray arrayWithObjects:v28 count:3];
  [v3 setBackgroundEffects:v5];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(CARSplashScreenViewController *)self view];
  [view addSubview:v3];

  leadingAnchor = [v3 leadingAnchor];
  view2 = [(CARSplashScreenViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[0] = v20;
  trailingAnchor = [v3 trailingAnchor];
  view3 = [(CARSplashScreenViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[1] = v16;
  topAnchor = [v3 topAnchor];
  view4 = [(CARSplashScreenViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[2] = v10;
  bottomAnchor = [v3 bottomAnchor];
  view5 = [(CARSplashScreenViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v14;
  v15 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v15];
}

- (void)configureImages
{
  v3 = +[_TtC19CarPlaySplashScreen24SplashScreenLogoViewHost logoView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(CARSplashScreenViewController *)self view];
  [view addSubview:v3];

  if ([(CARSplashScreenViewController *)self isCarPlayUltraBranded])
  {
    v5 = @"CarPlayUltraLabel";
  }

  else
  {
    v5 = @"CarPlayLabel";
  }

  v6 = [UIImage imageNamed:v5];
  v56 = [v6 imageWithRenderingMode:2];

  v7 = objc_alloc_init(UIImageView);
  [v7 setContentMode:1];
  [v7 setImage:v56];
  v8 = +[UIColor systemWhiteColor];
  [v7 setTintColor:v8];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(CARSplashScreenViewController *)self view];
  [view2 addSubview:v7];

  v10 = objc_alloc_init(UILayoutGuide);
  view3 = [(CARSplashScreenViewController *)self view];
  [view3 addLayoutGuide:v10];

  if ([(CARSplashScreenViewController *)self isCarPlayUltraBranded])
  {
    v12 = 222.0;
  }

  else
  {
    v12 = 150.0;
  }

  heightAnchor = [v10 heightAnchor];
  view4 = [(CARSplashScreenViewController *)self view];
  heightAnchor2 = [view4 heightAnchor];
  v52 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.39];
  v57[0] = v52;
  topAnchor = [v10 topAnchor];
  view5 = [(CARSplashScreenViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v57[1] = v48;
  leftAnchor = [v10 leftAnchor];
  view6 = [(CARSplashScreenViewController *)self view];
  leftAnchor2 = [view6 leftAnchor];
  v43 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v57[2] = v43;
  v47 = v10;
  rightAnchor = [v10 rightAnchor];
  view7 = [(CARSplashScreenViewController *)self view];
  rightAnchor2 = [view7 rightAnchor];
  v38 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v57[3] = v38;
  topAnchor3 = [v3 topAnchor];
  bottomAnchor = [v10 bottomAnchor];
  v35 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v57[4] = v35;
  widthAnchor = [v3 widthAnchor];
  v33 = [widthAnchor constraintEqualToConstant:100.0];
  v57[5] = v33;
  heightAnchor3 = [v3 heightAnchor];
  v30 = [heightAnchor3 constraintEqualToConstant:100.0];
  v57[6] = v30;
  v39 = v3;
  centerXAnchor = [v3 centerXAnchor];
  view8 = [(CARSplashScreenViewController *)self view];
  centerXAnchor2 = [view8 centerXAnchor];
  v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v57[7] = v26;
  v13 = v7;
  topAnchor4 = [v7 topAnchor];
  bottomAnchor2 = [v3 bottomAnchor];
  v14 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:36.0];
  v57[8] = v14;
  v32 = v7;
  centerXAnchor3 = [v7 centerXAnchor];
  view9 = [(CARSplashScreenViewController *)self view];
  centerXAnchor4 = [view9 centerXAnchor];
  v18 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v57[9] = v18;
  widthAnchor2 = [v7 widthAnchor];
  v20 = [widthAnchor2 constraintEqualToConstant:v12];
  v57[10] = v20;
  heightAnchor4 = [v13 heightAnchor];
  v22 = [heightAnchor4 constraintEqualToConstant:36.0];
  v57[11] = v22;
  v23 = [NSArray arrayWithObjects:v57 count:12];
  [NSLayoutConstraint activateConstraints:v23];
}

- (void)_setupXPCConnectionWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = objc_alloc_init(NSXPCListenerEndpoint);
  [v5 _setEndpoint:endpointCopy];
  v6 = [[NSXPCConnection alloc] initWithListenerEndpoint:v5];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DBSplashScreenDismissalService];
  [v6 setExportedInterface:v7];
  [v6 setExportedObject:self];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002340;
  v12[3] = &unk_1000084B0;
  objc_copyWeak(&v13, &location);
  [v6 setInterruptionHandler:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002384;
  v10[3] = &unk_1000084B0;
  objc_copyWeak(&v11, &location);
  [v6 setInvalidationHandler:v10];
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DBSplashScreenDismissalServer];
  [v6 setRemoteObjectInterface:v8];
  [v6 resume];
  remoteObjectProxy = [v6 remoteObjectProxy];
  [remoteObjectProxy connect];

  [(CARSplashScreenViewController *)self setConnection:v6];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_dismissAnimated:(BOOL)animated
{
  v4 = sub_100001764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismissing alert", buf, 2u);
  }

  [(CARSplashScreenViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_1000084F0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000024F4;
  v6[3] = &unk_100008518;
  v7 = v6[4] = self;
  v5 = v7;
  [(CARSplashScreenViewController *)self synchronizeAnimationsInActions:v6];
}

- (void)dismissAlertAnimated:(BOOL)animated
{
  v5 = sub_100001764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismiss call from connection", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002750;
  v6[3] = &unk_100008568;
  v6[4] = self;
  animatedCopy = animated;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v7 = [(CARSplashScreenViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100008588];
  xpcEndpoint = [contextCopy xpcEndpoint];
  [(CARSplashScreenViewController *)self _setupXPCConnectionWithEndpoint:xpcEndpoint];

  userInfo = [contextCopy userInfo];

  v10 = [userInfo objectForKeyedSubscript:@"vehicleSupportsGaugeCluster"];
  -[CARSplashScreenViewController setCarPlayUltraBranded:](self, "setCarPlayUltraBranded:", [v10 BOOLValue]);

  [v7 setAllowsMenuButtonDismissal:0];
  [v7 setDesiredHardwareButtonEvents:16];
  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  view = [(CARSplashScreenViewController *)self view];
  [view setAlpha:0.0];

  [BSUIAnimationFactory factoryWithDuration:0.25];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002994;
  v7 = v8[3] = &unk_100008518;
  v9 = v7;
  selfCopy = self;
  [(CARSplashScreenViewController *)self synchronizeAnimationsInActions:v8];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v5 = sub_100001764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling button actions", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002B3C;
  v6[3] = &unk_1000085D8;
  v6[4] = self;
  [actionsCopy enumerateObjectsUsingBlock:v6];
}

@end