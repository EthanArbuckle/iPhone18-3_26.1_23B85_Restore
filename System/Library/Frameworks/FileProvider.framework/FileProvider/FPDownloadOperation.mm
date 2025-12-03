@interface FPDownloadOperation
- (FPDownloadOperation)initWithItems:(id)items;
- (FPDownloadOperation)initWithRemoteOperation:(id)operation info:(id)info;
- (id)fp_prettyDescription;
- (void)_completedWithResultsByRoot:(id)root errorsByRoot:(id)byRoot error:(id)error;
- (void)_recomputeDownloadInfoIfNecessary;
- (void)_removeProgressWithItemID:(id)d;
- (void)_retrieveChildProgressForItem:(id)item childProxies:(id)proxies parentSetup:(id)setup;
- (void)_runWithRemoteOperation:(id)operation;
- (void)_setupParentProgress;
- (void)_updateParentProgressForItem:(id)item withUnitCount:(id)count;
- (void)_updateProgressWithUpdatedFileCountForItem:(id)item;
- (void)actionMain;
- (void)completedWithResult:(id)result error:(id)error;
- (void)finishWithResult:(id)result error:(id)error;
- (void)presendNotifications;
- (void)remoteOperationCompletedRoot:(id)root resultingItem:(id)item error:(id)error completion:(id)completion;
- (void)remoteOperationCreatedRoot:(id)root resultingItem:(id)item completion:(id)completion;
- (void)remoteOperationProgressesAreReady;
@end

@implementation FPDownloadOperation

- (void)_recomputeDownloadInfoIfNecessary
{
  if (!self->_info)
  {
    v3 = +[FPDaemonOperationManager sharedInstance];
    generateLocalOperationID = [v3 generateLocalOperationID];

    v5 = [(NSArray *)self->_items fp_map:&__block_literal_global_26];
    v6 = [(FPActionOperationInfo *)[FPDownloadInfo alloc] initWithOperationID:generateLocalOperationID roots:v5];
    info = self->_info;
    self->_info = v6;

    [(FPDownloadInfo *)self->_info setRecursively:1];
  }

  _t_patchActionOperationInfo = [(FPDownloadOperation *)self _t_patchActionOperationInfo];

  if (_t_patchActionOperationInfo)
  {
    _t_patchActionOperationInfo2 = [(FPDownloadOperation *)self _t_patchActionOperationInfo];
    _t_patchActionOperationInfo2[2](_t_patchActionOperationInfo2, self->_info);
  }
}

- (FPDownloadOperation)initWithItems:(id)items
{
  itemsCopy = items;
  v13.receiver = self;
  v13.super_class = FPDownloadOperation;
  v6 = [(FPActionOperation *)&v13 initWithProvider:0 action:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, items);
    v8 = [MEMORY[0x1E695DFA8] setWithArray:itemsCopy];
    itemsPendingDownload = v7->_itemsPendingDownload;
    v7->_itemsPendingDownload = v8;

    v10 = objc_opt_new();
    childProxies = v7->_childProxies;
    v7->_childProxies = v10;

    [(FPDownloadOperation *)v7 _setupParentProgress];
  }

  return v7;
}

- (void)presendNotifications
{
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher start];

  stitcher2 = [(FPActionOperation *)self stitcher];
  [stitcher2 transformItems:self->_items handler:&__block_literal_global_7_0];

  stitcher3 = [(FPActionOperation *)self stitcher];
  [stitcher3 flush];
}

void __43__FPDownloadOperation_presendNotifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCloudItem] && (!objc_msgSend(v2, "isDownloaded") || objc_msgSend(v2, "isFolder") && (objc_msgSend(v2, "isRecursivelyDownloaded") & 1) == 0))
  {
    [v2 setDownloaded:0];
    [v2 setDownloading:1];
  }
}

- (id)fp_prettyDescription
{
  v2 = MEMORY[0x1E696AEC0];
  fp_itemIdentifiers = [(NSArray *)self->_items fp_itemIdentifiers];
  v4 = [fp_itemIdentifiers componentsJoinedByString:{@", "}];
  v5 = [v2 stringWithFormat:@"download items (%@)", v4];

  return v5;
}

