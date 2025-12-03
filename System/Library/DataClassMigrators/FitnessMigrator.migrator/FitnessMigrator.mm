@interface FitnessMigrator
- (BOOL)performMigration;
- (int64_t)_getDataMigrationVersion;
- (void)_migrateUnsupportedDeepBreathingReminderFrequency;
- (void)_setDataMigrationVersion:(int64_t)version;
@end

@implementation FitnessMigrator

- (BOOL)performMigration
{
  _getDataMigrationVersion = [(FitnessMigrator *)self _getDataMigrationVersion];
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = _getDataMigrationVersion;
    v10 = 2048;
    v11 = 1;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[FitnessMigrator] Performing Fitness data migration from version %ld to version %ld", &v8, 0x16u);
  }

  if (_getDataMigrationVersion <= 0)
  {
    [(FitnessMigrator *)self _migrateDefaultPaceForOutdoorRunningAndCycling];
    [(FitnessMigrator *)self _migrateUnsupportedDeepBreathingReminderFrequency];
    _HKInitializeLogging();
    v5 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = 1;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[FitnessMigrator] Fitness data migration to version %ld complete", &v8, 0xCu);
    }

    [(FitnessMigrator *)self _setDataMigrationVersion:1];
  }

  _HKInitializeLogging();
  v6 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[FitnessMigrator] Fitness data migration complete", &v8, 2u);
  }

  return 1;
}

- (void)_setDataMigrationVersion:(int64_t)version
{
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.FitnessMigrator"];
  [v4 setInteger:version forKey:@"CurrentDataVersion"];
}

- (int64_t)_getDataMigrationVersion
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.FitnessMigrator"];
  v3 = [v2 integerForKey:@"CurrentDataVersion"];

  return v3;
}

- (void)_migrateUnsupportedDeepBreathingReminderFrequency
{
  keyExistsAndHasValidFormat = 0;
  v2 = kNLDeepBreathingPreferencesDomain;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ReminderFrequency", kNLDeepBreathingPreferencesDomain, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppIntegerValue;
    v5 = FIUIDeepBreathingReminderFrequencyOptions();
    v6 = [NSNumber numberWithInteger:v4];
    v7 = [v5 containsObject:v6];

    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      v8 = HKLogDeepBreathing;
      if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [NSNumber numberWithInteger:v4];
        v11 = [NSNumber numberWithInteger:18000];
        *buf = 138543618;
        v16 = v10;
        v17 = 2114;
        v18 = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[FitnessMigrator] Found invalid ReminderFrequency value of %{public}@, migrating to %{public}@", buf, 0x16u);
      }

      CFPreferencesSetAppValue(@"ReminderFrequency", [NSNumber numberWithInteger:18000], v2);
      v12 = objc_alloc_init(NPSManager);
      v13 = [NSSet setWithObject:@"ReminderFrequency"];
      [v12 synchronizeNanoDomain:v2 keys:v13];
    }
  }
}

@end