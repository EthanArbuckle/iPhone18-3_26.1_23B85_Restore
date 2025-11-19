@interface OctaneListener
+ (void)start;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation OctaneListener

+ (void)start
{
  if (qword_1003D4AD0 != -1)
  {
    sub_1002D19EC();
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v25 = a3;
  v5 = a4;
  v28 = [v5 processIdentifier];
  v26 = [v5 sk_clientID];
  v6 = [v5 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [v6 mutableCopy];

      v6 = v7;
    }
  }

  if (!v6)
  {
    v6 = objc_opt_new();
  }

  v8 = +[NSUUID UUID];
  v29 = [v8 UUIDString];

  [v6 setObject:v29 forKeyedSubscript:@"octaneClientUUID"];
  [v5 setUserInfo:v6];
  if (qword_1003D4B20 != -1)
  {
    sub_1002D1A00();
  }

  v9 = qword_1003D4B10;
  if (os_log_type_enabled(qword_1003D4B10, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    *buf = 138543874;
    v39 = objc_opt_class();
    v40 = 1024;
    v41 = v28;
    v42 = 2114;
    v43 = v29;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@]: Got connection from pid: %i (%{public}@)", buf, 0x1Cu);
  }

  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___StoreKitTestingServiceProtocol];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [NSSet setWithObjects:v12, v13, v14, v15, objc_opt_class(), 0];
  [v11 setClasses:v16 forSelector:"sendTestPingbackForBundleID:completion:" argumentIndex:0 ofReply:1];

  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [NSSet setWithObjects:v17, v18, v19, objc_opt_class(), 0];
  [v11 setClasses:v20 forSelector:"showMessage:forBundleID:" argumentIndex:0 ofReply:0];

  [v5 setExportedInterface:v11];
  v21 = +[StoreKitTestingService defaultService];
  [v5 setExportedObject:v21];

  objc_initWeak(buf, self);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100077C38;
  v35[3] = &unk_1003830E0;
  objc_copyWeak(&v36, buf);
  v37 = v28;
  [v5 setInterruptionHandler:v35];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100077CB4;
  v30[3] = &unk_100383108;
  objc_copyWeak(&v33, buf);
  v34 = v28;
  v22 = v29;
  v31 = v22;
  v23 = v26;
  v32 = v23;
  [v5 setInvalidationHandler:v30];
  [v5 resume];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);

  return 1;
}

@end