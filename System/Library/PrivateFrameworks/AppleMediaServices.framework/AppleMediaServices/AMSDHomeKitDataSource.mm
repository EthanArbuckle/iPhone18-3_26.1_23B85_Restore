@interface AMSDHomeKitDataSource
- (AMSDHomeKitDataSource)init;
- (AMSDHomeManagerDataSourceDelegate)delegate;
- (AMSPromise)allHomes;
- (id)_allHomeKitHomes;
- (id)_settingForKeyPath:(id)path user:(id)user home:(id)home;
- (id)_settingForKeyPath:(id)path withSettings:(id)settings;
- (id)allUsersInHome:(id)home;
- (id)currentDeviceIsAccessoryForHome:(id)home;
- (id)homeWithIdentifier:(id)identifier;
- (id)sendCloudShare:(id)share inContainer:(id)container toOwnerOfHome:(id)home;
- (id)settingForKeyPath:(id)path;
- (id)settingForKeyPath:(id)path user:(id)user home:(id)home;
- (unint64_t)iTunesLibraryEnabledForUser:(id)user home:(id)home;
- (unint64_t)mediaProfileEnabledForUser:(id)user home:(id)home;
- (void)accessoryDidUpdatePreferredMediaUser:(id)user;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)homeDidEnableMultiUser:(id)user;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManager:(id)manager didUpdateMultiUserStatus:(int64_t)status reason:(id)reason;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)registerToAcceptCloudSharesForContainers:(id)containers;
- (void)settingsDidUpdate:(id)update;
- (void)shareManager:(id)manager didReceiveRepairInfo:(id)info home:(id)home;
- (void)shareManager:(id)manager didReceiveShareInvitation:(id)invitation completionHandler:(id)handler;
- (void)teardownMultiUser;
- (void)user:(id)user didUpdateMediaContentProfileAccessControl:(id)control forHome:(id)home;
@end

@implementation AMSDHomeKitDataSource

- (AMSDHomeKitDataSource)init
{
  v11.receiver = self;
  v11.super_class = AMSDHomeKitDataSource;
  v2 = [(AMSDHomeKitDataSource *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(AMSMutableBinaryPromise);
    homesUpdatedPromise = v2->_homesUpdatedPromise;
    v2->_homesUpdatedPromise = v3;

    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v5 = qword_1002E3220;
    v16 = qword_1002E3220;
    if (!qword_1002E3220)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100063D8C;
      v12[3] = &unk_1002B0728;
      v12[4] = &v13;
      sub_100063D8C(v12);
      v5 = v14[3];
    }

    v6 = v5;
    _Block_object_dispose(&v13, 8);
    v7 = [v5 alloc];
    v8 = ([v7 methodForSelector:"initWithOptions:"])(v7, "initWithOptions:", 56);
    homeManager = v2->_homeManager;
    v2->_homeManager = v8;

    [(HMHomeManager *)v2->_homeManager setDelegate:v2];
  }

  return v2;
}

- (AMSPromise)allHomes
{
  objc_initWeak(&location, self);
  _allHomeKitHomes = [(AMSDHomeKitDataSource *)self _allHomeKitHomes];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100060D60;
  v6[3] = &unk_1002B0CE0;
  objc_copyWeak(&v7, &location);
  v4 = [_allHomeKitHomes thenWithBlock:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

- (id)allUsersInHome:(id)home
{
  homeCopy = home;
  users = [homeCopy users];
  v6 = [users mutableCopy];

  currentUser = [homeCopy currentUser];

  [v6 ams_addNullableObject:currentUser];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100060F7C;
  v9[3] = &unk_1002B0D08;
  v9[4] = self;
  [v6 enumerateObjectsUsingBlock:v9];

  return v6;
}

- (id)currentDeviceIsAccessoryForHome:(id)home
{
  homeCopy = home;
  homeManager = [(AMSDHomeKitDataSource *)self homeManager];
  currentAccessory = [homeManager currentAccessory];

  if (currentAccessory)
  {
    home = [currentAccessory home];
    uniqueIdentifier = [home uniqueIdentifier];
    uniqueIdentifier2 = [homeCopy uniqueIdentifier];
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [uniqueIdentifier isEqual:uniqueIdentifier2]);

    goto LABEL_16;
  }

  if (+[AMSDevice deviceIsAppleTV])
  {
    v11 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v11 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = objc_opt_class();
    v14 = AMSLogKey();
    v19 = 138543618;
    v20 = v13;
    v21 = 2114;
    v22 = v14;
    v15 = oSLogObject;
    v16 = OS_LOG_TYPE_DEFAULT;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}@: [%{public}@] [HMHomeManager currentAccessory] returned nil.", &v19, 0x16u);

LABEL_14:
    goto LABEL_15;
  }

  if (+[AMSDevice deviceIsAudioAccessory])
  {
    v11 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v11 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v17 = objc_opt_class();
    v14 = AMSLogKey();
    v19 = 138543618;
    v20 = v17;
    v21 = 2114;
    v22 = v14;
    v15 = oSLogObject;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_13;
  }

LABEL_15:
  v10 = 0;
LABEL_16:

  return v10;
}

