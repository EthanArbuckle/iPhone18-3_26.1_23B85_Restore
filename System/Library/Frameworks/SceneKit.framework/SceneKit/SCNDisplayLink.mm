@interface SCNDisplayLink
- (BOOL)isPaused;
- (BOOL)setPaused:(BOOL)paused nextFrameTimeHint:(double)hint lastUpdate:(double)update;
- (SCNDisplayLink)initWithQueue:(id)queue screen:(id)screen policy:(unint64_t)policy block:(id)block;
- (void)_caDisplayLinkCallback;
- (void)_callbackWithTime:(double)time;
- (void)_displayLinkCallbackReturningImmediately;
- (void)_displayLinkCallbackWaitingOnFrameCompletionWithTime:(uint64_t)time;
- (void)dealloc;
- (void)invalidate;
- (void)setAdaptativeFrameRate:(id)rate;
- (void)setPaused:(BOOL)paused;
- (void)setPreferredFrameRate:(float)rate;
@end

@implementation SCNDisplayLink

- (BOOL)isPaused
{
  objc_sync_enter(self);
  paused = self->_paused;
  objc_sync_exit(self);
  return paused;
}

- (SCNDisplayLink)initWithQueue:(id)queue screen:(id)screen policy:(unint64_t)policy block:(id)block
{
  v21.receiver = self;
  v21.super_class = SCNDisplayLink;
  v10 = [(SCNDisplayLink *)&v21 init];
  v11 = v10;
  if (v10)
  {
    v10->_preferredFrameRate = 0.0;
    v10->_paused = 1;
    v10->_queue = queue;
    dispatch_retain(queue);
    atomic_store(0, &v11->_queuedFrameCount);
    v11->_block = [block copy];
    v11->_lastFrameTime = 0.0;
    v11->_runningLock = objc_alloc_init(SCNRecursiveLock);
    if (screen)
    {
      screenCopy = screen;
    }

    else
    {
      screenCopy = MEMORY[0x277CD9E48];
    }

    v13 = [screenCopy displayLinkWithTarget:v11 selector:sel__caDisplayLinkCallback];
    v11->_caDisplayLink = v13;
    [(CADisplayLink *)v13 setPaused:1];
    caDisplayLink = v11->_caDisplayLink;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)caDisplayLink addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];
    if (policy == 1)
    {
      v11->_coalescingSource = dispatch_source_create(MEMORY[0x277D85CE0], 0, 0, v11->_queue);
      objc_initWeak(&location, v11);
      coalescingSource = v11->_coalescingSource;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52__SCNDisplayLink_initWithQueue_screen_policy_block___block_invoke;
      v18[3] = &unk_2782FFBF0;
      objc_copyWeak(&v19, &location);
      dispatch_source_set_event_handler(coalescingSource, v18);
      dispatch_resume(v11->_coalescingSource);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  return v11;
}

void __52__SCNDisplayLink_initWithQueue_screen_policy_block___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  [(SCNDisplayLink *)Weak _displayLinkCallbackReturningImmediately];
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(SCNDisplayLink *)v3 dealloc];
    }

    [(SCNDisplayLink *)self invalidate];
  }

  self->_block = 0;
  coalescingSource = self->_coalescingSource;
  if (coalescingSource)
  {
    dispatch_source_cancel(coalescingSource);
    dispatch_release(self->_coalescingSource);
    self->_coalescingSource = 0;
  }

  dispatch_release(self->_queue);
  self->_queue = 0;
  v5.receiver = self;
  v5.super_class = SCNDisplayLink;
  [(SCNDisplayLink *)&v5 dealloc];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  objc_sync_enter(self);
  if ([(SCNDisplayLink *)self isPaused]!= pausedCopy)
  {
    self->_paused = pausedCopy;
    if (pausedCopy)
    {
      self->_lastFrameTime = 0.0;
    }

    [(CADisplayLink *)self->_caDisplayLink setPaused:pausedCopy];
  }

  objc_sync_exit(self);
}

