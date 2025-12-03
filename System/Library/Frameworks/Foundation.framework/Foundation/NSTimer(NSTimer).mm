@interface NSTimer(NSTimer)
+ (NSCFTimer)allocWithZone:()NSTimer;
+ (__CFRunLoopTimer)scheduledTimerWithTimeInterval:()NSTimer invocation:repeats:;
+ (__CFRunLoopTimer)scheduledTimerWithTimeInterval:()NSTimer repeats:block:;
+ (__CFRunLoopTimer)scheduledTimerWithTimeInterval:()NSTimer target:selector:userInfo:repeats:;
+ (id)timerWithFireDate:()NSTimer target:selector:userInfo:;
+ (id)timerWithTimeInterval:()NSTimer invocation:repeats:;
+ (id)timerWithTimeInterval:()NSTimer repeats:block:;
+ (id)timerWithTimeInterval:()NSTimer target:selector:userInfo:repeats:;
- (double)context;
- (id)copyDebugDescription;
- (uint64_t)_cffireTime;
- (uint64_t)fireTime;
- (uint64_t)initWithFireDate:()NSTimer interval:repeats:block:;
- (uint64_t)setFireTime:()NSTimer;
- (void)fire;
- (void)invalidate;
- (void)setFireDate:()NSTimer;
- (void)setTolerance:()NSTimer;
@end

@implementation NSTimer(NSTimer)

+ (NSCFTimer)allocWithZone:()NSTimer
{
  if (MEMORY[0x1E695DFF0] == self)
  {
    return [NSCFTimer allocWithZone:?];
  }

  else
  {
    return NSAllocateObject(self, 0, a3);
  }
}

+ (id)timerWithTimeInterval:()NSTimer invocation:repeats:
{
  [a4 retainArguments];
  v9 = objc_allocWithZone(self);
  v10 = [v9 initWithFireDate:objc_msgSend(MEMORY[0x1E695DF00] interval:"dateWithTimeIntervalSinceNow:" target:a2) selector:a4 userInfo:sel_invoke repeats:{0, a5, a2}];

  return v10;
}

+ (__CFRunLoopTimer)scheduledTimerWithTimeInterval:()NSTimer invocation:repeats:
{
  [a4 retainArguments];
  v9 = objc_allocWithZone(self);
  v10 = [v9 initWithFireDate:objc_msgSend(MEMORY[0x1E695DF00] interval:"dateWithTimeIntervalSinceNow:" target:a2) selector:a4 userInfo:sel_invoke repeats:{0, a5, a2}];
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(Current, v10, *MEMORY[0x1E695E8E0]);
  return v10;
}

+ (id)timerWithTimeInterval:()NSTimer target:selector:userInfo:repeats:
{
  v12 = objc_allocWithZone(self);
  v13 = [v12 initWithFireDate:objc_msgSend(MEMORY[0x1E695DF00] interval:"dateWithTimeIntervalSinceNow:" target:a2) selector:a4 userInfo:a5 repeats:{a6, a7, a2}];

  return v13;
}

+ (__CFRunLoopTimer)scheduledTimerWithTimeInterval:()NSTimer target:selector:userInfo:repeats:
{
  v12 = objc_allocWithZone(self);
  v13 = [v12 initWithFireDate:objc_msgSend(MEMORY[0x1E695DF00] interval:"dateWithTimeIntervalSinceNow:" target:a2) selector:a4 userInfo:a5 repeats:{a6, a7, a2}];
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(Current, v13, *MEMORY[0x1E695E8E0]);
  return v13;
}

+ (id)timerWithTimeInterval:()NSTimer repeats:block:
{
  v8 = objc_allocWithZone(self);
  v9 = [v8 initWithFireDate:objc_msgSend(MEMORY[0x1E695DF00] interval:"dateWithTimeIntervalSinceNow:" repeats:a2) block:{a4, a5, a2}];

  return v9;
}

+ (__CFRunLoopTimer)scheduledTimerWithTimeInterval:()NSTimer repeats:block:
{
  v8 = objc_allocWithZone(self);
  v9 = [v8 initWithFireDate:objc_msgSend(MEMORY[0x1E695DF00] interval:"dateWithTimeIntervalSinceNow:" repeats:a2) block:{a4, a5, a2}];
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(Current, v9, *MEMORY[0x1E695E8E0]);
  return v9;
}

+ (id)timerWithFireDate:()NSTimer target:selector:userInfo:
{
  v6 = [objc_allocWithZone(self) initWithFireDate:a3 interval:a4 target:a5 selector:a6 userInfo:0 repeats:0.0];

  return v6;
}

- (uint64_t)initWithFireDate:()NSTimer interval:repeats:block:
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = [_NSTimerBlockTarget alloc];
  if (v11)
  {
    v15.receiver = v11;
    v15.super_class = _NSTimerBlockTarget;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    v12[1] = _Block_copy(a6);
  }

  else
  {
    v12 = 0;
  }

  v13 = [self initWithFireDate:a4 interval:v12 target:sel_fire_ selector:0 userInfo:a5 repeats:a2];

  return v13;
}

- (void)invalidate
{
  v4 = NSClassFromString(@"NSTimer");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (void)setTolerance:()NSTimer
{
  v4 = NSClassFromString(@"NSTimer");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (void)fire
{
  v4 = NSClassFromString(@"NSTimer");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (void)setFireDate:()NSTimer
{
  v4 = NSClassFromString(@"NSTimer");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (id)copyDebugDescription
{
  v1 = [self debugDescription];

  return v1;
}

- (uint64_t)fireTime
{
  fireDate = [self fireDate];

  return [fireDate timeIntervalSinceReferenceDate];
}

- (uint64_t)setFireTime:()NSTimer
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];

  return [self setFireDate:v2];
}

- (double)context
{
  *(self + 32) = 0;
  result = 0.0;
  *self = 0u;
  *(self + 16) = 0u;
  return result;
}

- (uint64_t)_cffireTime
{
  fireDate = [self fireDate];

  return [fireDate timeIntervalSinceReferenceDate];
}

@end