@interface AKPCSAuthController
- (AKPCSAuthController)initWithPCSKeyProvider:(id)provider;
- (void)PCSAuthContextForWebSessionIdentifier:(id)identifier serviceName:(id)name completion:(id)completion;
- (void)_updateContext:(id)context serviceName:(id)name;
@end

@implementation AKPCSAuthController

- (AKPCSAuthController)initWithPCSKeyProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKPCSAuthController;
  selfCopy = [(AKPCSAuthController *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_keyProvider, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)PCSAuthContextForWebSessionIdentifier:(id)identifier serviceName:(id)name completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v17 = 0;
  objc_storeStrong(&v17, name);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  keyProvider = selfCopy->_keyProvider;
  v7 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100073724;
  v12 = &unk_100320F78;
  v13 = _objc_retain(selfCopy);
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

- (void)_updateContext:(id)context serviceName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v25 = 0;
  objc_storeStrong(&v25, name);
  v24 = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v30, v25);
    _os_log_impl(&_mh_execute_header, v24, v23, "Updating context for new service request: %@", v30, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  v22 = objc_alloc_init(NSMutableArray);
  userInfo = [location[0] userInfo];
  v21 = [userInfo objectForKeyedSubscript:AKWalrusWebAccessRequestedServices];
  _objc_release(userInfo);
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
  v20 = _objc_retain(selfCopy);
  keyProvider = selfCopy->_keyProvider;
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