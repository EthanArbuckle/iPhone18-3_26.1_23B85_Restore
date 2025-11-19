@interface AVTimebaseObserver
- (AVTimebaseObserver)initWithTimebase:(OpaqueCMTimebase *)a3 queue:(id)a4;
- (OpaqueCMTimebase)timebase;
- (void)_finishInitializationWithTimerEventHandler:(id)a3;
- (void)_reallyInvalidate;
- (void)_removeTimebaseFromTimerSource;
- (void)_startObservingTimebaseNotifications;
- (void)_stopObservingTimebaseNotifications;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AVTimebaseObserver

- (AVTimebaseObserver)initWithTimebase:(OpaqueCMTimebase *)a3 queue:(id)a4
{
  v21.receiver = self;
  v21.super_class = AVTimebaseObserver;
  v7 = [(AVTimebaseObserver *)&v21 init];
  v8 = v7;
  if (v7)
  {
    if (!a3)
    {
      timerQueue = v7->_timerQueue;
      if (timerQueue)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__AVTimebaseObserver_initWithTimebase_queue___block_invoke;
        block[3] = &unk_1E7460C00;
        block[4] = v8;
        dispatch_async(timerQueue, block);
      }

      else
      {
        [(AVTimebaseObserver *)v8 invalidate];
      }

      v13 = v8;
      v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v8 userInfo:{a2, @"invalid parameter not satisfying: %s", v14, v15, v16, v17, v18, "timebase"), 0}];
      objc_exception_throw(v19);
    }

    v9 = [[AVWeakReference alloc] initWithReferencedObject:v7];
    v10 = MEMORY[0x1E69E96A0];
    if (a4)
    {
      v10 = a4;
    }

    v8->_timerQueue = v10;
    v8->_weakReference = v9;
    dispatch_retain(v10);
    CFRetain(a3);
    v8->_timebase = a3;
  }

  return v8;
}

- (void)dealloc
{
  if (![(AVTimebaseObserver *)self invalidated])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"A time observer token object was released without first being removed from the object it was created from using -removeTimeObserver:" userInfo:0]);
  }

  timerQueue = self->_timerQueue;
  if (timerQueue)
  {
    dispatch_release(timerQueue);
    self->_timerQueue = 0;
  }

  timebase = self->_timebase;
  if (timebase)
  {
    CFRelease(timebase);
    self->_timebase = 0;
  }

  v5.receiver = self;
  v5.super_class = AVTimebaseObserver;
  [(AVTimebaseObserver *)&v5 dealloc];
}

- (OpaqueCMTimebase)timebase
{
  timebase = self->_timebase;
  if (timebase)
  {
    timebase = CFRetain(timebase);
    v2 = vars8;
  }

  return timebase;
}

- (void)invalidate
{
  timerQueue = self->_timerQueue;
  if (timerQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32__AVTimebaseObserver_invalidate__block_invoke;
    v5[3] = &unk_1E7460C00;
    v5[4] = self;
    AVSerializeOnQueueAsyncIfNecessary(timerQueue, v5);
  }

  else
  {

    [(AVTimebaseObserver *)self _reallyInvalidate];
  }
}

- (void)_reallyInvalidate
{
  if (!self->_invalid)
  {
    self->_invalid = 1;
    [(AVTimebaseObserver *)self _removeTimebaseFromTimerSource];
    [(AVTimebaseObserver *)self _stopObservingTimebaseNotifications];
    timebase = self->_timebase;
    if (timebase)
    {
      CFRelease(timebase);
      self->_timebase = 0;
    }

    timerSource = self->_timerSource;
    if (timerSource)
    {
      dispatch_release(timerSource);
      self->_timerSource = 0;
    }
  }
}

- (void)_finishInitializationWithTimerEventHandler:(id)a3
{
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, self->_timerQueue);
  self->_timerSource = v5;
  dispatch_source_set_event_handler(v5, a3);
  dispatch_resume(self->_timerSource);
  [(AVTimebaseObserver *)self _attachTimerSourceToTimebase];
  [(AVTimebaseObserver *)self _startObservingTimebaseNotifications];
  currentRate = self->_currentRate;
  if (currentRate != CMTimebaseGetRate(self->_timebase))
  {
    timerQueue = self->_timerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__AVTimebaseObserver__finishInitializationWithTimerEventHandler___block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_async(timerQueue, block);
  }
}

- (void)_removeTimebaseFromTimerSource
{
  timebase = self->_timebase;
  if (timebase)
  {
    timerSource = self->_timerSource;
    if (timerSource)
    {
      v5 = **&MEMORY[0x1E6960C70];
      CMTimebaseSetTimerDispatchSourceNextFireTime(timebase, timerSource, &v5, 0);
      CMTimebaseRemoveTimerDispatchSource(self->_timebase, self->_timerSource);
    }
  }
}

- (void)_startObservingTimebaseNotifications
{
  if (self->_timebase)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v4 = [(AVTimebaseObserver *)self _weakReference];
    [v3 addListenerWithWeakReference:v4 callback:AVTimebaseObserver_timebaseNotificationCallback name:*MEMORY[0x1E6960CE8] object:self->_timebase flags:0];
    [v3 addListenerWithWeakReference:v4 callback:AVTimebaseObserver_timebaseNotificationCallback name:*MEMORY[0x1E6960CD0] object:self->_timebase flags:0];
    self->_isObservingTimebase = 1;
  }
}

- (void)_stopObservingTimebaseNotifications
{
  if (self->_timebase)
  {
    if (self->_isObservingTimebase)
    {
      v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
      v4 = [(AVTimebaseObserver *)self _weakReference];
      [v3 removeListenerWithWeakReference:v4 callback:AVTimebaseObserver_timebaseNotificationCallback name:*MEMORY[0x1E6960CE8] object:self->_timebase];
      [v3 removeListenerWithWeakReference:v4 callback:AVTimebaseObserver_timebaseNotificationCallback name:*MEMORY[0x1E6960CD0] object:self->_timebase];
      self->_isObservingTimebase = 0;
    }
  }
}

void __AVTimebaseObserver_timebaseNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) invalidated] & 1) == 0)
  {
    if (CFEqual(*(a1 + 40), *MEMORY[0x1E6960CE8]))
    {
      [*(a1 + 32) _handleTimeDiscontinuity];
    }

    else if (CFEqual(*(a1 + 40), *MEMORY[0x1E6960CD0]))
    {
      [*(a1 + 32) _effectiveRateChanged];
    }
  }

  objc_autoreleasePoolPop(v2);
}

@end