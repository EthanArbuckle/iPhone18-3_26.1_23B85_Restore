@interface AKDeviceListController
+ (id)sharedController;
- (AKDeviceListController)initWithAccountManager:(id)manager;
- (BOOL)shouldSuppressPushMessage:(id)message;
- (void)_clearDeviceListForAltDSID:(id)d;
- (void)_handleCurrentDeviceTrustStatusChangedWithPayload:(id)payload;
- (void)_refreshDeviceListForAltDSID:(id)d;
- (void)_sendTrustedDeviceListChangeNotification;
- (void)processPushMessage:(id)message;
@end

@implementation AKDeviceListController

+ (id)sharedController
{
  selfCopy = self;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000E2A74;
  v8 = &unk_100322AA0;
  selfCopy2 = self;
  v13 = &unk_100374770;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374768;

  return v2;
}

- (AKDeviceListController)initWithAccountManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKDeviceListController;
  v6 = [(AKDeviceListController *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_accountManager, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)processPushMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  if ([location[0] command] == 1200)
  {
    v55 = _AKLogSystem();
    v54 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      log = v55;
      type = v54;
      sub_10001CEEC(v53);
      _os_log_impl(&_mh_execute_header, log, type, "Handling push with command AKPushMessageCommandNotifyTrustedDeviceListChanged...", v53, 2u);
    }

    objc_storeStrong(&v55, 0);
    v52 = 0;
    userInfo = [location[0] userInfo];
    v51 = [userInfo objectForKeyedSubscript:@"tddelta"];
    _objc_release(userInfo);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [v51 objectForKeyedSubscript:@"items"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstObject = [v50 firstObject];
        v4 = v52;
        v52 = firstObject;
        _objc_release(v4);
        v49 = [v52 mutableCopy];
        v48 = +[NSMutableArray array];
        v20 = v50;
        v41 = _NSConcreteStackBlock;
        v42 = -1073741824;
        v43 = 0;
        v44 = sub_1000E3318;
        v45 = &unk_100322FA0;
        v46 = _objc_retain(v52);
        v47 = _objc_retain(v48);
        [v20 enumerateObjectsUsingBlock:&v41];
        [v49 setObject:v48 forKeyedSubscript:@"mids"];
        v5 = [v49 copy];
        v6 = v52;
        v52 = v5;
        _objc_release(v6);
        objc_storeStrong(&v47, 0);
        objc_storeStrong(&v46, 0);
        objc_storeStrong(&v48, 0);
        objc_storeStrong(&v49, 0);
      }

      objc_storeStrong(&v50, 0);
    }

    v40 = 0;
    if (v52)
    {
      v39 = _AKLogSystem();
      v38 = 2;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v18 = v39;
        v19 = v38;
        sub_10001CEEC(v37);
        _os_log_debug_impl(&_mh_execute_header, v18, v19, "AKPushMessageCommandNotifyTrustedDeviceListChanged message contained single-operation delta.", v37, 2u);
      }

      objc_storeStrong(&v39, 0);
      v36 = [NSMutableDictionary dictionaryWithDictionary:v52];
      altDSID = [location[0] altDSID];
      [NSMutableDictionary setObject:v36 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(altDSID);
      objc_storeStrong(&v40, v36);
      objc_storeStrong(&v36, 0);
    }

    else
    {
      v35 = _AKLogSystem();
      v34 = 2;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v15 = v35;
        v16 = v34;
        sub_10001CEEC(v33);
        _os_log_debug_impl(&_mh_execute_header, v15, v16, "AKPushMessageCommandNotifyTrustedDeviceListChanged message contained no delta. Listener should fetch device list.", v33, 2u);
      }

      objc_storeStrong(&v35, 0);
    }

    v32 = 0;
    v7 = [AKDeviceListDeltaMessagePayload alloc];
    v31 = [v7 initWithResponseBody:v40];
    serialNumber = [v31 serialNumber];
    v12 = +[AKDevice currentDevice];
    serialNumber2 = [v12 serialNumber];
    v14 = [serialNumber isEqualToString:?];
    _objc_release(serialNumber2);
    _objc_release(v12);
    _objc_release(serialNumber);
    if (v14)
    {
      v32 = 1;
      [(AKDeviceListController *)selfCopy _handleCurrentDeviceTrustStatusChangedWithPayload:v31];
    }

    [(AKDeviceListController *)selfCopy _sendTrustedDeviceListChangeNotification];
    v9 = +[AKFeatureManager sharedManager];
    isDeviceListCacheEnableDryMode = [v9 isDeviceListCacheEnableDryMode];
    _objc_release(v9);
    if ((isDeviceListCacheEnableDryMode & 1) != 0 && ((v32 & 1) == 0 || [v31 operation] != 2))
    {
      queue = dispatch_get_global_queue(9, 0);
      v24 = _NSConcreteStackBlock;
      v25 = -1073741824;
      v26 = 0;
      v27 = sub_1000E344C;
      v28 = &unk_10031F078;
      v29 = _objc_retain(selfCopy);
      v30 = _objc_retain(location[0]);
      dispatch_async(queue, &v24);
      _objc_release(queue);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v51, 0);
    objc_storeStrong(&v52, 0);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)shouldSuppressPushMessage:(id)message
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v4 = [location[0] command] == 1200;
  objc_storeStrong(location, 0);
  return v4;
}

