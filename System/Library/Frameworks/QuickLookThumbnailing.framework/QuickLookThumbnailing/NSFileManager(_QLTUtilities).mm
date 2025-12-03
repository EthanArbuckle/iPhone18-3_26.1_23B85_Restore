@interface NSFileManager(_QLTUtilities)
+ (void)_QLTRemoveTemporaryDirectoryAtURL:()_QLTUtilities;
@end

@implementation NSFileManager(_QLTUtilities)

+ (void)_QLTRemoveTemporaryDirectoryAtURL:()_QLTUtilities
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v4 path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (v7)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = 0;
    v9 = [defaultManager2 removeItemAtURL:v4 error:&v15];
    v10 = v15;

    v11 = _log();
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(NSFileManager(_QLTUtilities) *)a2 _QLTRemoveTemporaryDirectoryAtURL:v4, v12];
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      *buf = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v10;
      _os_log_error_impl(&dword_1CA1E7000, v12, OS_LOG_TYPE_ERROR, "%@ Could not remove temporary directory at url %@. %@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)_QLTRemoveTemporaryDirectoryAtURL:()_QLTUtilities .cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_1CA1E7000, a3, OS_LOG_TYPE_DEBUG, "%@ Removed temporary directory at url %@.", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end