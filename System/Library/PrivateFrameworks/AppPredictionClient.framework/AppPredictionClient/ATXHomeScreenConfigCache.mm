@interface ATXHomeScreenConfigCache
+ (BOOL)appPredictionPanelExistsInPage:(id)page;
+ (BOOL)hasWidgetsOnTheHomeScreenWithHomeScreenPages:(id)pages;
+ (BOOL)suggestionsWidgetExistsInPage:(id)page;
+ (id)loadHomeScreenAndTodayPageConfigurationsFromJSONAtPath:(id)path error:(id *)error;
- (ATXHomeScreenConfigCache)init;
- (ATXHomeScreenConfigCache)initWithPath:(id)path;
- (BOOL)hasWidgetsOnTheHomeScreen;
- (BOOL)writeDockAppList:(id)list error:(id *)error;
- (BOOL)writeHomeScreenPageConfigurations:(id)configurations forClientWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)writeTodayPageStacks:(id)stacks appPredictionPanels:(id)panels error:(id *)error;
- (id)homeScreenWidgetPersonalities;
- (id)loadDockAppListWithError:(id *)error;
- (id)loadHomeScreenAndTodayPageConfigurationsIncludingHidden:(BOOL)hidden forClientWithIdentifier:(id)identifier error:(id *)error;
- (id)loadHomeScreenPageConfigurationsIncludingHidden:(BOOL)hidden forClientWithIdentifier:(id)identifier error:(id *)error;
- (id)loadTodayStacksAndPanelsAsHomeScreenPageWithError:(id *)error;
- (id)prettyPrintedJSON;
- (int64_t)numOnboardingStacksOnTheHomeScreen;
- (int64_t)pageIndexOfAppPredictionPanelWithIdentifier:(id)identifier;
@end

@implementation ATXHomeScreenConfigCache

- (ATXHomeScreenConfigCache)init
{
  v3 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"CachedHomeScreenConfig"];
  v4 = [(ATXHomeScreenConfigCache *)self initWithPath:v3];

  return v4;
}

- (ATXHomeScreenConfigCache)initWithPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = ATXHomeScreenConfigCache;
  v5 = [(ATXHomeScreenConfigCache *)&v13 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [defaultManager createDirectoryAtPath:*(v5 + 1) withIntermediateDirectories:1 attributes:0 error:0];

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

- (id)loadHomeScreenAndTodayPageConfigurationsIncludingHidden:(BOOL)hidden forClientWithIdentifier:(id)identifier error:(id *)error
{
  v7 = [(ATXHomeScreenConfigCache *)self loadHomeScreenPageConfigurationsIncludingHidden:hidden forClientWithIdentifier:identifier error:?];
  if (v7)
  {
    v8 = [(ATXHomeScreenConfigCache *)self loadTodayStacksAndPanelsAsHomeScreenPageWithError:error];
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

- (id)loadHomeScreenPageConfigurationsIncludingHidden:(BOOL)hidden forClientWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v9 = objc_alloc(MEMORY[0x1E698AFF0]);
  v10 = [(ATXHomeScreenConfigCache *)self _filePathForHomeScreenPageConfigWithClientIdentifier:identifierCopy];
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

  if (error && [v18 code] != 2)
  {
    v19 = v18;
    *error = v18;
  }

  if (hidden)
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

- (BOOL)writeHomeScreenPageConfigurations:(id)configurations forClientWithIdentifier:(id)identifier error:(id *)error
{
  configurationsCopy = configurations;
  identifierCopy = identifier;
  v10 = [(ATXHomeScreenConfigCache *)self loadHomeScreenPageConfigurationsIncludingHidden:1 forClientWithIdentifier:identifierCopy error:0];
  if (v10 && [configurationsCopy isEqualToArray:v10])
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
    v15 = [(ATXHomeScreenConfigCache *)self _filePathForHomeScreenPageConfigWithClientIdentifier:identifierCopy];
    v16 = __atxlog_handle_home_screen();
    v11 = [v14 initWithCacheFilePath:v15 loggingHandle:v16 debugName:@"Home Screens"];

    v12 = [v11 storeSecureCodedObject:configurationsCopy error:error];
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
        stacks = [v5 stacks];
        v25 = [stacks countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v25)
        {
          v24 = *v31;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v31 != v24)
              {
                objc_enumerationMutation(stacks);
              }

              v7 = *(*(&v30 + 1) + 8 * i);
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              widgets = [v7 widgets];
              v9 = [widgets countByEnumeratingWithState:&v26 objects:v38 count:16];
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
                      objc_enumerationMutation(widgets);
                    }

                    v13 = *(*(&v26 + 1) + 8 * j);
                    v14 = [ATXWidgetPersonality alloc];
                    extensionBundleId = [v13 extensionBundleId];
                    widgetKind = [v13 widgetKind];
                    v17 = [(ATXWidgetPersonality *)v14 initWithExtensionBundleId:extensionBundleId kind:widgetKind];
                    [v3 addObject:v17];
                  }

                  v10 = [widgets countByEnumeratingWithState:&v26 objects:v38 count:16];
                }

                while (v10);
              }
            }

            v25 = [stacks countByEnumeratingWithState:&v30 objects:v39 count:16];
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

