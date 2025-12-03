@interface RemoteAlertWrapper
- (RemoteAlertWrapper)initWithServiceName:(id)name viewControllerClassName:(id)className;
- (SBSRemoteAlertHandleObserver)observer;
- (void)activateForTargetXPCConnection:(id)connection sceneID:(id)d shouldDismissOnUILock:(BOOL)lock userInfo:(id)info;
@end

@implementation RemoteAlertWrapper

- (RemoteAlertWrapper)initWithServiceName:(id)name viewControllerClassName:(id)className
{
  nameCopy = name;
  classNameCopy = className;
  v11.receiver = self;
  v11.super_class = RemoteAlertWrapper;
  v8 = [(RemoteAlertWrapper *)&v11 init];
  if (v8)
  {
    v9 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:nameCopy viewControllerClassName:classNameCopy];
    [(RemoteAlertWrapper *)v8 setDefinition:v9];
  }

  return v8;
}

- (void)activateForTargetXPCConnection:(id)connection sceneID:(id)d shouldDismissOnUILock:(BOOL)lock userInfo:(id)info
{
  lockCopy = lock;
  infoCopy = info;
  dCopy = d;
  [(RemoteAlertWrapper *)self setXpcConnection:connection];
  v12 = objc_opt_new();
  [v12 setUserInfo:infoCopy];

  definition = [(RemoteAlertWrapper *)self definition];
  v14 = [SBSRemoteAlertHandle newHandleWithDefinition:definition configurationContext:v12];
  [(RemoteAlertWrapper *)self setHandle:v14];

  if (self->_handle && (v15 = objc_loadWeakRetained(&self->_observer), v15, v15))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Registering handle observer", &v28, 0xCu);
    }

    handle = self->_handle;
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [(SBSRemoteAlertHandle *)handle registerObserver:WeakRetained];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Not registering handle observer", &v28, 0xCu);
  }

  xpcConnection = [(RemoteAlertWrapper *)self xpcConnection];
  v19 = [BSProcessHandle processHandleForNSXPCConnection:xpcConnection];

  v20 = [[SBSRemoteAlertPresentationTarget alloc] initWithTargetProcess:v19];
  [(RemoteAlertWrapper *)self setPresentationTarget:v20];

  presentationTarget = [(RemoteAlertWrapper *)self presentationTarget];
  [presentationTarget setScenePersistentIdentifier:dCopy];

  presentationTarget2 = [(RemoteAlertWrapper *)self presentationTarget];
  [presentationTarget2 setShouldDismissOnUILock:lockCopy];

  v23 = objc_opt_new();
  [(RemoteAlertWrapper *)self setActivationContext:v23];

  activationContext = [(RemoteAlertWrapper *)self activationContext];
  presentationTarget3 = [(RemoteAlertWrapper *)self presentationTarget];
  [activationContext setPresentationTarget:presentationTarget3];

  handle = [(RemoteAlertWrapper *)self handle];
  activationContext2 = [(RemoteAlertWrapper *)self activationContext];
  [handle activateWithContext:activationContext2];
}

- (SBSRemoteAlertHandleObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end