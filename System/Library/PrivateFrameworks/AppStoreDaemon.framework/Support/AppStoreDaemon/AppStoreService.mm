@interface AppStoreService
- (AppStoreService)init;
- (void)addBadgeIDs:(id)a3 replyHandler:(id)a4;
- (void)allBadgeIDsWithReplyHandler:(id)a3;
- (void)allBadgeMetricsWithReplyHandler:(id)a3;
- (void)badgeIDCountWithReplyHandler:(id)a3;
- (void)launchAppStoreWithURL:(id)a3 withReplyHandler:(id)a4;
- (void)reloadWidgetOnConnectivityToEndpoint:(id)a3 parameters:(id)a4 replyHandler:(id)a5;
- (void)removeAllBadgeIDsWithReplyHandler:(id)a3;
- (void)removeBadgeIDs:(id)a3 replyHandler:(id)a4;
- (void)removeBadgeMetricsForBadgeIDs:(id)a3 replyHandler:(id)a4;
@end

@implementation AppStoreService

- (AppStoreService)init
{
  v7.receiver = self;
  v7.super_class = AppStoreService;
  v2 = [(AppStoreService *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.AppStoreService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;
  }

  return v2;
}

- (void)launchAppStoreWithURL:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1002338F0(self);
    *buf = 138412546;
    v20 = v8;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] launchAppStoreWithURL for client: %{public}@", buf, 0x16u);
  }

  v11 = +[NSMutableDictionary dictionary];
  v12 = v11;
  if (v6 && ([v11 setObject:v6 forKeyedSubscript:FBSOpenApplicationOptionKeyPayloadURL], +[ApplicationProxy proxyForBundleID:](ApplicationProxy, "proxyForBundleID:", @"com.apple.AppStore"), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = sub_100214C6C([ApplicationContext alloc], v13);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100233968;
    v17[3] = &unk_10051B548;
    v18 = v7;
    [v15 launchApplicationWithOptions:v12 completionHandler:v17];
  }

  else
  {
    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] could not find App Store", buf, 0xCu);
    }

    v14 = ASDErrorWithDescription();
    (*(v7 + 2))(v7, 2, v14);
  }
}

- (void)addBadgeIDs:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1002338F0(self);
    v15 = 138412546;
    v16 = v8;
    v17 = 2114;
    v18[0] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] addHardwareOfferIDs for client: %{public}@", &v15, 0x16u);
  }

  v11 = sub_10020BE10();
  v12 = sub_10020C9FC(v11, v7, v8);

  if (v6)
  {
    v6[2](v6, v12, 0);
  }

  v13 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = sub_1002338F0(self);
    v15 = 138412802;
    v16 = v8;
    v17 = 1024;
    LODWORD(v18[0]) = v12;
    WORD2(v18[0]) = 2114;
    *(v18 + 6) = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] addHardwareOfferIDs complete with result: %d for client: %{public}@ ", &v15, 0x1Cu);
  }
}

- (void)allBadgeIDsWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_TtC9appstored6LogKey);
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1002338F0(self);
    v13 = 138412546;
    v14 = v5;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] allHardwareOffersIDsWithReplyHandler for client: %{public}@", &v13, 0x16u);
  }

  v8 = sub_10020BE10();
  v9 = sub_10020D264(v8, v5);

  if (v4)
  {
    v4[2](v4, v9, 0);
  }

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 componentsJoinedByString:{@", "}];
    v12 = sub_1002338F0(self);
    v13 = 138412802;
    v14 = v5;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] allHardwareOffersIDsWithReplyHandler complete with [%{public}@] for client: %{public}@", &v13, 0x20u);
  }
}

- (void)allBadgeMetricsWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_TtC9appstored6LogKey);
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1002338F0(self);
    v15 = 138412546;
    v16 = v5;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] allHardwareOfferMetricsWithReplyHandler for client: %{public}@", &v15, 0x16u);
  }

  v8 = sub_10020BE10();
  v9 = sub_10020D55C(v8, v5);

  if (v4)
  {
    v4[2](v4, v9, 0);
  }

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 keyEnumerator];
    v12 = [v11 allObjects];
    v13 = [v12 componentsJoinedByString:{@", "}];
    v14 = sub_1002338F0(self);
    v15 = 138412802;
    v16 = v5;
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] allHardwareOfferMetricsWithReplyHandler complete with [%{public}@] for client: %{public}@", &v15, 0x20u);
  }
}