- (id)homeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _allHomeKitHomes = [(AMSDHomeKitDataSource *)self _allHomeKitHomes];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000612C8;
  v9[3] = &unk_1002B0310;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [_allHomeKitHomes thenWithBlock:v9];

  return v7;
}

- (unint64_t)iTunesLibraryEnabledForUser:(id)user home:(id)home
{
  homeCopy = home;
  userCopy = user;
  v8 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v17 = 138543874;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = @"root.music.allowiTunesAccount";
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Using %{public}@ to determine if a user's media profile is enabled.", &v17, 0x20u);
  }

  v12 = [(AMSDHomeKitDataSource *)self _settingForKeyPath:@"root.music.allowiTunesAccount" user:userCopy home:homeCopy];

  if (v12 && (+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 BOOLValue]), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    if ([v13 BOOLValue])
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)mediaProfileEnabledForUser:(id)user home:(id)home
{
  userCopy = user;
  homeCopy = home;
  if (+[AMSDevice deviceIsAppleTV])
  {
    v8 = [userCopy mediaContentProfileAccessControlForHome:homeCopy];
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = AMSLogKey();
        v23 = 138543618;
        v24 = v11;
        v25 = 2114;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [HMUser mediaContentProfileAccessControlForHome:] returned nil.", &v23, 0x16u);
      }
    }

    accessories = [v8 accessories];

    if (accessories)
    {
      accessories2 = [v8 accessories];
      accessories = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accessories2 ams_anyWithTest:&stru_1002B0D70]);
    }
  }

  else
  {
    if (!+[AMSDevice deviceIsAudioAccessory])
    {
LABEL_26:
      v21 = 0;
      goto LABEL_27;
    }

    if (_os_feature_enabled_impl())
    {
      v15 = @"root.music.allowiTunesAccount";
    }

    else
    {
      v15 = @"root.siri.identifyVoice";
    }

    v16 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      v23 = 138543874;
      v24 = v18;
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Using %{public}@ to determine if a user's media profile is enabled.", &v23, 0x20u);
    }

    v20 = [(AMSDHomeKitDataSource *)self _settingForKeyPath:v15 user:userCopy home:homeCopy];
    v8 = v20;
    if (v20)
    {
      accessories = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 BOOLValue]);
    }

    else
    {
      accessories = 0;
    }
  }

  if (!accessories)
  {
    goto LABEL_26;
  }

  if ([accessories BOOLValue])
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

LABEL_27:
  return v21;
}

- (void)teardownMultiUser
{
  homeManager = [(AMSDHomeKitDataSource *)self homeManager];
  userCloudShareManager = [homeManager userCloudShareManager];
  [userCloudShareManager setDelegate:0];

  homeManager2 = [(AMSDHomeKitDataSource *)self homeManager];
  [homeManager2 setDelegate:0];

  [(AMSDHomeKitDataSource *)self setHomeManager:0];

  [(AMSDHomeKitDataSource *)self setDelegate:0];
}

