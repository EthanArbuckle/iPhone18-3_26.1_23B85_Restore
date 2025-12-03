@interface BuddyAccountTools
+ (id)sharedBuddyAccountTools;
- (BuddyAccountTools)init;
- (id)accountOperationsQueue;
- (id)accounts;
- (id)activeiTunesAccount;
- (id)ageRangeForAccount:(id)account;
- (id)configurationInfoError:(id *)error;
- (id)iCloudAnalyticsOptInError:(id *)error;
- (id)primaryAccount;
- (id)protoAccount;
- (int64_t)_determineSignOutOperationForProtoAccountAge:(id)age;
- (void)_fetchUserInformation:(id)information;
- (void)addAccountHeadersToRequest:(id)request;
- (void)ageAttenstationFlowCompleted;
- (void)getConfigurationInfoWithCompletion:(id)completion;
- (void)primaryAccountIsChildAccount:(id)account;
- (void)removeAccount:(id)account completion:(id)completion;
- (void)removeAccountsCreatedByProximityWithCompletion:(id)completion;
- (void)removeAllAccountsWithCompletion:(id)completion;
- (void)removeIDMSAccount:(id)account;
- (void)removePrimaryAccountCompletion:(id)completion;
- (void)waitUntilSafeToSignInWithCompletion:(id)completion;
@end

@implementation BuddyAccountTools

+ (id)sharedBuddyAccountTools
{
  if (!qword_1003A73F8)
  {
    v2 = objc_alloc_init(BuddyAccountTools);
    v3 = qword_1003A73F8;
    qword_1003A73F8 = v2;
  }

  v4 = qword_1003A73F8;

  return v4;
}

- (BuddyAccountTools)init
{
  v11 = a2;
  location = 0;
  v10.receiver = self;
  v10.super_class = BuddyAccountTools;
  location = [(BuddyAccountTools *)&v10 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = *(location + 2);
    *(location + 2) = v2;

    v4 = dispatch_queue_create("com.apple.purplebuddy.user_information", 0);
    v5 = *(location + 3);
    *(location + 3) = v4;

    v6 = dispatch_queue_create("com.apple.purplebuddy.configuration_info", 0);
    v7 = *(location + 5);
    *(location + 5) = v6;
  }

  v8 = location;
  objc_storeStrong(&location, 0);
  return v8;
}

- (id)accountOperationsQueue
{
  if (!self->_accountOperationsQueue)
  {
    v2 = dispatch_queue_create("com.apple.purplebuddy.account_operation", 0);
    accountOperationsQueue = self->_accountOperationsQueue;
    self->_accountOperationsQueue = v2;
  }

  v4 = self->_accountOperationsQueue;

  return v4;
}

- (void)waitUntilSafeToSignInWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  accountOperationsQueue = [(BuddyAccountTools *)selfCopy accountOperationsQueue];
  dispatch_async(accountOperationsQueue, location[0]);

  objc_storeStrong(location, 0);
}

