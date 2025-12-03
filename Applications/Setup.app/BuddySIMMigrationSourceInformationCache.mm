@interface BuddySIMMigrationSourceInformationCache
+ (void)resetFromPrefernces:(id)prefernces;
- (BuddySIMMigrationSourceInformationCache)initWithSourceOSVersion:(id)version sourceHasTransferrablePlans:(BOOL)plans;
- (id)initFromPreferences:(id)preferences;
- (void)writeToPreferences:(id)preferences;
@end

@implementation BuddySIMMigrationSourceInformationCache

- (id)initFromPreferences:(id)preferences
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v3 = selfCopy;
  selfCopy = 0;
  v12.receiver = v3;
  v12.super_class = BuddySIMMigrationSourceInformationCache;
  v4 = [(BuddySIMMigrationSourceInformationCache *)&v12 init];
  selfCopy = v4;
  objc_storeStrong(&selfCopy, v4);
  if (!v4)
  {
    goto LABEL_10;
  }

  v11 = [location[0] objectForKey:@"SimMigrationSourceInformation"];
  if (!v11 || ((v10 = [v11 objectForKeyedSubscript:@"OSVersion"], v9 = objc_msgSend(v11, "objectForKeyedSubscript:", @"HasTransferrablePlans"), !v10) || !v9 ? (v8 = 0) : (v5 = selfCopy, v6 = objc_msgSend(v9, "BOOLValue"), selfCopy = 0, selfCopy = objc_msgSend(v5, "initWithSourceOSVersion:sourceHasTransferrablePlans:", v10, v6 & 1), v15 = selfCopy, v8 = 1), objc_storeStrong(&v9, 0), objc_storeStrong(&v10, 0), !v8))
  {
    v8 = 0;
  }

  objc_storeStrong(&v11, 0);
  if (!v8)
  {
LABEL_10:
    v15 = 0;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

- (BuddySIMMigrationSourceInformationCache)initWithSourceOSVersion:(id)version sourceHasTransferrablePlans:(BOOL)plans
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  plansCopy = plans;
  v5 = selfCopy;
  selfCopy = 0;
  v9.receiver = v5;
  v9.super_class = BuddySIMMigrationSourceInformationCache;
  v6 = [(BuddySIMMigrationSourceInformationCache *)&v9 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(selfCopy + 2, location[0]);
    *(selfCopy + 8) = plansCopy;
  }

  v7 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)writeToPreferences:(id)preferences
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v8[0] = @"OSVersion";
  sourceOSVersion = [(BuddySIMMigrationSourceInformationCache *)selfCopy sourceOSVersion];
  v9[0] = sourceOSVersion;
  v8[1] = @"HasTransferrablePlans";
  v4 = [NSNumber numberWithBool:[(BuddySIMMigrationSourceInformationCache *)selfCopy sourceHasTransferrablePlans]];
  v9[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  [location[0] setObject:v5 forKey:@"SimMigrationSourceInformation"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

+ (void)resetFromPrefernces:(id)prefernces
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prefernces);
  [location[0] removeObjectForKey:@"SimMigrationSourceInformation" onlyFromMemory:0];
  objc_storeStrong(location, 0);
}

@end