@interface BYStolenDeviceProtectionPreferenceMigrator
- (BYStolenDeviceProtectionPreferenceMigrator)initWithMigrationContext:(int64_t)context sourcePreferences:(id)preferences targetPreferences:(id)targetPreferences;
- (void)_clearPreferenceKeyFromSourcePreferences;
- (void)_migratePreferenceKeyIfNeeded;
- (void)migratePreferenceWithSDPEnabledState:(BOOL)state;
@end

@implementation BYStolenDeviceProtectionPreferenceMigrator

- (BYStolenDeviceProtectionPreferenceMigrator)initWithMigrationContext:(int64_t)context sourcePreferences:(id)preferences targetPreferences:(id)targetPreferences
{
  preferencesCopy = preferences;
  targetPreferencesCopy = targetPreferences;
  v14.receiver = self;
  v14.super_class = BYStolenDeviceProtectionPreferenceMigrator;
  v11 = [(BYStolenDeviceProtectionPreferenceMigrator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_migrationContext = context;
    objc_storeStrong(&v11->_sourcePreferences, preferences);
    objc_storeStrong(&v12->_targetPreferences, targetPreferences);
  }

  return v12;
}

- (void)migratePreferenceWithSDPEnabledState:(BOOL)state
{
  stateCopy = state;
  if ([(BYStolenDeviceProtectionPreferenceMigrator *)self migrationContext]> 1)
  {
    objc_exception_throw(@"Neither postRestoreFromBackup or postSoftwareUpdate are set");
  }

  if (stateCopy)
  {
    [(BYStolenDeviceProtectionPreferenceMigrator *)self _migratePreferenceKeyIfNeeded];
  }

  else
  {
    [(BYStolenDeviceProtectionPreferenceMigrator *)self _clearPreferenceKeyFromSourcePreferences];
  }

  if (self->_didMigrate || self->_didClear)
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      didMigrate = self->_didMigrate;
      didClear = self->_didClear;
      v8[0] = 67109632;
      v8[1] = didMigrate;
      v9 = 1024;
      v10 = didClear;
      v11 = 1024;
      v12 = stateCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SDP preferences updated. didMigrate: %d, didClear: %d. SDP State: %d", v8, 0x14u);
    }
  }

  else
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1914C(v5);
    }
  }
}

- (void)_migratePreferenceKeyIfNeeded
{
  targetPreferences = [(BYStolenDeviceProtectionPreferenceMigrator *)self targetPreferences];
  v8 = [targetPreferences objectForKey:@"StolenDeviceProtectionPresented"];

  if (!v8)
  {
    sourcePreferences = [(BYStolenDeviceProtectionPreferenceMigrator *)self sourcePreferences];
    v5 = [sourcePreferences objectForKey:@"StolenDeviceProtectionPresented"];

    if (v5)
    {
      self->_didMigrate = 1;
      targetPreferences2 = [(BYStolenDeviceProtectionPreferenceMigrator *)self targetPreferences];
      [targetPreferences2 setObject:v5 forKey:@"StolenDeviceProtectionPresented"];

      targetPreferences3 = [(BYStolenDeviceProtectionPreferenceMigrator *)self targetPreferences];
      [targetPreferences3 persist];
    }
  }

  [(BYStolenDeviceProtectionPreferenceMigrator *)self _clearPreferenceKeyFromSourcePreferences];
}

- (void)_clearPreferenceKeyFromSourcePreferences
{
  sourcePreferences = [(BYStolenDeviceProtectionPreferenceMigrator *)self sourcePreferences];
  v4 = [sourcePreferences objectForKey:@"StolenDeviceProtectionPresented"];

  if (v4)
  {
    self->_didClear = 1;
    sourcePreferences2 = [(BYStolenDeviceProtectionPreferenceMigrator *)self sourcePreferences];
    [sourcePreferences2 removeObjectForKey:@"StolenDeviceProtectionPresented" onlyFromMemory:0];

    sourcePreferences3 = [(BYStolenDeviceProtectionPreferenceMigrator *)self sourcePreferences];
    [sourcePreferences3 persist];
  }
}

@end