@interface StoreKitServiceListener
+ (void)start;
- (StoreKitServiceListener)init;
- (void)_invalidateUnfinishedTransactionsForBundleID:(id)a3 logKey:(id)a4;
- (void)_syncReceiptsForClient:(_TtC9storekitd6Client *)a3 completionHandler:(id)a4;
- (void)eventMonitor:(id)a3 receivedEventWithName:(id)a4 userInfo:(id)a5;
- (void)pushService:(id)a3 didReceiveMessage:(id)a4;
@end

@implementation StoreKitServiceListener

+ (void)start
{
  if (qword_1003D44E8 != -1)
  {
    sub_1002CFA30();
  }
}

- (StoreKitServiceListener)init
{
  v8.receiver = self;
  v8.super_class = StoreKitServiceListener;
  v2 = [(StoreKitServiceListener *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    eventMonitor = v2->_eventMonitor;
    v2->_eventMonitor = v3;

    [(SSEventMonitor *)v2->_eventMonitor setDelegate:v2];
    v5 = objc_alloc_init(_TtC9storekitd23StoreKitPushSyncHandler);
    syncHandler = v2->_syncHandler;
    v2->_syncHandler = v5;
  }

  return v2;
}

- (void)eventMonitor:(id)a3 receivedEventWithName:(id)a4 userInfo:(id)a5
{
  v7 = a5;
  if ([a4 isEqualToString:SSEventNamePurchaseSucceeded])
  {
    v8 = +[NSUUID UUID];
    v9 = [v8 lib_logUUID];

    if (qword_1003D44F8 != -1)
    {
      sub_1002CFA44();
    }

    v10 = qword_1003CB910;
    if (os_log_type_enabled(qword_1003CB910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v60 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received purchase success event", buf, 0xCu);
    }

    v11 = [v7 tcr_dataForKey:@"response"];
    if (!v11)
    {
      if (qword_1003D44F8 != -1)
      {
        sub_1002CFA58();
      }

      v17 = qword_1003CB910;
      if (os_log_type_enabled(qword_1003CB910, OS_LOG_TYPE_ERROR))
      {
        sub_1002CFD88(v9, v17);
      }

      goto LABEL_18;
    }

    v52 = self;
    v12 = v9;
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
    v58 = 0;
    v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v14 fromData:v11 error:&v58];
    v16 = v58;

    if (v16)
    {
      if (qword_1003D44F8 != -1)
      {
        sub_1002CFA58();
      }

      if (os_log_type_enabled(qword_1003CB910, OS_LOG_TYPE_ERROR))
      {
        sub_1002CFA80();
      }

      goto LABEL_12;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (qword_1003D44F8 != -1)
        {
          sub_1002CFA58();
        }

        v23 = qword_1003CB910;
        if (os_log_type_enabled(qword_1003CB910, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543619;
          v60 = v9;
          v61 = 2113;
          v62 = v15;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring purchase success event because the response is a dictionary. Likely from a gift card redemption. Response: %{private}@", buf, 0x16u);
        }
      }

      else
      {
        if (qword_1003D44F8 != -1)
        {
          sub_1002CFA58();
        }

        v24 = qword_1003CB910;
        if (os_log_type_enabled(qword_1003CB910, OS_LOG_TYPE_ERROR))
        {
          sub_1002CFAF4(v9, v24);
        }
      }

      goto LABEL_13;
    }

    v16 = [v15 purchase];
    if (!v16)
    {
      if (qword_1003D44F8 != -1)
      {
        sub_1002CFA58();
      }

      v25 = qword_1003CB910;
      if (os_log_type_enabled(qword_1003CB910, OS_LOG_TYPE_ERROR))
      {
        sub_1002CFD10(v9, v25);
      }

      goto LABEL_12;
    }

    v18 = [v15 URLResponse];
    v19 = [v18 bodyData];

    if (![v19 length])
    {
      v21 = sub_10005A7C8(4u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v60 = v9;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purchase response has no data", buf, 0xCu);
      }

      goto LABEL_67;
    }

    v57 = 0;
    v20 = [NSPropertyListSerialization propertyListWithData:v19 options:0 format:0 error:&v57];
    v21 = v57;
    if (v21)
    {
      v22 = sub_10005A7C8(4u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1002CFB90();
      }

      goto LABEL_66;
    }

    v50 = [v20 tcr_stringForKey:@"jingleAction"];
    v26 = [v50 isEqualToString:@"inAppBuy"];
    log = sub_10005A7C8(4u);
    v27 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if ((v26 & 1) == 0)
    {
      if (v27)
      {
        *buf = 138543362;
        v60 = v9;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purchase response is not for an in app buy", buf, 0xCu);
      }

      v22 = v50;
      goto LABEL_65;
    }

    v47 = v20;
    if (v27)
    {
      *buf = 138543362;
      v60 = v9;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purchase response is for an in app buy", buf, 0xCu);
    }

    v28 = [v16 buyParameters];
    v29 = [AMSBuyParams buyParamsWithString:v28];

    v30 = [v29 dictionary];
    v31 = [v30 tcr_numberForKey:@"appAdamId"];

    log = v29;
    v32 = [v29 parameterForKey:@"bid"];
    v48 = v32;
    v46 = v31;
    if (v31 && (v33 = [LSApplicationRecord alloc], v34 = [v31 longLongValue], v35 = v33, v32 = v48, (v49 = objc_msgSend(v35, "initWithStoreItemIdentifier:error:", v34, 0)) != 0))
    {
      v20 = v47;
    }

    else
    {
      v20 = v47;
      if (![v32 length] || (v49 = objc_msgSend([LSApplicationRecord alloc], "initWithBundleIdentifier:allowPlaceholder:error:", v32, 0, 0)) == 0)
      {
        v49 = sub_10005A7C8(4u);
        v9 = v12;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_1002CFC78(v12, v52, v49);
        }

        v22 = v50;
        goto LABEL_64;
      }
    }

    v9 = v12;
    v45 = sub_1000284A4(v20, v12);
    if (v45)
    {
      v36 = sub_10005A7C8(4u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v49 bundleIdentifier];
        *buf = 138543618;
        v60 = v12;
        v61 = 2114;
        v62 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Writing receipt to app %{public}@", buf, 0x16u);
      }

      v38 = [v49 URL];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_10005B164;
      v55[3] = &unk_1003802F0;
      v56 = v12;
      [WriteReceipt writeReceiptData:v45 forBundleURL:v38 logKey:v56 completionHandler:v55];

      v32 = v48;
    }

    [(StoreKitServiceListener *)v52 _invalidateUnfinishedTransactionsForBundleID:v32 logKey:v12];
    v39 = [_TtC9storekitd6Client alloc];
    v40 = [v49 URL];
    v41 = [(Client *)v39 initWithURL:v40 overridesDictionary:0];

    if (v41)
    {
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10005B1E0;
      v53[3] = &unk_1003802F0;
      v54 = v12;
      [(StoreKitServiceListener *)v52 _syncReceiptsForClient:v41 completionHandler:v53];
      v42 = v54;
      v20 = v47;
      v43 = v41;
      v22 = v50;
    }

    else
    {
      v44 = sub_10005A7C8(4u);
      v22 = v50;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_1002CFC04();
        v42 = v44;
        v20 = v47;
        v43 = 0;
      }

      else
      {
        v20 = v47;
        v43 = 0;
        v42 = v44;
      }
    }

