@interface HDHealthRecordsPlugin
- (id)_databaseSchemaForProtectionClass:(int64_t)a3;
- (id)databaseEntitiesForProtectionClass:(int64_t)a3;
- (id)extensionForHealthDaemon:(id)a3;
- (id)extensionForProfile:(id)a3;
- (id)ontologyFeatureEvaluatorsForDaemon:(id)a3;
- (id)orderedSyncEntities;
- (id)taskServerClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3;
- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4;
@end

@implementation HDHealthRecordsPlugin

- (id)extensionForHealthDaemon:(id)a3
{
  v3 = a3;
  v4 = [[HDHealthRecordsDaemonExtension alloc] initWithHealthDaemon:v3];

  return v4;
}

- (id)extensionForProfile:(id)a3
{
  v3 = a3;
  v4 = [[HDHealthRecordsProfileExtension alloc] initWithProfile:v3];

  return v4;
}

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3
{
  v3 = [(HDHealthRecordsPlugin *)self _databaseSchemaForProtectionClass:a3];
  v4 = [v3 currentSchemaVersion];

  return v4;
}

- (id)databaseEntitiesForProtectionClass:(int64_t)a3
{
  v3 = [(HDHealthRecordsPlugin *)self _databaseSchemaForProtectionClass:a3];
  v4 = [v3 databaseEntities];

  return v4;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4
{
  v6 = a4;
  v8 = [(HDHealthRecordsPlugin *)self _databaseSchemaForProtectionClass:a3];
  v7 = [(HDHealthRecordsPlugin *)self schemaName];
  [v8 registerMigrationStepsWithMigrator:v6 schemaName:v7];
}

- (id)_databaseSchemaForProtectionClass:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = &off_1047C8;
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_6;
    }

    v4 = off_1047C0;
  }

  self = objc_alloc_init(*v4);
LABEL_6:

  return self;
}

- (id)orderedSyncEntities
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:11];

  return v2;
}

- (id)taskServerClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:8];

  return v2;
}

- (id)ontologyFeatureEvaluatorsForDaemon:(id)a3
{
  v3 = [a3 healthRecordsDaemonExtension];
  v4 = [v3 ontologyFeatureEvaluators];

  return v4;
}

@end