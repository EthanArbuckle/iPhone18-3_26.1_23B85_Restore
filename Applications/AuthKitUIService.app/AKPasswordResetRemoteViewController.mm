@interface AKPasswordResetRemoteViewController
- (AKPasswordResetRemoteViewController)initWithContext:(id)a3;
- (BOOL)needsOptionsView;
- (void)_passwordResetDidFinishWithResult:(id)a3 error:(id)a4;
- (void)_presentPasswordResetFlowForUsername:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleCancellation:(id)a3;
- (void)passwordResetControllerDidSelectClose:(id)a3;
- (void)passwordResetControllerDidSelectOtherUser:(id)a3;
- (void)passwordResetControllerDidSelectPrimaryUser:(id)a3;
- (void)setUpHostProxy;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willShowViewController:(id)a3;
@end

@implementation AKPasswordResetRemoteViewController

- (BOOL)needsOptionsView
{
  v3 = [(AKPasswordResetRemoteViewController *)self context];
  v4 = [(AKAppleIDAuthenticationContext *)v3 username];
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if (v4)
  {
    v9 = [(AKPasswordResetRemoteViewController *)self context];
    v8 = 1;
    v7 = [(AKAppleIDAuthenticationContext *)v9 username];
    v6 = 1;
    v5 = [v7 length] != 0;
  }

  if (v6)
  {
  }

  if (v8)
  {
  }

  return v5;
}

- (AKPasswordResetRemoteViewController)initWithContext:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKPasswordResetRemoteViewController;
  v8 = [(AKPasswordResetRemoteViewController *)&v6 initWithNibName:0 bundle:?];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_context, location[0]);
  }

  v5 = v8;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)viewDidLoad
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = AKPasswordResetRemoteViewController;
  [(AKPasswordResetRemoteViewController *)&v6 viewDidLoad];
  v3 = +[UIColor clearColor];
  v2 = [(AKPasswordResetRemoteViewController *)v8 view];
  [v2 setBackgroundColor:v3];

  v4 = objc_alloc_init(UIViewController);
  [(AKPasswordResetRemoteViewController *)v8 setFullscreenBackDropViewController:?];

  v5 = [(AKPasswordResetRemoteViewController *)v8 fullscreenBackDropViewController];
  [(UIViewController *)v5 setModalPresentationStyle:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13.receiver = self;
  v13.super_class = AKPasswordResetRemoteViewController;
  [(AKPasswordResetRemoteViewController *)&v13 viewWillAppear:a3];
  [(AKRemoteViewController *)v16 setupRemoteProxy];
  v5 = [(AKPasswordResetRemoteViewController *)v16 fullscreenBackDropViewController];
  v6 = [(UIViewController *)v5 presentingViewController];

  if (!v6)
  {
    v3 = v16;
    v4 = [(AKPasswordResetRemoteViewController *)v16 fullscreenBackDropViewController];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100005558;
    v11 = &unk_1000143C8;
    v12 = v16;
    [(AKPasswordResetRemoteViewController *)v3 presentViewController:v4 animated:0 completion:&v7];

    objc_storeStrong(&v12, 0);
  }
}

- (void)setUpHostProxy
{
  v16 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v14 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v14;
    sub_100001814(v13);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Setting up look up host proxy", v13, 2u);
  }

  objc_storeStrong(location, 0);
  objc_initWeak(&from, v16);
  v3 = [(AKRemoteViewController *)v16 lookupConnection];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100005A58;
  v10 = &unk_100014310;
  objc_copyWeak(v11, &from);
  v2 = [(NSXPCConnection *)v3 remoteObjectProxyWithErrorHandler:&v6];
  [(AKPasswordResetRemoteViewController *)v16 setHostProxy:?];

  objc_destroyWeak(v11);
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
    [(AKPasswordResetRemoteViewController *)v27 setContext:v7];

    if (v20)
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100001BA0(v28, v20);
        _os_log_error_impl(&_mh_execute_header, v18, v17, "Context unarchiving error: %@", v28, 0xCu);
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
      _os_log_error_impl(&_mh_execute_header, v5, v6, "Context data missing", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
  }

  if (v25)
  {
    (*(v25 + 2))();
  }

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
  [(AKPasswordResetRemoteViewController *)v3 _passwordResetDidFinishWithResult:0 error:?];

  objc_storeStrong(location, 0);
}

- (void)passwordResetControllerDidSelectPrimaryUser:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    sub_100001814(v8);
    _os_log_impl(&_mh_execute_header, log, type, "Primary user password reset option selected", v8, 2u);
  }

  objc_storeStrong(&v10, 0);
  v3 = v12;
  v5 = [(AKPasswordResetRemoteViewController *)v12 context];
  v4 = [(AKAppleIDAuthenticationContext *)v5 username];
  [(AKPasswordResetRemoteViewController *)v3 _presentPasswordResetFlowForUsername:?];

  objc_storeStrong(location, 0);
}

