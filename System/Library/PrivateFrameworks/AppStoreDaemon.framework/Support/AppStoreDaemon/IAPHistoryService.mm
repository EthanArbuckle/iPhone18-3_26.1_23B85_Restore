@interface IAPHistoryService
- (void)getAllIAPsForActiveAccountWithReplyHandler:(id)handler;
- (void)getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler:(id)handler;
- (void)getCachedSubscriptionEntitlementsForSegment:(unint64_t)segment withReplyHandler:(id)handler;
- (void)getIAPsForActiveAccountWithAdamIDs:(id)ds withReplyHandler:(id)handler;
- (void)getSubscriptionEntitlementsForSegment:(unint64_t)segment ignoreCaches:(BOOL)caches isBackground:(BOOL)background requestingBundleId:(id)id withReplyHandler:(id)handler;
- (void)getSubscriptionEntitlementsForSegment:(unint64_t)segment ignoreCaches:(BOOL)caches requestingBundleId:(id)id withReplyHandler:(id)handler;
- (void)refreshIAPsForActiveAccountWithReplyHandler:(id)handler;
- (void)setSubscriptionEntitlementsWithDictionary:(id)dictionary forAccountID:(id)d segment:(unint64_t)segment;
@end

@implementation IAPHistoryService

- (void)getAllIAPsForActiveAccountWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v4 = sub_1003FA694(XPCRequestToken, 0);
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    processInfo = [v4 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v11 = 138412802;
    v12 = v6;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Getting IAPs for active account for client: %{public}@", &v11, 0x20u);
  }

  v10 = sub_100005CD4();
  sub_10034AA74(v10, v4, handlerCopy);
}

- (void)getIAPsForActiveAccountWithAdamIDs:(id)ds withReplyHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v7 = sub_1003FA694(XPCRequestToken, 0);
  if (dsCopy && [dsCopy count])
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      processInfo = [v7 processInfo];
      bundleIdentifier = [processInfo bundleIdentifier];
      v19 = 138412802;
      v20 = v9;
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Getting specific IAPs for active account for client: %{public}@", &v19, 0x20u);
    }

    v13 = sub_100005CD4();
    sub_100349D3C(v13, dsCopy, v7, handlerCopy);
  }

  else
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      processInfo2 = [v7 processInfo];
      bundleIdentifier2 = [processInfo2 bundleIdentifier];
      v19 = 138412802;
      v20 = v15;
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = bundleIdentifier2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Getting IAPs for active account for client: %{public}@", &v19, 0x20u);
    }

    v13 = sub_100005CD4();
    sub_10034AA74(v13, v7, handlerCopy);
  }
}

- (void)refreshIAPsForActiveAccountWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v4 = sub_1003FA694(XPCRequestToken, 0);
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    processInfo = [v4 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v11 = 138412802;
    v12 = v6;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Refreshing IAPs for active account for client: %{public}@", &v11, 0x20u);
  }

  v10 = sub_100005CD4();
  sub_10034B07C(v10, v4, handlerCopy);
}

- (void)setSubscriptionEntitlementsWithDictionary:(id)dictionary forAccountID:(id)d segment:(unint64_t)segment
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v9 = sub_1003FA694(XPCRequestToken, 0);
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    processInfo = [v9 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v16 = 138413058;
    v17 = v11;
    v18 = 2114;
    v19 = bundleIdentifier;
    v20 = 2114;
    v21 = dCopy;
    v22 = 2048;
    segmentCopy = segment;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@]: Setting subscriptions for clientID: %{public}@ accountID: %{public}@ segment: %lu", &v16, 0x2Au);
  }

  v15 = +[SubscriptionEntitlementsCoordinator sharedInstance];
  [v15 setCachedSubscriptionEntitlements:dictionaryCopy forAccountID:dCopy segment:segment];
}

- (void)getSubscriptionEntitlementsForSegment:(unint64_t)segment ignoreCaches:(BOOL)caches requestingBundleId:(id)id withReplyHandler:(id)handler
{
  cachesCopy = caches;
  handlerCopy = handler;
  v10 = sub_1003FA694(XPCRequestToken, id);
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
    processInfo = [v10 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    *buf = 138413570;
    v24 = v12;
    v25 = 2048;
    segmentCopy = segment;
    v27 = 2114;
    v28 = v14;
    v29 = 2114;
    v30 = v17;
    v31 = 2114;
    v32 = bundleIdentifier;
    v33 = 1024;
    v34 = cachesCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Handling subscription entitlements request for segment: %lu requestingBundleId: %{public}@ clientID: %{public}@ processInfoID: %{public}@ ignore caches: %{BOOL}d", buf, 0x3Au);
  }

  v20 = +[SubscriptionEntitlementsCoordinator sharedInstance];
  sub_1002F4DEC(v20, segment, v10, cachesCopy, 0, 1, handlerCopy);
}

- (void)getSubscriptionEntitlementsForSegment:(unint64_t)segment ignoreCaches:(BOOL)caches isBackground:(BOOL)background requestingBundleId:(id)id withReplyHandler:(id)handler
{
  LODWORD(v8) = background;
  cachesCopy = caches;
  handlerCopy = handler;
  v12 = sub_1003FA694(XPCRequestToken, id);
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
    processInfo = [v12 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    *buf = 138413826;
    v26 = v8;
    v27 = 2048;
    segmentCopy = segment;
    v29 = 2114;
    v30 = v15;
    v31 = 2114;
    v32 = v18;
    v33 = 2114;
    v34 = bundleIdentifier;
    v35 = 1024;
    v36 = cachesCopy;
    v37 = 1024;
    LOBYTE(v8) = v24;
    v38 = v24;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Handling subscription entitlements request for segment: %lu requestingBundleId: %{public}@ clientID: %{public}@ processInfoID: %{public}@ ignore caches: %{BOOL}d isBackground: %{BOOL}d", buf, 0x40u);
  }

  v21 = +[SubscriptionEntitlementsCoordinator sharedInstance];
  sub_1002F4DEC(v21, segment, v12, cachesCopy, v8, 1, handlerCopy);
}

- (void)getCachedSubscriptionEntitlementsForSegment:(unint64_t)segment withReplyHandler:(id)handler
{
  handlerCopy = handler;
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
    segmentCopy = segment;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Handling cached subscription entitlements request for segment: %lu clientID: %{public}@", &v14, 0x20u);
  }

  v13 = +[SubscriptionEntitlementsCoordinator sharedInstance];
  sub_1002F5094(v13, segment, v6, handlerCopy);
}

- (void)getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[SubscriptionEntitlementsCoordinator sharedInstance];
  sub_1002F4A10(v4, handlerCopy);
}

@end