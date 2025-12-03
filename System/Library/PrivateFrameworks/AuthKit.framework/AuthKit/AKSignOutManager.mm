@interface AKSignOutManager
+ (id)sharedManager;
- (BOOL)markAccountForSignOutForAltDSID:(id)d;
- (id)_serviceControllerWithProvider:(id)provider;
- (void)processPushMessage:(id)message;
- (void)reportSignOutForAccount:(id)account completion:(id)completion;
@end

@implementation AKSignOutManager

+ (id)sharedManager
{
  selfCopy = self;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10013DC14;
  v8 = &unk_100322AA0;
  selfCopy2 = self;
  v13 = &unk_100374860;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374858;

  return v2;
}

- (void)processPushMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  if ([location[0] command] == 2100)
  {
    v19 = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      log = v19;
      type = v18;
      sub_10001CEEC(v17);
      _os_log_impl(&_mh_execute_header, log, type, "Received push command to sign out.", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    altDSID = [location[0] altDSID];
    v15 = [(AKSignOutManager *)selfCopy markAccountForSignOutForAltDSID:altDSID];
    if (v15)
    {
      oslog = _AKLogSystem();
      v10 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v3 = oslog;
        v4 = v10;
        sub_10001CEEC(v9);
        _os_log_impl(&_mh_execute_header, v3, v4, "Successfully saved account after marking for sign out.", v9, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    else
    {
      v14 = _AKLogSystem();
      v13 = 16;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v5 = v14;
        v6 = v13;
        sub_10001CEEC(v12);
        _os_log_error_impl(&_mh_execute_header, v5, v6, "Failed to save account after marking for sign out. It will catch the next sign out push train from liveness in 24 hrs.", v12, 2u);
      }

      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&altDSID, 0);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)markAccountForSignOutForAltDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v26 = +[AKAccountManager sharedInstance];
  v25 = [v26 authKitAccountWithAltDSID:location[0] error:0];
  v24 = _AKLogSystem();
  v23 = 16;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    log = v24;
    type = v23;
    sub_10001CEEC(v22);
    _os_log_error_impl(&_mh_execute_header, log, type, "Attempting to mark altDSID for sign out.", v22, 2u);
  }

  objc_storeStrong(&v24, 0);
  if (v25)
  {
    [v26 setMarkedForSignOut:1 forAccount:v25];
    v17 = 0;
    obj = 0;
    v7 = [v26 saveAccount:v25 error:&obj];
    objc_storeStrong(&v17, obj);
    v16 = v7;
    if (v17)
    {
      oslog = _AKLogSystem();
      v13 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v4 = oslog;
        v5 = v13;
        v6 = [v17 debugDescription];
        v12 = _objc_retain(v6);
        sub_1000194D4(v29, v12);
        _os_log_error_impl(&_mh_execute_header, v4, v5, "Error while saving the account for sign out, %@", v29, 0xCu);
        _objc_release(v6);
        objc_storeStrong(&v12, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    v28 = v16 & 1;
    v18 = 1;
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v8 = v21;
      v9 = v20;
      sub_10001CEEC(v19);
      _os_log_error_impl(&_mh_execute_header, v8, v9, "No AuthKit account found matching the altdsid sent!", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v28 = 0;
    v18 = 1;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  return v28 & 1;
}

- (void)reportSignOutForAccount:(id)account completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = _AKLogSystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v22, location[0]);
    _os_log_impl(&_mh_execute_header, v18, v17, "Reporting signout to IDMS for %@", v22, 0xCu);
  }

  objc_storeStrong(&v18, 0);
  v16 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v6 = +[AKAccountManager sharedInstance];
  v5 = [(AKAccountManager *)v6 altDSIDForAccount:location[0]];
  [v16 setAltDSID:?];
  _objc_release(v5);
  _objc_release(v6);
  v4 = [AKGrandSlamRequestProvider alloc];
  v15 = [(AKURLRequestProviderImpl *)v4 initWithContext:v16 urlBagKey:AKURLBagKeySignout];
  v7 = [(AKSignOutManager *)selfCopy _serviceControllerWithProvider:v15];
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_10013E494;
  v13 = &unk_10031FC28;
  v14 = _objc_retain(v19);
  [v7 executeRequestWithCompletion:&v9];
  _objc_release(v7);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (id)_serviceControllerWithProvider:(id)provider
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v3 = [AKServiceControllerImpl alloc];
  v5 = [(AKServiceControllerImpl *)v3 initWithRequestProvider:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

@end