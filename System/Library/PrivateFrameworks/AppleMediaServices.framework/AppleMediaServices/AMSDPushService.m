@interface AMSDPushService
+ (AMSDPushService)sharedService;
+ (BOOL)isConnectionEntitled:(id)a3;
- (AMSDPushService)initWithCompletion:(id)a3;
- (id)_bagForAccount:(id)a3;
- (id)_connectionForEnvironment:(id)a3;
- (id)_establishConnectionsAndPostPushTokens;
- (id)_establishConnectionsIfNeeded;
- (id)_postPushTokensWithOptions:(int64_t)a3;
- (id)_productionPushAccounts;
- (id)_pushEnvironmentForAccount:(id)a3;
- (id)_pushEnvironmentFromBag:(id)a3;
- (id)_pushTokenForEnvironment:(id)a3;
- (id)_registerAccounts:(id)a3 withOptions:(int64_t)a4;
- (id)_sandboxPushAccounts;
- (id)_startConnectionWithEnvironment:(id)a3;
- (id)forceRegisterAccount:(id)a3;
- (void)_bagChanged;
- (void)_deviceNameChanged;
- (void)_shutDownConnection:(id)a3 forEnvironment:(id)a4;
- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connectionDidReconnect:(id)a3;
- (void)dealloc;
- (void)registerAllTokensWithCompletionHandler:(id)a3;
- (void)registerTokensIfNeededWithCompletionHandler:(id)a3;
@end

@implementation AMSDPushService

- (AMSDPushService)initWithCompletion:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = AMSDPushService;
  v5 = [(AMSDPushService *)&v49 init];
  if (v5)
  {
    v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = AMSLogKey();
      v9 = v8 == 0;
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        v9 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v11, v9];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      *buf = 138543362;
      v54 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Starting Service", buf, 0xCu);
      if (v8)
      {

        v12 = v9;
      }
    }

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.AMSDPushService", v13);
    connectionQueue = v5->_connectionQueue;
    v5->_connectionQueue = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.AMSDPushService.registerTask", v16);
    registerTaskQueue = v5->_registerTaskQueue;
    v5->_registerTaskQueue = v17;

    v5->_connectionLock._os_unfair_lock_opaque = 0;
    v19 = objc_alloc_init(NSMutableDictionary);
    connections = v5->_connections;
    v5->_connections = v19;

    v21 = objc_alloc_init(NSMutableDictionary);
    pushTokens = v5->_pushTokens;
    v5->_pushTokens = v21;

    classConsumers = v5->_classConsumers;
    v5->_classConsumers = &__NSArray0__struct;

    if (+[AMSUnitTests isRunningUnitTests])
    {
      instanceConsumers = v5->_instanceConsumers;
      v5->_instanceConsumers = &__NSArray0__struct;
    }

    else
    {
      v25 = +[AMSDMultiUserController sharedController];
      instanceConsumers = v25;
      if (v25)
      {
        v52 = v25;
        v26 = [NSArray arrayWithObjects:&v52 count:1];
      }

      else
      {
        v26 = &__NSArray0__struct;
      }

      v27 = v5->_instanceConsumers;
      v5->_instanceConsumers = v26;
    }

    v51[0] = @"26";
    v51[1] = AMSPushActionTypeAlertNotification;
    v51[2] = AMSPushActionTypeDismissQRDialog;
    v51[3] = AMSPushActionTypeDSATCache;
    v51[4] = AMSPushActionTypeEngagement;
    v51[5] = AMSPushActionTypeRichNotification;
    v51[6] = AMSPushActionTypeFetchDataCache;
    v51[7] = AMSPushActionTypeFollowUp;
    v51[8] = @"24";
    v28 = [NSArray arrayWithObjects:v51 count:9];
    v29 = [NSMutableSet setWithArray:v28];

    [v29 addObject:@"27"];
    [v29 addObject:@"41"];
    v30 = [AMSPushConfiguration alloc];
    v31 = [v29 copy];
    v32 = [v30 initWithEnabledActionTypes:v31];

    v33 = [AMSDPushHandler alloc];
    v34 = +[AMSDBag defaultBag];
    v35 = [(AMSDPushHandler *)v33 initWithConfiguration:v32 bag:v34];
    pushHandler = v5->_pushHandler;
    v5->_pushHandler = v35;

    v37 = +[NSNotificationCenter defaultCenter];
    [v37 addObserver:v5 selector:"_bagChanged" name:AMSBagChangedNotification object:0];

    objc_initWeak(buf, v5);
    v50 = @"UserAssignedDeviceName";
    [NSArray arrayWithObjects:&v50 count:1];
    v44 = _NSConcreteStackBlock;
    v45 = 3221225472;
    v46 = sub_100082534;
    v47 = &unk_1002B1EF8;
    objc_copyWeak(&v48, buf);
    v5->_deviceNameChangedToken = MGRegisterForUpdates();
    v38 = +[AMSDBag defaultBag];
    v39 = [(AMSDPushService *)v5 _pushEnvironmentFromBag:v38];

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100082574;
    v41[3] = &unk_1002B1F20;
    v42 = v5;
    v43 = v4;
    [v39 addSuccessBlock:v41];

    objc_destroyWeak(&v48);
    objc_destroyWeak(buf);
  }

  return v5;
}

