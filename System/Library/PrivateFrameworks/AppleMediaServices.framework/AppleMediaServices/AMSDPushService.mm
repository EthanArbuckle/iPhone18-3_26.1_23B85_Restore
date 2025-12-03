@interface AMSDPushService
+ (AMSDPushService)sharedService;
+ (BOOL)isConnectionEntitled:(id)entitled;
- (AMSDPushService)initWithCompletion:(id)completion;
- (id)_bagForAccount:(id)account;
- (id)_connectionForEnvironment:(id)environment;
- (id)_establishConnectionsAndPostPushTokens;
- (id)_establishConnectionsIfNeeded;
- (id)_postPushTokensWithOptions:(int64_t)options;
- (id)_productionPushAccounts;
- (id)_pushEnvironmentForAccount:(id)account;
- (id)_pushEnvironmentFromBag:(id)bag;
- (id)_pushTokenForEnvironment:(id)environment;
- (id)_registerAccounts:(id)accounts withOptions:(int64_t)options;
- (id)_sandboxPushAccounts;
- (id)_startConnectionWithEnvironment:(id)environment;
- (id)forceRegisterAccount:(id)account;
- (void)_bagChanged;
- (void)_deviceNameChanged;
- (void)_shutDownConnection:(id)connection forEnvironment:(id)environment;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connectionDidReconnect:(id)reconnect;
- (void)dealloc;
- (void)registerAllTokensWithCompletionHandler:(id)handler;
- (void)registerTokensIfNeededWithCompletionHandler:(id)handler;
@end

@implementation AMSDPushService

