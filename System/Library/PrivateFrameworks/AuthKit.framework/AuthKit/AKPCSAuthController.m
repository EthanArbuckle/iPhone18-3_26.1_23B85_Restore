@interface AKPCSAuthController
- (AKPCSAuthController)initWithPCSKeyProvider:(id)a3;
- (void)PCSAuthContextForWebSessionIdentifier:(id)a3 serviceName:(id)a4 completion:(id)a5;
- (void)_updateContext:(id)a3 serviceName:(id)a4;
@end

@implementation AKPCSAuthController

- (AKPCSAuthController)initWithPCSKeyProvider:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKPCSAuthController;
  v8 = [(AKPCSAuthController *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_keyProvider, location[0]);
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)PCSAuthContextForWebSessionIdentifier:(id)a3 serviceName:(id)a4 completion:(id)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  keyProvider = v19->_keyProvider;
  v7 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100073724;
  v12 = &unk_100320F78;
  v13 = _objc_retain(v19);
  v14 = _objc_retain(v17);
  v15 = _objc_retain(v16);
  [(AKWebSessionPCSKeyProvider *)keyProvider fetchContextForWebSessionIdentifier:v7 completion:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateContext:(id)a3 serviceName:(id)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v30, v25);
    _os_log_impl(&_mh_execute_header, v24, v23, "Updating context for new service request: %@", v30, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  v22 = objc_alloc_init(NSMutableArray);
  v7 = [location[0] userInfo];
  v21 = [v7 objectForKeyedSubscript:AKWalrusWebAccessRequestedServices];
  _objc_release(v7);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v22 addObjectsFromArray:v21];
  }

  [v22 addObject:v25];
  v28 = AKWalrusWebAccessRequestedServices;
  v29 = v22;
  v6 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [location[0] setUserInfo:?];
  _objc_release(v6);
  v15[0] = 0;
  v15[1] = v15;
  v16 = 838860800;
  v17 = 48;
  v18 = sub_10000387C;
  v19 = sub_100011110;
  v20 = _objc_retain(v27);
  keyProvider = v27->_keyProvider;
  v4 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_100073C80;
  v13 = &unk_100320FA0;
  v14[0] = _objc_retain(location[0]);
  v14[1] = v15;
  [(AKWebSessionPCSKeyProvider *)keyProvider updateContext:v4 completion:&v9];
  objc_storeStrong(v14, 0);
  _Block_object_dispose(v15, 8);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

@end