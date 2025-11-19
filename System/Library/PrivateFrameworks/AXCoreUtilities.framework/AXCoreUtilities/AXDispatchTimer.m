@interface AXDispatchTimer
- (AXDispatchTimer)initWithTargetSerialQueue:(id)a3;
- (id)description;
- (void)_afterDelay:(double)a3 processBlock:(id)a4 cancelBlock:(id)a5;
- (void)_reallyCancel;
- (void)afterDelay:(double)a3 processBlock:(id)a4 cancelBlock:(id)a5;
- (void)cancel;
- (void)dealloc;
@end

@implementation AXDispatchTimer

- (void)cancel
{
  [(AXDispatchTimer *)self setCancelled:1];
  [(AXDispatchTimer *)self setPending:0];
  v3 = [dispatch_get_specific(&DispatchQueueIDKey) unsignedLongLongValue];
  v4 = [(AXDispatchTimer *)self dispatchQueue];
  v5 = v4;
  if (v3 != v4)
  {

    goto LABEL_7;
  }

  v6 = [(AXDispatchTimer *)self isActive];

  if (v6)
  {
LABEL_7:
    v7 = [(AXDispatchTimer *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__AXDispatchTimer_cancel__block_invoke;
    block[3] = &unk_1E735AD18;
    block[4] = self;
    dispatch_async(v7, block);

    return;
  }

  [(AXDispatchTimer *)self _reallyCancel];
}

- (void)_reallyCancel
{
  v3 = [(AXDispatchTimer *)self dispatchTimer];
  v6 = v3;
  if (v3)
  {
    dispatch_source_cancel(v3);
    [(AXDispatchTimer *)self setDispatchTimer:0];
  }

  else
  {
    v4 = [(AXDispatchTimer *)self cancelBlock];

    if (v4)
    {
      v5 = [(AXDispatchTimer *)self cancelBlock];
      v5[2]();
    }
  }

  [(AXDispatchTimer *)self setCancelBlock:0];
  [(AXDispatchTimer *)self setProcessBlock:0];
}

- (AXDispatchTimer)initWithTargetSerialQueue:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AXDispatchTimer;
  v5 = [(AXDispatchTimer *)&v19 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      [(AXDispatchTimer *)v5 setDispatchQueue:v4];
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = [MEMORY[0x1E696AAE8] mainBundle];
      v9 = [v8 bundleIdentifier];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 initWithFormat:@"%@.%@.TimerQueue", v9, v11];

      v13 = dispatch_queue_create([v12 UTF8String], 0);
      [(AXDispatchTimer *)v6 setDispatchQueue:v13];
    }

    v14 = [(AXDispatchTimer *)v6 dispatchQueue];
    v15 = MEMORY[0x1E696AD98];
    v16 = [(AXDispatchTimer *)v6 dispatchQueue];
    v17 = [v15 numberWithUnsignedLongLong:v16];
    dispatch_queue_set_specific(v14, &DispatchQueueIDKey, v17, destructor);
  }

  return v6;
}

- (void)dealloc
{
  [(AXDispatchTimer *)self _reallyCancel];
  v3.receiver = self;
  v3.super_class = AXDispatchTimer;
  [(AXDispatchTimer *)&v3 dealloc];
}

- (void)_afterDelay:(double)a3 processBlock:(id)a4 cancelBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (![(AXDispatchTimer *)self isCancelled])
  {
    v10 = [(AXDispatchTimer *)self dispatchTimer];

    if (v10)
    {
      if (![(AXDispatchTimer *)self automaticallyCancelPendingBlockUponSchedulingNewBlock])
      {
        goto LABEL_11;
      }

      [(AXDispatchTimer *)self _reallyCancel];
    }

    v11 = [(AXDispatchTimer *)self dispatchQueue];
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);

    if ([(AXDispatchTimer *)self useWallTime])
    {
      v13 = dispatch_walltime(0, (a3 * 1000000000.0));
    }

    else
    {
      v13 = dispatch_time(0, (a3 * 1000000000.0));
    }

    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (v9)
    {
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __56__AXDispatchTimer__afterDelay_processBlock_cancelBlock___block_invoke;
      handler[3] = &unk_1E735B690;
      handler[4] = self;
      v19 = v9;
      dispatch_source_set_cancel_handler(v12, handler);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__AXDispatchTimer__afterDelay_processBlock_cancelBlock___block_invoke_2;
    v15[3] = &unk_1E735B6B8;
    v15[4] = self;
    v16 = v12;
    v17 = v8;
    v14 = v12;
    dispatch_source_set_event_handler(v14, v15);
    dispatch_resume(v14);
    [(AXDispatchTimer *)self setDispatchTimer:v14];
  }

LABEL_11:
}

uint64_t __56__AXDispatchTimer__afterDelay_processBlock_cancelBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPending:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __56__AXDispatchTimer__afterDelay_processBlock_cancelBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setPending:0];
  [*(a1 + 32) setActive:1];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) setActive:0];
  dispatch_source_set_cancel_handler(*(a1 + 40), &__block_literal_global_3);
  v2 = *(a1 + 32);

  return [v2 _reallyCancel];
}

- (void)afterDelay:(double)a3 processBlock:(id)a4 cancelBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(AXDispatchTimer *)self setCancelled:0];
  [(AXDispatchTimer *)self setPending:1];
  [(AXDispatchTimer *)self setCancelBlock:v9];
  [(AXDispatchTimer *)self setProcessBlock:v8];
  v10 = [dispatch_get_specific(&DispatchQueueIDKey) unsignedLongLongValue];
  v11 = [(AXDispatchTimer *)self dispatchQueue];
  v12 = v11;
  if (v10 != v11)
  {

    goto LABEL_5;
  }

  v13 = [(AXDispatchTimer *)self isActive];

  if (v13)
  {
LABEL_5:
    v14 = [(AXDispatchTimer *)self dispatchQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__AXDispatchTimer_afterDelay_processBlock_cancelBlock___block_invoke;
    v15[3] = &unk_1E735B6E0;
    v15[4] = self;
    v18 = a3;
    v16 = v8;
    v17 = v9;
    dispatch_async(v14, v15);

    goto LABEL_6;
  }

  [(AXDispatchTimer *)self _afterDelay:v8 processBlock:v9 cancelBlock:a3];
LABEL_6:
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = AXDispatchTimer;
  v4 = [(AXDispatchTimer *)&v8 description];
  v5 = [(AXDispatchTimer *)self label];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

@end