+ (BOOL)hasWidgetsOnTheHomeScreenWithHomeScreenPages:(id)pages
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  pagesCopy = pages;
  v4 = [pagesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(pagesCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        stacks = [v8 stacks];
        v10 = [stacks count];

        if (!v10)
        {
          panels = [v8 panels];
          v12 = [panels count];

          if (!v12)
          {
            continue;
          }
        }

        v13 = 1;
        goto LABEL_13;
      }

      v5 = [pagesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        stacks = [v4 stacks];
        v6 = [stacks countByEnumeratingWithState:&v24 objects:v33 count:16];
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
                objc_enumerationMutation(stacks);
              }

              v10 = *(*(&v24 + 1) + 8 * j);
              v20 = 0u;
              v21 = 0u;
              v22 = 0u;
              v23 = 0u;
              widgets = [v10 widgets];
              v12 = [widgets countByEnumeratingWithState:&v20 objects:v32 count:16];
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
                      objc_enumerationMutation(widgets);
                    }

                    if ([*(*(&v20 + 1) + 8 * k) isOnboardingWidget])
                    {
                      ++v2;
                      goto LABEL_21;
                    }
                  }

                  v13 = [widgets countByEnumeratingWithState:&v20 objects:v32 count:16];
                  if (v13)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_21:
            }

            v7 = [stacks countByEnumeratingWithState:&v24 objects:v33 count:16];
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

- (int64_t)pageIndexOfAppPredictionPanelWithIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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
        panels = [v9 panels];
        v11 = [panels countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(panels);
              }

              identifier = [*(*(&v22 + 1) + 8 * j) identifier];
              v16 = [identifier isEqualToString:identifierCopy];

              if (v16)
              {
                pageIndex = [v9 pageIndex];

                v5 = v20;
                goto LABEL_19;
              }
            }

            v12 = [panels countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v7 = v19;
      }

      pageIndex = 0x7FFFFFFFFFFFFFFFLL;
      v5 = v20;
      v21 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  else
  {
    pageIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_19:

  objc_autoreleasePoolPop(v5);
  return pageIndex;
}

- (id)loadDockAppListWithError:(id *)error
{
  v5 = objc_alloc(MEMORY[0x1E698AFF0]);
  _filePathForDockConfig = [(ATXHomeScreenConfigCache *)self _filePathForDockConfig];
  v7 = __atxlog_handle_home_screen();
  v8 = [v5 initWithCacheFilePath:_filePathForDockConfig loggingHandle:v7 debugName:@"Dock apps"];

  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = objc_opt_class();
  v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v17 = 0;
  v13 = [v8 readSecureCodedObjectWithMaxValidAge:v12 allowableClasses:&v17 error:-1.0];
  v14 = v17;

  if (error && [v14 code] != 2)
  {
    v15 = v14;
    *error = v14;
  }

  return v13;
}

- (BOOL)writeDockAppList:(id)list error:(id *)error
{
  listCopy = list;
  v7 = [(ATXHomeScreenConfigCache *)self loadDockAppListWithError:0];
  if (v7 && [listCopy isEqualToSet:v7])
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
    _filePathForDockConfig = [(ATXHomeScreenConfigCache *)self _filePathForDockConfig];
    v13 = __atxlog_handle_home_screen();
    v8 = [v11 initWithCacheFilePath:_filePathForDockConfig loggingHandle:v13 debugName:@"Dock apps"];

    v9 = [v8 storeSecureCodedObject:listCopy error:error];
    if (v9)
    {
      notify_post([@"com.apple.duetexpertd.dockAppListCacheUpdate" UTF8String]);
    }
  }

  return v9;
}

