@interface AKPrivateEmailRemoteViewController
- (AKPrivateEmailRemoteViewController)initWithPrivateEmailContext:(id)context altDSID:(id)d;
- (id)remoteUIStyle;
- (void)_callFlowEndedCompletionWithPrivateEmail:(id)email error:(id)error;
- (void)_createNavigationController;
- (void)_prepareToPresentPrivateEmailFlow;
- (void)_showPrivateEmailFlow;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleCancellation:(id)cancellation;
- (void)setUpHostProxy;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AKPrivateEmailRemoteViewController

- (AKPrivateEmailRemoteViewController)initWithPrivateEmailContext:(id)context altDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v9 = 0;
  objc_storeStrong(&v9, d);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKPrivateEmailRemoteViewController;
  selfCopy = [(AKPrivateEmailRemoteViewController *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_privateEmailContext, location[0]);
    objc_storeStrong(&selfCopy->_altDSID, v9);
  }

  v6 = selfCopy;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = AKPrivateEmailRemoteViewController;
  [(AKPrivateEmailRemoteViewController *)&v4 viewWillAppear:appear];
  view = [(AKPrivateEmailRemoteViewController *)selfCopy view];
  [view setHidden:1];

  [(AKRemoteViewController *)selfCopy setupRemoteProxy];
  [(AKPrivateEmailRemoteViewController *)selfCopy _prepareToPresentPrivateEmailFlow];
}

- (void)setUpHostProxy
{
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  lookupConnection = [(AKRemoteViewController *)selfCopy lookupConnection];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100008118;
  v9 = &unk_100014310;
  objc_copyWeak(v10, location);
  v2 = [(NSXPCConnection *)lookupConnection remoteObjectProxyWithErrorHandler:&v5];
  hostProxy = selfCopy->_hostProxy;
  selfCopy->_hostProxy = v2;

  objc_destroyWeak(v10);
  objc_destroyWeak(location);
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
    userInfo = [location[0] userInfo];
    sub_100001BA0(v28, userInfo);
    _os_log_impl(&_mh_execute_header, v24, v23, "Configuring remote private email view service\n%@", v28, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  userInfo2 = [location[0] userInfo];
  v22 = [userInfo2 objectForKeyedSubscript:AKPrivateEmailIdentifierKey];

  userInfo3 = [location[0] userInfo];
  v21 = [userInfo3 objectForKeyedSubscript:@"X-Apple-I-Private-Email-Client-Bundle"];

  userInfo4 = [location[0] userInfo];
  v4 = [userInfo4 objectForKeyedSubscript:AKAltDSID];
  altDSID = selfCopy->_altDSID;
  selfCopy->_altDSID = v4;

  v6 = [AKPrivateEmailContext alloc];
  v7 = [v6 initWithKey:v22 altDSID:selfCopy->_altDSID clientAppBundleId:v21];
  privateEmailContext = selfCopy->_privateEmailContext;
  selfCopy->_privateEmailContext = v7;

  if (selfCopy->_altDSID)
  {
    v11 = selfCopy;
    xpcEndpoint = [location[0] xpcEndpoint];
    [(AKRemoteViewController *)v11 setUpLookupConnection:?];
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v9 = v20;
      v10 = v19;
      sub_100001814(v18);
      _os_log_error_impl(&_mh_execute_header, v9, v10, "authorization context data missing", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
  }

  (*(v25 + 2))();
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
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
  [(AKPrivateEmailRemoteViewController *)v3 _callFlowEndedCompletionWithPrivateEmail:0 error:?];

  objc_storeStrong(location, 0);
}

- (void)_prepareToPresentPrivateEmailFlow
{
  selfCopy = self;
  v9[1] = a2;
  [(AKPrivateEmailRemoteViewController *)self _createNavigationController];
  v3 = selfCopy;
  navController = selfCopy->_navController;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100008798;
  v8 = &unk_1000143C8;
  v9[0] = selfCopy;
  [(AKPrivateEmailRemoteViewController *)v3 presentViewController:navController animated:1 completion:?];
  objc_storeStrong(v9, 0);
}

- (void)_showPrivateEmailFlow
{
  selfCopy = self;
  location[1] = a2;
  v6 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  context = selfCopy->_context;
  selfCopy->_context = v6;

  [(AKAppleIDAuthenticationInAppContext *)selfCopy->_context setAltDSID:selfCopy->_altDSID];
  [(AKAppleIDAuthenticationInAppContext *)selfCopy->_context setForceInlinePresentation:1];
  [(AKAppleIDAuthenticationInAppContext *)selfCopy->_context setDelegate:selfCopy];
  [(AKAppleIDAuthenticationInAppContext *)selfCopy->_context setPresentingViewController:selfCopy->_navController];
  location[0] = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100001BA0(v28, selfCopy->_altDSID);
    _os_log_impl(&_mh_execute_header, location[0], v25, "Showing flow for %@", v28, 0xCu);
  }

  objc_storeStrong(location, 0);
  v24 = [AKURLBag bagForAltDSID:selfCopy->_altDSID];
  v23 = [v24 urlAtKey:AKURLBagKeyPrivateEmailUseAddress];
  v22 = [NSURLRequest requestWithURL:v23];
  v16[0] = 0;
  v16[1] = v16;
  v17 = 838860800;
  v18 = 48;
  v19 = sub_100008CAC;
  v20 = sub_100008D04;
  v5 = [AKServerRequestConfiguration alloc];
  v21 = [v5 initWithRequest:v22 requestType:0];
  v15 = objc_alloc_init(AKAppleIDAuthenticationController);
  v14 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v14 _updateWithValuesFromContext:selfCopy->_context];
  v4 = v15;
  v3 = v14;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100008D34;
  v11 = &unk_100014720;
  v13[1] = v16;
  v12 = selfCopy;
  v13[0] = v23;
  [v4 getServerUILoadDelegateWithContext:v3 completion:&v7];
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  _Block_object_dispose(v16, 8);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
}

