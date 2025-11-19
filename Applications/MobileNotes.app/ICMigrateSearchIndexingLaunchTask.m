@interface ICMigrateSearchIndexingLaunchTask
- (void)runLaunchTask;
@end

@implementation ICMigrateSearchIndexingLaunchTask

- (void)runLaunchTask
{
  v3 = kICSearchIndexingVersionKey;
  v4 = [ICSettingsUtilities objectForKey:kICSearchIndexingVersionKey];
  v5 = [v4 unsignedIntegerValue];

  if (&v5[-1].super.isa + 6 < 0xB)
  {
    v6 = 0;
LABEL_3:
    v7 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v18 = v5;
      v19 = 2048;
      v20 = 13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "App needs to upgrade the search index because indexing version does not match. Current version = %lu, expected version = %lu", buf, 0x16u);
    }

    v8 = os_log_create("com.apple.notes", "LaunchTask");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v9)
      {
        *buf = 138412290;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ should delete search indexing before reindexing", buf, 0xCu);
      }

      v10 = dispatch_semaphore_create(0);
      v11 = +[ICReindexer reindexer];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10015A658;
      v15[3] = &unk_1006487A0;
      v15[4] = self;
      v16 = v10;
      v12 = v10;
      [v11 deleteAllSearchableItemsWithCompletionHandler:v15];

      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      if (v9)
      {
        *buf = 138412290;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ no need to delete search indexing before reindexing. updating the indexing version to expected version", buf, 0xCu);
      }

      v12 = [NSNumber numberWithInteger:13];
      [ICSettingsUtilities setObject:v12 forKey:v3];
    }

    [ICSettingsUtilities setObject:&__kCFBooleanTrue forKey:kICReindexOnLaunchKey];
    return;
  }

  if (v5 < 2)
  {
    v6 = 1;
    goto LABEL_3;
  }

  if (v5 != 13)
  {
    v13 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v18 = v5;
      v19 = 2048;
      v20 = 13;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "App does not need to upgrade the search index although indexing version does not match. Current version = %lu, expected version = %lu. Directly updating the indexing version to expected version", buf, 0x16u);
    }

    v14 = [NSNumber numberWithInteger:13];
    [ICSettingsUtilities setObject:v14 forKey:v3];
  }
}

@end