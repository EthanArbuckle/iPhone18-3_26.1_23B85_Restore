@interface AKAuthorizationRemoteViewController
- (AKAuthorizationRemoteViewController)initWithHost:(id)a3 presentationContext:(id)a4;
- (AKAuthorizationRemoteViewController)initWithPresentationContext:(id)a3;
- (BOOL)_shouldUseFrontBoardServices;
- (unint64_t)supportedInterfaceOrientations;
- (void)_callCompletionWithAuthorization:(id)a3 error:(id)a4;
- (void)_didCompleteWithError:(id)a3;
- (void)_main_dismissAndExit;
- (void)_showTiburonFlow;
- (void)authorizationViewController:(id)a3 didCompleteWithAuthorization:(id)a4 error:(id)a5;
- (void)authorizationViewController:(id)a3 didRequestAuthorizationWithUserProvidedInformation:(id)a4 completion:(id)a5;
- (void)authorizationViewController:(id)a3 didRequestIconForRequestContext:(id)a4 completion:(id)a5;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)handleCancellation;
- (void)handleCancellation:(id)a3;
- (void)setUpHostProxy;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AKAuthorizationRemoteViewController

- (AKAuthorizationRemoteViewController)initWithHost:(id)a3 presentationContext:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKAuthorizationRemoteViewController;
  v12 = [(AKAuthorizationRemoteViewController *)&v9 init];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    objc_storeStrong(&v12->_hostProxy, location[0]);
    objc_storeStrong(&v12->_presentationContext, v10);
    if ([(AKAuthorizationRemoteViewController *)v12 _shouldRegisterForClarityBoardApplicationChange])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v12, sub_1000010A4, CLFApplicationDidChangeNotification, 0, 0);
    }
  }

  v7 = v12;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v7;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if ([(AKAuthorizationRemoteViewController *)self _shouldRegisterForClarityBoardApplicationChange])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v5, CLFApplicationDidChangeNotification, 0);
  }

  v3.receiver = v5;
  v3.super_class = AKAuthorizationRemoteViewController;
  [(AKRemoteViewController *)&v3 dealloc];
}

- (AKAuthorizationRemoteViewController)initWithPresentationContext:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationRemoteViewController;
  v8 = [(AKAuthorizationRemoteViewController *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_presentationContext, location[0]);
  }

  v5 = v8;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKAuthorizationRemoteViewController;
  [(AKAuthorizationRemoteViewController *)&v3 viewWillAppear:a3];
  [(AKRemoteViewController *)v6 setupRemoteProxy];
  [(AKAuthorizationRemoteViewController *)v6 _showTiburonFlow];
}

- (void)_showTiburonFlow
{
  v30 = self;
  location[1] = a2;
  if (self->_authorizationViewController)
  {
    location[0] = _AKLogSystem();
    v28 = 16;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      v24 = location[0];
      v25 = v28;
      sub_100001814(v27);
      _os_log_error_impl(&_mh_execute_header, v24, v25, "authorization view controller already being shown; ignoring", v27, 2u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v4 = [AKAuthorizationViewController alloc];
    v5 = [(AKAuthorizationRemoteViewController *)v30 presentationContext];
    v2 = [v4 initWithAuthorizationContext:?];
    authorizationViewController = v30->_authorizationViewController;
    v30->_authorizationViewController = v2;

    [(AKAuthorizationViewController *)v30->_authorizationViewController setDelegate:v30];
    [(AKAuthorizationViewController *)v30->_authorizationViewController willMoveToParentViewController:v30];
    [(AKAuthorizationRemoteViewController *)v30 addChildViewController:v30->_authorizationViewController];
    v26 = [(AKAuthorizationViewController *)v30->_authorizationViewController view];
    v6 = [(AKAuthorizationRemoteViewController *)v30 view];
    [v6 addSubview:v26];

    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [v26 leadingAnchor];
    v22 = [(AKAuthorizationRemoteViewController *)v30 view];
    v21 = [v22 leadingAnchor];
    v20 = [v23 constraintEqualToAnchor:?];
    v31[0] = v20;
    v19 = [v26 trailingAnchor];
    v18 = [(AKAuthorizationRemoteViewController *)v30 view];
    v17 = [v18 trailingAnchor];
    v16 = [v19 constraintEqualToAnchor:?];
    v31[1] = v16;
    v15 = [v26 topAnchor];
    v14 = [(AKAuthorizationRemoteViewController *)v30 view];
    v13 = [v14 topAnchor];
    v12 = [v15 constraintEqualToAnchor:?];
    v31[2] = v12;
    v11 = [v26 bottomAnchor];
    v10 = [(AKAuthorizationRemoteViewController *)v30 view];
    v9 = [v10 bottomAnchor];
    v8 = [v11 constraintEqualToAnchor:?];
    v31[3] = v8;
    v7 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:?];

    [(AKAuthorizationViewController *)v30->_authorizationViewController didMoveToParentViewController:v30];
    objc_storeStrong(&v26, 0);
  }
}