- (void)dealloc
{
  [(AMSDPushService *)self deviceNameChangedToken];
  MGCancelNotifications();
  v3.receiver = self;
  v3.super_class = AMSDPushService;
  [(AMSDPushService *)&v3 dealloc];
}

+ (AMSDPushService)sharedService
{
  if (qword_1002E3428 != -1)
  {
    sub_10021B4B8();
  }

  v3 = qword_1002E3430;

  return v3;
}

- (id)forceRegisterAccount:(id)a3
{
  if (a3)
  {
    v10 = a3;
    v4 = a3;
    v5 = [NSArray arrayWithObjects:&v10 count:1];

    v6 = [(AMSDPushService *)self _registerAccounts:v5 withOptions:1, v10];
  }

  else
  {
    v7 = 0;
    v8 = AMSError();
    v6 = [AMSPromise promiseWithError:v8];
  }

  return v6;
}

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (void)registerAllTokensWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = AMSSetLogKeyIfNeeded();
  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = objc_opt_class();
    v11 = v10;
    if (v9)
    {
      v3 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v11, v3];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Received request to register all tokens.", buf, 0xCu);
    if (v9)
    {

      v12 = v3;
    }
  }

  v13 = [(AMSDPushService *)self _establishConnectionsIfNeeded];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100082AD8;
  v19[3] = &unk_1002AFDD8;
  v19[4] = self;
  [v13 addErrorBlock:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100082C70;
  v18[3] = &unk_1002B1F68;
  v18[4] = self;
  v14 = [v13 thenWithBlock:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100082C7C;
  v16[3] = &unk_1002B03D0;
  v17 = v5;
  v15 = v5;
  [v14 addFinishBlock:v16];
}

- (void)registerTokensIfNeededWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = AMSSetLogKeyIfNeeded();
  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = objc_opt_class();
    v11 = v10;
    if (v9)
    {
      v3 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v11, v3];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    *buf = 138543362;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Received request to register tokens if needed.", buf, 0xCu);
    if (v9)
    {

      v12 = v3;
    }
  }

  v13 = [(AMSDPushService *)self _establishConnectionsAndPostPushTokens];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100082E88;
  v15[3] = &unk_1002B03D0;
  v16 = v5;
  v14 = v5;
  [v13 addFinishBlock:v15];
}

- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4
{
  v4 = a4;
  v7 = AMSSetLogKey();
  v8 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = AMSLogKey();
    v11 = objc_opt_class();
    if (v10)
    {
      v12 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v11, v12, a2];
    }

    else
    {
      v12 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: %@ ", v11, v12];
    }
    v13 = ;
    v14 = @"false";
    if (v4)
    {
      v14 = @"true";
    }

    *buf = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@APS is connected: %{public}@", buf, 0x16u);
    if (v10)
    {

      v13 = a2;
    }
  }

  if (v4)
  {
    v15 = [(AMSDPushService *)self _postPushTokensIfNeeded];
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v8 = a3;
  v79 = a4;
  v9 = AMSSetLogKey();
  v10 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = AMSLogKey();
    v13 = self;
    v14 = objc_opt_class();
    if (v12)
    {
      v15 = AMSLogKey();
      self = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v14, v15, self];
    }

    else
    {
      v15 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: %@ ", v14, v15];
    }
    v4 = ;
    v16 = [v79 topic];
    v5 = AMSHashIfNeeded();
    *buf = 138543618;
    v92 = v4;
    v93 = 2114;
    v94 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Received message on topic: %{public}@", buf, 0x16u);

    if (v12)
    {

      v4 = self;
    }

    self = v13;
  }

  v17 = v79;
  v18 = [v79 topic];
  if ([v18 isEqualToString:@"com.apple.amsaccountsd"])
  {
    goto LABEL_13;
  }

  v19 = [v79 topic];
  if ([v19 isEqualToString:@"com.apple.ams.accountdata"])
  {

LABEL_13:
LABEL_14:
    v20 = [v79 userInfo];
    v21 = [(AMSDPushService *)self pushHandler];
    v22 = [v21 shouldHandleNotification:v20];

    if (v22)
    {
      v23 = [(AMSDPushService *)self pushHandler];
      [v23 handleNotification:v20];
    }

    else
    {
      v23 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v20;
        v26 = AMSLogKey();
        v27 = objc_opt_class();
        if (v26)
        {
          v28 = AMSLogKey();
          v4 = NSStringFromSelector(a2);
          [NSString stringWithFormat:@"%@: [%@] %@ ", v27, v28, v4];
        }

        else
        {
          v28 = NSStringFromSelector(a2);
          [NSString stringWithFormat:@"%@: %@ ", v27, v28];
        }
        v29 = ;
        *buf = 138543362;
        v92 = v29;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Message not handled and dropped.", buf, 0xCu);
        v17 = v79;
        if (v26)
        {

          v29 = v4;
        }

        v20 = v25;
      }
    }

    goto LABEL_61;
  }

  v30 = [v79 topic];
  v31 = [v30 isEqualToString:@"com.apple.ams.ts-datasync"];

  if (v31)
  {
    goto LABEL_14;
  }

  v70 = v8;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v77 = self;
  obj = [(AMSDPushService *)self classConsumers];
  v32 = [obj countByEnumeratingWithState:&v85 objects:v90 count:16];
  v33 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  if (v32)
  {
    v34 = v32;
    v35 = *v86;
    v72 = *v86;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v86 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v80 = *(*(&v85 + 1) + 8 * i);
        v37 = +[AMSLogConfig sharedAccountsDaemonConfig];
        if (!v37)
        {
          v37 = +[AMSLogConfig sharedConfig];
        }

        v38 = [v37 OSLogObject];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = AMSLogKey();
          v40 = objc_opt_class();
          if (v39)
          {
            AMSLogKey();
            v41 = v18;
            v42 = v34;
            v44 = v43 = v8;
            v75 = NSStringFromSelector(a2);
            v76 = v44;
            v68 = v44;
            v8 = v43;
            v34 = v42;
            v18 = v41;
            v45 = [NSString stringWithFormat:@"%@: [%@] %@ ", v40, v68, v75];
            v5 = v45;
          }

          else
          {
            v8 = NSStringFromSelector(a2);
            v45 = [NSString stringWithFormat:@"%@: %@ ", v40, v8];
            v18 = v45;
          }

          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          *buf = 138543618;
          v92 = v45;
          v93 = 2114;
          v94 = v47;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%{public}@Forwarding message to class consumer of type %{public}@", buf, 0x16u);
          v48 = v18;
          v49 = v8;
          if (v39)
          {

            v48 = v75;
            v49 = v76;
          }

          v17 = v79;
          v33 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
          v35 = v72;
        }

        [v80 handlePushNotification:v17];
      }

      v34 = [obj countByEnumeratingWithState:&v85 objects:v90 count:16];
    }

    while (v34);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v20 = [(AMSDPushService *)v77 instanceConsumers];
  v50 = [v20 countByEnumeratingWithState:&v81 objects:v89 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v82;
    v71 = v20;
    v73 = *v82;
    do
    {
      for (j = 0; j != v51; j = j + 1)
      {
        if (*v82 != v52)
        {
          objc_enumerationMutation(v20);
        }

        v54 = *(*(&v81 + 1) + 8 * j);
        v55 = [v33[95] sharedAccountsDaemonConfig];
        if (!v55)
        {
          v55 = [v33[95] sharedConfig];
        }

        v56 = [v55 OSLogObject];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = AMSLogKey();
          v58 = objc_opt_class();
          if (v57)
          {
            AMSLogKey();
            v59 = v8;
            v61 = v60 = v51;
            v75 = NSStringFromSelector(a2);
            v76 = v61;
            v69 = v61;
            v51 = v60;
            v8 = v59;
            v62 = [NSString stringWithFormat:@"%@: [%@] %@ ", v58, v69, v75];
            obj = v62;
            v63 = v80;
          }

          else
          {
            v8 = NSStringFromSelector(a2);
            v62 = [NSString stringWithFormat:@"%@: %@ ", v58, v8];
            v63 = v62;
          }

          v64 = objc_opt_class();
          v65 = NSStringFromClass(v64);
          *buf = 138543618;
          v92 = v62;
          v93 = 2114;
          v94 = v65;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%{public}@Forwarding message to instance consumer of type %{public}@", buf, 0x16u);
          v80 = v63;
          v66 = v63;
          v67 = v8;
          if (v57)
          {

            v66 = v75;
            v67 = v76;
          }

          v17 = v79;
          v33 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
          v20 = v71;
          v52 = v73;
        }

        [v54 handlePushNotification:v17];
      }

      v51 = [v20 countByEnumeratingWithState:&v81 objects:v89 count:16];
    }

    while (v51);
  }

  v8 = v70;
