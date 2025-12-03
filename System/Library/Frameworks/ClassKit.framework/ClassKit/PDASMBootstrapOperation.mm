@interface PDASMBootstrapOperation
+ (id)defaultEndpointInfo;
- (BOOL)canSkipExecution;
- (BOOL)processResponseObject:(id)object error:(id *)error;
- (BOOL)saveServiceConfig:(id)config forEDUMAID:(BOOL)d;
@end

@implementation PDASMBootstrapOperation

+ (id)defaultEndpointInfo
{
  v2 = objc_alloc_init(PDEndpointInfo);
  sub_100087930(v2, @"apple_school_manager");
  sub_10003F68C(v2, @"ee.setup");
  sub_10003F69C(v2, @"https://ws-ee-maidsvc.icloud.com/maid/v1/directory/setup");
  if (v2)
  {
    v2->_payloadLimitItems = 0;
    v2->_payloadLimitBytes = 0;
    v2->_responseTTLSeconds = 3600;
    *&v2->_requiresAuth = 257;
  }

  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (BOOL)canSkipExecution
{
  endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
  v4 = endpointInfo;
  if (!endpointInfo || *(endpointInfo + 16) == 0.0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    endpointInfo2 = [(PDEndpointRequestOperation *)self endpointInfo];
    v6 = !sub_1000E9D80(endpointInfo2);
  }

  return v6;
}

- (BOOL)processResponseObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (![(PDOperation *)self isAborted])
  {
    database = [(PDOperation *)self database];
    stats = [(PDURLRequestOperation *)self stats];
    if (stats)
    {
      stats[15] = 1;
    }

    CLSInitLog();
    logSubsystem = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      operationID = [(PDURLRequestOperation *)self operationID];
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = operationID;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ processing response;", buf, 0x16u);
    }

    CLSInitLog();
    logSubsystem2 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v22 = v21;
      operationID2 = [(PDURLRequestOperation *)self operationID];
      dictionaryRepresentation = [objectCopy dictionaryRepresentation];
      *buf = 138543874;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = operationID2;
      *&buf[22] = 2112;
      v34 = dictionaryRepresentation;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ response data: %@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v34 = sub_10007BA64;
    v35 = sub_10007BA74;
    v36 = 0;
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10007BA7C;
    v28 = &unk_100203CF0;
    v15 = database;
    v29 = v15;
    v16 = objectCopy;
    v30 = v16;
    selfCopy = self;
    v32 = buf;
    if (v15)
    {
      v17 = v16;
      v18 = [v15 performTransaction:&v25 forWriting:1];
      v19 = *(*&buf[8] + 40);
      if (v19)
      {
        if (error)
        {
          v7 = 0;
          *error = v19;
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

- (BOOL)saveServiceConfig:(id)config forEDUMAID:(BOOL)d
{
  configCopy = config;
  database = [(PDOperation *)self database];
  v8 = sub_1000BA854(database);
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 56);
  }

  else
  {
    v10 = 0;
  }

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10007CE40;
  v22 = &unk_100203D18;
  v11 = configCopy;
  v23 = v11;
  LOBYTE(v26) = d;
  v12 = database;
  v13 = v12;
  v24 = v12;
  selfCopy = self;
  if (v12 && [v12 performTransaction:&v19 forWriting:1])
  {
    v14 = sub_1000BA854(v13);

    v15 = [(PDOperation *)self manager:v19];
    if ([v11 hasSyncFetchInterval])
    {
      if (v14)
      {
        v16 = v14[7];
      }

      else
      {
        v16 = 0;
      }

      if (v16 != v10)
      {
        sub_10012721C(v15);
      }
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
    v14 = v9;
  }

  return v17;
}

@end