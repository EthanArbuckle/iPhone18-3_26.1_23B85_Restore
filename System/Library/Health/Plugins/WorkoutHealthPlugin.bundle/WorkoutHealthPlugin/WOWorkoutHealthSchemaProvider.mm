@interface WOWorkoutHealthSchemaProvider
+ (id)databaseEntitiesForProtectionClass:(int64_t)class;
+ (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class;
+ (void)_addExternalConfigurationProviderColumnsWithMigrator:(id)migrator;
+ (void)_addManagedConfigurationsColumnsWithMigrator:(id)migrator;
+ (void)_addManagedProtoConfigurationsColumnsWithMigrator:(id)migrator;
+ (void)_addOccurrenceColumnsWithMigrator:(id)migrator;
+ (void)_addProtoConfigurationsColumnsWithMigrator:(id)migrator;
+ (void)_addSyncIdentityColumnWithMigrator:(id)migrator;
+ (void)_addSyncObjectColumnsWithMigrator:(id)migrator;
+ (void)_deleteRaceWorkoutConfigurationsWithMigrator:(id)migrator;
+ (void)_emptyMigrationToSchemaVersion2WithMigrator:(id)migrator;
+ (void)_emptyMigrationToSchemaVersion3WithMigrator:(id)migrator;
+ (void)_emptyMigrationToSchemaVersion4WithMigrator:(id)migrator;
+ (void)_emptyMigrationToSchemaVersion5WithMigrator:(id)migrator;
+ (void)_emptyMigrationToSchemaVersion6WithMigrator:(id)migrator;
+ (void)_emptyMigrationToSchemaVersion7WithMigrator:(id)migrator;
+ (void)_emptyMigrationToSchemaVersion8WithMigrator:(id)migrator;
+ (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator;
@end

@implementation WOWorkoutHealthSchemaProvider

+ (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class
{
  if (class == 1)
  {
    return 8;
  }

  if (class == 2)
  {
    return 8;
  }

  return v4;
}

+ (id)databaseEntitiesForProtectionClass:(int64_t)class
{
  if (class == 1)
  {
    v5[0] = objc_opt_class();
    v5[1] = objc_opt_class();
    v5[2] = objc_opt_class();
    v4 = [NSArray arrayWithObjects:v5 count:3];
  }

  else if (class == 2)
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

+ (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator
{
  selfCopy = self;
  v6 = a2;
  classCopy = class;
  location = 0;
  objc_storeStrong(&location, migrator);
  if (classCopy == 1)
  {
    [selfCopy _addSyncObjectColumnsWithMigrator:location];
    [selfCopy _addSyncIdentityColumnWithMigrator:location];
    [selfCopy _addManagedConfigurationsColumnsWithMigrator:location];
    [selfCopy _addProtoConfigurationsColumnsWithMigrator:location];
    [selfCopy _addManagedProtoConfigurationsColumnsWithMigrator:location];
    [selfCopy _addExternalConfigurationProviderColumnsWithMigrator:location];
    [selfCopy _addOccurrenceColumnsWithMigrator:location];
    [selfCopy _deleteRaceWorkoutConfigurationsWithMigrator:location];
  }

  else if (classCopy == 2)
  {
    [selfCopy _emptyMigrationToSchemaVersion2WithMigrator:location];
    [selfCopy _emptyMigrationToSchemaVersion3WithMigrator:location];
    [selfCopy _emptyMigrationToSchemaVersion4WithMigrator:location];
    [selfCopy _emptyMigrationToSchemaVersion5WithMigrator:location];
    [selfCopy _emptyMigrationToSchemaVersion6WithMigrator:location];
    [selfCopy _emptyMigrationToSchemaVersion7WithMigrator:location];
    [selfCopy _emptyMigrationToSchemaVersion8WithMigrator:location];
  }

  objc_storeStrong(&location, 0);
}

+ (void)_addSyncObjectColumnsWithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:2 foreignKeyStatus:1 handler:&__block_literal_global_0];
  objc_storeStrong(location, 0);
}

int64_t __67__WOWorkoutHealthSchemaProvider__addSyncObjectColumnsWithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20 = a4;
  v19 = a5;
  v18[2] = a1;
  v18[1] = 0;
  v24[0] = @"CREATE TABLE WorkoutHealthPlugin_workout_configurations_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, uuid UUID NOT NULL UNIQUE, serialization_version INTEGER NOT NULL, serialized BLOB NOT NULL, sync_provenance INTEGER, object_state INTEGER NOT NULL, object_modification_date REAL NOT NULL, configuration_type INTEGER NOT NULL, goal_type INTEGER);";
  v13 = [NSString stringWithFormat:@"INSERT INTO WorkoutHealthPlugin_workout_configurations_new (ROWID, uuid, serialization_version, serialized, sync_provenance, object_state, object_modification_date, configuration_type, goal_type) SELECT ROWID, uuid, serialization_version, serialized, sync_provenance, %lu, %f, configuration_type, goal_type FROM WorkoutHealthPlugin_workout_configurations;", 0, 0];
  v24[1] = v13;
  v12 = [NSString stringWithFormat:@"UPDATE WorkoutHealthPlugin_workout_configurations_new SET object_state = %lu WHERE length(serialized) <= 1;", 1];
  v24[2] = v12;
  v24[3] = @"DROP TABLE WorkoutHealthPlugin_workout_configurations;";
  v24[4] = @"ALTER TABLE WorkoutHealthPlugin_workout_configurations_new RENAME TO WorkoutHealthPlugin_workout_configurations;";
  v18[0] = [NSArray arrayWithObjects:v24 count:5];

  v14 = [v21 unprotectedDatabase];
  v15 = [v14 executeSQLStatements:v18[0] error:a5];

  v17 = v15;
  _HKInitializeLogging();
  oslog = HKLogSync;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v17)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    __os_log_helper_16_2_4_8_64_8_0_8_64_8_64(v23, @"WorkoutHealthPlugin", 2, v5, *v19);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[%@] migration step _addSyncObjectColumnsWithMigrator, toVersion: %ld, success: %@, error: %@", v23, 0x2Au);
  }

  objc_storeStrong(&oslog, 0);
  v7 = (v17 & 1) == 0;
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (void)_emptyMigrationToSchemaVersion2WithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:2 foreignKeyStatus:1 handler:&__block_literal_global_322];
  objc_storeStrong(location, 0);
}

