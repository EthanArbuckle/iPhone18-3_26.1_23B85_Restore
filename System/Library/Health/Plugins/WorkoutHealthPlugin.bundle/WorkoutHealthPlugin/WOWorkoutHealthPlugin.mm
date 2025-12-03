@interface WOWorkoutHealthPlugin
- (id)extensionForHealthDaemon:(id)daemon;
- (id)extensionForProfile:(id)profile;
- (id)orderedSyncEntities;
- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator;
@end

@implementation WOWorkoutHealthPlugin

- (id)extensionForHealthDaemon:(id)daemon
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, daemon);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)extensionForProfile:(id)profile
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, profile);
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

- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator
{
  selfCopy = self;
  v6 = a2;
  classCopy = class;
  location = 0;
  objc_storeStrong(&location, migrator);
  [WOWorkoutHealthSchemaProvider registerMigrationStepsForProtectionClass:classCopy migrator:location];
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