@interface MCMDMDataMigrator
- (BOOL)performMigration;
@end

@implementation MCMDMDataMigrator

- (BOOL)performMigration
{
  _DMLogFunc();
  if ([(MCMDMDataMigrator *)self didRestoreFromBackup])
  {
    v3 = [(MCMDMDataMigrator *)self didMigrateBackupFromDifferentDevice];
    v4 = 0;
    v5 = v3 == 0;
    if (v3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v7 = @"Restore from the same device";
    v8 = @"Restore from a different device";
  }

  else
  {
    v6 = [(MCMDMDataMigrator *)self didUpgrade];
    v4 = v6 ^ 1;
    v7 = @"Device erasure";
    v8 = @"Software update";
    v5 = v6 == 0;
  }

  if (!v5)
  {
    v7 = v8;
  }

  v13 = v7;
  _DMLogFunc();
  v9 = +[UMUserManager sharedManager];
  v10 = [v9 isSharedIPad];

  if (v4 && v10)
  {
    _DMLogFunc();
  }

  else
  {
    v11 = +[MDMClient sharedClient];
    [v11 migrateMDMWithContext:v6 completion:&stru_4058];
  }

  return 1;
}

@end