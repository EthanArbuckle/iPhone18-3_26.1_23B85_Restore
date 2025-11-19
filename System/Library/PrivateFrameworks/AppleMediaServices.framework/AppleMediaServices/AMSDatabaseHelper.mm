@interface AMSDatabaseHelper
+ (BOOL)_addSkipBackupAttribute:(BOOL)a3 forURL:(id)a4;
+ (BOOL)removeDatabaseAtURL:(id)a3 error:(id *)a4;
+ (BOOL)removeDatabaseForCachePath:(id)a3 error:(id *)a4;
+ (BOOL)removeDatabaseForDataVaultPath:(id)a3 error:(id *)a4;
+ (id)_cachesURLForCachePath:(id)a3;
+ (id)_databaseNameForType:(int64_t)a3;
+ (id)dataVaultURLForDataVaultPath:(id)a3;
+ (id)databaseFolderNameForType:(int64_t)a3;
+ (id)databasePathForCachePath:(id)a3 type:(int64_t)a4;
+ (id)databasePathForDataVaultPath:(id)a3 type:(int64_t)a4;
+ (id)databaseURLForCachePath:(id)a3 type:(int64_t)a4;
+ (id)databaseURLForDataVaultPath:(id)a3 type:(int64_t)a4;
+ (void)_applyProtectionClassForDirectoryAtURL:(id)a3;
@end

@implementation AMSDatabaseHelper

+ (id)databasePathForCachePath:(id)a3 type:(int64_t)a4
{
  v4 = [a1 databaseURLForCachePath:a3 type:a4];
  v5 = [v4 path];

  return v5;
}

+ (id)databasePathForDataVaultPath:(id)a3 type:(int64_t)a4
{
  v4 = [a1 databaseURLForDataVaultPath:a3 type:a4];
  v5 = [v4 path];

  return v5;
}

+ (id)databaseURLForCachePath:(id)a3 type:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [a1 _cachesURLForCachePath:a3];
  if (v6)
  {
    v7 = [a1 _databaseNameForType:a4];
    v8 = [v6 URLByAppendingPathComponent:v7];

    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = AMSHashIfNeeded(v8);
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: Database location = %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)databaseURLForDataVaultPath:(id)a3 type:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [a1 dataVaultURLForDataVaultPath:a3];
  if (v6)
  {
    v7 = [a1 _databaseNameForType:a4];
    v8 = [v6 URLByAppendingPathComponent:v7];

    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = AMSHashIfNeeded(v8);
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: Database location = %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)dataVaultURLForDataVaultPath:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    v10 = AMSHashIfNeeded(v9);
    v11 = AMSHashIfNeeded(v5);
    *buf = 138543874;
    v29 = v8;
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ | dataVaultPath = %{public}@", buf, 0x20u);
  }

  v12 = +[AMSUnitTests isRunningUnitTests];
  v13 = MEMORY[0x1E695DFF8];
  if (!v12)
  {
    v15 = [MEMORY[0x1E695DFF8] ams_dataVaultDirectory];
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_15:
    v25 = 0;
    goto LABEL_16;
  }

  v14 = NSTemporaryDirectory();
  v15 = [v13 fileURLWithPath:v14];

  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_7:
  v16 = [v15 URLByAppendingPathComponent:v5];

  v17 = [MEMORY[0x1E696AC08] defaultManager];
  v27 = 0;
  v18 = [v17 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v27];
  v19 = v27;

  if ((v18 & 1) == 0)
  {
    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = AMSHashIfNeeded(v5);
      v24 = AMSLogableError(v19);
      *buf = 138543874;
      v29 = v22;
      v30 = 2114;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create %{public}@ directory in data vault. error = %{public}@", buf, 0x20u);
    }
  }

  [a1 _addSkipBackupAttribute:1 forURL:v16];
  v25 = v16;

LABEL_16:

  return v25;
}

