@interface BuddyMigrationState
+ (BOOL)hasStateFromPreferences:(id)preferences;
+ (id)loadFromPreferences:(id)preferences;
+ (void)removeFromPreferences:(id)preferences;
- (BuddyMigrationState)initWithProductBuild:(id)build intent:(unint64_t)intent;
- (BuddyMigrationState)initWithProductBuild:(id)build intent:(unint64_t)intent persistDate:(id)date;
- (id)description;
- (void)persistUsingPreferences:(id)preferences;
@end

@implementation BuddyMigrationState

- (BuddyMigrationState)initWithProductBuild:(id)build intent:(unint64_t)intent persistDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, build);
  intentCopy = intent;
  obj = 0;
  objc_storeStrong(&obj, date);
  v7 = selfCopy;
  selfCopy = 0;
  v11.receiver = v7;
  v11.super_class = BuddyMigrationState;
  v8 = [(BuddyMigrationState *)&v11 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(selfCopy + 1, location[0]);
    *(selfCopy + 2) = intentCopy;
    objc_storeStrong(selfCopy + 3, obj);
  }

  v9 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (BuddyMigrationState)initWithProductBuild:(id)build intent:(unint64_t)intent
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, build);
  v5 = selfCopy;
  selfCopy = 0;
  selfCopy = [v5 initWithProductBuild:location[0] intent:intent persistDate:{0, intent}];
  objc_storeStrong(&selfCopy, selfCopy);
  v6 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

+ (id)loadFromPreferences:(id)preferences
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v17 = [location[0] objectForKey:@"showMigrationOnLaunch" includeCache:0];
  v16 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v17 objectForKeyedSubscript:@"productBuild"];
    v14 = [v17 objectForKeyedSubscript:@"intent"];
    v13 = [v17 objectForKeyedSubscript:@"persistDate"];
    v3 = -[BuddyMigrationState initWithProductBuild:intent:persistDate:]([BuddyMigrationState alloc], "initWithProductBuild:intent:persistDate:", v15, [v14 unsignedIntegerValue], v13);
    v4 = v16;
    v16 = v3;

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  if (!v16)
  {
    oslog = _BYLoggingFacility();
    v11 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v5 = oslog;
      v6 = v11;
      sub_10006AA68(buf);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "Missing or corrupt data when restoring migration state!", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v9 = _BYLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(v19, v17);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Raw data: %{public}@", v19, 0xCu);
    }

    objc_storeStrong(&v9, 0);
  }

  v7 = v16;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (BOOL)hasStateFromPreferences:(id)preferences
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v3 = [location[0] objectForKey:@"showMigrationOnLaunch"];
  v4 = v3 != 0;

  objc_storeStrong(location, 0);
  return v4;
}

- (void)persistUsingPreferences:(id)preferences
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v6 = objc_alloc_init(NSMutableDictionary);
  productBuild = [(BuddyMigrationState *)selfCopy productBuild];

  if (productBuild)
  {
    productBuild2 = [(BuddyMigrationState *)selfCopy productBuild];
    [v6 setObject:productBuild2 forKeyedSubscript:@"productBuild"];
  }

  v5 = [NSNumber numberWithUnsignedInteger:[(BuddyMigrationState *)selfCopy intent]];
  [v6 setObject:v5 forKeyedSubscript:@"intent"];

  [location[0] setObject:v6 forKey:@"showMigrationOnLaunch" persistImmediately:1];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

+ (void)removeFromPreferences:(id)preferences
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  [location[0] removeObjectForKey:@"showMigrationOnLaunch" onlyFromMemory:0];
  objc_storeStrong(location, 0);
}

- (id)description
{
  v2 = objc_opt_class();
  productBuild = [(BuddyMigrationState *)self productBuild];
  v4 = [NSString stringWithFormat:@"<%@ : %p> Build: %@ Intent: %ld", v2, self, productBuild, [(BuddyMigrationState *)self intent], a2];

  return v4;
}

@end