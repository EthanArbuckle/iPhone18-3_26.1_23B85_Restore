@interface AKAuthorizationPresenter
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_callCompletionBlockWithAuthorization:(id)authorization error:(id)error;
- (void)_frontBoardServices_presentAuthorizationWithContext:(id)context client:(id)client completion:(id)completion;
- (void)_remoteListener_presentAuthorizationWithContext:(id)context client:(id)client completion:(id)completion;
- (void)authorizationRequestFinishedWithAuthorization:(id)authorization error:(id)error completion:(id)completion;
- (void)authorizationRequestInitiatedWithUserProvidedInformation:(id)information completion:(id)completion;
- (void)continueFetchingIconWithCompletion:(id)completion;
- (void)dealloc;
- (void)presentAuthorizationWithContext:(id)context client:(id)client completion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation AKAuthorizationPresenter

- (void)presentAuthorizationWithContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = 0;
  objc_storeStrong(&v8, client);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  if (+[AKRemoteViewServiceController shouldUseFrontBoardServicesForAuthorization])
  {
    [(AKAuthorizationPresenter *)selfCopy _frontBoardServices_presentAuthorizationWithContext:location[0] client:v8 completion:v7];
  }

  else
  {
    [(AKAuthorizationPresenter *)selfCopy _remoteListener_presentAuthorizationWithContext:location[0] client:v8 completion:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_remoteListener_presentAuthorizationWithContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v41 = 0;
  objc_storeStrong(&v41, client);
  v40 = 0;
  objc_storeStrong(&v40, completion);
  v39 = 0;
  v37 = 0;
  v22 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&v37];
  objc_storeStrong(&v39, v37);
  v38 = v22;
  if (!v22)
  {
    v36 = _AKLogSystem();
    v35 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v46, v39);
      _os_log_error_impl(&_mh_execute_header, v36, v35, "Context data is nil: %@", v46, 0xCu);
    }

    objc_storeStrong(&v36, 0);
  }

  v34 = objc_alloc_init(NSMutableDictionary);
  [v34 setObject:v38 forKeyedSubscript:@"context"];
  v5 = +[NSXPCListener anonymousListener];
  remoteListener = selfCopy->_remoteListener;
  selfCopy->_remoteListener = v5;
  _objc_release(remoteListener);
  [(NSXPCListener *)selfCopy->_remoteListener setDelegate:selfCopy];
  [(NSXPCListener *)selfCopy->_remoteListener resume];
  [(AKAuthorizationPresenter *)selfCopy setPresentationCompletion:v40];
  credentialRequestContext = [location[0] credentialRequestContext];
  _isRapportLogin = [credentialRequestContext _isRapportLogin];
  _objc_release(credentialRequestContext);
  v33 = _isRapportLogin;
  v32 = _AKLogSiwa();
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006A654(v45, v33 & 1);
    _os_log_impl(&_mh_execute_header, v32, v31, "isRapportLogin %d", v45, 8u);
  }

  objc_storeStrong(&v32, 0);
  if ((v33 & 1) != 0 || !SBSGetScreenLockStatus())
  {
    v7 = [SBSRemoteAlertDefinition alloc];
    v26 = [v7 initWithServiceName:off_1003714B8 viewControllerClassName:off_1003714B0];
    v25 = objc_opt_new();
    endpoint = [(NSXPCListener *)selfCopy->_remoteListener endpoint];
    _endpoint = [(NSXPCListenerEndpoint *)endpoint _endpoint];
    [v25 setXpcEndpoint:?];
    _objc_release(_endpoint);
    _objc_release(endpoint);
    [v25 setUserInfo:v34];
    v24 = objc_opt_new();
    v12 = [SBSRemoteAlertHandle newHandleWithDefinition:v26 configurationContext:v25];
    [(AKAuthorizationPresenter *)selfCopy setRemoteAlertHandle:?];
    _objc_release(v12);
    remoteAlertHandle = [(AKAuthorizationPresenter *)selfCopy remoteAlertHandle];
    [(SBSRemoteAlertHandle *)remoteAlertHandle registerObserver:selfCopy];
    _objc_release(remoteAlertHandle);
    v23 = _AKLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      remoteAlertHandle2 = [(AKAuthorizationPresenter *)selfCopy remoteAlertHandle];
      sub_1000194D4(v44, remoteAlertHandle2);
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Activating handle: %@", v44, 0xCu);
      _objc_release(remoteAlertHandle2);
    }

    objc_storeStrong(&v23, 0);
    remoteAlertHandle3 = [(AKAuthorizationPresenter *)selfCopy remoteAlertHandle];
    [(SBSRemoteAlertHandle *)remoteAlertHandle3 activateWithContext:v24];
    _objc_release(remoteAlertHandle3);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    v27 = 0;
  }

  else
  {
    v30 = _AKLogSiwa();
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v30;
      v17 = v29;
      sub_10001CEEC(v28);
      _os_log_impl(&_mh_execute_header, v16, v17, "Device screen is locked, cancelling authorization.", v28, 2u);
    }

    objc_storeStrong(&v30, 0);
    v14 = v40;
    v15 = [NSError ak_errorWithCode:-7013];
    v14[2](v14, 0);
    _objc_release(v15);
    v27 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, listener);
  v7 = 0;
  objc_storeStrong(&v7, connection);
  v6 = +[AKAuthorizationPresenterHostInterface XPCInterface];
  [v7 setExportedInterface:?];
  _objc_release(v6);
  [v7 setExportedObject:selfCopy];
  [v7 resume];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)authorizationRequestFinishedWithAuthorization:(id)authorization error:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v13 = 0;
  objc_storeStrong(&v13, error);
  v12 = 0;
  objc_storeStrong(&v12, completion);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    type = v10;
    sub_10001CEEC(v9);
    _os_log_impl(&_mh_execute_header, log, type, "Remote view sent a finish event", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  [(AKAuthorizationPresenter *)selfCopy _callCompletionBlockWithAuthorization:location[0] error:v13];
  (*(v12 + 2))(v12, 1, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationRequestInitiatedWithUserProvidedInformation:(id)information completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  v6 = _AKLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v10, location[0]);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remote view sent a user response event: %@", v10, 0xCu);
  }

  objc_storeStrong(&v6, 0);
  authorizationResponseValidator = [(AKAuthorizationPresenter *)selfCopy authorizationResponseValidator];
  authorizationResponseValidator[2](authorizationResponseValidator, location[0], v7);
  _objc_release(authorizationResponseValidator);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)continueFetchingIconWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  fetchIconBlock = [(AKAuthorizationPresenter *)selfCopy fetchIconBlock];
  _objc_release(fetchIconBlock);
  if (fetchIconBlock)
  {
    fetchIconBlock2 = [(AKAuthorizationPresenter *)selfCopy fetchIconBlock];
    fetchIconBlock2[2](fetchIconBlock2, location[0]);
    _objc_release(fetchIconBlock2);
  }

  else
  {
    v3 = location[0];
    v4 = [NSError ak_errorWithCode:-7027];
    v3[2](v3, 0);
    _objc_release(v4);
  }

  objc_storeStrong(location, 0);
}

