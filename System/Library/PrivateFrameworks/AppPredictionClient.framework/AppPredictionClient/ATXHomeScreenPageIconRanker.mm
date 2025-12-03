@interface ATXHomeScreenPageIconRanker
- (ATXHomeScreenPageIconRanker)init;
- (ATXHomeScreenPageIconRanker)initWithCache:(id)cache;
- (id)_pageForPageIndex:(unint64_t)index;
- (id)iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:(unint64_t)index;
@end

@implementation ATXHomeScreenPageIconRanker

- (ATXHomeScreenPageIconRanker)init
{
  v3 = objc_opt_new();
  v4 = [(ATXHomeScreenPageIconRanker *)self initWithCache:v3];

  return v4;
}

- (ATXHomeScreenPageIconRanker)initWithCache:(id)cache
{
  cacheCopy = cache;
  v9.receiver = self;
  v9.super_class = ATXHomeScreenPageIconRanker;
  v6 = [(ATXHomeScreenPageIconRanker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cache, cache);
  }

  return v7;
}

- (id)iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:(unint64_t)index
{
  v3 = [(ATXHomeScreenPageIconRanker *)self _pageForPageIndex:index];
  v4 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v8 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:-2419200.0];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;

    v11 = BiomeLibrary();
    v12 = [v11 App];
    inFocus = [v12 InFocus];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v15 = [inFocus atx_publisherFromStartTime:v14];

    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_2;
    v64[3] = &unk_1E80C1DE8;
    v52 = v3;
    v16 = v3;
    v65 = v16;
    v17 = v6;
    v66 = v17;
    v18 = v5;
    v67 = v18;
    v19 = v7;
    v68 = v19;
    v53 = v15;
    v20 = [v15 sinkWithCompletion:&__block_literal_global_22 receiveInput:v64];
    v21 = objc_opt_new();
    leafIcons = [v16 leafIcons];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_5;
    v61[3] = &unk_1E80C1E10;
    v23 = v18;
    v62 = v23;
    v24 = v21;
    v63 = v24;
    [leafIcons enumerateObjectsUsingBlock:v61];

    v25 = __atxlog_handle_default();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    allObjects = [v17 allObjects];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_27;
    v59[3] = &unk_1E80C17F0;
    v27 = v17;
    v60 = v27;
    v28 = [allObjects sortedArrayUsingComparator:v59];

    v29 = __atxlog_handle_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    leafIcons2 = [v16 leafIcons];
    v31 = [leafIcons2 _pas_mappedArrayWithIndexedTransform:&__block_literal_global_32_0];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v4;
    }

    v34 = v33;

    v35 = __atxlog_handle_default();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    v36 = objc_opt_new();
    v37 = v16;
    v38 = objc_opt_new();
    leafIcons3 = [v37 leafIcons];

    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __folderIndexesForPage_block_invoke;
    v69[3] = &unk_1E80C1E58;
    v70 = v38;
    v40 = v38;
    [leafIcons3 enumerateObjectsUsingBlock:v69];

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_34;
    v56[3] = &unk_1E80C1218;
    v41 = v19;
    v57 = v41;
    v42 = v36;
    v58 = v42;
    [v40 enumerateIndexesUsingBlock:v56];

    v43 = __atxlog_handle_default();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    allObjects2 = [v41 allObjects];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_36;
    v54[3] = &unk_1E80C17F0;
    v45 = v41;
    v55 = v45;
    v46 = [allObjects2 sortedArrayUsingComparator:v54];

    v47 = __atxlog_handle_default();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    v4 = objc_opt_new();
    v48 = [v42 copy];
    [v4 addObjectsFromArray:v48];

    v49 = [v24 copy];
    [v4 addObjectsFromArray:v49];

    [v4 addObjectsFromArray:v34];
    [v4 addObjectsFromArray:v46];
    [v4 addObjectsFromArray:v28];
    v50 = __atxlog_handle_default();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    v3 = v52;
  }

  return v4;
}

void __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_2(id *a1, void *a2)
{
  v3 = [a2 eventBody];
  if ([v3 starting])
  {
    v4 = [v3 bundleID];
    v5 = [a1[4] leafIcons];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_3;
    v7[3] = &unk_1E80C1DC0;
    v8 = v4;
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v6 = v4;
    [v5 enumerateObjectsUsingBlock:v7];
  }
}

void __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 bundleId];
    if ([*(a1 + 32) isEqualToString:v8])
    {
      v9 = *(a1 + 40);
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v9 addObject:v10];

      [*(a1 + 48) addObject:*(a1 + 32)];
      *a4 = 1;

      goto LABEL_7;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_4;
    v11[3] = &unk_1E80C1D98;
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v14 = a3;
    [v7 enumerateApps:v11];
  }

LABEL_7:
}

void __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_4(void *a1, void *a2)
{
  v3 = [a2 bundleId];
  v4 = [v3 isEqualToString:a1[4]];

  if (v4)
  {
    v5 = a1[5];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
    [v5 addObject:v6];
  }
}

uint64_t __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v11;
  if (isKindOfClass)
  {
    v7 = [v11 bundleId];
    if (([*(a1 + 32) containsObject:v7] & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v8 addObject:v9];
    }

    v6 = v11;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v6);
}

uint64_t __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
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

id __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_29(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_34(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_36(uint64_t a1, uint64_t a2, void *a3)
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

- (id)_pageForPageIndex:(unint64_t)index
{
  v22 = *MEMORY[0x1E69E9840];
  cache = self->_cache;
  v20 = 0;
  v5 = [(ATXHomeScreenConfigCache *)cache loadHomeScreenAndTodayPageConfigurationsWithError:&v20];
  v6 = v20;
  if (v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenPageIconRanker _pageForPageIndex:];
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 pageIndex] == index)
        {
          v14 = v13;
          goto LABEL_15;
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

  v14 = 0;
LABEL_15:

  return v14;
}

- (void)_pageForPageIndex:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1BF549000, v0, OS_LOG_TYPE_ERROR, "ATXHomeScreenPageIconRanker: Unable to retrieve home screen config: %@", v1, 0xCu);
}

@end