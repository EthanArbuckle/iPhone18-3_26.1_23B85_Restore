@interface BuddyMigrationState
+ (BOOL)hasStateFromPreferences:(id)a3;
+ (id)loadFromPreferences:(id)a3;
+ (void)removeFromPreferences:(id)a3;
- (BuddyMigrationState)initWithProductBuild:(id)a3 intent:(unint64_t)a4;
- (BuddyMigrationState)initWithProductBuild:(id)a3 intent:(unint64_t)a4 persistDate:(id)a5;
- (id)description;
- (void)persistUsingPreferences:(id)a3;
@end

@implementation BuddyMigrationState

- (BuddyMigrationState)initWithProductBuild:(id)a3 intent:(unint64_t)a4 persistDate:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  obj = 0;
  objc_storeStrong(&obj, a5);
  v7 = v15;
  v15 = 0;
  v11.receiver = v7;
  v11.super_class = BuddyMigrationState;
  v8 = [(BuddyMigrationState *)&v11 init];
  v15 = v8;
  objc_storeStrong(&v15, v8);
  if (v8)
  {
    objc_storeStrong(v15 + 1, location[0]);
    *(v15 + 2) = v13;
    objc_storeStrong(v15 + 3, obj);
  }

  v9 = v15;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v9;
}

- (BuddyMigrationState)initWithProductBuild:(id)a3 intent:(unint64_t)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v9 = 0;
  v9 = [v5 initWithProductBuild:location[0] intent:a4 persistDate:{0, a4}];
  objc_storeStrong(&v9, v9);
  v6 = v9;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v6;
}

+ (id)loadFromPreferences:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

+ (BOOL)hasStateFromPreferences:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] objectForKey:@"showMigrationOnLaunch"];
  v4 = v3 != 0;

  objc_storeStrong(location, 0);
  return v4;
}

- (void)persistUsingPreferences:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = objc_alloc_init(NSMutableDictionary);
  v3 = [(BuddyMigrationState *)v8 productBuild];

  if (v3)
  {
    v4 = [(BuddyMigrationState *)v8 productBuild];
    [v6 setObject:v4 forKeyedSubscript:@"productBuild"];
  }

  v5 = [NSNumber numberWithUnsignedInteger:[(BuddyMigrationState *)v8 intent]];
  [v6 setObject:v5 forKeyedSubscript:@"intent"];

  [location[0] setObject:v6 forKey:@"showMigrationOnLaunch" persistImmediately:1];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

+ (void)removeFromPreferences:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] removeObjectForKey:@"showMigrationOnLaunch" onlyFromMemory:0];
  objc_storeStrong(location, 0);
}

- (id)description
{
  v2 = objc_opt_class();
  v3 = [(BuddyMigrationState *)self productBuild];
  v4 = [NSString stringWithFormat:@"<%@ : %p> Build: %@ Intent: %ld", v2, self, v3, [(BuddyMigrationState *)self intent], a2];

  return v4;
}

@end