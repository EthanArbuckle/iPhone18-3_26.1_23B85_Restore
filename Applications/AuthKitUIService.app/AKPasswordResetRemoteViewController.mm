@interface AKPasswordResetRemoteViewController
- (AKPasswordResetRemoteViewController)initWithContext:(id)context;
- (BOOL)needsOptionsView;
- (void)_passwordResetDidFinishWithResult:(id)result error:(id)error;
- (void)_presentPasswordResetFlowForUsername:(id)username;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleCancellation:(id)cancellation;
- (void)passwordResetControllerDidSelectClose:(id)close;
- (void)passwordResetControllerDidSelectOtherUser:(id)user;
- (void)passwordResetControllerDidSelectPrimaryUser:(id)user;
- (void)setUpHostProxy;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willShowViewController:(id)controller;
@end

@implementation AKPasswordResetRemoteViewController

- (BOOL)needsOptionsView
{
  context = [(AKPasswordResetRemoteViewController *)self context];
  username = [(AKAppleIDAuthenticationContext *)context username];
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if (username)
  {
    context2 = [(AKPasswordResetRemoteViewController *)self context];
    v8 = 1;
    username2 = [(AKAppleIDAuthenticationContext *)context2 username];
    v6 = 1;
    v5 = [username2 length] != 0;
  }

  if (v6)
  {
  }

  if (v8)
  {
  }

  return v5;
}

- (AKPasswordResetRemoteViewController)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKPasswordResetRemoteViewController;
  selfCopy = [(AKPasswordResetRemoteViewController *)&v6 initWithNibName:0 bundle:?];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_context, location[0]);
  }

  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = AKPasswordResetRemoteViewController;
  [(AKPasswordResetRemoteViewController *)&v6 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(AKPasswordResetRemoteViewController *)selfCopy view];
  [view setBackgroundColor:v3];

  v4 = objc_alloc_init(UIViewController);
  [(AKPasswordResetRemoteViewController *)selfCopy setFullscreenBackDropViewController:?];

  fullscreenBackDropViewController = [(AKPasswordResetRemoteViewController *)selfCopy fullscreenBackDropViewController];
  [(UIViewController *)fullscreenBackDropViewController setModalPresentationStyle:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v15 = a2;
  appearCopy = appear;
  v13.receiver = self;
  v13.super_class = AKPasswordResetRemoteViewController;
  [(AKPasswordResetRemoteViewController *)&v13 viewWillAppear:appear];
  [(AKRemoteViewController *)selfCopy setupRemoteProxy];
  fullscreenBackDropViewController = [(AKPasswordResetRemoteViewController *)selfCopy fullscreenBackDropViewController];
  presentingViewController = [(UIViewController *)fullscreenBackDropViewController presentingViewController];

  if (!presentingViewController)
  {
    v3 = selfCopy;
    fullscreenBackDropViewController2 = [(AKPasswordResetRemoteViewController *)selfCopy fullscreenBackDropViewController];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100005558;
    v11 = &unk_1000143C8;
    v12 = selfCopy;
    [(AKPasswordResetRemoteViewController *)v3 presentViewController:fullscreenBackDropViewController2 animated:0 completion:&v7];

    objc_storeStrong(&v12, 0);
  }
}

- (void)setUpHostProxy
{
  selfCopy = self;
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
  objc_initWeak(&from, selfCopy);
  lookupConnection = [(AKRemoteViewController *)selfCopy lookupConnection];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100005A58;
  v10 = &unk_100014310;
  objc_copyWeak(v11, &from);
  v2 = [(NSXPCConnection *)lookupConnection remoteObjectProxyWithErrorHandler:&v6];
  [(AKPasswordResetRemoteViewController *)selfCopy setHostProxy:?];

  objc_destroyWeak(v11);
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
    [(AKPasswordResetRemoteViewController *)selfCopy setContext:v7];

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

- (void)handleCancellation:(id)cancellation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancellation);
  v3 = selfCopy;
  v4 = [NSError ak_errorWithCode:-7003];
  [(AKPasswordResetRemoteViewController *)v3 _passwordResetDidFinishWithResult:0 error:?];

  objc_storeStrong(location, 0);
}

