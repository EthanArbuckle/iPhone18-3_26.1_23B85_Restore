@interface ACHDatabaseSchemaProvider
- (id)databaseEntitiesForProtectionClass:(int64_t)a3;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3;
- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4;
@end

@implementation ACHDatabaseSchemaProvider

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3
{
  v3 = 23;
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (id)databaseEntitiesForProtectionClass:(int64_t)a3
{
  v6[2] = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v6[0] = objc_opt_class();
    v6[1] = objc_opt_class();
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 2)
  {
    v8 = v6;
    [(ACHDatabaseSchemaProvider *)self _addAddAvailableCountryCodesColumnMigrationToMigrator:v6];
    [(ACHDatabaseSchemaProvider *)self _addVersion5MigratorToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _addValidateEarnedInstanceRowStepToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _addDropSyncAnchorSaveOffTableIfNecessaryToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _addAddSuffixesColumnMigrationToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _addGracePredicateColumnsMigrationToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _addGraceExpressionColumnsMigrationToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _addDailyTargetExpressionAndUnitColumnsMigrationToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _addMisnamedTemplateRemovalToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _addEarnedInstancesExternalIdentifierMigrationToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _addNullTemplatesRemovalToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _updateGoalFor31DaysSeptemberMonthlyChallenge:v8];
    [(ACHDatabaseSchemaProvider *)self _addTemplateRowIdBumpToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _removeErroneousFitnessPlusTemplates:v8];
    [(ACHDatabaseSchemaProvider *)self _removeErroneousWorkoutTemplates:v8];
    [(ACHDatabaseSchemaProvider *)self _addSyncIdentityColumnToEarnedInstanceEntityToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _addSyncIdentityColumnToTemplateEntityToMigrator:v8];
    [(ACHDatabaseSchemaProvider *)self _addPrereqisiteTemplateNameFieldToTemplates:v8];
    [(ACHDatabaseSchemaProvider *)self _removeMoveGoalMultiplierEarnedInstances:v8];
    v6 = [(ACHDatabaseSchemaProvider *)self _removePerfectMonthEarnedInstances:v8];
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v8 = v6;
    [(ACHDatabaseSchemaProvider *)self _addResetSyncAnchorsMigrationStepToMigrator:v6];
    v6 = [(ACHDatabaseSchemaProvider *)self _addSyncAnchorSaveOffMigrationStepToMigrator:v8];
  }

  v7 = v8;
LABEL_6:

  MEMORY[0x2821F96F8](v6, v7);
}

uint64_t __73__ACHDatabaseSchemaProvider__addResetSyncAnchorsMigrationStepToMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = [a3 unprotectedDatabase];
  v8 = ACHLogDatabase();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16[0] = a4;
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Running Activity Achievements reset sync anchors migration from %ld", &v15, 0xCu);
  }

  v17[0] = @"DELETE FROM sync_anchors WHERE schema = 'ACHAchievementsPlugin'";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v10 = [v7 executeSQLStatements:v9 error:a5];

  v11 = ACHLogDatabase();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a5;
    v15 = 67109378;
    LODWORD(v16[0]) = v10;
    WORD2(v16[0]) = 2112;
    *(v16 + 6) = v12;
    _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "Activity Achievements reset sync anchors migration success: %{BOOL}d, error: %@", &v15, 0x12u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 ^ 1u;
}

uint64_t __83__ACHDatabaseSchemaProvider__addAddAvailableCountryCodesColumnMigrationToMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = ACHLogDatabase();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17[0] = a4;
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Running Activity Achievements country codes migration from %ld", &v16, 0xCu);
  }

  v9 = [v7 protectedDatabase];

  v18[0] = @"DROP TABLE IF EXISTS ACHAchievementsPlugin_templates";
  v18[1] = @"DROP TABLE IF EXISTS ACHAchievementsPlugin_earned_instances";
  v18[2] = @"CREATE TABLE IF NOT EXISTS ACHAchievementsPlugin_templates         (ROWID INTEGER PRIMARY KEY AUTOINCREMENT,         unique_name TEXT UNIQUE NOT NULL,         version INTEGER,         minimum_engine_version INTEGER,         created_date REAL,         creator_device INTEGER,         source_name TEXT,         predicate TEXT,         value_expression TEXT,         progress_expression TEXT,         goal_expression TEXT,         triggers INTEGER,         earn_limit INTEGER,         visibility_predicate TEXT,         visibility_start_date TEXT,         visibility_end_date TEXT,         availability_predicate TEXT,         availability_start_date TEXT,         availability_end_date TEXT,         available_country_codes TEXT,         alertability_predicate TEXT,         alert_dates TEXT,         duplicateremoval_strategy INTEGER,         duplicateremoval_calendar_unit INTEGER,         earn_date INTEGER,         display_order INTEGER,         displays_earned_instance_count INTEGER,         canonical_unit TEXT,         sync_provenance INTEGER)";
  v18[3] = @"CREATE TABLE IF NOT EXISTS ACHAchievementsPlugin_earned_instances         (ROWID INTEGER PRIMARY KEY AUTOINCREMENT,         template_unique_name TEXT,         created_date REAL,         earned_date TEXT,         value_in_canonical_unit REAL,         value_canonical_unit TEXT,         creator_device INTEGER,         sync_provenance INTEGER)";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  v11 = [v9 executeSQLStatements:v10 error:a5];

  v12 = ACHLogDatabase();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a5;
    v16 = 67109378;
    LODWORD(v17[0]) = v11;
    WORD2(v17[0]) = 2112;
    *(v17 + 6) = v13;
    _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Activity Achievements country codes migration success: %{BOOL}d, error: %@", &v16, 0x12u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11 ^ 1u;
}

