@interface _AXReplayInstance
+ (id)replayBlock:(id)block name:(id)name attempts:(int64_t)attempts interval:(double)interval async:(BOOL)async queue:(id)queue completion:(id)completion;
- (OS_dispatch_queue)queue;
- (id)_genericFailError;
- (void)_dispatchAsynchronously;
- (void)_dispatchSynchronously;
- (void)dispatch;
@end

@implementation _AXReplayInstance

+ (id)replayBlock:(id)block name:(id)name attempts:(int64_t)attempts interval:(double)interval async:(BOOL)async queue:(id)queue completion:(id)completion
{
  asyncCopy = async;
  completionCopy = completion;
  queueCopy = queue;
  nameCopy = name;
  blockCopy = block;
  v19 = objc_alloc_init(_AXReplayInstance);
  [(_AXReplayInstance *)v19 setName:nameCopy];

  [(_AXReplayInstance *)v19 setReplayBlock:blockCopy];
  [(_AXReplayInstance *)v19 setCompletionBlock:completionCopy];

  [(_AXReplayInstance *)v19 setAttemptsRemaining:attempts];
  [(_AXReplayInstance *)v19 setMaxAttempts:attempts];
  [(_AXReplayInstance *)v19 setInterval:interval];
  [(_AXReplayInstance *)v19 setAsync:asyncCopy];
  [(_AXReplayInstance *)v19 setQueue:queueCopy];

  queue = [(_AXReplayInstance *)v19 queue];

  if (!queue)
  {
    [(_AXReplayInstance *)v19 setQueue:MEMORY[0x1E69E96A0]];
  }

  return v19;
}

- (void)dispatch
{
  if ([(_AXReplayInstance *)self async])
  {
    queue = [(_AXReplayInstance *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29___AXReplayInstance_dispatch__block_invoke;
    block[3] = &unk_1E71E9B98;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {

    [(_AXReplayInstance *)self _dispatchSynchronously];
  }
}

- (void)_dispatchSynchronously
{
  attemptsRemaining = self->_attemptsRemaining;
  if (attemptsRemaining >= 1)
  {
    do
    {
      self->_attemptsRemaining = attemptsRemaining - 1;
      replayBlock = [(_AXReplayInstance *)self replayBlock];
      v17 = 0;
      v18 = 0;
      v5 = (replayBlock)[2](replayBlock, &v18, &v17);
      v6 = v18;
      v7 = v17;

      [(_AXReplayInstance *)self setUnderlyingResult:v6];
      [(_AXReplayInstance *)self setUnderlyingError:v7];
      if (v5)
      {
        self->_didSucceed = 1;
      }

      else
      {
        v8 = MEMORY[0x1E696AF00];
        [(_AXReplayInstance *)self interval];
        v10 = v9;

        [v8 sleepForTimeInterval:v10];
      }

      attemptsRemaining = self->_attemptsRemaining;
    }

    while (attemptsRemaining > 0);
  }

  if (self->_didSucceed)
  {
    v11 = 0;
  }

  else
  {
    underlyingError = [(_AXReplayInstance *)self underlyingError];

    if (underlyingError)
    {
      [(_AXReplayInstance *)self underlyingError];
    }

    else
    {
      [(_AXReplayInstance *)self _genericFailError];
    }
    v11 = ;
  }

  completionBlock = [(_AXReplayInstance *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(_AXReplayInstance *)self completionBlock];
    didSucceed = self->_didSucceed;
    underlyingResult = [(_AXReplayInstance *)self underlyingResult];
    (completionBlock2)[2](completionBlock2, didSucceed, underlyingResult, v11);
  }
}

- (void)_dispatchAsynchronously
{
  --self->_attemptsRemaining;
  replayBlock = [(_AXReplayInstance *)self replayBlock];
  v19 = 0;
  v20 = 0;
  v4 = (replayBlock)[2](replayBlock, &v20, &v19);
  v5 = v20;
  v6 = v19;
  self->_didSucceed = v4;

  [(_AXReplayInstance *)self setUnderlyingError:v6];
  [(_AXReplayInstance *)self setUnderlyingResult:v5];
  if (self->_didSucceed)
  {
    completionBlock = [(_AXReplayInstance *)self completionBlock];

    if (completionBlock)
    {
      completionBlock2 = [(_AXReplayInstance *)self completionBlock];
      underlyingResult = [(_AXReplayInstance *)self underlyingResult];
      (completionBlock2)[2](completionBlock2, 1, underlyingResult, 0);

LABEL_11:
    }
  }

  else
  {
    if (self->_attemptsRemaining < 1)
    {
      underlyingError = [(_AXReplayInstance *)self underlyingError];
      if (underlyingError)
      {
        [(_AXReplayInstance *)self underlyingError];
      }

      else
      {
        [(_AXReplayInstance *)self _genericFailError];
      }
      completionBlock2 = ;

      completionBlock3 = [(_AXReplayInstance *)self completionBlock];

      if (completionBlock3)
      {
        completionBlock4 = [(_AXReplayInstance *)self completionBlock];
        didSucceed = self->_didSucceed;
        underlyingResult2 = [(_AXReplayInstance *)self underlyingResult];
        (completionBlock4)[2](completionBlock4, didSucceed, underlyingResult2, completionBlock2);
      }

      goto LABEL_11;
    }

    [(_AXReplayInstance *)self interval];
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    queue = [(_AXReplayInstance *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44___AXReplayInstance__dispatchAsynchronously__block_invoke;
    block[3] = &unk_1E71E9B98;
    block[4] = self;
    dispatch_after(v11, queue, block);
  }
}

- (id)_genericFailError
{
  v2 = MEMORY[0x1E696ABC0];
  name = [(_AXReplayInstance *)self name];
  v4 = [v2 ax_errorWithDomain:@"AXReplayer" description:{@"Exhausted retry attempts for block: %@", name}];

  return v4;
}

- (OS_dispatch_queue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

@end