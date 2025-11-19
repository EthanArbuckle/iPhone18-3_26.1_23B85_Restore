@interface BuddyCloudConfigManager
+ (id)sharedManager;
- (BOOL)cloudConfigWantsToSkipControllerClass:(Class)a3;
- (BOOL)hasCloudConfiguration;
- (BOOL)isMultiUser;
- (BuddyCloudConfigManager)init;
- (NSDictionary)cloudConfigurationDetails;
- (id)profileConnection;
- (void)_setProfileConnection:(id)a3;
- (void)_updateSkipKeysWithCachedDetails:(id)a3;
- (void)cloudConfigMayHaveChanged;
- (void)setCloudConfigurationDetails:(id)a3;
@end

@implementation BuddyCloudConfigManager

- (void)_setProfileConnection:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_profileConnection, location[0]);
  objc_storeStrong(location, 0);
}

- (id)profileConnection
{
  if (!self->_profileConnection)
  {
    v2 = +[MCProfileConnection sharedConnection];
    profileConnection = self->_profileConnection;
    self->_profileConnection = v2;
  }

  v4 = self->_profileConnection;

  return v4;
}

+ (id)sharedManager
{
  v5 = &unk_1003A73D0;
  location = 0;
  objc_storeStrong(&location, &stru_10032EB80);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A73C8;

  return v2;
}

- (BuddyCloudConfigManager)init
{
  v18 = a2;
  location = 0;
  v17.receiver = self;
  v17.super_class = BuddyCloudConfigManager;
  location = [(BuddyCloudConfigManager *)&v17 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = dispatch_queue_create("Cloud Config Manager SkipKey Queue", 0);
    v3 = *(location + 4);
    *(location + 4) = v2;

    out_token = 0;
    v4 = [MCProfileListChangedNotification cStringUsingEncoding:4];
    v5 = *(location + 4);
    handler = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1001E0AD4;
    v13 = &unk_10032EBA8;
    v14 = location;
    v15 = notify_register_dispatch(v4, &out_token, v5, &handler);
    if (v15)
    {
      oslog = _BYLoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1001E0B88(buf, MCProfileListChangedNotification, v15);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Could not register for %{public}@ notification. Error: %{public}d", buf, 0x12u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v14, 0);
  }

  v6 = location;
  objc_storeStrong(&location, 0);
  return v6;
}

- (void)setCloudConfigurationDetails:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v16->_cloudConfigurationDetails != location[0] && ([location[0] isEqualToDictionary:v16->_cloudConfigurationDetails] & 1) == 0)
  {
    objc_storeStrong(&v16->_cloudConfigurationDetails, location[0]);
    oslog = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(buf, v16->_cloudConfigurationDetails);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Cloud Config changed: %p", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v12 = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10006AE18(v17, v16->_cloudConfigurationDetails);
      _os_log_debug_impl(&_mh_execute_header, v12, v11, "%@", v17, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    skipKeysQueue = v16->skipKeysQueue;
    block = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_1001E0DEC;
    v8 = &unk_10032B838;
    v9 = v16;
    v10 = location[0];
    dispatch_sync(skipKeysQueue, &block);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

- (NSDictionary)cloudConfigurationDetails
{
  if (!self->_cloudConfigurationDetails)
  {
    v2 = [(BuddyCloudConfigManager *)self profileConnection];
    v3 = [v2 cloudConfigurationDetails];
    [(BuddyCloudConfigManager *)self setCloudConfigurationDetails:v3];
  }

  cloudConfigurationDetails = self->_cloudConfigurationDetails;

  return cloudConfigurationDetails;
}

- (BOOL)hasCloudConfiguration
{
  v2 = [(BuddyCloudConfigManager *)self cloudConfigurationDetails:a2];
  v3 = v2 != 0;

  return v3;
}

- (void)cloudConfigMayHaveChanged
{
  v4 = self;
  location[1] = a2;
  v2 = [(BuddyCloudConfigManager *)self profileConnection];
  location[0] = [v2 cloudConfigurationDetails];

  if (location[0])
  {
    [(BuddyCloudConfigManager *)v4 setCloudConfigurationDetails:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)cloudConfigWantsToSkipControllerClass:(Class)a3
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  if (objc_opt_respondsToSelector())
  {
    location = [(objc_class *)v19 cloudConfigSkipKey];
    if (location)
    {
      skipKeysQueue = v21->skipKeysQueue;
      block = _NSConcreteStackBlock;
      v7 = -1073741824;
      v8 = 0;
      v9 = sub_1001E1114;
      v10 = &unk_10032EBD0;
      v11 = v21;
      v12[0] = location;
      v12[1] = &v14;
      dispatch_sync(skipKeysQueue, &block);
      objc_storeStrong(v12, 0);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&location, 0);
  }

  v4 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v4 & 1;
}

- (BOOL)isMultiUser
{
  v2 = +[BYManagedAppleIDBootstrap isMultiUser];
  v8 = 0;
  v6 = 0;
  v3 = 1;
  if ((v2 & 1) == 0)
  {
    v4 = +[BYManagedAppleIDBootstrap isSettingUpMultiUser];
    v3 = 1;
    if ((v4 & 1) == 0)
    {
      v9 = [(BuddyCloudConfigManager *)self cloudConfigurationDetails];
      v8 = 1;
      v7 = [(NSDictionary *)v9 objectForKeyedSubscript:kMCCCIsMultiUserKey];
      v6 = 1;
      v3 = [v7 BOOLValue];
    }
  }

  v11 = v3 & 1;
  if (v6)
  {
  }

  if (v8)
  {
  }

  return v11;
}

- (void)_updateSkipKeysWithCachedDetails:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = +[NSMutableSet set];
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 skipSetupKeys];
  [v17 addObjectsFromArray:v4];

  v5 = [location[0] objectForKeyedSubscript:kMCCCSkipSetupKey];
  [v17 addObjectsFromArray:v5];

  v6 = [v17 copy];
  skipSetupKeys = v19->_skipSetupKeys;
  v19->_skipSetupKeys = v6;

  oslog = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10006AE18(buf, v19->_skipSetupKeys);
    _os_log_debug_impl(&_mh_execute_header, oslog, v15, "Skip keys are: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1001E1514;
  v13 = &unk_10032B0D0;
  v14 = v19;
  dispatch_async(v8, &block);

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

@end