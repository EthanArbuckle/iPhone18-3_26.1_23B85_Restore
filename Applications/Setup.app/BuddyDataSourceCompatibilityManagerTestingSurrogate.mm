@interface BuddyDataSourceCompatibilityManagerTestingSurrogate
+ (BOOL)enabled;
- (BOOL)_shouldDisallowDataSourceProductVersion:(id)version;
- (BOOL)canCurrentProductVersionAcceptDataSourceProductVersion:(id)version;
- (BOOL)canCurrentProductVersionRestoreFromSnapshot:(id)snapshot;
- (BOOL)canUpdateProductVersion:(id)version acceptDataSourceProductVersion:(id)productVersion;
- (BOOL)canUpdateProductVersion:(id)version restoreFromSnapshot:(id)snapshot;
- (BuddyDataSourceCompatibilityManagerTestingSurrogate)init;
@end

@implementation BuddyDataSourceCompatibilityManagerTestingSurrogate

+ (BOOL)enabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = +[BYTestingSurrogateBehaviorManager sharedInstance];
  domainSoftwareUpdate = [location[0] domainSoftwareUpdate];
  v3 = [location[0] enabledForDomain:domainSoftwareUpdate];

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

- (BOOL)_shouldDisallowDataSourceProductVersion:(id)version
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  if ([location[0] length])
  {
    behaviorManager = [(BuddyDataSourceCompatibilityManagerTestingSurrogate *)selfCopy behaviorManager];
    behaviorManager2 = [(BuddyDataSourceCompatibilityManagerTestingSurrogate *)selfCopy behaviorManager];
    domainSoftwareUpdate = [(BYTestingSurrogateBehaviorManager *)behaviorManager2 domainSoftwareUpdate];
    v12 = [(BYTestingSurrogateBehaviorManager *)behaviorManager acquireNextBehaviorWithName:@"restoreAndMigrationSourceCompatibilityInfo" domain:domainSoftwareUpdate];

    results = [v12 results];
    v11 = [results objectForKeyedSubscript:@"productVersionRequiringSoftwareUpdate"];

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

- (BOOL)canCurrentProductVersionAcceptDataSourceProductVersion:(id)version
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  if ([(BuddyDataSourceCompatibilityManagerTestingSurrogate *)selfCopy _shouldDisallowDataSourceProductVersion:location[0]])
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

- (BOOL)canCurrentProductVersionRestoreFromSnapshot:(id)snapshot
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, snapshot);
  objc_exception_throw([NSException exceptionWithName:@"testing surrogate method not implemented yet" reason:0 userInfo:0]);
}

- (BOOL)canUpdateProductVersion:(id)version restoreFromSnapshot:(id)snapshot
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v5 = 0;
  objc_storeStrong(&v5, snapshot);
  objc_exception_throw([NSException exceptionWithName:@"testing surrogate method not implemented yet" reason:0 userInfo:0]);
}

- (BOOL)canUpdateProductVersion:(id)version acceptDataSourceProductVersion:(id)productVersion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v5 = 0;
  objc_storeStrong(&v5, productVersion);
  objc_exception_throw([NSException exceptionWithName:@"testing surrogate method not implemented yet" reason:0 userInfo:0]);
}

@end