- (void)actionMain
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"FPDownloadOperation.m" lineNumber:106 description:@"operation shouldn't run"];
}

void __33__FPDownloadOperation_actionMain__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPDownloadOperation_actionMain__block_invoke_2;
  block[3] = &unk_1E7939090;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __33__FPDownloadOperation_actionMain__block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 completedWithResult:0 error:?];
  }

  else
  {
    return [v2 _runWithRemoteOperation:a1[6]];
  }
}

- (void)_completedWithResultsByRoot:(id)root errorsByRoot:(id)byRoot error:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  rootCopy = root;
  byRootCopy = byRoot;
  errorCopy = error;
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    fp_prettyDescription = [errorCopy fp_prettyDescription];
    v21 = 138412802;
    v22 = rootCopy;
    v23 = 2112;
    v24 = byRootCopy;
    v25 = 2112;
    v26 = fp_prettyDescription;
    _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Remote download operation finished with results:%@; errors:%@; %@", &v21, 0x20u);
  }

  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [FPDownloadOperation _completedWithResultsByRoot:? errorsByRoot:? error:?];
  }

  if (errorCopy)
  {
    firstObject = errorCopy;
  }

  else
  {
    v15 = [byRootCopy fp_copyItemKeysUnwrappedAndKeyMap:0];
    allValues = [v15 allValues];
    firstObject = [allValues firstObject];
  }

  allValues2 = [rootCopy allValues];
  v18 = [allValues2 fp_map:&__block_literal_global_25_1];
  [(FPDownloadOperation *)self completedWithResult:v18 error:firstObject];

  v19 = *MEMORY[0x1E69E9840];
}

id __70__FPDownloadOperation__completedWithResultsByRoot_errorsByRoot_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isProviderItem])
  {
    v3 = [v2 asFPItem];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)completedWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__FPDownloadOperation_completedWithResult_error___block_invoke;
  block[3] = &unk_1E7939090;
  v12 = resultCopy;
  v13 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  v10 = resultCopy;
  dispatch_async(callbackQueue, block);
}

void __49__FPDownloadOperation_completedWithResult_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v6.receiver = *(a1 + 48);
  v6.super_class = FPDownloadOperation;
  objc_msgSendSuper2(&v6, sel_completedWithResult_error_, v3, v2);
  v4 = *(a1 + 48);
  v5 = *(v4 + 472);
  *(v4 + 472) = 0;
}

- (void)finishWithResult:(id)result error:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  v8 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = self->_items;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        itemID = [v14 itemID];
        [(FPDownloadOperation *)self _removeProgressWithItemID:itemID];

        providerDomainID = [v14 providerDomainID];
        [v8 addObject:providerDomainID];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  [(NSObservation *)self->_observation finishObserving];
  observation = self->_observation;
  self->_observation = 0;

  progress = [(FPActionOperation *)self progress];
  fileTotalCount = [progress fileTotalCount];
  progress2 = [(FPActionOperation *)self progress];
  [progress2 setFileCompletedCount:fileTotalCount];

  v21 = fp_current_or_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [FPDownloadOperation finishWithResult:? error:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:resultCopy copyItems:1];
  }

  else
  {
    v22 = 0;
  }

  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher finishWithItems:v22 error:errorCopy];

  downloadCompletionBlock = [(FPDownloadOperation *)self downloadCompletionBlock];
  v25 = downloadCompletionBlock;
  if (downloadCompletionBlock)
  {
    (*(downloadCompletionBlock + 16))(downloadCompletionBlock, resultCopy, errorCopy);
    [(FPDownloadOperation *)self setDownloadCompletionBlock:0];
  }

  v27.receiver = self;
  v27.super_class = FPDownloadOperation;
  [(FPActionOperation *)&v27 finishWithResult:resultCopy error:errorCopy];

  v26 = *MEMORY[0x1E69E9840];
}

