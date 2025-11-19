@interface ARFrameUpdateTimer
- (ARFrameUpdateTimer)init;
- (ARFrameUpdateTimer)initWithTimeProvider:(id)a3 executor:(id)a4;
- (ARFrameUpdateTimerDelegate)delegate;
- (double)_timeSinceFrameWasScheduled:(id)a3;
- (double)_timeTillNextTimerTick;
- (double)timeoutForNextFrameUpdateWithNumberOfInFlightContexts:(unint64_t)a3;
- (unint64_t)_unvendedFramesCount;
- (void)_frameUpdateTick;
- (void)_startExecutorWithFrameRate:(unint64_t)a3 initialDelay:(double)a4;
- (void)_storeNewFrame:(id)a3;
- (void)_updateExecutorForFrameRate:(unint64_t)a3;
- (void)_vendFrame:(id)a3 withReason:(unint64_t)a4;
- (void)_vendFrameIfAtLastTickNoFrameWasVended;
- (void)_vendFramesIfTooManyFramesAreQueued;
- (void)_vendFramesThatExceedTheMaximumLatency;
- (void)resetState;
- (void)scheduleFrame:(id)a3 captureFramesPerSecond:(unint64_t)a4;
- (void)setActive:(BOOL)a3;
- (void)stop;
@end

@implementation ARFrameUpdateTimer

- (ARFrameUpdateTimer)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ARFrameUpdateTimer *)self initWithTimeProvider:v3 executor:v4];

  return v5;
}

- (ARFrameUpdateTimer)initWithTimeProvider:(id)a3 executor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ARFrameUpdateTimer;
  v9 = [(ARFrameUpdateTimer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    *(v9 + 104) = xmmword_1C25F0A20;
    *(v9 + 8) = 0;
    v9[88] = ![ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.disableRenderSyncScheduling"];
    objc_storeStrong(&v10->_timeProvider, a3);
    objc_storeStrong(&v10->_executor, a4);
    [(ARFrameUpdateTimer *)v10 resetState];
  }

  return v10;
}

- (void)resetState
{
  os_unfair_lock_lock_with_options();
  self->_frameRate = 0;
  v3 = objc_opt_new();
  unvendedFrames = self->_unvendedFrames;
  self->_unvendedFrames = v3;

  self->_lastTimerTick = 0.0;
  self->_lastFrameVendTimestamp = 0.0;
  self->_frameWasVendedAtLastTimerTick = 1;
  self->_lastFrameVendReason = 0;

  os_unfair_lock_unlock(&self->_unvendedFramesLock);
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      [(ARFrameUpdateTimer *)self resetState];
    }

    else
    {
      [(ARFrameUpdateTimer *)self stop];
    }
  }
}

- (void)stop
{
  [(ARRepetitiveExecutor *)self->_executor stop];

  [(ARFrameUpdateTimer *)self resetState];
}

- (unint64_t)_unvendedFramesCount
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_unvendedFrames count];
  os_unfair_lock_unlock(&self->_unvendedFramesLock);
  return v3;
}

- (void)_storeNewFrame:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_unvendedFrames addObject:v4];
  [(NSMutableArray *)self->_unvendedFrames sortUsingComparator:&__block_literal_global_19];
  os_unfair_lock_unlock(&self->_unvendedFramesLock);
}

uint64_t __37__ARFrameUpdateTimer__storeNewFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 timestamp];
  v6 = v5;
  [v4 timestamp];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)_vendFrameIfAtLastTickNoFrameWasVended
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_frameWasVendedAtLastTimerTick)
  {
    [(ARFrameUpdateTimer *)self _timeTillNextTimerTick];
    v4 = v3;
    [(ARFrameUpdateTimer *)self _frameDuration];
    if (v4 >= v5 * 0.5)
    {
      os_unfair_lock_lock_with_options();
      v6 = [(NSMutableArray *)self->_unvendedFrames firstObject];
      if (!v6 || [(ARFrameUpdateTimer *)self _latencyIsTooLowForFrame:v6]&& self->_lastFrameVendReason == 1)
      {
        os_unfair_lock_unlock(&self->_unvendedFramesLock);
      }

      else
      {
        v7 = _ARLogGeneral_40();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          v10 = 138543618;
          v11 = v9;
          v12 = 2048;
          v13 = self;
          _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Vending frame outside of timer tick.", &v10, 0x16u);
        }

        [(NSMutableArray *)self->_unvendedFrames removeObjectAtIndex:0];
        os_unfair_lock_unlock(&self->_unvendedFramesLock);
        [(ARFrameUpdateTimer *)self _vendFrame:v6 withReason:1];
      }
    }
  }
}

