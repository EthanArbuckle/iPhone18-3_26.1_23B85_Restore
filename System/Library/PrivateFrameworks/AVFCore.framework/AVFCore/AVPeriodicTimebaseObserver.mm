@interface AVPeriodicTimebaseObserver
- (AVPeriodicTimebaseObserver)initWithTimebase:(OpaqueCMTimebase *)a3 interval:(id *)a4 offset:(id *)a5 queue:(id)a6 block:(id)a7;
- (AVPeriodicTimebaseObserver)initWithTimebase:(OpaqueCMTimebase *)a3 interval:(id *)a4 queue:(id)a5 block:(id)a6;
- (void)_effectiveRateChanged;
- (void)_fireBlockForTime:(id *)a3;
- (void)_handleTimeDiscontinuity;
- (void)_resetNextFireTime;
- (void)dealloc;
- (void)initGutsWithTimebase:(OpaqueCMTimebase *)a3 interval:(id *)a4 offset:(id *)a5 queue:(id)a6 block:(id)a7;
@end

@implementation AVPeriodicTimebaseObserver

- (AVPeriodicTimebaseObserver)initWithTimebase:(OpaqueCMTimebase *)a3 interval:(id *)a4 queue:(id)a5 block:(id)a6
{
  v17.receiver = self;
  v17.super_class = AVPeriodicTimebaseObserver;
  v10 = [(AVTimebaseObserver *)&v17 initWithTimebase:a3 queue:a5];
  v11 = v10;
  if (v10)
  {
    v15 = *&a4->var0;
    var3 = a4->var3;
    v13 = *MEMORY[0x1E6960CC0];
    v14 = *(MEMORY[0x1E6960CC0] + 16);
    [(AVPeriodicTimebaseObserver *)v10 initGutsWithTimebase:a3 interval:&v15 offset:&v13 queue:a5 block:a6];
  }

  return v11;
}

- (AVPeriodicTimebaseObserver)initWithTimebase:(OpaqueCMTimebase *)a3 interval:(id *)a4 offset:(id *)a5 queue:(id)a6 block:(id)a7
{
  v19.receiver = self;
  v19.super_class = AVPeriodicTimebaseObserver;
  v12 = [(AVTimebaseObserver *)&v19 initWithTimebase:a3 queue:a6];
  v13 = v12;
  if (v12)
  {
    v17 = *&a4->var0;
    var3 = a4->var3;
    v15 = *&a5->var0;
    v16 = a5->var3;
    [(AVPeriodicTimebaseObserver *)v12 initGutsWithTimebase:a3 interval:&v17 offset:&v15 queue:a6 block:a7];
  }

  return v13;
}

- (void)initGutsWithTimebase:(OpaqueCMTimebase *)a3 interval:(id *)a4 offset:(id *)a5 queue:(id)a6 block:(id)a7
{
  if ((a4->var2 & 0x1D) != 1)
  {
    timerQueue = self->super._timerQueue;
    if (timerQueue)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__AVPeriodicTimebaseObserver_initGutsWithTimebase_interval_offset_queue_block___block_invoke;
      block[3] = &unk_1E7460C00;
      block[4] = self;
      dispatch_async(timerQueue, block);
    }

    else
    {
      [(AVTimebaseObserver *)self invalidate];
    }

    if ((a4->var2 & 0x1D) != 1)
    {
      v18 = self;
      v24 = MEMORY[0x1E695DF30];
      v25 = *MEMORY[0x1E695D940];
      v26 = "((Boolean)(((interval).flags & (kCMTimeFlags_Valid | kCMTimeFlags_ImpliedValueFlagsMask)) == kCMTimeFlags_Valid))";
      goto LABEL_19;
    }
  }

  time1 = *a4;
  v30 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v13 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v13;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    v14 = self->super._timerQueue;
    if (v14)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __79__AVPeriodicTimebaseObserver_initGutsWithTimebase_interval_offset_queue_block___block_invoke_2;
      v33[3] = &unk_1E7460C00;
      v33[4] = self;
      dispatch_async(v14, v33);
    }

    else
    {
      [(AVTimebaseObserver *)self invalidate];
    }

    time1 = *a4;
    *&time2.value = v30;
    time2.epoch = v13;
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      v28 = self;
      v24 = MEMORY[0x1E695DF30];
      v25 = *MEMORY[0x1E695D940];
      v26 = "((Boolean)(CMTimeCompare(interval, kCMTimeZero) > 0))";
      goto LABEL_19;
    }
  }

  if (!a7)
  {
    v17 = self->super._timerQueue;
    if (v17)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __79__AVPeriodicTimebaseObserver_initGutsWithTimebase_interval_offset_queue_block___block_invoke_3;
      v32[3] = &unk_1E7460C00;
      v32[4] = self;
      dispatch_async(v17, v32);
    }

    else
    {
      [(AVTimebaseObserver *)self invalidate];
    }

    v27 = self;
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = "block != ((void *)0)";
LABEL_19:
    v29 = [v24 exceptionWithName:v25 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v19, v20, v21, v22, v23, v26), 0}];
    objc_exception_throw(v29);
  }

  *&self->_sequenceNum = [a7 copy];
  var3 = a4->var3;
  *(&self->super._invalid + 4) = *&a4->var0;
  *&self->_intervalRequested.flags = var3;
  v16 = a5->var3;
  *(&self->_lastStopTime.epoch + 4) = *&a5->var0;
  *&self->_nonPeriodicOffset.flags = v16;
  *&self->_lastPeriodicFireTime.flags = v13;
  *(&self->_lastIntervalUsed.epoch + 4) = v30;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __79__AVPeriodicTimebaseObserver_initGutsWithTimebase_interval_offset_queue_block___block_invoke_4;
  v31[3] = &unk_1E7460C00;
  v31[4] = self;
  [(AVTimebaseObserver *)self _finishInitializationWithTimerEventHandler:v31];
}

