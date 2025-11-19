@interface ATXHomeScreenConfigCache
+ (BOOL)appPredictionPanelExistsInPage:(id)a3;
+ (BOOL)hasWidgetsOnTheHomeScreenWithHomeScreenPages:(id)a3;
+ (BOOL)suggestionsWidgetExistsInPage:(id)a3;
+ (id)loadHomeScreenAndTodayPageConfigurationsFromJSONAtPath:(id)a3 error:(id *)a4;
- (ATXHomeScreenConfigCache)init;
- (ATXHomeScreenConfigCache)initWithPath:(id)a3;
- (BOOL)hasWidgetsOnTheHomeScreen;
- (BOOL)writeDockAppList:(id)a3 error:(id *)a4;
- (BOOL)writeHomeScreenPageConfigurations:(id)a3 forClientWithIdentifier:(id)a4 error:(id *)a5;
- (BOOL)writeTodayPageStacks:(id)a3 appPredictionPanels:(id)a4 error:(id *)a5;
- (id)homeScreenWidgetPersonalities;
- (id)loadDockAppListWithError:(id *)a3;
- (id)loadHomeScreenAndTodayPageConfigurationsIncludingHidden:(BOOL)a3 forClientWithIdentifier:(id)a4 error:(id *)a5;
- (id)loadHomeScreenPageConfigurationsIncludingHidden:(BOOL)a3 forClientWithIdentifier:(id)a4 error:(id *)a5;
- (id)loadTodayStacksAndPanelsAsHomeScreenPageWithError:(id *)a3;
- (id)prettyPrintedJSON;
- (int64_t)numOnboardingStacksOnTheHomeScreen;
- (int64_t)pageIndexOfAppPredictionPanelWithIdentifier:(id)a3;
@end

@implementation ATXHomeScreenConfigCache

- (ATXHomeScreenConfigCache)init
{
  v3 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"CachedHomeScreenConfig"];
  v4 = [(ATXHomeScreenConfigCache *)self initWithPath:v3];

  return v4;
}

- (ATXHomeScreenConfigCache)initWithPath:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ATXHomeScreenConfigCache;
  v5 = [(ATXHomeScreenConfigCache *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v8 createDirectoryAtPath:*(v5 + 1) withIntermediateDirectories:1 attributes:0 error:0];

    if ((v9 & 1) == 0)
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(ATXHomeScreenConfigCache *)v5 + 1 initWithPath:v10];
      }
    }

    v11 = v5;
  }

  return v5;
}

- (id)loadHomeScreenAndTodayPageConfigurationsIncludingHidden:(BOOL)a3 forClientWithIdentifier:(id)a4 error:(id *)a5
{
  v7 = [(ATXHomeScreenConfigCache *)self loadHomeScreenPageConfigurationsIncludingHidden:a3 forClientWithIdentifier:a4 error:?];
  if (v7)
  {
    v8 = [(ATXHomeScreenConfigCache *)self loadTodayStacksAndPanelsAsHomeScreenPageWithError:a5];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v7];
      [v9 addObject:v8];
    }

    else
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ATXHomeScreenConfigCache loadHomeScreenAndTodayPageConfigurationsIncludingHidden:forClientWithIdentifier:error:];
      }

      v9 = v7;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)loadHomeScreenPageConfigurationsIncludingHidden:(BOOL)a3 forClientWithIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = objc_alloc(MEMORY[0x1E698AFF0]);
  v10 = [(ATXHomeScreenConfigCache *)self _filePathForHomeScreenPageConfigWithClientIdentifier:v8];
  v11 = __atxlog_handle_home_screen();
  v12 = [v9 initWithCacheFilePath:v10 loggingHandle:v11 debugName:@"Home Screens"];

  v13 = objc_autoreleasePoolPush();
  v14 = objc_alloc(MEMORY[0x1E695DFD8]);
  v15 = objc_opt_class();
  v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v13);
  v23 = 0;
  v17 = [v12 readSecureCodedObjectWithMaxValidAge:v16 allowableClasses:&v23 error:-1.0];
  v18 = v23;

  if (a5 && [v18 code] != 2)
  {
    v19 = v18;
    *a5 = v18;
  }

  if (a3)
  {
    v20 = v17;
  }

  else
  {
    v20 = [v17 _pas_filteredArrayWithTest:&__block_literal_global_54];
  }

  v21 = v20;

  return v21;
}

