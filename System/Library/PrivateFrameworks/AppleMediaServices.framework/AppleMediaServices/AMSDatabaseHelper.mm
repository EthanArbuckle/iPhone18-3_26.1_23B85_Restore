@interface AMSDatabaseHelper
+ (BOOL)_addSkipBackupAttribute:(BOOL)attribute forURL:(id)l;
+ (BOOL)removeDatabaseAtURL:(id)l error:(id *)error;
+ (BOOL)removeDatabaseForCachePath:(id)path error:(id *)error;
+ (BOOL)removeDatabaseForDataVaultPath:(id)path error:(id *)error;
+ (id)_cachesURLForCachePath:(id)path;
+ (id)_databaseNameForType:(int64_t)type;
+ (id)dataVaultURLForDataVaultPath:(id)path;
+ (id)databaseFolderNameForType:(int64_t)type;
+ (id)databasePathForCachePath:(id)path type:(int64_t)type;
+ (id)databasePathForDataVaultPath:(id)path type:(int64_t)type;
+ (id)databaseURLForCachePath:(id)path type:(int64_t)type;
+ (id)databaseURLForDataVaultPath:(id)path type:(int64_t)type;
+ (void)_applyProtectionClassForDirectoryAtURL:(id)l;
@end

@implementation AMSDatabaseHelper

+ (id)databasePathForCachePath:(id)path type:(int64_t)type
{
  v4 = [self databaseURLForCachePath:path type:type];
  path = [v4 path];

  return path;
}

+ (id)databasePathForDataVaultPath:(id)path type:(int64_t)type
{
  v4 = [self databaseURLForDataVaultPath:path type:type];
  path = [v4 path];

  return path;
}

+ (id)databaseURLForCachePath:(id)path type:(int64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [self _cachesURLForCachePath:path];
  if (v6)
  {
    v7 = [self _databaseNameForType:type];
    v8 = [v6 URLByAppendingPathComponent:v7];

    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = AMSHashIfNeeded(v8);
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: Database location = %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)databaseURLForDataVaultPath:(id)path type:(int64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [self dataVaultURLForDataVaultPath:path];
  if (v6)
  {
    v7 = [self _databaseNameForType:type];
    v8 = [v6 URLByAppendingPathComponent:v7];

    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = AMSHashIfNeeded(v8);
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: Database location = %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)dataVaultURLForDataVaultPath:(id)path
{
  v34 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    v10 = AMSHashIfNeeded(v9);
    v11 = AMSHashIfNeeded(pathCopy);
    *buf = 138543874;
    v29 = v8;
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ | dataVaultPath = %{public}@", buf, 0x20u);
  }

  v12 = +[AMSUnitTests isRunningUnitTests];
  v13 = MEMORY[0x1E695DFF8];
  if (!v12)
  {
    ams_dataVaultDirectory = [MEMORY[0x1E695DFF8] ams_dataVaultDirectory];
    if (ams_dataVaultDirectory)
    {
      goto LABEL_7;
    }

LABEL_15:
    v25 = 0;
    goto LABEL_16;
  }

  v14 = NSTemporaryDirectory();
  ams_dataVaultDirectory = [v13 fileURLWithPath:v14];

  if (!ams_dataVaultDirectory)
  {
    goto LABEL_15;
  }

LABEL_7:
  v16 = [ams_dataVaultDirectory URLByAppendingPathComponent:pathCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v27 = 0;
  v18 = [defaultManager createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v27];
  v19 = v27;

  if ((v18 & 1) == 0)
  {
    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = AMSHashIfNeeded(pathCopy);
      v24 = AMSLogableError(v19);
      *buf = 138543874;
      v29 = v22;
      v30 = 2114;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create %{public}@ directory in data vault. error = %{public}@", buf, 0x20u);
    }
  }

  [self _addSkipBackupAttribute:1 forURL:v16];
  v25 = v16;

LABEL_16:

  return v25;
}

+ (BOOL)removeDatabaseForCachePath:(id)path error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [self _cachesURLForCachePath:pathCopy];
  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = AMSHashIfNeeded(v7);
      v16 = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Removing database at cache URL: %{public}@.", &v16, 0x16u);
    }

    v12 = [AMSDatabaseHelper removeDatabaseAtURL:v7 error:error];
  }

  else
  {
    if (error)
    {
      *error = AMSError(0, @"Unable to determine cachesURL.", @"Unable to determine cachesURL while removing database.", 0);
    }

    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = pathCopy;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove database at path: %{public}@. Unable to determine the URL.", &v16, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

+ (BOOL)removeDatabaseForDataVaultPath:(id)path error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [self dataVaultURLForDataVaultPath:pathCopy];
  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = AMSHashIfNeeded(v7);
      v18 = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Removing database at data vault URL: %{public}@.", &v18, 0x16u);
    }

    v12 = [AMSDatabaseHelper removeDatabaseAtURL:v7 error:error];
  }

  else
  {
    if (error)
    {
      *error = AMSError(0, @"Unable to determine dataVaultURL.", @"Unable to determine dataVaultURL while removing database.", 0);
    }

    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSHashIfNeeded(pathCopy);
      v18 = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v16;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove database at data vault path: %{public}@. Unable to determine the URL.", &v18, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

+ (BOOL)removeDatabaseAtURL:(id)l error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  v7 = [defaultManager removeItemAtURL:lCopy error:&v17];
  v8 = v17;

  if (v7)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = AMSHashIfNeeded(lCopy);
      *buf = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Successfully removed database at URL: %{public}@.", buf, 0x16u);
LABEL_12:
    }
  }

  else
  {
    if (error)
    {
      v13 = v8;
      *error = v8;
    }

    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v12 = AMSHashIfNeeded(lCopy);
      v15 = AMSLogableError(v8);
      *buf = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v12;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove database at URL: %{public}@. Error = %{public}@", buf, 0x20u);

      goto LABEL_12;
    }
  }

  return v7;
}