LABEL_61:
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = AMSSetLogKey();
  v11 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    aSelector = a2;
    v13 = AMSLogKey();
    v14 = objc_opt_class();
    if (v13)
    {
      v15 = AMSLogKey();
      v4 = NSStringFromSelector(aSelector);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v14, v15, v4];
    }

    else
    {
      v15 = NSStringFromSelector(aSelector);
      [NSString stringWithFormat:@"%@: %@ ", v14, v15];
    }
    v16 = ;
    v17 = AMSHashIfNeeded();
    *buf = 138543618;
    v34 = v16;
    v35 = 2114;
    v36 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Received token: %{public}@", buf, 0x16u);
    if (v13)
    {

      v16 = v4;
    }

    a2 = aSelector;
  }

  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  os_unfair_lock_lock_with_options();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [(NSMutableDictionary *)self->_connections allKeys];
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * i);
        v24 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:v23];

        if (v24 == v8)
        {
          [(NSMutableDictionary *)self->_pushTokens setObject:v9 forKeyedSubscript:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }

  os_unfair_lock_assert_owner(&self->_connectionLock);
  os_unfair_lock_unlock(&self->_connectionLock);
  if ((+[AMSUnitTests isRunningUnitTests]& 1) == 0)
  {
    v25 = [(AMSDPushService *)self _postPushTokensIfNeeded];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100083C44;
    v27[3] = &unk_1002B1F90;
    v27[4] = self;
    v27[5] = a2;
    [v25 addErrorBlock:v27];
  }
}

