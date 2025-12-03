@interface AMSDPushParsableFetchDataCache
+ (id)_dataCacheService;
+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag;
@end

@implementation AMSDPushParsableFetchDataCache

+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag
{
  payloadCopy = payload;
  v7 = +[AMSLogConfig sharedAccountsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543874;
    v32 = v9;
    v33 = 2114;
    v34 = v10;
    v35 = 2114;
    v36 = payloadCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Received push notification: %{public}@", buf, 0x20u);
  }

  accountIdentifier = [payloadCopy accountIdentifier];
  if (!accountIdentifier)
  {
    v14 = +[AMSLogConfig sharedAccountsConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v16 = objc_opt_class();
    _dataCacheService = AMSLogKey();
    *buf = 138543618;
    v32 = v16;
    v33 = 2114;
    v34 = _dataCacheService;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping fetch data push - no account", buf, 0x16u);
    goto LABEL_31;
  }

  v12 = [payloadCopy aps];
  v13 = [v12 objectForKeyedSubscript:@"payloadType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ([v14 isEqualToString:@"mercury:marketing-cache-sync"])
  {
    v18 = [payloadCopy aps];
    v19 = [v18 objectForKeyedSubscript:@"cacheTypeIds"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      oSLogObject2 = v19;
    }

    else
    {
      oSLogObject2 = 0;
    }

    if (![oSLogObject2 count])
    {
      goto LABEL_32;
    }

    v22 = +[AMSLogConfig sharedAccountsConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543618;
      v32 = v24;
      v33 = 2114;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating data cache", buf, 0x16u);
    }

    _dataCacheService = [self _dataCacheService];
    v26 = [NSSet setWithArray:oSLogObject2];
    v27 = [_dataCacheService updateCacheForAccountDSID:accountIdentifier withCacheTypeIDs:v26];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10007F8AC;
    v30[3] = &unk_1002B1E10;
    v30[4] = self;
    [v27 addFinishBlock:v30];

LABEL_31:
LABEL_32:

    goto LABEL_33;
  }

  if ([v14 isEqualToString:@"commerce:account-cache-sync"])
  {
    v20 = [payloadCopy aps];
    v21 = [v20 objectForKeyedSubscript:@"payloadVersion"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      oSLogObject2 = v21;
    }

    else
    {
      oSLogObject2 = 0;
    }

    if ([oSLogObject2 longLongValue]!= 1)
    {
      goto LABEL_32;
    }

    _dataCacheService = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10007F9DC;
    v29[3] = &unk_1002B1E30;
    v29[4] = self;
    [_dataCacheService scheduleSyncFromPushWithDsid:objc_msgSend(accountIdentifier completionHandler:{"unsignedLongLongValue"), v29}];
    goto LABEL_31;
  }

  if ([v14 isEqualToString:@"ts:data-sync"])
  {
    oSLogObject2 = +[_TtC12amsaccountsd17TSDataSyncService sharedService];
    _dataCacheService = [payloadCopy payload];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10007FB00;
    v28[3] = &unk_1002B1E30;
    v28[4] = self;
    [oSLogObject2 handlePushNotificationWithPayload:_dataCacheService completionHandler:v28];
    goto LABEL_31;
  }

LABEL_33:
}

+ (id)_dataCacheService
{
  v2 = objc_alloc_init(AMSServerDataCacheService);

  return v2;
}

@end