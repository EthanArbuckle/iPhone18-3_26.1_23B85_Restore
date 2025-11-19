@interface __NSCFTimer
- (BOOL)isEqual:(id)a3;
- (__NSCFTimer)initWithFireDate:(id)a3 interval:(double)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7 repeats:(BOOL)a8;
- (id)fireDate;
- (id)userInfo;
- (void)fire;
- (void)setFireDate:(id)a3;
@end

@implementation __NSCFTimer

- (id)fireDate
{
  NextFireDate = CFRunLoopTimerGetNextFireDate(self);

  return [NSDate dateWithTimeIntervalSinceReferenceDate:NextFireDate];
}

- (id)userInfo
{
  v5 = *MEMORY[0x1E69E9840];
  memset(&v4, 0, sizeof(v4));
  CFRunLoopTimerGetContext(self, &v4);
  result = *(v4.info + 3);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

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

  return _CFNonObjCEqual(self, a3) != 0;
}

- (void)setFireDate:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];

  CFRunLoopTimerSetNextFireDate(self, v4);
}

- (void)fire
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(__NSCFTimer *)self isValid])
  {
    v3 = self;
    memset(&v6, 0, sizeof(v6));
    CFRunLoopTimerGetContext(self, &v6);
    __CFFireTimer(self, v6.info);
    [(__NSCFTimer *)self timeInterval];
    if (v4 == 0.0)
    {
      [(__NSCFTimer *)self invalidate];
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (__NSCFTimer)initWithFireDate:(id)a3 interval:(double)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7 repeats:(BOOL)a8
{
  v8 = a8;
  v22 = *MEMORY[0x1E69E9840];
  v14 = malloc_default_zone();
  v15 = malloc_type_zone_calloc(v14, 1uLL, 0x20uLL, 0x10800406BDE4C18uLL);
  v16 = v15;
  v21.version = 0;
  v21.info = v15;
  v21.retain = _timerRetain;
  v21.release = _timerRelease;
  v21.copyDescription = 0;
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

  result = CFRunLoopTimerCreate(0, v17, v18, 0, 0, __CFFireTimer, &v21);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

@end