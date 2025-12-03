@interface FRNewsBridgeDeeplinkRouter
- (BOOL)handleOpenURL:(id)l options:(id)options analyticsReferral:(id)referral;
- (FRNewsBridgeDeeplinkRouter)init;
- (FRNewsBridgeDeeplinkRouter)initWithApplication:(id)application bridgedAppDelegate:(id)delegate;
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

- (FRNewsBridgeDeeplinkRouter)initWithApplication:(id)application bridgedAppDelegate:(id)delegate
{
  applicationCopy = application;
  delegateCopy = delegate;
  if (!applicationCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006B0F4();
  }

  v11.receiver = self;
  v11.super_class = FRNewsBridgeDeeplinkRouter;
  v8 = [(FRNewsBridgeDeeplinkRouter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_application, applicationCopy);
    objc_storeWeak(&v9->_bridgedAppDelegate, delegateCopy);
  }

  return v9;
}

- (BOOL)handleOpenURL:(id)l options:(id)options analyticsReferral:(id)referral
{
  lCopy = l;
  optionsCopy = options;
  referralCopy = referral;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006B1D4();
  }

  bridgedAppDelegate = [(FRNewsBridgeDeeplinkRouter *)self bridgedAppDelegate];
  application = [(FRNewsBridgeDeeplinkRouter *)self application];
  v13 = [bridgedAppDelegate application:application openURL:lCopy options:optionsCopy];

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