@interface ATXHomeScreenPageAppRanker
- (id)appsInAscendingOrderOfHistoricalUsage:(id)usage;
- (id)appsInAscendingOrderOfHistoricalUsageForPage:(unint64_t)page;
@end

@implementation ATXHomeScreenPageAppRanker

- (id)appsInAscendingOrderOfHistoricalUsageForPage:(unint64_t)page
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v20 = 0;
  v6 = [v5 loadHomeScreenAndTodayPageConfigurationsWithError:&v20];
  v7 = v20;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    v12 = MEMORY[0x1E695E0F0];
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 pageIndex] == page)
        {
          v12 = [(ATXHomeScreenPageAppRanker *)self appsInAscendingOrderOfHistoricalUsage:v14];
          goto LABEL_12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

LABEL_12:

  return v12;
}

- (id)appsInAscendingOrderOfHistoricalUsage:(id)usage
{
  nonFolderAppsOnPage = [usage nonFolderAppsOnPage];
  v4 = [nonFolderAppsOnPage mutableCopy];

  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:-2419200.0];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = BiomeLibrary();
  v10 = [v9 App];
  inFocus = [v10 InFocus];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v13 = [inFocus atx_publisherFromStartTime:v12];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __68__ATXHomeScreenPageAppRanker_appsInAscendingOrderOfHistoricalUsage___block_invoke_2;
  v25[3] = &unk_1E80C2220;
  v26 = v4;
  v14 = v5;
  v27 = v14;
  v15 = v4;
  v16 = [v13 sinkWithCompletion:&__block_literal_global_26 receiveInput:v25];
  [v15 minusSet:v14];
  allObjects = [v15 allObjects];
  v18 = [allObjects mutableCopy];

  allObjects2 = [v14 allObjects];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68__ATXHomeScreenPageAppRanker_appsInAscendingOrderOfHistoricalUsage___block_invoke_3;
  v23[3] = &unk_1E80C17F0;
  v24 = v14;
  v20 = v14;
  v21 = [allObjects2 sortedArrayUsingComparator:v23];
  [v18 addObjectsFromArray:v21];

  return v18;
}

void __68__ATXHomeScreenPageAppRanker_appsInAscendingOrderOfHistoricalUsage___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 eventBody];
  v3 = [v4 bundleID];
  if ([v4 starting] && objc_msgSend(*(a1 + 32), "containsObject:", v3))
  {
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t __68__ATXHomeScreenPageAppRanker_appsInAscendingOrderOfHistoricalUsage___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 > v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

@end