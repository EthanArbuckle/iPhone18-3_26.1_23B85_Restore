@interface FPMaterializedSetEnumerator
- (FPMaterializedSetEnumerator)initWithManager:(id)manager;
- (void)currentSyncAnchorWithCompletionHandler:(id)handler;
- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor;
- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page;
@end

@implementation FPMaterializedSetEnumerator

- (FPMaterializedSetEnumerator)initWithManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = FPMaterializedSetEnumerator;
  v6 = [(FPMaterializedSetEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
  }

  return v7;
}

- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page
{
  observerCopy = observer;
  pageCopy = page;
  if (([pageCopy isEqualToData:&_NSFileProviderInitialPageSortedByName] & 1) != 0 || objc_msgSend(pageCopy, "isEqualToData:", &_NSFileProviderInitialPageSortedByDate))
  {
    v8 = objc_opt_new();

    pageCopy = v8;
  }

  if (objc_opt_respondsToSelector())
  {
    suggestedPageSize = [observerCopy suggestedPageSize];
  }

  else
  {
    suggestedPageSize = 200;
  }

  manager = self->_manager;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__FPMaterializedSetEnumerator_enumerateItemsForObserver_startingAtPage___block_invoke;
  v13[3] = &unk_1E793E668;
  v14 = pageCopy;
  selfCopy = self;
  v16 = observerCopy;
  v17 = suggestedPageSize;
  v11 = observerCopy;
  v12 = pageCopy;
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

- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor
{
  observerCopy = observer;
  anchorCopy = anchor;
  if (objc_opt_respondsToSelector())
  {
    suggestedBatchSize = [observerCopy suggestedBatchSize];
  }

  else
  {
    suggestedBatchSize = 200;
  }

  manager = self->_manager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__FPMaterializedSetEnumerator_enumerateChangesForObserver_fromSyncAnchor___block_invoke;
  v12[3] = &unk_1E793E668;
  v13 = anchorCopy;
  selfCopy = self;
  v15 = observerCopy;
  v16 = suggestedBatchSize;
  v10 = observerCopy;
  v11 = anchorCopy;
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

- (void)currentSyncAnchorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  manager = self->_manager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__FPMaterializedSetEnumerator_currentSyncAnchorWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E793E690;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NSFileProviderManager *)manager domainServicerWithCompletionHandler:v7];
}

@end