- (void)_callCompletionBlockWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v7 = 0;
  objc_storeStrong(&v7, error);
  presentationCompletion = [(AKAuthorizationPresenter *)selfCopy presentationCompletion];
  _objc_release(presentationCompletion);
  if (presentationCompletion)
  {
    presentationCompletion2 = [(AKAuthorizationPresenter *)selfCopy presentationCompletion];
    presentationCompletion2[2](presentationCompletion2, location[0], v7);
    _objc_release(presentationCompletion2);
  }

  [(AKAuthorizationPresenter *)selfCopy setPresentationCompletion:?];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activate);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) activated.", v5, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, deactivate);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v8, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) deactivated.", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = selfCopy;
  v4 = [NSError ak_errorWithCode:-7034];
  [(AKAuthorizationPresenter *)v3 _callCompletionBlockWithAuthorization:0 error:?];
  _objc_release(v4);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handle);
  v15 = 0;
  objc_storeStrong(&v15, error);
  domain = [v15 domain];
  v11 = 0;
  if ([domain isEqualToString:SBSRemoteAlertHandleInvalidationErrorDomain])
  {
    v8 = 1;
    if ([v15 code] != 4)
    {
      v8 = [v15 code] == 5;
    }

    v11 = v8;
  }

  _objc_release(domain);
  if (v11)
  {
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v19, location[0]);
      _os_log_impl(&_mh_execute_header, v14, v13, "Alert handle (%@) deactivated by request.", v19, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    v6 = selfCopy;
    v7 = [NSError ak_errorWithCode:-7003];
    [(AKAuthorizationPresenter *)v6 _callCompletionBlockWithAuthorization:0 error:?];
    _objc_release(v7);
  }

  else
  {
    v12 = _AKLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v18, location[0], v15);
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Alert handle (%@) interrupted with error: %@", v18, 0x16u);
    }

    objc_storeStrong(&v12, 0);
    v4 = selfCopy;
    v5 = [NSError ak_errorWithCode:-7034 underlyingError:v15];
    [(AKAuthorizationPresenter *)v4 _callCompletionBlockWithAuthorization:0 error:?];
    _objc_release(v5);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v5 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v8, selfCopy);
    _os_log_debug_impl(&_mh_execute_header, location[0], v5, "%@ deallocated.", v8, 0xCu);
  }

  objc_storeStrong(location, 0);
  remoteAlertHandle = [(AKAuthorizationPresenter *)selfCopy remoteAlertHandle];
  [(SBSRemoteAlertHandle *)remoteAlertHandle unregisterObserver:selfCopy];
  _objc_release(remoteAlertHandle);
  remoteAlertHandle2 = [(AKAuthorizationPresenter *)selfCopy remoteAlertHandle];
  [(SBSRemoteAlertHandle *)remoteAlertHandle2 invalidate];
  _objc_release(remoteAlertHandle2);
  v4.receiver = selfCopy;
  v4.super_class = AKAuthorizationPresenter;
  [(AKAuthorizationPresenter *)&v4 dealloc];
}

