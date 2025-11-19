@interface NSCFTimer
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (NSCFTimer)initWithFireDate:(id)a3 interval:(double)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7 repeats:(BOOL)a8;
- (id)fireDate;
- (id)userInfo;
- (void)fire;
- (void)setFireDate:(id)a3;
@end

@implementation NSCFTimer

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__NSCFTimer_allocWithZone___block_invoke;
  v4[3] = &unk_1E69F2C00;
  v4[4] = a1;
  if (qword_1ED43FBE0 != -1)
  {
    dispatch_once(&qword_1ED43FBE0, v4);
  }

  return _MergedGlobals_122;
}

id __27__NSCFTimer_allocWithZone___block_invoke(uint64_t a1)
{
  result = NSAllocateObject(*(a1 + 32), 0, 0);
  _MergedGlobals_122 = result;
  return result;
}

- (id)fireDate
{
  v2 = MEMORY[0x1E695DF00];
  NextFireDate = CFRunLoopTimerGetNextFireDate(self);

  return [v2 dateWithTimeIntervalSinceReferenceDate:NextFireDate];
}

- (void)setFireDate:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];

  CFRunLoopTimerSetNextFireDate(self, v4);
}

- (id)userInfo
{
  v4 = *MEMORY[0x1E69E9840];
  memset(&v3, 0, sizeof(v3));
  CFRunLoopTimerGetContext(self, &v3);
  return *(v3.info + 3);
}

- (void)fire
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(NSCFTimer *)self isValid])
  {
    v3 = self;
    memset(&v5, 0, sizeof(v5));
    CFRunLoopTimerGetContext(self, &v5);
    __NSFireTimer(self, v5.info);
    [(NSCFTimer *)self timeInterval];
    if (v4 == 0.0)
    {
      [(NSCFTimer *)self invalidate];
    }
  }
}

- (NSCFTimer)initWithFireDate:(id)a3 interval:(double)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7 repeats:(BOOL)a8
{
  v8 = a8;
  v21 = *MEMORY[0x1E69E9840];
  v14 = malloc_default_zone();
  v15 = malloc_type_zone_calloc(v14, 1uLL, 0x20uLL, 0x2C221C3EuLL);
  v16 = v15;
  v20.version = 0;
  v20.info = v15;
  v20.retain = _timerRetain;
  v20.release = _timerRelease;
  v20.copyDescription = 0;
  if (a4 <= 0.0)
  {
    a4 = 0.0001;
  }

  *v15 = 0;
  v15[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  [a3 timeIntervalSinceReferenceDate];
  v18 = 0.0;
  if (v8)
  {
    v18 = a4;
  }

  return CFRunLoopTimerCreate(0, v17, v18, 0, 0, __NSFireTimer, &v20);
}

@end