- (AMSDPushService)initWithCompletion:(id)completion
{
  completionCopy = completion;
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

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Starting Service", buf, 0xCu);
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
    v43 = completionCopy;
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

- (id)forceRegisterAccount:(id)account
{
  if (account)
  {
    accountCopy = account;
    accountCopy2 = account;
    v5 = [NSArray arrayWithObjects:&accountCopy count:1];

    accountCopy = [(AMSDPushService *)self _registerAccounts:v5 withOptions:1, accountCopy];
  }

  else
  {
    v7 = 0;
    v8 = AMSError();
    accountCopy = [AMSPromise promiseWithError:v8];
  }

  return accountCopy;
}

+ (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (void)registerAllTokensWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = AMSSetLogKeyIfNeeded();
  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Received request to register all tokens.", buf, 0xCu);
    if (v9)
    {

      v12 = v3;
    }
  }

  _establishConnectionsIfNeeded = [(AMSDPushService *)self _establishConnectionsIfNeeded];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100082AD8;
  v19[3] = &unk_1002AFDD8;
  v19[4] = self;
  [_establishConnectionsIfNeeded addErrorBlock:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100082C70;
  v18[3] = &unk_1002B1F68;
  v18[4] = self;
  v14 = [_establishConnectionsIfNeeded thenWithBlock:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100082C7C;
  v16[3] = &unk_1002B03D0;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [v14 addFinishBlock:v16];
}

- (void)registerTokensIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = AMSSetLogKeyIfNeeded();
  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Received request to register tokens if needed.", buf, 0xCu);
    if (v9)
    {

      v12 = v3;
    }
  }

  _establishConnectionsAndPostPushTokens = [(AMSDPushService *)self _establishConnectionsAndPostPushTokens];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100082E88;
  v15[3] = &unk_1002B03D0;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [_establishConnectionsAndPostPushTokens addFinishBlock:v15];
}

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  statusCopy = status;
  v7 = AMSSetLogKey();
  v8 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    if (statusCopy)
    {
      v14 = @"true";
    }

    *buf = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@APS is connected: %{public}@", buf, 0x16u);
    if (v10)
    {

      v13 = a2;
    }
  }

  if (statusCopy)
  {
    _postPushTokensIfNeeded = [(AMSDPushService *)self _postPushTokensIfNeeded];
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v9 = AMSSetLogKey();
  v10 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = AMSLogKey();
    selfCopy = self;
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
    selfCopy2 = ;
    topic = [messageCopy topic];
    v5 = AMSHashIfNeeded();
    *buf = 138543618;
    v92 = selfCopy2;
    v93 = 2114;
    v94 = v5;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Received message on topic: %{public}@", buf, 0x16u);

    if (v12)
    {

      selfCopy2 = self;
    }

    self = selfCopy;
  }

  v17 = messageCopy;
  topic2 = [messageCopy topic];
  if ([topic2 isEqualToString:@"com.apple.amsaccountsd"])
  {
    goto LABEL_13;
  }

  topic3 = [messageCopy topic];
  if ([topic3 isEqualToString:@"com.apple.ams.accountdata"])
  {

LABEL_13:
LABEL_14:
    userInfo = [messageCopy userInfo];
    pushHandler = [(AMSDPushService *)self pushHandler];
    v22 = [pushHandler shouldHandleNotification:userInfo];

    if (v22)
    {
      pushHandler2 = [(AMSDPushService *)self pushHandler];
      [pushHandler2 handleNotification:userInfo];
    }

    else
    {
      pushHandler2 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!pushHandler2)
      {
        pushHandler2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [pushHandler2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v25 = userInfo;
        v26 = AMSLogKey();
        v27 = objc_opt_class();
        if (v26)
        {
          v28 = AMSLogKey();
          selfCopy2 = NSStringFromSelector(a2);
          [NSString stringWithFormat:@"%@: [%@] %@ ", v27, v28, selfCopy2];
        }

        else
        {
          v28 = NSStringFromSelector(a2);
          [NSString stringWithFormat:@"%@: %@ ", v27, v28];
        }
        v29 = ;
        *buf = 138543362;
        v92 = v29;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Message not handled and dropped.", buf, 0xCu);
        v17 = messageCopy;
        if (v26)
        {

          v29 = selfCopy2;
        }

        userInfo = v25;
      }
    }

    goto LABEL_61;
  }

  topic4 = [messageCopy topic];
  v31 = [topic4 isEqualToString:@"com.apple.ams.ts-datasync"];

  if (v31)
  {
    goto LABEL_14;
  }

  v70 = connectionCopy;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  selfCopy3 = self;
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

        oSLogObject3 = [v37 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
        {
          v39 = AMSLogKey();
          v40 = objc_opt_class();
          if (v39)
          {
            AMSLogKey();
            v41 = topic2;
            v42 = v34;
            v44 = v43 = connectionCopy;
            v75 = NSStringFromSelector(a2);
            v76 = v44;
            v68 = v44;
            connectionCopy = v43;
            v34 = v42;
            topic2 = v41;
            connectionCopy = [NSString stringWithFormat:@"%@: [%@] %@ ", v40, v68, v75];
            v5 = connectionCopy;
          }

          else
          {
            connectionCopy = NSStringFromSelector(a2);
            connectionCopy = [NSString stringWithFormat:@"%@: %@ ", v40, connectionCopy];
            topic2 = connectionCopy;
          }

          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          *buf = 138543618;
          v92 = connectionCopy;
          v93 = 2114;
          v94 = v47;
          _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_INFO, "%{public}@Forwarding message to class consumer of type %{public}@", buf, 0x16u);
          v48 = topic2;
          v49 = connectionCopy;
          if (v39)
          {

            v48 = v75;
            v49 = v76;
          }

          v17 = messageCopy;
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
  userInfo = [(AMSDPushService *)selfCopy3 instanceConsumers];
  v50 = [userInfo countByEnumeratingWithState:&v81 objects:v89 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v82;
    v71 = userInfo;
    v73 = *v82;
    do
    {
      for (j = 0; j != v51; j = j + 1)
      {
        if (*v82 != v52)
        {
          objc_enumerationMutation(userInfo);
        }

        v54 = *(*(&v81 + 1) + 8 * j);
        sharedAccountsDaemonConfig = [v33[95] sharedAccountsDaemonConfig];
        if (!sharedAccountsDaemonConfig)
        {
          sharedAccountsDaemonConfig = [v33[95] sharedConfig];
        }

        oSLogObject4 = [sharedAccountsDaemonConfig OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
        {
          v57 = AMSLogKey();
          v58 = objc_opt_class();
          if (v57)
          {
            AMSLogKey();
            v59 = connectionCopy;
            v61 = v60 = v51;
            v75 = NSStringFromSelector(a2);
            v76 = v61;
            v69 = v61;
            v51 = v60;
            connectionCopy = v59;
            connectionCopy2 = [NSString stringWithFormat:@"%@: [%@] %@ ", v58, v69, v75];
            obj = connectionCopy2;
            v63 = v80;
          }

          else
          {
            connectionCopy = NSStringFromSelector(a2);
            connectionCopy2 = [NSString stringWithFormat:@"%@: %@ ", v58, connectionCopy];
            v63 = connectionCopy2;
          }

          v64 = objc_opt_class();
          v65 = NSStringFromClass(v64);
          *buf = 138543618;
          v92 = connectionCopy2;
          v93 = 2114;
          v94 = v65;
          _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_INFO, "%{public}@Forwarding message to instance consumer of type %{public}@", buf, 0x16u);
          v80 = v63;
          v66 = v63;
          v67 = connectionCopy;
          if (v57)
          {

            v66 = v75;
            v67 = v76;
          }

          v17 = messageCopy;
          v33 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
          userInfo = v71;
          v52 = v73;
        }

        [v54 handlePushNotification:v17];
      }

      v51 = [userInfo countByEnumeratingWithState:&v81 objects:v89 count:16];
    }

    while (v51);
  }

  connectionCopy = v70;
LABEL_61:
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  v10 = AMSSetLogKey();
  v11 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Received token: %{public}@", buf, 0x16u);
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
  allKeys = [(NSMutableDictionary *)self->_connections allKeys];
  v19 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v28 + 1) + 8 * i);
        v24 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:v23];

        if (v24 == connectionCopy)
        {
          [(NSMutableDictionary *)self->_pushTokens setObject:tokenCopy forKeyedSubscript:v23];
        }
      }

      v20 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }

  os_unfair_lock_assert_owner(&self->_connectionLock);
  os_unfair_lock_unlock(&self->_connectionLock);
  if ((+[AMSUnitTests isRunningUnitTests]& 1) == 0)
  {
    _postPushTokensIfNeeded = [(AMSDPushService *)self _postPushTokensIfNeeded];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100083C44;
    v27[3] = &unk_1002B1F90;
    v27[4] = self;
    v27[5] = a2;
    [_postPushTokensIfNeeded addErrorBlock:v27];
  }
}

