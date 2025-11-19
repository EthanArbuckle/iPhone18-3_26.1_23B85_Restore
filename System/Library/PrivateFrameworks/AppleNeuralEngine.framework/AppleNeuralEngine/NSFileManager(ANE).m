@interface NSFileManager(ANE)
+ (uint64_t)ane_addWriteModeForPath:()ANE;
+ (uint64_t)ane_addWriteModeIfMissing:()ANE originalMode:;
@end

@implementation NSFileManager(ANE)

+ (uint64_t)ane_addWriteModeIfMissing:()ANE originalMode:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if ((a4 & 0x80) == 0 && chmod([v6 fileSystemRepresentation], a4 | 0x80) == -1)
  {
    v11 = +[_ANELog common];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = *__error();
      v14 = 138413058;
      v15 = v12;
      v16 = 2112;
      v17 = v7;
      v18 = 1024;
      v19 = a4;
      v20 = 1024;
      v21 = v13;
      _os_log_error_impl(&dword_1AD246000, v11, OS_LOG_TYPE_ERROR, "%@: fail to chmod (%@) with originalMode=0x%x errno=%{darwin:errno}d", &v14, 0x22u);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (uint64_t)ane_addWriteModeForPath:()ANE
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  memset(&v20, 0, sizeof(v20));
  if (stat([v5 fileSystemRepresentation], &v20) == -1)
  {
    v8 = +[_ANELog common];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NSFileManager(ANE) *)a2 ane_addWriteModeForPath:v5, v8];
    }

    v7 = 0;
  }

  else
  {
    v7 = [a1 ane_addWriteModeIfMissing:v5 originalMode:v20.st_mode];
  }

  v19 = v6;
  v9 = [v6 enumeratorAtPath:v5];
  v10 = [v9 nextObject];
  if (v10)
  {
    v11 = v10;
    v12 = *MEMORY[0x1E696A370];
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [v5 stringByAppendingPathComponent:v11];
      v15 = [v9 fileAttributes];
      v16 = [v15 objectForKeyedSubscript:v12];

      v7 = [a1 ane_addWriteModeIfMissing:v14 originalMode:{objc_msgSend(v16, "unsignedShortValue")}] & v7;
      objc_autoreleasePoolPop(v13);
      v17 = [v9 nextObject];

      v11 = v17;
    }

    while (v17);
  }

  return v7;
}

+ (void)ane_addWriteModeForPath:()ANE .cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = *__error();
  v8 = 138412802;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  v12 = 1024;
  v13 = v6;
  _os_log_error_impl(&dword_1AD246000, a3, OS_LOG_TYPE_ERROR, "%@: fail to stat (%@) with errno=%{darwin:errno}d", &v8, 0x1Cu);

  v7 = *MEMORY[0x1E69E9840];
}

@end