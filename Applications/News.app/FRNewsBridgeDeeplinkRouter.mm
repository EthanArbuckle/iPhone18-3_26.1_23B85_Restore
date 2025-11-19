@interface FRNewsBridgeDeeplinkRouter
- (BOOL)handleOpenURL:(id)a3 options:(id)a4 analyticsReferral:(id)a5;
- (FRNewsBridgeDeeplinkRouter)init;
- (FRNewsBridgeDeeplinkRouter)initWithApplication:(id)a3 bridgedAppDelegate:(id)a4;
- (UIApplication)application;
- (UIApplicationDelegate)bridgedAppDelegate;
@end

@implementation FRNewsBridgeDeeplinkRouter

- (FRNewsBridgeDeeplinkRouter)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRNewsBridgeDeeplinkRouter init]";
    v8 = 2080;
    v9 = "FRNewsBridgeDeeplinkRouter.m";
    v10 = 1024;
    v11 = 25;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRNewsBridgeDeeplinkRouter init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRNewsBridgeDeeplinkRouter)initWithApplication:(id)a3 bridgedAppDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006B0F4();
  }

  v11.receiver = self;
  v11.super_class = FRNewsBridgeDeeplinkRouter;
  v8 = [(FRNewsBridgeDeeplinkRouter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_application, v6);
    objc_storeWeak(&v9->_bridgedAppDelegate, v7);
  }

  return v9;
}

- (BOOL)handleOpenURL:(id)a3 options:(id)a4 analyticsReferral:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006B1D4();
  }

  v11 = [(FRNewsBridgeDeeplinkRouter *)self bridgedAppDelegate];
  v12 = [(FRNewsBridgeDeeplinkRouter *)self application];
  v13 = [v11 application:v12 openURL:v8 options:v9];

  return v13;
}

- (UIApplication)application
{
  WeakRetained = objc_loadWeakRetained(&self->_application);

  return WeakRetained;
}

- (UIApplicationDelegate)bridgedAppDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bridgedAppDelegate);

  return WeakRetained;
}

@end