- (void)connectionDidReconnect:(id)reconnect
{
  v5 = AMSSetLogKey();
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@APS reconnected.", buf, 0xCu);
    if (v8)
    {

      v11 = a2;
    }
  }

  _postPushTokensIfNeeded = [(AMSDPushService *)self _postPushTokensIfNeeded];
}

- (void)_bagChanged
{
  v4 = AMSSetLogKey();
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Received bag-changed notification.", buf, 0xCu);
    if (v7)
    {

      v10 = v2;
    }
  }

  _establishConnectionsAndPostPushTokens = [(AMSDPushService *)self _establishConnectionsAndPostPushTokens];
}

- (void)_deviceNameChanged
{
  v4 = AMSSetLogKey();
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Device name changed", buf, 0xCu);
    if (v7)
    {

      v10 = v2;
    }
  }

  _postPushTokensIfNeeded = [(AMSDPushService *)self _postPushTokensIfNeeded];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100084328;
  v12[3] = &unk_1002AFDD8;
  v12[4] = self;
  [_postPushTokensIfNeeded addErrorBlock:v12];
}

- (id)_bagForAccount:(id)account
{
  if ([account ams_isSandboxAccount])
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

- (id)_connectionForEnvironment:(id)environment
{
  environmentCopy = environment;
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:environmentCopy];

  os_unfair_lock_assert_owner(&self->_connectionLock);
  os_unfair_lock_unlock(&self->_connectionLock);

  return v5;
}

