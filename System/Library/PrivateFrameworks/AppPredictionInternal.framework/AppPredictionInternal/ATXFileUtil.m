@interface ATXFileUtil
+ (BOOL)_shouldUpdateCache:(id)a3 withRefreshRate:(double)a4 currentTime:(double)a5;
+ (BOOL)cachesAreValidForBasePath:(id)a3 consumerSubTypes:(id)a4;
+ (BOOL)cachesAreValidForConsumerSubTypes:(id)a3;
+ (BOOL)shouldUpdateCache:(id)a3 withRefreshRate:(double)a4;
+ (double)cacheAgeForCache:(id)a3 withCurrentTime:(double)a4;
@end

@implementation ATXFileUtil

+ (BOOL)shouldUpdateCache:(id)a3 withRefreshRate:(double)a4
{
  v5 = a3;
  v6 = [ATXFileUtil _shouldUpdateCache:v5 withRefreshRate:a4 currentTime:CFAbsoluteTimeGetCurrent()];

  return v6;
}

+ (BOOL)_shouldUpdateCache:(id)a3 withRefreshRate:(double)a4 currentTime:(double)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if ((v10 & 1) == 0)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[ATXFileUtil _shouldUpdateCache:withRefreshRate:currentTime:];
    }

    goto LABEL_7;
  }

  [a1 cacheAgeForCache:v8 withCurrentTime:a5];
  if (v11 > a4)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[ATXFileUtil _shouldUpdateCache:withRefreshRate:currentTime:];
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v11 < 0.0)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[ATXFileUtil _shouldUpdateCache:withRefreshRate:currentTime:];
    }

    goto LABEL_7;
  }

  v15 = open([v8 UTF8String], 0);
  if (v15 < 0)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ATXFileUtil _shouldUpdateCache:withRefreshRate:currentTime:];
    }

    goto LABEL_7;
  }

  v16 = v15;
  ATXCacheFileRead();
  close(v16);
  v17 = __atxlog_handle_default();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    +[ATXFileUtil _shouldUpdateCache:withRefreshRate:currentTime:];
  }

LABEL_8:
  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (double)cacheAgeForCache:(id)a3 withCurrentTime:(double)a4
{
  v5 = a3;
  memset(&v9, 0, sizeof(v9));
  if (lstat([v5 fileSystemRepresentation], &v9))
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ATXFileUtil cacheAgeForCache:v5 withCurrentTime:v6];
    }

    v7 = 1.79769313e308;
  }

  else
  {
    v7 = a4 - (v9.st_mtimespec.tv_sec + v9.st_mtimespec.tv_nsec * 0.000000001 - *MEMORY[0x277CBECD0]);
  }

  return v7;
}

+ (BOOL)cachesAreValidForConsumerSubTypes:(id)a3
{
  v3 = MEMORY[0x277CEBCB0];
  v4 = a3;
  v5 = [v3 appPredictionDirectory];
  v6 = [v5 stringByAppendingPathComponent:@"caches/ATXCacheFile"];
  v7 = [ATXFileUtil cachesAreValidForBasePath:v6 consumerSubTypes:v4];

  return v7;
}

+ (BOOL)cachesAreValidForBasePath:(id)a3 consumerSubTypes:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
        v15 = [v14 getFullCachePathWithBaseCachePath:v5 consumerSubType:{objc_msgSend(v13, "unsignedCharValue")}];

        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        v22 = +[_ATXGlobals sharedInstance];
        [v22 defaultPredictionRefreshRate];
        LOBYTE(v21) = [ATXFileUtil shouldUpdateCache:v21 withRefreshRate:?];

        if (v21)
        {
          v23 = 0;
          goto LABEL_18;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v23 = 1;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (void)_shouldUpdateCache:withRefreshRate:currentTime:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Prediction cache doesn't yet exist, update cache at path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_shouldUpdateCache:withRefreshRate:currentTime:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Prediction cache file held invalid data (old magic number?) at path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_shouldUpdateCache:withRefreshRate:currentTime:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Prediction cache file was empty at path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_shouldUpdateCache:withRefreshRate:currentTime:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Prediction cache file open failed at path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_shouldUpdateCache:withRefreshRate:currentTime:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Prediction cache was created in the future, update cache at path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_shouldUpdateCache:withRefreshRate:currentTime:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "Prediction cache is old, update cache at path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)cacheAgeForCache:(uint64_t)a1 withCurrentTime:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v8 = 138412802;
  v9 = a1;
  v10 = 1024;
  v11 = v4;
  v12 = 2080;
  v13 = v6;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Couldn't lstat %@: [%i] %s", &v8, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

@end