@interface FPEvictOperation
- (FPEvictOperation)initWithItems:(id)items;
- (void)actionMain;
@end

@implementation FPEvictOperation

- (FPEvictOperation)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = FPEvictOperation;
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = dispatch_group_create();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__26;
  v21[4] = __Block_byref_object_dispose__26;
  v22 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_items;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        dispatch_group_enter(v3);
        v8 = +[FPDaemonConnection sharedConnection];
        itemID = [v7 itemID];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __30__FPEvictOperation_actionMain__block_invoke;
        v14[3] = &unk_1E793CA60;
        v16 = v21;
        v15 = v3;
        [v8 evictItemWithID:itemID evictionReason:2 completionHandler:v14];
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v4);
  }

  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__FPEvictOperation_actionMain__block_invoke_2;
  block[3] = &unk_1E793AD20;
  block[4] = self;
  block[5] = v21;
  dispatch_group_notify(v3, callbackQueue, block);

  _Block_object_dispose(v21, 8);
  v11 = *MEMORY[0x1E69E9840];
}

void __30__FPEvictOperation_actionMain__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

@end