int64_t __77__WOWorkoutHealthSchemaProvider__emptyMigrationToSchemaVersion2WithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  oslog[3] = a4;
  oslog[2] = a5;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = HKLogSync;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_0(v13, @"WorkoutHealthPlugin", 2);
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%@] migration step _emptyMigrationToSchemaVersion2WithMigrator, toVersion: %ld", v13, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return 0;
}

+ (void)_addSyncIdentityColumnWithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:3 foreignKeyStatus:1 handler:&__block_literal_global_324];
  objc_storeStrong(location, 0);
}

int64_t __68__WOWorkoutHealthSchemaProvider__addSyncIdentityColumnWithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v35 = 0;
  objc_storeStrong(&v35, a3);
  v34 = a4;
  v33 = a5;
  v32[1] = a1;
  v32[0] = @"CREATE TABLE WorkoutHealthPlugin_workout_configurations_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, uuid UUID NOT NULL UNIQUE, serialization_version INTEGER NOT NULL, serialized BLOB NOT NULL, sync_provenance INTEGER, object_state INTEGER NOT NULL, object_modification_date REAL NOT NULL, configuration_type INTEGER NOT NULL, goal_type INTEGER, sync_identity INTEGER NOT NULL)";
  v31 = [v35 unprotectedDatabase];
  v30 = [v31 executeUncachedSQL:v32[0] error:a5];
  if (v30)
  {
    v28 = [NSString stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1;", HDSQLiteConvertUUIDStringToBlobFunction, HDSQLiteConvertUUIDStringToBlobFunction];
    v24[0] = 0;
    v24[1] = v24;
    v25 = 0x20000000;
    v26 = 32;
    v27 = 0;
    v18[3] = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = __68__WOWorkoutHealthSchemaProvider__addSyncIdentityColumnWithMigrator___block_invoke_2;
    v22 = &unk_204A0;
    v23 = v24;
    v30 = [v31 executeSQL:v28 error:v33 bindingHandler:0 enumerationHandler:?];
    if (v30)
    {
      v18[0] = [NSString stringWithFormat:@"INSERT INTO WorkoutHealthPlugin_workout_configurations_new (ROWID, uuid, serialization_version, serialized, sync_provenance, object_state, object_modification_date, configuration_type, goal_type, sync_identity) SELECT ROWID, uuid, serialization_version, serialized, sync_provenance, object_state, object_modification_date, configuration_type, goal_type, ? FROM WorkoutHealthPlugin_workout_configurations;"];
      v12[1] = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = __68__WOWorkoutHealthSchemaProvider__addSyncIdentityColumnWithMigrator___block_invoke_3;
      v16 = &unk_204C8;
      v17 = v24;
      v30 = [v31 executeSQL:v18[0] error:v33 bindingHandler:? enumerationHandler:?];
      if (v30)
      {
        v12[0] = @"DROP TABLE WorkoutHealthPlugin_workout_configurations;";
        v11 = @"ALTER TABLE WorkoutHealthPlugin_workout_configurations_new RENAME TO WorkoutHealthPlugin_workout_configurations;";
        v38[0] = v12[0];
        v38[1] = v11;
        v10 = [NSArray arrayWithObjects:v38 count:2];
        v37 = ([v31 executeSQLStatements:v10 error:v33] & 1) == 0;
        v29 = 1;
        objc_storeStrong(&v10, 0);
        objc_storeStrong(&v11, 0);
        objc_storeStrong(v12, 0);
      }

      else
      {
        v37 = 1;
        v29 = 1;
      }

      objc_storeStrong(v18, 0);
    }

    else
    {
      v37 = 1;
      v29 = 1;
    }

    _Block_object_dispose(v24, 8);
    objc_storeStrong(&v28, 0);
  }

  else
  {
    v37 = 1;
    v29 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(v32, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  return v37;
}

+ (void)_emptyMigrationToSchemaVersion3WithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:3 foreignKeyStatus:1 handler:&__block_literal_global_337];
  objc_storeStrong(location, 0);
}

