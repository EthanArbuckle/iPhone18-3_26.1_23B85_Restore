@interface FPPacer
- (FPPacer)initWithName:(id)a3 queue:(id)a4 minFireInterval:(double)a5;
- (double)_computeNextTime;
- (void)_fire;
- (void)_scheduleNextFire;
- (void)dealloc;
- (void)resume;
- (void)signalWithTransferredQoSIfImmediate;
- (void)suspend;
@end

@implementation FPPacer

- (void)resume
{
  if (atomic_fetch_add(&self->_sourceSuspendCount, 0xFFFFFFFF) == 1)
  {
    dispatch_resume(self->_source);
  }
}

- (void)suspend
{
  if (!atomic_fetch_add(&self->_sourceSuspendCount, 1u))
  {
    dispatch_suspend(self->_source);
  }
}

- (void)_scheduleNextFire
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(FPPacer *)self explicitFireBlock];
  [(FPPacer *)self setExplicitFireBlock:0];
  [(FPPacer *)self _computeNextTime];
  if (v4 <= 0.0)
  {
    if (v3)
    {
      v3[2](v3);
    }

    else
    {
      [(FPPacer *)self _fire];
    }
  }

  else
  {
    v5 = v4;
    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
      v7 = self->_timer;
      self->_timer = 0;
    }

    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    v9 = self->_timer;
    self->_timer = v8;

    v10 = self->_timer;
    dispatch_set_qos_class_fallback();
    objc_initWeak(&location, self);
    v11 = self->_timer;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __28__FPPacer__scheduleNextFire__block_invoke;
    v16[3] = &unk_1E7939010;
    objc_copyWeak(&v17, &location);
    v12 = v11;
    v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v16);
    dispatch_source_set_event_handler(v12, v13);

    v14 = v5 * 1000000000.0;
    v15 = dispatch_time(0, v14);
    dispatch_source_set_timer(self->_timer, v15, 0xFFFFFFFFFFFFFFFFLL, v14);
    dispatch_resume(self->_timer);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __46__FPPacer_signalWithTransferredQoSIfImmediate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fire];
}

- (void)_fire
{
  dispatch_assert_queue_V2(self->_queue);
  if (atomic_load_explicit(&self->_sourceSuspendCount, memory_order_acquire) < 1)
  {
    self->_lastFireTime = CFAbsoluteTimeGetCurrent();
    v3 = [(FPPacer *)self eventBlock];

    if (v3)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [(FPPacer *)self eventBlock];
      v5[2]();

      objc_autoreleasePoolPop(v4);
    }
  }

  else
  {

    [(FPPacer *)self signal];
  }
}

- (void)signalWithTransferredQoSIfImmediate
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __46__FPPacer_signalWithTransferredQoSIfImmediate__block_invoke;
  v7 = &unk_1E7939010;
  objc_copyWeak(&v8, &location);
  v3 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v4);
  [(FPPacer *)self setExplicitFireBlock:v3, v4, v5, v6, v7];

  [(FPPacer *)self signal];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (double)_computeNextTime
{
  dispatch_assert_queue_V2(self->_queue);
  result = 0.0;
  if (self->_lastFireTime != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    minFireInterval = self->_minFireInterval;
    v6 = Current - self->_lastFireTime;
    v7 = minFireInterval - v6;
    v8 = v6 < minFireInterval;
    result = 0.0;
    if (v8)
    {
      return v7;
    }
  }

  return result;
}

- (FPPacer)initWithName:(id)a3 queue:(id)a4 minFireInterval:(double)a5
{
  v8 = a4;
  v21.receiver = self;
  v21.super_class = FPPacer;
  v9 = [(FPPacer *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_lastFireTime = 0.0;
    v9->_minFireInterval = a5;
    objc_storeStrong(&v9->_queue, a4);
    v11 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, v10->_queue);
    source = v10->_source;
    v10->_source = v11;

    v13 = v10->_source;
    dispatch_set_qos_class_fallback();
    objc_initWeak(&location, v10);
    v14 = v10->_source;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__FPPacer_initWithName_queue_minFireInterval___block_invoke;
    v18[3] = &unk_1E7939010;
    objc_copyWeak(&v19, &location);
    v15 = v14;
    v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v18);
    dispatch_source_set_event_handler(v15, v16);

    atomic_store(1u, &v10->_sourceSuspendCount);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __46__FPPacer_initWithName_queue_minFireInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleNextFire];
}

- (void)dealloc
{
  queue = self->_queue;
  self->_queue = 0;

  if (atomic_load_explicit(&self->_sourceSuspendCount, memory_order_acquire) >= 1)
  {
    dispatch_resume(self->_source);
  }

  dispatch_activate(self->_source);
  source = self->_source;
  self->_source = 0;

  timer = self->_timer;
  self->_timer = 0;

  v6.receiver = self;
  v6.super_class = FPPacer;
  [(FPPacer *)&v6 dealloc];
}

void __28__FPPacer__scheduleNextFire__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_source_cancel(WeakRetained[5]);
    [(dispatch_source_t *)v3 _fire];
    v2 = v3[5];
    v3[5] = 0;

    WeakRetained = v3;
  }
}

@end