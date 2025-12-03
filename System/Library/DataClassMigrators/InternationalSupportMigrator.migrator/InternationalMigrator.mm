@interface InternationalMigrator
- (BOOL)performMigration;
@end

@implementation InternationalMigrator

- (BOOL)performMigration
{
  v3 = DMGetPreviousBuildVersion();
  v4 = DMCopyCurrentBuildVersion();
  v5 = [ISRootMigrator migratorFromVersion:v3 toVersion:v4];
  userDataDisposition = [(InternationalMigrator *)self userDataDisposition];
  if (userDataDisposition)
  {
    [v5 setIsErase:1];
  }

  if ((userDataDisposition & 4) != 0)
  {
    [v5 setIsRestoreFromBackup:1];
  }

  performMigration = [v5 performMigration];

  return performMigration;
}

@end