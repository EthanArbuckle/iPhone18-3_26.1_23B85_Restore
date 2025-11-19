@interface ATXAppIconState
@end

@implementation ATXAppIconState

uint64_t __45___ATXAppIconState_allAppsKnownToSpringBoard__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __54___ATXAppIconState_allInstalledAppsKnownToSpringBoard__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54___ATXAppIconState_allInstalledAppsKnownToSpringBoard__block_invoke_2;
  v2[3] = &unk_27859D4E0;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __54___ATXAppIconState_allInstalledAppsKnownToSpringBoard__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isInstalled])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __27___ATXAppIconState__reload__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 folderPages];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27___ATXAppIconState__reload__block_invoke_3;
    v8[3] = &unk_27859D490;
    v9 = *(a1 + 32);
    v10 = a3;
    [v7 enumerateObjectsUsingBlock:v8];
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __27___ATXAppIconState__reload__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v15 bundleId];
    v8 = [objc_alloc(MEMORY[0x277CCAA70]) initWithIndex:{objc_msgSend(*(a1 + 32), "pageIndex")}];
    v9 = [v8 indexPathByAddingIndex:a3];

    if (a4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v9 indexPathByAddingIndex:a4];

      v11 = *(a1 + 40);
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      [v11 addObject:v12];

      v9 = v10;
    }

    v13 = -[_ATXIconLocation initWithIndexPath:isOnDock:existsInAppLibraryOnly:isInstalled:]([_ATXIconLocation alloc], "initWithIndexPath:isOnDock:existsInAppLibraryOnly:isInstalled:", v9, 0, 0, [*(a1 + 56) containsObject:v7] ^ 1);
    [*(a1 + 48) setObject:v13 forKeyedSubscript:v7];
  }

  return MEMORY[0x2821F96F8]();
}

void __27___ATXAppIconState__reload__block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a2 contents];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        (*(*(a1 + 32) + 16))();
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __65___ATXAppIconState_springboardPageNumbersWithAppPredictionPanels__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __64___ATXAppIconState_springboardPageNumbersWithSuggestionsWidgets__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __34___ATXAppIconState_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [_ATXAppIconState alloc];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D66AB8] atx_sharedInstance];
  v4 = [(_ATXAppIconState *)v1 initWithHomeScreenConfigCache:v2 sbsHomeScreenService:v3];
  v5 = sharedInstance__pasExprOnceResult_22;
  sharedInstance__pasExprOnceResult_22 = v4;

  objc_autoreleasePoolPop(v0);
}

void __71___ATXAppIconState_initWithHomeScreenConfigCache_sbsHomeScreenService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _reload];
  }

  else
  {
    v3 = __atxlog_handle_gi();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __71___ATXAppIconState_initWithHomeScreenConfigCache_sbsHomeScreenService___block_invoke_cold_1();
    }
  }
}

void __71___ATXAppIconState_initWithHomeScreenConfigCache_sbsHomeScreenService___block_invoke_48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[14] runAfterDelaySeconds:0 coalescingBehavior:0.1];
  }

  else
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __71___ATXAppIconState_initWithHomeScreenConfigCache_sbsHomeScreenService___block_invoke_cold_1();
    }
  }
}

void __33___ATXAppIconState_allDockedApps__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33___ATXAppIconState_allDockedApps__block_invoke_2;
  v2[3] = &unk_27859D4E0;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __33___ATXAppIconState_allDockedApps__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isOnDock])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __33___ATXAppIconState_allFolderApps__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33___ATXAppIconState_allFolderApps__block_invoke_2;
  v2[3] = &unk_27859D4E0;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __33___ATXAppIconState_allFolderApps__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 indexPath];
  v6 = [v5 length];

  if (v6 == 3)
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __42___ATXAppIconState_appOnDockWithBundleId___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 isOnDock];
}

void __44___ATXAppIconState_appInFolderWithBundleId___block_invoke(void *a1)
{
  v3 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v2 = [v3 indexPath];
  *(*(a1[6] + 8) + 24) = [v2 length] == 3;
}

uint64_t __53___ATXAppIconState_springboardPageNumberForBundleId___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t __55___ATXAppIconState_springboardPageLocationForBundleId___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t __48___ATXAppIconState_folderPageNumberForBundleId___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __42___ATXAppIconState_nonFolderAppSetOnPages__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 64);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42___ATXAppIconState_nonFolderAppSetOnPages__block_invoke_2;
  v19[3] = &unk_27859D508;
  v4 = v2;
  v20 = v4;
  v21 = *(a1 + 40);
  [v3 enumerateKeysAndObjectsUsingBlock:v19];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(*(a1 + 32) + 88);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [*(a1 + 40) objectForKeyedSubscript:{v10, v15}];

        if (!v11)
        {
          v12 = objc_opt_new();
          [*(a1 + 40) setObject:v12 forKeyedSubscript:v10];
        }

        v13 = [*(a1 + 40) objectForKeyedSubscript:v10];
        [v13 addObjectsFromArray:v4];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __42___ATXAppIconState_nonFolderAppSetOnPages__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if ([v5 isOnDock])
  {
    [*(a1 + 32) addObject:v14];
  }

  else
  {
    v6 = [v5 indexPath];
    v7 = [v6 length];

    if (v7 == 2)
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [v5 indexPath];
      v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "indexAtPosition:", 0)}];

      v11 = [*(a1 + 40) objectForKeyedSubscript:v10];

      if (!v11)
      {
        v12 = objc_opt_new();
        [*(a1 + 40) setObject:v12 forKeyedSubscript:v10];
      }

      v13 = [*(a1 + 40) objectForKeyedSubscript:v10];
      [v13 addObject:v14];
    }
  }
}

void __44___ATXAppIconState_getFirstVisiblePageIndex__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 88) count])
  {
    v2 = [*(*(a1 + 32) + 88) firstObject];
    *(*(*(a1 + 40) + 8) + 24) = [v2 unsignedIntegerValue];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = -1;
  }
}

void __71___ATXAppIconState_initWithHomeScreenConfigCache_sbsHomeScreenService___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end