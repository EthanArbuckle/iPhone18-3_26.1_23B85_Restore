@interface SODaemonUIManager
+ (id)_queue;
- (BOOL)_closeRemoteUIWithError:(id *)error;
- (BOOL)beginAuthorizationWithRequestParameters:(id)parameters profile:(id)profile error:(id *)error;
- (BOOL)cancelAuthorization:(id)authorization error:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SODaemonUIManager)init;
- (SODaemonUIProtocol)delegate;
- (void)authorizationDidCompleteWithCredential:(id)credential error:(id)error completion:(id)completion;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)extensionCleanupWithCompletion:(id)completion;
- (void)finishAuthorization:(id)authorization completion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation SODaemonUIManager

+ (id)_queue
{
  if (qword_100015DF8 != -1)
  {
    sub_10000849C();
  }

  v3 = qword_100015DF0;

  return v3;
}

- (SODaemonUIManager)init
{
  v3 = sub_100002728();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SODaemonUIManager init]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = SODaemonUIManager;
  return [(SODaemonUIManager *)&v5 init];
}

- (void)dealloc
{
  v3 = sub_100002728();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000084C4();
  }

  [(SODaemonUIManager *)self _closeRemoteUIWithError:0];
  v4.receiver = self;
  v4.super_class = SODaemonUIManager;
  [(SODaemonUIManager *)&v4 dealloc];
}

- (BOOL)beginAuthorizationWithRequestParameters:(id)parameters profile:(id)profile error:(id *)error
{
  parametersCopy = parameters;
  profileCopy = profile;
  v10 = sub_100002728();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "[SODaemonUIManager beginAuthorizationWithRequestParameters:profile:error:]";
    v39 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  self->_isInternalExtension = [parametersCopy useInternalExtensions];
  v11 = +[NSXPCListener anonymousListener];
  uiListener = self->_uiListener;
  self->_uiListener = v11;

  [(NSXPCListener *)self->_uiListener setDelegate:self];
  v13 = self->_uiListener;
  v14 = +[SODaemonUIManager _queue];
  [(NSXPCListener *)v13 _setQueue:v14];

  [(NSXPCListener *)self->_uiListener resume];
  if (!SBSGetScreenLockStatus())
  {
    goto LABEL_15;
  }

  if (([parametersCopy canShowOnCoverScreen] & 1) == 0 && !+[SODaemonUtils isInternalBuild](SODaemonUtils, "isInternalBuild"))
  {
    screenLockedBehavior = [profileCopy screenLockedBehavior];
    v16 = sub_100002728();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (screenLockedBehavior == 2)
    {
      if (v17)
      {
        sub_10000857C();
      }

      if (error)
      {
        v18 = sub_100003134();
        v19 = -5;
LABEL_23:
        [v18 errorWithCode:v19];
        *error = v30 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      if (v17)
      {
        sub_100008540();
      }

      if (error)
      {
        v18 = sub_100003134();
        v19 = -3;
        goto LABEL_23;
      }
    }

    v30 = 0;
    goto LABEL_30;
  }

  v20 = sub_100002728();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_1000085B8();
  }

LABEL_15:
  v21 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.AppSSOUIService" viewControllerClassName:@"SOUIServiceViewController"];
  v22 = objc_opt_new();
  v23 = sub_100002BCC(v22, parametersCopy, profileCopy);
  [v22 setUserInfo:v23];

  endpoint = [(NSXPCListener *)self->_uiListener endpoint];
  _endpoint = [endpoint _endpoint];
  [v22 setXpcEndpoint:_endpoint];

  v26 = objc_opt_new();
  [v26 setActivatingForSiri:0];
  v27 = [SBSRemoteAlertHandle newHandleWithDefinition:v21 configurationContext:v22];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v27;

  v29 = self->_remoteAlertHandle;
  v30 = v29 != 0;
  if (v29)
  {
    [(SBSRemoteAlertHandle *)v29 registerObserver:self];
    identifier = [parametersCopy identifier];
    requestThatPresentedRemoteAlert = self->_requestThatPresentedRemoteAlert;
    self->_requestThatPresentedRemoteAlert = identifier;

    v33 = sub_100002728();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = self->_remoteAlertHandle;
      *buf = 138543362;
      v38 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "activating SBSRemoteAlertHandle %{public}@", buf, 0xCu);
    }

    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v26];
  }

  else
  {
    v35 = sub_100002728();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1000085F4();
    }

    if (error)
    {
      *error = [sub_100003134() errorWithCode:-3];
    }
  }

LABEL_30:
  return v30;
}

- (BOOL)cancelAuthorization:(id)authorization error:(id *)error
{
  v6 = sub_100002728();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SODaemonUIManager cancelAuthorization:error:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  v7 = [(SODaemonUIManager *)self _closeRemoteUIWithError:error];
  v8 = [sub_100003134() errorWithCode:-3];
  [(SODaemonUIManager *)self authorizationDidCompleteWithCredential:0 error:v8 completion:0];

  return v7;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  v5 = sub_100002728();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100008630(self);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  v5 = sub_100002728();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000086CC(self, deactivateCopy, v5);
  }

  if (self->_remoteAlertHandle == deactivateCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      isInternalExtension = self->_isInternalExtension;

      if (!isInternalExtension)
      {
        v8 = [sub_100003134() errorWithCode:-3];
        [(SODaemonUIManager *)self authorizationDidCompleteWithCredential:0 error:v8 completion:0];
      }
    }
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  v8 = sub_100002728();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    remoteAlertHandle = self->_remoteAlertHandle;
    v12 = 136316162;
    v13 = "[SODaemonUIManager remoteAlertHandle:didInvalidateWithError:]";
    v14 = 2114;
    v15 = remoteAlertHandle;
    v16 = 2114;
    v17 = handleCopy;
    v18 = 2114;
    v19 = errorCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s _remoteAlertHandle = %{public}@, handle = %{public}@, error = %{public}@ on %@", &v12, 0x34u);
  }

  if (self->_remoteAlertHandle == handleCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v10 = [sub_100003134() errorWithCode:-3];
      [(SODaemonUIManager *)self authorizationDidCompleteWithCredential:0 error:v10 completion:0];
    }
  }
}

