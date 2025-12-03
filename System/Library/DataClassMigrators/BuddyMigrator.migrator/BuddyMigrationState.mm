@interface BuddyMigrationState
+ (BOOL)hasStateFromPreferences:(id)preferences;
+ (id)loadFromPreferences:(id)preferences;
- (BuddyMigrationState)initWithProductBuild:(id)build intent:(unint64_t)intent persistDate:(id)date;
- (id)description;
- (void)persistUsingPreferences:(id)preferences;
@end

@implementation BuddyMigrationState

- (BuddyMigrationState)initWithProductBuild:(id)build intent:(unint64_t)intent persistDate:(id)date
{
  buildCopy = build;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = BuddyMigrationState;
  v11 = [(BuddyMigrationState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_productBuild, build);
    v12->_intent = intent;
    objc_storeStrong(&v12->_persistDate, date);
  }

  return v12;
}

+ (id)loadFromPreferences:(id)preferences
{
  v3 = [preferences objectForKey:@"showMigrationOnLaunch" includeCache:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = [v3 objectForKeyedSubscript:@"productBuild"];
  v5 = [v3 objectForKeyedSubscript:@"intent"];
  v6 = [v3 objectForKeyedSubscript:@"persistDate"];
  v7 = -[BuddyMigrationState initWithProductBuild:intent:persistDate:]([BuddyMigrationState alloc], "initWithProductBuild:intent:persistDate:", v4, [v5 unsignedIntegerValue], v6);

  if (!v7)
  {
LABEL_3:
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_19108(v8);
    }

    v9 = _BYLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_18FF4(v3, v9);
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)hasStateFromPreferences:(id)preferences
{
  v3 = [preferences objectForKey:@"showMigrationOnLaunch"];
  v4 = v3 != 0;

  return v4;
}

- (void)persistUsingPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v8 = objc_alloc_init(NSMutableDictionary);
  productBuild = [(BuddyMigrationState *)self productBuild];

  if (productBuild)
  {
    productBuild2 = [(BuddyMigrationState *)self productBuild];
    [v8 setObject:productBuild2 forKeyedSubscript:@"productBuild"];
  }

  v7 = [NSNumber numberWithUnsignedInteger:[(BuddyMigrationState *)self intent]];
  [v8 setObject:v7 forKeyedSubscript:@"intent"];

  [preferencesCopy setObject:v8 forKey:@"showMigrationOnLaunch" persistImmediately:1];
}

- (id)description
{
  v3 = objc_opt_class();
  productBuild = [(BuddyMigrationState *)self productBuild];
  v5 = [NSString stringWithFormat:@"<%@ : %p> Build: %@ Intent: %ld", v3, self, productBuild, [(BuddyMigrationState *)self intent]];

  return v5;
}

@end