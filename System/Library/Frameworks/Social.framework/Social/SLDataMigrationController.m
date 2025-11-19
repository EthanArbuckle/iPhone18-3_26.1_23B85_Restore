@interface SLDataMigrationController
+ (id)sharedController;
- (BOOL)needsFileProtectionUpgradeForProfileImagesAtPath:(id)a3 serviceNameForLogging:(id)a4;
- (BOOL)needsMigrationForSocialDaemonBundleID:(id)a3 preferenceKey:(id)a4;
- (void)didFinishMigrationForSocialDaemonBundleID:(id)a3 preferenceKey:(id)a4;
- (void)ensureSocialUserDataDirectory;
- (void)removeAncillarySocialDatabaseFilesWithPrefix:(id)a3 serviceNameForLogging:(id)a4;
@end

@implementation SLDataMigrationController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[SLDataMigrationController sharedController];
  }

  v3 = sharedController_sharedController;

  return v3;
}

uint64_t __45__SLDataMigrationController_sharedController__block_invoke()
{
  sharedController_sharedController = objc_alloc_init(SLDataMigrationController);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)needsMigrationForSocialDaemonBundleID:(id)a3 preferenceKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = DMCopyCurrentBuildVersion();
  v8 = *MEMORY[0x1E695E8B8];
  v9 = *MEMORY[0x1E695E8B0];
  CFPreferencesSynchronize(v6, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v10 = CFPreferencesCopyValue(v5, v6, v8, v9);

  v11 = v7 && (!v10 || [v7 compare:v10 options:1]);
  return v11;
}

- (void)didFinishMigrationForSocialDaemonBundleID:(id)a3 preferenceKey:(id)a4
{
  applicationID = a3;
  v5 = a4;
  v6 = DMCopyCurrentBuildVersion();
  if (v6)
  {
    v7 = *MEMORY[0x1E695E8B8];
    v8 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(v5, v6, applicationID, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    CFPreferencesSynchronize(applicationID, v7, v8);
  }
}

- (void)ensureSocialUserDataDirectory
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = SLUserDataDirectory();
  if (([v3 fileExistsAtPath:v2] & 1) == 0)
  {
    [v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (BOOL)needsFileProtectionUpgradeForProfileImagesAtPath:(id)a3 serviceNameForLogging:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v9 = [v8 contentsOfDirectoryAtPath:v6 error:&v20];
  v10 = v20;
  if (v10)
  {
    v11 = v10;
    _SLLog(v4, 3, @"Failed to get contents of %@ profile image directory with errror %@");
    v12 = 0;
  }

  else
  {
    if (![v9 count])
    {
      v12 = 0;
      goto LABEL_11;
    }

    v18 = [v9 lastObject];
    v13 = [@"/" stringByAppendingString:?];
    v14 = [v6 stringByAppendingString:v13];

    v19 = 0;
    v15 = [v8 attributesOfItemAtPath:v14 error:&v19];
    v11 = v19;
    v16 = [v15 objectForKey:*MEMORY[0x1E696A3A0]];
    v12 = 1;
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v16 isEqualToString:*MEMORY[0x1E696A378]])
      {
        v12 = 0;
      }
    }
  }

LABEL_11:
  _SLLog(v4, 3, @"%@ needs profile image file protection upgrade? %d");

  return v12;
}

- (void)removeAncillarySocialDatabaseFilesWithPrefix:(id)a3 serviceNameForLogging:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SLUserDataDirectory();
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = v8;
  v19 = [v9 contentsOfDirectoryAtPath:v8 error:0];
  v10 = v7;
  _SLLog(v4, 7, @"%@ migration got contents of social directory %@");
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v19;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:{16, v7, v19}];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if ([v16 hasPrefix:v6])
        {
          v17 = [@"/" stringByAppendingString:v16];
          v18 = [v20 stringByAppendingString:v17];

          _SLLog(v4, 7, @"%@ migration trying to delete %@");
          [v9 removeItemAtPath:v18 error:{0, v10, v18}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }
}

@end