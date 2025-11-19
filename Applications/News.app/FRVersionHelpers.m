@interface FRVersionHelpers
+ (id)applicationName;
+ (id)systemVersionString;
- (BOOL)isDeviceAbandoned;
- (BOOL)isUpdateRequired;
- (FRVersionHelpers)init;
- (FRVersionHelpers)initWithBackgroundTaskable:(id)a3 applicationProxy:(id)a4;
- (id)applicationVersionString;
- (id)minimumOSVersionStringForUpdate;
- (id)minimumVersionString;
- (id)updateInfos;
- (int64_t)applicationVersionNumber;
- (int64_t)minimumOSVersionNumberForUpdate;
- (int64_t)minimumVersionNumber;
- (int64_t)systemVersionNumber;
- (void)dealloc;
- (void)sceneDidEnterBackground:(id)a3;
- (void)updateAppObsolescenceState;
@end

@implementation FRVersionHelpers

- (void)updateAppObsolescenceState
{
  v3 = [(FRVersionHelpers *)self remoteDefaults];
  v4 = [v3 isAvailable];

  if (v4)
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

  v6 = [(FRVersionHelpers *)self applicationVersionString];
  v5 = FCIntegerRepresentationOfBundleShortVersionString();
  if (v5 <= 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006BCB8(v6);
  }

  return v5;
}

- (id)applicationVersionString
{
  v2 = [(FRVersionHelpers *)self applicationProxy];
  v3 = [v2 shortVersionString];

  return v3;
}

- (int64_t)minimumVersionNumber
{
  v2 = [(FRVersionHelpers *)self minimumVersionString];
  v3 = FCIntegerRepresentationOfBundleShortVersionString();

  return v3;
}

- (id)minimumVersionString
{
  objc_opt_class();
  v3 = [(FRVersionHelpers *)self updateInfos];
  v4 = [v3 objectForKey:@"MinimumApplicationVersion"];
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

  v5 = [objc_opt_class() systemVersionString];
  v4 = FCIntegerRepresentationOfBundleShortVersionString();
  if (v4 <= 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006BD8C(v5);
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
  v2 = [(FRVersionHelpers *)self minimumOSVersionStringForUpdate];
  v3 = FCIntegerRepresentationOfBundleShortVersionString();

  return v3;
}

- (id)minimumOSVersionStringForUpdate
{
  objc_opt_class();
  v3 = [(FRVersionHelpers *)self updateInfos];
  v4 = [v3 objectForKey:@"MinimumOSVersion"];
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
  v7 = [(FRVersionHelpers *)self updateInfos];
  v8 = [v7 objectForKey:@"UnsupportedDevices"];
  v9 = FCDynamicCast();

  LOBYTE(v7) = [v9 containsObject:v6];
  return v7;
}

- (id)updateInfos
{
  v2 = [(FRVersionHelpers *)self remoteDefaults];
  v3 = [v2 dictionaryForKey:@"iOSUpdateInfo"];

  return v3;
}

- (BOOL)isUpdateRequired
{
  v3 = [(FRVersionHelpers *)self remoteDefaults];
  v4 = [v3 isAvailable];

  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = [(FRVersionHelpers *)self isAppUpdateRequired];
  if (v5)
  {
    if ([(FRVersionHelpers *)self isOSUpdateRequired])
    {
LABEL_4:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = ![(FRVersionHelpers *)self isDeviceAbandoned];
  }

  return v5;
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

- (FRVersionHelpers)initWithBackgroundTaskable:(id)a3 applicationProxy:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006BBF4();
  }

  v13.receiver = self;
  v13.super_class = FRVersionHelpers;
  v8 = [(FRVersionHelpers *)&v13 init];
  if (v8)
  {
    v9 = [[FCRemoteDefaults alloc] initWithBackgroundTaskable:v6];
    remoteDefaults = v8->_remoteDefaults;
    v8->_remoteDefaults = v9;

    objc_storeStrong(&v8->_applicationProxy, a4);
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

- (void)sceneDidEnterBackground:(id)a3
{
  v3 = [(FRVersionHelpers *)self remoteDefaults];
  [v3 checkForUpdate];
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