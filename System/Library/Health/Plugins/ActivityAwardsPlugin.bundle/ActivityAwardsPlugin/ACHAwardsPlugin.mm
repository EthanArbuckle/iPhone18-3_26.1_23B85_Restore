@interface ACHAwardsPlugin
- (ACHAwardsPlugin)init;
- (NSString)schemaName;
- (id)databaseEntitiesForProtectionClass:(int64_t)a3;
- (id)extensionForHealthDaemon:(id)a3;
- (id)extensionForProfile:(id)a3;
- (id)orderedSyncEntities;
- (id)taskServerClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3;
- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4;
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

- (id)extensionForHealthDaemon:(id)a3
{
  v4 = MEMORY[0x29EDBE048];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(ACHAwardsPlugin *)self mobileAssetProvider];
  v8 = [v6 initWithDaemon:v5 mobileAssetProvider:v7];

  return v8;
}

- (id)extensionForProfile:(id)a3
{
  v3 = a3;
  if ([v3 profileType] == 1)
  {
    v4 = [[ACHAwardsProfileExtension alloc] initWithProfile:v3];
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
  v2 = [(ACHAwardsPlugin *)self schemaProvider];
  v3 = [v2 schemaName];

  return v3;
}

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3
{
  v4 = [(ACHAwardsPlugin *)self schemaProvider];
  v5 = [v4 currentSchemaVersionForProtectionClass:a3];

  return v5;
}

- (id)databaseEntitiesForProtectionClass:(int64_t)a3
{
  v4 = [(ACHAwardsPlugin *)self schemaProvider];
  v5 = [v4 databaseEntitiesForProtectionClass:a3];

  return v5;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4
{
  v6 = a4;
  v7 = [(ACHAwardsPlugin *)self schemaProvider];
  [v7 registerMigrationStepsForProtectionClass:a3 migrator:v6];
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