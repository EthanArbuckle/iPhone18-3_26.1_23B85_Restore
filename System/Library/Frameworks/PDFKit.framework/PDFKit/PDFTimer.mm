@interface PDFTimer
- (PDFTimer)initWithSelector:(SEL)selector forTarget:(id)target;
- (PDFTimer)initWithThrottleDelay:(double)delay forSelector:(SEL)selector forTarget:(id)target;
- (void)_execute;
- (void)cancel;
- (void)dealloc;
- (void)update;
@end

@implementation PDFTimer

- (PDFTimer)initWithSelector:(SEL)selector forTarget:(id)target
{
  targetCopy = target;
  v17.receiver = self;
  v17.super_class = PDFTimer;
  v7 = [(PDFTimer *)&v17 init];
  if (v7)
  {
    v8 = objc_alloc_init(PDFTimerPrivate);
    v9 = v7->_private;
    v7->_private = v8;

    objc_storeWeak(&v7->_private->target, targetCopy);
    v10 = [targetCopy methodSignatureForSelector:selector];
    v11 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
    v12 = v7->_private;
    methodInvocation = v12->methodInvocation;
    v12->methodInvocation = v11;

    [(NSInvocation *)v7->_private->methodInvocation setSelector:selector];
    [(NSInvocation *)v7->_private->methodInvocation setTarget:targetCopy];
    v7->_private->timeInterval = 0.0;
    v14 = v7->_private;
    timer = v14->timer;
    v14->timer = 0;
  }

  return v7;
}

- (PDFTimer)initWithThrottleDelay:(double)delay forSelector:(SEL)selector forTarget:(id)target
{
  targetCopy = target;
  v19.receiver = self;
  v19.super_class = PDFTimer;
  v9 = [(PDFTimer *)&v19 init];
  if (v9)
  {
    v10 = objc_alloc_init(PDFTimerPrivate);
    v11 = v9->_private;
    v9->_private = v10;

    objc_storeWeak(&v9->_private->target, targetCopy);
    v12 = [targetCopy methodSignatureForSelector:selector];
    v13 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v12];
    v14 = v9->_private;
    methodInvocation = v14->methodInvocation;
    v14->methodInvocation = v13;

    [(NSInvocation *)v9->_private->methodInvocation setSelector:selector];
    [(NSInvocation *)v9->_private->methodInvocation setTarget:targetCopy];
    v9->_private->timeInterval = delay;
    v16 = v9->_private;
    timer = v16->timer;
    v16->timer = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(NSTimer *)self->_private->timer invalidate];
  v3.receiver = self;
  v3.super_class = PDFTimer;
  [(PDFTimer *)&v3 dealloc];
}

- (void)update
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  obj->_private->isRequested = 1;
  v3 = obj->_private;
  if (!v3->timer)
  {
    v3->isRequested = 0;
    v4 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:obj target:sel__execute selector:0 userInfo:0 repeats:obj->_private->timeInterval];
    v5 = obj->_private;
    timer = v5->timer;
    v5->timer = v4;

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:obj->_private->timer forMode:*MEMORY[0x1E695DA28]];

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  [(NSTimer *)obj->_private->timer invalidate];
  v2 = obj->_private;
  timer = v2->timer;
  v2->timer = 0;

  obj->_private->isRequested = 0;
  objc_sync_exit(obj);
}

- (void)_execute
{
  obj = self;
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained(&obj->_private->target);
  if (WeakRetained)
  {
    [(NSInvocation *)obj->_private->methodInvocation invoke];
    v3 = obj->_private;
    if (v3->isRequested)
    {
      v4 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:obj target:sel__execute selector:0 userInfo:0 repeats:v3->timeInterval];
      v5 = obj->_private;
      timer = v5->timer;
      v5->timer = v4;

      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [mainRunLoop addTimer:obj->_private->timer forMode:*MEMORY[0x1E695DA28]];
    }

    else
    {
      mainRunLoop = v3->timer;
      v3->timer = 0;
    }

    obj->_private->isRequested = 0;
  }

  objc_sync_exit(obj);
}

@end