@interface _AXReplayInstance
+ (id)replayBlock:(id)a3 name:(id)a4 attempts:(int64_t)a5 interval:(double)a6 async:(BOOL)a7 queue:(id)a8 completion:(id)a9;
- (OS_dispatch_queue)queue;
- (id)_genericFailError;
- (void)_dispatchAsynchronously;
- (void)_dispatchSynchronously;
- (void)dispatch;
@end

@implementation _AXReplayInstance

+ (id)replayBlock:(id)a3 name:(id)a4 attempts:(int64_t)a5 interval:(double)a6 async:(BOOL)a7 queue:(id)a8 completion:(id)a9
{
  v10 = a7;
  v15 = a9;
  v16 = a8;
  v17 = a4;
  v18 = a3;
  v19 = objc_alloc_init(_AXReplayInstance);
  [(_AXReplayInstance *)v19 setName:v17];

  [(_AXReplayInstance *)v19 setReplayBlock:v18];
  [(_AXReplayInstance *)v19 setCompletionBlock:v15];

  [(_AXReplayInstance *)v19 setAttemptsRemaining:a5];
  [(_AXReplayInstance *)v19 setMaxAttempts:a5];
  [(_AXReplayInstance *)v19 setInterval:a6];
  [(_AXReplayInstance *)v19 setAsync:v10];
  [(_AXReplayInstance *)v19 setQueue:v16];

  v20 = [(_AXReplayInstance *)v19 queue];

  if (!v20)
  {
    [(_AXReplayInstance *)v19 setQueue:MEMORY[0x1E69E96A0]];
  }

  return v19;
}

- (void)dispatch
{
  if ([(_AXReplayInstance *)self async])
  {
    v3 = [(_AXReplayInstance *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29___AXReplayInstance_dispatch__block_invoke;
    block[3] = &unk_1E71E9B98;
    block[4] = self;
    dispatch_async(v3, block);
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
      v4 = [(_AXReplayInstance *)self replayBlock];
      v17 = 0;
      v18 = 0;
      v5 = (v4)[2](v4, &v18, &v17);
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
    v12 = [(_AXReplayInstance *)self underlyingError];

    if (v12)
    {
      [(_AXReplayInstance *)self underlyingError];
    }

    else
    {
      [(_AXReplayInstance *)self _genericFailError];
    }
    v11 = ;
  }

  v13 = [(_AXReplayInstance *)self completionBlock];

  if (v13)
  {
    v14 = [(_AXReplayInstance *)self completionBlock];
    didSucceed = self->_didSucceed;
    v16 = [(_AXReplayInstance *)self underlyingResult];
    (v14)[2](v14, didSucceed, v16, v11);
  }
}

- (void)_dispatchAsynchronously
{
  --self->_attemptsRemaining;
  v3 = [(_AXReplayInstance *)self replayBlock];
  v19 = 0;
  v20 = 0;
  v4 = (v3)[2](v3, &v20, &v19);
  v5 = v20;
  v6 = v19;
  self->_didSucceed = v4;

  [(_AXReplayInstance *)self setUnderlyingError:v6];
  [(_AXReplayInstance *)self setUnderlyingResult:v5];
  if (self->_didSucceed)
  {
    v7 = [(_AXReplayInstance *)self completionBlock];

    if (v7)
    {
      v8 = [(_AXReplayInstance *)self completionBlock];
      v9 = [(_AXReplayInstance *)self underlyingResult];
      (v8)[2](v8, 1, v9, 0);

LABEL_11:
    }
  }

  else
  {
    if (self->_attemptsRemaining < 1)
    {
      v13 = [(_AXReplayInstance *)self underlyingError];
      if (v13)
      {
        [(_AXReplayInstance *)self underlyingError];
      }

      else
      {
        [(_AXReplayInstance *)self _genericFailError];
      }
      v8 = ;

      v14 = [(_AXReplayInstance *)self completionBlock];

      if (v14)
      {
        v15 = [(_AXReplayInstance *)self completionBlock];
        didSucceed = self->_didSucceed;
        v17 = [(_AXReplayInstance *)self underlyingResult];
        (v15)[2](v15, didSucceed, v17, v8);
      }

      goto LABEL_11;
    }

    [(_AXReplayInstance *)self interval];
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    v12 = [(_AXReplayInstance *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44___AXReplayInstance__dispatchAsynchronously__block_invoke;
    block[3] = &unk_1E71E9B98;
    block[4] = self;
    dispatch_after(v11, v12, block);
  }
}

- (id)_genericFailError
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = [(_AXReplayInstance *)self name];
  v4 = [v2 ax_errorWithDomain:@"AXReplayer" description:{@"Exhausted retry attempts for block: %@", v3}];

  return v4;
}

- (OS_dispatch_queue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

@end