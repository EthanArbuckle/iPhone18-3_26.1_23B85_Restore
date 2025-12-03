@interface BuddyProximityAppleIDSignInTask
- (BYPasscodeCacheManager)cacheManager;
- (BuddyProximityAppleIDSignInTask)init;
- (BuddyProximityAppleIDSignInTask)initWithSession:(id)session analyticsManager:(id)manager featureFlags:(id)flags;
- (void)_authenticateWithUsername:(id)username companionDevice:(id)device anisetteDataProvider:(id)provider completion:(id)completion;
- (void)_createAccountWithCompletion:(id)completion;
- (void)_saveAccount:(id)account completion:(id)completion;
- (void)authenticateThenSignInWithCompletion:(id)completion;
@end

@implementation BuddyProximityAppleIDSignInTask

- (BuddyProximityAppleIDSignInTask)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddyProximityAppleIDSignInTask;
  location = [(BuddyProximityAppleIDSignInTask *)&v4 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    *(location + 11) = 1;
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (BuddyProximityAppleIDSignInTask)initWithSession:(id)session analyticsManager:(id)manager featureFlags:(id)flags
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  obj = 0;
  objc_storeStrong(&obj, manager);
  v10 = 0;
  objc_storeStrong(&v10, flags);
  v7 = selfCopy;
  selfCopy = 0;
  selfCopy = [v7 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 6, location[0]);
    objc_storeStrong(selfCopy + 8, obj);
    objc_storeStrong(selfCopy + 4, v10);
  }

  v8 = selfCopy;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)authenticateThenSignInWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Beginning proximity sign in...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = selfCopy;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001BB758;
  v10 = &unk_10032E5C0;
  v12 = location[0];
  v11 = selfCopy;
  [(BuddyProximityAppleIDSignInTask *)v5 _createAccountWithCompletion:&v6];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_createAccountWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v23 = objc_alloc_init(SASProximityCompanionAuthRequestAction);
  proximitySession = [(BuddyProximityAppleIDSignInTask *)selfCopy proximitySession];
  v22 = [(SASProximitySession *)proximitySession sendAction:v23];

  if (v22)
  {
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v16 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = v22;
      }

      else
      {
        domain = [v22 domain];
        v18 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v22 code]);
        v17 = v4;
        v16 = 1;
      }

      sub_100071CBC(buf, v4);
      _os_log_impl(&_mh_execute_header, oslog, v20, "Failed to get data for companion auth: %{public}@", buf, 0xCu);
      if (v16)
      {
      }

      if (v18)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    (*(location[0] + 2))(location[0], 0, 0, v22);
    v15 = 1;
  }

  else
  {
    account = [v23 account];
    v5 = selfCopy;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1001BC6F0;
    v10 = &unk_10032E5E8;
    v13 = location[0];
    v11 = account;
    v12 = v23;
    [(BuddyProximityAppleIDSignInTask *)v5 _saveAccount:account completion:&v6];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&account, 0);
    v15 = 0;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_authenticateWithUsername:(id)username companionDevice:(id)device anisetteDataProvider:(id)provider completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v25 = 0;
  objc_storeStrong(&v25, device);
  v24 = 0;
  objc_storeStrong(&v24, provider);
  v23 = 0;
  objc_storeStrong(&v23, completion);
  signInTask = [(BuddyProximityAppleIDSignInTask *)selfCopy signInTask];
  v10 = location[0];
  v11 = v25;
  v12 = v24;
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1001BCAF4;
  v17 = &unk_10032E610;
  v18 = selfCopy;
  v19 = location[0];
  v20 = v25;
  v21 = v24;
  v22 = v23;
  [(BuddyAppleIDSignInTask *)signInTask authenticateWithUsername:v10 companionDevice:v11 anisetteDataProvider:v12 completion:&v13];

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)_saveAccount:(id)account completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  v5 = +[ACAccountStore defaultStore];
  accountType = [location[0] accountType];
  identifier = [accountType identifier];
  v9 = [v5 accountTypeWithAccountTypeIdentifier:identifier];

  [location[0] setAccountType:v9];
  [location[0] _setObjectID:0];
  [location[0] markAllPropertiesDirty];
  v8 = +[ACAccountStore defaultStore];
  [v8 saveAccount:location[0] withCompletionHandler:v10];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (BYPasscodeCacheManager)cacheManager
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheManager);

  return WeakRetained;
}

@end