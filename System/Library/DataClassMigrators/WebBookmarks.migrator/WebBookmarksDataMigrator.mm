@interface WebBookmarksDataMigrator
- (BOOL)performMigration;
@end

@implementation WebBookmarksDataMigrator

- (BOOL)performMigration
{
  if (qword_8138 != -1)
  {
    sub_D3C();
  }

  v3 = qword_8130;
  if (os_log_type_enabled(qword_8130, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting WebBookmarks DataMigration", buf, 2u);
  }

  if (([(WebBookmarksDataMigrator *)self didUpgrade]& 1) != 0 || ([(WebBookmarksDataMigrator *)self didRestoreFromBackup]& 1) != 0 || [(WebBookmarksDataMigrator *)self didMigrateBackupFromDifferentDevice])
  {
    if (qword_8138 != -1)
    {
      sub_D50();
    }

    v4 = qword_8130;
    if (os_log_type_enabled(qword_8130, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Scheduling bookmarks database maintenance", v16, 2u);
    }

    v5 = objc_alloc_init(WebBookmarksSettingsGateway);
    [v5 scheduleBookmarksDatabaseMaintenance];
    [v5 scheduleBookmarksDatabaseMigrationTask];
    [v5 scheduleHSTSSuperCookieCleanup];
    v6 = [WebBookmarkCollection alloc];
    v7 = +[WBCollectionConfiguration safariBookmarkCollectionConfiguration];
    v8 = [v6 initWithConfiguration:v7];

    if (v8)
    {
      if (qword_8138 != -1)
      {
        sub_D50();
      }

      v9 = qword_8130;
      if (os_log_type_enabled(qword_8130, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Finished migrating bookmark collection", v15, 2u);
      }
    }
  }

  else
  {
    if (qword_8138 != -1)
    {
      sub_D50();
    }

    v12 = qword_8130;
    if (os_log_type_enabled(qword_8130, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "No need to schedule bookmarks database maintenance for clean install", v14, 2u);
    }
  }

  if (qword_8138 != -1)
  {
    sub_D50();
  }

  v10 = qword_8130;
  if (os_log_type_enabled(qword_8130, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Successfully completed WebBookmarks database maintenance tasks. Migration is successful", v13, 2u);
  }

  return 1;
}

@end