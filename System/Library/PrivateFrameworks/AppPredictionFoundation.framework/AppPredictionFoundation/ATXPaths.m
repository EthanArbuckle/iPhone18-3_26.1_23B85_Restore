@interface ATXPaths
+ (id)appPredictionBackupDirectory;
+ (id)appPredictionCacheDirectory;
+ (id)appPredictionDirectoryFile:(id)a3;
+ (id)appPredictionDirectoryFile:(id)a3 forClientWithIdentifier:(id)a4;
+ (id)appPredictionDirectoryForClientWithIdentifier:(id)a3;
+ (id)biomeStreamsRootDirectory;
+ (id)bookmarksPathFile:(id)a3;
+ (id)clientModelCachesRootDirectory;
+ (id)contextualActionsModelDirectory;
+ (id)contextualActionsModelFileWithFilename:(id)a3;
+ (id)feedbackRootDirectory;
+ (id)magicalMomentsPredictionTablesRootDirectory;
+ (id)metricsRootDirectory;
+ (id)modeCachesRootDirectory;
+ (id)modificationDateOfFileAtPath:(id)a3;
+ (id)onboardingStackResultCacheFilePath;
+ (id)scoreNormalizationModelDirectory;
+ (id)scoreNormalizationModelFileWithFilename:(id)a3;
+ (id)trialFolderResourcePath;
+ (id)uiCachesRootDirectory;
+ (id)widgetPredictionModelDirectory;
+ (id)widgetPredictionModelFileWithFilename:(id)a3;
+ (void)_recursivelyCreateDirectoryWithErrorHandlingAtPath:(id)a3;
+ (void)createDataVault:(id)a3;
+ (void)createDirectoriesIfNeeded;
@end

@implementation ATXPaths

+ (id)uiCachesRootDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"UICaches"];

  return v3;
}

+ (id)clientModelCachesRootDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"ClientModelCaches"];

  return v3;
}

+ (id)biomeStreamsRootDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"streams"];

  return v3;
}

+ (id)appPredictionCacheDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"caches"];

  return v3;
}

+ (void)createDirectoriesIfNeeded
{
  v16[12] = *MEMORY[0x277D85DE8];
  v3 = [a1 _getDirectoryCreating:1 clientIdentifier:0];
  v16[0] = @"MagicalMoments";
  v16[1] = @"caches";
  v16[2] = @"ClientModelCaches";
  v16[3] = @"UICaches";
  v16[4] = @"feedback";
  v16[5] = @"streams";
  v16[6] = @"metrics";
  v16[7] = @"models";
  v16[8] = @"ModeCaches";
  v16[9] = @"Bookmarks";
  v16[10] = @"WidgetPredictionModelDirectory";
  v16[11] = @"ScoreNormalizationModel";
  [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:12];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 stringByAppendingPathComponent:{*(*(&v11 + 1) + 8 * v8), v11}];
        [a1 _recursivelyCreateDirectoryWithErrorHandlingAtPath:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)_recursivelyCreateDirectoryWithErrorHandlingAtPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v7 = [v6 code];
    v8 = __atxlog_handle_default();
    v9 = v8;
    if (v7 == 640)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ATXPaths *)v3 _recursivelyCreateDirectoryWithErrorHandlingAtPath:v9];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      +[ATXPaths _recursivelyCreateDirectoryWithErrorHandlingAtPath:];
    }
  }
}

+ (id)appPredictionDirectoryForClientWithIdentifier:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__ATXPaths_appPredictionDirectoryForClientWithIdentifier___block_invoke;
  v5[3] = &__block_descriptor_41_e5_v8__0l;
  v5[4] = a1;
  v6 = 0;
  if (appPredictionDirectoryForClientWithIdentifier__onceToken != -1)
  {
    dispatch_once(&appPredictionDirectoryForClientWithIdentifier__onceToken, v5);
  }

  v3 = appPredictionDirectoryForClientWithIdentifier__dir;

  return v3;
}

uint64_t __58__ATXPaths_appPredictionDirectoryForClientWithIdentifier___block_invoke(uint64_t a1)
{
  appPredictionDirectoryForClientWithIdentifier__dir = [*(a1 + 32) _getDirectoryCreating:*(a1 + 40) clientIdentifier:0];

  return MEMORY[0x2821F96F8]();
}

