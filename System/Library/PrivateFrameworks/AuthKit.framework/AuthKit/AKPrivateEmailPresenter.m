@interface AKPrivateEmailPresenter
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_callCompletionBlockWithEmail:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)presentPrivateEmailWithContext:(id)a3 client:(id)a4 completion:(id)a5;
- (void)privateEmailFetchCompletedWith:(id)a3 error:(id)a4 completion:(id)a5;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation AKPrivateEmailPresenter

- (void)presentPrivateEmailWithContext:(id)a3 client:(id)a4 completion:(id)a5
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = 0;
  objc_storeStrong(&v33, a5);
  v32 = objc_alloc_init(NSMutableDictionary);
  v20 = [location[0] altDSID];
  [v32 setObject:? forKeyedSubscript:?];
  _objc_release(v20);
  v21 = [location[0] key];
  [v32 setObject:? forKeyedSubscript:?];
  _objc_release(v21);
  v22 = [location[0] clientAppBundleId];
  _objc_release(v22);
  if (v22)
  {
    v17 = [location[0] clientAppBundleId];
    [v32 setObject:? forKeyedSubscript:?];
    _objc_release(v17);
  }

  v31 = _AKLogHme();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v37, v32);
    _os_log_impl(&_mh_execute_header, v31, v30, "Context info %@", v37, 0xCu);
  }

  objc_storeStrong(&v31, 0);
  v5 = +[NSXPCListener anonymousListener];
  remoteListener = v36->_remoteListener;
  v36->_remoteListener = v5;
  _objc_release(remoteListener);
  [(NSXPCListener *)v36->_remoteListener setDelegate:v36];
  [(NSXPCListener *)v36->_remoteListener resume];
  [(AKPrivateEmailPresenter *)v36 setPrivateEmailCompletion:v33];
  if (SBSGetScreenLockStatus())
  {
    v29 = _AKLogSystem();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v29;
      v16 = v28;
      sub_10001CEEC(v27);
      _os_log_impl(&_mh_execute_header, v15, v16, "Device screen is locked, cancelling authorization.", v27, 2u);
    }

    objc_storeStrong(&v29, 0);
    v13 = v33;
    v14 = [NSError ak_errorWithCode:-7013];
    v13[2](v13, 0);
    _objc_release(v14);
    v26 = 1;
  }

  else
  {
    v7 = [SBSRemoteAlertDefinition alloc];
    v25 = [v7 initWithServiceName:off_100370FC8 viewControllerClassName:off_100370FC0];
    v24 = objc_opt_new();
    v9 = [(NSXPCListener *)v36->_remoteListener endpoint];
    v8 = [(NSXPCListenerEndpoint *)v9 _endpoint];
    [v24 setXpcEndpoint:?];
    _objc_release(v8);
    _objc_release(v9);
    [v24 setUserInfo:v32];
    v23 = objc_opt_new();
    v10 = [SBSRemoteAlertHandle newHandleWithDefinition:v25 configurationContext:v24];
    [(AKPrivateEmailPresenter *)v36 setRemoteAlertHandle:?];
    _objc_release(v10);
    v11 = [(AKPrivateEmailPresenter *)v36 remoteAlertHandle];
    [(SBSRemoteAlertHandle *)v11 registerObserver:v36];
    _objc_release(v11);
    v12 = [(AKPrivateEmailPresenter *)v36 remoteAlertHandle];
    [(SBSRemoteAlertHandle *)v12 activateWithContext:v23];
    _objc_release(v12);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    v26 = 0;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)privateEmailFetchCompletedWith:(id)a3 error:(id)a4 completion:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7 = _AKLogHme();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v12, location[0], v9);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received: %@ (%@)", v12, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  [(AKPrivateEmailPresenter *)v11 _callCompletionBlockWithEmail:location[0] error:v9];
  (*(v8 + 2))(v8, 1, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
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
  v6 = +[AKPrivateEmailPresenterHostInterface XPCInterface];
  [v7 setExportedInterface:?];
  _objc_release(v6);
  [v7 setExportedObject:v9];
  [v7 resume];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)_callCompletionBlockWithEmail:(id)a3 error:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [(AKPrivateEmailPresenter *)v9 privateEmailCompletion];
  _objc_release(v6);
  if (v6)
  {
    v4 = [(AKPrivateEmailPresenter *)v9 privateEmailCompletion];
    v4[2](v4, location[0], v7);
    _objc_release(v4);
  }

  [(AKPrivateEmailPresenter *)v9 setPrivateEmailCompletion:?];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogHme();
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
  oslog = _AKLogHme();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v8, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) deactivated.", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = v7;
  v4 = [NSError ak_errorWithCode:-7034];
  [(AKPrivateEmailPresenter *)v3 _callCompletionBlockWithEmail:0 error:?];
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
    v14 = _AKLogHme();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v19, location[0]);
      _os_log_impl(&_mh_execute_header, v14, v13, "Alert handle (%@) deactivated by request.", v19, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    v6 = v17;
    v7 = [NSError ak_errorWithCode:-7003];
    [(AKPrivateEmailPresenter *)v6 _callCompletionBlockWithEmail:0 error:?];
    _objc_release(v7);
  }

  else
  {
    v12 = _AKLogHme();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v18, location[0], v15);
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Alert handle (%@) interrupted with error: %@", v18, 0x16u);
    }

    objc_storeStrong(&v12, 0);
    v4 = v17;
    v5 = [NSError ak_errorWithCode:-7034 underlyingError:v15];
    [(AKPrivateEmailPresenter *)v4 _callCompletionBlockWithEmail:0 error:?];
    _objc_release(v5);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v2 = [(AKPrivateEmailPresenter *)self remoteAlertHandle];
  [(SBSRemoteAlertHandle *)v2 unregisterObserver:v6];
  _objc_release(v2);
  v3 = [(AKPrivateEmailPresenter *)v6 remoteAlertHandle];
  [(SBSRemoteAlertHandle *)v3 invalidate];
  _objc_release(v3);
  v4.receiver = v6;
  v4.super_class = AKPrivateEmailPresenter;
  [(AKPrivateEmailPresenter *)&v4 dealloc];
}

@end