@interface IAPHistoryService
- (void)getAllIAPsForActiveAccountWithReplyHandler:(id)a3;
- (void)getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler:(id)a3;
- (void)getCachedSubscriptionEntitlementsForSegment:(unint64_t)a3 withReplyHandler:(id)a4;
- (void)getIAPsForActiveAccountWithAdamIDs:(id)a3 withReplyHandler:(id)a4;
- (void)getSubscriptionEntitlementsForSegment:(unint64_t)a3 ignoreCaches:(BOOL)a4 isBackground:(BOOL)a5 requestingBundleId:(id)a6 withReplyHandler:(id)a7;
- (void)getSubscriptionEntitlementsForSegment:(unint64_t)a3 ignoreCaches:(BOOL)a4 requestingBundleId:(id)a5 withReplyHandler:(id)a6;
- (void)refreshIAPsForActiveAccountWithReplyHandler:(id)a3;
- (void)setSubscriptionEntitlementsWithDictionary:(id)a3 forAccountID:(id)a4 segment:(unint64_t)a5;
@end

@implementation IAPHistoryService

- (void)getAllIAPsForActiveAccountWithReplyHandler:(id)a3
{
  v3 = a3;
  v4 = sub_1003FA694(XPCRequestToken, 0);
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 processInfo];
    v9 = [v8 bundleIdentifier];
    v11 = 138412802;
    v12 = v6;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Getting IAPs for active account for client: %{public}@", &v11, 0x20u);
  }

  v10 = sub_100005CD4();
  sub_10034AA74(v10, v4, v3);
}

- (void)getIAPsForActiveAccountWithAdamIDs:(id)a3 withReplyHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1003FA694(XPCRequestToken, 0);
  if (v5 && [v5 count])
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [v7 processInfo];
      v12 = [v11 bundleIdentifier];
      v19 = 138412802;
      v20 = v9;
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Getting specific IAPs for active account for client: %{public}@", &v19, 0x20u);
    }

    v13 = sub_100005CD4();
    sub_100349D3C(v13, v5, v7, v6);
  }

  else
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = [v7 processInfo];
      v18 = [v17 bundleIdentifier];
      v19 = 138412802;
      v20 = v15;
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Getting IAPs for active account for client: %{public}@", &v19, 0x20u);
    }

    v13 = sub_100005CD4();
    sub_10034AA74(v13, v7, v6);
  }
}

- (void)refreshIAPsForActiveAccountWithReplyHandler:(id)a3
{
  v3 = a3;
  v4 = sub_1003FA694(XPCRequestToken, 0);
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 processInfo];
    v9 = [v8 bundleIdentifier];
    v11 = 138412802;
    v12 = v6;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Refreshing IAPs for active account for client: %{public}@", &v11, 0x20u);
  }

  v10 = sub_100005CD4();
  sub_10034B07C(v10, v4, v3);
}

- (void)setSubscriptionEntitlementsWithDictionary:(id)a3 forAccountID:(id)a4 segment:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = sub_1003FA694(XPCRequestToken, 0);
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [v9 processInfo];
    v14 = [v13 bundleIdentifier];
    v16 = 138413058;
    v17 = v11;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v7;
    v22 = 2048;
    v23 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@]: Setting subscriptions for clientID: %{public}@ accountID: %{public}@ segment: %lu", &v16, 0x2Au);
  }

  v15 = +[SubscriptionEntitlementsCoordinator sharedInstance];
  [v15 setCachedSubscriptionEntitlements:v8 forAccountID:v7 segment:a5];
}

- (void)getSubscriptionEntitlementsForSegment:(unint64_t)a3 ignoreCaches:(BOOL)a4 requestingBundleId:(id)a5 withReplyHandler:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = sub_1003FA694(XPCRequestToken, a5);
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v22 = v12;
    if (v10)
    {
      v14 = objc_getProperty(v10, v13, 56, 1);
      Property = objc_getProperty(v10, v15, 48, 1);
      v21 = v14;
    }

    else
    {
      v14 = 0;
      v21 = 0;
      Property = 0;
    }

    v17 = Property;
    v18 = [v10 processInfo];
    v19 = [v18 bundleIdentifier];
    *buf = 138413570;
    v24 = v12;
    v25 = 2048;
    v26 = a3;
    v27 = 2114;
    v28 = v14;
    v29 = 2114;
    v30 = v17;
    v31 = 2114;
    v32 = v19;
    v33 = 1024;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Handling subscription entitlements request for segment: %lu requestingBundleId: %{public}@ clientID: %{public}@ processInfoID: %{public}@ ignore caches: %{BOOL}d", buf, 0x3Au);
  }

  v20 = +[SubscriptionEntitlementsCoordinator sharedInstance];
  sub_1002F4DEC(v20, a3, v10, v7, 0, 1, v9);
}

- (void)getSubscriptionEntitlementsForSegment:(unint64_t)a3 ignoreCaches:(BOOL)a4 isBackground:(BOOL)a5 requestingBundleId:(id)a6 withReplyHandler:(id)a7
{
  LODWORD(v8) = a5;
  v9 = a4;
  v11 = a7;
  v12 = sub_1003FA694(XPCRequestToken, a6);
  v13 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v8;
    v8 = objc_opt_class();
    v23 = v8;
    if (v12)
    {
      v15 = objc_getProperty(v12, v14, 56, 1);
      Property = objc_getProperty(v12, v16, 48, 1);
      v22 = v15;
    }

    else
    {
      v15 = 0;
      v22 = 0;
      Property = 0;
    }

    v18 = Property;
    v19 = [v12 processInfo];
    v20 = [v19 bundleIdentifier];
    *buf = 138413826;
    v26 = v8;
    v27 = 2048;
    v28 = a3;
    v29 = 2114;
    v30 = v15;
    v31 = 2114;
    v32 = v18;
    v33 = 2114;
    v34 = v20;
    v35 = 1024;
    v36 = v9;
    v37 = 1024;
    LOBYTE(v8) = v24;
    v38 = v24;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Handling subscription entitlements request for segment: %lu requestingBundleId: %{public}@ clientID: %{public}@ processInfoID: %{public}@ ignore caches: %{BOOL}d isBackground: %{BOOL}d", buf, 0x40u);
  }

  v21 = +[SubscriptionEntitlementsCoordinator sharedInstance];
  sub_1002F4DEC(v21, a3, v12, v9, v8, 1, v11);
}

- (void)getCachedSubscriptionEntitlementsForSegment:(unint64_t)a3 withReplyHandler:(id)a4
{
  v5 = a4;
  v6 = sub_1003FA694(XPCRequestToken, 0);
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v10 = v8;
    if (v6)
    {
      Property = objc_getProperty(v6, v9, 48, 1);
    }

    else
    {
      Property = 0;
    }

    v12 = Property;
    v14 = 138412802;
    v15 = v8;
    v16 = 2048;
    v17 = a3;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Handling cached subscription entitlements request for segment: %lu clientID: %{public}@", &v14, 0x20u);
  }

  v13 = +[SubscriptionEntitlementsCoordinator sharedInstance];
  sub_1002F5094(v13, a3, v6, v5);
}

- (void)getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler:(id)a3
{
  v3 = a3;
  v4 = +[SubscriptionEntitlementsCoordinator sharedInstance];
  sub_1002F4A10(v4, v3);
}

@end