- (void)removeAccount:(id)account completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v14, "Remove Account: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (location[0])
  {
    [(NSMutableArray *)selfCopy->_accountsBeingRemoved addObject:location[0]];
    accountOperationsQueue = [(BuddyAccountTools *)selfCopy accountOperationsQueue];
    block = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_100203F80;
    v10 = &unk_10032BC78;
    v11 = selfCopy;
    v12 = location[0];
    v13 = v16;
    dispatch_async(accountOperationsQueue, &block);

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  else if (v16)
  {
    (*(v16 + 2))(v16, 1, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)removeIDMSAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  accounts = [(BuddyAccountTools *)selfCopy accounts];
  v4 = [NSPredicate predicateWithBlock:&stru_10032F088];
  v5 = [accounts filteredArrayUsingPredicate:v4];
  firstObject = [v5 firstObject];

  v6 = selfCopy;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100204730;
  v11 = &unk_10032AEC8;
  v12 = location[0];
  [(BuddyAccountTools *)v6 removeAccount:firstObject completion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&firstObject, 0);
  objc_storeStrong(location, 0);
}

- (void)removePrimaryAccountCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v33 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v33 aa_primaryAppleAccount];
  if (aa_primaryAppleAccount)
  {
    cachedAccountAge = [(BuddyAccountTools *)selfCopy cachedAccountAge];
    v29 = [(BuddyAccountTools *)selfCopy _determineSignOutOperationForProtoAccountAge:cachedAccountAge];
    v28 = objc_retainBlock(&stru_10032F0A8);
    if (v29)
    {
      if (v29 == 1)
      {
        v7 = selfCopy;
        v16 = _NSConcreteStackBlock;
        v17 = -1073741824;
        v18 = 0;
        v19 = sub_100204CAC;
        v20 = &unk_10032F0D0;
        v23 = v28;
        v21 = cachedAccountAge;
        v22 = v33;
        v24 = location[0];
        [(BuddyAccountTools *)v7 removeAllAccountsWithCompletion:&v16];
        v31 = 2;
        objc_storeStrong(&v24, 0);
        objc_storeStrong(&v22, 0);
        objc_storeStrong(&v21, 0);
        objc_storeStrong(&v23, 0);
      }

      else if (v29 == 2)
      {
        v8 = selfCopy;
        v9 = _NSConcreteStackBlock;
        v10 = -1073741824;
        v11 = 0;
        v12 = sub_100204F84;
        v13 = &unk_10032F0F8;
        v14 = v28;
        v15 = location[0];
        [(BuddyAccountTools *)v8 removeAccount:aa_primaryAppleAccount completion:&v9];
        v31 = 2;
        objc_storeStrong(&v15, 0);
        objc_storeStrong(&v14, 0);
      }
    }

    else
    {
      oslog = _BYLoggingFacility();
      v26 = 16;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v3 = oslog;
        v4 = v26;
        sub_10006AA68(buf);
        _os_log_error_impl(&_mh_execute_header, v3, v4, "Account not removed; as this is a teen/child account with no backing proto account.", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      if (location[0])
      {
        v5 = location[0];
        v6 = [NSError errorWithDomain:@"com.apple.purplebuddy.accounterror" code:2 userInfo:0];
        v5[2](v5, 0, v6);
      }
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&cachedAccountAge, 0);
    v31 = 0;
  }

  else
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 1, 0);
    }

    v31 = 1;
  }

  objc_storeStrong(&aa_primaryAppleAccount, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)removeAccountsCreatedByProximityWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  objc_initWeak(&from, selfCopy);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100205124;
  v8 = &unk_10032F120;
  v9 = location[0];
  objc_copyWeak(&v10, &from);
  [(BuddyAccountTools *)v3 removePrimaryAccountCompletion:&v4];
  objc_destroyWeak(&v10);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (void)removeAllAccountsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v40 = _BYLoggingFacility();
  v39 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v40;
    v4 = v39;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Removing all signed in accounts", buf, 2u);
  }

  objc_storeStrong(&v40, 0);
  accounts = [(BuddyAccountTools *)selfCopy accounts];
  group = dispatch_group_create();
  v30[0] = 0;
  v30[1] = v30;
  v31 = 838860800;
  v32 = 48;
  v33 = sub_1002055BC;
  v34 = sub_100205600;
  v35 = 0;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v5 = accounts;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v43 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      for (i = 0; i < v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v29 = *(*(&v25 + 1) + 8 * i);
        dispatch_group_enter(group);
        v9 = selfCopy;
        v10 = v29;
        v19 = _NSConcreteStackBlock;
        v20 = -1073741824;
        v21 = 0;
        v22 = sub_10020560C;
        v23 = &unk_10032F148;
        v24[1] = v30;
        v24[0] = group;
        [(BuddyAccountTools *)v9 removeAccount:v10 completion:&v19];
        objc_storeStrong(v24, 0);
      }

      v6 = [v5 countByEnumeratingWithState:&v25 objects:v43 count:16];
    }

    while (v6);
  }

  v11 = group;
  v12 = dispatch_get_global_queue(2, 0);
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_10020568C;
  v17 = &unk_10032C2B8;
  v18[0] = location[0];
  v18[1] = v30;
  dispatch_group_notify(v11, v12, &v13);

  objc_storeStrong(v18, 0);
  _Block_object_dispose(v30, 8);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&group, 0);
  objc_storeStrong(&accounts, 0);
  objc_storeStrong(location, 0);
}

