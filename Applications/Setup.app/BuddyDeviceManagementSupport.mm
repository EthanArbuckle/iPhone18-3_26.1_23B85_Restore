@interface BuddyDeviceManagementSupport
+ (id)sharedSupport;
- (BOOL)deviceManagementWantsToSkipControllerClass:(Class)class;
- (BOOL)shouldDisallowProximityAdvertisement;
- (BuddyDeviceManagementSupport)init;
- (NSArray)skipKeys;
- (void)_loadSkipKeys:(id)keys;
- (void)_loadSkipKeysWithCurrentTry:(int)try completion:(id)completion;
- (void)loadSkipKeys:(id)keys;
@end

@implementation BuddyDeviceManagementSupport

+ (id)sharedSupport
{
  v5 = &unk_1003A74C0;
  location = 0;
  objc_storeStrong(&location, &stru_10032F580);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A74B8;

  return v2;
}

- (BuddyDeviceManagementSupport)init
{
  v8 = a2;
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyDeviceManagementSupport;
  v2 = [(BuddyDeviceManagementSupport *)&v7 init];
  location = v2;
  objc_storeStrong(&location, v2);
  if (v2)
  {
    v3 = dispatch_queue_create("Skip Keys Queue", 0);
    [location setSkipKeysQueue:v3];

    v4 = objc_alloc_init(BuddyDeviceManagementProvider);
    [location setDeviceManagementProvider:v4];
  }

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (NSArray)skipKeys
{
  selfCopy = self;
  v18[1] = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 838860800;
  v15 = 48;
  v16 = sub_100231A58;
  v17 = sub_100231A9C;
  v18[0] = 0;
  skipKeysQueue = [(BuddyDeviceManagementSupport *)self skipKeysQueue];
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100231AA8;
  v10 = &unk_10032C290;
  v11[1] = &v12;
  v11[0] = selfCopy;
  dispatch_sync(skipKeysQueue, &block);

  if (!v13[5])
  {
    v3 = [NSString alloc];
    objc_exception_throw(+[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", @"Skip Keys Not Loaded", [v3 initWithFormat:@"Skip keys were attempted to be access before they were loaded. didAttemptToFetchSkipKeys: %d. didFetchSkipKeysSuccessfully: %d", selfCopy->_didAttemptToFetchSkipKeys, selfCopy->_didFetchSkipKeysSuccessfully], 0));
  }

  v4 = v13[5];
  objc_storeStrong(v11, 0);
  _Block_object_dispose(&v12, 8);
  objc_storeStrong(v18, 0);

  return v4;
}

- (void)loadSkipKeys:(id)keys
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, keys);
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Loading skip keys", v5, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyDeviceManagementSupport *)selfCopy _loadSkipKeysWithCurrentTry:0 completion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_loadSkipKeysWithCurrentTry:(int)try completion:(id)completion
{
  selfCopy = self;
  v26 = a2;
  tryCopy = try;
  location = 0;
  objc_storeStrong(&location, completion);
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_100231DA4;
  v21 = &unk_10032C630;
  v22 = location;
  v23 = objc_retainBlock(&v17);
  v16 = 2;
  objc_initWeak(&from, selfCopy);
  [(BuddyDeviceManagementSupport *)selfCopy setDidAttemptToFetchSkipKeys:1];
  v4 = selfCopy;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100231DEC;
  v9 = &unk_10032F5D0;
  v14 = tryCopy;
  v10 = selfCopy;
  v11 = v23;
  objc_copyWeak(&v13, &from);
  v12 = location;
  [(BuddyDeviceManagementSupport *)v4 _loadSkipKeys:&v5];
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v13);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&location, 0);
}

- (void)_loadSkipKeys:(id)keys
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, keys);
  deviceManagementProvider = [(BuddyDeviceManagementSupport *)selfCopy deviceManagementProvider];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1002322D8;
  v8 = &unk_10032F5F8;
  v9 = selfCopy;
  v10 = location[0];
  [(BuddyDeviceManagementProvider *)deviceManagementProvider loadSkipKeys:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldDisallowProximityAdvertisement
{
  selfCopy = self;
  v21[1] = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 838860800;
  v18 = 48;
  v19 = sub_100231A58;
  v20 = sub_100231A9C;
  v21[0] = 0;
  skipKeysQueue = [(BuddyDeviceManagementSupport *)self skipKeysQueue];
  block = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_100232670;
  v13 = &unk_10032C290;
  v14[1] = &v15;
  v14[0] = selfCopy;
  dispatch_sync(skipKeysQueue, &block);

  if (v16[5])
  {
    v23 = [v16[5] containsObject:kMCCCSkipSetupTapToSetup] & 1;
  }

  else
  {
    oslog = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v7;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Temporary disallowance of proximity advertisement until skip keys are loaded", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v23 = 1;
  }

  objc_storeStrong(v14, 0);
  _Block_object_dispose(&v15, 8);
  objc_storeStrong(v21, 0);
  return v23 & 1;
}

- (BOOL)deviceManagementWantsToSkipControllerClass:(Class)class
{
  selfCopy = self;
  v10 = a2;
  classCopy = class;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  location = [(objc_class *)classCopy cloudConfigSkipKey];
  v6 = 0;
  v3 = 0;
  if (location)
  {
    skipKeys = [(BuddyDeviceManagementSupport *)selfCopy skipKeys];
    v6 = 1;
    v3 = [(NSArray *)skipKeys containsObject:location];
  }

  if (v6)
  {
  }

  if (v3)
  {
    v12 = 1;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(&location, 0);
  if (!v5)
  {
LABEL_10:
    v12 = 0;
  }

  return v12 & 1;
}

@end