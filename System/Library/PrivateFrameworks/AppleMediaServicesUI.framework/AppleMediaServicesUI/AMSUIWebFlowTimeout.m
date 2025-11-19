@interface AMSUIWebFlowTimeout
+ (id)timeoutWithTimeout:(double)a3 queue:(id)a4 block:(id)a5;
- (AMSUIWebFlowTimeout)initWithTimeout:(double)a3 queue:(id)a4 block:(id)a5;
- (void)pause;
- (void)reset;
- (void)start;
@end

@implementation AMSUIWebFlowTimeout

- (AMSUIWebFlowTimeout)initWithTimeout:(double)a3 queue:(id)a4 block:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = AMSUIWebFlowTimeout;
  v11 = [(AMSUIWebFlowTimeout *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_timeout = a3;
    v11->_timeRemaining = a3;
    objc_storeStrong(&v11->_queue, a4);
    v13 = _Block_copy(v10);
    block = v12->_block;
    v12->_block = v13;
  }

  return v12;
}

+ (id)timeoutWithTimeout:(double)a3 queue:(id)a4 block:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [objc_alloc(objc_opt_class()) initWithTimeout:v8 queue:v7 block:a3];

  return v9;
}

- (void)start
{
  v3 = [(AMSUIWebFlowTimeout *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__AMSUIWebFlowTimeout_start__block_invoke;
  v7[3] = &unk_1E7F242D0;
  v7[4] = self;
  v4 = v7;
  v5 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_7;
  block[3] = &unk_1E7F245E0;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  dispatch_async(v3, block);
}

void __28__AMSUIWebFlowTimeout_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) enqueuedBlock];

  if (!v2)
  {
    objc_initWeak(&location, *(a1 + 32));
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __28__AMSUIWebFlowTimeout_start__block_invoke_2;
    v19 = &unk_1E7F24968;
    objc_copyWeak(&v20, &location);
    v3 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v16);
    [*(a1 + 32) setEnqueuedBlock:{v3, v16, v17, v18, v19}];

    v4 = [MEMORY[0x1E695DF00] now];
    [*(a1 + 32) setStartTime:v4];

    v5 = [*(a1 + 32) queue];
    [*(a1 + 32) timeRemaining];
    v7 = v6;
    v8 = [*(a1 + 32) enqueuedBlock];
    v9 = v5;
    v10 = v8;
    v11 = AMSLogKey();
    v12 = fmax(v7, 0.01) * 1000000000.0;
    if (v12 <= 9.22337204e18)
    {
      v13 = dispatch_time(0, v12);
    }

    else
    {
      v13 = -1;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAfter_block_invoke_0;
    block[3] = &unk_1E7F245E0;
    v23 = v11;
    v24 = v10;
    v14 = v11;
    v15 = v10;
    dispatch_after(v13, v9, block);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __28__AMSUIWebFlowTimeout_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEnqueuedBlock:0];
  v1 = [WeakRetained block];
  (v1)[2](v1, WeakRetained);
}

- (void)pause
{
  v3 = [(AMSUIWebFlowTimeout *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__AMSUIWebFlowTimeout_pause__block_invoke;
  v7[3] = &unk_1E7F242D0;
  v7[4] = self;
  v4 = v7;
  v5 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_7;
  block[3] = &unk_1E7F245E0;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  dispatch_async(v3, block);
}

void __28__AMSUIWebFlowTimeout_pause__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) enqueuedBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) enqueuedBlock];
    dispatch_block_cancel(v3);

    [*(a1 + 32) setEnqueuedBlock:0];
    [*(a1 + 32) timeRemaining];
    v5 = v4;
    v6 = [*(a1 + 32) startTime];
    [v6 timeIntervalSinceNow];
    v8 = v7;

    v9 = -v8;
    if (v8 >= 0.0)
    {
      v9 = v8;
    }

    v10 = v5 - v9;
    if (v10 < 0.0)
    {
      [*(a1 + 32) timeout];
      if (v10 > v11)
      {
        v10 = 0.0;
      }
    }

    v12 = *(a1 + 32);

    [v12 setTimeRemaining:v10];
  }
}

- (void)reset
{
  [(AMSUIWebFlowTimeout *)self pause];
  v3 = [(AMSUIWebFlowTimeout *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__AMSUIWebFlowTimeout_reset__block_invoke;
  v7[3] = &unk_1E7F242D0;
  v7[4] = self;
  v4 = v7;
  v5 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_7;
  block[3] = &unk_1E7F245E0;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  dispatch_async(v3, block);
}

uint64_t __28__AMSUIWebFlowTimeout_reset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) timeout];
  v2 = *(a1 + 32);

  return [v2 setTimeRemaining:?];
}

@end