uint64_t __73__ACHDatabaseSchemaProvider__addValidateEarnedInstanceRowStepToMigrator___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = [v9 unprotectedDatabase];
  v11 = ACHLogDatabase();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a4;
    _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "Running Activity Achievements backup sync anchors migration from %ld (unprotected query)", &buf, 0xCu);
  }

  if ([v10 executeUncachedSQL:@"create table if not exists ACHAchievementsPlugin_sync_anchors_backup as select next from sync_anchors WHERE schema = 'ACHAchievementsPlugin' and type = 2" error:a5])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x2020000000;
    v30 = -1;
    v12 = ACHLogDatabase();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 134217984;
      v27[0] = a4;
      _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Running Activity Achievements validate earned instance max rowID migration from %ld (unprotected query)", v26, 0xCu);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __73__ACHDatabaseSchemaProvider__addValidateEarnedInstanceRowStepToMigrator___block_invoke_327;
    v25[3] = &unk_278491208;
    v25[4] = &buf;
    v13 = [v10 executeUncachedSQL:@"select max(next) from ACHAchievementsPlugin_sync_anchors_backup" error:a5 bindingHandler:0 enumerationHandler:v25];
    v14 = ACHLogDatabase();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *a5;
      *v26 = 67109378;
      LODWORD(v27[0]) = v13;
      WORD2(v27[0]) = 2112;
      *(v27 + 6) = v15;
      _os_log_impl(&dword_221DDC000, v14, OS_LOG_TYPE_DEFAULT, "Activity Achievements validate earned instance max rowID migration success (unprotected query): %{BOOL}d, error: %@", v26, 0x12u);
    }

    if (v13)
    {
      if ((*(*(&buf + 1) + 24) & 0x8000000000000000) != 0)
      {
        v16 = ACHLogDatabase();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_221DDC000, v16, OS_LOG_TYPE_DEFAULT, "Activity Achievements validate earned instance max rowID migration early success (sync table is empty)", v26, 2u);
        }

        v21 = 0;
      }

      else
      {
        v16 = [v9 protectedDatabase];
        v17 = ACHLogDatabase();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 134217984;
          v27[0] = a4;
          _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "Running Activity Achievements validate earned instance max rowID migration from %ld", v26, 0xCu);
        }

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __73__ACHDatabaseSchemaProvider__addValidateEarnedInstanceRowStepToMigrator___block_invoke_332;
        v24[3] = &unk_278491230;
        v24[4] = &buf;
        v18 = [v16 executeUncachedSQL:@"UPDATE ACHAchievementsPlugin_earned_instances SET rowid = ifnull(max(rowid error:?) bindingHandler:rowid) WHERE rowid=(SELECT max(rowid) FROM ACHAchievementsPlugin_earned_instances)" enumerationHandler:a5, v24, 0];
        v19 = ACHLogDatabase();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *a5;
          *v26 = 67109378;
          LODWORD(v27[0]) = v18;
          WORD2(v27[0]) = 2112;
          *(v27 + 6) = v20;
          _os_log_impl(&dword_221DDC000, v19, OS_LOG_TYPE_DEFAULT, "Activity Achievements validate earned instance max rowID migration success: %{BOOL}d, error: %@", v26, 0x12u);
        }

        v21 = v18 ^ 1u;
      }
    }

    else
    {
      v21 = 1;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v21 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void __73__ACHDatabaseSchemaProvider__addValidateEarnedInstanceRowStepToMigrator___block_invoke_332(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 32) + 8) + 24)];
  HDSQLiteBindFoundationValueToStatement();
}

