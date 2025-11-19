@interface SubscriptionEntitlementsCoordinator
+ (id)sharedInstance;
- (SubscriptionEntitlementsCoordinator)init;
- (void)_handleAccountStoreDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)pushService:(id)a3 didReceiveMessage:(id)a4 completionHandler:(id)a5;
- (void)setCachedSubscriptionEntitlements:(id)a3 forAccountID:(id)a4 segment:(unint64_t)a5;
@end

@implementation SubscriptionEntitlementsCoordinator

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002F3F38;
  block[3] = &unk_10051BD00;
  block[4] = a1;
  if (qword_1005AABA0 != -1)
  {
    dispatch_once(&qword_1005AABA0, block);
  }

  v2 = qword_1005AAB98;

  return v2;
}

- (SubscriptionEntitlementsCoordinator)init
{
  v16.receiver = self;
  v16.super_class = SubscriptionEntitlementsCoordinator;
  v2 = [(SubscriptionEntitlementsCoordinator *)&v16 init];
  if (v2)
  {
    v3 = sub_1002ACDA4("com.apple.appstored.SubscriptionEntitlementsCoordinator.network", QOS_CLASS_DEFAULT);
    backgroundQueue = v2->_backgroundQueue;
    v2->_backgroundQueue = v3;

    v5 = sub_1002ACDA4("com.apple.appstored.SubscriptionEntitlementsCoordinator", QOS_CLASS_DEFAULT);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    completionHandlersBySegment = v2->_completionHandlersBySegment;
    v2->_completionHandlersBySegment = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = +[ActiveAccountObserver sharedInstance];
    [v9 addObserver:v2 selector:"_handleAccountStoreDidChangeNotification:" name:@"AccountStorePrimaryAccountDidChange" object:v10];

    v11 = sub_100336524();
    sub_1003367D0(v11, v2, 17);

    v12 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002F4104;
    block[3] = &unk_10051AF98;
    v15 = v2;
    dispatch_async(v12, block);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[ActiveAccountObserver sharedInstance];
  [v3 removeObserver:self name:@"AccountStorePrimaryAccountDidChange" object:v4];

  v5.receiver = self;
  v5.super_class = SubscriptionEntitlementsCoordinator;
  [(SubscriptionEntitlementsCoordinator *)&v5 dealloc];
}

- (void)setCachedSubscriptionEntitlements:(id)a3 forAccountID:(id)a4 segment:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002F5544;
  v13[3] = &unk_100522528;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)pushService:(id)a3 didReceiveMessage:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v30 = a5;
  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  v31 = v7;
  if (self->_lastAccountID && (sub_1002EA054(v7), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEqualToNumber:self->_lastAccountID], v9, v10))
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Clearing cached subscription entitlements after push notification", buf, 0xCu);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = [&off_1005494D0 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        v15 = 0;
        do
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(&off_1005494D0);
          }

          v16 = [*(*(&v32 + 1) + 8 * v15) unsignedIntegerValue];
          v17 = sub_1002F4648(self, v16, v8);
          dispatchQueue = self->_dispatchQueue;
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1002F5358;
          v38 = &unk_10051F4B0;
          v39 = self;
          v41 = v16;
          v19 = v17;
          v40 = v19;
          dispatch_sync(dispatchQueue, buf);

          v20 = objc_alloc_init(SubscriptionRequestInfo);
          v22 = v20;
          if (v20)
          {
            objc_setProperty_atomic(v20, v21, v19, 16);
            v22->_segment = v16;
          }

          v23 = sub_1003FA4F0(XPCRequestToken, 1);
          v25 = v23;
          if (v22)
          {
            objc_setProperty_atomic(v22, v24, v23, 32);

            v22->_ignoreCaches = 0;
            *&v22->_notifyExternal = 257;
          }

          else
          {
          }

          sub_1002F4FD0(self, v22, &stru_100522590);

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v26 = [&off_1005494D0 countByEnumeratingWithState:&v32 objects:v36 count:16];
        v13 = v26;
      }

      while (v26);
    }
  }

  else
  {
    v27 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      lastAccountID = self->_lastAccountID;
      v29 = sub_1002EA054(v7);
      *buf = 138412802;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = lastAccountID;
      *&buf[22] = 2114;
      v38 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@] Not clearing cached subscription entitlements after push notification. lastAccountID: %{public}@ messageAccountID: %{public}@", buf, 0x20u);
    }
  }

  v30[2](v30, 0);
}

- (void)_handleAccountStoreDidChangeNotification:(id)a3
{
  v4 = objc_alloc_init(_TtC9appstored6LogKey);
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Updating after account changed", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002F8014;
  v8[3] = &unk_10051B570;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);
}

@end