- (void)_vendFramesThatExceedTheMaximumLatency
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  os_unfair_lock_lock_with_options();
  *&v4 = 138543874;
  v14 = v4;
  while ([(NSMutableArray *)self->_unvendedFrames count])
  {
    v5 = [(NSMutableArray *)self->_unvendedFrames firstObject];
    if (![(ARFrameUpdateTimer *)self _latencyIsTooHighForFrame:v5])
    {

      break;
    }

    v6 = _ARLogGeneral_40();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      maxDesiredLatency = self->_maxDesiredLatency;
      *buf = v14;
      v21 = v8;
      v22 = 2048;
      v23 = self;
      v24 = 2048;
      v25 = maxDesiredLatency;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Vending frame outside of timer tick because maximum latency of %f s is reached.", buf, 0x20u);
    }

    [(NSMutableArray *)self->_unvendedFrames removeObjectAtIndex:0];
    [v3 addObject:v5];
  }

  os_unfair_lock_unlock(&self->_unvendedFramesLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [(ARFrameUpdateTimer *)self _vendFrame:*(*(&v15 + 1) + 8 * v13++) withReason:2];
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_vendFramesIfTooManyFramesAreQueued
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  os_unfair_lock_lock_with_options();
  *&v4 = 138543874;
  v14 = v4;
  while ([(NSMutableArray *)self->_unvendedFrames count]>= 3)
  {
    v5 = [(NSMutableArray *)self->_unvendedFrames firstObject];
    v6 = _ARLogGeneral_40();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [(NSMutableArray *)self->_unvendedFrames count];
      *buf = v14;
      v21 = v8;
      v22 = 2048;
      v23 = self;
      v24 = 2048;
      v25 = v9 - 1;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Vending frame outside of timer tick because %lu frames are already queued.", buf, 0x20u);
    }

    [(NSMutableArray *)self->_unvendedFrames removeObjectAtIndex:0];
    [v3 addObject:v5];
  }

  os_unfair_lock_unlock(&self->_unvendedFramesLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [(ARFrameUpdateTimer *)self _vendFrame:*(*(&v15 + 1) + 8 * v13++) withReason:4];
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)scheduleFrame:(id)a3 captureFramesPerSecond:(unint64_t)a4
{
  active = self->_active;
  v7 = a3;
  [v7 timestamp];
  if (active)
  {
    [(ARFrameUpdateTimer *)self _unvendedFramesCount];
    kdebug_trace();
    [(ARFrameUpdateTimer *)self _storeNewFrame:v7];

    [(ARFrameUpdateTimer *)self _vendFrameIfAtLastTickNoFrameWasVended];
    if ([(ARFrameUpdateTimer *)self _unvendedFramesCount]>= 2 && [(ARFrameUpdateTimer *)self _isBeforeFirstTimerTick])
    {

      [(ARFrameUpdateTimer *)self _startExecutorWithFrameRate:a4 initialDelay:0.0];
    }

    else
    {
      [(ARFrameUpdateTimer *)self _vendFramesThatExceedTheMaximumLatency];
      [(ARFrameUpdateTimer *)self _vendFramesIfTooManyFramesAreQueued];

      [(ARFrameUpdateTimer *)self _updateExecutorForFrameRate:a4];
    }
  }

  else
  {
    kdebug_trace();
    [(ARFrameUpdateTimer *)self _vendFrame:v7 withReason:3];
  }
}

- (double)timeoutForNextFrameUpdateWithNumberOfInFlightContexts:(unint64_t)a3
{
  result = 0.022;
  if (self->_active)
  {
    if (self->_frameRate)
    {
      [(ARFrameUpdateTimer *)self _timeTillNextTimerTick];
      v7 = v6;
      v8 = (a3 + [(ARFrameUpdateTimer *)self _unvendedFramesCount]- 1);
      [(ARFrameUpdateTimer *)self _frameDuration];
      return fmax(v7 + v8 * v9 + -0.003, 0.022);
    }
  }

  return result;
}