uint64_t __81__ACHDatabaseSchemaProvider__addDropSyncAnchorSaveOffTableIfNecessaryToMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = [a3 unprotectedDatabase];
  v8 = ACHLogDatabase();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16[0] = a4;
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Running Activity Achievements drop sync anchor backup migration from %ld", &v15, 0xCu);
  }

  v17[0] = @"drop table if exists ACHAchievementsPlugin_sync_anchors_backup";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v10 = [v7 executeSQLStatements:v9 error:a5];

  v11 = ACHLogDatabase();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a5;
    v15 = 67109378;
    LODWORD(v16[0]) = v10;
    WORD2(v16[0]) = 2112;
    *(v16 + 6) = v12;
    _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "Activity Achievements drop sync anchor backup migration success: %{BOOL}d, error: %@", &v15, 0x12u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 ^ 1u;
}

uint64_t __70__ACHDatabaseSchemaProvider__addAddSuffixesColumnMigrationToMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = ACHLogDatabase();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17[0] = a4;
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Running Activity Achievements available suffixes migration from %ld", &v16, 0xCu);
  }

  v9 = [v7 protectedDatabase];

  v18[0] = @"ALTER TABLE ACHAchievementsPlugin_templates ADD available_suffixes TEXT";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v11 = [v9 executeSQLStatements:v10 error:a5];

  v12 = ACHLogDatabase();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a5;
    v16 = 67109378;
    LODWORD(v17[0]) = v11;
    WORD2(v17[0]) = 2112;
    *(v17 + 6) = v13;
    _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Activity Achievements available suffixes migration success: %{BOOL}d, error: %@", &v16, 0x12u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11 ^ 1u;
}

uint64_t __74__ACHDatabaseSchemaProvider__addGracePredicateColumnsMigrationToMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ACHLogDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Running Activity Achievements migration to add grace predicate columns", v15, 2u);
  }

  v8 = [v6 protectedDatabase];

  v18[0] = @"ALTER TABLE ACHAchievementsPlugin_templates ADD grace_predicate TEXT";
  v18[1] = @"ALTER TABLE ACHAchievementsPlugin_templates ADD grace_visibility_predicate TEXT";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v10 = [v8 executeSQLStatements:v9 error:a5];

  v11 = ACHLogDatabase();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a5;
    v15[0] = 67109378;
    v15[1] = v10;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "Activity Achievements grace predicate columns migration success: %{BOOL}d, error: %@", v15, 0x12u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 ^ 1u;
}

uint64_t __75__ACHDatabaseSchemaProvider__addGraceExpressionColumnsMigrationToMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ACHLogDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Running Activity Achievements migration to add grace expression columns", v15, 2u);
  }

  v8 = [v6 protectedDatabase];

  v18[0] = @"ALTER TABLE ACHAchievementsPlugin_templates ADD grace_value_expression TEXT";
  v18[1] = @"ALTER TABLE ACHAchievementsPlugin_templates ADD grace_progress_expression TEXT";
  v18[2] = @"ALTER TABLE ACHAchievementsPlugin_templates ADD grace_goal_expression TEXT";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v10 = [v8 executeSQLStatements:v9 error:a5];

  v11 = ACHLogDatabase();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a5;
    v15[0] = 67109378;
    v15[1] = v10;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "Activity Achievements grace expression columns migration success: %{BOOL}d, error: %@", v15, 0x12u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 ^ 1u;
}

uint64_t __88__ACHDatabaseSchemaProvider__addDailyTargetExpressionAndUnitColumnsMigrationToMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ACHLogDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Running Activity Achievements migration to add daily target and daily target unit columns", v15, 2u);
  }

  v8 = [v6 protectedDatabase];

  v18[0] = @"ALTER TABLE ACHAchievementsPlugin_templates ADD daily_target REAL";
  v18[1] = @"ALTER TABLE ACHAchievementsPlugin_templates ADD daily_target_canonical_unit TEXT";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v10 = [v8 executeSQLStatements:v9 error:a5];

  v11 = ACHLogDatabase();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a5;
    v15[0] = 67109378;
    v15[1] = v10;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "Activity Achievements daily target and daily target unit columns migration success: %{BOOL}d, error: %@", v15, 0x12u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 ^ 1u;
}

