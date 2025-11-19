@interface ARRunLoop
- (ARRunLoop)init;
- (ARRunLoop)initWithName:(id)a3;
- (void)_runloop_handleActivity:(unint64_t)a3;
- (void)_runloop_popAutoreleasePool;
- (void)_runloop_pushAutoreleasePool;
- (void)_startThread;
- (void)dealloc;
- (void)runOnRunLoop:(id)a3;
- (void)start;
@end

@implementation ARRunLoop

- (ARRunLoop)init
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ARRunLoop.%p", self];
  v4 = [(ARRunLoop *)self initWithName:v3];

  return v4;
}

- (ARRunLoop)initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARRunLoop;
  v5 = [(ARRunLoop *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_autoreleasePoolStack = CFArrayCreateMutable(0, 0, 0);
  }

  return v5;
}

- (void)dealloc
{
  runLoopEnterObserver = self->_runLoopEnterObserver;
  v4 = MEMORY[0x1E695E8D0];
  if (runLoopEnterObserver)
  {
    CFRunLoopRemoveObserver(self->_runloop, runLoopEnterObserver, *MEMORY[0x1E695E8D0]);
    CFRelease(self->_runLoopEnterObserver);
  }

  runLoopExitObserver = self->_runLoopExitObserver;
  if (runLoopExitObserver)
  {
    CFRunLoopRemoveObserver(self->_runloop, runLoopExitObserver, *v4);
    CFRelease(self->_runLoopExitObserver);
  }

  runloop = self->_runloop;
  if (runloop)
  {
    CFRelease(runloop);
  }

  CFRelease(self->_autoreleasePoolStack);
  v7.receiver = self;
  v7.super_class = ARRunLoop;
  [(ARRunLoop *)&v7 dealloc];
}

- (void)start
{
  os_unfair_lock_lock(&self->_lock);
  started = self->_started;
  self->_started = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (!started)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AF00]) initWithTarget:self selector:sel__startThread object:0];
    [v4 setName:self->_name];
    [v4 setQualityOfService:33];
    [v4 start];
  }
}

- (void)_startThread
{
  v26 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  pthread_set_fixedpriority_self();
  if (!_CFRunLoopSetPerCalloutAutoreleasepoolEnabled())
  {
    objc_initWeak(&v18, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __25__ARRunLoop__startThread__block_invoke;
    v23[3] = &unk_1E817E0C0;
    objc_copyWeak(&v24, &v18);
    v4 = MEMORY[0x1C691B4C0](v23);
    v5 = CFRunLoopObserverCreateWithHandler(0, 1uLL, 1u, -2147483647, v4);
    self->_runLoopEnterObserver = v5;
    v6 = *MEMORY[0x1E695E8D0];
    CFRunLoopAddObserver(Current, v5, *MEMORY[0x1E695E8D0]);
    v7 = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 1u, 0x7FFFFFFFLL, v4);
    self->_runLoopExitObserver = v7;
    CFRunLoopAddObserver(Current, v7, v6);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v18);
  }

  v8 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_lock);
  CFRetain(Current);
  self->_runloop = Current;
  v9 = self->_earlyRunloopBlocks;
  earlyRunloopBlocks = self->_earlyRunloopBlocks;
  self->_earlyRunloopBlocks = 0;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v9;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v12)
  {
    v13 = *v20;
    v14 = *MEMORY[0x1E695E8D0];
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v11);
        }

        CFRunLoopPerformBlock(Current, v14, *(*(&v19 + 1) + 8 * v15++));
      }

      while (v12 != v15);
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_lock);
  objc_autoreleasePoolPop(v8);
  memset(&v18, 0, sizeof(v18));
  v16 = CFRunLoopSourceCreate(0, 0, &v18);
  v17 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddSource(Current, v16, *MEMORY[0x1E695E8E0]);
  CFRelease(v16);
  CFRunLoopRun();
  CFRunLoopRemoveSource(Current, v16, v17);
  [(ARRunLoop *)self setCancelled:1];
}

void __25__ARRunLoop__startThread__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runloop_handleActivity:a3];
}

- (void)runOnRunLoop:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  runloop = self->_runloop;
  if (runloop)
  {
    os_unfair_lock_unlock(&self->_lock);
    CFRunLoopPerformBlock(runloop, *MEMORY[0x1E695E8D0], v4);

    CFRunLoopWakeUp(runloop);
  }

  else
  {
    earlyRunloopBlocks = self->_earlyRunloopBlocks;
    if (earlyRunloopBlocks)
    {
      v7 = earlyRunloopBlocks;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v8 = self->_earlyRunloopBlocks;
    self->_earlyRunloopBlocks = v7;

    v9 = self->_earlyRunloopBlocks;
    v10 = MEMORY[0x1C691B4C0](v4);

    [(NSMutableArray *)v9 addObject:v10];

    os_unfair_lock_unlock(&self->_lock);
  }
}

void __19__ARRunLoop_cancel__block_invoke()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (void)_runloop_handleActivity:(unint64_t)a3
{
  if (a3 == 128)
  {

    [(ARRunLoop *)self _runloop_popAutoreleasePool];
  }

  else
  {
    if (a3 == 32)
    {
      [(ARRunLoop *)self _runloop_popAutoreleasePool];
    }

    else if (a3 != 1)
    {
      return;
    }

    [(ARRunLoop *)self _runloop_pushAutoreleasePool];
  }
}

- (void)_runloop_pushAutoreleasePool
{
  autoreleasePoolStack = self->_autoreleasePoolStack;
  v3 = MEMORY[0x1C691A220](0, a2);

  CFArrayAppendValue(autoreleasePoolStack, v3);
}

- (void)_runloop_popAutoreleasePool
{
  Count = CFArrayGetCount(self->_autoreleasePoolStack);
  v4 = Count - 1;
  if (Count >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->_autoreleasePoolStack, v4);
    MEMORY[0x1C691A210](ValueAtIndex);
    autoreleasePoolStack = self->_autoreleasePoolStack;

    CFArrayRemoveValueAtIndex(autoreleasePoolStack, v4);
  }
}

@end