+ (id)databaseFolderNameForType:(int64_t)type
{
  if (_MergedGlobals_98 != -1)
  {
    dispatch_once(&_MergedGlobals_98, &__block_literal_global_35);
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = qword_1ED6E2868;
  v6 = [v4 numberWithInteger:type];
  v7 = [v5 objectForKey:v6];

  return v7;
}

void __47__AMSDatabaseHelper_databaseFolderNameForType___block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F0779388;
  v2[1] = &unk_1F07793A0;
  v3[0] = @"Metrics";
  v3[1] = @"Storage";
  v2[2] = &unk_1F07793B8;
  v2[3] = &unk_1F07793D0;
  v3[2] = @"Accounts";
  v3[3] = @"Engagement";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = qword_1ED6E2868;
  qword_1ED6E2868 = v0;
}

+ (BOOL)_addSkipBackupAttribute:(BOOL)attribute forURL:(id)l
{
  attributeCopy = attribute;
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = objc_opt_class();
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Error excluding nil URL from backup", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:attributeCopy];
  v7 = *MEMORY[0x1E695DB80];
  v16 = 0;
  v8 = [lCopy setResourceValue:v6 forKey:v7 error:&v16];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    oSLogObject = +[AMSLogConfig sharedConfig];
    if (!oSLogObject)
    {
      oSLogObject = +[AMSLogConfig sharedConfig];
    }

    v11OSLogObject = [oSLogObject OSLogObject];
    if (os_log_type_enabled(v11OSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogableError(v9);
      *buf = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = lCopy;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_192869000, v11OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Error excluding %{public}@ from backup %{public}@", buf, 0x20u);
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = 1;
LABEL_14:

  return v10;
}

+ (void)_applyProtectionClassForDirectoryAtURL:(id)l
{
  path = [l path];
  if (path)
  {
    v6 = path;
    v4 = path;
    v5 = open([v6 UTF8String], 0x1000000);
    path = v6;
    if (v5)
    {
      fcntl(v5, 64, 4);
      close(v5);
      path = v6;
    }
  }
}

+ (id)_cachesURLForCachePath:(id)path
{
  v26 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  ams_cachesDirectory = [MEMORY[0x1E695DFF8] ams_cachesDirectory];
  if (ams_cachesDirectory)
  {
    v6 = ams_cachesDirectory;
    v7 = [ams_cachesDirectory URLByAppendingPathComponent:pathCopy];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    absoluteString = [v7 absoluteString];
    v10 = [defaultManager fileExistsAtPath:absoluteString];

    if ((v10 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v19 = 0;
      v12 = [defaultManager2 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v19];
      v13 = v19;

      if (!v12 || v13)
      {
        v14 = +[AMSLogConfig sharedConfig];
        if (!v14)
        {
          v14 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v14 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = AMSLogableError(v13);
          *buf = 138543874;
          v21 = v16;
          v22 = 2114;
          v23 = pathCopy;
          v24 = 2114;
          v25 = v17;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create %{public}@ directory. Error = %{public}@", buf, 0x20u);
        }
      }
    }

    [self _applyProtectionClassForDirectoryAtURL:v7];
    [self _addSkipBackupAttribute:1 forURL:v7];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_databaseNameForType:(int64_t)type
{
  if (qword_1ED6E2870 != -1)
  {
    dispatch_once(&qword_1ED6E2870, &__block_literal_global_37);
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = qword_1ED6E2878;
  v6 = [v4 numberWithInteger:type];
  v7 = [v5 objectForKey:v6];

  v8 = [v7 stringByAppendingPathExtension:@"sqlitedb"];

  return v8;
}

void __42__AMSDatabaseHelper__databaseNameForType___block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F0779388;
  v2[1] = &unk_1F07793A0;
  v3[0] = @"metrics";
  v3[1] = @"storage";
  v2[2] = &unk_1F07793B8;
  v2[3] = &unk_1F07793D0;
  v3[2] = @"cookies";
  v3[3] = @"engagement";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = qword_1ED6E2878;
  qword_1ED6E2878 = v0;
}

@end