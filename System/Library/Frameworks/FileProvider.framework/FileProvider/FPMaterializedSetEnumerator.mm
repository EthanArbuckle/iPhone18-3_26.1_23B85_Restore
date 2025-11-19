@interface FPMaterializedSetEnumerator
- (FPMaterializedSetEnumerator)initWithManager:(id)a3;
- (void)currentSyncAnchorWithCompletionHandler:(id)a3;
- (void)enumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4;
- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4;
@end

@implementation FPMaterializedSetEnumerator

- (FPMaterializedSetEnumerator)initWithManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FPMaterializedSetEnumerator;
  v6 = [(FPMaterializedSetEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, a3);
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
  v13[2] = __72__FPMaterializedSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke;
  v13[3] = &unk_1E793E668;
  v14 = v7;
  v15 = self;
  v16 = v6;
  v17 = v9;
  v11 = v6;
  v12 = v7;
  [(NSFileProviderManager *)manager domainServicerWithCompletionHandler:v13];
}

void __72__FPMaterializedSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__FPMaterializedSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_2;
  v6[3] = &unk_1E793E640;
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6[4] = a1[5];
  v7 = v4;
  [a2 enumerateMaterializedSetFromSyncAnchor:v3 suggestedBatchSize:v5 completionHandler:v6];
}

void __72__FPMaterializedSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v11 = a5;
  if (a7)
  {
    [*(a1 + 40) finishEnumeratingWithError:a7];
  }

  else
  {
    if ([v15 count])
    {
      v12 = *(a1 + 40);
      v13 = [v15 fp_map:&__block_literal_global_413];
      [v12 didEnumerateItems:v13];
    }

    if (a4)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    [*(a1 + 40) finishEnumeratingUpToPage:v14];
  }
}

id __72__FPMaterializedSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke_3(uint64_t a1, void *a2)
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
  v12[2] = __74__FPMaterializedSetEnumerator_enumerateChangesForObserver_fromSyncAnchor___block_invoke;
  v12[3] = &unk_1E793E668;
  v13 = v7;
  v14 = self;
  v15 = v6;
  v16 = v8;
  v10 = v6;
  v11 = v7;
  [(NSFileProviderManager *)manager domainServicerWithCompletionHandler:v12];
}

void __74__FPMaterializedSetEnumerator_enumerateChangesForObserver_fromSyncAnchor___block_invoke(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__FPMaterializedSetEnumerator_enumerateChangesForObserver_fromSyncAnchor___block_invoke_2;
  v6[3] = &unk_1E793E640;
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6[4] = a1[5];
  v7 = v4;
  [a2 enumerateMaterializedSetFromSyncAnchor:v3 suggestedBatchSize:v5 completionHandler:v6];
}

void __74__FPMaterializedSetEnumerator_enumerateChangesForObserver_fromSyncAnchor___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v18 = a2;
  v12 = a3;
  v13 = a5;
  if (a7)
  {
    [*(a1 + 40) finishEnumeratingWithError:a7];
  }

  else
  {
    if ([v12 count])
    {
      v14 = *(a1 + 40);
      v15 = [v12 fp_map:&__block_literal_global_419];
      [v14 didDeleteItemsWithIdentifiers:v15];
    }

    if ([v18 count])
    {
      v16 = *(a1 + 40);
      v17 = [v18 fp_map:&__block_literal_global_421];
      [v16 didUpdateItems:v17];
    }

    [*(a1 + 40) finishEnumeratingChangesUpToSyncAnchor:v13 moreComing:a4];
  }
}

id __74__FPMaterializedSetEnumerator_enumerateChangesForObserver_fromSyncAnchor___block_invoke_4(uint64_t a1, void *a2)
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
  v7[2] = __70__FPMaterializedSetEnumerator_currentSyncAnchorWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E793E690;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSFileProviderManager *)manager domainServicerWithCompletionHandler:v7];
}

@end