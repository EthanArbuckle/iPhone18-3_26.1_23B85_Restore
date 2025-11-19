@interface ARRenderSyncScheduler
- (ARRenderSyncScheduler)initWithExpectedFramesPerSecond:(int64_t)a3;
- (BOOL)schedulingActive;
- (unint64_t)_callbackActionForBlockWithLatency:(double)a3;
- (void)_callback;
- (void)_tryNextBlockWithTotalTried:(unint64_t)a3;
- (void)setSchedulingActive:(BOOL)a3;
- (void)submitBlock:(id)a3;
@end

@implementation ARRenderSyncScheduler

- (ARRenderSyncScheduler)initWithExpectedFramesPerSecond:(int64_t)a3
{
  v17.receiver = self;
  v17.super_class = ARRenderSyncScheduler;
  v4 = [(ARRenderSyncScheduler *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_opt_new();
    blocks = v5->_blocks;
    v5->_blocks = v6;

    v8 = [[ARRollingNumberSeries alloc] initWithWindowSize:7];
    latencies = v5->_latencies;
    v5->_latencies = v8;

    v5->_schedulingActive = 1;
    objc_initWeak(&location, v5);
    v10 = [ARDisplayLink alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__ARRenderSyncScheduler_initWithExpectedFramesPerSecond___block_invoke;
    v14[3] = &unk_1E817BD88;
    objc_copyWeak(&v15, &location);
    v11 = [(ARDisplayLink *)v10 initWithPreferredFramesPerSecond:a3 callback:v14];
    displayLink = v5->_displayLink;
    v5->_displayLink = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __57__ARRenderSyncScheduler_initWithExpectedFramesPerSecond___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callback];
}

- (BOOL)schedulingActive
{
  os_unfair_lock_lock(&self->_lock);
  schedulingActive = self->_schedulingActive;
  os_unfair_lock_unlock(&self->_lock);
  return schedulingActive;
}

- (void)setSchedulingActive:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  self->_schedulingActive = a3;
  if (!a3)
  {
    if ([(ARRenderSyncScheduler *)self excessiveCallbackOptions]== 1)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = self->_blocks;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          v9 = 0;
          do
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v13 + 1) + 8 * v9);
            v11 = [(ARDisplayLink *)self->_displayLink runloop];
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 3221225472;
            v12[2] = __45__ARRenderSyncScheduler_setSchedulingActive___block_invoke;
            v12[3] = &unk_1E817BFE8;
            v12[4] = v10;
            [v11 runOnRunLoop:v12];

            ++v9;
          }

          while (v7 != v9);
          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }

    [(NSMutableArray *)self->_blocks removeAllObjects];
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __45__ARRenderSyncScheduler_setSchedulingActive___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) block];
  v1[2]();
}

- (void)submitBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_schedulingActive)
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x1E695DF00] date];
    [v5 setEntryTimestamp:v6];

    [v5 setBlock:v4];
    [(NSMutableArray *)self->_blocks addObject:v5];
  }

  else
  {
    v7 = [(ARDisplayLink *)self->_displayLink runloop];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__ARRenderSyncScheduler_submitBlock___block_invoke;
    v8[3] = &unk_1E817CC30;
    v9 = v4;
    [v7 runOnRunLoop:v8];
  }

  [(NSMutableArray *)self->_blocks count];
  kdebug_trace();
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_callback
{
  [(ARDisplayLink *)self->_displayLink vsyncOffset];
  [(ARRenderSyncScheduler *)self inputJitterBufferInterval];
  [(ARRenderSyncScheduler *)self expectedFramesPerSecond];
  kdebug_trace();

  [(ARRenderSyncScheduler *)self _tryNextBlockWithTotalTried:0];
}

- (void)_tryNextBlockWithTotalTried:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_schedulingActive)
  {
    os_unfair_lock_unlock(&self->_lock);
    v10 = 0;
    goto LABEL_21;
  }

  v5 = [(NSMutableArray *)self->_blocks firstObject];
  v13 = v5;
  if (v5)
  {
    v6 = [v5 entryTimestamp];
    [v6 timeIntervalSinceNow];
    v8 = -v7;

    v9 = [(ARRenderSyncScheduler *)self _callbackActionForBlockWithLatency:v8];
  }

  else
  {
    v9 = 0;
  }

  [(NSMutableArray *)self->_blocks count];
  kdebug_trace();
  if (v9)
  {
    [(NSMutableArray *)self->_blocks removeObjectAtIndex:0];
    os_unfair_lock_unlock(&self->_lock);
    if (v13)
    {
      if (!a3)
      {
        v12 = [v13 block];
        v12[2]();

        self->_reportAdjustments = 1;
        if ((v9 & 2) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      if ([(ARRenderSyncScheduler *)self excessiveCallbackOptions]== 1)
      {
        v11 = [v13 block];
        v11[2]();
      }

      self->_reportAdjustments = 1;
      [(ARRenderSyncScheduler *)self excessiveCallbackOptions];
      goto LABEL_17;
    }

    if (!a3 && self->_reportAdjustments)
    {
LABEL_17:
      kdebug_trace();
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    if (!a3 && self->_reportAdjustments)
    {
      goto LABEL_17;
    }
  }

  if ((v9 & 2) != 0)
  {
LABEL_19:
    kdebug_trace();
    [(ARRenderSyncScheduler *)self _tryNextBlockWithTotalTried:a3 + 1];
  }

LABEL_20:
  v10 = v13;
LABEL_21:
}

- (unint64_t)_callbackActionForBlockWithLatency:(double)a3
{
  [(ARRenderSyncScheduler *)self inputJitterBufferInterval];
  v6 = v5;
  [(ARRollingNumberSeries *)self->_latencies count];
  [(ARRollingNumberSeries *)self->_latencies min];
  [(ARRollingNumberSeries *)self->_latencies max];
  kdebug_trace();
  if (!self->_initialLatencyReached)
  {
    if (v6 > a3)
    {
      return 0;
    }

    self->_initialLatencyReached = 1;
  }

  if ([(ARRollingNumberSeries *)self->_latencies count])
  {
    [(ARRollingNumberSeries *)self->_latencies max];
    if (v7 < v6)
    {
      self->_initialLatencyReached = 0;
      [(ARRollingNumberSeries *)self->_latencies clear];
      return 0;
    }
  }

  [(ARRollingNumberSeries *)self->_latencies appendNumber:a3];
  v9 = [(ARRollingNumberSeries *)self->_latencies count];
  if (v9 != [(ARRollingNumberSeries *)self->_latencies windowSize])
  {
    return 1;
  }

  [(ARRollingNumberSeries *)self->_latencies min];
  if (v10 <= v6 + 1.0 / [(ARRenderSyncScheduler *)self expectedFramesPerSecond])
  {
    return 1;
  }

  self->_initialLatencyReached = 0;
  return 3;
}

@end