- (void)connectionDidReconnect:(id)a3
{
  v5 = AMSSetLogKey();
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = objc_opt_class();
    if (v8)
    {
      v10 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v9, v10, a2];
    }

    else
    {
      v10 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: %@ ", v9, v10];
    }
    v11 = ;
    *buf = 138543362;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@APS reconnected.", buf, 0xCu);
    if (v8)
    {

      v11 = a2;
    }
  }

  v12 = [(AMSDPushService *)self _postPushTokensIfNeeded];
}

- (void)_bagChanged
{
  v4 = AMSSetLogKey();
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = objc_opt_class();
    v9 = v8;
    if (v7)
    {
      v2 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    *buf = 138543362;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Received bag-changed notification.", buf, 0xCu);
    if (v7)
    {

      v10 = v2;
    }
  }

  v11 = [(AMSDPushService *)self _establishConnectionsAndPostPushTokens];
}

- (void)_deviceNameChanged
{
  v4 = AMSSetLogKey();
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = objc_opt_class();
    v9 = v8;
    if (v7)
    {
      v2 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Device name changed", buf, 0xCu);
    if (v7)
    {

      v10 = v2;
    }
  }

  v11 = [(AMSDPushService *)self _postPushTokensIfNeeded];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100084328;
  v12[3] = &unk_1002AFDD8;
  v12[4] = self;
  [v11 addErrorBlock:v12];
}

- (id)_bagForAccount:(id)a3
{
  if ([a3 ams_isSandboxAccount])
  {
    [AMSDBag bagForMediaType:AMSAccountMediaTypeAppStoreSandbox];
  }

  else
  {
    +[AMSDBag defaultBag];
  }
  v3 = ;

  return v3;
}

- (id)_connectionForEnvironment:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:v4];

  os_unfair_lock_assert_owner(&self->_connectionLock);
  os_unfair_lock_unlock(&self->_connectionLock);

  return v5;
}

