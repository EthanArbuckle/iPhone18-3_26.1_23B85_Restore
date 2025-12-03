@interface AMSPromiseSerialQueue
- (AMSPromiseSerialQueue)init;
- (id)runBinaryPromiseBlock:(id)block;
- (id)runPromiseBlock:(id)block;
- (void)processQueue;
@end

@implementation AMSPromiseSerialQueue

- (AMSPromiseSerialQueue)init
{
  v7.receiver = self;
  v7.super_class = AMSPromiseSerialQueue;
  v2 = [(AMSPromiseSerialQueue *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    items = v3->_items;
    v3->_items = v4;
  }

  return v3;
}

- (void)processQueue
{
  os_unfair_lock_lock_with_options();
  firstObject = [(NSMutableArray *)self->_items firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_items removeObjectAtIndex:0];
  }

  else
  {
    self->_processing = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  [firstObject run];
}

- (id)runBinaryPromiseBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  os_unfair_lock_lock_with_options();
  if (self->_processing)
  {
    v6 = [AMSPromiseSerialQueueItem alloc];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__AMSPromiseSerialQueue_runBinaryPromiseBlock___block_invoke;
    v12[3] = &unk_1E73B3680;
    v12[4] = self;
    v7 = [(AMSPromiseSerialQueueItem *)v6 initWithBinaryPromise:v5 block:blockCopy completion:v12];

    [(NSMutableArray *)self->_items addObject:v7];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_processing = 1;
    os_unfair_lock_unlock(&self->_lock);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__AMSPromiseSerialQueue_runBinaryPromiseBlock___block_invoke_2;
    v9[3] = &unk_1E73B5368;
    v10 = v5;
    selfCopy = self;
    (*(blockCopy + 2))(blockCopy, v9);
  }

  return v5;
}

uint64_t __47__AMSPromiseSerialQueue_runBinaryPromiseBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) finishWithSuccess:a2 error:a3];
  v4 = *(a1 + 40);

  return [v4 processQueue];
}

- (id)runPromiseBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  os_unfair_lock_lock_with_options();
  if (self->_processing)
  {
    v6 = [AMSPromiseSerialQueueItem alloc];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__AMSPromiseSerialQueue_runPromiseBlock___block_invoke;
    v12[3] = &unk_1E73B3680;
    v12[4] = self;
    v7 = [(AMSPromiseSerialQueueItem *)v6 initWithPromise:v5 block:blockCopy completion:v12];

    [(NSMutableArray *)self->_items addObject:v7];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_processing = 1;
    os_unfair_lock_unlock(&self->_lock);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__AMSPromiseSerialQueue_runPromiseBlock___block_invoke_2;
    v9[3] = &unk_1E73BA3F8;
    v10 = v5;
    selfCopy = self;
    (*(blockCopy + 2))(blockCopy, v9);
  }

  return v5;
}

uint64_t __41__AMSPromiseSerialQueue_runPromiseBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) finishWithResult:a2 error:a3];
  v4 = *(a1 + 40);

  return [v4 processQueue];
}

@end