uint64_t __67__ACHDatabaseSchemaProvider__addMisnamedTemplateRemovalToMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ACHLogDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Removing misnamed templates", buf, 2u);
  }

  v8 = [v6 protectedDatabase];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM ACHAchievementsPlugin_templates where unique_name = '%@%@%@'", @"Best", @"Mile", @"Duration"];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM ACHAchievementsPlugin_earned_instances where template_unique_name = '%@%@%@'", @"Best", @"Mile", @"Duration"];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM ACHAchievementsPlugin_templates where unique_name = '%@%@%@'", @"Best", @"Kilometer", @"Duration"];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM ACHAchievementsPlugin_earned_instances where template_unique_name = '%@%@%@'", @"Best", @"Kilometer", @"Duration"];
  v19[0] = v9;
  v19[1] = v10;
  v19[2] = v11;
  v19[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  v14 = [v8 executeSQLStatements:v13 error:a5];

  v15 = ACHLogDatabase();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v15, OS_LOG_TYPE_DEFAULT, "Removed misnamed templates", buf, 2u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14 ^ 1u;
}

uint64_t __86__ACHDatabaseSchemaProvider__addEarnedInstancesExternalIdentifierMigrationToMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v6 = [a3 protectedDatabase];
  v7 = ACHLogDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Adding external identifier Column to earned_instances table and removing affected templates and earned instances", buf, 2u);
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM ACHAchievementsPlugin_templates where unique_name in (%@)", @"'FiftyKilometersCyclingWorkout', 'FiftyMilesCyclingWorkout', 'OneHundredKilometersCyclingWorkout', 'OneHundredMilesCyclingWorkout', 'HalfMarathonWorkout', 'WheelchairHalfMarathonWorkout', 'MarathonWorkout', 'WheelchairMarathonWorkout', 'DuathlonWorkout', 'SprintTriathlonWorkout', 'FiftyKilometerTriathlonWorkout', 'HalfDistanceTriathlonWorkout', 'FullDistanceTriathlonWorkout', 'FiveKilometerWorkout', 'FiveKilometerWheelchairWorkout', 'TenKilometerWorkout', 'TenKilometerWheelchairWorkout'"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM ACHAchievementsPlugin_earned_instances where template_unique_name in (%@)", @"'FiftyKilometersCyclingWorkout', 'FiftyMilesCyclingWorkout', 'OneHundredKilometersCyclingWorkout', 'OneHundredMilesCyclingWorkout', 'HalfMarathonWorkout', 'WheelchairHalfMarathonWorkout', 'MarathonWorkout', 'WheelchairMarathonWorkout', 'DuathlonWorkout', 'SprintTriathlonWorkout', 'FiftyKilometerTriathlonWorkout', 'HalfDistanceTriathlonWorkout', 'FullDistanceTriathlonWorkout', 'FiveKilometerWorkout', 'FiveKilometerWheelchairWorkout', 'TenKilometerWorkout', 'TenKilometerWheelchairWorkout'"];
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = @"ALTER TABLE ACHAchievementsPlugin_earned_instances ADD external_identifier TEXT";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v11 = [v6 executeSQLStatements:v10 error:a5];

  v12 = *MEMORY[0x277D85DE8];
  return v11 ^ 1u;
}

uint64_t __64__ACHDatabaseSchemaProvider__addNullTemplatesRemovalToMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ACHLogDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Removing First/BestWorkout-(null) templates", v14, 2u);
  }

  v8 = [v6 protectedDatabase];

  v15[0] = @"DELETE FROM ACHAchievementsPlugin_templates where unique_name = 'FirstWorkout-(null)'";
  v15[1] = @"DELETE FROM ACHAchievementsPlugin_templates where unique_name = 'BestWorkout-(null)'";
  v15[2] = @"DELETE FROM ACHAchievementsPlugin_earned_instances where template_unique_name = 'FirstWorkout-(null)'";
  v15[3] = @"DELETE FROM ACHAchievementsPlugin_earned_instances where template_unique_name = 'BestWorkout-(null)'";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v10 = [v8 executeSQLStatements:v9 error:a5];

  v11 = ACHLogDatabase();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "Removed First/BestWorkout-(null) templates", v14, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 ^ 1u;
}

uint64_t __75__ACHDatabaseSchemaProvider__updateGoalFor31DaysSeptemberMonthlyChallenge___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ACHLogDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Updating goal for 31 days September MonthlyChallenge", v15, 2u);
  }

  v8 = [v6 protectedDatabase];

  v18[0] = @"UPDATE ACHAchievementsPlugin_templates SET goal_expression = '27', predicate = 'numberOfDaysClosingAllThreeRingsInCurrentMonth >= 27' where unique_name = 'MonthlyChallengeTypeAllThreeRings_2022_09' and goal_expression = '31'";
  v18[1] = @"UPDATE ACHAchievementsPlugin_templates SET goal_expression = '27', predicate = 'numberOfDaysClosingMoveRingInCurrentMonth >= 27' where unique_name = 'MonthlyChallengeTypeMoveRing_2022_09' and goal_expression = '31'";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v10 = [v8 executeSQLStatements:v9 error:a5];

  v11 = ACHLogDatabase();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a5;
    v15[0] = 67109378;
    v15[1] = v10;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "Updated goal for 31 days September MonthlyChallenge with success: %{BOOL}d, error: %@", v15, 0x12u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 ^ 1u;
}