- (void)_callFlowEndedCompletionWithPrivateEmail:(id)email error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, email);
  v21 = 0;
  objc_storeStrong(&v21, error);
  if (v21)
  {
    v20 = _AKLogHme();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100001BA0(v26, v21);
      _os_log_error_impl(&_mh_execute_header, v20, v19, "Sending private email failure back to daemon with error: %@", v26, 0xCu);
    }

    objc_storeStrong(&v20, 0);
  }

  else
  {
    v18 = _AKLogHme();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      privateEmailAddress = [location[0] privateEmailAddress];
      sub_100001BA0(v25, privateEmailAddress);
      _os_log_impl(&_mh_execute_header, v18, v17, "Sending successful private email selection back to daemon: %@", v25, 0xCu);
    }

    objc_storeStrong(&v18, 0);
  }

  v16 = _AKLogHme();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100001BA0(v24, selfCopy->_hostProxy);
    _os_log_debug_impl(&_mh_execute_header, v16, v15, "Calling host proxy (%@) with private email response", v24, 0xCu);
  }

  objc_storeStrong(&v16, 0);
  hostProxy = selfCopy->_hostProxy;
  v4 = location[0];
  v5 = v21;
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1000096BC;
  v13 = &unk_100014378;
  v14 = selfCopy;
  [(AKPrivateEmailPresenterHostProtocol *)hostProxy privateEmailFetchCompletedWith:v4 error:v5 completion:&v9];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_createNavigationController
{
  if (!self->_navController)
  {
    v2 = objc_alloc_init(UINavigationController);
    navController = self->_navController;
    self->_navController = v2;

    navigationItem = [(UINavigationController *)self->_navController navigationItem];
    [navigationItem setHidesBackButton:1];

    navigationController = [(UINavigationController *)self->_navController navigationController];
    [navigationController setNavigationBarHidden:1];

    view = [(UINavigationController *)self->_navController view];
    [view setHidden:1];

    [(UINavigationController *)self->_navController setModalPresentationStyle:0];
  }
}

- (id)remoteUIStyle
{
  if (sub_1000077F0(0))
  {
    v3 = sub_100007A40();
  }

  else
  {
    v3 = 0;
  }

  return [v3 osloStyle];
}

@end