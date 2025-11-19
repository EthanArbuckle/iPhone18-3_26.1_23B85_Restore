@interface DataActivationLaunchHelper
- (BOOL)isAlertHandleExistAndValid;
- (DataActivationLaunchHelper)initWithLogger:(const void *)a3;
- (void)invalidateRemoteAlertHandle;
- (void)launchWithServiceName:(id)a3 viewControllerClassName:(id)a4 options:(id)a5;
- (void)reactivateDataActivationIfPresent;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
@end

@implementation DataActivationLaunchHelper

- (DataActivationLaunchHelper)initWithLogger:(const void *)a3
{
  v5.receiver = self;
  v5.super_class = DataActivationLaunchHelper;
  result = [(DataActivationLaunchHelper *)&v5 init];
  if (result)
  {
    result->fLogger = a3;
  }

  return result;
}

- (void)launchWithServiceName:(id)a3 viewControllerClassName:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v12 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:v8 viewControllerClassName:v9];
  v13 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  [v13 setUserInfo:v10];
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
    v19 = v8;
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
      v5 = [(SBSRemoteAlertHandle *)fAlertHandle isValid];
    }

    else
    {
      v5 = -1;
    }

    v8[0] = 67109120;
    v8[1] = v5;
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

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100032AC8(self->fLogger);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 description];
    v12 = 136315138;
    v13 = [v9 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I RemoteAlertHandle: invalidated with error %s", &v12, 0xCu);
  }

  if (self->fAlertHandle == v6)
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