- (id)loadTodayStacksAndPanelsAsHomeScreenPageWithError:(id *)error
{
  v5 = objc_alloc(MEMORY[0x1E698AFF0]);
  _filePathForTodayPage = [(ATXHomeScreenConfigCache *)self _filePathForTodayPage];
  v7 = __atxlog_handle_home_screen();
  v8 = [v5 initWithCacheFilePath:_filePathForTodayPage loggingHandle:v7 debugName:@"Today page"];

  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v15 = 0;
  v11 = [v8 readSecureCodedObjectWithMaxValidAge:v10 allowableClasses:&v15 error:-1.0];
  v12 = v15;

  if (error && [v12 code] != 2)
  {
    v13 = v12;
    *error = v12;
  }

  return v11;
}

- (BOOL)writeTodayPageStacks:(id)stacks appPredictionPanels:(id)panels error:(id *)error
{
  panelsCopy = panels;
  stacksCopy = stacks;
  v10 = [(ATXHomeScreenConfigCache *)self loadTodayStacksAndPanelsAsHomeScreenPageWithError:0];
  v11 = objc_opt_new();
  [v11 setPageIndex:20000];
  [v11 setStacks:stacksCopy];

  [v11 setPanels:panelsCopy];
  LODWORD(stacksCopy) = [v10 isEqual:v11];
  v12 = __atxlog_handle_home_screen();
  v13 = v12;
  if (stacksCopy)
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
    _filePathForTodayPage = [(ATXHomeScreenConfigCache *)self _filePathForTodayPage];
    v17 = __atxlog_handle_home_screen();
    v13 = [v15 initWithCacheFilePath:_filePathForTodayPage loggingHandle:v17 debugName:@"Today page"];

    v14 = [v13 storeSecureCodedObject:v11 error:error];
    if (v14)
    {
      notify_post([@"com.apple.duetexpertd.todayPageConfigCacheUpdate" UTF8String]);
    }
  }

  return v14;
}

+ (id)loadHomeScreenAndTodayPageConfigurationsFromJSONAtPath:(id)path error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:pathCopy options:0 error:error];
  if (v6)
  {
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:error];
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
  allObjects = [v3 allObjects];

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

        dictionaryRepresentationForIntrospection = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentationForIntrospection];
        [v6 addObject:dictionaryRepresentationForIntrospection];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = objc_opt_new();
  [v13 setObject:v6 forKeyedSubscript:@"Page configurations"];
  [v13 setObject:allObjects forKeyedSubscript:@"Dock apps"];
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

+ (BOOL)appPredictionPanelExistsInPage:(id)page
{
  v36 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  v4 = pageCopy;
  if (pageCopy)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    panels = [pageCopy panels];
    v24 = [panels countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v6 = *v31;
      v7 = *MEMORY[0x1E698AF58];
      v22 = *v31;
      v23 = v4;
      v25 = panels;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(panels);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          widgets = [v9 widgets];
          v11 = [widgets countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                  objc_enumerationMutation(widgets);
                }

                v15 = *(*(&v26 + 1) + 8 * j);
                extensionBundleId = [v15 extensionBundleId];
                if ([extensionBundleId isEqualToString:v7])
                {
                  widgetKind = [v15 widgetKind];
                  v18 = ATXSpecialWidgetKindAppPredictions();
                  v19 = [widgetKind isEqualToString:v18];

                  if (v19)
                  {

                    v20 = 1;
                    v4 = v23;
                    panels = v25;
                    goto LABEL_23;
                  }
                }

                else
                {
                }
              }

              v12 = [widgets countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v12);
          }

          panels = v25;
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

+ (BOOL)suggestionsWidgetExistsInPage:(id)page
{
  v36 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  v4 = pageCopy;
  if (pageCopy)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    stacks = [pageCopy stacks];
    v24 = [stacks countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v6 = *v31;
      v7 = *MEMORY[0x1E698AFC0];
      v22 = *v31;
      v23 = v4;
      v25 = stacks;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(stacks);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          widgets = [v9 widgets];
          v11 = [widgets countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                  objc_enumerationMutation(widgets);
                }

                v15 = *(*(&v26 + 1) + 8 * j);
                extensionBundleId = [v15 extensionBundleId];
                if ([extensionBundleId isEqualToString:v7])
                {
                  widgetKind = [v15 widgetKind];
                  v18 = ATXSpecialWidgetKindSiriSuggestions();
                  v19 = [widgetKind isEqualToString:v18];

                  if (v19)
                  {

                    v20 = 1;
                    v4 = v23;
                    stacks = v25;
                    goto LABEL_23;
                  }
                }

                else
                {
                }
              }

              v12 = [widgets countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v12);
          }

          stacks = v25;
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