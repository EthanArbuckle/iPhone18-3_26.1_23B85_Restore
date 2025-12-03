@interface FPUnpinOperation
- (FPUnpinOperation)initWithItems:(id)items;
- (void)actionMain;
- (void)finishWithResult:(id)result error:(id)error;
- (void)presendNotifications;
@end

@implementation FPUnpinOperation

- (FPUnpinOperation)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = FPUnpinOperation;
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
  v32 = *MEMORY[0x1E69E9840];
  v3 = dispatch_group_create();
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__26;
  v29[4] = __Block_byref_object_dispose__26;
  v30 = 0;
  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  obj = self->_items;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        downloadingProgress = [v8 downloadingProgress];

        if (downloadingProgress)
        {
          downloadingProgress2 = [v8 downloadingProgress];
          [downloadingProgress2 cancel];
        }

        dispatch_group_enter(v3);
        v11 = +[FPDaemonConnection sharedConnection];
        itemID = [v8 itemID];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __30__FPUnpinOperation_actionMain__block_invoke;
        v21[3] = &unk_1E793E080;
        v24 = v29;
        v22 = v4;
        v23 = v3;
        [v11 unpinItemWithID:itemID completionHandler:v21];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }

  callbackQueue = [(FPOperation *)selfCopy callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__FPUnpinOperation_actionMain__block_invoke_2;
  block[3] = &unk_1E793E0D0;
  block[4] = selfCopy;
  v19 = v4;
  v20 = v29;
  v14 = v4;
  dispatch_group_notify(v3, callbackQueue, block);

  _Block_object_dispose(v29, 8);
  v15 = *MEMORY[0x1E69E9840];
}

void __30__FPUnpinOperation_actionMain__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)presendNotifications
{
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher start];

  stitcher2 = [(FPActionOperation *)self stitcher];
  [stitcher2 transformItems:self->_items handler:&__block_literal_global_336];

  stitcher3 = [(FPActionOperation *)self stitcher];
  [stitcher3 flush];
}

void __40__FPUnpinOperation_presendNotifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPinned:0];
  [v2 setInPinnedFolder:0];
  [v2 setCapabilities:{objc_msgSend(v2, "capabilities") & 0xFFFFFFFFF7FFFFFFLL}];
  [v2 setCapabilities:{objc_msgSend(v2, "capabilities") | 0x10000000}];
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher finishWithItems:resultCopy error:errorCopy];

  v9.receiver = self;
  v9.super_class = FPUnpinOperation;
  [(FPActionOperation *)&v9 finishWithResult:resultCopy error:errorCopy];
}

@end