uint64_t __61__ACHDatabaseSchemaProvider__addTemplateRowIdBumpToMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 isAppleWatch];

  v9 = ACHLogDatabase();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *v17 = 0;
      _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Skipping template row id update migration on watch", v17, 2u);
    }

    v11 = 0;
  }

  else
  {
    if (v10)
    {
      *v17 = 0;
      _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Updating template row ids", v17, 2u);
    }

    v9 = [v6 protectedDatabase];
    v18[0] = @"CREATE TABLE IF NOT EXISTS ACHAchievementsPlugin_templates_backup AS SELECT rowid, unique_name, version, minimum_engine_version, created_date, creator_device, source_name, predicate, grace_predicate, value_expression, grace_value_expression, progress_expression, grace_progress_expression, goal_expression, grace_goal_expression, triggers, earn_limit, visibility_predicate, grace_visibility_predicate, visibility_start_date, visibility_end_date, availability_predicate, availability_start_date, availability_end_date, available_country_codes, alertability_predicate, alert_dates, duplicateremoval_strategy, duplicateremoval_calendar_unit, earn_date, display_order, displays_earned_instance_count, canonical_unit, sync_provenance, available_suffixes, daily_target, daily_target_canonical_unit FROM ACHAchievementsPlugin_templates";
    v18[1] = @"DELETE FROM ACHAchievementsPlugin_templates";
    v18[2] = @"INSERT INTO ACHAchievementsPlugin_templates (unique_name, version, minimum_engine_version, created_date, creator_device, source_name, predicate, grace_predicate, value_expression, grace_value_expression, progress_expression, grace_progress_expression, goal_expression, grace_goal_expression, triggers, earn_limit, visibility_predicate, grace_visibility_predicate, visibility_start_date, visibility_end_date, availability_predicate, availability_start_date, availability_end_date, available_country_codes, alertability_predicate, alert_dates, duplicateremoval_strategy, duplicateremoval_calendar_unit, earn_date, display_order, displays_earned_instance_count, canonical_unit, sync_provenance, available_suffixes, daily_target, daily_target_canonical_unit) SELECT unique_name, version, minimum_engine_version, created_date, creator_device, source_name, predicate, grace_predicate, value_expression, grace_value_expression, progress_expression, grace_progress_expression, goal_expression, grace_goal_expression, triggers, earn_limit, visibility_predicate, grace_visibility_predicate, visibility_start_date, visibility_end_date, availability_predicate, availability_start_date, availability_end_date, available_country_codes, alertability_predicate, alert_dates, duplicateremoval_strategy, duplicateremoval_calendar_unit, earn_date, display_order, displays_earned_instance_count, canonical_unit, sync_provenance, available_suffixes, daily_target, daily_target_canonical_unit FROM ACHAchievementsPlugin_templates_backup";
    v18[3] = @"DROP TABLE IF EXISTS ACHAchievementsPlugin_templates_backup";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
    v13 = [v9 executeSQLStatements:v12 error:a5];

    v14 = ACHLogDatabase();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_221DDC000, v14, OS_LOG_TYPE_DEFAULT, "Updated template row ids", v17, 2u);
    }

    v11 = v13 ^ 1u;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __66__ACHDatabaseSchemaProvider__removeErroneousFitnessPlusTemplates___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v34 = [a3 protectedDatabase];
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v39 = [&unk_283555C50 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v39)
  {
    v35 = *v50;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(&unk_283555C50);
        }

        v7 = *(*(&v49 + 1) + 8 * i);
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"'FirstFitnessPlusWorkoutAward-%@'", v7];
        [v38 addObject:?];
        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"'BestFitnessPlusWorkoutAward-%@'", v7];
        [v37 addObject:?];
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v8 = [&unk_283555C38 countByEnumeratingWithState:&v45 objects:v58 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v46;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v46 != v10)
              {
                objc_enumerationMutation(&unk_283555C38);
              }

              v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"'FitnessPlusModalityLifetimeWorkoutAward-%@-%lu'", v7, objc_msgSend(*(*(&v45 + 1) + 8 * j), "unsignedIntegerValue")];
              [v5 addObject:v12];
            }

            v9 = [&unk_283555C38 countByEnumeratingWithState:&v45 objects:v58 count:16];
          }

          while (v9);
        }
      }

      v39 = [&unk_283555C50 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v39);
  }

  v13 = [v38 componentsJoinedByString:{@", "}];
  v14 = [v37 componentsJoinedByString:{@", "}];
  v15 = [v5 componentsJoinedByString:{@", "}];
  v16 = ACHLogDatabase();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *v55 = v13;
    *&v55[8] = 2112;
    *&v55[10] = v14;
    v56 = 2112;
    v57 = v15;
    _os_log_impl(&dword_221DDC000, v16, OS_LOG_TYPE_DEFAULT, "Removing erroneous FitnessPlus templates/earned instances where templates not in: %@, %@, %@", buf, 0x20u);
  }

  v40 = v13;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT unique_name from ACHAchievementsPlugin_templates WHERE unique_name LIKE 'FirstFitnessPlusWorkoutAward-%@' AND source_name='FitnessPlusAwards' AND unique_name NOT IN (%@)", @"%", v13];
  v36 = v14;
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT unique_name from ACHAchievementsPlugin_templates WHERE unique_name LIKE 'BestFitnessPlusWorkoutAward-%@' AND source_name='FitnessPlusAwards' AND unique_name NOT IN (%@)", @"%", v14];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT unique_name from ACHAchievementsPlugin_templates WHERE unique_name LIKE 'FitnessPlusModalityLifetimeWorkoutAward-%@' AND source_name='FitnessPlusAwards' AND unique_name NOT IN (%@)", @"%", v15];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE from ACHAchievementsPlugin_earned_instances WHERE template_unique_name in (%@)", v17];
  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE from ACHAchievementsPlugin_earned_instances WHERE template_unique_name in (%@)", v18];
  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE from ACHAchievementsPlugin_earned_instances WHERE template_unique_name in (%@)", v19];
  v32 = v17;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE from ACHAchievementsPlugin_templates WHERE unique_name in (%@)", v17];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE from ACHAchievementsPlugin_templates WHERE unique_name in (%@)", v18];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE from ACHAchievementsPlugin_templates WHERE unique_name in (%@)", v19];
  v24 = ACHLogDatabase();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Removing erroneous FitnessPlus templates/earned instances", buf, 2u);
  }

  v31 = v20;
  v53[0] = v20;
  v53[1] = v44;
  v53[2] = v42;
  v53[3] = v21;
  v53[4] = v22;
  v53[5] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:6];
  v26 = [v34 executeSQLStatements:v25 error:a5];

  v27 = ACHLogDatabase();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *a5;
    *buf = 67109378;
    *v55 = v26;
    *&v55[4] = 2112;
    *&v55[6] = v28;
    _os_log_impl(&dword_221DDC000, v27, OS_LOG_TYPE_DEFAULT, "Removed erroneous FitnessPlus templates/earned instances: %{BOOL}d, error: %@", buf, 0x12u);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v26 ^ 1u;
}

