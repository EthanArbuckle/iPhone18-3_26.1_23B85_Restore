@interface AKAuthorizationRemoteViewController
- (AKAuthorizationRemoteViewController)initWithHost:(id)host presentationContext:(id)context;
- (AKAuthorizationRemoteViewController)initWithPresentationContext:(id)context;
- (BOOL)_shouldUseFrontBoardServices;
- (unint64_t)supportedInterfaceOrientations;
- (void)_callCompletionWithAuthorization:(id)authorization error:(id)error;
- (void)_didCompleteWithError:(id)error;
- (void)_main_dismissAndExit;
- (void)_showTiburonFlow;
- (void)authorizationViewController:(id)controller didCompleteWithAuthorization:(id)authorization error:(id)error;
- (void)authorizationViewController:(id)controller didRequestAuthorizationWithUserProvidedInformation:(id)information completion:(id)completion;
- (void)authorizationViewController:(id)controller didRequestIconForRequestContext:(id)context completion:(id)completion;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)handleCancellation;
- (void)handleCancellation:(id)cancellation;
- (void)setUpHostProxy;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AKAuthorizationRemoteViewController

- (AKAuthorizationRemoteViewController)initWithHost:(id)host presentationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, host);
  v10 = 0;
  objc_storeStrong(&v10, context);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKAuthorizationRemoteViewController;
  selfCopy = [(AKAuthorizationRemoteViewController *)&v9 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_hostProxy, location[0]);
    objc_storeStrong(&selfCopy->_presentationContext, v10);
    if ([(AKAuthorizationRemoteViewController *)selfCopy _shouldRegisterForClarityBoardApplicationChange])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, selfCopy, sub_1000010A4, CLFApplicationDidChangeNotification, 0, 0);
    }
  }

  v7 = selfCopy;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if ([(AKAuthorizationRemoteViewController *)self _shouldRegisterForClarityBoardApplicationChange])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, selfCopy, CLFApplicationDidChangeNotification, 0);
  }

  v3.receiver = selfCopy;
  v3.super_class = AKAuthorizationRemoteViewController;
  [(AKRemoteViewController *)&v3 dealloc];
}

- (AKAuthorizationRemoteViewController)initWithPresentationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationRemoteViewController;
  selfCopy = [(AKAuthorizationRemoteViewController *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_presentationContext, location[0]);
  }

  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = AKAuthorizationRemoteViewController;
  [(AKAuthorizationRemoteViewController *)&v3 viewWillAppear:appear];
  [(AKRemoteViewController *)selfCopy setupRemoteProxy];
  [(AKAuthorizationRemoteViewController *)selfCopy _showTiburonFlow];
}

- (void)_showTiburonFlow
{
  selfCopy = self;
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
    presentationContext = [(AKAuthorizationRemoteViewController *)selfCopy presentationContext];
    v2 = [v4 initWithAuthorizationContext:?];
    authorizationViewController = selfCopy->_authorizationViewController;
    selfCopy->_authorizationViewController = v2;

    [(AKAuthorizationViewController *)selfCopy->_authorizationViewController setDelegate:selfCopy];
    [(AKAuthorizationViewController *)selfCopy->_authorizationViewController willMoveToParentViewController:selfCopy];
    [(AKAuthorizationRemoteViewController *)selfCopy addChildViewController:selfCopy->_authorizationViewController];
    view = [(AKAuthorizationViewController *)selfCopy->_authorizationViewController view];
    view2 = [(AKAuthorizationRemoteViewController *)selfCopy view];
    [view2 addSubview:view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [view leadingAnchor];
    view3 = [(AKAuthorizationRemoteViewController *)selfCopy view];
    leadingAnchor2 = [view3 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:?];
    v31[0] = v20;
    trailingAnchor = [view trailingAnchor];
    view4 = [(AKAuthorizationRemoteViewController *)selfCopy view];
    trailingAnchor2 = [view4 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:?];
    v31[1] = v16;
    topAnchor = [view topAnchor];
    view5 = [(AKAuthorizationRemoteViewController *)selfCopy view];
    topAnchor2 = [view5 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:?];
    v31[2] = v12;
    bottomAnchor = [view bottomAnchor];
    view6 = [(AKAuthorizationRemoteViewController *)selfCopy view];
    bottomAnchor2 = [view6 bottomAnchor];
    v8 = [bottomAnchor constraintEqualToAnchor:?];
    v31[3] = v8;
    v7 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:?];

    [(AKAuthorizationViewController *)selfCopy->_authorizationViewController didMoveToParentViewController:selfCopy];
    objc_storeStrong(&view, 0);
  }
}

- (void)handleCancellation
{
  v3 = [NSError ak_errorWithCode:-7003];
  [(AKAuthorizationRemoteViewController *)self _callCompletionWithAuthorization:0 error:?];
}