- (BOOL)writeHomeScreenPageConfigurations:(id)a3 forClientWithIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ATXHomeScreenConfigCache *)self loadHomeScreenPageConfigurationsIncludingHidden:1 forClientWithIdentifier:v9 error:0];
  if (v10 && [v8 isEqualToArray:v10])
  {
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "Avoiding unnecessary write of home screen pages", v18, 2u);
    }

    LOBYTE(v12) = 0;
  }

  else
  {
    v13 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenConfigCache writeHomeScreenPageConfigurations:forClientWithIdentifier:error:];
    }

    v14 = objc_alloc(MEMORY[0x1E698AFF0]);
    v15 = [(ATXHomeScreenConfigCache *)self _filePathForHomeScreenPageConfigWithClientIdentifier:v9];
    v16 = __atxlog_handle_home_screen();
    v11 = [v14 initWithCacheFilePath:v15 loggingHandle:v16 debugName:@"Home Screens"];

    v12 = [v11 storeSecureCodedObject:v8 error:a5];
    if (v12)
    {
      notify_post([@"com.apple.duetexpertd.homeScreenPageConfigCacheUpdate" UTF8String]);
    }
  }

  return v12;
}

- (id)homeScreenWidgetPersonalities
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [(ATXHomeScreenConfigCache *)self loadHomeScreenPageConfigurationsIncludingHidden:1 error:0];
  v3 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v2;
  v21 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v21)
  {
    v20 = *v35;
    do
    {
      v4 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        v5 = *(*(&v34 + 1) + 8 * v4);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v23 = [v5 stacks];
        v25 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v25)
        {
          v24 = *v31;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v31 != v24)
              {
                objc_enumerationMutation(v23);
              }

              v7 = *(*(&v30 + 1) + 8 * i);
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v8 = [v7 widgets];
              v9 = [v8 countByEnumeratingWithState:&v26 objects:v38 count:16];
              if (v9)
              {
                v10 = v9;
                v11 = *v27;
                do
                {
                  for (j = 0; j != v10; ++j)
                  {
                    if (*v27 != v11)
                    {
                      objc_enumerationMutation(v8);
                    }

                    v13 = *(*(&v26 + 1) + 8 * j);
                    v14 = [ATXWidgetPersonality alloc];
                    v15 = [v13 extensionBundleId];
                    v16 = [v13 widgetKind];
                    v17 = [(ATXWidgetPersonality *)v14 initWithExtensionBundleId:v15 kind:v16];
                    [v3 addObject:v17];
                  }

                  v10 = [v8 countByEnumeratingWithState:&v26 objects:v38 count:16];
                }

                while (v10);
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v25);
        }

        v4 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v21);
  }

  return v3;
}

- (BOOL)hasWidgetsOnTheHomeScreen
{
  v2 = [(ATXHomeScreenConfigCache *)self loadHomeScreenPageConfigurationsWithError:0];
  if (v2)
  {
    v3 = [objc_opt_class() hasWidgetsOnTheHomeScreenWithHomeScreenPages:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)hasWidgetsOnTheHomeScreenWithHomeScreenPages:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 stacks];
        v10 = [v9 count];

        if (!v10)
        {
          v11 = [v8 panels];
          v12 = [v11 count];

          if (!v12)
          {
            continue;
          }
        }

        v13 = 1;
        goto LABEL_13;
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (int64_t)numOnboardingStacksOnTheHomeScreen
{
  v35 = *MEMORY[0x1E69E9840];
  [(ATXHomeScreenConfigCache *)self loadHomeScreenPageConfigurationsWithError:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v19 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  v2 = 0;
  if (v19)
  {
    v18 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v5 = [v4 stacks];
        v6 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v25;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v25 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v24 + 1) + 8 * j);
              v20 = 0u;
              v21 = 0u;
              v22 = 0u;
              v23 = 0u;
              v11 = [v10 widgets];
              v12 = [v11 countByEnumeratingWithState:&v20 objects:v32 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v21;
                while (2)
                {
                  for (k = 0; k != v13; ++k)
                  {
                    if (*v21 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    if ([*(*(&v20 + 1) + 8 * k) isOnboardingWidget])
                    {
                      ++v2;
                      goto LABEL_21;
                    }
                  }

                  v13 = [v11 countByEnumeratingWithState:&v20 objects:v32 count:16];
                  if (v13)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_21:
            }

            v7 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
          }

          while (v7);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v19);
  }

  return v2;
}

