@interface AVOccasionalTimebaseObserver
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_nextFiringTimeAfterTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_previousFiringTimeBeforeTime:(SEL)a3;
- (AVOccasionalTimebaseObserver)initWithTimebase:(OpaqueCMTimebase *)a3 times:(id)a4 queue:(id)a5 block:(id)a6;
- (void)_effectiveRateChanged;
- (void)_fireBlock;
- (void)_handleTimeDiscontinuity;
- (void)_resetNextFireTime;
- (void)dealloc;
@end

@implementation AVOccasionalTimebaseObserver

- (AVOccasionalTimebaseObserver)initWithTimebase:(OpaqueCMTimebase *)a3 times:(id)a4 queue:(id)a5 block:(id)a6
{
  v27.receiver = self;
  v27.super_class = AVOccasionalTimebaseObserver;
  v9 = [(AVTimebaseObserver *)&v27 initWithTimebase:a3 queue:a5];
  if (v9)
  {
    if ([a4 count])
    {
      goto LABEL_7;
    }

    timerQueue = v9->super._timerQueue;
    if (timerQueue)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__AVOccasionalTimebaseObserver_initWithTimebase_times_queue_block___block_invoke;
      block[3] = &unk_1E7460C00;
      block[4] = v9;
      dispatch_async(timerQueue, block);
    }

    else
    {
      [(AVTimebaseObserver *)v9 invalidate];
    }

    if ([a4 count])
    {
LABEL_7:
      if (a6)
      {
        v9->_times = [a4 sortedArrayUsingComparator:&__block_literal_global_9];
        v9->_block = [a6 copy];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __67__AVOccasionalTimebaseObserver_initWithTimebase_times_queue_block___block_invoke_4;
        v24[3] = &unk_1E7460C00;
        v24[4] = v9;
        [(AVTimebaseObserver *)v9 _finishInitializationWithTimerEventHandler:v24];
        return v9;
      }

      v12 = v9->super._timerQueue;
      if (v12)
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __67__AVOccasionalTimebaseObserver_initWithTimebase_times_queue_block___block_invoke_2;
        v25[3] = &unk_1E7460C00;
        v25[4] = v9;
        dispatch_async(v12, v25);
      }

      else
      {
        [(AVTimebaseObserver *)v9 invalidate];
      }

      v13 = v9;
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = "block != ((void *)0)";
    }

    else
    {
      v22 = v9;
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = "[times count] > 0";
    }

    v23 = [v19 exceptionWithName:v20 reason:AVMethodExceptionReasonWithObjectAndSelector(v9 userInfo:{a2, @"invalid parameter not satisfying: %s", v14, v15, v16, v17, v18, v21), 0}];
    objc_exception_throw(v23);
  }

  return v9;
}

uint64_t __67__AVOccasionalTimebaseObserver_initWithTimebase_times_queue_block___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    memset(&time1, 0, sizeof(time1));
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v5, 0, sizeof(v5));
    return CMTimeCompare(&time1, &v5);
  }

  [a2 CMTimeValue];
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  [a3 CMTimeValue];
  return CMTimeCompare(&time1, &v5);
}

void __67__AVOccasionalTimebaseObserver_initWithTimebase_times_queue_block___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _fireBlock];
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
  v3.super_class = AVOccasionalTimebaseObserver;
  [(AVTimebaseObserver *)&v3 dealloc];
}

- (void)_fireBlock
{
  if (!self->super._invalid)
  {
    (*(self->_block + 2))();
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
        v6 = Rate == 0.0 || self->super._timerSource == 0;
        if (!v6 && (currentRate == 0.0 || Rate > 0.0 == currentRate <= 0.0))
        {

          [(AVOccasionalTimebaseObserver *)self _resetNextFireTime];
        }
      }
    }
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_previousFiringTimeBeforeTime:(SEL)a3
{
  v7 = [(NSArray *)self->_times count];
  times = self->_times;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__AVOccasionalTimebaseObserver__previousFiringTimeBeforeTime___block_invoke;
  v11[3] = &unk_1E74637A8;
  v12 = *a4;
  v11[4] = self;
  v11[5] = v7;
  result = [(NSArray *)times indexOfObjectPassingTest:v11];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v10 + 16);
  }

  else
  {
    result = [(NSArray *)self->_times objectAtIndex:result];
    if (result)
    {
      return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result CMTimeValue];
    }

    else
    {
      retstr->var0 = 0;
      *&retstr->var1 = 0;
      retstr->var3 = 0;
    }
  }

  return result;
}

