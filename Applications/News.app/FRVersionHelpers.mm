@interface FRVersionHelpers
+ (id)applicationName;
+ (id)systemVersionString;
- (BOOL)isDeviceAbandoned;
- (BOOL)isUpdateRequired;
- (FRVersionHelpers)init;
- (FRVersionHelpers)initWithBackgroundTaskable:(id)taskable applicationProxy:(id)proxy;
- (id)applicationVersionString;
- (id)minimumOSVersionStringForUpdate;
- (id)minimumVersionString;
- (id)updateInfos;
- (int64_t)applicationVersionNumber;
- (int64_t)minimumOSVersionNumberForUpdate;
- (int64_t)minimumVersionNumber;
- (int64_t)systemVersionNumber;
- (void)dealloc;
- (void)sceneDidEnterBackground:(id)background;
- (void)updateAppObsolescenceState;
@end

@implementation FRVersionHelpers

- (void)updateAppObsolescenceState
{
  remoteDefaults = [(FRVersionHelpers *)self remoteDefaults];
  isAvailable = [remoteDefaults isAvailable];

  if (isAvailable)
  {
    v5 = +[FCNetworkReachability sharedNetworkReachability];
    [v5 setAccessRestrictedBecauseOfAppVersion:{-[FRVersionHelpers isAppUpdateRequired](self, "isAppUpdateRequired")}];

    v6 = +[FCNetworkReachability sharedNetworkReachability];
    [v6 setAccessRestrictedBecauseOfOSVersion:{-[FRVersionHelpers isOSUpdateRequired](self, "isOSUpdateRequired")}];

    v7 = +[FCNetworkReachability sharedNetworkReachability];
    [v7 setAccessRestrictedBecauseOfDeviceAbandoned:{-[FRVersionHelpers isDeviceAbandoned](self, "isDeviceAbandoned")}];
  }
}

- (int64_t)applicationVersionNumber
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 BOOLForKey:FCSimulateAppObsolescenceSharedPreferenceKey];

  if (v4)
  {
    return -1;
  }

  applicationVersionString = [(FRVersionHelpers *)self applicationVersionString];
  v5 = FCIntegerRepresentationOfBundleShortVersionString();
  if (v5 <= 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006BCB8(applicationVersionString);
  }

  return v5;
}

- (id)applicationVersionString
{
  applicationProxy = [(FRVersionHelpers *)self applicationProxy];
  shortVersionString = [applicationProxy shortVersionString];

  return shortVersionString;
}

- (int64_t)minimumVersionNumber
{
  minimumVersionString = [(FRVersionHelpers *)self minimumVersionString];
  v3 = FCIntegerRepresentationOfBundleShortVersionString();

  return v3;
}

- (id)minimumVersionString
{
  objc_opt_class();
  updateInfos = [(FRVersionHelpers *)self updateInfos];
  v4 = [updateInfos objectForKey:@"MinimumApplicationVersion"];
  v5 = FCDynamicCast();

  return v5;
}

- (int64_t)systemVersionNumber
{
  v2 = NewsCoreUserDefaults();
  v3 = [v2 BOOLForKey:FCSimulateOSObsolescenceSharedPreferenceKey];

  if (v3)
  {
    return -1;
  }

  systemVersionString = [objc_opt_class() systemVersionString];
  v4 = FCIntegerRepresentationOfBundleShortVersionString();
  if (v4 <= 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006BD8C(systemVersionString);
  }

  return v4;
}

+ (id)systemVersionString
{
  if (qword_1000E6178 != -1)
  {
    sub_10000596C();
  }

  v3 = qword_1000E6170;

  return v3;
}

- (int64_t)minimumOSVersionNumberForUpdate
{
  minimumOSVersionStringForUpdate = [(FRVersionHelpers *)self minimumOSVersionStringForUpdate];
  v3 = FCIntegerRepresentationOfBundleShortVersionString();

  return v3;
}

- (id)minimumOSVersionStringForUpdate
{
  objc_opt_class();
  updateInfos = [(FRVersionHelpers *)self updateInfos];
  v4 = [updateInfos objectForKey:@"MinimumOSVersion"];
  v5 = FCDynamicCast();

  return v5;
}

- (BOOL)isDeviceAbandoned
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 BOOLForKey:FCSimulateHardwareObsolescenceSharedPreferenceKey];

  if (v4)
  {
    return 1;
  }

  v6 = NFDevicePlatform();
  objc_opt_class();
  updateInfos = [(FRVersionHelpers *)self updateInfos];
  v8 = [updateInfos objectForKey:@"UnsupportedDevices"];
  v9 = FCDynamicCast();

  LOBYTE(updateInfos) = [v9 containsObject:v6];
  return updateInfos;
}

- (id)updateInfos
{
  remoteDefaults = [(FRVersionHelpers *)self remoteDefaults];
  v3 = [remoteDefaults dictionaryForKey:@"iOSUpdateInfo"];

  return v3;
}

- (BOOL)isUpdateRequired
{
  remoteDefaults = [(FRVersionHelpers *)self remoteDefaults];
  isAvailable = [remoteDefaults isAvailable];

  if (!isAvailable)
  {
    goto LABEL_4;
  }

  isAppUpdateRequired = [(FRVersionHelpers *)self isAppUpdateRequired];
  if (isAppUpdateRequired)
  {
    if ([(FRVersionHelpers *)self isOSUpdateRequired])
    {
LABEL_4:
      LOBYTE(isAppUpdateRequired) = 0;
      return isAppUpdateRequired;
    }

    LOBYTE(isAppUpdateRequired) = ![(FRVersionHelpers *)self isDeviceAbandoned];
  }

  return isAppUpdateRequired;
}

- (FRVersionHelpers)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRVersionHelpers init]";
    v8 = 2080;
    v9 = "FRVersionHelpers.m";
    v10 = 1024;
    v11 = 27;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRVersionHelpers init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRVersionHelpers)initWithBackgroundTaskable:(id)taskable applicationProxy:(id)proxy
{
  taskableCopy = taskable;
  proxyCopy = proxy;
  if (!proxyCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006BBF4();
  }

  v13.receiver = self;
  v13.super_class = FRVersionHelpers;
  v8 = [(FRVersionHelpers *)&v13 init];
  if (v8)
  {
    v9 = [[FCRemoteDefaults alloc] initWithBackgroundTaskable:taskableCopy];
    remoteDefaults = v8->_remoteDefaults;
    v8->_remoteDefaults = v9;

    objc_storeStrong(&v8->_applicationProxy, proxy);
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v8 selector:"sceneDidEnterBackground:" name:UISceneDidEnterBackgroundNotification object:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FRVersionHelpers;
  [(FRVersionHelpers *)&v4 dealloc];
}

- (void)sceneDidEnterBackground:(id)background
{
  remoteDefaults = [(FRVersionHelpers *)self remoteDefaults];
  [remoteDefaults checkForUpdate];
}

+ (id)applicationName
{
  if (qword_1000E6188 != -1)
  {
    sub_10006BD78();
  }

  v3 = qword_1000E6180;

  return v3;
}

@end