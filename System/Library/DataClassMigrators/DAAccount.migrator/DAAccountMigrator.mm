@interface DAAccountMigrator
- (BOOL)performMigration;
@end

@implementation DAAccountMigrator

- (BOOL)performMigration
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *v7 = 0;
    _os_log_impl(&dword_23396A000, v3, v4, "DataAccess DAAccountMigrator reporting for duty.  Heh.  Duty.", v7, 2u);
  }

  v5 = [(DataClassMigrator *)self didUpgrade]|| [(DataClassMigrator *)self didRestoreFromBackup]|| [(DataClassMigrator *)self didMigrateBackupFromDifferentDevice];
  [MEMORY[0x277D03748] upgradeAccounts:v5];
  return 1;
}

@end