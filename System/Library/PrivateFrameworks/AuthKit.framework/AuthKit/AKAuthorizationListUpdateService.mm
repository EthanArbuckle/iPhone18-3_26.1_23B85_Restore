@interface AKAuthorizationListUpdateService
+ (id)sharedService;
- (AKAuthorizationListUpdateService)init;
- (void)_clearStaleCachedDevices;
- (void)performAuthorizationCheckInWithCompletion:(id)a3;
- (void)performGlobalConfigUpdateWithCompletion:(id)a3;
- (void)start;
@end

@implementation AKAuthorizationListUpdateService

+ (id)sharedService
{
  v5 = &unk_1003748D0;
  location = 0;
  objc_storeStrong(&location, &stru_1003251F8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003748C8;

  return v2;
}

- (AKAuthorizationListUpdateService)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKAuthorizationListUpdateService;
  v8 = [(AKAuthorizationListUpdateService *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = +[AKAccountManager sharedInstance];
    accountManager = v8->_accountManager;
    v8->_accountManager = v2;
    _objc_release(accountManager);
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)start
{
  v11 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100038C7C(v12, off_100371A68);
    _os_log_impl(&_mh_execute_header, location[0], v9, "Registering for XPC activity: %s...", v12, 0xCu);
  }

  objc_storeStrong(location, 0);
  identifier = off_100371A68;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001737B0;
  v7 = &unk_100320E78;
  v8 = _objc_retain(v11);
  xpc_activity_register(identifier, XPC_ACTIVITY_CHECK_IN, &v3);
  objc_storeStrong(&v8, 0);
}

- (void)performAuthorizationCheckInWithCompletion:(id)a3
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = dispatch_group_create();
  v35 = [(AKAccountManager *)v38->_accountManager primaryAuthKitAccount];
  dispatch_group_enter(v36);
  if (v35)
  {
    v31 = [(AKAccountManager *)v38->_accountManager altDSIDForAccount:v35];
    v30 = +[AKUserInfoController sharedController];
    v9 = v30;
    v8 = v31;
    v23[1] = _NSConcreteStackBlock;
    v24 = -1073741824;
    v25 = 0;
    v26 = sub_100174104;
    v27 = &unk_100325220;
    v28 = _objc_retain(v31);
    v29 = _objc_retain(v36);
    [v9 fetchUserInformationForAltDSID:v8 client:? completion:?];
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  else
  {
    v34 = _AKLogSystem();
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      log = v34;
      type = v33;
      sub_10001CEEC(v32);
      _os_log_impl(&_mh_execute_header, log, type, "No Primary AuthKit account found skipping user information fetch", v32, 2u);
    }

    objc_storeStrong(&v34, 0);
    dispatch_group_leave(v36);
  }

  v6 = +[AKFeatureManager sharedManager];
  v7 = [v6 isDeviceListCacheEnableDryMode];
  _objc_release(v6);
  if (v7)
  {
    queue = dispatch_get_global_queue(9, 0);
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_1001742BC;
    v22 = &unk_10031F8B0;
    v23[0] = _objc_retain(v38);
    dispatch_async(queue, &v18);
    _objc_release(queue);
    objc_storeStrong(v23, 0);
  }

  group = v36;
  v4 = dispatch_get_global_queue(2, 0);
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1001742F0;
  v16 = &unk_100320EC8;
  v17 = _objc_retain(location[0]);
  dispatch_group_notify(group, v4, &v12);
  _objc_release(v4);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

- (void)performGlobalConfigUpdateWithCompletion:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = [(AKAccountManager *)v19->_accountManager primaryAuthKitAccount];
  if (v17)
  {
    v4 = +[AKGlobalConfigService sharedInstance];
    v3 = AKRequestContextScheduledActivity;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100174540;
    v11 = &unk_100321258;
    v12 = _objc_retain(location[0]);
    [(AKGlobalConfigService *)v4 fetchGlobalConfigUsingCachePolicy:1 context:v3 completion:&v7];
    _objc_release(v4);
    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      log = v16;
      type = v15;
      sub_10001CEEC(v14);
      _os_log_impl(&_mh_execute_header, log, type, "No Primary AuthKit account found skipping global config fetch", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    if (location[0])
    {
      (*(location[0] + 2))();
    }

    v13 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_clearStaleCachedDevices
{
  v2 = +[AKDeviceListStoreManager sharedManager];
  [(AKDeviceListStoreManager *)v2 clearStaleDevicesWithAccountManager:self->_accountManager completionHandler:&stru_100325240];
  _objc_release(v2);
}

@end