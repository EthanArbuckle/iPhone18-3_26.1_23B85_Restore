@interface AVOnceTimebaseObserver
- (AVOnceTimebaseObserver)initWithTimebase:(OpaqueCMTimebase *)timebase fireTime:(id *)time queue:(id)queue block:(id)block;
- (void)_fireBlock;
- (void)_resetNextFireTime;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AVOnceTimebaseObserver

- (AVOnceTimebaseObserver)initWithTimebase:(OpaqueCMTimebase *)timebase fireTime:(id *)time queue:(id)queue block:(id)block
{
  v23.receiver = self;
  v23.super_class = AVOnceTimebaseObserver;
  v9 = [(AVTimebaseObserver *)&v23 initWithTimebase:timebase queue:queue];
  v10 = v9;
  if (v9)
  {
    if (!block)
    {
      v13 = *(v9 + 1);
      if (v13)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __64__AVOnceTimebaseObserver_initWithTimebase_fireTime_queue_block___block_invoke;
        block[3] = &unk_1E7460C00;
        block[4] = v10;
        dispatch_async(v13, block);
      }

      else
      {
        [(AVOnceTimebaseObserver *)v10 invalidate];
      }

      v14 = v10;
      v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v10 userInfo:{a2, @"invalid parameter not satisfying: %s", v15, v16, v17, v18, v19, "block"), 0}];
      objc_exception_throw(v20);
    }

    var3 = time->var3;
    *(v9 + 68) = *&time->var0;
    *(v9 + 84) = var3;
    *(v9 + 12) = [block copy];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__AVOnceTimebaseObserver_initWithTimebase_fireTime_queue_block___block_invoke_2;
    v21[3] = &unk_1E7460C00;
    v21[4] = v10;
    [(AVTimebaseObserver *)v10 _finishInitializationWithTimerEventHandler:v21];
    [(AVOnceTimebaseObserver *)v10 _resetNextFireTime];
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVOnceTimebaseObserver;
  [(AVTimebaseObserver *)&v2 dealloc];
}

- (void)invalidate
{
  self->_block = 0;
  v3.receiver = self;
  v3.super_class = AVOnceTimebaseObserver;
  [(AVTimebaseObserver *)&v3 invalidate];
}

- (void)_fireBlock
{
  if (!self->super._invalid && !self->_didFire)
  {
    self->_didFire = 1;
    v3 = objc_autoreleasePoolPush();
    (*(self->_block + 2))();

    objc_autoreleasePoolPop(v3);
  }
}

- (void)_resetNextFireTime
{
  if (!self->super._invalid && !self->_didFire)
  {
    timerQueue = self->super._timerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__AVOnceTimebaseObserver__resetNextFireTime__block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_async(timerQueue, block);
  }
}

void __44__AVOnceTimebaseObserver__resetNextFireTime__block_invoke(uint64_t a1)
{
  v13 = 0uLL;
  v14 = 0;
  *&v2 = AVTimebaseObserver_figTimebaseGetTime(&v13).n128_u64[0];
  v3 = *(a1 + 32);
  if ((*(v3 + 64) & 1) == 0 && (*(v3 + 104) & 1) == 0)
  {
    v4 = (v3 + 68);
    if ((*(v3 + 80) & 1) == 0)
    {
LABEL_4:
      [*(a1 + 32) _fireBlock];
      return;
    }

    if (*(v3 + 56) >= 0.0)
    {
      v6 = *v4;
      time1.epoch = *(v3 + 84);
      *&time1.value = v6;
      *&v11.value = v13;
      v11.epoch = v14;
      if (CMTimeCompare(&time1, &v11) < 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *&time1.value = v13;
      time1.epoch = v14;
      v5 = *v4;
      v11.epoch = *(v3 + 84);
      *&v11.value = v5;
      if (CMTimeCompare(&time1, &v11) <= 0)
      {
        goto LABEL_4;
      }
    }

    v7 = *(a1 + 32);
    v9 = *(v7 + 3);
    v8 = *(v7 + 4);
    v7 = (v7 + 68);
    v10 = *v7;
    time1.epoch = *(v7 + 2);
    *&time1.value = v10;
    CMTimebaseSetTimerDispatchSourceNextFireTime(v8, v9, &time1, 0);
  }
}

@end