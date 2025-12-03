@interface HDHealthRecordsPlugin
- (id)_databaseSchemaForProtectionClass:(int64_t)class;
- (id)databaseEntitiesForProtectionClass:(int64_t)class;
- (id)extensionForHealthDaemon:(id)daemon;
- (id)extensionForProfile:(id)profile;
- (id)ontologyFeatureEvaluatorsForDaemon:(id)daemon;
- (id)orderedSyncEntities;
- (id)taskServerClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class;
- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator;
@end

@implementation HDHealthRecordsPlugin

- (id)extensionForHealthDaemon:(id)daemon
{
  daemonCopy = daemon;
  v4 = [[HDHealthRecordsDaemonExtension alloc] initWithHealthDaemon:daemonCopy];

  return v4;
}

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  v4 = [[HDHealthRecordsProfileExtension alloc] initWithProfile:profileCopy];

  return v4;
}

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class
{
  v3 = [(HDHealthRecordsPlugin *)self _databaseSchemaForProtectionClass:class];
  currentSchemaVersion = [v3 currentSchemaVersion];

  return currentSchemaVersion;
}

- (id)databaseEntitiesForProtectionClass:(int64_t)class
{
  v3 = [(HDHealthRecordsPlugin *)self _databaseSchemaForProtectionClass:class];
  databaseEntities = [v3 databaseEntities];

  return databaseEntities;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator
{
  migratorCopy = migrator;
  v8 = [(HDHealthRecordsPlugin *)self _databaseSchemaForProtectionClass:class];
  schemaName = [(HDHealthRecordsPlugin *)self schemaName];
  [v8 registerMigrationStepsWithMigrator:migratorCopy schemaName:schemaName];
}

- (id)_databaseSchemaForProtectionClass:(int64_t)class
{
  if (class == 1)
  {
    v4 = &off_1047C8;
  }

  else
  {
    if (class != 2)
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

- (id)ontologyFeatureEvaluatorsForDaemon:(id)daemon
{
  healthRecordsDaemonExtension = [daemon healthRecordsDaemonExtension];
  ontologyFeatureEvaluators = [healthRecordsDaemonExtension ontologyFeatureEvaluators];

  return ontologyFeatureEvaluators;
}

@end