- (FPDownloadOperation)initWithRemoteOperation:(id)operation info:(id)info
{
  v5.receiver = self;
  v5.super_class = FPDownloadOperation;
  return [(FPActionOperation *)&v5 initWithProvider:0 action:0];
}

- (void)remoteOperationCompletedRoot:(id)root resultingItem:(id)item error:(id)error completion:(id)completion
{
  rootCopy = root;
  itemCopy = item;
  errorCopy = error;
  completionCopy = completion;
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [FPDownloadOperation remoteOperationCompletedRoot:rootCopy resultingItem:errorCopy error:v14 completion:?];
  }

  completionCopy[2](completionCopy);
  callbackQueue = [(FPOperation *)self callbackQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__FPDownloadOperation_remoteOperationCompletedRoot_resultingItem_error_completion___block_invoke;
  v17[3] = &unk_1E79390B8;
  v18 = itemCopy;
  selfCopy = self;
  v16 = itemCopy;
  dispatch_async(callbackQueue, v17);
}

void __83__FPDownloadOperation_remoteOperationCompletedRoot_resultingItem_error_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isProviderItem])
  {
    v2 = [*(a1 + 32) asFPItem];
    if (v2)
    {
      v3 = v2;
      [*(*(a1 + 40) + 464) removeObject:v2];
      [*(a1 + 40) _updateProgressWithUpdatedFileCountForItem:v3];
    }
  }
}

- (void)remoteOperationCreatedRoot:(id)root resultingItem:(id)item completion:(id)completion
{
  rootCopy = root;
  completionCopy = completion;
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPDownloadOperation remoteOperationCreatedRoot:rootCopy resultingItem:v8 completion:?];
  }

  completionCopy[2](completionCopy);
}

- (void)remoteOperationProgressesAreReady
{
  callbackQueue = [(FPOperation *)self callbackQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__FPDownloadOperation_remoteOperationProgressesAreReady__block_invoke;
  v5[3] = &unk_1E7939038;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(callbackQueue, v5);
}

void __56__FPDownloadOperation_remoteOperationProgressesAreReady__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[57])
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"FPDownloadOperation.m" lineNumber:228 description:@"operation was not setup propertly"];

    v2 = *(a1 + 32);
  }

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__13;
  v11[4] = __Block_byref_object_dispose__13;
  v12 = 0;
  v4 = MEMORY[0x1E696ADA8];
  v5 = [v2 progress];
  v6 = [v4 keyPathWithRootObject:v5 path:"fractionCompleted"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__FPDownloadOperation_remoteOperationProgressesAreReady__block_invoke_36;
  v10[3] = &unk_1E793C3E0;
  v10[4] = *(a1 + 32);
  v10[5] = v13;
  v10[6] = v11;
  v7 = [v6 addObserverBlock:v10];
  v8 = *(a1 + 32);
  v9 = *(v8 + 488);
  *(v8 + 488) = v7;

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
}

void __56__FPDownloadOperation_remoteOperationProgressesAreReady__block_invoke_36(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) progress];
  [v4 fractionCompleted];
  if (v5 == *(*(*(a1 + 40) + 8) + 24))
  {

    goto LABEL_13;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v2 timeIntervalSinceDate:?];
    if (v6 < 1.0)
    {
      v7 = [*v3 progress];
      [v7 fractionCompleted];
      if (v8 < 1.0)
      {
        v9 = [*(a1 + 32) progress];
        [v9 fractionCompleted];
        v11 = v10;
        v12 = *(*(*(a1 + 40) + 8) + 24);

        if (v11 >= v12)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_10:
  v13 = [*(a1 + 32) progress];
  [v13 fractionCompleted];
  *(*(*(a1 + 40) + 8) + 24) = v14;

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v2);
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __56__FPDownloadOperation_remoteOperationProgressesAreReady__block_invoke_36_cold_1(v3);
  }

LABEL_13:
}

