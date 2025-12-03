@interface AMSPurchaseQueueBatchList
- (AMSPurchaseQueueBatchList)init;
- (id)batchForPurchase:(id)purchase;
- (id)nextPurchase;
- (unint64_t)count;
- (void)appendBatch:(id)batch;
- (void)popBatch:(id)batch;
@end

@implementation AMSPurchaseQueueBatchList

- (AMSPurchaseQueueBatchList)init
{
  v8.receiver = self;
  v8.super_class = AMSPurchaseQueueBatchList;
  v2 = [(AMSPurchaseQueueBatchList *)&v8 init];
  if (v2)
  {
    v3 = [AMSThreadSafeObject alloc];
    array = [MEMORY[0x1E695DF70] array];
    v5 = [(AMSThreadSafeObject *)v3 initWithObject:array];
    backingArray = v2->_backingArray;
    v2->_backingArray = v5;
  }

  return v2;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  backingArray = [(AMSPurchaseQueueBatchList *)self backingArray];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__AMSPurchaseQueueBatchList_count__block_invoke;
  v5[3] = &unk_1E73BB260;
  v5[4] = &v6;
  [backingArray read:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__AMSPurchaseQueueBatchList_count__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)appendBatch:(id)batch
{
  batchCopy = batch;
  backingArray = [(AMSPurchaseQueueBatchList *)self backingArray];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__AMSPurchaseQueueBatchList_appendBatch___block_invoke;
  v7[3] = &unk_1E73BB288;
  v8 = batchCopy;
  v6 = batchCopy;
  [backingArray readWrite:v7];
}

id __41__AMSPurchaseQueueBatchList_appendBatch___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 addObject:v2];
  v4 = [v3 mutableCopy];

  return v4;
}

- (id)nextPurchase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__57;
  v10 = __Block_byref_object_dispose__57;
  v11 = 0;
  backingArray = [(AMSPurchaseQueueBatchList *)self backingArray];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__AMSPurchaseQueueBatchList_nextPurchase__block_invoke;
  v5[3] = &unk_1E73BB260;
  v5[4] = &v6;
  [backingArray read:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__AMSPurchaseQueueBatchList_nextPurchase__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) nextPurchase];
        if (v8)
        {
          v9 = *(*(a1 + 32) + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)batchForPurchase:(id)purchase
{
  purchaseCopy = purchase;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__57;
  v16 = __Block_byref_object_dispose__57;
  v17 = 0;
  backingArray = [(AMSPurchaseQueueBatchList *)self backingArray];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__AMSPurchaseQueueBatchList_batchForPurchase___block_invoke;
  v9[3] = &unk_1E73BB2B0;
  v6 = purchaseCopy;
  v10 = v6;
  v11 = &v12;
  [backingArray read:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__AMSPurchaseQueueBatchList_batchForPurchase___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [*(a1 + 32) uniqueIdentifier];
        v10 = [v8 purchaseForPurchaseId:v9];

        if (v10)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)popBatch:(id)batch
{
  batchCopy = batch;
  backingArray = [(AMSPurchaseQueueBatchList *)self backingArray];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__AMSPurchaseQueueBatchList_popBatch___block_invoke;
  v7[3] = &unk_1E73BB288;
  v8 = batchCopy;
  v6 = batchCopy;
  [backingArray readWrite:v7];
}

id __38__AMSPurchaseQueueBatchList_popBatch___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 removeObject:v2];
  v4 = [v3 mutableCopy];

  return v4;
}

@end