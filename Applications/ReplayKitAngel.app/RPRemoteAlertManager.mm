@interface RPRemoteAlertManager
+ (id)sharedInstance;
- (BOOL)createRemoteHandleForApplication:(id)application bundleID:(id)d;
- (RPRemoteAlertManager)init;
- (void)clearRemoteHandle;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation RPRemoteAlertManager

+ (id)sharedInstance
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "+[RPRemoteAlertManager sharedInstance]";
    v6 = 1024;
    v7 = 25;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }

  if (qword_100069898 != -1)
  {
    sub_10004390C();
  }

  v2 = qword_100069890;

  return v2;
}

- (RPRemoteAlertManager)init
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPRemoteAlertManager init]";
    v10 = 1024;
    v11 = 35;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v7.receiver = self;
  v7.super_class = RPRemoteAlertManager;
  v3 = [(RPRemoteAlertManager *)&v7 init];
  v4 = v3;
  if (v3)
  {
    remoteAlertHandle = v3->_remoteAlertHandle;
    v3->_remoteAlertHandle = 0;
  }

  return v4;
}

- (void)clearRemoteHandle
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPRemoteAlertManager clearRemoteHandle]";
    v7 = 1024;
    v8 = 45;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    if (!__RPLogLevel)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136446466;
        v6 = "[RPRemoteAlertManager clearRemoteHandle]";
        v7 = 1024;
        v8 = 48;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d client handle found, invalidating", &v5, 0x12u);
      }

      remoteAlertHandle = self->_remoteAlertHandle;
    }

    [(SBSRemoteAlertHandle *)remoteAlertHandle unregisterObserver:self];
    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    v4 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = 0;
  }

  else if (!__RPLogLevel && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPRemoteAlertManager clearRemoteHandle]";
    v7 = 1024;
    v8 = 53;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d client handle not found", &v5, 0x12u);
  }
}

- (BOOL)createRemoteHandleForApplication:(id)application bundleID:(id)d
{
  applicationCopy = application;
  dCopy = d;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v20 = "[RPRemoteAlertManager createRemoteHandleForApplication:bundleID:]";
    v21 = 1024;
    v22 = 58;
    v23 = 2112;
    v24 = applicationCopy;
    v25 = 2112;
    v26 = dCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d app=%@ bundleId=%@", buf, 0x26u);
  }

  if (self->_remoteAlertHandle)
  {
    [(RPRemoteAlertManager *)self clearRemoteHandle];
  }

  v8 = [SBSRemoteAlertDefinition alloc];
  v9 = [RBSProcessIdentity identityForAngelJobLabel:@"com.apple.replaykitangel"];
  v10 = [v8 initWithSceneProvidingProcess:v9 configurationIdentifier:@"reactions-tip-alert"];

  v11 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v17[0] = @"applicationName";
  v17[1] = @"bundleIdentifier";
  v18[0] = applicationCopy;
  v18[1] = dCopy;
  v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v11 setUserInfo:v12];
  v13 = [SBSRemoteAlertHandle newHandleWithDefinition:v10 configurationContext:v11];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v13;

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle registerObserver:self];
  v15 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v15];

  return 1;
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPRemoteAlertManager remoteAlertHandleDidDeactivate:]";
    v7 = 1024;
    v8 = 87;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  [(RPRemoteAlertManager *)self clearRemoteHandle];
}

@end