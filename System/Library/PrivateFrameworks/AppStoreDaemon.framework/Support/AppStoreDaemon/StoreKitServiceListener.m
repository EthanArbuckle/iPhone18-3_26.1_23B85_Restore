@interface StoreKitServiceListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (StoreKitServiceListener)init;
- (void)eventMonitor:(id)a3 receivedEventWithName:(id)a4 userInfo:(id)a5;
@end

@implementation StoreKitServiceListener

- (StoreKitServiceListener)init
{
  v6.receiver = self;
  v6.super_class = StoreKitServiceListener;
  v2 = [(StoreKitServiceListener *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    eventMonitor = v2->_eventMonitor;
    v2->_eventMonitor = v3;

    [(SSEventMonitor *)v2->_eventMonitor setDelegate:v2];
  }

  return v2;
}

- (void)eventMonitor:(id)a3 receivedEventWithName:(id)a4 userInfo:(id)a5
{
  v6 = a5;
  if ([a4 isEqualToString:SSEventNamePurchaseSucceeded])
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v56 = objc_opt_class();
      v8 = v56;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Received purchase success event", buf, 0xCu);
    }

    v9 = sub_100237B38(v6, @"response");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_opt_class();
      v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
      v54 = 0;
      v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v9 error:&v54];
      v13 = v54;

      if (v13)
      {
        v14 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v35 = objc_opt_class();
        *buf = 138543618;
        v56 = v35;
        v57 = 2114;
        v58 = v13;
        v28 = v35;
        v29 = "%{public}@: Failed to unarchive event data - %{public}@";
        v30 = v14;
        v31 = 22;
        goto LABEL_29;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 purchase];
        if (v13)
        {
          v15 = [v12 URLResponse];
          v14 = [v15 bodyData];

          if ([v14 length])
          {
            v53 = 0;
            v52 = [NSPropertyListSerialization propertyListWithData:v14 options:0 format:0 error:&v53];
            v16 = v53;
            if (v16)
            {
              v17 = ASDLogHandleForCategory();
              if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_ERROR))
              {
                v18 = objc_opt_class();
                *buf = 138543618;
                v56 = v18;
                v57 = 2114;
                v58 = v16;
                v19 = v18;
                _os_log_error_impl(&_mh_execute_header, &v17->super, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchive response data - %{public}@", buf, 0x16u);
              }
            }

            else
            {
              v17 = objc_alloc_init(_TtC9appstored6LogKey);
              v36 = [v13 buyParameters];
              v37 = [AMSBuyParams buyParamsWithString:v36];

              v38 = [v37 dictionary];
              v39 = sub_10023790C(v38, @"salableAdamId");

              v40 = [v37 dictionary];
              v50 = sub_1002380D8(v40, AMSBuyParamPropertyBundleId);

              v51 = v39;
              if (v39)
              {
                v49 = v37;
                v41 = [v12 URLResponse];

                if (v41)
                {
                  v42 = [v12 URLResponse];
                  v48 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v42 statusCode]);
                }

                else
                {
                  v48 = 0;
                }

                v46 = sub_100237D58(v52, @"ad-network");
                v47 = sub_1003A4EE0();
                v44 = v51;
                v43 = v48;
                sub_1003ABEC4(v47, v51, v50, v46, v48);

                v45 = v50;
                v37 = v49;
              }

              else
              {
                v43 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v56 = v17;
                  _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "[%@] Interrupted purchase no app adam ID found", buf, 0xCu);
                }

                v45 = v50;
                v44 = 0;
              }

              v16 = 0;
            }
          }

          else
          {
            v16 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v33 = objc_opt_class();
              *buf = 138543362;
              v56 = v33;
              v34 = v33;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Purchase response has no data", buf, 0xCu);
            }
          }

          goto LABEL_7;
        }

        v14 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
LABEL_7:

          goto LABEL_8;
        }

        v27 = objc_opt_class();
        *buf = 138543362;
        v56 = v27;
        v28 = v27;
        v29 = "%{public}@: Event payload has no original purchase";
        v30 = v14;
        v31 = 12;
LABEL_29:
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);

        goto LABEL_7;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v21 = ASDLogHandleForCategory();
      v13 = v21;
      if ((isKindOfClass & 1) == 0)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_opt_class();
          v24 = v23;
          v25 = objc_opt_class();
          *buf = 138543618;
          v56 = v23;
          v57 = 2114;
          v58 = v25;
          v26 = v25;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Event payload has invalid response. Expected: [SSPurchaseResponse | NSDictionary], Received: %{public}@", buf, 0x16u);
        }

        goto LABEL_8;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        *buf = 138543618;
        v56 = v22;
        v57 = 2114;
        v58 = v12;
        v14 = v22;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring purchase success event because the response is a dictionary. Likely from a code redemption. Response: %{public}@", buf, 0x16u);
        goto LABEL_7;
      }
    }

    else
    {
      v12 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v32 = objc_opt_class();
      *buf = 138543362;
      v56 = v32;
      v13 = v32;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: No payload data in event", buf, 0xCu);
    }

LABEL_8:

LABEL_10:
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 processIdentifier];
  if (proc_name(v8, buffer, 0x20u) < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSString stringWithUTF8String:buffer];
  }

  v10 = getpid();
  if (v8 == v10)
  {
    [NSException raise:@"SKServiceDelegateLocalConnection" format:@"%@ received a connection from itself", self];
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      v24 = v7;
      v12 = *&buf[4];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepting new connection (%{public}@) %{public}@", buf, 0x20u);
    }

    objc_opt_self();
    v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___StoreKitServiceConnection];
    [v7 setExportedInterface:v13];

    v14 = objc_alloc_init(StoreKitServiceConnection);
    [v7 setExportedObject:v14];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v24 = sub_1003CA394;
    v25 = sub_1003CA3A4;
    v15 = v7;
    v26 = v15;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1003CA3AC;
    v20[3] = &unk_10051AEC0;
    v20[4] = self;
    v16 = v9;
    v21 = v16;
    v22 = buf;
    [v15 setInvalidationHandler:v20];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1003CA494;
    v18[3] = &unk_10051B570;
    v18[4] = self;
    v19 = v16;
    [v15 setInterruptionHandler:v18];
    [v15 resume];

    _Block_object_dispose(buf, 8);
  }

  return v8 != v10;
}

@end