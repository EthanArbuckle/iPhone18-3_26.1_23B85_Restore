@interface FPPendingSetEnumerator
- (FPPendingSetEnumerator)initWithManager:(id)a3;
- (void)currentSyncAnchorWithCompletionHandler:(id)a3;
- (void)enumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4;
- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4;
@end

@implementation FPPendingSetEnumerator

- (FPPendingSetEnumerator)initWithManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = FPPendingSetEnumerator;
  v6 = [(FPPendingSetEnumerator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, a3);
    domainVersion = v7->_domainVersion;
    v7->_domainVersion = 0;

    v7->_refreshInterval = 0.0;
    v7->_maximumSizeReached = 0;
  }

  return v7;
}

- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isEqualToData:&_NSFileProviderInitialPageSortedByName] & 1) != 0 || objc_msgSend(v7, "isEqualToData:", &_NSFileProviderInitialPageSortedByDate))
  {
    v8 = objc_opt_new();

    v7 = v8;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v6 suggestedPageSize];
  }

  else
  {
    v9 = 200;
  }

  manager = self->_manager;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__FPPendingSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke;
  v13[3] = &unk_1E793E668;
  v14 = v7;
  v15 = self;
  v16 = v6;
  v17 = v9;
  v11 = v6;
  v12 = v7;
  [(NSFileProviderManager *)manager domainServicerWithCompletionHandler:v13];
}

void __67__FPPendingSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__FPPendingSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_2;
  v6[3] = &unk_1E793E6B8;
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6[4] = a1[5];
  v7 = v4;
  [a2 enumeratePendingSetFromSyncAnchor:v3 suggestedBatchSize:v5 completionHandler:v6];
}

void __67__FPPendingSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_2(uint64_t a1, void *a2, double a3, uint64_t a4, int a5, char a6, void *a7, void *a8, void *a9)
{
  v16 = a2;
  v17 = a7;
  v18 = a9;
  if (v18)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __67__FPPendingSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_2_cold_1();
    }

    [*(a1 + 40) finishEnumeratingWithError:v18];
  }

  else
  {
    v20 = [a8 domainVersion];
    v21 = *(a1 + 32);
    v22 = *(v21 + 16);
    *(v21 + 16) = v20;

    *(*(a1 + 32) + 24) = a3;
    *(*(a1 + 32) + 32) = a6;
    if ([v16 count])
    {
      v23 = *(a1 + 40);
      v24 = [v16 fp_map:&__block_literal_global_442];
      [v23 didEnumerateItems:v24];
    }

    if (a5)
    {
      v25 = v17;
    }

    else
    {
      v25 = 0;
    }

    [*(a1 + 40) finishEnumeratingUpToPage:v25];
  }
}

id __67__FPPendingSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_440(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 itemVersion];
  v4 = [v3 versionRewritingBeforeFirstSync];
  [v2 setItemVersion:v4];

  return v2;
}

- (void)enumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 suggestedBatchSize];
  }

  else
  {
    v8 = 200;
  }

  manager = self->_manager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__FPPendingSetEnumerator_enumerateChangesForObserver_fromSyncAnchor___block_invoke;
  v12[3] = &unk_1E793E668;
  v13 = v7;
  v14 = self;
  v15 = v6;
  v16 = v8;
  v10 = v6;
  v11 = v7;
  [(NSFileProviderManager *)manager domainServicerWithCompletionHandler:v12];
}

void __69__FPPendingSetEnumerator_enumerateChangesForObserver_fromSyncAnchor___block_invoke(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__FPPendingSetEnumerator_enumerateChangesForObserver_fromSyncAnchor___block_invoke_2;
  v6[3] = &unk_1E793E6B8;
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6[4] = a1[5];
  v7 = v4;
  [a2 enumeratePendingSetFromSyncAnchor:v3 suggestedBatchSize:v5 completionHandler:v6];
}

void __69__FPPendingSetEnumerator_enumerateChangesForObserver_fromSyncAnchor___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, void *a6, void *a7, void *a8, double a9)
{
  v17 = a2;
  v18 = a3;
  v19 = a6;
  v20 = a8;
  if (v20)
  {
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __67__FPPendingSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_2_cold_1();
    }

    [*(a1 + 40) finishEnumeratingWithError:v20];
  }

  else
  {
    v22 = [a7 domainVersion];
    v23 = *(a1 + 32);
    v24 = *(v23 + 16);
    *(v23 + 16) = v22;

    *(*(a1 + 32) + 24) = a9;
    *(*(a1 + 32) + 32) = a5;
    if ([v18 count])
    {
      v25 = *(a1 + 40);
      v26 = [v18 fp_map:&__block_literal_global_446];
      [v25 didDeleteItemsWithIdentifiers:v26];
    }

    if ([v17 count])
    {
      v27 = *(a1 + 40);
      v28 = [v17 fp_map:&__block_literal_global_449];
      [v27 didUpdateItems:v28];
    }

    [*(a1 + 40) finishEnumeratingChangesUpToSyncAnchor:v19 moreComing:a4];
  }
}

id __69__FPPendingSetEnumerator_enumerateChangesForObserver_fromSyncAnchor___block_invoke_2_447(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 itemVersion];
  v4 = [v3 versionRewritingBeforeFirstSync];
  [v2 setItemVersion:v4];

  return v2;
}

- (void)currentSyncAnchorWithCompletionHandler:(id)a3
{
  v4 = a3;
  manager = self->_manager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__FPPendingSetEnumerator_currentSyncAnchorWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E793E690;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSFileProviderManager *)manager domainServicerWithCompletionHandler:v7];
}

void __65__FPPendingSetEnumerator_currentSyncAnchorWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__FPPendingSetEnumerator_currentSyncAnchorWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E793E6E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 currentPendingSetSyncAnchorWithCompletionHandler:v4];
}

uint64_t __65__FPPendingSetEnumerator_currentSyncAnchorWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, double a3)
{
  *(*(a1 + 32) + 24) = a3;
  *(*(a1 + 32) + 32) = a2;
  return (*(*(a1 + 40) + 16))();
}

void __67__FPPendingSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, v0, v1, "[ERROR] Pending enumeration failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end