- (void)registerToAcceptCloudSharesForContainers:(id)containers
{
  containersCopy = containers;
  homeManager = [(AMSDHomeKitDataSource *)self homeManager];
  userCloudShareManager = [homeManager userCloudShareManager];
  [userCloudShareManager setDelegate:self];

  v7 = [containersCopy ams_mapWithTransform:&stru_1002B0DB0];
  v8 = AMSLogKey();
  objc_initWeak(&location, self);
  homeManager2 = [(AMSDHomeKitDataSource *)self homeManager];
  userCloudShareManager2 = [homeManager2 userCloudShareManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100061AF8;
  v12[3] = &unk_1002B0DD8;
  v11 = v8;
  v13 = v11;
  objc_copyWeak(&v14, &location);
  [userCloudShareManager2 registerForContainerIDs:v7 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)sendCloudShare:(id)share inContainer:(id)container toOwnerOfHome:(id)home
{
  shareCopy = share;
  containerCopy = container;
  homeCopy = home;
  v11 = shareCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = containerCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v12;
    v17 = objc_opt_class();
    v18 = AMSLogKey();
    AMSHashIfNeeded();
    v19 = v29 = self;
    v20 = AMSHashIfNeeded();
    *buf = 138544130;
    v34 = v17;
    v12 = v28;
    v35 = 2114;
    v36 = v18;
    v37 = 2114;
    v38 = v19;
    v39 = 2114;
    v40 = v20;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending a cloud share to a home owner. share = %{public}@ | home = %{public}@", buf, 0x2Au);

    self = v29;
  }

  identifier = [homeCopy identifier];
  v22 = [(AMSDHomeKitDataSource *)self homeWithIdentifier:identifier];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000620B4;
  v30[3] = &unk_1002B0E28;
  v31 = v12;
  v32 = v14;
  v23 = v14;
  v24 = v12;
  v25 = [v22 thenWithBlock:v30];

  v26 = [v25 thenWithBlock:&stru_1002B0E68];

  return v26;
}

- (id)settingForKeyPath:(id)path
{
  pathCopy = path;
  homeManager = [(AMSDHomeKitDataSource *)self homeManager];
  currentAccessory = [homeManager currentAccessory];

  if (currentAccessory)
  {
    settings = [currentAccessory settings];
    if (settings)
    {
      v8 = [(AMSDHomeKitDataSource *)self _settingForKeyPath:pathCopy withSettings:settings];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [HMHomeManager currentAccessory] returned nil.", &v14, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)settingForKeyPath:(id)path user:(id)user home:(id)home
{
  pathCopy = path;
  userCopy = user;
  homeCopy = home;
  identifier = [homeCopy identifier];
  v12 = [(AMSDHomeKitDataSource *)self homeWithIdentifier:identifier];
  v13 = [v12 resultWithError:0];

  v14 = [(AMSDHomeKitDataSource *)self allUsersInHome:v13];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100062780;
  v26[3] = &unk_1002B0E90;
  v15 = userCopy;
  v27 = v15;
  v16 = [v14 ams_firstObjectPassingTest:v26];

  if (v13 && v16)
  {
    v17 = [(AMSDHomeKitDataSource *)self _settingForKeyPath:pathCopy user:v16 home:v13];
  }

  else
  {
    v18 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      AMSLogKey();
      v21 = v25 = pathCopy;
      v22 = AMSHashIfNeeded();
      v23 = AMSHashIfNeeded();
      *buf = 138544130;
      v29 = v20;
      v30 = 2114;
      v31 = v21;
      v32 = 2114;
      v33 = v22;
      v34 = 2114;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch a HMHome/HMHomeUser. home = %{public}@ | homeUser = %{public}@", buf, 0x2Au);

      pathCopy = v25;
    }

    v17 = 0;
  }

  return v17;
}

- (void)accessoryDidUpdatePreferredMediaUser:(id)user
{
  userCopy = user;
  v5 = AMSSetLogKey();
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = AMSHashIfNeeded();
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Preferred media user for current accessory updated. Accessory = %{public}@", &v12, 0x20u);
  }

  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:7];
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  v5 = AMSSetLogKey();
  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:0];
}

- (void)homeDidEnableMultiUser:(id)user
{
  v4 = AMSSetLogKey();
  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:6];
}

- (void)home:(id)home didAddUser:(id)user
{
  v5 = AMSSetLogKey();
  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:10];
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  v5 = AMSSetLogKey();
  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:1];
}

- (void)home:(id)home didRemoveUser:(id)user
{
  v5 = AMSSetLogKey();
  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:11];
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  v5 = AMSSetLogKey();
  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:2];
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  v5 = AMSSetLogKey();
  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:3];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v4 = AMSSetLogKey();
  homesUpdatedPromise = [(AMSDHomeKitDataSource *)self homesUpdatedPromise];
  [homesUpdatedPromise finishWithSuccess];

  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:4];
}

- (void)homeManager:(id)manager didUpdateMultiUserStatus:(int64_t)status reason:(id)reason
{
  reasonCopy = reason;
  v8 = AMSSetLogKey();
  v9 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v14 = 138544130;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2048;
    statusCopy = status;
    v20 = 2114;
    v21 = reasonCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] HomeKit's multi-user status changed. status = %ld | reason = %{public}@", &v14, 0x2Au);
  }

  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:9];
}

- (void)settingsDidUpdate:(id)update
{
  v4 = AMSSetLogKey();
  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:8];
}

- (void)shareManager:(id)manager didReceiveRepairInfo:(id)info home:(id)home
{
  homeCopy = home;
  v7 = AMSSetLogKey();
  delegate = [(AMSDHomeKitDataSource *)self delegate];
  v8 = [[AMSDHomeKitHome alloc] initWithHome:homeCopy dataSource:self];

  [delegate homeManagerDataSource:self didReceiveCloudDataRepairRequestForHome:v8];
}

