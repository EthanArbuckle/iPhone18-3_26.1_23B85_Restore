@interface WOWorkoutHealthPlugin
- (id)extensionForHealthDaemon:(id)a3;
- (id)extensionForProfile:(id)a3;
- (id)orderedSyncEntities;
- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4;
@end

@implementation WOWorkoutHealthPlugin

- (id)extensionForHealthDaemon:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)extensionForProfile:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] profileType] == &dword_0 + 1)
  {
    v3 = [WOWorkoutHealthProfileExtension alloc];
    v7 = [(WOWorkoutHealthProfileExtension *)v3 initWithProfile:location[0]];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v7;

  return v4;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [WOWorkoutHealthSchemaProvider registerMigrationStepsForProtectionClass:v5 migrator:location];
  objc_storeStrong(&location, 0);
}

- (id)orderedSyncEntities
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:3];
}

@end