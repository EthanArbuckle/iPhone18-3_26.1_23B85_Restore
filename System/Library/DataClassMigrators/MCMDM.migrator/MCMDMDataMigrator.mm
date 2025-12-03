@interface MCMDMDataMigrator
- (BOOL)performMigration;
@end

@implementation MCMDMDataMigrator

- (BOOL)performMigration
{
  _DMLogFunc();
  if ([(MCMDMDataMigrator *)self didRestoreFromBackup])
  {
    didMigrateBackupFromDifferentDevice = [(MCMDMDataMigrator *)self didMigrateBackupFromDifferentDevice];
    v4 = 0;
    v5 = didMigrateBackupFromDifferentDevice == 0;
    if (didMigrateBackupFromDifferentDevice)
    {
      didUpgrade = 3;
    }

    else
    {
      didUpgrade = 2;
    }

    v7 = @"Restore from the same device";
    v8 = @"Restore from a different device";
  }

  else
  {
    didUpgrade = [(MCMDMDataMigrator *)self didUpgrade];
    v4 = didUpgrade ^ 1;
    v7 = @"Device erasure";
    v8 = @"Software update";
    v5 = didUpgrade == 0;
  }

  if (!v5)
  {
    v7 = v8;
  }

  v13 = v7;
  _DMLogFunc();
  v9 = +[UMUserManager sharedManager];
  isSharedIPad = [v9 isSharedIPad];

  if (v4 && isSharedIPad)
  {
    _DMLogFunc();
  }

  else
  {
    v11 = +[MDMClient sharedClient];
    [v11 migrateMDMWithContext:didUpgrade completion:&stru_4058];
  }

  return 1;
}

@end