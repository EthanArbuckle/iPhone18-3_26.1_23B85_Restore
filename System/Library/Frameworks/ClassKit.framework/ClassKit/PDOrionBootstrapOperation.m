@interface PDOrionBootstrapOperation
+ (id)defaultEndpointInfo;
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
- (BOOL)saveClientConfig:(id)a3;
- (BOOL)updateAllowedHosts:(id)a3;
- (id)overrideConfig:(id)a3;
@end

@implementation PDOrionBootstrapOperation

+ (id)defaultEndpointInfo
{
  v2 = objc_alloc_init(PDEndpointInfo);
  sub_100087930(v2, @"orion");
  sub_10003F68C(v2, @"bootstrap");
  sub_10003F69C(v2, @"https://pg-bootstrap.itunes.apple.com/v1/config");
  if (v2)
  {
    v2->_payloadLimitItems = 0;
    v2->_payloadLimitBytes = 0;
    v2->_responseTTLSeconds = 28800;
    *&v2->_requiresAuth = 257;
  }

  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (BOOL)processResponseObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(PDOperation *)self isAborted])
  {
    v8 = [(PDOperation *)self database];
    v9 = [(PDURLRequestOperation *)self stats];
    if (v9)
    {
      v9[15] = 1;
    }

    CLSInitLog();
    v10 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ processing response;", buf, 0x16u);
    }

    CLSInitLog();
    v14 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v22 = v21;
      v23 = [(PDURLRequestOperation *)self operationID];
      v24 = [v6 dictionaryRepresentation];
      *buf = 138543874;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = v23;
      *&buf[22] = 2112;
      v34 = v24;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ response data: %@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v34 = sub_1000DFC70;
    v35 = sub_1000DFC80;
    v36 = 0;
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_1000DFC88;
    v28 = &unk_100203CF0;
    v15 = v8;
    v29 = v15;
    v16 = v6;
    v30 = v16;
    v31 = self;
    v32 = buf;
    if (v15)
    {
      v17 = v16;
      v18 = [v15 performTransaction:&v25 forWriting:1];
      v19 = *(*&buf[8] + 40);
      if (v19)
      {
        if (a4)
        {
          v7 = 0;
          *a4 = v19;
LABEL_18:

          _Block_object_dispose(buf, 8);
          goto LABEL_19;
        }
      }

      else if (v18)
      {
        if ([v17 hasUserInfo])
        {
          [CLSUtil postNotificationAsync:"com.apple.progressd.accountChanged"];
        }

        v7 = 1;
        goto LABEL_18;
      }
    }

    v7 = 0;
    goto LABEL_18;
  }

  v7 = 0;
LABEL_19:

  return v7;
}

- (id)overrideConfig:(id)a3
{
  v5.receiver = self;
  v5.super_class = PDOrionBootstrapOperation;
  v3 = [(PDBootstrapOperation *)&v5 overrideConfig:a3];

  return v3;
}

- (BOOL)updateAllowedHosts:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  [v5 deleteAll:objc_opt_class() where:0 bindings:0];
  v6 = objc_opt_new();
  v7 = sub_10006F334([PDAllowedHost alloc], @"ws-ee-maidsvc.icloud.com");
  [v6 addObject:v7];

  v8 = sub_10006F334([PDAllowedHost alloc], @"itunes.apple.com");
  [v6 addObject:v8];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = sub_10006F334([PDAllowedHost alloc], v14);
        [v6 addObject:{v16, v20}];

        objc_autoreleasePoolPop(v15);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = [v6 allObjects];
  v18 = [v5 insertOrUpdateObjects:v17];

  return v18;
}

- (BOOL)saveClientConfig:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = [v5 select:objc_opt_class() where:0 bindings:0];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 9);
  }

  else
  {
    v8 = 0;
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000E0370;
  v30[3] = &unk_100203D18;
  v34 = v8 & 1;
  v9 = v4;
  v31 = v9;
  v10 = v5;
  v11 = v10;
  v32 = v10;
  v33 = self;
  if (v10 && [v10 performTransaction:v30 forWriting:1])
  {
    v25 = v7;
    [v11 deleteAll:objc_opt_class() where:0 bindings:0];
    v12 = +[NSMutableArray array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v9;
    v13 = [v9 excludeAppIds];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          if (([v18 isEqualToString:@"com.apple.schoolwork.ClassKitApp"] & 1) == 0)
          {
            v20 = sub_1000D52FC([PDBlockedApp alloc], v18);
            [v12 addObject:v20];
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v15);
    }

    if ([v11 insertOrUpdateObjects:v12])
    {
      v9 = v24;
      v21 = [v24 hostAllowLists];
      v22 = [(PDOrionBootstrapOperation *)self updateAllowedHosts:v21];
    }

    else
    {
      v22 = 0;
      v9 = v24;
    }

    v7 = v25;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end