- (BOOL)setPaused:(BOOL)paused nextFrameTimeHint:(double)hint lastUpdate:(double)update
{
  pausedCopy = paused;
  v9 = CACurrentMediaTime();
  v10 = v9 - update > 0.25 && hint - v9 > 0.25;
  v11 = pausedCopy && v10;
  if (v11 == 1)
  {
    [(SCNDisplayLink *)self setPaused:1];
    if (hint != INFINITY)
    {
      v12 = CACurrentMediaTime();
      v13 = dispatch_time(0, ((hint - v12 + -0.01) * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__SCNDisplayLink_setPaused_nextFrameTimeHint_lastUpdate___block_invoke;
      block[3] = &unk_2782FB608;
      block[4] = self;
      dispatch_after(v13, MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    [(SCNDisplayLink *)self setPaused:0];
  }

  return v11;
}

uint64_t __57__SCNDisplayLink_setPaused_nextFrameTimeHint_lastUpdate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isInvalidated];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setPaused:0];
  }

  return result;
}

- (void)setAdaptativeFrameRate:(id)rate
{
  adaptativeFrameDuration = self->_adaptativeFrameDuration;
  if (adaptativeFrameDuration != rate)
  {

    self->_adaptativeFrameDuration = [rate copy];
  }
}

- (void)setPreferredFrameRate:(float)rate
{
  if (self->_preferredFrameRate != rate)
  {
    self->_preferredFrameRate = rate;
    [(CADisplayLink *)self->_caDisplayLink setPreferredFramesPerSecond:rate];
  }
}

- (void)_callbackWithTime:(double)time
{
  if (self->_coalescingSource)
  {
    kdebug_trace();
    atomic_store(*&time, &self->_lastDisplayLinkTime);
    coalescingSource = self->_coalescingSource;

    dispatch_source_merge_data(coalescingSource, 1uLL);
  }

  else
  {

    [(SCNDisplayLink *)self _displayLinkCallbackWaitingOnFrameCompletionWithTime:time];
  }
}

uint64_t __71__SCNDisplayLink__displayLinkCallbackWaitingOnFrameCompletionWithTime___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isPaused];
  v3 = *(a1 + 32);
  if ((result & 1) == 0 && (*(v3 + 57) & 1) == 0)
  {
    result = (*(*(v3 + 32) + 16))(*(a1 + 40));
    v3 = *(a1 + 32);
  }

  atomic_fetch_add((v3 + 88), 0xFFFFFFFF);
  return result;
}

- (void)_caDisplayLinkCallback
{
  [(CADisplayLink *)self->_caDisplayLink targetTimestamp];

  [(SCNDisplayLink *)self _callbackWithTime:?];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    [(SCNRecursiveLock *)self->_runningLock lock];
    self->_invalidated = 1;
    [(CADisplayLink *)self->_caDisplayLink invalidate];

    self->_caDisplayLink = 0;
    runningLock = self->_runningLock;

    [(SCNRecursiveLock *)runningLock unlock];
  }
}

- (void)_displayLinkCallbackReturningImmediately
{
  if (self && ([self isPaused] & 1) == 0 && (objc_msgSend(self, "_isInvalidated") & 1) == 0)
  {
    OUTLINED_FUNCTION_0_12();
    if (v3 != v4)
    {
      v5 = objc_autoreleasePoolPush();
      if (([self isPaused] & 1) == 0 && (*(self + 57) & 1) == 0)
      {
        v6 = COERCE_DOUBLE(atomic_load((self + 16)));
        (*(*(self + 32) + 16))(v6);
      }

      atomic_fetch_add((self + 88), 0xFFFFFFFF);

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      atomic_fetch_add(v2, 0xFFFFFFFF);
    }
  }
}

- (void)_displayLinkCallbackWaitingOnFrameCompletionWithTime:(uint64_t)time
{
  if (time)
  {
    timeCopy = time;
    [*(time + 80) lock];
    kdebug_trace();
    if (([time isPaused] & 1) == 0 && (objc_msgSend(time, "_isInvalidated") & 1) == 0)
    {
      OUTLINED_FUNCTION_0_12();
      if (v6 != v7)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = *(time + 48);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __71__SCNDisplayLink__displayLinkCallbackWaitingOnFrameCompletionWithTime___block_invoke;
        v10[3] = &unk_2782FFC18;
        v10[4] = time;
        *&v10[5] = a2;
        dispatch_sync(v9, v10);
        objc_autoreleasePoolPop(v8);
      }

      else
      {
        atomic_fetch_add(v5, 0xFFFFFFFF);
      }
    }

    [*(time + 80) unlock];
  }
}

@end