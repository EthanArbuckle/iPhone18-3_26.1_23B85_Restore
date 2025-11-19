@interface InternationalMigrator
- (BOOL)performMigration;
@end

@implementation InternationalMigrator

- (BOOL)performMigration
{
  v3 = DMGetPreviousBuildVersion();
  v4 = DMCopyCurrentBuildVersion();
  v5 = [ISRootMigrator migratorFromVersion:v3 toVersion:v4];
  v6 = [(InternationalMigrator *)self userDataDisposition];
  if (v6)
  {
    [v5 setIsErase:1];
  }

  if ((v6 & 4) != 0)
  {
    [v5 setIsRestoreFromBackup:1];
  }

  v7 = [v5 performMigration];

  return v7;
}

@end