@interface ATXAppLaunchSequenceManager
@end

@implementation ATXAppLaunchSequenceManager

void __46___ATXAppLaunchSequenceManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(_ATXAppLaunchSequenceManager);
  v2 = sharedInstance__pasExprOnceResult_27;
  sharedInstance__pasExprOnceResult_27 = v1;

  objc_autoreleasePoolPop(v0);
}

void __50___ATXAppLaunchSequenceManager_initWithDataStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deleteAllLaunchesForBundles:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 deleteAllLaunchesForAppActions:v3];
}

void __56___ATXAppLaunchSequenceManager_launchSequenceForBundle___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [[_ATXAppLaunchSequence alloc] initWithPreviousLaunch:a1[5] dataStore:*(a1[4] + 8)];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[5];
    v9 = *(a1[4] + 16);
    v10 = *(*(a1[6] + 8) + 40);

    [v9 setObject:v10 forKey:v8];
  }
}

void __59___ATXAppLaunchSequenceManager_launchSequenceForAppAction___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [[_ATXAppLaunchSequence alloc] initWithPreviousAppActionLaunch:a1[5] dataStore:*(a1[4] + 8)];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[5];
    v9 = *(a1[4] + 24);
    v10 = *(*(a1[6] + 8) + 40);

    [v9 setObject:v10 forKey:v8];
  }
}

void __74___ATXAppLaunchSequenceManager_decayAllLaunchSequencesWithHalfLifeInDays___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 8);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74___ATXAppLaunchSequenceManager_decayAllLaunchSequencesWithHalfLifeInDays___block_invoke_2;
  v18[3] = &unk_27859C988;
  v5 = v3;
  v19 = v5;
  [v4 enumerateAppInfoBundlesExecutingBlock:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [*(*(a1 + 32) + 16) objectForKey:{v11, v14}];
        if (!v12)
        {
          v12 = [[_ATXAppLaunchSequence alloc] initWithPreviousLaunch:v11 dataStore:*(*(a1 + 32) + 8)];
        }

        [(_ATXAppLaunchSequence *)v12 decayWithHalfLifeInDays:*(a1 + 40)];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x277D85DE8];
}

void __83___ATXAppLaunchSequenceManager_decayAllAppActionLaunchSequencesWithHalfLifeInDays___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 8);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83___ATXAppLaunchSequenceManager_decayAllAppActionLaunchSequencesWithHalfLifeInDays___block_invoke_2;
  v18[3] = &unk_27859C988;
  v5 = v3;
  v19 = v5;
  [v4 enumerateAppInfoAppActionsExecutingBlock:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [*(*(a1 + 32) + 24) objectForKey:{v11, v14}];
        if (!v12)
        {
          v12 = [[_ATXAppLaunchSequence alloc] initWithPreviousAppActionLaunch:v11 dataStore:*(*(a1 + 32) + 8)];
        }

        [(_ATXAppLaunchSequence *)v12 decayWithHalfLifeInDays:*(a1 + 40)];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x277D85DE8];
}

void __60___ATXAppLaunchSequenceManager_deleteAllLaunchesForBundles___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 8);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __60___ATXAppLaunchSequenceManager_deleteAllLaunchesForBundles___block_invoke_2;
  v30[3] = &unk_27859E020;
  v31 = *(a1 + 40);
  v5 = v3;
  v32 = v5;
  [v4 enumerateAppInfoBundlesExecutingBlock:v30];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [*(*(a1 + 32) + 16) objectForKey:v11];
        if (!v12)
        {
          v12 = [[_ATXAppLaunchSequence alloc] initWithPreviousLaunch:v11 dataStore:*(*(a1 + 32) + 8)];
        }

        [(_ATXAppLaunchSequence *)v12 deleteDataForLaunches:*(a1 + 40)];
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = *(a1 + 40);
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = [*(*(a1 + 32) + 16) objectForKey:{v18, v22}];
        v20 = v19;
        if (v19)
        {
          [v19 deleteAllInformation];
          [*(*(a1 + 32) + 16) removeObjectForKey:v18];
        }

        else
        {
          [*(*(a1 + 32) + 8) deleteLaunchesFollowingBundle:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v33 count:16];
    }

    while (v15);
  }

  objc_autoreleasePoolPop(v2);
  v21 = *MEMORY[0x277D85DE8];
}

void __60___ATXAppLaunchSequenceManager_deleteAllLaunchesForBundles___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __63___ATXAppLaunchSequenceManager_deleteAllLaunchesForAppActions___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 8);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63___ATXAppLaunchSequenceManager_deleteAllLaunchesForAppActions___block_invoke_2;
  v30[3] = &unk_27859E020;
  v31 = *(a1 + 40);
  v5 = v3;
  v32 = v5;
  [v4 enumerateAppInfoAppActionsExecutingBlock:v30];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [*(*(a1 + 32) + 24) objectForKey:v11];
        if (!v12)
        {
          v12 = [[_ATXAppLaunchSequence alloc] initWithPreviousAppActionLaunch:v11 dataStore:*(*(a1 + 32) + 8)];
        }

        [(_ATXAppLaunchSequence *)v12 deleteDataForLaunches:*(a1 + 40)];
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = *(a1 + 40);
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = [*(*(a1 + 32) + 24) objectForKey:{v18, v22}];
        v20 = v19;
        if (v19)
        {
          [v19 deleteAllInformation];
          [*(*(a1 + 32) + 24) removeObjectForKey:v18];
        }

        else
        {
          [*(*(a1 + 32) + 8) deleteLaunchesFollowingAppAction:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v33 count:16];
    }

    while (v15);
  }

  objc_autoreleasePoolPop(v2);
  v21 = *MEMORY[0x277D85DE8];
}

void __63___ATXAppLaunchSequenceManager_deleteAllLaunchesForAppActions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t __46___ATXAppLaunchSequenceManager_launchSequence__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) appLaunchSequence];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

@end