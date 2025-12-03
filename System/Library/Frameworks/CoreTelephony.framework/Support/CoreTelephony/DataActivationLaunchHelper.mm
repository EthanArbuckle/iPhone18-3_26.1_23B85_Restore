@interface DataActivationLaunchHelper
- (BOOL)isAlertHandleExistAndValid;
- (DataActivationLaunchHelper)initWithLogger:(const void *)logger;
- (void)invalidateRemoteAlertHandle;
- (void)launchWithServiceName:(id)name viewControllerClassName:(id)className options:(id)options;
- (void)reactivateDataActivationIfPresent;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
@end

@implementation DataActivationLaunchHelper

- (DataActivationLaunchHelper)initWithLogger:(const void *)logger
{
  v5.receiver = self;
  v5.super_class = DataActivationLaunchHelper;
  result = [(DataActivationLaunchHelper *)&v5 init];
  if (result)
  {
    result->fLogger = logger;
  }

  return result;
}

- (void)launchWithServiceName:(id)name viewControllerClassName:(id)className options:(id)options
{
  nameCopy = name;
  classNameCopy = className;
  optionsCopy = options;
  if (self->fAlertHandle)
  {
    v11 = sub_100032AC8(self->fLogger);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I invalidate previous handle", &v18, 2u);
    }

    [(DataActivationLaunchHelper *)self invalidateRemoteAlertHandle];
  }

  v12 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:nameCopy viewControllerClassName:classNameCopy];
  v13 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  [v13 setUserInfo:optionsCopy];
  v14 = [SBSRemoteAlertHandle newHandleWithDefinition:v12 configurationContext:v13];
  fAlertHandle = self->fAlertHandle;
  self->fAlertHandle = v14;

  [(SBSRemoteAlertHandle *)self->fAlertHandle addObserver:self];
  v16 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [v16 setReason:@"Cellular Plan Provisioning"];
  [(SBSRemoteAlertHandle *)self->fAlertHandle activateWithContext:v16];
  v17 = sub_100032AC8(self->fLogger);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = nameCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %{public}@: launched...", &v18, 0xCu);
  }
}

- (BOOL)isAlertHandleExistAndValid
{
  v3 = sub_100032AC8(self->fLogger);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fAlertHandle = self->fAlertHandle;
    if (fAlertHandle)
    {
      isValid = [(SBSRemoteAlertHandle *)fAlertHandle isValid];
    }

    else
    {
      isValid = -1;
    }

    v8[0] = 67109120;
    v8[1] = isValid;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I alert handle is valid: %d", v8, 8u);
  }

  v6 = self->fAlertHandle;
  if (v6)
  {
    LOBYTE(v6) = [(SBSRemoteAlertHandle *)v6 isValid];
  }

  return v6;
}

- (void)reactivateDataActivationIfPresent
{
  v3 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [v3 setReason:@"CellularPlanProvisioning"];
  [(SBSRemoteAlertHandle *)self->fAlertHandle activateWithContext:v3];
  v4 = sub_100032AC8(self->fLogger);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DataActivation: relaunch...", v5, 2u);
  }
}

- (void)invalidateRemoteAlertHandle
{
  [(SBSRemoteAlertHandle *)self->fAlertHandle invalidate];
  fAlertHandle = self->fAlertHandle;
  self->fAlertHandle = 0;
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  v8 = sub_100032AC8(self->fLogger);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [errorCopy description];
    v12 = 136315138;
    uTF8String = [v9 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I RemoteAlertHandle: invalidated with error %s", &v12, 0xCu);
  }

  if (self->fAlertHandle == handleCopy)
  {
    v10 = sub_100032AC8(self->fLogger);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I RemoteAlertHandle: releasing my handle", &v12, 2u);
    }

    fAlertHandle = self->fAlertHandle;
    self->fAlertHandle = 0;
  }
}

@end