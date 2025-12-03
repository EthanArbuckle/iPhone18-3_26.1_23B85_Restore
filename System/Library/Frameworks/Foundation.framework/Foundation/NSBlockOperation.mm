@interface NSBlockOperation
+ (NSBlockOperation)blockOperationWithBlock:(void *)block;
- (NSArray)executionBlocks;
- (NSBlockOperation)init;
- (NSBlockOperation)initWithBlock:(id)block;
- (void)addExecutionBlock:(void *)block;
- (void)dealloc;
- (void)main;
@end

@implementation NSBlockOperation

- (NSBlockOperation)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSBlockOperation;
  return [(NSOperation *)&v3 init];
}

- (void)main
{
  v7[7] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super._iop.__lock);
  block = self->_block;
  if (!block)
  {
    v5 = [(NSMutableArray *)self->_executionBlocks count];
    v4 = NSAllocateObjectArray(v5);
    [(NSMutableArray *)self->_executionBlocks getObjects:v4 range:0, v5];
    os_unfair_lock_unlock(&self->super._iop.__lock);
LABEL_8:
    v6 = +[NSOperationQueue currentQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __24__NSBlockOperation_main__block_invoke;
    v7[3] = &unk_1E69F50F8;
    v7[4] = v6;
    v7[5] = self;
    v7[6] = v4;
    dispatch_apply(v5, 0, v7);
    free(v4);
    return;
  }

  v4 = _Block_copy(block);
  os_unfair_lock_unlock(&self->super._iop.__lock);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_8;
  }

  __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(v4);

  _Block_release(v4);
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  block = self->_block;
  if (block)
  {
    _Block_release(block);
  }

  v4.receiver = self;
  v4.super_class = NSBlockOperation;
  [(NSOperation *)&v4 dealloc];
}

- (NSBlockOperation)initWithBlock:(id)block
{
  v5 = [(NSBlockOperation *)self init];
  v6 = v5;
  if (!block)
  {
    v8 = [NSString stringWithFormat:@"%@: block is nil", _NSMethodExceptionProem(v5, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  v5->_block = _Block_copy(block);
  return v6;
}

+ (NSBlockOperation)blockOperationWithBlock:(void *)block
{
  v3 = [[self alloc] initWithBlock:block];

  return v3;
}

- (void)addExecutionBlock:(void *)block
{
  if (!block)
  {
    v9 = [NSString stringWithFormat:@"%@: block is nil", _NSMethodExceptionProem(self, a2)];
LABEL_15:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0]);
  }

  if ([(NSOperation *)self isExecuting]|| [(NSOperation *)self isFinished])
  {
    v9 = [NSString stringWithFormat:@"%@: blocks cannot be added after the operation has started executing or finished", _NSMethodExceptionProem(self, a2)];
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->super._iop.__lock);
  executionBlocks = self->_executionBlocks;
  if (self->_block)
  {
    if (!executionBlocks)
    {
      v7 = objc_opt_new();
      self->_executionBlocks = v7;
      [(NSMutableArray *)v7 addObject:self->_block];
      _Block_release(self->_block);
      self->_block = 0;
    }

    goto LABEL_8;
  }

  if (executionBlocks)
  {
LABEL_8:
    v8 = _Block_copy(block);
    [(NSMutableArray *)self->_executionBlocks addObject:v8];
    _Block_release(v8);
    goto LABEL_9;
  }

  self->_block = _Block_copy(block);
LABEL_9:

  os_unfair_lock_unlock(&self->super._iop.__lock);
}

uint64_t __24__NSBlockOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  _CFSetTSD();
  _CFSetTSD();
  __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(*(*(a1 + 48) + 8 * a2));
  _CFSetTSD();

  return _CFSetTSD();
}

- (NSArray)executionBlocks
{
  v3 = objc_opt_new();
  os_unfair_lock_lock(&self->super._iop.__lock);
  if (self->_block)
  {
    [(NSArray *)v3 addObject:?];
  }

  else if (self->_executionBlocks)
  {
    [(NSArray *)v3 addObjectsFromArray:?];
  }

  os_unfair_lock_unlock(&self->super._iop.__lock);
  return v3;
}

@end