- (void)badgeIDCountWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_TtC9appstored6LogKey);
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1002338F0(self);
    v12 = 138412546;
    v13 = v5;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] badgeIDCountWithReplyHandler for client: %{public}@", &v12, 0x16u);
  }

  v8 = sub_10020BE10();
  v9 = sub_10020D6CC(v8, v5);

  if (v4)
  {
    v4[2](v4, v9, 0);
  }

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_1002338F0(self);
    v12 = 138412802;
    v13 = v5;
    v14 = 2048;
    v15 = v9;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] badgeIDCountWithReplyHandler complete with count: %ld for client: %{public}@ ", &v12, 0x20u);
  }
}

- (void)removeAllBadgeIDsWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_TtC9appstored6LogKey);
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1002338F0(self);
    v12 = 138412546;
    v13 = v5;
    v14 = 2114;
    v15[0] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] removeAllBadgeIDsWithReplyHandler for client: %{public}@", &v12, 0x16u);
  }

  v8 = sub_10020BE10();
  v9 = sub_10020DA34(v8, v5);

  if (v4)
  {
    v4[2](v4, v9, 0);
  }

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_1002338F0(self);
    v12 = 138412802;
    v13 = v5;
    v14 = 1024;
    LODWORD(v15[0]) = v9;
    WORD2(v15[0]) = 2114;
    *(v15 + 6) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] removeAllBadgeIDsWithReplyHandler complete with result: %d for client: %{public}@ ", &v12, 0x1Cu);
  }
}

- (void)removeBadgeIDs:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 componentsJoinedByString:{@", "}];
    v11 = sub_1002338F0(self);
    v17 = 138412802;
    v18 = v8;
    v19 = 2114;
    *v20 = v10;
    *&v20[8] = 2114;
    *&v20[10] = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] removeBadgeIDs: [%{public}@] for client: %{public}@", &v17, 0x20u);
  }

  v12 = sub_10020BE10();
  v13 = sub_1002338F0(self);
  v14 = sub_10020DC44(v12, v6, v13, v8);

  if (v7)
  {
    v7[2](v7, v14, 0);
  }

  v15 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = sub_1002338F0(self);
    v17 = 138412802;
    v18 = v8;
    v19 = 1024;
    *v20 = v14;
    *&v20[4] = 2114;
    *&v20[6] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] removeBadgeIDs complete with result: %d for client: %{public}@ ", &v17, 0x1Cu);
  }
}

- (void)removeBadgeMetricsForBadgeIDs:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 componentsJoinedByString:{@", "}];
    v11 = sub_1002338F0(self);
    v16 = 138412802;
    v17 = v8;
    v18 = 2114;
    *v19 = v10;
    *&v19[8] = 2114;
    *&v19[10] = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] removeBadgeMetricsForBadgeIDs: [%{public}@] for client: %{public}@", &v16, 0x20u);
  }

  v12 = sub_10020BE10();
  v13 = sub_10020D8E0(v12, v6, v8);

  if (v7)
  {
    v7[2](v7, v13, 0);
  }

  v14 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = sub_1002338F0(self);
    v16 = 138412802;
    v17 = v8;
    v18 = 1024;
    *v19 = v13;
    *&v19[4] = 2114;
    *&v19[6] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] removeBadgeMetricsForOfferIDs complete with result: %d for client: %{public}@ ", &v16, 0x1Cu);
  }
}

- (void)reloadWidgetOnConnectivityToEndpoint:(id)a3 parameters:(id)a4 replyHandler:(id)a5
{
  v10 = a5;
  v7 = a4;
  v8 = a3;
  v9 = +[_TtC9appstored38WidgetReloadOnNetworkReachableActivity sharedActivity];
  [v9 scheduleWithEndpoint:v8 parameters:v7];

  v10[2](v10, 1, 0);
}

@end