- (void)handleCancellation
{
  v3 = [NSError ak_errorWithCode:-7003];
  [(AKAuthorizationRemoteViewController *)self _callCompletionWithAuthorization:0 error:?];
}

- (void)setUpHostProxy
{
  v17 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v15 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v15;
    sub_100001814(v14);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Setting up look up host proxy", v14, 2u);
  }

  objc_storeStrong(location, 0);
  objc_initWeak(&from, v17);
  v4 = [(AKRemoteViewController *)v17 lookupConnection];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100001A80;
  v11 = &unk_100014310;
  objc_copyWeak(v12, &from);
  v2 = [(NSXPCConnection *)v4 remoteObjectProxyWithErrorHandler:&v7];
  hostProxy = v17->_hostProxy;
  v17->_hostProxy = v2;

  objc_destroyWeak(v12);
  objc_destroyWeak(&from);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    log = v24;
    type = v23;
    sub_100001814(v22);
    _os_log_impl(&_mh_execute_header, log, type, "Configuring remote view service", v22, 2u);
  }

  objc_storeStrong(&v24, 0);
  v8 = [location[0] userInfo];
  v21 = [v8 objectForKeyedSubscript:@"context"];

  v9 = v27;
  v10 = [location[0] xpcEndpoint];
  [(AKRemoteViewController *)v9 setUpLookupConnection:?];

  if ([v21 length])
  {
    v20 = 0;
    v4 = objc_opt_class();
    v19 = v20;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:v4 fromData:v21 error:&v19];
    objc_storeStrong(&v20, v19);
    [(AKAuthorizationRemoteViewController *)v27 setPresentationContext:v7];

    if (v20)
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100001BA0(v28, v20);
        _os_log_error_impl(&_mh_execute_header, v18, v17, "authorization context error: %@", v28, 0xCu);
      }

      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v5 = v16;
      v6 = v15;
      sub_100001814(v14);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "authorization context data missing", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
  }

  (*(v25 + 2))();
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)handleCancellation:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v4 = [NSError ak_errorWithCode:-7003];
  [(AKAuthorizationRemoteViewController *)v3 _callCompletionWithAuthorization:0 error:?];

  objc_storeStrong(location, 0);
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = +[AKFeatureManager sharedManager];
  v4 = [v3 isSIWALandscapeModeEnabled];

  if (v4)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)authorizationViewController:(id)a3 didCompleteWithAuthorization:(id)a4 error:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100002238(v12, v9, v8);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "AKRemoteViewController did complete with authorization %@ (error: %@)", v12, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (!v8 || [v8 ak_isUserInitiatedError])
  {
    [(AKAuthorizationRemoteViewController *)v11 _callCompletionWithAuthorization:v9 error:v8];
  }

  else
  {
    [(AKAuthorizationRemoteViewController *)v11 _didCompleteWithError:v8];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationViewController:(id)a3 didRequestAuthorizationWithUserProvidedInformation:(id)a4 completion:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001BA0(v12, v9);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "UI service initiating authorization request with userSelection: %@", v12, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(AKAuthorizationPresenterHostProtocol *)v11->_hostProxy authorizationRequestInitiatedWithUserProvidedInformation:v9 completion:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationViewController:(id)a3 didRequestIconForRequestContext:(id)a4 completion:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(AKAuthorizationPresenterHostProtocol *)v10->_hostProxy continueFetchingIconWithCompletion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldUseFrontBoardServices
{
  v4 = &unk_10001A8B8;
  location = 0;
  objc_storeStrong(&location, &stru_100014350);
  if (*v4 != -1)
  {
    dispatch_once(v4, location);
  }

  objc_storeStrong(&location, 0);
  return byte_10001A8B0 & 1;
}

- (void)_callCompletionWithAuthorization:(id)a3 error:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  if ([(AKAuthorizationRemoteViewController *)v23 _shouldUseFrontBoardServices])
  {
    v20 = _AKLogHme();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(AKAuthorizationRemoteViewController *)v23 completionHandler];
      v9 = objc_retainBlock(v10);
      sub_100001BA0(v24, v9);
      _os_log_impl(&_mh_execute_header, v20, v19, "[visionOS] Calling XPC reply block: %@", v24, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    v8 = [(AKAuthorizationRemoteViewController *)v23 completionHandler];

    if (v8)
    {
      v7 = [(AKAuthorizationRemoteViewController *)v23 completionHandler];
      v7[2](v7, location[0], v21);
    }

    [(AKAuthorizationRemoteViewController *)v23 setCompletionHandler:0];
    v18 = 1;
  }

  else
  {
    hostProxy = v23->_hostProxy;
    v4 = location[0];
    v5 = v21;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_100002818;
    v16 = &unk_100014378;
    v17 = v23;
    [(AKAuthorizationPresenterHostProtocol *)hostProxy authorizationRequestFinishedWithAuthorization:v4 error:v5 completion:&v12];
    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_didCompleteWithError:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  when = dispatch_time(0, 1100000000);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000029D4;
  v10 = &unk_1000143A0;
  v11 = location[0];
  v12 = v14;
  dispatch_after(when, queue, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_main_dismissAndExit
{
  v52 = self;
  v51[1] = a2;
  v2 = &_dispatch_main_q;
  v19 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v19);

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100003108;
  v49[3] = &unk_1000143C8;
  v50 = v52;
  v51[0] = objc_retainBlock(v49);
  v20 = [(AKAuthorizationRemoteViewController *)v52 authorizationViewController];

  if (v20)
  {
    v17 = +[AKFeatureManager sharedManager];
    v18 = [v17 isAuthKitSolariumFeatureEnabled];

    if (v18)
    {
      v16 = [(AKAuthorizationRemoteViewController *)v52 authorizationViewController];
      v15 = [(AKAuthorizationViewController *)v16 navigationController];
      v43 = _NSConcreteStackBlock;
      v44 = -1073741824;
      v45 = 0;
      v46 = sub_100003174;
      v47 = &unk_1000143F0;
      v48 = v51[0];
      [v15 dismissViewControllerAnimated:1 completion:&v43];

      objc_storeStrong(&v48, 0);
    }

    else
    {
      v42 = 134;
      v40 = 0u;
      v41 = 0u;
      v13 = [(AKAuthorizationRemoteViewController *)v52 authorizationViewController];
      v12 = [(AKAuthorizationViewController *)v13 navigationController];
      v11 = [v12 view];
      [v11 frame];
      *&v40 = v3;
      *(&v40 + 1) = v4;
      *&v41 = v5;
      *(&v41 + 1) = v6;

      v14 = [(AKAuthorizationRemoteViewController *)v52 view];
      [v14 frame];
      v36 = v7;
      v37 = v8;
      v38 = v9;
      v39 = v10;
      *(&v40 + 1) = v10;

      v28 = _NSConcreteStackBlock;
      v29 = -1073741824;
      v30 = 0;
      v31 = sub_1000031B0;
      v32 = &unk_100014418;
      v33 = v52;
      v34 = v40;
      v35 = v41;
      v21 = _NSConcreteStackBlock;
      v22 = -1073741824;
      v23 = 0;
      v24 = sub_100003280;
      v25 = &unk_100014440;
      v26 = v52;
      v27 = v51[0];
      [UIView _animateUsingDefaultTimingWithOptions:134 animations:&v28 completion:&v21];
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v33, 0);
    }
  }

  else
  {
    (*(v51[0] + 2))();
  }

  objc_storeStrong(v51, 0);
  objc_storeStrong(&v50, 0);
}

@end