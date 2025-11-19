@interface AKAuthorizationPresenter
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_callCompletionBlockWithAuthorization:(id)a3 error:(id)a4;
- (void)_frontBoardServices_presentAuthorizationWithContext:(id)a3 client:(id)a4 completion:(id)a5;
- (void)_remoteListener_presentAuthorizationWithContext:(id)a3 client:(id)a4 completion:(id)a5;
- (void)authorizationRequestFinishedWithAuthorization:(id)a3 error:(id)a4 completion:(id)a5;
- (void)authorizationRequestInitiatedWithUserProvidedInformation:(id)a3 completion:(id)a4;
- (void)continueFetchingIconWithCompletion:(id)a3;
- (void)dealloc;
- (void)presentAuthorizationWithContext:(id)a3 client:(id)a4 completion:(id)a5;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation AKAuthorizationPresenter

- (void)presentAuthorizationWithContext:(id)a3 client:(id)a4 completion:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  if (+[AKRemoteViewServiceController shouldUseFrontBoardServicesForAuthorization])
  {
    [(AKAuthorizationPresenter *)v10 _frontBoardServices_presentAuthorizationWithContext:location[0] client:v8 completion:v7];
  }

  else
  {
    [(AKAuthorizationPresenter *)v10 _remoteListener_presentAuthorizationWithContext:location[0] client:v8 completion:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_remoteListener_presentAuthorizationWithContext:(id)a3 client:(id)a4 completion:(id)a5
{
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = 0;
  objc_storeStrong(&v41, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
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
  remoteListener = v43->_remoteListener;
  v43->_remoteListener = v5;
  _objc_release(remoteListener);
  [(NSXPCListener *)v43->_remoteListener setDelegate:v43];
  [(NSXPCListener *)v43->_remoteListener resume];
  [(AKAuthorizationPresenter *)v43 setPresentationCompletion:v40];
  v18 = [location[0] credentialRequestContext];
  v19 = [v18 _isRapportLogin];
  _objc_release(v18);
  v33 = v19;
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
    v11 = [(NSXPCListener *)v43->_remoteListener endpoint];
    v10 = [(NSXPCListenerEndpoint *)v11 _endpoint];
    [v25 setXpcEndpoint:?];
    _objc_release(v10);
    _objc_release(v11);
    [v25 setUserInfo:v34];
    v24 = objc_opt_new();
    v12 = [SBSRemoteAlertHandle newHandleWithDefinition:v26 configurationContext:v25];
    [(AKAuthorizationPresenter *)v43 setRemoteAlertHandle:?];
    _objc_release(v12);
    v13 = [(AKAuthorizationPresenter *)v43 remoteAlertHandle];
    [(SBSRemoteAlertHandle *)v13 registerObserver:v43];
    _objc_release(v13);
    v23 = _AKLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(AKAuthorizationPresenter *)v43 remoteAlertHandle];
      sub_1000194D4(v44, v9);
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Activating handle: %@", v44, 0xCu);
      _objc_release(v9);
    }

    objc_storeStrong(&v23, 0);
    v8 = [(AKAuthorizationPresenter *)v43 remoteAlertHandle];
    [(SBSRemoteAlertHandle *)v8 activateWithContext:v24];
    _objc_release(v8);
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = +[AKAuthorizationPresenterHostInterface XPCInterface];
  [v7 setExportedInterface:?];
  _objc_release(v6);
  [v7 setExportedObject:v9];
  [v7 resume];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)authorizationRequestFinishedWithAuthorization:(id)a3 error:(id)a4 completion:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
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
  [(AKAuthorizationPresenter *)v15 _callCompletionBlockWithAuthorization:location[0] error:v13];
  (*(v12 + 2))(v12, 1, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationRequestInitiatedWithUserProvidedInformation:(id)a3 completion:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = _AKLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v10, location[0]);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remote view sent a user response event: %@", v10, 0xCu);
  }

  objc_storeStrong(&v6, 0);
  v4 = [(AKAuthorizationPresenter *)v9 authorizationResponseValidator];
  v4[2](v4, location[0], v7);
  _objc_release(v4);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)continueFetchingIconWithCompletion:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(AKAuthorizationPresenter *)v8 fetchIconBlock];
  _objc_release(v6);
  if (v6)
  {
    v5 = [(AKAuthorizationPresenter *)v8 fetchIconBlock];
    v5[2](v5, location[0]);
    _objc_release(v5);
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

- (void)_callCompletionBlockWithAuthorization:(id)a3 error:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [(AKAuthorizationPresenter *)v9 presentationCompletion];
  _objc_release(v6);
  if (v6)
  {
    v4 = [(AKAuthorizationPresenter *)v9 presentationCompletion];
    v4[2](v4, location[0], v7);
    _objc_release(v4);
  }

  [(AKAuthorizationPresenter *)v9 setPresentationCompletion:?];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) activated.", v5, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v8, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) deactivated.", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = v7;
  v4 = [NSError ak_errorWithCode:-7034];
  [(AKAuthorizationPresenter *)v3 _callCompletionBlockWithAuthorization:0 error:?];
  _objc_release(v4);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v10 = [v15 domain];
  v11 = 0;
  if ([v10 isEqualToString:SBSRemoteAlertHandleInvalidationErrorDomain])
  {
    v8 = 1;
    if ([v15 code] != 4)
    {
      v8 = [v15 code] == 5;
    }

    v11 = v8;
  }

  _objc_release(v10);
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
    v6 = v17;
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
    v4 = v17;
    v5 = [NSError ak_errorWithCode:-7034 underlyingError:v15];
    [(AKAuthorizationPresenter *)v4 _callCompletionBlockWithAuthorization:0 error:?];
    _objc_release(v5);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  v7 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v5 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v8, v7);
    _os_log_debug_impl(&_mh_execute_header, location[0], v5, "%@ deallocated.", v8, 0xCu);
  }

  objc_storeStrong(location, 0);
  v2 = [(AKAuthorizationPresenter *)v7 remoteAlertHandle];
  [(SBSRemoteAlertHandle *)v2 unregisterObserver:v7];
  _objc_release(v2);
  v3 = [(AKAuthorizationPresenter *)v7 remoteAlertHandle];
  [(SBSRemoteAlertHandle *)v3 invalidate];
  _objc_release(v3);
  v4.receiver = v7;
  v4.super_class = AKAuthorizationPresenter;
  [(AKAuthorizationPresenter *)&v4 dealloc];
}

