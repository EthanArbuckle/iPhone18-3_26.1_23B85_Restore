@interface AKTokenUpgrader
- (AKTokenUpgrader)initWithClient:(id)client;
- (void)_performTokenUpgradeWithContext:(id)context completion:(id)completion;
- (void)upgradeTokenWithContext:(id)context completion:(id)completion;
@end

@implementation AKTokenUpgrader

- (AKTokenUpgrader)initWithClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKTokenUpgrader;
  v8 = [(AKTokenUpgrader *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_client, location[0]);
    v4 = +[AKAccountManager sharedInstance];
    accountManager = selfCopy->_accountManager;
    selfCopy->_accountManager = v4;
    _objc_release(accountManager);
  }

  v7 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)upgradeTokenWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  if ([location[0] authenticationType] == 2 || objc_msgSend(location[0], "authenticationType") == 3)
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      log = v21;
      type = v20;
      sub_10001CEEC(v19);
      _os_log_impl(&_mh_execute_header, log, type, "Current context requires interactive auth, skipping token upgrade flow.", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    if (v22)
    {
      v6 = v22;
      v7 = [NSError ak_errorWithCode:-7034];
      v6[2](v6, 0);
      _objc_release(v7);
    }

    v18 = 1;
  }

  else
  {
    v5 = selfCopy;
    v4 = location[0];
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1001A5E64;
    v15 = &unk_100325D90;
    v17 = _objc_retain(v22);
    v16 = _objc_retain(location[0]);
    [(AKTokenUpgrader *)v5 _performTokenUpgradeWithContext:v4 completion:&v11];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)_performTokenUpgradeWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = _AKLogSystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [location[0] altDSID];
    sub_1000194D4(v22, altDSID);
    _os_log_impl(&_mh_execute_header, v18, v17, "Attempting Upgrade Token request with altDSID %@...", v22, 0xCu);
    _objc_release(altDSID);
  }

  objc_storeStrong(&v18, 0);
  v4 = [AKTokenUpgradeRequestProvider alloc];
  v16 = [(AKURLRequestProviderImpl *)v4 initWithContext:location[0] urlBagKey:AKURLBagKeyTokenUpgrade];
  [(AKURLRequestProviderImpl *)v16 setClient:selfCopy->_client];
  v5 = [AKServiceControllerImpl alloc];
  v15 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v16];
  v6 = v15;
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1001A63E8;
  v13 = &unk_10031FC28;
  v14 = _objc_retain(v19);
  [(AKServiceControllerImpl *)v6 executeRequestWithCompletion:&v9];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

@end