- (void)shareManager:(id)manager didReceiveShareInvitation:(id)invitation completionHandler:(id)handler
{
  handlerCopy = handler;
  invitationCopy = invitation;
  v9 = AMSSetLogKey();
  delegate = [(AMSDHomeKitDataSource *)self delegate];
  v11 = [[AMSDHomeKitHomeCloudShare alloc] initWithShareInvitation:invitationCopy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100063018;
  v13[3] = &unk_1002B0EB8;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [delegate homeManagerDataSource:self didReceiveCloudShare:v11 completion:v13];
}

- (void)user:(id)user didUpdateMediaContentProfileAccessControl:(id)control forHome:(id)home
{
  v6 = AMSSetLogKey();
  delegate = [(AMSDHomeKitDataSource *)self delegate];
  [delegate homeManagerDataSource:self didChangeWithType:5];
}

- (id)_allHomeKitHomes
{
  homeManager = [(AMSDHomeKitDataSource *)self homeManager];
  multiUserStatus = [homeManager multiUserStatus];

  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543874;
    v29 = v7;
    v30 = 2114;
    v31 = v8;
    v32 = 2048;
    v33 = multiUserStatus;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] HMHomeManagerMultiUserStatus = %ld", buf, 0x20u);
  }

  if (multiUserStatus == 1)
  {
    v9 = objc_alloc_init(AMSMutablePromise);
    objc_initWeak(buf, self);
    homesUpdatedPromise = [(AMSDHomeKitDataSource *)self homesUpdatedPromise];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000635CC;
    v25[3] = &unk_1002B0EE0;
    objc_copyWeak(&v27, buf);
    v11 = v9;
    v26 = v11;
    [homesUpdatedPromise addErrorBlock:v25];

    homesUpdatedPromise2 = [(AMSDHomeKitDataSource *)self homesUpdatedPromise];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100063720;
    v22[3] = &unk_1002B0F30;
    objc_copyWeak(&v24, buf);
    v13 = v11;
    v23 = v13;
    [homesUpdatedPromise2 addSuccessBlock:v22];

    v14 = v23;
    v15 = v13;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      *buf = 138543874;
      v29 = v18;
      v30 = 2114;
      v31 = v19;
      v32 = 2048;
      v33 = multiUserStatus;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Failed to fetch the device's homes. HomeKit isn't ready. status = %ld", buf, 0x20u);
    }

    v20 = AMSError();
    v15 = [AMSPromise promiseWithError:v20];
  }

  return v15;
}

- (id)_settingForKeyPath:(id)path user:(id)user home:(id)home
{
  pathCopy = path;
  v9 = [user userSettingsForHome:home];
  settings = [v9 settings];
  if (settings)
  {
    v11 = [(AMSDHomeKitDataSource *)self _settingForKeyPath:pathCopy withSettings:settings];
  }

  else
  {
    v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v17 = 138544130;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = 0;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the necessary HomeKit settings objects. settingsContainer = %@ | settings = %@", &v17, 0x2Au);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_settingForKeyPath:(id)path withSettings:(id)settings
{
  pathCopy = path;
  settingsCopy = settings;
  [settingsCopy setDelegate:self];
  v8 = objc_alloc_init(NSMutableArray);
  rootGroup = [settingsCopy rootGroup];
  [v8 ams_addNullableObject:rootGroup];

  rootGroup2 = [settingsCopy rootGroup];
  groups = [rootGroup2 groups];
  [v8 ams_addObjectsFromNullableArray:groups];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v13)
  {
    v14 = *v27;
    while (2)
    {
      for (i = 0; i != v13; i = (i + 1))
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v12);
        }

        settings = [*(*(&v26 + 1) + 8 * i) settings];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100063C9C;
        v24[3] = &unk_1002B0F58;
        v25 = pathCopy;
        v17 = [settings ams_firstObjectPassingTest:v24];

        if (v17)
        {
          v13 = [[AMSDHomeKitHomeSetting alloc] initWithSetting:v17];

          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = AMSLogKey();
    v22 = AMSHashIfNeeded();
    *buf = 138544130;
    v31 = v20;
    v32 = 2114;
    v33 = v21;
    v34 = 2114;
    v35 = pathCopy;
    v36 = 2114;
    v37 = v22;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetched a HomeKit setting. keyPath = %{public}@ | setting = %{public}@", buf, 0x2Au);
  }

  return v13;
}

- (AMSDHomeManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end