- (id)primaryAccount
{
  selfCopy = self;
  location[1] = a2;
  v2 = +[ACAccountStore defaultStore];
  location[0] = [v2 aa_primaryAppleAccount];

  accountsBeingRemoved = selfCopy->_accountsBeingRemoved;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10020589C;
  v15 = &unk_10032F170;
  v16 = location[0];
  v17 = [(NSMutableArray *)accountsBeingRemoved indexOfObjectPassingTest:&v11];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = location[0];
  }

  else
  {
    oslog = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v9;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Primary account is being removed", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v20 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v6 = v20;

  return v6;
}

- (id)activeiTunesAccount
{
  location[2] = self;
  location[1] = a2;
  accounts = [(BuddyAccountTools *)self accounts];
  v3 = [NSPredicate predicateWithBlock:&stru_10032F190];
  location[0] = [accounts filteredArrayUsingPredicate:v3];

  firstObject = [location[0] firstObject];
  objc_storeStrong(location, 0);

  return firstObject;
}

- (id)accounts
{
  selfCopy = self;
  location[1] = a2;
  if ([(NSMutableArray *)self->_accountsBeingRemoved count])
  {
    v2 = +[ACAccountStore defaultStore];
    accounts = [v2 accounts];
    location[0] = [accounts mutableCopy];

    [location[0] removeObjectsInArray:selfCopy->_accountsBeingRemoved];
    v22 = location[0];
    objc_storeStrong(location, 0);
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 838860800;
    v16 = 48;
    v17 = sub_1002055BC;
    v18 = sub_100205600;
    v19 = 0;
    accountOperationsQueue = [(BuddyAccountTools *)selfCopy accountOperationsQueue];
    block = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100205D14;
    v11 = &unk_10032B070;
    v12 = &v13;
    dispatch_sync(accountOperationsQueue, &block);

    v22 = v14[5];
    _Block_object_dispose(&v13, 8);
    objc_storeStrong(&v19, 0);
  }

  v5 = v22;

  return v5;
}

- (void)addAccountHeadersToRequest:(id)request
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v3 = location[0];
  v4 = sub_100195EC4();
  [v3 setValue:v4 forHTTPHeaderField:@"User-Agent"];

  v5 = location[0];
  v6 = +[AADeviceInfo clientInfoHeader];
  [v5 setValue:v6 forHTTPHeaderField:@"X-MMe-Client-Info"];

  v7 = location[0];
  v8 = +[NSLocale currentLocale];
  v9 = [(NSLocale *)v8 objectForKey:NSLocaleCountryCode];
  uppercaseString = [v9 uppercaseString];
  [v7 setValue:uppercaseString forHTTPHeaderField:@"X-MMe-Country"];

  v15 = _CFNetworkCopyPreferredLanguageCode();
  v12 = v15;
  if (v12)
  {
    if ([v12 hasPrefix:@"es-"])
    {
      v14 = CFPreferencesCopyAppValue(@"AppleLocale", kCFPreferencesAnyApplication);
      v11 = v14;
      if ([@"es_MX" isEqual:v11])
      {
        objc_storeStrong(&v12, @"es-mx");
      }

      objc_storeStrong(&v11, 0);
    }
  }

  else
  {
    objc_storeStrong(&v12, @"en-us");
  }

  [location[0] setValue:v12 forHTTPHeaderField:@"Accept-Language"];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)primaryAccountIsChildAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100206068;
  v8 = &unk_10032F1B8;
  v9 = location[0];
  [(BuddyAccountTools *)v3 _fetchUserInformation:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)configurationInfoError:(id *)error
{
  selfCopy = self;
  v32 = a2;
  errorCopy = error;
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = sub_1002055BC;
  v29 = sub_100205600;
  v30 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = sub_1002055BC;
  v22 = sub_100205600;
  v23 = 0;
  v3 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];

  location = [aa_primaryAppleAccount aa_altDSID];
  if (aa_primaryAppleAccount)
  {
    configurationInfoQueue = selfCopy->_configurationInfoQueue;
    block = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100206538;
    v12 = &unk_10032F208;
    v13 = selfCopy;
    v14[0] = location;
    v14[1] = &v17;
    v14[2] = &v24;
    dispatch_sync(configurationInfoQueue, &block);
    objc_storeStrong(v14, 0);
    objc_storeStrong(&v13, 0);
  }

  if (v18[5] && errorCopy)
  {
    v5 = v18[5];
    *errorCopy = v5;
  }

  v6 = v25[5];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&aa_primaryAppleAccount, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(&v24, 8);
  objc_storeStrong(&v30, 0);

  return v6;
}

