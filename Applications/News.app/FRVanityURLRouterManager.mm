@interface FRVanityURLRouterManager
- (BOOL)handleOpenURL:(id)l options:(id)options analyticsReferral:(id)referral;
- (FRVanityURLRouterManager)init;
- (FRVanityURLRouterManager)initWithAnalyticsReferralFactory:(id)factory redirectService:(id)service routerManager:(id)manager;
- (void)addRoutable:(id)routable;
@end

@implementation FRVanityURLRouterManager

- (FRVanityURLRouterManager)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRVanityURLRouterManager init]";
    v8 = 2080;
    v9 = "FRVanityURLRouterManager.m";
    v10 = 1024;
    v11 = 25;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRVanityURLRouterManager init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRVanityURLRouterManager)initWithAnalyticsReferralFactory:(id)factory redirectService:(id)service routerManager:(id)manager
{
  factoryCopy = factory;
  serviceCopy = service;
  managerCopy = manager;
  if (!factoryCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F76C();
    if (serviceCopy)
    {
      goto LABEL_6;
    }
  }

  else if (serviceCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F830();
  }

LABEL_6:
  if (!managerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F8F4();
  }

  v15.receiver = self;
  v15.super_class = FRVanityURLRouterManager;
  v12 = [(FRVanityURLRouterManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_analyticsReferralFactory, factory);
    objc_storeStrong(&v13->_redirectService, service);
    objc_storeStrong(&v13->_routerManager, manager);
  }

  return v13;
}

- (BOOL)handleOpenURL:(id)l options:(id)options analyticsReferral:(id)referral
{
  lCopy = l;
  optionsCopy = options;
  referralCopy = referral;
  redirectService = [(FRVanityURLRouterManager *)self redirectService];
  v12 = [redirectService destinationURLForURL:lCopy];

  v13 = FRNavigationLog;
  if (os_log_type_enabled(FRNavigationLog, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    v22 = v12;
    v23 = 2114;
    v24 = lCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "VanityURL manager has destination URL <%{public}@> for URL <%{public}@>", &v21, 0x16u);
  }

  if (v12)
  {
    v14 = v12;
    analyticsReferralFactory = [(FRVanityURLRouterManager *)self analyticsReferralFactory];
    v16 = [optionsCopy objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
    v17 = [analyticsReferralFactory analyticsReferralForURL:v14 sourceApplication:v16];
  }

  else
  {
    v14 = lCopy;
    v17 = referralCopy;
  }

  routerManager = [(FRVanityURLRouterManager *)self routerManager];
  v19 = [routerManager handleOpenURL:v14 options:optionsCopy analyticsReferral:v17];

  return v19;
}

- (void)addRoutable:(id)routable
{
  routableCopy = routable;
  routerManager = [(FRVanityURLRouterManager *)self routerManager];
  [routerManager addRoutable:routableCopy];
}

@end