uint64_t __62__ACHDatabaseSchemaProvider__removeErroneousWorkoutTemplates___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *MEMORY[0x277CE8B78];
  v5 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v41;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        v10 = MEMORY[0x277CCACA8];
        v11 = [MEMORY[0x277CCDBE8] _stringFromWorkoutActivityType:{objc_msgSend(v9, "unsignedIntegerValue")}];
        v12 = [v10 stringWithFormat:@"'FirstWorkout-%@'", v11];

        v13 = MEMORY[0x277CCACA8];
        v14 = [MEMORY[0x277CCDBE8] _stringFromWorkoutActivityType:{objc_msgSend(v9, "unsignedIntegerValue")}];
        v15 = [v13 stringWithFormat:@"'BestWorkout-%@'", v14];

        [v39 addObject:v12];
        [v38 addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v6);
  }

  v16 = [v39 componentsJoinedByString:{@", "}];
  v17 = [v38 componentsJoinedByString:{@", "}];
  obja = v16;
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT unique_name FROM ACHAchievementsPlugin_templates where unique_name LIKE 'FirstWorkout-%%' AND source_name='BuiltIn' AND unique_name NOT IN (%@)", v16];
  v33 = v17;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT unique_name FROM ACHAchievementsPlugin_templates where unique_name LIKE 'BestWorkout-%%' AND source_name='BuiltIn' AND unique_name NOT IN (%@)", v17];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM ACHAchievementsPlugin_earned_instances WHERE template_unique_name in (%@)", v18];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM ACHAchievementsPlugin_earned_instances WHERE template_unique_name in (%@)", v19];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE from ACHAchievementsPlugin_templates WHERE unique_name in (%@)", v18];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE from ACHAchievementsPlugin_templates WHERE unique_name in (%@)", v19];
  v24 = ACHLogDatabase();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Removing erroneous Workout templates/earned instances", buf, 2u);
  }

  v25 = [v35 protectedDatabase];
  v48[0] = v20;
  v48[1] = v21;
  v26 = v21;
  v48[2] = v22;
  v48[3] = v23;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  v28 = [v25 executeSQLStatements:v27 error:a5];

  v29 = ACHLogDatabase();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *a5;
    *buf = 67109378;
    v45 = v28;
    v46 = 2112;
    v47 = v30;
    _os_log_impl(&dword_221DDC000, v29, OS_LOG_TYPE_DEFAULT, "Removed erroneous Workout templates/earned instances: %{BOOL}d, error: %@", buf, 0x12u);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v28 ^ 1u;
}

