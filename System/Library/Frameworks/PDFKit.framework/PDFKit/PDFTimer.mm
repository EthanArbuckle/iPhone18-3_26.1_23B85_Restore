@interface PDFTimer
- (PDFTimer)initWithSelector:(SEL)a3 forTarget:(id)a4;
- (PDFTimer)initWithThrottleDelay:(double)a3 forSelector:(SEL)a4 forTarget:(id)a5;
- (void)_execute;
- (void)cancel;
- (void)dealloc;
- (void)update;
@end

@implementation PDFTimer

- (PDFTimer)initWithSelector:(SEL)a3 forTarget:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = PDFTimer;
  v7 = [(PDFTimer *)&v17 init];
  if (v7)
  {
    v8 = objc_alloc_init(PDFTimerPrivate);
    v9 = v7->_private;
    v7->_private = v8;

    objc_storeWeak(&v7->_private->target, v6);
    v10 = [v6 methodSignatureForSelector:a3];
    v11 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v10];
    v12 = v7->_private;
    methodInvocation = v12->methodInvocation;
    v12->methodInvocation = v11;

    [(NSInvocation *)v7->_private->methodInvocation setSelector:a3];
    [(NSInvocation *)v7->_private->methodInvocation setTarget:v6];
    v7->_private->timeInterval = 0.0;
    v14 = v7->_private;
    timer = v14->timer;
    v14->timer = 0;
  }

  return v7;
}

- (PDFTimer)initWithThrottleDelay:(double)a3 forSelector:(SEL)a4 forTarget:(id)a5
{
  v8 = a5;
  v19.receiver = self;
  v19.super_class = PDFTimer;
  v9 = [(PDFTimer *)&v19 init];
  if (v9)
  {
    v10 = objc_alloc_init(PDFTimerPrivate);
    v11 = v9->_private;
    v9->_private = v10;

    objc_storeWeak(&v9->_private->target, v8);
    v12 = [v8 methodSignatureForSelector:a4];
    v13 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v12];
    v14 = v9->_private;
    methodInvocation = v14->methodInvocation;
    v14->methodInvocation = v13;

    [(NSInvocation *)v9->_private->methodInvocation setSelector:a4];
    [(NSInvocation *)v9->_private->methodInvocation setTarget:v8];
    v9->_private->timeInterval = a3;
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

    v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v7 addTimer:obj->_private->timer forMode:*MEMORY[0x1E695DA28]];

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

      v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v7 addTimer:obj->_private->timer forMode:*MEMORY[0x1E695DA28]];
    }

    else
    {
      v7 = v3->timer;
      v3->timer = 0;
    }

    obj->_private->isRequested = 0;
  }

  objc_sync_exit(obj);
}

@end