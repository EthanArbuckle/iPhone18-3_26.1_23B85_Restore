@interface FRVanityURLRouterManager
- (BOOL)handleOpenURL:(id)a3 options:(id)a4 analyticsReferral:(id)a5;
- (FRVanityURLRouterManager)init;
- (FRVanityURLRouterManager)initWithAnalyticsReferralFactory:(id)a3 redirectService:(id)a4 routerManager:(id)a5;
- (void)addRoutable:(id)a3;
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

- (FRVanityURLRouterManager)initWithAnalyticsReferralFactory:(id)a3 redirectService:(id)a4 routerManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F76C();
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F830();
  }

LABEL_6:
  if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F8F4();
  }

  v15.receiver = self;
  v15.super_class = FRVanityURLRouterManager;
  v12 = [(FRVanityURLRouterManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_analyticsReferralFactory, a3);
    objc_storeStrong(&v13->_redirectService, a4);
    objc_storeStrong(&v13->_routerManager, a5);
  }

  return v13;
}

- (BOOL)handleOpenURL:(id)a3 options:(id)a4 analyticsReferral:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FRVanityURLRouterManager *)self redirectService];
  v12 = [v11 destinationURLForURL:v8];

  v13 = FRNavigationLog;
  if (os_log_type_enabled(FRNavigationLog, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    v22 = v12;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "VanityURL manager has destination URL <%{public}@> for URL <%{public}@>", &v21, 0x16u);
  }

  if (v12)
  {
    v14 = v12;
    v15 = [(FRVanityURLRouterManager *)self analyticsReferralFactory];
    v16 = [v9 objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
    v17 = [v15 analyticsReferralForURL:v14 sourceApplication:v16];
  }

  else
  {
    v14 = v8;
    v17 = v10;
  }

  v18 = [(FRVanityURLRouterManager *)self routerManager];
  v19 = [v18 handleOpenURL:v14 options:v9 analyticsReferral:v17];

  return v19;
}

- (void)addRoutable:(id)a3
{
  v4 = a3;
  v5 = [(FRVanityURLRouterManager *)self routerManager];
  [v5 addRoutable:v4];
}

@end