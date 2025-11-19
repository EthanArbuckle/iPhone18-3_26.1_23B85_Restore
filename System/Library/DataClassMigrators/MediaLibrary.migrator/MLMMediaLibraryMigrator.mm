@interface MLMMediaLibraryMigrator
- (BOOL)performMigration;
- (MLMMediaLibraryMigrator)init;
- (float)estimatedDuration;
- (float)migrationProgress;
@end

@implementation MLMMediaLibraryMigrator

- (float)migrationProgress
{
  result = 0.0;
  if (self->_migrated)
  {
    return 1.0;
  }

  return result;
}

- (float)estimatedDuration
{
  v3 = [(NSArray *)self->_libraries firstObject];
  v4 = [v3 currentDatabaseVersion];

  if (v4)
  {
    return (2310000 - v4) / 200.0 * [(NSArray *)self->_libraries count];
  }

  else
  {
    return 1.0;
  }
}

- (BOOL)performMigration
{
  if (+[ML3MusicLibrary deviceSupportsMultipleLibraries])
  {
    v2 = os_log_create("com.apple.amp.medialibrary.migrator", "Migration");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[Migrator] Multi-user mode detected, removing the single-user library", buf, 2u);
    }

    if (MSVDeviceOSIsInternalInstall())
    {
      v3 = +[ML3TerminationCoordinator sharedCoordinator];
      [v3 execute];
    }

    v4 = +[NSFileManager defaultManager];
    v5 = [ML3MusicLibrary pathForResourceFileOrFolder:9];
    [v4 removeItemAtPath:v5 error:0];

    v6 = [ML3MusicLibrary pathForResourceFileOrFolder:8];
    [v4 removeItemAtPath:v6 error:0];

    v7 = +[ML3MusicLibrary mediaFolderPath];
    v8 = [ML3MusicLibrary libraryPathForContainerPath:v7];
    [v4 removeItemAtPath:v8 error:0];

    v9 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control"];
    LOBYTE(v8) = [v4 fileExistsAtPath:v9 isDirectory:0];

    if ((v8 & 1) == 0)
    {
      v10 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control"];
      v38 = 0;
      [v4 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v38];
      v11 = v38;

      if (v11)
      {
        v12 = os_log_create("com.apple.amp.medialibrary.migrator", "Migration");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v41 = v11;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_FAULT, "[Migrator] Failed to re-create iTunes_Control directory on multi-user device during migration - error=%{public}@", buf, 0xCu);
        }
      }
    }

    v13 = os_log_create("com.apple.amp.medialibrary.migrator", "Migration");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[Migrator] Single-user library removed", buf, 2u);
    }
  }

  v14 = os_log_create("com.apple.amp.medialibrary.migrator", "Migration");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    libraries = self->_libraries;
    *buf = 134217984;
    v41 = libraries;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[Migrator] Validating media libraries %p", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 16;
  v16 = self->_libraries;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v17)
  {
    v18 = *v35;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        if (([(NSArray *)v20 validateDatabase]& 1) == 0)
        {
          v21 = os_log_create("com.apple.amp.medialibrary.migrator", "Migration");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v41 = v20;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "[Migrator] Failed to validate media library %{public}@ during migration", buf, 0xCu);
          }
        }
      }

      v17 = [(NSArray *)v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v17);
  }

  if ((+[ML3MusicLibrary deviceSupportsMultipleLibraries]& 1) == 0)
  {
    v22 = [*&self->DataClassMigrator_opaque[v32] firstObject];
    v23 = [v22 valueForDatabaseProperty:@"MLCloudDatabaseRevision"];
    v24 = [v23 intValue] == 0;

    if (!v24)
    {
      v25 = os_log_create("com.apple.amp.medialibrary.migrator", "Migration");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "[Migrator] Migrated from Copper or earlier. Disabling 'show offline music' switch automatically.", buf, 2u);
      }

      v26 = CFPreferencesCopyAppValue(@"MusicShowCloudMediaEnabledSettingRevisionID", @"com.apple.mobileipod");
      if ((objc_opt_respondsToSelector() & 1) == 0 || [v26 integerValue] < 1)
      {
        CFPreferencesSetAppValue(@"MusicShowCloudMediaEnabledSettingRevisionID", &off_4218, @"com.apple.mobileipod");
        CFPreferencesSetAppValue(@"MusicShowCloudMediaEnabledSetting", 0, @"com.apple.mobileipod");
      }
    }

    v27 = os_log_create("com.apple.amp.medialibrary.migrator", "Migration");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Requesting to update spotlight indexes for Music and Videos", buf, 2u);
    }

    v28 = +[MLMediaLibraryService sharedMediaLibraryService];
    [v28 updateSpotlightIndexForBundleID:@"com.apple.Music" withCompletion:0];

    v29 = +[MLMediaLibraryService sharedMediaLibraryService];
    [v29 updateSpotlightIndexForBundleID:@"com.apple.videos" withCompletion:0];
  }

  v30 = os_log_create("com.apple.amp.medialibrary.migrator", "Migration");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "[Migrator] Migration successful", buf, 2u);
  }

  self->_migrated = 1;
  return 1;
}

- (MLMMediaLibraryMigrator)init
{
  v6.receiver = self;
  v6.super_class = MLMMediaLibraryMigrator;
  v2 = [(MLMMediaLibraryMigrator *)&v6 init];
  if (v2)
  {
    v3 = +[ML3MusicLibrary allLibraries];
    libraries = v2->_libraries;
    v2->_libraries = v3;

    v2->_migrated = 0;
  }

  return v2;
}

@end