- (void)setUpHostProxy
{
  selfCopy = self;
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
  objc_initWeak(&from, selfCopy);
  lookupConnection = [(AKRemoteViewController *)selfCopy lookupConnection];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100001A80;
  v11 = &unk_100014310;
  objc_copyWeak(v12, &from);
  v2 = [(NSXPCConnection *)lookupConnection remoteObjectProxyWithErrorHandler:&v7];
  hostProxy = selfCopy->_hostProxy;
  selfCopy->_hostProxy = v2;

  objc_destroyWeak(v12);
  objc_destroyWeak(&from);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v25 = 0;
  objc_storeStrong(&v25, completion);
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
  userInfo = [location[0] userInfo];
  v21 = [userInfo objectForKeyedSubscript:@"context"];

  v9 = selfCopy;
  xpcEndpoint = [location[0] xpcEndpoint];
  [(AKRemoteViewController *)v9 setUpLookupConnection:?];

  if ([v21 length])
  {
    v20 = 0;
    v4 = objc_opt_class();
    v19 = v20;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:v4 fromData:v21 error:&v19];
    objc_storeStrong(&v20, v19);
    [(AKAuthorizationRemoteViewController *)selfCopy setPresentationContext:v7];

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

- (void)handleCancellation:(id)cancellation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancellation);
  v3 = selfCopy;
  v4 = [NSError ak_errorWithCode:-7003];
  [(AKAuthorizationRemoteViewController *)v3 _callCompletionWithAuthorization:0 error:?];

  objc_storeStrong(location, 0);
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = +[AKFeatureManager sharedManager];
  isSIWALandscapeModeEnabled = [v3 isSIWALandscapeModeEnabled];

  if (isSIWALandscapeModeEnabled)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)authorizationViewController:(id)controller didCompleteWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, authorization);
  v8 = 0;
  objc_storeStrong(&v8, error);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100002238(v12, v9, v8);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "AKRemoteViewController did complete with authorization %@ (error: %@)", v12, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (!v8 || [v8 ak_isUserInitiatedError])
  {
    [(AKAuthorizationRemoteViewController *)selfCopy _callCompletionWithAuthorization:v9 error:v8];
  }

  else
  {
    [(AKAuthorizationRemoteViewController *)selfCopy _didCompleteWithError:v8];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationViewController:(id)controller didRequestAuthorizationWithUserProvidedInformation:(id)information completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, information);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100001BA0(v12, v9);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "UI service initiating authorization request with userSelection: %@", v12, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(AKAuthorizationPresenterHostProtocol *)selfCopy->_hostProxy authorizationRequestInitiatedWithUserProvidedInformation:v9 completion:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationViewController:(id)controller didRequestIconForRequestContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, context);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  [(AKAuthorizationPresenterHostProtocol *)selfCopy->_hostProxy continueFetchingIconWithCompletion:v7];
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

- (void)_callCompletionWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v21 = 0;
  objc_storeStrong(&v21, error);
  if ([(AKAuthorizationRemoteViewController *)selfCopy _shouldUseFrontBoardServices])
  {
    v20 = _AKLogHme();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      completionHandler = [(AKAuthorizationRemoteViewController *)selfCopy completionHandler];
      v9 = objc_retainBlock(completionHandler);
      sub_100001BA0(v24, v9);
      _os_log_impl(&_mh_execute_header, v20, v19, "[visionOS] Calling XPC reply block: %@", v24, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    completionHandler2 = [(AKAuthorizationRemoteViewController *)selfCopy completionHandler];

    if (completionHandler2)
    {
      completionHandler3 = [(AKAuthorizationRemoteViewController *)selfCopy completionHandler];
      completionHandler3[2](completionHandler3, location[0], v21);
    }

    [(AKAuthorizationRemoteViewController *)selfCopy setCompletionHandler:0];
    v18 = 1;
  }

  else
  {
    hostProxy = selfCopy->_hostProxy;
    v4 = location[0];
    v5 = v21;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_100002818;
    v16 = &unk_100014378;
    v17 = selfCopy;
    [(AKAuthorizationPresenterHostProtocol *)hostProxy authorizationRequestFinishedWithAuthorization:v4 error:v5 completion:&v12];
    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_didCompleteWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  when = dispatch_time(0, 1100000000);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000029D4;
  v10 = &unk_1000143A0;
  v11 = location[0];
  v12 = selfCopy;
  dispatch_after(when, queue, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_main_dismissAndExit
{
  selfCopy = self;
  v51[1] = a2;
  v2 = &_dispatch_main_q;
  v19 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v19);

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100003108;
  v49[3] = &unk_1000143C8;
  v50 = selfCopy;
  v51[0] = objc_retainBlock(v49);
  authorizationViewController = [(AKAuthorizationRemoteViewController *)selfCopy authorizationViewController];

  if (authorizationViewController)
  {
    v17 = +[AKFeatureManager sharedManager];
    isAuthKitSolariumFeatureEnabled = [v17 isAuthKitSolariumFeatureEnabled];

    if (isAuthKitSolariumFeatureEnabled)
    {
      authorizationViewController2 = [(AKAuthorizationRemoteViewController *)selfCopy authorizationViewController];
      navigationController = [(AKAuthorizationViewController *)authorizationViewController2 navigationController];
      v43 = _NSConcreteStackBlock;
      v44 = -1073741824;
      v45 = 0;
      v46 = sub_100003174;
      v47 = &unk_1000143F0;
      v48 = v51[0];
      [navigationController dismissViewControllerAnimated:1 completion:&v43];

      objc_storeStrong(&v48, 0);
    }

    else
    {
      v42 = 134;
      v40 = 0u;
      v41 = 0u;
      authorizationViewController3 = [(AKAuthorizationRemoteViewController *)selfCopy authorizationViewController];
      navigationController2 = [(AKAuthorizationViewController *)authorizationViewController3 navigationController];
      view = [navigationController2 view];
      [view frame];
      *&v40 = v3;
      *(&v40 + 1) = v4;
      *&v41 = v5;
      *(&v41 + 1) = v6;

      view2 = [(AKAuthorizationRemoteViewController *)selfCopy view];
      [view2 frame];
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
      v33 = selfCopy;
      v34 = v40;
      v35 = v41;
      v21 = _NSConcreteStackBlock;
      v22 = -1073741824;
      v23 = 0;
      v24 = sub_100003280;
      v25 = &unk_100014440;
      v26 = selfCopy;
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