- (id)_establishConnectionsAndPostPushTokens
{
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  v3 = [(AMSDPushService *)self _establishConnectionsIfNeeded];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000846A0;
  v7[3] = &unk_1002AFDD8;
  v7[4] = self;
  [v3 addErrorBlock:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100084838;
  v6[3] = &unk_1002B1F68;
  v6[4] = self;
  v4 = [v3 thenWithBlock:v6];

  return v4;
}

- (id)_establishConnectionsIfNeeded
{
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  v3 = [(AMSDPushService *)self _productionPushAccounts];
  v4 = [(AMSDPushService *)self _sandboxPushAccounts];
  v5 = [v3 thenWithBlock:&stru_1002B1FB0];
  v6 = [v4 thenWithBlock:&stru_1002B1FD0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100084B98;
  v17[3] = &unk_1002B2018;
  v17[4] = self;
  v7 = [v5 thenWithBlock:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100084CC4;
  v16[3] = &unk_1002B2018;
  v16[4] = self;
  v8 = [v6 thenWithBlock:v16];
  v18[0] = v8;
  v18[1] = v7;
  v9 = [NSArray arrayWithObjects:v18 count:2];
  v10 = [AMSPromise promiseWithAll:v9];
  v11 = [v10 thenWithBlock:&stru_1002B2058];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100084F98;
  v15[3] = &unk_1002B0310;
  v15[4] = self;
  v12 = [v11 thenWithBlock:v15];
  v13 = [v12 binaryPromiseAdapter];

  return v13;
}

- (id)_postPushTokensWithOptions:(int64_t)a3
{
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = AMSLogKey();
    v9 = objc_opt_class();
    v10 = v9;
    if (v8)
    {
      v3 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v10, v3];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    *buf = 138543362;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to post push token if needed.", buf, 0xCu);
    if (v8)
    {

      v11 = v3;
    }
  }

  v12 = [(AMSDPushService *)self _productionPushAccounts];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000856C8;
  v26[3] = &unk_1002B20E8;
  v27 = &stru_1002B20C0;
  v13 = [v12 thenWithBlock:v26];

  v14 = [(AMSDPushService *)self _sandboxPushAccounts];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10008572C;
  v24[3] = &unk_1002B20E8;
  v25 = &stru_1002B20C0;
  v15 = [v14 thenWithBlock:v24];

  v28[0] = v13;
  v28[1] = v15;
  v16 = [NSArray arrayWithObjects:v28 count:2];
  v17 = [AMSPromise promiseWithAll:v16];
  v18 = [v17 thenWithBlock:&stru_1002B2108];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100085834;
  v23[3] = &unk_1002B2130;
  v23[4] = self;
  v23[5] = a3;
  v19 = [v18 thenWithBlock:v23];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100085844;
  v22[3] = &unk_1002AFDD8;
  v22[4] = self;
  [v19 addErrorBlock:v22];
  v20 = [v19 binaryPromiseAdapter];

  return v20;
}

- (id)_productionPushAccounts
{
  v3 = [NSSet setWithObjects:AMSAccountMediaTypeProduction, 0];
  v4 = +[ACAccountStore ams_sharedAccountStore];
  v5 = [v4 ams_iTunesAccountsForMediaTypes:v3];
  v6 = [(AMSDPushService *)self _promiseByFilteringLocalAccountsFromPromise:v5];

  return v6;
}

- (id)_pushEnvironmentForAccount:(id)a3
{
  v4 = [(AMSDPushService *)self _bagForAccount:a3];
  v5 = [(AMSDPushService *)self _pushEnvironmentFromBag:v4];

  return v5;
}

- (id)_pushEnvironmentFromBag:(id)a3
{
  v4 = a3;
  v5 = +[AMSDefaults pushEnvironment];
  if (v5 == 1)
  {
    v6 = &APSEnvironmentProduction;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_7;
    }

    v6 = &APSEnvironmentDevelopment;
  }

  v7 = *v6;
  if (v7)
  {
    v8 = v7;
    goto LABEL_9;
  }

LABEL_7:
  v8 = APSEnvironmentProduction;
  if (os_variant_has_internal_content())
  {
    v9 = [v4 stringForKey:@"push-notifications/environment"];
    v10 = [v9 valuePromise];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100085D40;
    v15[3] = &unk_1002AFDD8;
    v15[4] = self;
    [v10 addErrorBlock:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100085ED8;
    v13[3] = &unk_1002B1530;
    v8 = v8;
    v14 = v8;
    v11 = [v10 catchWithBlock:v13];

    goto LABEL_10;
  }

LABEL_9:
  v11 = [AMSPromise promiseWithResult:v8];
LABEL_10:

  return v11;
}

- (id)_pushTokenForEnvironment:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_pushTokens objectForKeyedSubscript:v4];

  os_unfair_lock_assert_owner(&self->_connectionLock);
  os_unfair_lock_unlock(&self->_connectionLock);

  return v5;
}

- (id)_registerAccounts:(id)a3 withOptions:(int64_t)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000861A8;
    v17[3] = &unk_1002B21E8;
    v17[4] = self;
    v17[5] = a4;
    v7 = [v6 ams_mapWithTransform:v17];
    v8 = [AMSPromise promiseWithAll:v7];
  }

  else
  {
    v9 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = AMSLogKey();
      v12 = objc_opt_class();
      v13 = v12;
      if (v11)
      {
        self = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v13, self];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@No accounts to register.", buf, 0xCu);
      if (v11)
      {

        v14 = self;
      }
    }

    v15 = +[AMSBinaryPromise promiseWithSuccess];
    v8 = [v15 promiseAdapter];
  }

  return v8;
}

- (id)_sandboxPushAccounts
{
  v3 = [NSSet setWithObjects:AMSAccountMediaTypeAppStoreBeta, AMSAccountMediaTypeAppStoreSandbox, 0];
  v4 = +[ACAccountStore ams_sharedAccountStore];
  v5 = [v4 ams_iTunesAccountsForMediaTypes:v3];
  v6 = [(AMSDPushService *)self _promiseByFilteringLocalAccountsFromPromise:v5];

  return v6;
}