- (int64_t)pageIndexOfAppPredictionPanelWithIdentifier:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [(ATXHomeScreenConfigCache *)self loadHomeScreenAndTodayPageConfigurationsIncludingHidden:1 error:0];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v29 = 0u;
  v21 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v7 = *v27;
    v19 = *v27;
    v20 = v5;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = [v9 panels];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v22 + 1) + 8 * j) identifier];
              v16 = [v15 isEqualToString:v4];

              if (v16)
              {
                v17 = [v9 pageIndex];

                v5 = v20;
                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v7 = v19;
      }

      v17 = 0x7FFFFFFFFFFFFFFFLL;
      v5 = v20;
      v21 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_19:

  objc_autoreleasePoolPop(v5);
  return v17;
}

- (id)loadDockAppListWithError:(id *)a3
{
  v5 = objc_alloc(MEMORY[0x1E698AFF0]);
  v6 = [(ATXHomeScreenConfigCache *)self _filePathForDockConfig];
  v7 = __atxlog_handle_home_screen();
  v8 = [v5 initWithCacheFilePath:v6 loggingHandle:v7 debugName:@"Dock apps"];

  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = objc_opt_class();
  v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v17 = 0;
  v13 = [v8 readSecureCodedObjectWithMaxValidAge:v12 allowableClasses:&v17 error:-1.0];
  v14 = v17;

  if (a3 && [v14 code] != 2)
  {
    v15 = v14;
    *a3 = v14;
  }

  return v13;
}

- (BOOL)writeDockAppList:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ATXHomeScreenConfigCache *)self loadDockAppListWithError:0];
  if (v7 && [v6 isEqualToSet:v7])
  {
    v8 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "Avoiding unnecessary write of dock apps", v15, 2u);
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenConfigCache writeDockAppList:error:];
    }

    v11 = objc_alloc(MEMORY[0x1E698AFF0]);
    v12 = [(ATXHomeScreenConfigCache *)self _filePathForDockConfig];
    v13 = __atxlog_handle_home_screen();
    v8 = [v11 initWithCacheFilePath:v12 loggingHandle:v13 debugName:@"Dock apps"];

    v9 = [v8 storeSecureCodedObject:v6 error:a4];
    if (v9)
    {
      notify_post([@"com.apple.duetexpertd.dockAppListCacheUpdate" UTF8String]);
    }
  }

  return v9;
}

- (id)loadTodayStacksAndPanelsAsHomeScreenPageWithError:(id *)a3
{
  v5 = objc_alloc(MEMORY[0x1E698AFF0]);
  v6 = [(ATXHomeScreenConfigCache *)self _filePathForTodayPage];
  v7 = __atxlog_handle_home_screen();
  v8 = [v5 initWithCacheFilePath:v6 loggingHandle:v7 debugName:@"Today page"];

  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v15 = 0;
  v11 = [v8 readSecureCodedObjectWithMaxValidAge:v10 allowableClasses:&v15 error:-1.0];
  v12 = v15;

  if (a3 && [v12 code] != 2)
  {
    v13 = v12;
    *a3 = v12;
  }

  return v11;
}