LABEL_64:
LABEL_65:

LABEL_66:
LABEL_67:

LABEL_12:
LABEL_13:

LABEL_18:
  }
}

- (void)pushService:(id)a3 didReceiveMessage:(id)a4
{
  v4 = a4;
  v5 = +[NSUUID UUID];
  v31 = [v5 lib_logUUID];

  v30 = v4;
  v6 = [v4 valueForUserInfoKey:@"2"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_30:
      v11 = 0;
      goto LABEL_31;
    }

    v50 = v6;
    v7 = [NSArray arrayWithObjects:&v50 count:1];
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_30;
  }

  v28 = v6;
  if (qword_1003D44F8 != -1)
  {
    sub_1002CFA58();
  }

  v9 = qword_1003CB918;
  if (os_log_type_enabled(qword_1003CB918, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543874;
    v45 = v31;
    v46 = 2048;
    v47 = [v4 actionType];
    v48 = 2114;
    v49 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received push action %ld for %{public}@", buf, 0x20u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      v15 = 0;
      do
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v39 + 1) + 8 * v15);
        v38 = 0;
        v17 = [LSBundleRecord bundleRecordWithBundleIdentifier:v16 allowPlaceholder:0 error:&v38];
        v18 = v38;
        if (v17)
        {
          v19 = [_TtC9storekitd6Client alloc];
          v20 = [v17 URL];
          v21 = [(Client *)v19 initWithURL:v20 overridesDictionary:0];

          if (v21)
          {
            syncHandler = self->_syncHandler;
            v33 = v18;
            v22 = [v30 actionType];
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_10005B770;
            v34[3] = &unk_1003824E8;
            v35 = v30;
            v36 = v31;
            v37 = v16;
            v23 = v22;
            v18 = v33;
            [(StoreKitPushSyncHandler *)syncHandler receivedPushAction:v23 client:v21 completionHandler:v34];
          }

          else
          {
            if (qword_1003D44F8 != -1)
            {
              sub_1002CFA58();
            }

            v25 = qword_1003CB918;
            if (os_log_type_enabled(qword_1003CB918, OS_LOG_TYPE_ERROR))
            {
              v26 = v25;
              v27 = [v17 URL];
              *buf = 138543618;
              v45 = v31;
              v46 = 2114;
              v47 = v27;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%{public}@] Could not initialize client with URL %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          if (qword_1003D44F8 != -1)
          {
            sub_1002CFA58();
          }

          v24 = qword_1003CB918;
          if (os_log_type_enabled(qword_1003CB918, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v45 = v31;
            v46 = 2114;
            v47 = v16;
            v48 = 2114;
            v49 = v18;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Could not find bundle record for %{public}@ - %{public}@", buf, 0x20u);
          }
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v13);
  }

  v6 = v28;
LABEL_31:
}

