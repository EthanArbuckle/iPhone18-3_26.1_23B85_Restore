@interface FPPinOperation
- (FPPinOperation)initWithItems:(id)items;
- (void)actionMain;
- (void)finishWithResult:(id)result error:(id)error;
- (void)presendNotifications;
@end

@implementation FPPinOperation

- (FPPinOperation)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = FPPinOperation;
  v6 = [(FPActionOperation *)&v9 initWithProvider:0 action:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, items);
    [(FPActionOperation *)v7 setSourceItemsToPreflight:itemsCopy];
  }

  return v7;
}

- (void)actionMain
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v3)
  {
    v4 = *v34;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v34 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (!FPPinningSupportedForItem(*(*(&v33 + 1) + 8 * v5)))
        {
          v15 = FPNotSupportedError();
          [(FPOperation *)self completedWithResult:0 error:v15];

          goto LABEL_18;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v2 = dispatch_group_create();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__26;
  v31[4] = __Block_byref_object_dispose__26;
  v32 = 0;
  v6 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_items;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        dispatch_group_enter(&v2->super);
        v11 = +[FPDaemonConnection sharedConnection];
        itemID = [v10 itemID];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __28__FPPinOperation_actionMain__block_invoke;
        v23[3] = &unk_1E793E080;
        v26 = v31;
        v24 = v6;
        v25 = v2;
        [v11 pinItemWithID:itemID completionHandler:v23];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v7);
  }

  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__FPPinOperation_actionMain__block_invoke_2;
  block[3] = &unk_1E793E0D0;
  v20 = v6;
  selfCopy = self;
  v22 = v31;
  v14 = v6;
  dispatch_group_notify(&v2->super, callbackQueue, block);

  _Block_object_dispose(v31, 8);
LABEL_18:

  v16 = *MEMORY[0x1E69E9840];
}

void __28__FPPinOperation_actionMain__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, a3);
    }
  }

  if (v10)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    [*(a1 + 32) addObject:v10];
    objc_sync_exit(v9);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __28__FPPinOperation_actionMain__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v12 + 1) + 8 * v6) isRecursivelyDownloaded])
        {

          v7 = [[FPDownloadOperation alloc] initWithItems:*(a1 + 32)];
          [(FPDownloadOperation *)v7 setRecursively:1];
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __28__FPPinOperation_actionMain__block_invoke_3;
          v10[3] = &unk_1E793E0A8;
          v11 = *(a1 + 40);
          [(FPDownloadOperation *)v7 setDownloadCompletionBlock:v10];
          v8 = +[FPItemManager defaultManager];
          [v8 scheduleAction:v7];

          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 40) completedWithResult:*(a1 + 32) error:*(*(*(a1 + 48) + 8) + 40)];
LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __28__FPPinOperation_actionMain__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (!a3)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
  }

  return [v5 completedWithResult:a2 error:v3];
}

- (void)presendNotifications
{
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher start];

  stitcher2 = [(FPActionOperation *)self stitcher];
  [stitcher2 transformItems:self->_items handler:&__block_literal_global_328];

  stitcher3 = [(FPActionOperation *)self stitcher];
  [stitcher3 flush];
}

void __38__FPPinOperation_presendNotifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPinned:1];
  [v2 setInPinnedFolder:1];
  [v2 setCapabilities:{objc_msgSend(v2, "capabilities") & 0xFFFFFFFFEFFFFFFFLL}];
  [v2 setCapabilities:{objc_msgSend(v2, "capabilities") & 0xFFFFFFFFFFFFFFBFLL}];
  [v2 setCapabilities:{objc_msgSend(v2, "capabilities") | 0x8000000}];
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher finishWithItems:resultCopy error:errorCopy];

  v9.receiver = self;
  v9.super_class = FPPinOperation;
  [(FPActionOperation *)&v9 finishWithResult:resultCopy error:errorCopy];
}

@end