- (BOOL)writeTodayPageStacks:(id)a3 appPredictionPanels:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(ATXHomeScreenConfigCache *)self loadTodayStacksAndPanelsAsHomeScreenPageWithError:0];
  v11 = objc_opt_new();
  [v11 setPageIndex:20000];
  [v11 setStacks:v9];

  [v11 setPanels:v8];
  LODWORD(v9) = [v10 isEqual:v11];
  v12 = __atxlog_handle_home_screen();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "Avoiding unnecessary write of today page", v19, 2u);
    }

    LOBYTE(v14) = 0;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenConfigCache writeTodayPageStacks:appPredictionPanels:error:];
    }

    v15 = objc_alloc(MEMORY[0x1E698AFF0]);
    v16 = [(ATXHomeScreenConfigCache *)self _filePathForTodayPage];
    v17 = __atxlog_handle_home_screen();
    v13 = [v15 initWithCacheFilePath:v16 loggingHandle:v17 debugName:@"Today page"];

    v14 = [v13 storeSecureCodedObject:v11 error:a5];
    if (v14)
    {
      notify_post([@"com.apple.duetexpertd.todayPageConfigCacheUpdate" UTF8String]);
    }
  }

  return v14;
}

+ (id)loadHomeScreenAndTodayPageConfigurationsFromJSONAtPath:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v5 options:0 error:a4];
  if (v6)
  {
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:a4];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 objectForKeyedSubscript:@"Page configurations"];
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            v16 = [ATXHomeScreenPage alloc];
            v17 = [(ATXHomeScreenPage *)v16 initFromDictionaryRepresentation:v15, v19];
            if (v17)
            {
              [v9 addObject:v17];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)prettyPrintedJSON
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(ATXHomeScreenConfigCache);
  v3 = [(ATXHomeScreenConfigCache *)v2 loadDockAppListWithError:0];
  v4 = [v3 allObjects];

  v5 = [(ATXHomeScreenConfigCache *)v2 loadHomeScreenAndTodayPageConfigurationsIncludingHidden:1 error:0];
  v6 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentationForIntrospection];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = objc_opt_new();
  [v13 setObject:v6 forKeyedSubscript:@"Page configurations"];
  [v13 setObject:v4 forKeyedSubscript:@"Dock apps"];
  v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:1 error:0];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v14 encoding:4];
  }

  else
  {
    v15 = @"{ error: Error formatting json }";
  }

  return v15;
}

+ (BOOL)appPredictionPanelExistsInPage:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [v3 panels];
    v24 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v6 = *v31;
      v7 = *MEMORY[0x1E698AF58];
      v22 = *v31;
      v23 = v4;
      v25 = v5;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v10 = [v9 widgets];
          v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v27;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v27 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v26 + 1) + 8 * j);
                v16 = [v15 extensionBundleId];
                if ([v16 isEqualToString:v7])
                {
                  v17 = [v15 widgetKind];
                  v18 = ATXSpecialWidgetKindAppPredictions();
                  v19 = [v17 isEqualToString:v18];

                  if (v19)
                  {

                    v20 = 1;
                    v4 = v23;
                    v5 = v25;
                    goto LABEL_23;
                  }
                }

                else
                {
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v12);
          }

          v5 = v25;
          v6 = v22;
        }

        v20 = 0;
        v4 = v23;
        v24 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }

    else
    {
      v20 = 0;
    }

LABEL_23:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)suggestionsWidgetExistsInPage:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [v3 stacks];
    v24 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v6 = *v31;
      v7 = *MEMORY[0x1E698AFC0];
      v22 = *v31;
      v23 = v4;
      v25 = v5;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v10 = [v9 widgets];
          v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v27;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v27 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v26 + 1) + 8 * j);
                v16 = [v15 extensionBundleId];
                if ([v16 isEqualToString:v7])
                {
                  v17 = [v15 widgetKind];
                  v18 = ATXSpecialWidgetKindSiriSuggestions();
                  v19 = [v17 isEqualToString:v18];

                  if (v19)
                  {

                    v20 = 1;
                    v4 = v23;
                    v5 = v25;
                    goto LABEL_23;
                  }
                }

                else
                {
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v12);
          }

          v5 = v25;
          v6 = v22;
        }

        v20 = 0;
        v4 = v23;
        v24 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }

    else
    {
      v20 = 0;
    }

LABEL_23:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)initWithPath:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Couldn't create directory %@", &v3, 0xCu);
}

@end