int64_t __77__WOWorkoutHealthSchemaProvider__emptyMigrationToSchemaVersion3WithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  oslog[3] = a4;
  oslog[2] = a5;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = HKLogSync;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_0(v13, @"WorkoutHealthPlugin", 3);
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%@] migration step _emptyMigrationToSchemaVersion3WithMigrator, toVersion: %ld", v13, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return 0;
}

+ (void)_addManagedConfigurationsColumnsWithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:4 foreignKeyStatus:1 handler:&__block_literal_global_339];
  objc_storeStrong(location, 0);
}

int64_t __78__WOWorkoutHealthSchemaProvider__addManagedConfigurationsColumnsWithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a4;
  v13 = a5;
  v12[1] = a1;
  v12[0] = @"CREATE TABLE WorkoutHealthPlugin_workout_managed_configurations (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, uuid UUID NOT NULL UNIQUE, serialization_version INTEGER NOT NULL, serialized BLOB NOT NULL, sync_provenance INTEGER, object_state INTEGER NOT NULL, object_modification_date REAL NOT NULL, configuration_type INTEGER NOT NULL, goal_type INTEGER, sync_identity INTEGER NOT NULL, managed_source_identifier TEXT NOT NULL, managed_source_scheduled_date REAL, managed_source_completed_date REAL)";
  v11 = [v15 unprotectedDatabase];
  v10 = ([v11 executeUncachedSQL:v12[0] error:v13] & 1) == 0;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v10;
}

+ (void)_emptyMigrationToSchemaVersion4WithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:4 foreignKeyStatus:1 handler:&__block_literal_global_344];
  objc_storeStrong(location, 0);
}