- (void)_runWithRemoteOperation:(id)operation
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__FPDownloadOperation__runWithRemoteOperation___block_invoke;
  v8[3] = &unk_1E7939C00;
  v8[4] = self;
  v4 = [operation remoteObjectProxyWithErrorHandler:v8];
  remoteMoveOperation = self->_remoteMoveOperation;
  self->_remoteMoveOperation = v4;

  v6 = self->_remoteMoveOperation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__FPDownloadOperation__runWithRemoteOperation___block_invoke_3;
  v7[3] = &unk_1E793C408;
  v7[4] = self;
  [(NSXPCProxyCreating *)v6 registerFrameworkClient:self operationCompletion:v7];
}

void __47__FPDownloadOperation__runWithRemoteOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__FPDownloadOperation__runWithRemoteOperation___block_invoke_2;
  v6[3] = &unk_1E79390B8;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__FPDownloadOperation__runWithRemoteOperation___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) callbackQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__FPDownloadOperation__runWithRemoteOperation___block_invoke_4;
  v14[3] = &unk_1E7939738;
  v14[4] = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, v14);
}

- (void)_updateProgressWithUpdatedFileCountForItem:(id)item
{
  itemCopy = item;
  itemID = [itemCopy itemID];

  if (itemID)
  {
    itemID2 = [itemCopy itemID];
    [(FPDownloadOperation *)self _removeProgressWithItemID:itemID2];
  }
}

- (void)_setupParentProgress
{
  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__FPDownloadOperation__setupParentProgress__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

void __43__FPDownloadOperation__setupParentProgress__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) progress];
  [v2 setTotalUnitCount:-1];

  v3 = [*(a1 + 32) progress];
  [v3 fp_setFileOperationKind:*MEMORY[0x1E696A848]];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(*(a1 + 32) + 448);
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = +[FPItemManager defaultManager];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __43__FPDownloadOperation__setupParentProgress__block_invoke_2;
        v13[3] = &unk_1E793B130;
        v10 = *(a1 + 32);
        v13[4] = v8;
        v13[5] = v10;
        [v9 fetchURLForItem:v8 creatingPlaceholderIfMissing:1 completionHandler:v13];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __43__FPDownloadOperation__setupParentProgress__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __43__FPDownloadOperation__setupParentProgress__block_invoke_2_cold_1(a1, v7, v8);
    }
  }

  [*(a1 + 32) setFileURL:v5];
  v11 = a1 + 32;
  v9 = *(a1 + 32);
  v10 = *(v11 + 8);
  v12 = [v9 documentSize];
  [v10 _updateParentProgressForItem:v9 withUnitCount:v12];
}

- (void)_updateParentProgressForItem:(id)item withUnitCount:(id)count
{
  itemCopy = item;
  countCopy = count;
  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__FPDownloadOperation__updateParentProgressForItem_withUnitCount___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v12 = itemCopy;
  v13 = countCopy;
  v9 = countCopy;
  v10 = itemCopy;
  dispatch_async(callbackQueue, block);
}

void __66__FPDownloadOperation__updateParentProgressForItem_withUnitCount___block_invoke(id *a1)
{
  v2 = a1 + 5;
  v3 = *(a1[4] + 62);
  v4 = [a1[5] itemID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __66__FPDownloadOperation__updateParentProgressForItem_withUnitCount___block_invoke_cold_1(v2, v6);
    }
  }

  else
  {
    objc_initWeak(&location, a1[4]);
    v7 = a1[4];
    v8 = a1[5];
    v9 = v7[62];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__FPDownloadOperation__updateParentProgressForItem_withUnitCount___block_invoke_43;
    v10[3] = &unk_1E793C430;
    objc_copyWeak(&v12, &location);
    v11 = a1[6];
    [v7 _retrieveChildProgressForItem:v8 childProxies:v9 parentSetup:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __66__FPDownloadOperation__updateParentProgressForItem_withUnitCount___block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__FPDownloadOperation__updateParentProgressForItem_withUnitCount___block_invoke_2;
    block[3] = &unk_1E7939090;
    block[4] = v5;
    v8 = v3;
    v9 = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void __66__FPDownloadOperation__updateParentProgressForItem_withUnitCount___block_invoke_2(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(a1 + 32) progress];
  [v2 fp_addChildProgress:*(v1 + 8) withUnitCount:*(v1 + 16)];

  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __66__FPDownloadOperation__updateParentProgressForItem_withUnitCount___block_invoke_2_cold_1(v1, v3);
  }
}

