@interface AMSPromiseSerialQueueItem
- (AMSPromiseSerialQueueItem)initWithBinaryPromise:(id)promise block:(id)block completion:(id)completion;
- (AMSPromiseSerialQueueItem)initWithPromise:(id)promise block:(id)block completion:(id)completion;
- (void)run;
@end

@implementation AMSPromiseSerialQueueItem

- (void)run
{
  v3 = _Block_copy(self->_runBlock);
  if (v3)
  {
    runBlock = self->_runBlock;
    self->_runBlock = 0;
    v5 = v3;

    v5[2](v5);
    v3 = v5;
  }
}

- (AMSPromiseSerialQueueItem)initWithBinaryPromise:(id)promise block:(id)block completion:(id)completion
{
  promiseCopy = promise;
  blockCopy = block;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = AMSPromiseSerialQueueItem;
  v11 = [(AMSPromiseSerialQueueItem *)&v19 init];
  if (v11)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__AMSPromiseSerialQueueItem_initWithBinaryPromise_block_completion___block_invoke;
    block[3] = &unk_1E73BAFB8;
    v17 = blockCopy;
    v16 = promiseCopy;
    v18 = completionCopy;
    v12 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    runBlock = v11->_runBlock;
    v11->_runBlock = v12;
  }

  return v11;
}

void __68__AMSPromiseSerialQueueItem_initWithBinaryPromise_block_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__AMSPromiseSerialQueueItem_initWithBinaryPromise_block_completion___block_invoke_2;
  v3[3] = &unk_1E73BAF90;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  (*(v2 + 16))(v2, v3);
}

uint64_t __68__AMSPromiseSerialQueueItem_initWithBinaryPromise_block_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) finishWithSuccess:a2 error:a3];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (AMSPromiseSerialQueueItem)initWithPromise:(id)promise block:(id)block completion:(id)completion
{
  promiseCopy = promise;
  blockCopy = block;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = AMSPromiseSerialQueueItem;
  v11 = [(AMSPromiseSerialQueueItem *)&v19 init];
  if (v11)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AMSPromiseSerialQueueItem_initWithPromise_block_completion___block_invoke;
    block[3] = &unk_1E73BAFB8;
    v17 = blockCopy;
    v16 = promiseCopy;
    v18 = completionCopy;
    v12 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    runBlock = v11->_runBlock;
    v11->_runBlock = v12;
  }

  return v11;
}

void __62__AMSPromiseSerialQueueItem_initWithPromise_block_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__AMSPromiseSerialQueueItem_initWithPromise_block_completion___block_invoke_2;
  v3[3] = &unk_1E73BAF68;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  (*(v2 + 16))(v2, v3);
}

uint64_t __62__AMSPromiseSerialQueueItem_initWithPromise_block_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) finishWithResult:a2 error:a3];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

@end