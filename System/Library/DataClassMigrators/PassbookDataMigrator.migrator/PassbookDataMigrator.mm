@interface PassbookDataMigrator
- (BOOL)performMigration;
@end

@implementation PassbookDataMigrator

- (BOOL)performMigration
{
  v3 = [(PassbookDataMigrator *)self userDataDisposition];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (([(PassbookDataMigrator *)self userDataDisposition]& 2) != 0)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    if ((v3 & 4) != 0)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    if (([(PassbookDataMigrator *)self userDataDisposition]& 8) != 0)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v11 = 138544130;
    if (([(PassbookDataMigrator *)self userDataDisposition]& 0x10) != 0)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v12 = v5;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "PassbookDataMigrator: Beginning performMigration... (didUpgrade=%{public}@; didRestoreFromBackup=%{public}@; didMigrateBackupFromDifferentDevice=%{public}@; didRestoreFromCloudBackup=%{public}@;)", &v11, 0x2Au);
  }

  v9 = +[PKPassLibrary sharedInstance];
  [v9 migrateDataWithDidRestoreFromBackup:(v3 >> 2) & 1];

  return 1;
}

@end