- (void)_handleCurrentDeviceTrustStatusChangedWithPayload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  accountManager = selfCopy->_accountManager;
  altDSID = [location[0] altDSID];
  v23 = [AKAccountManager authKitAccountWithAltDSID:"authKitAccountWithAltDSID:error:" error:?];
  _objc_release(altDSID);
  operation = [location[0] operation];
  if (operation == 1)
  {
    [(AKAccountManager *)selfCopy->_accountManager clearDeviceRemovalReasonFromAccount:v23];
  }

  else if (operation == 2)
  {
    removalReason = [location[0] removalReason];
    if (removalReason == -1)
    {
      removalReason = 0;
    }

    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sub_100075B68(v26, selfCopy, v23, removalReason);
      _os_log_impl(&_mh_execute_header, v21, v20, "%@: Attempting to remove continuation token for account (%@) because (%ld)", v26, 0x20u);
    }

    objc_storeStrong(&v21, 0);
    [(AKAccountManager *)selfCopy->_accountManager setDeviceRemovalReason:removalReason onAccount:v23];
    v6 = selfCopy->_accountManager;
    v5 = v23;
    v7 = [NSError ak_errorWithCode:-7090];
    [(AKAccountManager *)v6 removeContinuationTokenForAccount:v5 telemetryFlowID:0 error:?];
    _objc_release(v7);
    v8 = +[AKFeatureManager sharedManager];
    isDeviceListCacheEnableDryMode = [v8 isDeviceListCacheEnableDryMode];
    _objc_release(v8);
    if (isDeviceListCacheEnableDryMode)
    {
      queue = dispatch_get_global_queue(9, 0);
      v13 = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_1000E38DC;
      v17 = &unk_10031F078;
      v18 = _objc_retain(selfCopy);
      v19 = _objc_retain(location[0]);
      dispatch_async(queue, &v13);
      _objc_release(queue);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
    }
  }

  [(AKAccountManager *)selfCopy->_accountManager saveAccount:v23 error:&v23];
  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_sendTrustedDeviceListChangeNotification
{
  oslog[2] = &self->super;
  oslog[1] = a2;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v4, AKDeviceListChangedNotification);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Posting %@ notification.", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [(NSDistributedNotificationCenter *)v2 postNotificationName:AKDeviceListChangedNotification object:0 userInfo:0 deliverImmediately:1];
  _objc_release(v2);
}

- (void)_refreshDeviceListForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [AKDeviceListRequester alloc];
  v6 = +[AKDeviceListStoreManager sharedManager];
  v5 = objc_opt_new();
  accountManager = selfCopy->_accountManager;
  v8 = [AKDeviceListRequester initWithStoreManager:v4 cdpFactory:"initWithStoreManager:cdpFactory:accountManager:client:" accountManager:v6 client:?];
  _objc_release(v5);
  _objc_release(v6);
  v7 = objc_alloc_init(AKDeviceListRequestContext);
  [v7 setAltDSID:location[0]];
  [v7 setForceFetch:1];
  [v7 setIncludeUntrustedDevices:1];
  [(AKDeviceListRequester *)v8 fetchDeviceListWithContext:v7 completionHandler:&stru_100322FE0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_clearDeviceListForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [AKDeviceListRequester alloc];
  v6 = +[AKDeviceListStoreManager sharedManager];
  v5 = objc_opt_new();
  accountManager = selfCopy->_accountManager;
  v15 = [AKDeviceListRequester initWithStoreManager:v4 cdpFactory:"initWithStoreManager:cdpFactory:accountManager:client:" accountManager:v6 client:?];
  _objc_release(v5);
  _objc_release(v6);
  v14 = objc_alloc_init(AKDeviceListRequestContext);
  [v14 setAltDSID:location[0]];
  v8 = v15;
  v7 = v14;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000E3F38;
  v12 = &unk_100320EA0;
  v13 = _objc_retain(v14);
  [(AKDeviceListRequester *)v8 clearDeviceListCacheWithContext:v7 completionHandler:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

@end