- (BOOL)_closeRemoteUIWithError:(id *)error
{
  v5 = sub_100002728();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    remoteAlertHandle = self->_remoteAlertHandle;
    v11 = 136315650;
    v12 = "[SODaemonUIManager _closeRemoteUIWithError:]";
    v13 = 2114;
    v14 = remoteAlertHandle;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s _remoteAlertHandle = %{public}@ on %@", &v11, 0x20u);
  }

  v7 = self->_remoteAlertHandle;
  if (v7)
  {
    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle unregisterObserver:self];
    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    v8 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = 0;

    v9 = 0;
    if (!error)
    {
      return v7 != 0;
    }

    goto LABEL_8;
  }

  if (error)
  {
    v9 = [sub_100003134() internalErrorWithMessage:@"SBSRemoteAlertHandle is nil"];
LABEL_8:
    *error = v9;
  }

  return v7 != 0;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_100002728();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100008798();
  }

  objc_storeStrong(&self->_uiServiceConnection, connection);
  v9 = [sub_10000385C() interfaceWithInternalProtocol:&OBJC_PROTOCOL___SODaemonUIProtocol];
  [(NSXPCConnection *)self->_uiServiceConnection setExportedInterface:v9];

  [(NSXPCConnection *)self->_uiServiceConnection setExportedObject:self];
  [(NSXPCConnection *)self->_uiServiceConnection resume];
  v10 = [sub_10000385C() interfaceWithInternalProtocol:&OBJC_PROTOCOL___SOUIServiceProtocol];
  [(NSXPCConnection *)self->_uiServiceConnection setRemoteObjectInterface:v10];

  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000393C;
  v16 = &unk_100010328;
  objc_copyWeak(&v17, &location);
  [(SODaemonUIManager *)self setInvalidationHandler:&v13];
  v11 = [(SODaemonUIManager *)self invalidationHandler:v13];
  [(NSXPCConnection *)self->_uiServiceConnection setInvalidationHandler:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return 1;
}

- (void)connectionInvalidated
{
  v3 = sub_100002728();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SODaemonUIManager connectionInvalidated]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v4, 0x16u);
  }
}

- (void)authorizationDidCompleteWithCredential:(id)credential error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  errorCopy = error;
  completionCopy = completion;
  v11 = sub_100002728();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = 136316162;
    v18 = "[SODaemonUIManager authorizationDidCompleteWithCredential:error:completion:]";
    v19 = 2114;
    v20 = WeakRetained;
    v21 = 2114;
    v22 = credentialCopy;
    v23 = 2114;
    v24 = errorCopy;
    v25 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s delegate = %{public}@, credential = %{public}@, error = %{public}@ on %@", &v17, 0x34u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v14 = objc_loadWeakRetained(&selfCopy2->_delegate);
  objc_storeWeak(&selfCopy2->_delegate, 0);
  objc_sync_exit(selfCopy2);

  if (v14)
  {
    [v14 authorizationDidCompleteWithCredential:credentialCopy error:errorCopy completion:completionCopy];
  }

  else
  {
    v15 = sub_100002728();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "authorization already finished => ignoring complete request", &v17, 2u);
    }

    if (completionCopy)
    {
      v16 = [sub_100003134() silentInternalErrorWithMessage:@"authorization already finished => ignoring complete request"];
      completionCopy[2](completionCopy, 0, v16);
    }
  }
}

- (void)finishAuthorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = sub_100002728();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100008814(self);
  }

  uiServiceConnection = self->_uiServiceConnection;
  if (uiServiceConnection)
  {
    v10 = [(NSXPCConnection *)uiServiceConnection remoteObjectProxyWithErrorHandler:&stru_1000104E0];
    if (objc_opt_respondsToSelector())
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100003E20;
      v13[3] = &unk_100010508;
      v13[4] = self;
      v14 = completionCopy;
      [v10 finishAuthorization:authorizationCopy completion:v13];
    }

    else
    {
      v11 = sub_100002728();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000088A0();
      }

      if (completionCopy)
      {
        v12 = [sub_100003134() internalErrorWithMessage:@"finishAuthorization not implemented"];
        (*(completionCopy + 2))(completionCopy, 0, v12);
      }
    }

    goto LABEL_12;
  }

  if (completionCopy)
  {
    v10 = [sub_100003134() internalErrorWithMessage:@"no uiServiceConnection"];
    (*(completionCopy + 2))(completionCopy, 0, v10);
LABEL_12:
  }
}

- (void)extensionCleanupWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002728();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100008950(self);
  }

  uiServiceConnection = self->_uiServiceConnection;
  if (uiServiceConnection)
  {
    v7 = [(NSXPCConnection *)uiServiceConnection remoteObjectProxyWithErrorHandler:&stru_100010528];
    [v7 extensionCleanupWithCompletion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v7 = [sub_100003134() internalErrorWithMessage:@"no uiServiceConnection"];
    completionCopy[2](completionCopy, 0, v7);
    goto LABEL_7;
  }

LABEL_8:
}

- (SODaemonUIProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end