@interface BuddySIMMigrationSourceInformationCache
+ (void)resetFromPrefernces:(id)a3;
- (BuddySIMMigrationSourceInformationCache)initWithSourceOSVersion:(id)a3 sourceHasTransferrablePlans:(BOOL)a4;
- (id)initFromPreferences:(id)a3;
- (void)writeToPreferences:(id)a3;
@end

@implementation BuddySIMMigrationSourceInformationCache

- (id)initFromPreferences:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12.receiver = v3;
  v12.super_class = BuddySIMMigrationSourceInformationCache;
  v4 = [(BuddySIMMigrationSourceInformationCache *)&v12 init];
  v14 = v4;
  objc_storeStrong(&v14, v4);
  if (!v4)
  {
    goto LABEL_10;
  }

  v11 = [location[0] objectForKey:@"SimMigrationSourceInformation"];
  if (!v11 || ((v10 = [v11 objectForKeyedSubscript:@"OSVersion"], v9 = objc_msgSend(v11, "objectForKeyedSubscript:", @"HasTransferrablePlans"), !v10) || !v9 ? (v8 = 0) : (v5 = v14, v6 = objc_msgSend(v9, "BOOLValue"), v14 = 0, v14 = objc_msgSend(v5, "initWithSourceOSVersion:sourceHasTransferrablePlans:", v10, v6 & 1), v15 = v14, v8 = 1), objc_storeStrong(&v9, 0), objc_storeStrong(&v10, 0), !v8))
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
  objc_storeStrong(&v14, 0);
  return v15;
}

- (BuddySIMMigrationSourceInformationCache)initWithSourceOSVersion:(id)a3 sourceHasTransferrablePlans:(BOOL)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v5 = v12;
  v12 = 0;
  v9.receiver = v5;
  v9.super_class = BuddySIMMigrationSourceInformationCache;
  v6 = [(BuddySIMMigrationSourceInformationCache *)&v9 init];
  v12 = v6;
  objc_storeStrong(&v12, v6);
  if (v6)
  {
    objc_storeStrong(v12 + 2, location[0]);
    *(v12 + 8) = v10;
  }

  v7 = v12;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v7;
}

- (void)writeToPreferences:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8[0] = @"OSVersion";
  v3 = [(BuddySIMMigrationSourceInformationCache *)v7 sourceOSVersion];
  v9[0] = v3;
  v8[1] = @"HasTransferrablePlans";
  v4 = [NSNumber numberWithBool:[(BuddySIMMigrationSourceInformationCache *)v7 sourceHasTransferrablePlans]];
  v9[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  [location[0] setObject:v5 forKey:@"SimMigrationSourceInformation"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

+ (void)resetFromPrefernces:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] removeObjectForKey:@"SimMigrationSourceInformation" onlyFromMemory:0];
  objc_storeStrong(location, 0);
}

@end