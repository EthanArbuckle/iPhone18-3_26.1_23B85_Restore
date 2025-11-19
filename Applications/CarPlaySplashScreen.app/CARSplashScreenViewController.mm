@interface CARSplashScreenViewController
- (void)_dismissAnimated:(BOOL)a3;
- (void)_setupXPCConnectionWithEndpoint:(id)a3;
- (void)configureBackgroundLayer;
- (void)configureImages;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismissAlertAnimated:(BOOL)a3;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
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
  v6 = [(CARSplashScreenViewController *)self view];
  [v6 addSubview:v3];

  v22 = [v3 leadingAnchor];
  v23 = [(CARSplashScreenViewController *)self view];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v27[0] = v20;
  v18 = [v3 trailingAnchor];
  v19 = [(CARSplashScreenViewController *)self view];
  v17 = [v19 trailingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v27[1] = v16;
  v7 = [v3 topAnchor];
  v8 = [(CARSplashScreenViewController *)self view];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v27[2] = v10;
  v11 = [v3 bottomAnchor];
  v12 = [(CARSplashScreenViewController *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v27[3] = v14;
  v15 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v15];
}

- (void)configureImages
{
  v3 = +[_TtC19CarPlaySplashScreen24SplashScreenLogoViewHost logoView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(CARSplashScreenViewController *)self view];
  [v4 addSubview:v3];

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
  v9 = [(CARSplashScreenViewController *)self view];
  [v9 addSubview:v7];

  v10 = objc_alloc_init(UILayoutGuide);
  v11 = [(CARSplashScreenViewController *)self view];
  [v11 addLayoutGuide:v10];

  if ([(CARSplashScreenViewController *)self isCarPlayUltraBranded])
  {
    v12 = 222.0;
  }

  else
  {
    v12 = 150.0;
  }

  v54 = [v10 heightAnchor];
  v55 = [(CARSplashScreenViewController *)self view];
  v53 = [v55 heightAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 multiplier:0.39];
  v57[0] = v52;
  v50 = [v10 topAnchor];
  v51 = [(CARSplashScreenViewController *)self view];
  v49 = [v51 topAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v57[1] = v48;
  v45 = [v10 leftAnchor];
  v46 = [(CARSplashScreenViewController *)self view];
  v44 = [v46 leftAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v57[2] = v43;
  v47 = v10;
  v41 = [v10 rightAnchor];
  v42 = [(CARSplashScreenViewController *)self view];
  v40 = [v42 rightAnchor];
  v38 = [v41 constraintEqualToAnchor:v40];
  v57[3] = v38;
  v37 = [v3 topAnchor];
  v36 = [v10 bottomAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v57[4] = v35;
  v34 = [v3 widthAnchor];
  v33 = [v34 constraintEqualToConstant:100.0];
  v57[5] = v33;
  v31 = [v3 heightAnchor];
  v30 = [v31 constraintEqualToConstant:100.0];
  v57[6] = v30;
  v39 = v3;
  v28 = [v3 centerXAnchor];
  v29 = [(CARSplashScreenViewController *)self view];
  v27 = [v29 centerXAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v57[7] = v26;
  v13 = v7;
  v25 = [v7 topAnchor];
  v24 = [v3 bottomAnchor];
  v14 = [v25 constraintEqualToAnchor:v24 constant:36.0];
  v57[8] = v14;
  v32 = v7;
  v15 = [v7 centerXAnchor];
  v16 = [(CARSplashScreenViewController *)self view];
  v17 = [v16 centerXAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v57[9] = v18;
  v19 = [v7 widthAnchor];
  v20 = [v19 constraintEqualToConstant:v12];
  v57[10] = v20;
  v21 = [v13 heightAnchor];
  v22 = [v21 constraintEqualToConstant:36.0];
  v57[11] = v22;
  v23 = [NSArray arrayWithObjects:v57 count:12];
  [NSLayoutConstraint activateConstraints:v23];
}

- (void)_setupXPCConnectionWithEndpoint:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSXPCListenerEndpoint);
  [v5 _setEndpoint:v4];
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
  v9 = [v6 remoteObjectProxy];
  [v9 connect];

  [(CARSplashScreenViewController *)self setConnection:v6];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_dismissAnimated:(BOOL)a3
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

- (void)dismissAlertAnimated:(BOOL)a3
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
  v7 = a3;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [(CARSplashScreenViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100008588];
  v8 = [v6 xpcEndpoint];
  [(CARSplashScreenViewController *)self _setupXPCConnectionWithEndpoint:v8];

  v9 = [v6 userInfo];

  v10 = [v9 objectForKeyedSubscript:@"vehicleSupportsGaugeCluster"];
  -[CARSplashScreenViewController setCarPlayUltraBranded:](self, "setCarPlayUltraBranded:", [v10 BOOLValue]);

  [v7 setAllowsMenuButtonDismissal:0];
  [v7 setDesiredHardwareButtonEvents:16];
  if (v11)
  {
    v11[2]();
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(CARSplashScreenViewController *)self view];
  [v6 setAlpha:0.0];

  [BSUIAnimationFactory factoryWithDuration:0.25];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002994;
  v7 = v8[3] = &unk_100008518;
  v9 = v7;
  v10 = self;
  [(CARSplashScreenViewController *)self synchronizeAnimationsInActions:v8];
  if (v5)
  {
    v5[2](v5);
  }
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
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
  [v4 enumerateObjectsUsingBlock:v6];
}

@end