- (void)_frontBoardServices_presentAuthorizationWithContext:(id)a3 client:(id)a4 completion:(id)a5
{
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = 0;
  objc_storeStrong(&v36, a5);
  v35 = 0;
  v21 = [location[0] credentialRequestContext];
  v22 = [v21 _isWebLogin];
  _objc_release(v21);
  if (v22)
  {
    v18 = [location[0] credentialRequestContext];
    v5 = [v18 _callerBundleID];
    v6 = v35;
    v35 = v5;
    _objc_release(v6);
    _objc_release(v18);
  }

  else
  {
    v7 = [location[0] bundleID];
    v8 = v35;
    v35 = v7;
    _objc_release(v8);
  }

  v34 = 0;
  if (v35)
  {
    v17 = [location[0] credentialRequestContext];
    v16 = [v17 _callerSceneID];
    v9 = [AKRemoteViewServiceConfiguration configurationForHostWithBundleID:v35 sceneID:?];
    v10 = v34;
    v34 = v9;
    _objc_release(v10);
    _objc_release(v16);
    _objc_release(v17);
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
    v15 = [v34 hostBundleID];
    sub_1000194D4(v40, v15);
    _os_log_impl(&_mh_execute_header, v33, v32, "Launching remote view service for authorization with host bundle ID: %@", v40, 0xCu);
    _objc_release(v15);
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
  v29 = _objc_retain(v39);
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