- (void)passwordResetControllerDidSelectOtherUser:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    sub_100001814(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Different user password reset option selected", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  [(AKPasswordResetRemoteViewController *)v9 _presentPasswordResetFlowForUsername:0];
  objc_storeStrong(location, 0);
}

- (void)passwordResetControllerDidSelectClose:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    sub_100001814(v7);
    _os_log_impl(&_mh_execute_header, log, type, "Closing password reset options screen", v7, 2u);
  }

  objc_storeStrong(&v9, 0);
  v3 = v11;
  v4 = [NSError ak_errorWithCode:-7003];
  [(AKPasswordResetRemoteViewController *)v3 _passwordResetDidFinishWithResult:0 error:?];

  objc_storeStrong(location, 0);
}

- (void)willShowViewController:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [location[0] stopLoading];
  }

  objc_storeStrong(location, 0);
}

- (void)_presentPasswordResetFlowForUsername:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    log = v27;
    type = v26;
    sub_100001814(v25);
    _os_log_impl(&_mh_execute_header, log, type, "Initiating password reset flow from view service", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  v24 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v24 setUsername:location[0]];
  [v24 setIsEphemeral:1];
  [v24 setAuthenticationType:2];
  [v24 setNeedsCredentialRecovery:1];
  v7 = [(AKPasswordResetRemoteViewController *)v29 context];
  [v24 setIsNativeTakeover:{-[AKAppleIDAuthenticationContext isNativeTakeover](v7, "isNativeTakeover")}];

  [v24 setIsRequestedFromOOPViewService:1];
  v8 = [(AKPasswordResetRemoteViewController *)v29 context];
  [v24 setServiceType:{-[AKAppleIDAuthenticationContext serviceType](v8, "serviceType")}];

  v10 = [(AKPasswordResetRemoteViewController *)v29 context];
  v9 = [(AKAppleIDAuthenticationContext *)v10 serviceIdentifier];
  [v24 setServiceIdentifier:?];

  v12 = [(AKPasswordResetRemoteViewController *)v29 context];
  v11 = [(AKAppleIDAuthenticationContext *)v12 httpHeadersForRemoteUI];
  [v24 setHttpHeadersForRemoteUI:?];

  [v24 setShouldPromptForPasswordOnly:0];
  [v24 setIsUsernameEditable:0];
  [v24 setForceInlinePresentation:{-[AKPasswordResetRemoteViewController needsOptionsView](v29, "needsOptionsView")}];
  if ([(AKPasswordResetRemoteViewController *)v29 needsOptionsView])
  {
    v6 = [(AKPasswordResetRemoteViewController *)v29 rootNavigationController];
    [v24 setPresentingViewController:?];
  }

  else
  {
    v5 = [(AKPasswordResetRemoteViewController *)v29 fullscreenBackDropViewController];
    [v24 setPresentingViewController:?];
  }

  [v24 setDelegate:v29];
  objc_initWeak(&from, v29);
  v22 = objc_alloc_init(AKAppleIDAuthenticationController);
  v4 = v22;
  v3 = v24;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1000067E8;
  v19 = &unk_1000145F8;
  objc_copyWeak(v21, &from);
  v20 = v22;
  [v4 authenticateWithContext:v3 completion:&v15];
  objc_storeStrong(&v20, 0);
  objc_destroyWeak(v21);
  objc_storeStrong(&v22, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)_passwordResetDidFinishWithResult:(id)a3 error:(id)a4
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = _AKLogSystem();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    log = v29;
    type = v28;
    sub_100001814(v27);
    _os_log_impl(&_mh_execute_header, log, type, "Password reset flow finished", v27, 2u);
  }

  objc_storeStrong(&v29, 0);
  v26 = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_100002238(v33, location[0], v30);
    _os_log_debug_impl(&_mh_execute_header, v26, v25, "Password reset flow finished with result: %@, error: %@", v33, 0x16u);
  }

  objc_storeStrong(&v26, 0);
  objc_initWeak(&from, v32);
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_1000070EC;
  v21 = &unk_100014620;
  objc_copyWeak(&v22, &from);
  v23 = objc_retainBlock(&v17);
  v4 = [(AKPasswordResetRemoteViewController *)v32 hostProxy];
  v5 = location[0];
  v6 = v30;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000072A8;
  v14 = &unk_100014670;
  objc_copyWeak(v16, &from);
  v15 = v23;
  [(AKPasswordResetPresenterHostProtocol *)v4 passwordResetFinishedWithResult:v5 error:v6 completion:&v10];

  objc_storeStrong(&v15, 0);
  objc_destroyWeak(v16);
  objc_storeStrong(&v23, 0);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

@end