uint64_t __84__ACHDatabaseSchemaProvider__addSyncIdentityColumnToEarnedInstanceEntityToMigrator___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = ACHLogDatabase();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Adding sync identity column to earned instance entity", buf, 2u);
  }

  v10 = [v8 protectedDatabase];
  if ([v10 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS ACHAchievementsPlugin_earned_instances_new         (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{template_unique_name TEXT, created_date REAL, earned_date TEXT, value_in_canonical_unit REAL, value_canonical_unit TEXT, external_identifier TEXT, creator_device INTEGER, sync_provenance INTEGER, sync_identity INTEGER NOT NULL);", a5}])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
    *buf = 0;
    v22 = buf;
    v23 = 0x2020000000;
    v24 = 0;
    v12 = [v8 unprotectedDatabase];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__ACHDatabaseSchemaProvider__addSyncIdentityColumnToEarnedInstanceEntityToMigrator___block_invoke_574;
    v20[3] = &unk_278491208;
    v20[4] = buf;
    v13 = [v12 executeSQL:v11 error:a5 bindingHandler:0 enumerationHandler:v20];

    if (v13 & 1) != 0 && (v19[0] = MEMORY[0x277D85DD0], v19[1] = 3221225472, v19[2] = __84__ACHDatabaseSchemaProvider__addSyncIdentityColumnToEarnedInstanceEntityToMigrator___block_invoke_2, v19[3] = &unk_278491230, v19[4] = buf, ([v10 executeSQL:@"INSERT INTO ACHAchievementsPlugin_earned_instances_new(       ROWID error:template_unique_name bindingHandler:created_date enumerationHandler:{earned_date, value_in_canonical_unit, value_canonical_unit, external_identifier, creator_device, sync_provenance, sync_identity)         SELECT ROWID, template_unique_name, created_date, earned_date, value_in_canonical_unit, value_canonical_unit, external_identifier, creator_device, sync_provenance, ? FROM ACHAchievementsPlugin_earned_instances;", a5, v19, 0}]))
    {
      v25[0] = @"DROP TABLE ACHAchievementsPlugin_earned_instances;";
      v25[1] = @"ALTER TABLE ACHAchievementsPlugin_earned_instances_new RENAME TO ACHAchievementsPlugin_earned_instances;";
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      v15 = [v10 executeSQLStatements:v14 error:a5];

      v16 = v15 ^ 1u;
    }

    else
    {
      v16 = 1;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __78__ACHDatabaseSchemaProvider__addSyncIdentityColumnToTemplateEntityToMigrator___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = ACHLogDatabase();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Adding sync identity column to template entity", buf, 2u);
  }

  v10 = [v8 protectedDatabase];
  if ([v10 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS ACHAchievementsPlugin_templates_new         (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{unique_name TEXT UNIQUE NOT NULL, version INTEGER, minimum_engine_version INTEGER, created_date REAL, creator_device INTEGER, source_name TEXT, predicate TEXT, value_expression TEXT, progress_expression TEXT, goal_expression TEXT, triggers INTEGER, earn_limit INTEGER, visibility_predicate TEXT, visibility_start_date TEXT, visibility_end_date TEXT, availability_predicate TEXT, availability_start_date TEXT, availability_end_date TEXT, available_country_codes TEXT, alertability_predicate TEXT, alert_dates TEXT, duplicateremoval_strategy INTEGER, duplicateremoval_calendar_unit INTEGER, earn_date INTEGER, display_order INTEGER, displays_earned_instance_count INTEGER, canonical_unit TEXT, sync_provenance INTEGER, available_suffixes INTEGER, grace_predicate INTEGER, grace_visibility_predicate INTEGER, grace_value_expression INTEGER, grace_progress_expression INTEGER, grace_goal_expression INTEGER, daily_target INTEGER, daily_target_canonical_unit INTEGER, sync_identity INTEGER NOT NULL);", a5}])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
    *buf = 0;
    v22 = buf;
    v23 = 0x2020000000;
    v24 = 0;
    v12 = [v8 unprotectedDatabase];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__ACHDatabaseSchemaProvider__addSyncIdentityColumnToTemplateEntityToMigrator___block_invoke_589;
    v20[3] = &unk_278491208;
    v20[4] = buf;
    v13 = [v12 executeSQL:v11 error:a5 bindingHandler:0 enumerationHandler:v20];

    if (v13 & 1) != 0 && (v19[0] = MEMORY[0x277D85DD0], v19[1] = 3221225472, v19[2] = __78__ACHDatabaseSchemaProvider__addSyncIdentityColumnToTemplateEntityToMigrator___block_invoke_2, v19[3] = &unk_278491230, v19[4] = buf, ([v10 executeSQL:@"INSERT INTO ACHAchievementsPlugin_templates_new(       ROWID error:unique_name bindingHandler:version enumerationHandler:{minimum_engine_version, created_date, creator_device, source_name, predicate, value_expression, progress_expression, goal_expression, triggers, earn_limit, visibility_predicate, visibility_start_date, visibility_end_date, availability_predicate, availability_start_date, availability_end_date, available_country_codes, alertability_predicate, alert_dates, duplicateremoval_strategy, duplicateremoval_calendar_unit, earn_date, display_order, displays_earned_instance_count, canonical_unit, sync_provenance, available_suffixes, grace_predicate, grace_visibility_predicate, grace_value_expression, grace_progress_expression, grace_goal_expression, daily_target, daily_target_canonical_unit, sync_identity)         SELECT ROWID, unique_name, version, minimum_engine_version, created_date, creator_device, source_name, predicate, value_expression, progress_expression, goal_expression, triggers, earn_limit, visibility_predicate, visibility_start_date, visibility_end_date, availability_predicate, availability_start_date, availability_end_date, available_country_codes, alertability_predicate, alert_dates, duplicateremoval_strategy, duplicateremoval_calendar_unit, earn_date, display_order, displays_earned_instance_count, canonical_unit, sync_provenance, available_suffixes, grace_predicate, grace_visibility_predicate, grace_value_expression, grace_progress_expression, grace_goal_expression, daily_target, daily_target_canonical_unit, ? FROM ACHAchievementsPlugin_templates;", a5, v19, 0}]))
    {
      v25[0] = @"DROP TABLE ACHAchievementsPlugin_templates;";
      v25[1] = @"ALTER TABLE ACHAchievementsPlugin_templates_new RENAME TO ACHAchievementsPlugin_templates;";
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      v15 = [v10 executeSQLStatements:v14 error:a5];

      v16 = v15 ^ 1u;
    }

    else
    {
      v16 = 1;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __73__ACHDatabaseSchemaProvider__addPrereqisiteTemplateNameFieldToTemplates___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = [a3 protectedDatabase];
  v16[0] = @"ALTER TABLE ACHAchievementsPlugin_templates ADD prerequisite_template_name TEXT";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v8 = [v6 executeSQLStatements:v7 error:a5];

  v9 = ACHLogDatabase();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a5;
    v13[0] = 67109378;
    v13[1] = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Added prerequisite_template_name to ACHTemplates: %{BOOL}d, error: %@", v13, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 ^ 1u;
}

uint64_t __70__ACHDatabaseSchemaProvider__removeMoveGoalMultiplierEarnedInstances___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = [a3 protectedDatabase];
  v16[0] = @"DELETE FROM ACHAchievementsPlugin_earned_instances WHERE template_unique_name IN ('MoveGoal200Percent', 'MoveGoal300Percent', 'MoveGoal400Percent')";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v8 = [v6 executeSQLStatements:v7 error:a5];

  v9 = ACHLogDatabase();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a5;
    v13[0] = 67109378;
    v13[1] = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Removed existing 200%%, 300%%, 400%% earned instances: %{BOOL}d, error: %@", v13, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 ^ 1u;
}

uint64_t __64__ACHDatabaseSchemaProvider__removePerfectMonthEarnedInstances___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = [a3 protectedDatabase];
  v16[0] = @"DELETE FROM ACHAchievementsPlugin_earned_instances WHERE template_unique_name LIKE 'PerfectMonth_%'";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v8 = [v6 executeSQLStatements:v7 error:a5];

  v9 = ACHLogDatabase();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a5;
    v13[0] = 67109378;
    v13[1] = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Removed existing Perfect Months earned instances: %{BOOL}d, error: %@", v13, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 ^ 1u;
}

@end