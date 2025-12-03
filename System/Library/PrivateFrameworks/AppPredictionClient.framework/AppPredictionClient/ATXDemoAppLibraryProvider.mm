@interface ATXDemoAppLibraryProvider
+ (BOOL)isAppLibraryDemoModeEnabled;
+ (id)_parseCategory:(id)category realCategories:(id)categories;
+ (id)bundleIdsForCategoryWithName:(id)name in:(id)in;
+ (id)demoAppCategoriesForRealAppCategories:(id)categories;
+ (id)demoSuggestionsAndRecents;
+ (id)loadCategoriesFromDisk;
+ (void)loadCategoriesFromDisk;
@end

@implementation ATXDemoAppLibraryProvider

+ (BOOL)isAppLibraryDemoModeEnabled
{
  if (![MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x1E698B030]];
  if (([v4 BOOLForKey:@"ATXAppLibraryDemoModeEnabled"] & 1) != 0 || objc_msgSend(v4, "BOOLForKey:", @"SpotlightPlusDemoModeEnabled"))
  {
    demoAppLibraryPath = [self demoAppLibraryPath];
    if (demoAppLibraryPath)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v7 = [defaultManager fileExistsAtPath:demoAppLibraryPath];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)loadCategoriesFromDisk
{
  demoAppLibraryPath = [self demoAppLibraryPath];
  v11 = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:demoAppLibraryPath options:0 error:&v11];
  v4 = v11;
  if (v3)
  {
    v10 = v4;
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v10];
    v6 = v10;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v5;
      v7 = v5;
    }

    else
    {
      v8 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[(ATXDemoAppLibraryProvider *)v6];
      }

      v7 = 0;
    }
  }

  else
  {
    v5 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(ATXDemoAppLibraryProvider *)v4];
    }

    v7 = 0;
    v6 = v4;
  }

  return v7;
}

+ (id)bundleIdsForCategoryWithName:(id)name in:(id)in
{
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  inCopy = in;
  v7 = [inCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(inCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{@"name", v16}];
        v13 = [v12 isEqualToString:nameCopy];

        if (v13)
        {
          v14 = [v11 objectForKeyedSubscript:@"apps"];
          goto LABEL_11;
        }
      }

      v8 = [inCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

+ (id)demoSuggestionsAndRecents
{
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_INFO, "[Demo] Demo suggestions and recents requested", v11, 2u);
  }

  if ([self isAppLibraryDemoModeEnabled])
  {
    loadCategoriesFromDisk = [self loadCategoriesFromDisk];
    if ([loadCategoriesFromDisk count] > 1)
    {
      v7 = [ATXAppDirectoryResponse alloc];
      v5 = [self bundleIdsForCategoryWithName:@"Recents" in:loadCategoriesFromDisk];
      v8 = [self bundleIdsForCategoryWithName:@"Suggestions" in:loadCategoriesFromDisk];
      v9 = [self bundleIdsForCategoryWithName:@"Hidden" in:loadCategoriesFromDisk];
      v6 = [(ATXAppDirectoryResponse *)v7 initWithoutDedupingForRecents:v5 predictedApps:v8 hiddenApps:v9 error:0];
    }

    else
    {
      v5 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[(ATXDemoAppLibraryProvider *)v5];
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_parseCategory:(id)category realCategories:(id)categories
{
  v50 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  categoriesCopy = categories;
  v7 = [categoryCopy objectForKeyedSubscript:@"apps"];
  v8 = [v7 mutableCopy];

  v9 = [categoryCopy objectForKeyedSubscript:@"name"];
  if ([v9 isEqualToString:@"Suggestions"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"Recents"))
  {
    v10 = 0;
  }

  else
  {
    v11 = off_1E80BF000;
    if (([v9 isEqualToString:@"Arcade"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"Apple Arcade"))
    {
      v12 = [ATXAppDirectoryCategory alloc];
      appIdentitiesFromBundleIDs = [v8 appIdentitiesFromBundleIDs];
      v14 = [(ATXAppDirectoryCategory *)v12 initWithCategoryID:2 appIdentities:appIdentitiesFromBundleIDs];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v15 = categoriesCopy;
      v16 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v16)
      {
        v17 = v16;
        v38 = v14;
        v39 = categoriesCopy;
        v18 = *v45;
LABEL_8:
        v19 = 0;
        while (1)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v44 + 1) + 8 * v19);
          if ([v20 categoryID] == 2)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
            if (v17)
            {
              goto LABEL_8;
            }

            categoriesCopy = v39;
            goto LABEL_24;
          }
        }

LABEL_26:
        v14 = v20;

        categoriesCopy = v39;
      }
    }

    else
    {
      v21 = [ATXAppDirectoryCategory alloc];
      appIdentitiesFromBundleIDs2 = [v8 appIdentitiesFromBundleIDs];
      v14 = [(ATXAppDirectoryCategory *)v21 initWithCategoryID:1 appIdentitites:appIdentitiesFromBundleIDs2 localizedName:v9];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v23 = categoriesCopy;
      v24 = [v23 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v24)
      {
        v25 = v24;
        v38 = v14;
        v39 = categoriesCopy;
        v26 = *v41;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v41 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v20 = *(*(&v40 + 1) + 8 * i);
            v28 = [v20 localizedStringForCategoryID:{objc_msgSend(v20, "categoryID", v38)}];
            v29 = [v9 isEqualToString:v28];

            if (v29)
            {
              v11 = off_1E80BF000;
              goto LABEL_26;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }

        categoriesCopy = v39;
        v11 = off_1E80BF000;
LABEL_24:
        v14 = v38;
      }
    }

    appIdentities = [(ATXAppDirectoryCategory *)v14 appIdentities];
    bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];
    v32 = [bundleIDsFromIdentities mutableCopy];

    [v32 removeObjectsInArray:v8];
    [v8 addObjectsFromArray:v32];
    v33 = objc_alloc(v11[24]);
    categoryID = [(ATXAppDirectoryCategory *)v14 categoryID];
    appIdentitiesFromBundleIDs3 = [v8 appIdentitiesFromBundleIDs];
    localizedName = [(ATXAppDirectoryCategory *)v14 localizedName];
    v10 = [v33 initWithCategoryID:categoryID appIdentitites:appIdentitiesFromBundleIDs3 localizedName:localizedName];
  }

  return v10;
}

+ (id)demoAppCategoriesForRealAppCategories:(id)categories
{
  v18 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  if ([self isAppLibraryDemoModeEnabled])
  {
    v5 = objc_opt_new();
    loadCategoriesFromDisk = [self loadCategoriesFromDisk];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [loadCategoriesFromDisk countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(loadCategoriesFromDisk);
          }

          v11 = [self _parseCategory:*(*(&v13 + 1) + 8 * i) realCategories:categoriesCopy];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [loadCategoriesFromDisk countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)loadCategoriesFromDisk
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "[Demo] Could not load demo app library: %@", &v2, 0xCu);
}

@end