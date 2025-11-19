@interface AMSDPushParsableFetchDataCache
+ (id)_dataCacheService;
+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5;
@end

@implementation AMSDPushParsableFetchDataCache

+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5
{
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543874;
    v32 = v9;
    v33 = 2114;
    v34 = v10;
    v35 = 2114;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Received push notification: %{public}@", buf, 0x20u);
  }

  v11 = [v6 accountIdentifier];
  if (!v11)
  {
    v14 = +[AMSLogConfig sharedAccountsConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v16 = objc_opt_class();
    v17 = AMSLogKey();
    *buf = 138543618;
    v32 = v16;
    v33 = 2114;
    v34 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping fetch data push - no account", buf, 0x16u);
    goto LABEL_31;
  }

  v12 = [v6 aps];
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
    v18 = [v6 aps];
    v19 = [v18 objectForKeyedSubscript:@"cacheTypeIds"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v19;
    }

    else
    {
      v15 = 0;
    }

    if (![v15 count])
    {
      goto LABEL_32;
    }

    v22 = +[AMSLogConfig sharedAccountsConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543618;
      v32 = v24;
      v33 = 2114;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating data cache", buf, 0x16u);
    }

    v17 = [a1 _dataCacheService];
    v26 = [NSSet setWithArray:v15];
    v27 = [v17 updateCacheForAccountDSID:v11 withCacheTypeIDs:v26];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10007F8AC;
    v30[3] = &unk_1002B1E10;
    v30[4] = a1;
    [v27 addFinishBlock:v30];

LABEL_31:
LABEL_32:

    goto LABEL_33;
  }

  if ([v14 isEqualToString:@"commerce:account-cache-sync"])
  {
    v20 = [v6 aps];
    v21 = [v20 objectForKeyedSubscript:@"payloadVersion"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v21;
    }

    else
    {
      v15 = 0;
    }

    if ([v15 longLongValue]!= 1)
    {
      goto LABEL_32;
    }

    v17 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10007F9DC;
    v29[3] = &unk_1002B1E30;
    v29[4] = a1;
    [v17 scheduleSyncFromPushWithDsid:objc_msgSend(v11 completionHandler:{"unsignedLongLongValue"), v29}];
    goto LABEL_31;
  }

  if ([v14 isEqualToString:@"ts:data-sync"])
  {
    v15 = +[_TtC12amsaccountsd17TSDataSyncService sharedService];
    v17 = [v6 payload];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10007FB00;
    v28[3] = &unk_1002B1E30;
    v28[4] = a1;
    [v15 handlePushNotificationWithPayload:v17 completionHandler:v28];
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