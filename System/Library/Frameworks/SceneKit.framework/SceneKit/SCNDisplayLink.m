@interface SCNDisplayLink
- (BOOL)isPaused;
- (BOOL)setPaused:(BOOL)a3 nextFrameTimeHint:(double)a4 lastUpdate:(double)a5;
- (SCNDisplayLink)initWithQueue:(id)a3 screen:(id)a4 policy:(unint64_t)a5 block:(id)a6;
- (void)_caDisplayLinkCallback;
- (void)_callbackWithTime:(double)a3;
- (void)_displayLinkCallbackReturningImmediately;
- (void)_displayLinkCallbackWaitingOnFrameCompletionWithTime:(uint64_t)a1;
- (void)dealloc;
- (void)invalidate;
- (void)setAdaptativeFrameRate:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)setPreferredFrameRate:(float)a3;
@end

@implementation SCNDisplayLink

- (BOOL)isPaused
{
  objc_sync_enter(self);
  paused = self->_paused;
  objc_sync_exit(self);
  return paused;
}

- (SCNDisplayLink)initWithQueue:(id)a3 screen:(id)a4 policy:(unint64_t)a5 block:(id)a6
{
  v21.receiver = self;
  v21.super_class = SCNDisplayLink;
  v10 = [(SCNDisplayLink *)&v21 init];
  v11 = v10;
  if (v10)
  {
    v10->_preferredFrameRate = 0.0;
    v10->_paused = 1;
    v10->_queue = a3;
    dispatch_retain(a3);
    atomic_store(0, &v11->_queuedFrameCount);
    v11->_block = [a6 copy];
    v11->_lastFrameTime = 0.0;
    v11->_runningLock = objc_alloc_init(SCNRecursiveLock);
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = MEMORY[0x277CD9E48];
    }

    v13 = [v12 displayLinkWithTarget:v11 selector:sel__caDisplayLinkCallback];
    v11->_caDisplayLink = v13;
    [(CADisplayLink *)v13 setPaused:1];
    caDisplayLink = v11->_caDisplayLink;
    v15 = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)caDisplayLink addToRunLoop:v15 forMode:*MEMORY[0x277CBE738]];
    if (a5 == 1)
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

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  objc_sync_enter(self);
  if ([(SCNDisplayLink *)self isPaused]!= v3)
  {
    self->_paused = v3;
    if (v3)
    {
      self->_lastFrameTime = 0.0;
    }

    [(CADisplayLink *)self->_caDisplayLink setPaused:v3];
  }

  objc_sync_exit(self);
}

- (BOOL)setPaused:(BOOL)a3 nextFrameTimeHint:(double)a4 lastUpdate:(double)a5
{
  v7 = a3;
  v9 = CACurrentMediaTime();
  v10 = v9 - a5 > 0.25 && a4 - v9 > 0.25;
  v11 = v7 && v10;
  if (v11 == 1)
  {
    [(SCNDisplayLink *)self setPaused:1];
    if (a4 != INFINITY)
    {
      v12 = CACurrentMediaTime();
      v13 = dispatch_time(0, ((a4 - v12 + -0.01) * 1000000000.0));
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

- (void)setAdaptativeFrameRate:(id)a3
{
  adaptativeFrameDuration = self->_adaptativeFrameDuration;
  if (adaptativeFrameDuration != a3)
  {

    self->_adaptativeFrameDuration = [a3 copy];
  }
}

- (void)setPreferredFrameRate:(float)a3
{
  if (self->_preferredFrameRate != a3)
  {
    self->_preferredFrameRate = a3;
    [(CADisplayLink *)self->_caDisplayLink setPreferredFramesPerSecond:a3];
  }
}

- (void)_callbackWithTime:(double)a3
{
  if (self->_coalescingSource)
  {
    kdebug_trace();
    atomic_store(*&a3, &self->_lastDisplayLinkTime);
    coalescingSource = self->_coalescingSource;

    dispatch_source_merge_data(coalescingSource, 1uLL);
  }

  else
  {

    [(SCNDisplayLink *)self _displayLinkCallbackWaitingOnFrameCompletionWithTime:a3];
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
  if (a1 && ([a1 isPaused] & 1) == 0 && (objc_msgSend(a1, "_isInvalidated") & 1) == 0)
  {
    OUTLINED_FUNCTION_0_12();
    if (v3 != v4)
    {
      v5 = objc_autoreleasePoolPush();
      if (([a1 isPaused] & 1) == 0 && (*(a1 + 57) & 1) == 0)
      {
        v6 = COERCE_DOUBLE(atomic_load((a1 + 16)));
        (*(*(a1 + 32) + 16))(v6);
      }

      atomic_fetch_add((a1 + 88), 0xFFFFFFFF);

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      atomic_fetch_add(v2, 0xFFFFFFFF);
    }
  }
}

- (void)_displayLinkCallbackWaitingOnFrameCompletionWithTime:(uint64_t)a1
{
  if (a1)
  {
    v4 = a1;
    [*(a1 + 80) lock];
    kdebug_trace();
    if (([a1 isPaused] & 1) == 0 && (objc_msgSend(a1, "_isInvalidated") & 1) == 0)
    {
      OUTLINED_FUNCTION_0_12();
      if (v6 != v7)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 48);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __71__SCNDisplayLink__displayLinkCallbackWaitingOnFrameCompletionWithTime___block_invoke;
        v10[3] = &unk_2782FFC18;
        v10[4] = a1;
        *&v10[5] = a2;
        dispatch_sync(v9, v10);
        objc_autoreleasePoolPop(v8);
      }

      else
      {
        atomic_fetch_add(v5, 0xFFFFFFFF);
      }
    }

    [*(a1 + 80) unlock];
  }
}

@end