- (void)_updateExecutorForFrameRate:(unint64_t)a3
{
  if (![(ARRepetitiveExecutor *)self->_executor isRunning]|| self->_frameRate != a3)
  {
    self->_frameRate = a3;
    [(ARFrameUpdateTimer *)self minLatency];

    [(ARFrameUpdateTimer *)self _startExecutorWithFrameRate:a3 initialDelay:?];
  }
}

- (void)_startExecutorWithFrameRate:(unint64_t)a3 initialDelay:(double)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = _ARLogGeneral_40();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544130;
    v14 = v9;
    v15 = 2048;
    v16 = self;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Starting ARDispatchSourceExecutor with frame rate %lu and initialDelay %f", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  executor = self->_executor;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__ARFrameUpdateTimer__startExecutorWithFrameRate_initialDelay___block_invoke;
  v11[3] = &unk_1E817BD88;
  objc_copyWeak(&v12, buf);
  [(ARRepetitiveExecutor *)executor executeWithInterval:v11 initialDelay:1.0 / a3 block:a4];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __63__ARFrameUpdateTimer__startExecutorWithFrameRate_initialDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _frameUpdateTick];
}

- (double)_timeTillNextTimerTick
{
  if ([(ARFrameUpdateTimer *)self _isBeforeFirstTimerTick])
  {
    return self->_minLatency;
  }

  [(ARTimeProviding *)self->_timeProvider currentTime];
  v5 = v4 - self->_lastTimerTick;
  [(ARFrameUpdateTimer *)self _frameDuration];
  return v6 - v5;
}

- (double)_timeSinceFrameWasScheduled:(id)a3
{
  timeProvider = self->_timeProvider;
  v4 = a3;
  [(ARTimeProviding *)timeProvider currentTime];
  v6 = v5;
  [v4 scheduledTimestamp];
  v8 = v7;

  return v6 - v8;
}

- (void)_frameUpdateTick
{
  v21 = *MEMORY[0x1E69E9840];
  [(ARTimeProviding *)self->_timeProvider currentTime];
  self->_lastTimerTick = v3;
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_unvendedFrames count])
  {
    v16 = [(NSMutableArray *)self->_unvendedFrames firstObject];
    lastTimerTick = self->_lastTimerTick;
    lastFrameVendTimestamp = self->_lastFrameVendTimestamp;
    [(ARFrameUpdateTimer *)self _frameDuration];
    v7 = v6;
    v8 = [(ARFrameUpdateTimer *)self _latencyIsTooLowForFrame:v16];
    if (lastTimerTick - lastFrameVendTimestamp <= v7 && v8)
    {
      v10 = _ARLogGeneral_40();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543618;
        v18 = v12;
        v19 = 2048;
        v20 = self;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Holding back frame because we're under the minimum latency.", buf, 0x16u);
      }

      self->_frameWasVendedAtLastTimerTick = 0;
      os_unfair_lock_unlock(&self->_unvendedFramesLock);

      return;
    }

    [(NSMutableArray *)self->_unvendedFrames removeObjectAtIndex:0, lastTimerTick - lastFrameVendTimestamp];
    os_unfair_lock_unlock(&self->_unvendedFramesLock);
    if (v16)
    {
      self->_frameWasVendedAtLastTimerTick = 1;
      [(ARFrameUpdateTimer *)self _vendFrame:v16 withReason:0];

      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_unvendedFramesLock);
  }

  kdebug_trace();
  v13 = _ARLogGeneral_40();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138543618;
    v18 = v15;
    v19 = 2048;
    v20 = self;
    _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: No new unvended frame ready to publish at timer tick. Will attempt to push shortly.", buf, 0x16u);
  }

  self->_frameWasVendedAtLastTimerTick = 0;
}

- (void)_vendFrame:(id)a3 withReason:(unint64_t)a4
{
  v6 = a3;
  [v6 timestamp];
  [(ARTimeProviding *)self->_timeProvider currentTime];
  [v6 scheduledTimestamp];
  ARInstrumentsValueFromFrameVendReason();
  kdebug_trace();
  [(ARTimeProviding *)self->_timeProvider currentTime];
  self->_lastFrameVendTimestamp = v7;
  self->_lastFrameVendReason = a4;
  v8 = [(ARFrameUpdateTimer *)self delegate];
  [v8 timerDidVendFrame:v6];
}

- (ARFrameUpdateTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end