+ (BOOL)removeDatabaseForCachePath:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _cachesURLForCachePath:v6];
  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = AMSHashIfNeeded(v7);
      v16 = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_INFO, "%{public}@: Removing database at cache URL: %{public}@.", &v16, 0x16u);
    }

    v12 = [AMSDatabaseHelper removeDatabaseAtURL:v7 error:a4];
  }

  else
  {
    if (a4)
    {
      *a4 = AMSError(0, @"Unable to determine cachesURL.", @"Unable to determine cachesURL while removing database.", 0);
    }

    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove database at path: %{public}@. Unable to determine the URL.", &v16, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

+ (BOOL)removeDatabaseForDataVaultPath:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 dataVaultURLForDataVaultPath:v6];
  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = AMSHashIfNeeded(v7);
      v18 = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_INFO, "%{public}@: Removing database at data vault URL: %{public}@.", &v18, 0x16u);
    }

    v12 = [AMSDatabaseHelper removeDatabaseAtURL:v7 error:a4];
  }

  else
  {
    if (a4)
    {
      *a4 = AMSError(0, @"Unable to determine dataVaultURL.", @"Unable to determine dataVaultURL while removing database.", 0);
    }

    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSHashIfNeeded(v6);
      v18 = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v16;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove database at data vault path: %{public}@. Unable to determine the URL.", &v18, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

+ (BOOL)removeDatabaseAtURL:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  v7 = [v6 removeItemAtURL:v5 error:&v17];
  v8 = v17;

  if (v7)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = AMSHashIfNeeded(v5);
      *buf = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_INFO, "%{public}@: Successfully removed database at URL: %{public}@.", buf, 0x16u);
LABEL_12:
    }
  }

  else
  {
    if (a4)
    {
      v13 = v8;
      *a4 = v8;
    }

    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v12 = AMSHashIfNeeded(v5);
      v15 = AMSLogableError(v8);
      *buf = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v12;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove database at URL: %{public}@. Error = %{public}@", buf, 0x20u);

      goto LABEL_12;
    }
  }

  return v7;
}

+ (id)databaseFolderNameForType:(int64_t)a3
{
  if (_MergedGlobals_98 != -1)
  {
    dispatch_once(&_MergedGlobals_98, &__block_literal_global_35);
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = qword_1ED6E2868;
  v6 = [v4 numberWithInteger:a3];
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

+ (BOOL)_addSkipBackupAttribute:(BOOL)a3 forURL:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (!v5)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v9 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = objc_opt_class();
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Error excluding nil URL from backup", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v7 = *MEMORY[0x1E695DB80];
  v16 = 0;
  v8 = [v5 setResourceValue:v6 forKey:v7 error:&v16];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogableError(v9);
      *buf = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = v5;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Error excluding %{public}@ from backup %{public}@", buf, 0x20u);
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = 1;
LABEL_14:

  return v10;
}

+ (void)_applyProtectionClassForDirectoryAtURL:(id)a3
{
  v3 = [a3 path];
  if (v3)
  {
    v6 = v3;
    v4 = v3;
    v5 = open([v6 UTF8String], 0x1000000);
    v3 = v6;
    if (v5)
    {
      fcntl(v5, 64, 4);
      close(v5);
      v3 = v6;
    }
  }
}

+ (id)_cachesURLForCachePath:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFF8] ams_cachesDirectory];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 URLByAppendingPathComponent:v4];

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v7 absoluteString];
    v10 = [v8 fileExistsAtPath:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v19 = 0;
      v12 = [v11 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v19];
      v13 = v19;

      if (!v12 || v13)
      {
        v14 = +[AMSLogConfig sharedConfig];
        if (!v14)
        {
          v14 = +[AMSLogConfig sharedConfig];
        }

        v15 = [v14 OSLogObject];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = AMSLogableError(v13);
          *buf = 138543874;
          v21 = v16;
          v22 = 2114;
          v23 = v4;
          v24 = 2114;
          v25 = v17;
          _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create %{public}@ directory. Error = %{public}@", buf, 0x20u);
        }
      }
    }

    [a1 _applyProtectionClassForDirectoryAtURL:v7];
    [a1 _addSkipBackupAttribute:1 forURL:v7];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_databaseNameForType:(int64_t)a3
{
  if (qword_1ED6E2870 != -1)
  {
    dispatch_once(&qword_1ED6E2870, &__block_literal_global_37);
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = qword_1ED6E2878;
  v6 = [v4 numberWithInteger:a3];
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