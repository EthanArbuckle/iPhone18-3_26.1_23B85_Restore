@interface RemoteAlertWrapper
- (RemoteAlertWrapper)initWithServiceName:(id)a3 viewControllerClassName:(id)a4;
- (SBSRemoteAlertHandleObserver)observer;
- (void)activateForTargetXPCConnection:(id)a3 sceneID:(id)a4 shouldDismissOnUILock:(BOOL)a5 userInfo:(id)a6;
@end

@implementation RemoteAlertWrapper

- (RemoteAlertWrapper)initWithServiceName:(id)a3 viewControllerClassName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RemoteAlertWrapper;
  v8 = [(RemoteAlertWrapper *)&v11 init];
  if (v8)
  {
    v9 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:v6 viewControllerClassName:v7];
    [(RemoteAlertWrapper *)v8 setDefinition:v9];
  }

  return v8;
}

- (void)activateForTargetXPCConnection:(id)a3 sceneID:(id)a4 shouldDismissOnUILock:(BOOL)a5 userInfo:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  [(RemoteAlertWrapper *)self setXpcConnection:a3];
  v12 = objc_opt_new();
  [v12 setUserInfo:v10];

  v13 = [(RemoteAlertWrapper *)self definition];
  v14 = [SBSRemoteAlertHandle newHandleWithDefinition:v13 configurationContext:v12];
  [(RemoteAlertWrapper *)self setHandle:v14];

  if (self->_handle && (v15 = objc_loadWeakRetained(&self->_observer), v15, v15))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138543362;
      v29 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Registering handle observer", &v28, 0xCu);
    }

    handle = self->_handle;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [(SBSRemoteAlertHandle *)handle registerObserver:WeakRetained];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138543362;
    v29 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Not registering handle observer", &v28, 0xCu);
  }

  v18 = [(RemoteAlertWrapper *)self xpcConnection];
  v19 = [BSProcessHandle processHandleForNSXPCConnection:v18];

  v20 = [[SBSRemoteAlertPresentationTarget alloc] initWithTargetProcess:v19];
  [(RemoteAlertWrapper *)self setPresentationTarget:v20];

  v21 = [(RemoteAlertWrapper *)self presentationTarget];
  [v21 setScenePersistentIdentifier:v11];

  v22 = [(RemoteAlertWrapper *)self presentationTarget];
  [v22 setShouldDismissOnUILock:v6];

  v23 = objc_opt_new();
  [(RemoteAlertWrapper *)self setActivationContext:v23];

  v24 = [(RemoteAlertWrapper *)self activationContext];
  v25 = [(RemoteAlertWrapper *)self presentationTarget];
  [v24 setPresentationTarget:v25];

  v26 = [(RemoteAlertWrapper *)self handle];
  v27 = [(RemoteAlertWrapper *)self activationContext];
  [v26 activateWithContext:v27];
}

- (SBSRemoteAlertHandleObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end