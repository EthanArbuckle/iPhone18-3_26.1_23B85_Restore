@interface AMSPromiseCompletionBlocks
- (AMSPromiseCompletionBlocks)init;
- (void)addCompletionBlock:(id)block;
- (void)addErrorBlock:(id)block;
- (void)addSuccessBlock:(id)block;
- (void)callCompletionBlock:(id)block withPromiseResult:(id)result;
- (void)callErrorBlock:(id)block withPromiseResult:(id)result;
- (void)callSuccessBlock:(id)block withPromiseResult:(id)result;
- (void)flushCompletionBlocksWithPromiseResult:(id)result;
@end

@implementation AMSPromiseCompletionBlocks

- (AMSPromiseCompletionBlocks)init
{
  v7.receiver = self;
  v7.super_class = AMSPromiseCompletionBlocks;
  v2 = [(AMSPromiseCompletionBlocks *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_completionBlockLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionBlocks = v3->_completionBlocks;
    v3->_completionBlocks = v4;
  }

  return v3;
}

- (void)addCompletionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_completionBlockLock);
  completionBlocks = self->_completionBlocks;
  v6 = [blockCopy copy];

  [(NSMutableArray *)completionBlocks addObject:v6];

  os_unfair_lock_unlock(&self->_completionBlockLock);
}

- (void)addErrorBlock:(id)block
{
  blockCopy = block;
  v5 = AMSLogKey();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AMSPromiseCompletionBlocks_addErrorBlock___block_invoke;
  v8[3] = &unk_1E73BAF68;
  v9 = v5;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = v5;
  [(AMSPromiseCompletionBlocks *)self addCompletionBlock:v8];
}

void __44__AMSPromiseCompletionBlocks_addErrorBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = AMSSetLogKey(*(a1 + 32));
  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
    v5 = v6;
  }
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  v5 = AMSLogKey();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__AMSPromiseCompletionBlocks_addSuccessBlock___block_invoke;
  v8[3] = &unk_1E73BAF68;
  v9 = v5;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = v5;
  [(AMSPromiseCompletionBlocks *)self addCompletionBlock:v8];
}

void __46__AMSPromiseCompletionBlocks_addSuccessBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = AMSSetLogKey(*(a1 + 32));
  v4 = v5;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
    v4 = v5;
  }
}

- (void)callCompletionBlock:(id)block withPromiseResult:(id)result
{
  resultCopy = result;
  blockCopy = block;
  result = [resultCopy result];
  error = [resultCopy error];

  (*(block + 2))(blockCopy, result, error);
}

- (void)callErrorBlock:(id)block withPromiseResult:(id)result
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__AMSPromiseCompletionBlocks_callErrorBlock_withPromiseResult___block_invoke;
  v8[3] = &unk_1E73B53E0;
  v9 = blockCopy;
  v7 = blockCopy;
  [(AMSPromiseCompletionBlocks *)self callCompletionBlock:v8 withPromiseResult:result];
}

uint64_t __63__AMSPromiseCompletionBlocks_callErrorBlock_withPromiseResult___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)callSuccessBlock:(id)block withPromiseResult:(id)result
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__AMSPromiseCompletionBlocks_callSuccessBlock_withPromiseResult___block_invoke;
  v8[3] = &unk_1E73B53E0;
  v9 = blockCopy;
  v7 = blockCopy;
  [(AMSPromiseCompletionBlocks *)self callCompletionBlock:v8 withPromiseResult:result];
}

uint64_t __65__AMSPromiseCompletionBlocks_callSuccessBlock_withPromiseResult___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)flushCompletionBlocksWithPromiseResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  os_unfair_lock_lock(&self->_completionBlockLock);
  v5 = [(NSMutableArray *)self->_completionBlocks copy];
  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  os_unfair_lock_unlock(&self->_completionBlockLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        result = [resultCopy result];
        error = [resultCopy error];
        (*(v11 + 16))(v11, result, error);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

@end