uint64_t __62__AVOccasionalTimebaseObserver__previousFiringTimeBeforeTime___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  memset(&v11, 0, sizeof(v11));
  if (a2)
  {
    [a2 CMTimeValue];
  }

  time1 = v11;
  v9 = *(a1 + 48);
  if ((CMTimeCompare(&time1, &v9) & 0x80000000) == 0)
  {
    return 0;
  }

  if (*(a1 + 40) > (a3 + 1))
  {
    v8 = [*(*(a1 + 32) + 72) objectAtIndex:?];
    if (v8)
    {
      [v8 CMTimeValue];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v9 = *(a1 + 48);
    if (CMTimeCompare(&time1, &v9) < 0)
    {
      return 0;
    }
  }

  result = 1;
  *a4 = 1;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_nextFiringTimeAfterTime:(SEL)a3
{
  times = self->_times;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__AVOccasionalTimebaseObserver__nextFiringTimeAfterTime___block_invoke;
  v9[3] = &__block_descriptor_56_e15_B32__0_8Q16_B24l;
  v10 = *a4;
  result = [(NSArray *)times indexOfObjectPassingTest:v9];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v8 + 16);
  }

  else
  {
    result = [(NSArray *)self->_times objectAtIndex:result];
    if (result)
    {
      return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result CMTimeValue];
    }

    else
    {
      retstr->var0 = 0;
      *&retstr->var1 = 0;
      retstr->var3 = 0;
    }
  }

  return result;
}

BOOL __57__AVOccasionalTimebaseObserver__nextFiringTimeAfterTime___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  memset(&v10, 0, sizeof(v10));
  if (a2)
  {
    [a2 CMTimeValue];
  }

  time1 = v10;
  v8 = *(a1 + 32);
  v6 = CMTimeCompare(&time1, &v8);
  if (v6 >= 1)
  {
    *a4 = 1;
  }

  return v6 > 0;
}

- (void)_resetNextFireTime
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v12 = 0uLL;
  v13 = 0;
  AVTimebaseObserver_figTimebaseGetTime(&v12);
  currentRate = self->super._currentRate;
  if (currentRate <= 0.0)
  {
    flags = *(v3 + 12);
    epoch = *(v3 + 16);
  }

  else
  {
    v9 = v12;
    v10 = v13;
    [(AVOccasionalTimebaseObserver *)self _nextFiringTimeAfterTime:&v9];
    value = fireTime.value;
    flags = fireTime.flags;
    timescale = fireTime.timescale;
    epoch = fireTime.epoch;
    currentRate = self->super._currentRate;
  }

  if (currentRate < 0.0)
  {
    v9 = v12;
    v10 = v13;
    [(AVOccasionalTimebaseObserver *)self _previousFiringTimeBeforeTime:&v9];
    value = fireTime.value;
    flags = fireTime.flags;
    timescale = fireTime.timescale;
    epoch = fireTime.epoch;
  }

  if (flags)
  {
    timebase = self->super._timebase;
    if (timebase)
    {
      timerSource = self->super._timerSource;
      if (timerSource)
      {
        fireTime.value = value;
        fireTime.timescale = timescale;
        fireTime.flags = flags;
        fireTime.epoch = epoch;
        CMTimebaseSetTimerDispatchSourceNextFireTime(timebase, timerSource, &fireTime, 0);
      }
    }
  }
}

- (void)_handleTimeDiscontinuity
{
  if (self->super._timerSource)
  {
    if (self->super._timebase)
    {
      [(AVOccasionalTimebaseObserver *)self _resetNextFireTime];
    }
  }
}

@end