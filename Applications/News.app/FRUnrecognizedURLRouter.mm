@interface FRUnrecognizedURLRouter
- (BOOL)handleOpenURL:(id)l options:(id)options analyticsReferral:(id)referral;
- (FRURLRouterManagerType)retryHandler;
- (FRUnrecognizedURLRouter)init;
- (FRUnrecognizedURLRouter)initWithAnalyticsReferralFactory:(id)factory redirectService:(id)service;
@end

@implementation FRUnrecognizedURLRouter

- (FRUnrecognizedURLRouter)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRUnrecognizedURLRouter init]";
    v8 = 2080;
    v9 = "FRUnrecognizedURLRouter.m";
    v10 = 1024;
    v11 = 28;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRUnrecognizedURLRouter init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRUnrecognizedURLRouter)initWithAnalyticsReferralFactory:(id)factory redirectService:(id)service
{
  factoryCopy = factory;
  serviceCopy = service;
  if (!factoryCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100068B94();
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
    sub_100068C74();
  }

LABEL_6:
  v12.receiver = self;
  v12.super_class = FRUnrecognizedURLRouter;
  v9 = [(FRUnrecognizedURLRouter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_analyticsReferralFactory, factory);
    objc_storeStrong(&v10->_redirectService, service);
  }

  return v10;
}

- (BOOL)handleOpenURL:(id)l options:(id)options analyticsReferral:(id)referral
{
  optionsCopy = options;
  lCopy = l;
  redirectService = [(FRUnrecognizedURLRouter *)self redirectService];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000D378;
  v12[3] = &unk_1000C1A10;
  v12[4] = self;
  v13 = optionsCopy;
  v10 = optionsCopy;
  [redirectService resolveURL:lCopy withQualityOfService:25 completion:v12];

  return 1;
}

- (FRURLRouterManagerType)retryHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_retryHandler);

  return WeakRetained;
}

@end