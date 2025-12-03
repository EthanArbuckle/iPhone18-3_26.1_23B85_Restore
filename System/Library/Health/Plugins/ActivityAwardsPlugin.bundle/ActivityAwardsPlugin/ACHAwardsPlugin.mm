@interface ACHAwardsPlugin
- (ACHAwardsPlugin)init;
- (NSString)schemaName;
- (id)databaseEntitiesForProtectionClass:(int64_t)class;
- (id)extensionForHealthDaemon:(id)daemon;
- (id)extensionForProfile:(id)profile;
- (id)orderedSyncEntities;
- (id)taskServerClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class;
- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator;
@end

@implementation ACHAwardsPlugin

- (ACHAwardsPlugin)init
{
  v8.receiver = self;
  v8.super_class = ACHAwardsPlugin;
  v2 = [(ACHAwardsPlugin *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDBE098]);
    schemaProvider = v2->_schemaProvider;
    v2->_schemaProvider = v3;

    v5 = objc_alloc_init(MEMORY[0x29EDBE0B0]);
    mobileAssetProvider = v2->_mobileAssetProvider;
    v2->_mobileAssetProvider = v5;
  }

  return v2;
}

- (id)extensionForHealthDaemon:(id)daemon
{
  v4 = MEMORY[0x29EDBE048];
  daemonCopy = daemon;
  v6 = [v4 alloc];
  mobileAssetProvider = [(ACHAwardsPlugin *)self mobileAssetProvider];
  v8 = [v6 initWithDaemon:daemonCopy mobileAssetProvider:mobileAssetProvider];

  return v8;
}

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  if ([profileCopy profileType] == 1)
  {
    v4 = [[ACHAwardsProfileExtension alloc] initWithProfile:profileCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)taskServerClasses
{
  v5[6] = *MEMORY[0x29EDCA608];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x29EDCA608];

  return v2;
}

- (NSString)schemaName
{
  schemaProvider = [(ACHAwardsPlugin *)self schemaProvider];
  schemaName = [schemaProvider schemaName];

  return schemaName;
}

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class
{
  schemaProvider = [(ACHAwardsPlugin *)self schemaProvider];
  v5 = [schemaProvider currentSchemaVersionForProtectionClass:class];

  return v5;
}

- (id)databaseEntitiesForProtectionClass:(int64_t)class
{
  schemaProvider = [(ACHAwardsPlugin *)self schemaProvider];
  v5 = [schemaProvider databaseEntitiesForProtectionClass:class];

  return v5;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator
{
  migratorCopy = migrator;
  schemaProvider = [(ACHAwardsPlugin *)self schemaProvider];
  [schemaProvider registerMigrationStepsForProtectionClass:class migrator:migratorCopy];
}

- (id)orderedSyncEntities
{
  v5[5] = *MEMORY[0x29EDCA608];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x29EDCA608];

  return v2;
}

@end