- (void)getConfigurationInfoWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100206BF0;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)iCloudAnalyticsOptInError:(id *)error
{
  selfCopy = self;
  v19 = a2;
  errorCopy = error;
  v17 = 0;
  location = 0;
  obj = 0;
  v3 = [(BuddyAccountTools *)self configurationInfoError:&obj];
  objc_storeStrong(&location, obj);
  v15 = v3;
  if (!location)
  {
    v13 = [v15 objectForKeyedSubscript:@"com.apple.idms.config.privacy.icloud.data"];
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, v13);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Express Setup: iCloudAnalyticsOptIn = %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (v13)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = 1;
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        v5 = objc_opt_isKindOfClass();
      }

      if (v5)
      {
        v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 integerValue]);
        v7 = v17;
        v17 = v6;
      }

      else
      {
        v8 = [NSError errorWithDomain:@"com.apple.purplebuddy.accounterror" code:1 userInfo:0];
        v7 = location;
        location = v8;
      }
    }

    objc_storeStrong(&v13, 0);
  }

  if (errorCopy)
  {
    v9 = location;
    *errorCopy = v9;
  }

  v10 = v17;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v17, 0);
  return v10;
}

- (void)_fetchUserInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  v19 = 0;
  v20 = &v19;
  v21 = 838860800;
  v22 = 48;
  v23 = sub_1002055BC;
  v24 = sub_100205600;
  v25 = 0;
  userInformationQueue = selfCopy->_userInformationQueue;
  block = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_100207270;
  v17 = &unk_10032C290;
  v18[1] = &v19;
  v18[0] = selfCopy;
  dispatch_sync(userInformationQueue, &block);
  if (v20[5])
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 1, v20[5], 0);
    }

    v12 = 1;
  }

  else
  {
    v4 = +[ACAccountStore defaultStore];
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_1002072AC;
    v9 = &unk_10032F258;
    v11 = location[0];
    v10 = selfCopy;
    [v4 aa_primaryAppleAccountWithCompletion:&v5];

    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    v12 = 0;
  }

  objc_storeStrong(v18, 0);
  _Block_object_dispose(&v19, 8);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (id)protoAccount
{
  v2 = [AKAccountManager sharedInstance:a2];
  protoAccount = [(AKAccountManager *)v2 protoAccount];

  return protoAccount;
}

- (id)ageRangeForAccount:(id)account
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  if (location[0])
  {
    v3 = [BuddyAccountAge alloc];
    v7 = [(BuddyAccountAge *)v3 initWithAccount:location[0]];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v7;

  return v4;
}

- (void)ageAttenstationFlowCompleted
{
  protoAccount = [(BuddyAccountTools *)self protoAccount];

  if (protoAccount)
  {
    protoAccount2 = [(BuddyAccountTools *)self protoAccount];
    v4 = [(BuddyAccountTools *)self ageRangeForAccount:protoAccount2];
    [(BuddyAccountTools *)self setCachedAccountAge:v4];
  }

  else
  {
    primaryAccount = [(BuddyAccountTools *)self primaryAccount];

    if (primaryAccount)
    {
      v6 = [[BuddyAccountAge alloc] initWithAgeRange:0];
    }

    else
    {
      v6 = [[BuddyAccountAge alloc] initWithAgeRange:3];
    }

    [(BuddyAccountTools *)self setCachedAccountAge:v6];
  }
}

- (int64_t)_determineSignOutOperationForProtoAccountAge:(id)age
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, age);
  v10 = location[0] != 0;
  v3 = 0;
  if (location[0])
  {
    v3 = [location[0] ageRange] == 0;
  }

  v9 = v3;
  isAdult = 1;
  if (v10)
  {
    isAdult = [location[0] isAdult];
  }

  v8 = isAdult & 1;
  isUnder18 = 0;
  if (v10)
  {
    isUnder18 = [location[0] isUnder18];
  }

  v6 = 1;
  if (v9)
  {
    v6 = 1;
    if ((isUnder18 & 1) == 0)
    {
      v6 = v8;
    }
  }

  if (v6)
  {
    if (isUnder18)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(location, 0);
  return v12;
}

@end