void __79__AVPeriodicTimebaseObserver_initGutsWithTimebase_interval_offset_queue_block___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _fireBlockForTime:{&v4, AVTimebaseObserver_figTimebaseGetTime(&v4).n128_f64[0]}];
  v3 = *(a1 + 32);
  if (v3[4])
  {
    [v3 _resetNextFireTime];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPeriodicTimebaseObserver;
  [(AVTimebaseObserver *)&v3 dealloc];
}

- (void)_fireBlockForTime:(id *)a3
{
  if (!self->super._invalid)
  {
    v3 = *&self->_sequenceNum;
    v4 = *(v3 + 16);
    v5 = *a3;
    v4(v3, &v5, a3);
  }
}

- (void)_effectiveRateChanged
{
  if (self->super._timerSource)
  {
    timebase = self->super._timebase;
    if (timebase)
    {
      Rate = CMTimebaseGetRate(timebase);
      currentRate = self->super._currentRate;
      if (Rate != currentRate)
      {
        self->super._lastRate = currentRate;
        self->super._currentRate = Rate;
        v6 = MEMORY[0x1E6960C70];
        v10 = *MEMORY[0x1E6960C70];
        *(&self->_intervalRequested.epoch + 4) = *MEMORY[0x1E6960C70];
        v7 = *(v6 + 16);
        *&self->_lastIntervalUsed.flags = v7;
        v13 = 0uLL;
        v14 = 0;
        AVTimebaseObserver_figTimebaseGetTime(&v13);
        if (self->super._currentRate == 0.0)
        {
          *(&self->_lastNonperiodicFireTime.epoch + 4) = v13;
          *&self->_lastStopTime.flags = v14;
          v8 = objc_autoreleasePoolPush();
          v11 = v13;
          v12 = v14;
          [(AVPeriodicTimebaseObserver *)self _fireBlockForTime:&v11];
        }

        else
        {
          lastRate = self->super._lastRate;
          if (lastRate != 0.0)
          {
            [(AVPeriodicTimebaseObserver *)self _resetNextFireTime:lastRate];
            return;
          }

          *(&self->_lastNonperiodicFireTime.epoch + 4) = v10;
          *&self->_lastStopTime.flags = v7;
          v8 = objc_autoreleasePoolPush();
          v11 = v13;
          v12 = v14;
          [(AVPeriodicTimebaseObserver *)self _fireBlockForTime:&v11];
          if (self->super._timebase)
          {
            *(&self->_lastPeriodicFireTime.epoch + 4) = v13;
            *&self->_lastNonperiodicFireTime.flags = v14;
            [(AVPeriodicTimebaseObserver *)self _resetNextFireTime];
          }
        }

        objc_autoreleasePoolPop(v8);
      }
    }
  }
}

