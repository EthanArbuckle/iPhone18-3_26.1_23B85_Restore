@interface AXDispatchTimer
- (AXDispatchTimer)initWithTargetSerialQueue:(id)queue;
- (id)description;
- (void)_afterDelay:(double)delay processBlock:(id)block cancelBlock:(id)cancelBlock;
- (void)_reallyCancel;
- (void)afterDelay:(double)delay processBlock:(id)block cancelBlock:(id)cancelBlock;
- (void)cancel;
- (void)dealloc;
@end

@implementation AXDispatchTimer

- (void)cancel
{
  [(AXDispatchTimer *)self setCancelled:1];
  [(AXDispatchTimer *)self setPending:0];
  unsignedLongLongValue = [dispatch_get_specific(&DispatchQueueIDKey) unsignedLongLongValue];
  dispatchQueue = [(AXDispatchTimer *)self dispatchQueue];
  v5 = dispatchQueue;
  if (unsignedLongLongValue != dispatchQueue)
  {

    goto LABEL_7;
  }

  isActive = [(AXDispatchTimer *)self isActive];

  if (isActive)
  {
LABEL_7:
    dispatchQueue2 = [(AXDispatchTimer *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__AXDispatchTimer_cancel__block_invoke;
    block[3] = &unk_1E735AD18;
    block[4] = self;
    dispatch_async(dispatchQueue2, block);

    return;
  }

  [(AXDispatchTimer *)self _reallyCancel];
}

- (void)_reallyCancel
{
  dispatchTimer = [(AXDispatchTimer *)self dispatchTimer];
  v6 = dispatchTimer;
  if (dispatchTimer)
  {
    dispatch_source_cancel(dispatchTimer);
    [(AXDispatchTimer *)self setDispatchTimer:0];
  }

  else
  {
    cancelBlock = [(AXDispatchTimer *)self cancelBlock];

    if (cancelBlock)
    {
      cancelBlock2 = [(AXDispatchTimer *)self cancelBlock];
      cancelBlock2[2]();
    }
  }

  [(AXDispatchTimer *)self setCancelBlock:0];
  [(AXDispatchTimer *)self setProcessBlock:0];
}

- (AXDispatchTimer)initWithTargetSerialQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = AXDispatchTimer;
  v5 = [(AXDispatchTimer *)&v19 init];
  v6 = v5;
  if (v5)
  {
    if (queueCopy)
    {
      [(AXDispatchTimer *)v5 setDispatchQueue:queueCopy];
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 initWithFormat:@"%@.%@.TimerQueue", bundleIdentifier, v11];

      v13 = dispatch_queue_create([v12 UTF8String], 0);
      [(AXDispatchTimer *)v6 setDispatchQueue:v13];
    }

    dispatchQueue = [(AXDispatchTimer *)v6 dispatchQueue];
    v15 = MEMORY[0x1E696AD98];
    dispatchQueue2 = [(AXDispatchTimer *)v6 dispatchQueue];
    v17 = [v15 numberWithUnsignedLongLong:dispatchQueue2];
    dispatch_queue_set_specific(dispatchQueue, &DispatchQueueIDKey, v17, destructor);
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

- (void)_afterDelay:(double)delay processBlock:(id)block cancelBlock:(id)cancelBlock
{
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  if (![(AXDispatchTimer *)self isCancelled])
  {
    dispatchTimer = [(AXDispatchTimer *)self dispatchTimer];

    if (dispatchTimer)
    {
      if (![(AXDispatchTimer *)self automaticallyCancelPendingBlockUponSchedulingNewBlock])
      {
        goto LABEL_11;
      }

      [(AXDispatchTimer *)self _reallyCancel];
    }

    dispatchQueue = [(AXDispatchTimer *)self dispatchQueue];
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, dispatchQueue);

    if ([(AXDispatchTimer *)self useWallTime])
    {
      v13 = dispatch_walltime(0, (delay * 1000000000.0));
    }

    else
    {
      v13 = dispatch_time(0, (delay * 1000000000.0));
    }

    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (cancelBlockCopy)
    {
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __56__AXDispatchTimer__afterDelay_processBlock_cancelBlock___block_invoke;
      handler[3] = &unk_1E735B690;
      handler[4] = self;
      v19 = cancelBlockCopy;
      dispatch_source_set_cancel_handler(v12, handler);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__AXDispatchTimer__afterDelay_processBlock_cancelBlock___block_invoke_2;
    v15[3] = &unk_1E735B6B8;
    v15[4] = self;
    v16 = v12;
    v17 = blockCopy;
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

- (void)afterDelay:(double)delay processBlock:(id)block cancelBlock:(id)cancelBlock
{
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  [(AXDispatchTimer *)self setCancelled:0];
  [(AXDispatchTimer *)self setPending:1];
  [(AXDispatchTimer *)self setCancelBlock:cancelBlockCopy];
  [(AXDispatchTimer *)self setProcessBlock:blockCopy];
  unsignedLongLongValue = [dispatch_get_specific(&DispatchQueueIDKey) unsignedLongLongValue];
  dispatchQueue = [(AXDispatchTimer *)self dispatchQueue];
  v12 = dispatchQueue;
  if (unsignedLongLongValue != dispatchQueue)
  {

    goto LABEL_5;
  }

  isActive = [(AXDispatchTimer *)self isActive];

  if (isActive)
  {
LABEL_5:
    dispatchQueue2 = [(AXDispatchTimer *)self dispatchQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__AXDispatchTimer_afterDelay_processBlock_cancelBlock___block_invoke;
    v15[3] = &unk_1E735B6E0;
    v15[4] = self;
    delayCopy = delay;
    v16 = blockCopy;
    v17 = cancelBlockCopy;
    dispatch_async(dispatchQueue2, v15);

    goto LABEL_6;
  }

  [(AXDispatchTimer *)self _afterDelay:blockCopy processBlock:cancelBlockCopy cancelBlock:delay];
LABEL_6:
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = AXDispatchTimer;
  v4 = [(AXDispatchTimer *)&v8 description];
  label = [(AXDispatchTimer *)self label];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, label];

  return v6;
}

@end