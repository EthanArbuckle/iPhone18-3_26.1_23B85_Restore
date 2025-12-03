@interface _HKTaskCompletionCounter
+ (id)counterWithTargetCount:(int64_t)count queue:(id)queue completion:(id)completion;
- (void)_invalidate;
- (void)allTasksEnqueued;
- (void)decrementCounter;
- (void)incrementCounter;
@end

@implementation _HKTaskCompletionCounter

+ (id)counterWithTargetCount:(int64_t)count queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v12 = completionCopy;
  if (queueCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_HKTaskCompletionCounter counterWithTargetCount:a2 queue:self completion:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [_HKTaskCompletionCounter counterWithTargetCount:a2 queue:self completion:?];
LABEL_3:
  v13 = objc_alloc_init(_HKTaskCompletionCounter);
  if (v13)
  {
    v14 = _Block_copy(v12);
    completion = v13->_completion;
    v13->_completion = v14;

    objc_storeStrong(&v13->_queue, queue);
    v13->_target = count;
  }

  return v13;
}

- (void)decrementCounter
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___HKTaskCompletionCounter_decrementCounter__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)incrementCounter
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___HKTaskCompletionCounter_incrementCounter__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)allTasksEnqueued
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___HKTaskCompletionCounter_allTasksEnqueued__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidate
{
  completion = self->_completion;
  self->_completion = 0;
  MEMORY[0x1EEE66BB8]();
}

+ (void)counterWithTargetCount:(uint64_t)a1 queue:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKUtilities.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"queue != NULL"}];
}

+ (void)counterWithTargetCount:(uint64_t)a1 queue:(uint64_t)a2 completion:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKUtilities.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"completion != NULL"}];
}

@end