@interface IMUbiquityQuotaFetcher
- (IMUbiquityQuotaFetcher)init;
- (void)fetchUserQuotaWithCompletion:(id)a3;
- (void)fetchUserQuotaWithTimeOut:(double)a3 completion:(id)a4;
@end

@implementation IMUbiquityQuotaFetcher

- (IMUbiquityQuotaFetcher)init
{
  v8.receiver = self;
  v8.super_class = IMUbiquityQuotaFetcher;
  v2 = [(IMUbiquityQuotaFetcher *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    quotaFetchingOperationsQueue = v2->_quotaFetchingOperationsQueue;
    v2->_quotaFetchingOperationsQueue = v3;

    [(NSOperationQueue *)v2->_quotaFetchingOperationsQueue setQualityOfService:17];
    v5 = [NSMapTable mapTableWithKeyOptions:5 valueOptions:512];
    operationToWatchdogTimerMap = v2->_operationToWatchdogTimerMap;
    v2->_operationToWatchdogTimerMap = v5;
  }

  return v2;
}

- (void)fetchUserQuotaWithCompletion:(id)a3
{
  v4 = a3;
  [(IMUbiquityQuotaFetcher *)self cloudServerResponseTimeout];
  [(IMUbiquityQuotaFetcher *)self fetchUserQuotaWithTimeOut:v4 completion:?];
}

- (void)fetchUserQuotaWithTimeOut:(double)a3 completion:(id)a4
{
  v6 = a4;
  if (+[BCSyncUserDefaults isSignedIntoICloud](BCSyncUserDefaults, "isSignedIntoICloud") && +[BCSyncUserDefaults isICloudDriveEnabledForBooks])
  {
    v7 = [(IMUbiquityQuotaFetcher *)self quotaFetchingOperationsQueue];

    if (!v7)
    {
      sub_1E7A28(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = objc_opt_new();
    objc_initWeak(location, v16);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_84260;
    v31[3] = &unk_2CB448;
    objc_copyWeak(&v33, location);
    v31[4] = self;
    v32 = v6;
    [v16 setFetchQuotaCompletionBlock:v31];
    v17 = dispatch_get_global_queue(0, 0);
    v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v17);

    if (v18)
    {
      v19 = [(IMUbiquityQuotaFetcher *)self operationToWatchdogTimerMap];
      [v19 setObject:v18 forKey:v16];

      v20 = dispatch_time(0, (a3 * 1000000000.0));
      dispatch_source_set_timer(v18, v20, 0xFFFFFFFFFFFFFFFFLL, 0);
      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_84594;
      v29 = &unk_2C7D40;
      v21 = v16;
      v30 = v21;
      dispatch_source_set_event_handler(v18, &v26);
      dispatch_resume(v18);
      v22 = [(IMUbiquityQuotaFetcher *)self quotaFetchingOperationsQueue:v26];
      [v22 addOperation:v21];
    }

    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    v23 = BCQuotaFetcherLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Not fetching quota. Background or offline.", location, 2u);
    }

    v16 = objc_retainBlock(v6);
    if (v16)
    {
      v24 = [(IMUbiquityQuotaFetcher *)self lastCachedFreeBytes];
      v25 = [NSError errorWithDomain:@"IMUbiquityQuotaFetcherErrorDomain" code:-1000 userInfo:0];
      (v16)[2](v16, v24, v25);
    }
  }
}

@end