- (void)passwordResetControllerDidSelectPrimaryUser:(id)user
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, user);
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
  v3 = selfCopy;
  context = [(AKPasswordResetRemoteViewController *)selfCopy context];
  username = [(AKAppleIDAuthenticationContext *)context username];
  [(AKPasswordResetRemoteViewController *)v3 _presentPasswordResetFlowForUsername:?];

  objc_storeStrong(location, 0);
}

- (void)passwordResetControllerDidSelectOtherUser:(id)user
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, user);
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
  [(AKPasswordResetRemoteViewController *)selfCopy _presentPasswordResetFlowForUsername:0];
  objc_storeStrong(location, 0);
}

- (void)passwordResetControllerDidSelectClose:(id)close
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, close);
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
  v3 = selfCopy;
  v4 = [NSError ak_errorWithCode:-7003];
  [(AKPasswordResetRemoteViewController *)v3 _passwordResetDidFinishWithResult:0 error:?];

  objc_storeStrong(location, 0);
}

- (void)willShowViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [location[0] stopLoading];
  }

  objc_storeStrong(location, 0);
}

- (void)_presentPasswordResetFlowForUsername:(id)username
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
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
  context = [(AKPasswordResetRemoteViewController *)selfCopy context];
  [v24 setIsNativeTakeover:{-[AKAppleIDAuthenticationContext isNativeTakeover](context, "isNativeTakeover")}];

  [v24 setIsRequestedFromOOPViewService:1];
  context2 = [(AKPasswordResetRemoteViewController *)selfCopy context];
  [v24 setServiceType:{-[AKAppleIDAuthenticationContext serviceType](context2, "serviceType")}];

  context3 = [(AKPasswordResetRemoteViewController *)selfCopy context];
  serviceIdentifier = [(AKAppleIDAuthenticationContext *)context3 serviceIdentifier];
  [v24 setServiceIdentifier:?];

  context4 = [(AKPasswordResetRemoteViewController *)selfCopy context];
  httpHeadersForRemoteUI = [(AKAppleIDAuthenticationContext *)context4 httpHeadersForRemoteUI];
  [v24 setHttpHeadersForRemoteUI:?];

  [v24 setShouldPromptForPasswordOnly:0];
  [v24 setIsUsernameEditable:0];
  [v24 setForceInlinePresentation:{-[AKPasswordResetRemoteViewController needsOptionsView](selfCopy, "needsOptionsView")}];
  if ([(AKPasswordResetRemoteViewController *)selfCopy needsOptionsView])
  {
    rootNavigationController = [(AKPasswordResetRemoteViewController *)selfCopy rootNavigationController];
    [v24 setPresentingViewController:?];
  }

  else
  {
    fullscreenBackDropViewController = [(AKPasswordResetRemoteViewController *)selfCopy fullscreenBackDropViewController];
    [v24 setPresentingViewController:?];
  }

  [v24 setDelegate:selfCopy];
  objc_initWeak(&from, selfCopy);
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

- (void)_passwordResetDidFinishWithResult:(id)result error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  v30 = 0;
  objc_storeStrong(&v30, error);
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
  objc_initWeak(&from, selfCopy);
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_1000070EC;
  v21 = &unk_100014620;
  objc_copyWeak(&v22, &from);
  v23 = objc_retainBlock(&v17);
  hostProxy = [(AKPasswordResetRemoteViewController *)selfCopy hostProxy];
  v5 = location[0];
  v6 = v30;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000072A8;
  v14 = &unk_100014670;
  objc_copyWeak(v16, &from);
  v15 = v23;
  [(AKPasswordResetPresenterHostProtocol *)hostProxy passwordResetFinishedWithResult:v5 error:v6 completion:&v10];

  objc_storeStrong(&v15, 0);
  objc_destroyWeak(v16);
  objc_storeStrong(&v23, 0);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

@end