- (void)_invalidateUnfinishedTransactionsForBundleID:(id)a3 logKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1003D44F8 != -1)
  {
    sub_1002CFA44();
  }

  v7 = qword_1003CB918;
  if (os_log_type_enabled(qword_1003CB918, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *v16 = 138543874;
    *&v16[4] = objc_opt_class();
    *&v16[12] = 2114;
    *&v16[14] = v6;
    *&v16[22] = 2114;
    v17 = v5;
    v9 = *&v16[4];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Marking cache stale in response to push for client: %{public}@", v16, 0x20u);
  }

  if (![LoadUnfinishedInAppTransactionsTask invalidateCacheForBundleID:v5 withLogKey:v6, *v16, *&v16[16], v17])
  {
    if (qword_1003D44F8 != -1)
    {
      sub_1002CFA58();
    }

    v10 = qword_1003CB918;
    if (os_log_type_enabled(qword_1003CB918, OS_LOG_TYPE_ERROR))
    {
      sub_1002D006C(v10);
    }
  }

  if (qword_1003D44F8 != -1)
  {
    sub_1002CFA58();
  }

  v11 = qword_1003CB918;
  if (os_log_type_enabled(qword_1003CB918, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    *v16 = 138543618;
    *&v16[4] = v13;
    *&v16[12] = 2114;
    *&v16[14] = v6;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Sending unfinished transactions notification in response to push", v16, 0x16u);
  }

  v15 = sub_100039F90(v5);
  notify_post([v15 UTF8String]);
}

- (void)_syncReceiptsForClient:(_TtC9storekitd6Client *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_100224DF8(&unk_1002EEED8, v7);
}

@end