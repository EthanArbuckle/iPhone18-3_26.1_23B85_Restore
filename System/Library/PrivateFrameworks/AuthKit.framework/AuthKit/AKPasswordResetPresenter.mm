@interface AKPasswordResetPresenter
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_launchViewServiceWithUserInfo:(id)info;
- (void)dealloc;
- (void)passwordResetFinishedWithResult:(id)result error:(id)error completion:(id)completion;
- (void)presentWithContext:(id)context completion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation AKPasswordResetPresenter

- (void)presentWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v33 = 0;
  objc_storeStrong(&v33, completion);
  v18 = +[AKFeatureManager sharedManager];
  isForgotPasswordNativeTakeoverEnabled = [v18 isForgotPasswordNativeTakeoverEnabled];
  _objc_release(v18);
  if (isForgotPasswordNativeTakeoverEnabled)
  {
    if ([(AKPasswordResetPresenter *)selfCopy isPasswordResetRequestInProgress])
    {
      v28 = _AKLogSystem();
      v27 = 2;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v11 = v28;
        v12 = v27;
        sub_10001CEEC(v26);
        _os_log_debug_impl(&_mh_execute_header, v11, v12, "Password reset request already in progress, cannot perform another request at this time", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
      if (v33)
      {
        v9 = v33;
        v10 = [NSError ak_errorWithCode:-7113];
        v9[2](v9, 0);
        _objc_release(v10);
      }

      v29 = 1;
    }

    else
    {
      [(AKPasswordResetPresenter *)selfCopy setIsPasswordResetRequestInProgress:1];
      v25 = 0;
      v23 = 0;
      v8 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&v23];
      objc_storeStrong(&v25, v23);
      v24 = v8;
      if (!v8)
      {
        v22 = _AKLogSystem();
        v21 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v36, v25);
          _os_log_error_impl(&_mh_execute_header, v22, v21, "Context data is nil: %@", v36, 0xCu);
        }

        objc_storeStrong(&v22, 0);
      }

      v20 = objc_alloc_init(NSMutableDictionary);
      [v20 setObject:v24 forKeyedSubscript:@"context"];
      v4 = +[NSXPCListener anonymousListener];
      [(AKPasswordResetPresenter *)selfCopy setRemoteListener:?];
      _objc_release(v4);
      v5 = selfCopy;
      remoteListener = [(AKPasswordResetPresenter *)selfCopy remoteListener];
      [(NSXPCListener *)remoteListener setDelegate:v5];
      _objc_release(remoteListener);
      remoteListener2 = [(AKPasswordResetPresenter *)selfCopy remoteListener];
      [(NSXPCListener *)remoteListener2 resume];
      _objc_release(remoteListener2);
      [(AKPasswordResetPresenter *)selfCopy setResetCompletion:v33];
      [(AKPasswordResetPresenter *)selfCopy _launchViewServiceWithUserInfo:v20];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
      v29 = 0;
    }
  }

  else
  {
    v32 = _AKLogSystem();
    v31 = 2;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      log = v32;
      type = v31;
      sub_10001CEEC(v30);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Forgot password native takeover feature is not enable, so not presenting the view", v30, 2u);
    }

    objc_storeStrong(&v32, 0);
    if (v33)
    {
      v13 = v33;
      v14 = [NSError ak_errorWithCode:-7027];
      v13[2](v13, 0);
      _objc_release(v14);
    }

    v29 = 1;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)_launchViewServiceWithUserInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v3 = [SBSRemoteAlertDefinition alloc];
  v14 = [v3 initWithServiceName:off_100370728 viewControllerClassName:off_100370730];
  v13 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  remoteListener = [(AKPasswordResetPresenter *)selfCopy remoteListener];
  endpoint = [(NSXPCListener *)remoteListener endpoint];
  _endpoint = [(NSXPCListenerEndpoint *)endpoint _endpoint];
  [v13 setXpcEndpoint:?];
  _objc_release(_endpoint);
  _objc_release(endpoint);
  _objc_release(remoteListener);
  [v13 setUserInfo:location[0]];
  v12 = objc_alloc_init(SBSRemoteAlertActivationContext);
  v9 = [SBSRemoteAlertHandle newHandleWithDefinition:v14 configurationContext:v13];
  [(AKPasswordResetPresenter *)selfCopy setRemoteAlertHandle:?];
  _objc_release(v9);
  remoteAlertHandle = [(AKPasswordResetPresenter *)selfCopy remoteAlertHandle];
  [(SBSRemoteAlertHandle *)remoteAlertHandle registerObserver:selfCopy];
  _objc_release(remoteAlertHandle);
  v11 = _AKLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    remoteAlertHandle2 = [(AKPasswordResetPresenter *)selfCopy remoteAlertHandle];
    sub_1000194D4(v17, remoteAlertHandle2);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Activating handle: %@", v17, 0xCu);
    _objc_release(remoteAlertHandle2);
  }

  objc_storeStrong(&v11, 0);
  remoteAlertHandle3 = [(AKPasswordResetPresenter *)selfCopy remoteAlertHandle];
  [(SBSRemoteAlertHandle *)remoteAlertHandle3 activateWithContext:v12];
  _objc_release(remoteAlertHandle3);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
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
  v6 = +[AKPasswordResetPresenterHostInterface XPCInterface];
  [v7 setExportedInterface:?];
  _objc_release(v6);
  [v7 setExportedObject:selfCopy];
  [v7 resume];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)passwordResetFinishedWithResult:(id)result error:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  v14 = 0;
  objc_storeStrong(&v14, error);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  v12 = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (v14)
    {
      v5 = @"NO";
    }

    else
    {
      v5 = @"YES";
    }

    sub_1000194D4(v18, v5);
    _os_log_impl(&_mh_execute_header, v12, v11, "Password reset finished with result is success: %@", v18, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v17, location[0], v14);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Password reset result %@, error: %@", v17, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  resetCompletion = [(AKPasswordResetPresenter *)selfCopy resetCompletion];
  _objc_release(resetCompletion);
  if (resetCompletion)
  {
    resetCompletion2 = [(AKPasswordResetPresenter *)selfCopy resetCompletion];
    resetCompletion2[2](resetCompletion2, location[0], v14);
    _objc_release(resetCompletion2);
  }

  [(AKPasswordResetPresenter *)selfCopy setResetCompletion:0];
  if (v13)
  {
    (*(v13 + 2))(v13, 1, 0);
  }

  [(AKPasswordResetPresenter *)selfCopy setIsPasswordResetRequestInProgress:0];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
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
  v7 = _AKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v10, location[0]);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Password reset alert handle (%@) deactivated.", v10, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  resetCompletion = [(AKPasswordResetPresenter *)selfCopy resetCompletion];
  _objc_release(resetCompletion);
  if (resetCompletion)
  {
    resetCompletion2 = [(AKPasswordResetPresenter *)selfCopy resetCompletion];
    v4 = [NSError ak_errorWithCode:-7034];
    resetCompletion2[2](resetCompletion2, 0);
    _objc_release(v4);
    _objc_release(resetCompletion2);
  }

  [(AKPasswordResetPresenter *)selfCopy setResetCompletion:0];
  [(AKPasswordResetPresenter *)selfCopy setIsPasswordResetRequestInProgress:0];
  objc_storeStrong(location, obj);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handle);
  v19 = 0;
  objc_storeStrong(&v19, error);
  v18 = 0;
  domain = [v19 domain];
  v14 = 0;
  if ([domain isEqualToString:SBSRemoteAlertHandleInvalidationErrorDomain])
  {
    v11 = 1;
    if ([v19 code] != 4)
    {
      v11 = [v19 code] == 5;
    }

    v14 = v11;
  }

  _objc_release(domain);
  if (v14)
  {
    v17 = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v23, location[0]);
      _os_log_impl(&_mh_execute_header, v17, v16, "Password reset alert handle (%@) deactivated by request.", v23, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    v4 = [NSError ak_errorWithCode:-7003];
    v5 = v18;
    v18 = v4;
    _objc_release(v5);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v22, location[0], v19);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Password reset alert handle (%@) interrupted with error: %@", v22, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v6 = [NSError ak_errorWithCode:-7034 underlyingError:v19];
    v7 = v18;
    v18 = v6;
    _objc_release(v7);
  }

  resetCompletion = [(AKPasswordResetPresenter *)selfCopy resetCompletion];
  _objc_release(resetCompletion);
  if (resetCompletion)
  {
    resetCompletion2 = [(AKPasswordResetPresenter *)selfCopy resetCompletion];
    resetCompletion2[2](resetCompletion2, 0, v18);
    _objc_release(resetCompletion2);
  }

  [(AKPasswordResetPresenter *)selfCopy setResetCompletion:0];
  [(AKPasswordResetPresenter *)selfCopy setIsPasswordResetRequestInProgress:0];
  objc_storeStrong(&v18, v8);
  objc_storeStrong(&v19, v8);
  objc_storeStrong(location, v8);
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
  remoteAlertHandle = [(AKPasswordResetPresenter *)selfCopy remoteAlertHandle];
  [(SBSRemoteAlertHandle *)remoteAlertHandle unregisterObserver:selfCopy];
  _objc_release(remoteAlertHandle);
  remoteAlertHandle2 = [(AKPasswordResetPresenter *)selfCopy remoteAlertHandle];
  [(SBSRemoteAlertHandle *)remoteAlertHandle2 invalidate];
  _objc_release(remoteAlertHandle2);
  v4.receiver = selfCopy;
  v4.super_class = AKPasswordResetPresenter;
  [(AKPasswordResetPresenter *)&v4 dealloc];
}

@end