+ (void)createDataVault:(id)a3
{
  v3 = a3;
  v4 = [v3 UTF8String];
  v5 = rootless_check_datavault_flag();
  if (v5 == 1)
  {
    if (chmod(v4, 0x1C0u))
    {
      v6 = __atxlog_handle_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[ATXPaths createDataVault:];
      }
    }

    else
    {
      v11 = rootless_convert_to_datavault();
      v12 = __atxlog_handle_default();
      v6 = v12;
      if (!v11)
      {
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        v13 = 0;
        v7 = "Directory successfully converted to Data Vault";
        v8 = &v13;
        v9 = v6;
        v10 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_5;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[ATXPaths createDataVault:];
      }
    }
  }

  else if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[ATXPaths createDataVault:];
    }
  }

  else
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "Data Vault already created";
      v8 = buf;
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
LABEL_5:
      _os_log_impl(&dword_226368000, v9, v10, v7, v8, 2u);
    }
  }

LABEL_11:
}

+ (id)appPredictionDirectoryFile:(id)a3
{
  v3 = a3;
  v4 = +[ATXPaths appPredictionDirectory];
  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

+ (id)appPredictionDirectoryFile:(id)a3 forClientWithIdentifier:(id)a4
{
  v5 = a3;
  v6 = [ATXPaths appPredictionDirectoryForClientWithIdentifier:a4];
  v7 = [v6 stringByAppendingPathComponent:v5];

  return v7;
}

+ (id)appPredictionBackupDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"Backups"];

  return v3;
}

+ (id)magicalMomentsPredictionTablesRootDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"MagicalMoments"];

  return v3;
}

+ (id)feedbackRootDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"feedback"];

  return v3;
}

+ (id)metricsRootDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"metrics"];

  return v3;
}

+ (id)trialFolderResourcePath
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"models"];

  return v3;
}

+ (id)modeCachesRootDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"ModeCaches"];

  return v3;
}

+ (id)bookmarksPathFile:(id)a3
{
  v3 = a3;
  v4 = +[ATXPaths appPredictionDirectory];
  v5 = [v4 stringByAppendingPathComponent:@"Bookmarks"];
  v6 = [v5 stringByAppendingPathComponent:v3];

  return v6;
}

+ (id)contextualActionsModelDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"ContextualActionsModel"];

  return v3;
}

+ (id)contextualActionsModelFileWithFilename:(id)a3
{
  v4 = a3;
  v5 = [a1 contextualActionsModelDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

+ (id)scoreNormalizationModelDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"ScoreNormalizationModel"];

  return v3;
}

+ (id)scoreNormalizationModelFileWithFilename:(id)a3
{
  v4 = a3;
  v5 = [a1 scoreNormalizationModelDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

+ (id)widgetPredictionModelDirectory
{
  v2 = +[ATXPaths appPredictionDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"WidgetPredictionModelDirectory"];

  return v3;
}

+ (id)widgetPredictionModelFileWithFilename:(id)a3
{
  v4 = a3;
  v5 = [a1 widgetPredictionModelDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

+ (id)onboardingStackResultCacheFilePath
{
  v2 = +[ATXPaths appPredictionBackupDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"ATXOnboardingStackResultCache"];

  return v3;
}

+ (id)modificationDateOfFileAtPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v5 = [v4 attributesOfItemAtPath:v3 error:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ATXPaths modificationDateOfFileAtPath:];
    }

    v8 = 0;
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA150]];
  }

  return v8;
}

+ (void)_recursivelyCreateDirectoryWithErrorHandlingAtPath:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_226368000, v0, OS_LOG_TYPE_FAULT, "Could not create directory: %@ path: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_recursivelyCreateDirectoryWithErrorHandlingAtPath:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "Could not create directory (out of space): %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)createDataVault:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)createDataVault:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)createDataVault:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)modificationDateOfFileAtPath:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_226368000, v0, OS_LOG_TYPE_ERROR, "Encountered error getting file age for path: %@. Error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end