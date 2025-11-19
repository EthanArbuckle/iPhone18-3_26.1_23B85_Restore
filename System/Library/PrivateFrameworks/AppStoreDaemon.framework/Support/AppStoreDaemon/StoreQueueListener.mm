@interface StoreQueueListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (StoreQueueListener)init;
- (void)checkQueueWithOptions:(id)a3 completionBlock:(id)a4;
- (void)claimApplicationsWithOptions:(id)a3 completionBlock:(id)a4;
- (void)managedApplicationRequestWithOptions:(id)a3 completionBlock:(id)a4;
@end

@implementation StoreQueueListener

- (StoreQueueListener)init
{
  v3.receiver = self;
  v3.super_class = StoreQueueListener;
  return [(StoreQueueListener *)&v3 init];
}

- (void)checkQueueWithOptions:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = sub_1001D10E4(self);
    v16 = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: checkQueueWithOptionsclient: %{public}@", &v16, 0x16u);
  }

  v12 = sub_10037E764();
  if ([v6 reason] == 1)
  {
    v13 = sub_1001D10E4(self);
    v14 = v12;
    v15 = 0;
LABEL_7:
    sub_10037E840(v14, v15, v13, v7);
    goto LABEL_8;
  }

  if ([v6 reason] == 2)
  {
    v13 = sub_1001D10E4(self);
    v14 = v12;
    v15 = 1;
    goto LABEL_7;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v13 = ASDErrorWithTitleAndMessage();
  (*(v7 + 2))(v7, 0, v13);
LABEL_8:

LABEL_9:
}

- (void)claimApplicationsWithOptions:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = sub_1001D10E4(self);
    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: claimApplicationsWithOptions client: %{public}@", &v14, 0x16u);
  }

  v12 = sub_10037E764();
  v13 = sub_1001D10E4(self);
  sub_10037E8D0(v12, v7, v13);
}

- (void)managedApplicationRequestWithOptions:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_100265E8C(AMSProcessInfo);

  v9 = [v8 bundleIdentifier];
  v10 = qos_class_self();
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = sub_100304BEC(v10);
    v16 = 138544130;
    v17 = v12;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v14;
    v22 = 1024;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] ASDManagedApplicationRequest start with clientID: %{public}@ qoS: %{public}@ (0x%x)", &v16, 0x26u);
  }

  v15 = sub_10037E764();
  sub_10037E988(v15, v6, v9, v10, v5);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 processIdentifier];
  if (sub_1002280AC(self, v5, @"com.apple.appstored.private") || sub_1002280AC(self, v5, @"com.apple.appstored.install-apps") || (sub_100228370(self, v5, @"Queue") & 1) != 0)
  {
    goto LABEL_7;
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 1024;
    *&buf[14] = v6;
    v18 = *&buf[4];
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Treating %i as legacy client", buf, 0x12u);
  }

  if (sub_1002280AC(self, v5, @"com.apple.itunesstored.private"))
  {
LABEL_7:
    v8 = v5;
    v9 = v8;
    if (self)
    {
      v10 = [v8 processIdentifier];
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v12;
        *&buf[12] = 1024;
        *&buf[14] = v10;
        v13 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@]: Got connection from pid: %i", buf, 0x12u);
      }

      v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASDStoreQueueProtocol];
      [v9 setExportedInterface:v14];
      [v9 setExportedObject:self];
      objc_initWeak(&location, self);
      objc_initWeak(&from, v9);
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1001D1858;
      v24 = &unk_10051B858;
      objc_copyWeak(&v25, &location);
      v26 = v10;
      [v9 setInterruptionHandler:&v21];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1001D1940;
      v30 = &unk_10051B880;
      objc_copyWeak(&v31, &location);
      objc_copyWeak(&v32, &from);
      v33 = v10;
      [v9 setInvalidationHandler:{buf, v21, v22, v23, v24}];
      [v9 resume];
      objc_destroyWeak(&v32);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    v15 = 1;
  }

  else
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 1024;
      *&buf[14] = v6;
      v20 = v19;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@]: Connection denied for pid: %i for non entitled client", buf, 0x12u);
    }

    v15 = 0;
  }

  return v15;
}

@end