int64_t __77__WOWorkoutHealthSchemaProvider__emptyMigrationToSchemaVersion4WithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  oslog[3] = a4;
  oslog[2] = a5;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = HKLogSync;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_0(v13, @"WorkoutHealthPlugin", 4);
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%@] migration step _emptyMigrationToSchemaVersion4WithMigrator, toVersion: %ld", v13, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return 0;
}

+ (void)_addProtoConfigurationsColumnsWithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:5 foreignKeyStatus:1 handler:&__block_literal_global_346];
  objc_storeStrong(location, 0);
}

int64_t __76__WOWorkoutHealthSchemaProvider__addProtoConfigurationsColumnsWithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = a4;
  v17 = a5;
  v16[1] = a1;
  v16[0] = &off_21888;
  v12 = [v19 unprotectedDatabase];
  v13 = [v12 executeSQLStatements:v16[0] error:a5];

  v15 = v13;
  _HKInitializeLogging();
  oslog = HKLogSync;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v15)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    __os_log_helper_16_2_4_8_64_8_0_8_64_8_64(v21, @"WorkoutHealthPlugin", 5, v5, *v17);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[%@] migration step _addProtoConfigurationsColumnsWithMigrator, toVersion: %ld, success: %@, error: %@", v21, 0x2Au);
  }

  objc_storeStrong(&oslog, 0);
  v7 = (v15 & 1) == 0;
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (void)_addManagedProtoConfigurationsColumnsWithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:5 foreignKeyStatus:1 handler:&__block_literal_global_354];
  objc_storeStrong(location, 0);
}

int64_t __83__WOWorkoutHealthSchemaProvider__addManagedProtoConfigurationsColumnsWithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = a4;
  v17 = a5;
  v16[1] = a1;
  v16[0] = &off_218A0;
  v12 = [v19 unprotectedDatabase];
  v13 = [v12 executeSQLStatements:v16[0] error:a5];

  v15 = v13;
  _HKInitializeLogging();
  oslog = HKLogSync;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v15)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    __os_log_helper_16_2_4_8_64_8_0_8_64_8_64(v21, @"WorkoutHealthPlugin", 5, v5, *v17);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[%@] migration step _addManagedProtoConfigurationsColumnsWithMigrator, toVersion: %ld, success: %@, error: %@", v21, 0x2Au);
  }

  objc_storeStrong(&oslog, 0);
  v7 = (v15 & 1) == 0;
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (void)_emptyMigrationToSchemaVersion5WithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:5 foreignKeyStatus:1 handler:&__block_literal_global_371];
  objc_storeStrong(location, 0);
}

int64_t __77__WOWorkoutHealthSchemaProvider__emptyMigrationToSchemaVersion5WithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  oslog[3] = a4;
  oslog[2] = a5;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = HKLogSync;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_0(v13, @"WorkoutHealthPlugin", 5);
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%@] migration step _emptyMigrationToSchemaVersion5WithMigrator, toVersion: %ld", v13, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return 0;
}

+ (void)_addExternalConfigurationProviderColumnsWithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:6 foreignKeyStatus:1 handler:&__block_literal_global_373];
  objc_storeStrong(location, 0);
}

int64_t __86__WOWorkoutHealthSchemaProvider__addExternalConfigurationProviderColumnsWithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a4;
  v13 = a5;
  v12[1] = a1;
  v12[0] = @"CREATE TABLE WorkoutHealthPlugin_workout_external_configuration_providers (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, uuid UUID NOT NULL UNIQUE, serialization_version INTEGER NOT NULL, serialized BLOB NOT NULL, sync_provenance INTEGER, object_state INTEGER NOT NULL, object_modification_date REAL NOT NULL, sync_identity INTEGER NOT NULL, proto BLOB, name TEXT NOT NULL, bundleId TEXT NOT NULL, imageData BLOB NOT NULL, syncPermission INTEGER NOT NULL, syncStartDate REAL NOT NULL)";
  v11 = [v15 unprotectedDatabase];
  v10 = ([v11 executeUncachedSQL:v12[0] error:v13] & 1) == 0;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v10;
}

