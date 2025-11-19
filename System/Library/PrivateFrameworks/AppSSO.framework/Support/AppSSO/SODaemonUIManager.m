@interface SODaemonUIManager
+ (id)_queue;
- (BOOL)_closeRemoteUIWithError:(id *)a3;
- (BOOL)beginAuthorizationWithRequestParameters:(id)a3 profile:(id)a4 error:(id *)a5;
- (BOOL)cancelAuthorization:(id)a3 error:(id *)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SODaemonUIManager)init;
- (SODaemonUIProtocol)delegate;
- (void)authorizationDidCompleteWithCredential:(id)a3 error:(id)a4 completion:(id)a5;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)extensionCleanupWithCompletion:(id)a3;
- (void)finishAuthorization:(id)a3 completion:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
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
    v9 = self;
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

- (BOOL)beginAuthorizationWithRequestParameters:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_100002728();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "[SODaemonUIManager beginAuthorizationWithRequestParameters:profile:error:]";
    v39 = 2112;
    v40 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  self->_isInternalExtension = [v8 useInternalExtensions];
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

  if (([v8 canShowOnCoverScreen] & 1) == 0 && !+[SODaemonUtils isInternalBuild](SODaemonUtils, "isInternalBuild"))
  {
    v15 = [v9 screenLockedBehavior];
    v16 = sub_100002728();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v15 == 2)
    {
      if (v17)
      {
        sub_10000857C();
      }

      if (a5)
      {
        v18 = sub_100003134();
        v19 = -5;
LABEL_23:
        [v18 errorWithCode:v19];
        *a5 = v30 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      if (v17)
      {
        sub_100008540();
      }

      if (a5)
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
  v23 = sub_100002BCC(v22, v8, v9);
  [v22 setUserInfo:v23];

  v24 = [(NSXPCListener *)self->_uiListener endpoint];
  v25 = [v24 _endpoint];
  [v22 setXpcEndpoint:v25];

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
    v31 = [v8 identifier];
    requestThatPresentedRemoteAlert = self->_requestThatPresentedRemoteAlert;
    self->_requestThatPresentedRemoteAlert = v31;

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

    if (a5)
    {
      *a5 = [sub_100003134() errorWithCode:-3];
    }
  }

LABEL_30:
  return v30;
}

- (BOOL)cancelAuthorization:(id)a3 error:(id *)a4
{
  v6 = sub_100002728();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SODaemonUIManager cancelAuthorization:error:]";
    v12 = 2112;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  v7 = [(SODaemonUIManager *)self _closeRemoteUIWithError:a4];
  v8 = [sub_100003134() errorWithCode:-3];
  [(SODaemonUIManager *)self authorizationDidCompleteWithCredential:0 error:v8 completion:0];

  return v7;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = sub_100002728();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100008630(self);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = sub_100002728();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000086CC(self, v4, v5);
  }

  if (self->_remoteAlertHandle == v4)
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

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002728();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    remoteAlertHandle = self->_remoteAlertHandle;
    v12 = 136316162;
    v13 = "[SODaemonUIManager remoteAlertHandle:didInvalidateWithError:]";
    v14 = 2114;
    v15 = remoteAlertHandle;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v20 = 2112;
    v21 = self;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s _remoteAlertHandle = %{public}@, handle = %{public}@, error = %{public}@ on %@", &v12, 0x34u);
  }

  if (self->_remoteAlertHandle == v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v10 = [sub_100003134() errorWithCode:-3];
      [(SODaemonUIManager *)self authorizationDidCompleteWithCredential:0 error:v10 completion:0];
    }
  }
}

- (BOOL)_closeRemoteUIWithError:(id *)a3
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
    v16 = self;
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
    if (!a3)
    {
      return v7 != 0;
    }

    goto LABEL_8;
  }

  if (a3)
  {
    v9 = [sub_100003134() internalErrorWithMessage:@"SBSRemoteAlertHandle is nil"];
LABEL_8:
    *a3 = v9;
  }

  return v7 != 0;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002728();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100008798();
  }

  objc_storeStrong(&self->_uiServiceConnection, a4);
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
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v4, 0x16u);
  }
}

- (void)authorizationDidCompleteWithCredential:(id)a3 error:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100002728();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = 136316162;
    v18 = "[SODaemonUIManager authorizationDidCompleteWithCredential:error:completion:]";
    v19 = 2114;
    v20 = WeakRetained;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    v25 = 2112;
    v26 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s delegate = %{public}@, credential = %{public}@, error = %{public}@ on %@", &v17, 0x34u);
  }

  v13 = self;
  objc_sync_enter(v13);
  v14 = objc_loadWeakRetained(&v13->_delegate);
  objc_storeWeak(&v13->_delegate, 0);
  objc_sync_exit(v13);

  if (v14)
  {
    [v14 authorizationDidCompleteWithCredential:v8 error:v9 completion:v10];
  }

  else
  {
    v15 = sub_100002728();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "authorization already finished => ignoring complete request", &v17, 2u);
    }

    if (v10)
    {
      v16 = [sub_100003134() silentInternalErrorWithMessage:@"authorization already finished => ignoring complete request"];
      v10[2](v10, 0, v16);
    }
  }
}

- (void)finishAuthorization:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      v14 = v7;
      [v10 finishAuthorization:v6 completion:v13];
    }

    else
    {
      v11 = sub_100002728();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000088A0();
      }

      if (v7)
      {
        v12 = [sub_100003134() internalErrorWithMessage:@"finishAuthorization not implemented"];
        (*(v7 + 2))(v7, 0, v12);
      }
    }

    goto LABEL_12;
  }

  if (v7)
  {
    v10 = [sub_100003134() internalErrorWithMessage:@"no uiServiceConnection"];
    (*(v7 + 2))(v7, 0, v10);
LABEL_12:
  }
}

- (void)extensionCleanupWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100002728();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100008950(self);
  }

  uiServiceConnection = self->_uiServiceConnection;
  if (uiServiceConnection)
  {
    v7 = [(NSXPCConnection *)uiServiceConnection remoteObjectProxyWithErrorHandler:&stru_100010528];
    [v7 extensionCleanupWithCompletion:v4];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v7 = [sub_100003134() internalErrorWithMessage:@"no uiServiceConnection"];
    v4[2](v4, 0, v7);
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