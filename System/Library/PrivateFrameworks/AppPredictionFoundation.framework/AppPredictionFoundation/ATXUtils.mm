@interface ATXUtils
+ (BOOL)isInTrashPath:(id)path;
+ (BOOL)shouldSkipExpensiveTask;
+ (id)shuffle:(id)shuffle;
+ (void)logCurrentMemoryFootprint:(id)footprint;
@end

@implementation ATXUtils

+ (BOOL)shouldSkipExpensiveTask
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForAppDataDictionary = [MEMORY[0x277CFE338] keyPathForAppDataDictionary];
  v4 = [userContext objectForKeyedSubscript:keyPathForAppDataDictionary];
  appBundleIdKey = [MEMORY[0x277CFE338] appBundleIdKey];
  v6 = [v4 objectForKeyedSubscript:appBundleIdKey];

  v7 = [v6 isEqualToString:@"com.apple.camera"];
  if (v7)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_226368000, v8, OS_LOG_TYPE_DEFAULT, "Should hold off on expensive task", v10, 2u);
    }
  }

  return v7;
}

+ (id)shuffle:(id)shuffle
{
  shuffleCopy = shuffle;
  if ([shuffleCopy count])
  {
    allObjects = [shuffleCopy allObjects];
    v5 = [allObjects mutableCopy];

    v6 = [v5 count];
    v7 = v6 - 1;
    if (v6 != 1)
    {
      do
      {
        [v5 exchangeObjectAtIndex:v7 withObjectAtIndex:arc4random_uniform(v7 + 1)];
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

+ (void)logCurrentMemoryFootprint:(id)footprint
{
  v12 = *MEMORY[0x277D85DE8];
  footprintCopy = footprint;
  if ([MEMORY[0x277D42590] isInternalBuild])
  {
    v4 = ATXMemoryUsageInMBOfCurrentProcess();
    v5 = __atxlog_handle_default();
    v6 = v5;
    if (v4 < 0.0)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[ATXUtils logCurrentMemoryFootprint:];
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      v9 = v4;
      v10 = 2112;
      v11 = footprintCopy;
      _os_log_impl(&dword_226368000, v6, OS_LOG_TYPE_DEFAULT, "[MemoryLogging] Physical memory footprint: %lf MB, context: %@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isInTrashPath:(id)path
{
  pathCopy = path;
  v10 = 2;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  [defaultManager getRelationship:&v10 ofDirectory:102 inDomain:0 toItemAtURL:pathCopy error:&v9];
  v5 = v9;

  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXUtils *)pathCopy isInTrashPath:v5];
    }

    v7 = 0;
  }

  else
  {
    v7 = v10 == 0;
  }

  return v7;
}

+ (void)logCurrentMemoryFootprint:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_3(&dword_226368000, v1, v2, "proc_pid_rusage returned error: %s, context: %@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)isInTrashPath:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v11 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_3(&dword_226368000, v4, v5, "Error retrieving relationship of %{sensitive}@ to Trash folder: %@", v6, v7, v8, v9, 3u);

  v10 = *MEMORY[0x277D85DE8];
}

@end