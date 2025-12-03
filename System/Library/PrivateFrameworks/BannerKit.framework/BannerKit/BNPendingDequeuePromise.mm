@interface BNPendingDequeuePromise
- (BNPendingDequeuePromise)initWithPostingContext:(id)context dequeueBlock:(id)block;
- (void)dequeue;
@end

@implementation BNPendingDequeuePromise

- (BNPendingDequeuePromise)initWithPostingContext:(id)context dequeueBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v10 = blockCopy;
  if (contextCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BNPendingDequeuePromise initWithPostingContext:a2 dequeueBlock:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [BNPendingDequeuePromise initWithPostingContext:a2 dequeueBlock:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = BNPendingDequeuePromise;
  v11 = [(BNPendingDequeuePromise *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_postingContext, context);
    v13 = [v10 copy];
    dequeueBlock = v12->_dequeueBlock;
    v12->_dequeueBlock = v13;
  }

  return v12;
}

- (void)dequeue
{
  v5 = MEMORY[0x1C6936EC0](self->_dequeueBlock, a2);
  dequeueBlock = self->_dequeueBlock;
  self->_dequeueBlock = 0;

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, self->_postingContext);
    v4 = v5;
  }
}

- (void)initWithPostingContext:(uint64_t)a1 dequeueBlock:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNPresentableQueue.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"postingContext"}];
}

- (void)initWithPostingContext:(uint64_t)a1 dequeueBlock:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNPresentableQueue.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"dequeueBlock"}];
}

@end