+ (void)_emptyMigrationToSchemaVersion6WithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:6 foreignKeyStatus:1 handler:&__block_literal_global_378];
  objc_storeStrong(location, 0);
}

int64_t __77__WOWorkoutHealthSchemaProvider__emptyMigrationToSchemaVersion6WithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  oslog[3] = a4;
  oslog[2] = a5;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = HKLogSync;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_0(v13, @"WorkoutHealthPlugin", 6);
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%@] migration step _emptyMigrationToSchemaVersion6WithMigrator, toVersion: %ld", v13, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return 0;
}

+ (void)_addOccurrenceColumnsWithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:7 foreignKeyStatus:1 handler:&__block_literal_global_380];
  objc_storeStrong(location, 0);
}

int64_t __67__WOWorkoutHealthSchemaProvider__addOccurrenceColumnsWithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = a4;
  v17 = a5;
  v16[1] = a1;
  v16[0] = &off_218B8;
  v12 = [v19 unprotectedDatabase];
  v13 = [v12 executeSQLStatements:v16[0] error:a5];

  v15 = v13;
  _HKInitializeLogging();
  oslog = HKLogSync;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v15)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    __os_log_helper_16_2_4_8_64_8_0_8_64_8_64(v21, @"WorkoutHealthPlugin", 7, v5, *v17);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[%@] migration step _addOccurrenceColumnsWithMigrator, toVersion: %ld, success: %@, error: %@", v21, 0x2Au);
  }

  objc_storeStrong(&oslog, 0);
  v7 = (v15 & 1) == 0;
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (void)_emptyMigrationToSchemaVersion7WithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:7 foreignKeyStatus:1 handler:&__block_literal_global_400];
  objc_storeStrong(location, 0);
}

int64_t __77__WOWorkoutHealthSchemaProvider__emptyMigrationToSchemaVersion7WithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  oslog[3] = a4;
  oslog[2] = a5;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = HKLogSync;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_0(v13, @"WorkoutHealthPlugin", 7);
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%@] migration step _emptyMigrationToSchemaVersion7WithMigrator, toVersion: %ld", v13, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return 0;
}

+ (void)_deleteRaceWorkoutConfigurationsWithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:8 foreignKeyStatus:1 handler:&__block_literal_global_402];
  objc_storeStrong(location, 0);
}

int64_t __78__WOWorkoutHealthSchemaProvider__deleteRaceWorkoutConfigurationsWithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = a4;
  v17 = a5;
  v16[1] = a1;
  v16[0] = &off_218D0;
  v12 = [v19 unprotectedDatabase];
  v13 = [v12 executeSQLStatements:v16[0] error:a5];

  v15 = v13;
  _HKInitializeLogging();
  oslog = HKLogSync;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v15)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    __os_log_helper_16_2_4_8_64_8_0_8_64_8_64(v21, @"WorkoutHealthPlugin", 8, v5, *v17);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[%@] migration step _deleteRaceWorkoutConfigurationsWithMigrator, toVersion: %ld, success: %@, error: %@", v21, 0x2Au);
  }

  objc_storeStrong(&oslog, 0);
  v7 = (v15 & 1) == 0;
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (void)_emptyMigrationToSchemaVersion8WithMigrator:(id)migrator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, migrator);
  [location[0] addMigrationForSchema:@"WorkoutHealthPlugin" toVersion:8 foreignKeyStatus:1 handler:&__block_literal_global_410];
  objc_storeStrong(location, 0);
}

int64_t __77__WOWorkoutHealthSchemaProvider__emptyMigrationToSchemaVersion8WithMigrator___block_invoke(id a1, HDDatabaseMigrator *a2, HDDatabaseMigrationTransaction *a3, int64_t a4, id *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  oslog[3] = a4;
  oslog[2] = a5;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = HKLogSync;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_0(v13, @"WorkoutHealthPlugin", 8);
    _os_log_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEFAULT, "[%@] migration step _emptyMigrationToSchemaVersion8WithMigrator, toVersion: %ld", v13, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return 0;
}

@end