- (void)_removeProgressWithItemID:(id)d
{
  dCopy = d;
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  v6 = [(NSMutableDictionary *)self->_childProxies objectForKeyedSubscript:dCopy];
  [v6 stopTrackingIfStarted];
  [(NSMutableDictionary *)self->_childProxies removeObjectForKey:dCopy];
}

- (void)_retrieveChildProgressForItem:(id)item childProxies:(id)proxies parentSetup:(id)setup
{
  setupCopy = setup;
  proxiesCopy = proxies;
  itemCopy = item;
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  fileURL = [itemCopy fileURL];
  v13 = objc_opt_new();
  [v13 setUpdateFileCount:1];
  itemID = [itemCopy itemID];

  [proxiesCopy setObject:v13 forKeyedSubscript:itemID];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__FPDownloadOperation__retrieveChildProgressForItem_childProxies_parentSetup___block_invoke;
  v16[3] = &unk_1E793C458;
  v17 = setupCopy;
  v15 = setupCopy;
  [v13 setProgressDidSetupHandler:v16];
  [v13 startTrackingFileURL:fileURL kind:*MEMORY[0x1E696A848] allowReadPausedProgressFromDisk:0];
}

- (void)_completedWithResultsByRoot:(void *)a1 errorsByRoot:error:.cold.1(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [a1 progress];
  v3 = [v2 localizedAdditionalDescription];
  v4 = [a1 progress];
  v5 = [v4 fileCompletedCount];
  v6 = [a1 progress];
  v7 = [v6 fileTotalCount];
  v8 = [a1 progress];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_10(&dword_1AAAE1000, v9, v10, "[DEBUG] download-op progress: %@\n files: %@ / %@\n%@", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(void *)a1 error:.cold.1(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [a1 progress];
  v3 = [v2 localizedAdditionalDescription];
  v4 = [a1 progress];
  v5 = [v4 fileCompletedCount];
  v6 = [a1 progress];
  v7 = [v6 fileTotalCount];
  v8 = [a1 progress];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_10(&dword_1AAAE1000, v9, v10, "[DEBUG] download-op final progress: %@\n files: %@ / %@\n%@", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)remoteOperationCompletedRoot:(NSObject *)a3 resultingItem:error:completion:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Remote root download finished - root:%@; error:%@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteOperationCreatedRoot:(uint64_t)a1 resultingItem:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Remote download root created: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __56__FPDownloadOperation_remoteOperationProgressesAreReady__block_invoke_36_cold_1(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*a1 progress];
  v3 = [v2 localizedAdditionalDescription];
  v4 = [*a1 progress];
  v5 = [v4 fileCompletedCount];
  v6 = [*a1 progress];
  v7 = [v6 fileTotalCount];
  v8 = [*a1 progress];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_10(&dword_1AAAE1000, v9, v10, "[DEBUG] download-op progress: %@\n files: %@ / %@\n%@", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x1E69E9840];
}

void __43__FPDownloadOperation__setupParentProgress__block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] Error retrieving url for item %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __66__FPDownloadOperation__updateParentProgressForItem_withUnitCount___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*a1 itemID];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] download-op already tracking a childProxy for item %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __66__FPDownloadOperation__updateParentProgressForItem_withUnitCount___block_invoke_2_cold_1(id *a1, NSObject *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [*a1 progress];
  v5 = [*a1 progress];
  v6 = [v5 fileCompletedCount];
  v7 = [*a1 progress];
  v8 = [v7 fileTotalCount];
  v10 = 138412802;
  v11 = v4;
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v8;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] download-op Added childProxy to parent: %@\n %@ / %@ files", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

@end