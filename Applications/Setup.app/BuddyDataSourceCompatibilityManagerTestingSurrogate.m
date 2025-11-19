@interface BuddyDataSourceCompatibilityManagerTestingSurrogate
+ (BOOL)enabled;
- (BOOL)_shouldDisallowDataSourceProductVersion:(id)a3;
- (BOOL)canCurrentProductVersionAcceptDataSourceProductVersion:(id)a3;
- (BOOL)canCurrentProductVersionRestoreFromSnapshot:(id)a3;
- (BOOL)canUpdateProductVersion:(id)a3 acceptDataSourceProductVersion:(id)a4;
- (BOOL)canUpdateProductVersion:(id)a3 restoreFromSnapshot:(id)a4;
- (BuddyDataSourceCompatibilityManagerTestingSurrogate)init;
@end

@implementation BuddyDataSourceCompatibilityManagerTestingSurrogate

+ (BOOL)enabled
{
  location[2] = a1;
  location[1] = a2;
  location[0] = +[BYTestingSurrogateBehaviorManager sharedInstance];
  v2 = [location[0] domainSoftwareUpdate];
  v3 = [location[0] enabledForDomain:v2];

  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (BuddyDataSourceCompatibilityManagerTestingSurrogate)init
{
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BuddyDataSourceCompatibilityManagerTestingSurrogate;
  location = [(BuddyDataSourceCompatibilityManagerTestingSurrogate *)&v5 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = +[BYTestingSurrogateBehaviorManager sharedInstance];
    [location setBehaviorManager:v2];
  }

  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (BOOL)_shouldDisallowDataSourceProductVersion:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] length])
  {
    v3 = [(BuddyDataSourceCompatibilityManagerTestingSurrogate *)v15 behaviorManager];
    v4 = [(BuddyDataSourceCompatibilityManagerTestingSurrogate *)v15 behaviorManager];
    v5 = [(BYTestingSurrogateBehaviorManager *)v4 domainSoftwareUpdate];
    v12 = [(BYTestingSurrogateBehaviorManager *)v3 acquireNextBehaviorWithName:@"restoreAndMigrationSourceCompatibilityInfo" domain:v5];

    v6 = [v12 results];
    v11 = [v6 objectForKeyedSubscript:@"productVersionRequiringSoftwareUpdate"];

    if ([v11 length])
    {
      v7 = location[0];
      v8 = +[SASSystemInformation productVersion];
      v9 = [SASSystemInformation compareProductVersion:v7 toProductVersion:v8];

      v16 = v9 != -1;
    }

    else
    {
      v16 = 0;
    }

    v13 = 1;
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v16 = 0;
    v13 = 1;
  }

  objc_storeStrong(location, 0);
  return v16;
}

- (BOOL)canCurrentProductVersionAcceptDataSourceProductVersion:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(BuddyDataSourceCompatibilityManagerTestingSurrogate *)v6 _shouldDisallowDataSourceProductVersion:location[0]])
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Testing surrogate disallowing data source product version %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)canCurrentProductVersionRestoreFromSnapshot:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_exception_throw([NSException exceptionWithName:@"testing surrogate method not implemented yet" reason:0 userInfo:0]);
}

- (BOOL)canUpdateProductVersion:(id)a3 restoreFromSnapshot:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_exception_throw([NSException exceptionWithName:@"testing surrogate method not implemented yet" reason:0 userInfo:0]);
}

- (BOOL)canUpdateProductVersion:(id)a3 acceptDataSourceProductVersion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_exception_throw([NSException exceptionWithName:@"testing surrogate method not implemented yet" reason:0 userInfo:0]);
}

@end