- (void)_resetNextFireTime
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0uLL;
  v25 = 0;
  AVTimebaseObserver_figTimebaseGetTime(&v24);
  v3 = (&self->_intervalRequested.epoch + 4);
  p_timescale = &self->_lastIntervalUsed.timescale;
  if (self->_lastIntervalUsed.timescale)
  {
    value = *v3;
    value_high = HIDWORD(self->_lastIntervalUsed.value);
    v28 = *p_timescale;
    epoch = self->_lastIntervalUsed.epoch;
  }

  else
  {
    v5 = fabs(self->super._currentRate);
    time = *(&self->super._invalid + 4);
    if (CMTimeGetSeconds(&time) / v5 >= 0.005)
    {
      value = *(&self->super._invalid + 4);
      value_high = HIDWORD(self->_intervalRequested.value);
      v28 = *&self->_intervalRequested.timescale;
      epoch_high = self->_intervalRequested.epoch;
    }

    else
    {
      CMTimeMakeWithSeconds(&time, v5 * 0.005, HIDWORD(self->_intervalRequested.value));
      value = time.value;
      value_high = time.timescale;
      v28 = *&time.flags;
      epoch_high = HIDWORD(time.epoch);
    }

    epoch = epoch_high;
    *v3 = value;
    HIDWORD(self->_lastIntervalUsed.value) = value_high;
    *p_timescale = v28;
    LODWORD(self->_lastIntervalUsed.epoch) = epoch;
  }

  v9 = (&self->_lastPeriodicFireTime.epoch + 4);
  if ((self->_lastNonperiodicFireTime.timescale & 0x1D) == 1)
  {
    memset(&time, 0, sizeof(time));
    *&time2.value = *v9;
    time2.epoch = *&self->_lastNonperiodicFireTime.flags;
    CMTimeConvertScale(&time, &time2, value_high, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    CMTimeMake(&time2, time.value / value * value, value_high);
    timescale = time2.timescale;
    flags = time2.flags;
    v27 = time2.timescale;
    v12 = time2.value;
    v26 = time2.value;
    v13 = time2.epoch;
    v14 = MEMORY[0x1E6960C70];
    *v9 = *MEMORY[0x1E6960C70];
    *&self->_lastNonperiodicFireTime.flags = *(v14 + 16);
    lhs.timescale = timescale;
    lhs.flags = flags;
    lhs.epoch = v13;
    v20 = *(&self->_lastStopTime.epoch + 4);
    lhs.value = v12;
    CMTimeAdd(&time2, &lhs, &v20);
    v26 = time2.value;
    v15 = time2.flags;
    v27 = time2.timescale;
    v16 = time2.epoch;
  }

  else
  {
    v26 = *(&self->_lastIntervalUsed.epoch + 4);
    v15 = self->_lastPeriodicFireTime.timescale;
    v27 = HIDWORD(self->_lastPeriodicFireTime.value);
    v16 = *&self->_lastPeriodicFireTime.flags;
  }

  currentRate = self->super._currentRate;
  if (currentRate <= 0.0)
  {
    if (currentRate < 0.0)
    {
      while (1)
      {
        time.value = v26;
        time.timescale = v27;
        time.flags = v15;
        time.epoch = v16;
        *&time2.value = v24;
        time2.epoch = v25;
        if (CMTimeCompare(&time, &time2) < 0 || (v15 & 0x1D) != 1)
        {
          break;
        }

        time2.value = v26;
        time2.timescale = v27;
        time2.flags = v15;
        time2.epoch = v16;
        lhs.value = value;
        lhs.timescale = value_high;
        *&lhs.flags = v28;
        HIDWORD(lhs.epoch) = epoch;
        CMTimeSubtract(&time, &time2, &lhs);
        v26 = time.value;
        v15 = time.flags;
        v27 = time.timescale;
        v16 = time.epoch;
      }
    }
  }

  else
  {
    while (1)
    {
      time.value = v26;
      time.timescale = v27;
      time.flags = v15;
      time.epoch = v16;
      *&time2.value = v24;
      time2.epoch = v25;
      if (CMTimeCompare(&time, &time2) > 0 || (v15 & 0x1D) != 1)
      {
        break;
      }

      time2.value = v26;
      time2.timescale = v27;
      time2.flags = v15;
      time2.epoch = v16;
      lhs.value = value;
      lhs.timescale = value_high;
      *&lhs.flags = v28;
      HIDWORD(lhs.epoch) = epoch;
      CMTimeAdd(&time, &time2, &lhs);
      v26 = time.value;
      v15 = time.flags;
      v27 = time.timescale;
      v16 = time.epoch;
    }
  }

  timebase = self->super._timebase;
  if (timebase)
  {
    timerSource = self->super._timerSource;
    if (timerSource)
    {
      time.value = v26;
      time.timescale = v27;
      time.flags = v15;
      time.epoch = v16;
      CMTimebaseSetTimerDispatchSourceNextFireTime(timebase, timerSource, &time, 0);
    }
  }

  *(&self->_lastIntervalUsed.epoch + 4) = v26;
  HIDWORD(self->_lastPeriodicFireTime.value) = v27;
  self->_lastPeriodicFireTime.timescale = v15;
  *&self->_lastPeriodicFireTime.flags = v16;
}

- (void)_handleTimeDiscontinuity
{
  if (self->super._timerSource && self->super._timebase)
  {
    v3 = objc_autoreleasePoolPush();
    v7 = 0uLL;
    v8 = 0;
    AVTimebaseObserver_figTimebaseGetTime(&v7);
    *&time1.value = v7;
    time1.epoch = v8;
    v5 = *(&self->_lastNonperiodicFireTime.epoch + 4);
    if (CMTimeCompare(&time1, &v5))
    {
      *&time1.value = v7;
      time1.epoch = v8;
      [(AVPeriodicTimebaseObserver *)self _fireBlockForTime:&time1];
      v4 = MEMORY[0x1E6960C70];
      *&self->_lastStopTime.flags = *(MEMORY[0x1E6960C70] + 16);
      *(&self->_lastNonperiodicFireTime.epoch + 4) = *v4;
      if (self->super._timebase)
      {
        if (self->super._currentRate != 0.0)
        {
          *(&self->_lastPeriodicFireTime.epoch + 4) = v7;
          *&self->_lastNonperiodicFireTime.flags = v8;
          [(AVPeriodicTimebaseObserver *)self _resetNextFireTime];
        }
      }
    }

    objc_autoreleasePoolPop(v3);
  }
}

@end