- (void)_shutDownConnection:(id)a3 forEnvironment:(id)a4
{
  v7 = a4;
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_connectionLock);
  [v6 shutdown];

  [(NSMutableDictionary *)self->_connections setObject:0 forKeyedSubscript:v7];
  [(NSMutableDictionary *)self->_pushTokens setObject:0 forKeyedSubscript:v7];
}

- (id)_startConnectionWithEnvironment:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  os_unfair_lock_lock(&self->_connectionLock);
  v5 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:v4];
  if (v5)
  {
    os_unfair_lock_assert_owner(&self->_connectionLock);
    os_unfair_lock_unlock(&self->_connectionLock);
    v6 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    if (([APSConnection isValidEnvironment:v4]& 1) != 0)
    {
      v7 = objc_alloc_init(NSMutableArray);
      [v7 addObject:@"com.apple.amsaccountsd"];
      [v7 addObject:@"com.apple.ams.accountdata"];
      [v7 addObject:@"com.apple.ams.ts-datasync"];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v8 = [(AMSDPushService *)self classConsumers];
      v9 = [v8 countByEnumeratingWithState:&v46 objects:v57 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v47;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v47 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v46 + 1) + 8 * i);
            if ([v13 shouldEnablePushTopic])
            {
              v14 = [v13 pushTopic];
              [v7 addObject:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v46 objects:v57 count:16];
        }

        while (v10);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v15 = [(AMSDPushService *)self instanceConsumers];
      v16 = [v15 countByEnumeratingWithState:&v42 objects:v56 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v43;
        do
        {
          for (j = 0; j != v17; j = j + 1)
          {
            if (*v43 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v42 + 1) + 8 * j);
            if ([v20 shouldEnablePushTopic])
            {
              v21 = [v20 pushTopic];
              [v7 addObject:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v42 objects:v56 count:16];
        }

        while (v17);
      }

      v22 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = AMSLogKey();
        v25 = objc_opt_class();
        v26 = v25;
        if (v24)
        {
          v41 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v26, v41];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v25];
        }
        v27 = ;
        v34 = AMSHashIfNeeded();
        v35 = AMSHashIfNeeded();
        *buf = 138543874;
        v51 = v27;
        v52 = 2114;
        v53 = v34;
        v54 = 2114;
        v55 = v35;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Starting APS connection. (environment: %{public}@; topics: %{public}@)", buf, 0x20u);
        if (v24)
        {

          v27 = v41;
        }
      }

      v36 = [APSConnection alloc];
      v37 = [(AMSDPushService *)self connectionQueue];
      v38 = [v36 initWithEnvironmentName:v4 namedDelegatePort:@"com.apple.aps.amsaccountsd" queue:v37];

      [(NSMutableDictionary *)self->_connections setObject:v38 forKeyedSubscript:v4];
      os_unfair_lock_assert_owner(&self->_connectionLock);
      os_unfair_lock_unlock(&self->_connectionLock);
      [v38 setDelegate:self];
      [v38 _setEnabledTopics:v7];
      v6 = +[AMSBinaryPromise promiseWithSuccess];
    }

    else
    {
      os_unfair_lock_assert_owner(&self->_connectionLock);
      os_unfair_lock_unlock(&self->_connectionLock);
      v7 = AMSErrorWithFormat();
      v28 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v28)
      {
        v28 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v28 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = AMSLogKey();
        v31 = objc_opt_class();
        v32 = v31;
        if (v30)
        {
          self = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v32, self];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v31];
        }
        v33 = ;
        v39 = AMSLogableError();
        *buf = 138543618;
        v51 = v33;
        v52 = 2114;
        v53 = v39;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to start APS connection. Error: %{public}@", buf, 0x16u);
        if (v30)
        {

          v33 = self;
        }
      }

      v6 = [AMSBinaryPromise promiseWithError:v7];
    }
  }

  return v6;
}

@end