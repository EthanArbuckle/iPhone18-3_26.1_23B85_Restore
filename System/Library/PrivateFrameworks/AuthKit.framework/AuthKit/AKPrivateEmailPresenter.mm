@interface AKPrivateEmailPresenter
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_callCompletionBlockWithEmail:(id)email error:(id)error;
- (void)dealloc;
- (void)presentPrivateEmailWithContext:(id)context client:(id)client completion:(id)completion;
- (void)privateEmailFetchCompletedWith:(id)with error:(id)error completion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation AKPrivateEmailPresenter

- (void)presentPrivateEmailWithContext:(id)context client:(id)client completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v34 = 0;
  objc_storeStrong(&v34, client);
  v33 = 0;
  objc_storeStrong(&v33, completion);
  v32 = objc_alloc_init(NSMutableDictionary);
  altDSID = [location[0] altDSID];
  [v32 setObject:? forKeyedSubscript:?];
  _objc_release(altDSID);
  v21 = [location[0] key];
  [v32 setObject:? forKeyedSubscript:?];
  _objc_release(v21);
  clientAppBundleId = [location[0] clientAppBundleId];
  _objc_release(clientAppBundleId);
  if (clientAppBundleId)
  {
    clientAppBundleId2 = [location[0] clientAppBundleId];
    [v32 setObject:? forKeyedSubscript:?];
    _objc_release(clientAppBundleId2);
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
  remoteListener = selfCopy->_remoteListener;
  selfCopy->_remoteListener = v5;
  _objc_release(remoteListener);
  [(NSXPCListener *)selfCopy->_remoteListener setDelegate:selfCopy];
  [(NSXPCListener *)selfCopy->_remoteListener resume];
  [(AKPrivateEmailPresenter *)selfCopy setPrivateEmailCompletion:v33];
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
    endpoint = [(NSXPCListener *)selfCopy->_remoteListener endpoint];
    _endpoint = [(NSXPCListenerEndpoint *)endpoint _endpoint];
    [v24 setXpcEndpoint:?];
    _objc_release(_endpoint);
    _objc_release(endpoint);
    [v24 setUserInfo:v32];
    v23 = objc_opt_new();
    v10 = [SBSRemoteAlertHandle newHandleWithDefinition:v25 configurationContext:v24];
    [(AKPrivateEmailPresenter *)selfCopy setRemoteAlertHandle:?];
    _objc_release(v10);
    remoteAlertHandle = [(AKPrivateEmailPresenter *)selfCopy remoteAlertHandle];
    [(SBSRemoteAlertHandle *)remoteAlertHandle registerObserver:selfCopy];
    _objc_release(remoteAlertHandle);
    remoteAlertHandle2 = [(AKPrivateEmailPresenter *)selfCopy remoteAlertHandle];
    [(SBSRemoteAlertHandle *)remoteAlertHandle2 activateWithContext:v23];
    _objc_release(remoteAlertHandle2);
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

- (void)privateEmailFetchCompletedWith:(id)with error:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, with);
  v9 = 0;
  objc_storeStrong(&v9, error);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = _AKLogHme();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v12, location[0], v9);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received: %@ (%@)", v12, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  [(AKPrivateEmailPresenter *)selfCopy _callCompletionBlockWithEmail:location[0] error:v9];
  (*(v8 + 2))(v8, 1, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
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
  v6 = +[AKPrivateEmailPresenterHostInterface XPCInterface];
  [v7 setExportedInterface:?];
  _objc_release(v6);
  [v7 setExportedObject:selfCopy];
  [v7 resume];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)_callCompletionBlockWithEmail:(id)email error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, email);
  v7 = 0;
  objc_storeStrong(&v7, error);
  privateEmailCompletion = [(AKPrivateEmailPresenter *)selfCopy privateEmailCompletion];
  _objc_release(privateEmailCompletion);
  if (privateEmailCompletion)
  {
    privateEmailCompletion2 = [(AKPrivateEmailPresenter *)selfCopy privateEmailCompletion];
    privateEmailCompletion2[2](privateEmailCompletion2, location[0], v7);
    _objc_release(privateEmailCompletion2);
  }

  [(AKPrivateEmailPresenter *)selfCopy setPrivateEmailCompletion:?];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activate);
  oslog = _AKLogHme();
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
  oslog = _AKLogHme();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v8, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) deactivated.", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = selfCopy;
  v4 = [NSError ak_errorWithCode:-7034];
  [(AKPrivateEmailPresenter *)v3 _callCompletionBlockWithEmail:0 error:?];
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
    v14 = _AKLogHme();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v19, location[0]);
      _os_log_impl(&_mh_execute_header, v14, v13, "Alert handle (%@) deactivated by request.", v19, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    v6 = selfCopy;
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
    v4 = selfCopy;
    v5 = [NSError ak_errorWithCode:-7034 underlyingError:v15];
    [(AKPrivateEmailPresenter *)v4 _callCompletionBlockWithEmail:0 error:?];
    _objc_release(v5);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  remoteAlertHandle = [(AKPrivateEmailPresenter *)self remoteAlertHandle];
  [(SBSRemoteAlertHandle *)remoteAlertHandle unregisterObserver:selfCopy];
  _objc_release(remoteAlertHandle);
  remoteAlertHandle2 = [(AKPrivateEmailPresenter *)selfCopy remoteAlertHandle];
  [(SBSRemoteAlertHandle *)remoteAlertHandle2 invalidate];
  _objc_release(remoteAlertHandle2);
  v4.receiver = selfCopy;
  v4.super_class = AKPrivateEmailPresenter;
  [(AKPrivateEmailPresenter *)&v4 dealloc];
}

@end