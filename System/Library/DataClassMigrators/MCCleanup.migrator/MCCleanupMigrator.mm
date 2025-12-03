@interface MCCleanupMigrator
- (BOOL)performMigration;
@end

@implementation MCCleanupMigrator

- (BOOL)performMigration
{
  _DMLogFunc();
  if ([(MCCleanupMigrator *)self didRestoreFromBackup])
  {
    didMigrateBackupFromDifferentDevice = [(MCCleanupMigrator *)self didMigrateBackupFromDifferentDevice];
    v4 = didMigrateBackupFromDifferentDevice == 0;
    if (didMigrateBackupFromDifferentDevice)
    {
      didUpgrade = &dword_0 + 3;
    }

    else
    {
      didUpgrade = &dword_0 + 2;
    }

    v6 = @"Restore from the same device";
    v7 = @"Restore from a different device";
  }

  else
  {
    didUpgrade = [(MCCleanupMigrator *)self didUpgrade];
    v6 = @"Device erasure";
    v7 = @"Software update";
    v4 = didUpgrade == 0;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  _DMLogFunc();
  if ([(MCCleanupMigrator *)self _triggerMigrationWithContext:didUpgrade, v8])
  {
    goto LABEL_15;
  }

  v9 = -2;
  do
  {
    v10 = [(MCCleanupMigrator *)self _triggerMigrationWithContext:didUpgrade];
    sleep(1u);
    if (!v9)
    {
      break;
    }

    ++v9;
  }

  while (!v10);
  if (v10)
  {
LABEL_15:
    _DMLogFunc();
    return 1;
  }

  else
  {
    _DMLogFunc();
    return 0;
  }
}

@end