- (void)_frontBoardServices_presentAuthorizationWithContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v37 = 0;
  objc_storeStrong(&v37, client);
  v36 = 0;
  objc_storeStrong(&v36, completion);
  v35 = 0;
  credentialRequestContext = [location[0] credentialRequestContext];
  _isWebLogin = [credentialRequestContext _isWebLogin];
  _objc_release(credentialRequestContext);
  if (_isWebLogin)
  {
    credentialRequestContext2 = [location[0] credentialRequestContext];
    _callerBundleID = [credentialRequestContext2 _callerBundleID];
    v6 = v35;
    v35 = _callerBundleID;
    _objc_release(v6);
    _objc_release(credentialRequestContext2);
  }

  else
  {
    bundleID = [location[0] bundleID];
    v8 = v35;
    v35 = bundleID;
    _objc_release(v8);
  }

  v34 = 0;
  if (v35)
  {
    credentialRequestContext3 = [location[0] credentialRequestContext];
    _callerSceneID = [credentialRequestContext3 _callerSceneID];
    v9 = [AKRemoteViewServiceConfiguration configurationForHostWithBundleID:v35 sceneID:?];
    v10 = v34;
    v34 = v9;
    _objc_release(v10);
    _objc_release(_callerSceneID);
    _objc_release(credentialRequestContext3);
  }

  else
  {
    v11 = +[AKRemoteViewServiceConfiguration defaultConfiguration];
    v12 = v34;
    v34 = v11;
    _objc_release(v12);
  }

  v33 = _AKLogSiwa();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    hostBundleID = [v34 hostBundleID];
    sub_1000194D4(v40, hostBundleID);
    _os_log_impl(&_mh_execute_header, v33, v32, "Launching remote view service for authorization with host bundle ID: %@", v40, 0xCu);
    _objc_release(hostBundleID);
  }

  objc_storeStrong(&v33, 0);
  v13 = [AKRemoteViewServiceController alloc];
  v31 = [(AKRemoteViewServiceController *)v13 initWithConfiguration:v34];
  v14 = v31;
  v23 = _NSConcreteStackBlock;
  v24 = -1073741824;
  v25 = 0;
  v26 = sub_10010F4EC;
  v27 = &unk_1003238E8;
  v28 = _objc_retain(location[0]);
  v30 = _objc_retain(v36);
  v29 = _objc_retain(selfCopy);
  [(AKRemoteViewServiceController *)v14 launchViewServiceForAuthorizationWithCompletionHandler:&v23];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

@end