- (id)_establishConnectionsAndPostPushTokens
{
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  _establishConnectionsIfNeeded = [(AMSDPushService *)self _establishConnectionsIfNeeded];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000846A0;
  v7[3] = &unk_1002AFDD8;
  v7[4] = self;
  [_establishConnectionsIfNeeded addErrorBlock:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100084838;
  v6[3] = &unk_1002B1F68;
  v6[4] = self;
  v4 = [_establishConnectionsIfNeeded thenWithBlock:v6];

  return v4;
}

- (id)_establishConnectionsIfNeeded
{
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  _productionPushAccounts = [(AMSDPushService *)self _productionPushAccounts];
  _sandboxPushAccounts = [(AMSDPushService *)self _sandboxPushAccounts];
  v5 = [_productionPushAccounts thenWithBlock:&stru_1002B1FB0];
  v6 = [_sandboxPushAccounts thenWithBlock:&stru_1002B1FD0];
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
  binaryPromiseAdapter = [v12 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

- (id)_postPushTokensWithOptions:(int64_t)options
{
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@Received request to post push token if needed.", buf, 0xCu);
    if (v8)
    {

      v11 = v3;
    }
  }

  _productionPushAccounts = [(AMSDPushService *)self _productionPushAccounts];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000856C8;
  v26[3] = &unk_1002B20E8;
  v27 = &stru_1002B20C0;
  v13 = [_productionPushAccounts thenWithBlock:v26];

  _sandboxPushAccounts = [(AMSDPushService *)self _sandboxPushAccounts];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10008572C;
  v24[3] = &unk_1002B20E8;
  v25 = &stru_1002B20C0;
  v15 = [_sandboxPushAccounts thenWithBlock:v24];

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
  v23[5] = options;
  v19 = [v18 thenWithBlock:v23];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100085844;
  v22[3] = &unk_1002AFDD8;
  v22[4] = self;
  [v19 addErrorBlock:v22];
  binaryPromiseAdapter = [v19 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

- (id)_productionPushAccounts
{
  v3 = [NSSet setWithObjects:AMSAccountMediaTypeProduction, 0];
  v4 = +[ACAccountStore ams_sharedAccountStore];
  v5 = [v4 ams_iTunesAccountsForMediaTypes:v3];
  v6 = [(AMSDPushService *)self _promiseByFilteringLocalAccountsFromPromise:v5];

  return v6;
}

- (id)_pushEnvironmentForAccount:(id)account
{
  v4 = [(AMSDPushService *)self _bagForAccount:account];
  v5 = [(AMSDPushService *)self _pushEnvironmentFromBag:v4];

  return v5;
}

- (id)_pushEnvironmentFromBag:(id)bag
{
  bagCopy = bag;
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
    v9 = [bagCopy stringForKey:@"push-notifications/environment"];
    valuePromise = [v9 valuePromise];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100085D40;
    v15[3] = &unk_1002AFDD8;
    v15[4] = self;
    [valuePromise addErrorBlock:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100085ED8;
    v13[3] = &unk_1002B1530;
    v8 = v8;
    v14 = v8;
    v11 = [valuePromise catchWithBlock:v13];

    goto LABEL_10;
  }

LABEL_9:
  v11 = [AMSPromise promiseWithResult:v8];
LABEL_10:

  return v11;
}

- (id)_pushTokenForEnvironment:(id)environment
{
  environmentCopy = environment;
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_pushTokens objectForKeyedSubscript:environmentCopy];

  os_unfair_lock_assert_owner(&self->_connectionLock);
  os_unfair_lock_unlock(&self->_connectionLock);

  return v5;
}

- (id)_registerAccounts:(id)accounts withOptions:(int64_t)options
{
  accountsCopy = accounts;
  if ([accountsCopy count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000861A8;
    v17[3] = &unk_1002B21E8;
    v17[4] = self;
    v17[5] = options;
    v7 = [accountsCopy ams_mapWithTransform:v17];
    promiseAdapter = [AMSPromise promiseWithAll:v7];
  }

  else
  {
    v9 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
      selfCopy = ;
      *buf = 138543362;
      v19 = selfCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@No accounts to register.", buf, 0xCu);
      if (v11)
      {

        selfCopy = self;
      }
    }

    v15 = +[AMSBinaryPromise promiseWithSuccess];
    promiseAdapter = [v15 promiseAdapter];
  }

  return promiseAdapter;
}

- (id)_sandboxPushAccounts
{
  v3 = [NSSet setWithObjects:AMSAccountMediaTypeAppStoreBeta, AMSAccountMediaTypeAppStoreSandbox, 0];
  v4 = +[ACAccountStore ams_sharedAccountStore];
  v5 = [v4 ams_iTunesAccountsForMediaTypes:v3];
  v6 = [(AMSDPushService *)self _promiseByFilteringLocalAccountsFromPromise:v5];

  return v6;
}

- (void)_shutDownConnection:(id)connection forEnvironment:(id)environment
{
  environmentCopy = environment;
  connectionCopy = connection;
  os_unfair_lock_assert_owner(&self->_connectionLock);
  [connectionCopy shutdown];

  [(NSMutableDictionary *)self->_connections setObject:0 forKeyedSubscript:environmentCopy];
  [(NSMutableDictionary *)self->_pushTokens setObject:0 forKeyedSubscript:environmentCopy];
}

- (id)_startConnectionWithEnvironment:(id)environment
{
  environmentCopy = environment;
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  os_unfair_lock_lock(&self->_connectionLock);
  v5 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:environmentCopy];
  if (v5)
  {
    os_unfair_lock_assert_owner(&self->_connectionLock);
    os_unfair_lock_unlock(&self->_connectionLock);
    v6 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    if (([APSConnection isValidEnvironment:environmentCopy]& 1) != 0)
    {
      v7 = objc_alloc_init(NSMutableArray);
      [v7 addObject:@"com.apple.amsaccountsd"];
      [v7 addObject:@"com.apple.ams.accountdata"];
      [v7 addObject:@"com.apple.ams.ts-datasync"];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      classConsumers = [(AMSDPushService *)self classConsumers];
      v9 = [classConsumers countByEnumeratingWithState:&v46 objects:v57 count:16];
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
              objc_enumerationMutation(classConsumers);
            }

            v13 = *(*(&v46 + 1) + 8 * i);
            if ([v13 shouldEnablePushTopic])
            {
              pushTopic = [v13 pushTopic];
              [v7 addObject:pushTopic];
            }
          }

          v10 = [classConsumers countByEnumeratingWithState:&v46 objects:v57 count:16];
        }

        while (v10);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      instanceConsumers = [(AMSDPushService *)self instanceConsumers];
      v16 = [instanceConsumers countByEnumeratingWithState:&v42 objects:v56 count:16];
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
              objc_enumerationMutation(instanceConsumers);
            }

            v20 = *(*(&v42 + 1) + 8 * j);
            if ([v20 shouldEnablePushTopic])
            {
              pushTopic2 = [v20 pushTopic];
              [v7 addObject:pushTopic2];
            }
          }

          v17 = [instanceConsumers countByEnumeratingWithState:&v42 objects:v56 count:16];
        }

        while (v17);
      }

      v22 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v22 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Starting APS connection. (environment: %{public}@; topics: %{public}@)", buf, 0x20u);
        if (v24)
        {

          v27 = v41;
        }
      }

      v36 = [APSConnection alloc];
      connectionQueue = [(AMSDPushService *)self connectionQueue];
      v38 = [v36 initWithEnvironmentName:environmentCopy namedDelegatePort:@"com.apple.aps.amsaccountsd" queue:connectionQueue];

      [(NSMutableDictionary *)self->_connections setObject:v38 forKeyedSubscript:environmentCopy];
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

      oSLogObject2 = [v28 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
        selfCopy = ;
        v39 = AMSLogableError();
        *buf = 138543618;
        v51 = selfCopy;
        v52 = 2114;
        v53 = v39;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Failed to start APS connection. Error: %{public}@", buf, 0x16u);
        if (v30)
        {

          selfCopy = self;
        }
      }

      v6 = [AMSBinaryPromise promiseWithError:v7];
    }
  }

  return v6;
}

@end