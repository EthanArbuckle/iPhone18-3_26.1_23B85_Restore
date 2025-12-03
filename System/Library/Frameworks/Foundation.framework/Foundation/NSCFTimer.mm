@interface NSCFTimer
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)isEqual:(id)equal;
- (NSCFTimer)initWithFireDate:(id)date interval:(double)interval target:(id)target selector:(SEL)selector userInfo:(id)info repeats:(BOOL)repeats;
- (id)fireDate;
- (id)userInfo;
- (void)fire;
- (void)setFireDate:(id)date;
@end

@implementation NSCFTimer

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__NSCFTimer_allocWithZone___block_invoke;
  v4[3] = &unk_1E69F2C00;
  v4[4] = self;
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

- (void)setFireDate:(id)date
{
  [date timeIntervalSinceReferenceDate];

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
    selfCopy = self;
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

- (NSCFTimer)initWithFireDate:(id)date interval:(double)interval target:(id)target selector:(SEL)selector userInfo:(id)info repeats:(BOOL)repeats
{
  repeatsCopy = repeats;
  v21 = *MEMORY[0x1E69E9840];
  v14 = malloc_default_zone();
  v15 = malloc_type_zone_calloc(v14, 1uLL, 0x20uLL, 0x2C221C3EuLL);
  v16 = v15;
  v20.version = 0;
  v20.info = v15;
  v20.retain = _timerRetain;
  v20.release = _timerRelease;
  v20.copyDescription = 0;
  if (interval <= 0.0)
  {
    interval = 0.0001;
  }

  *v15 = 0;
  v15[1] = target;
  v16[2] = selector;
  v16[3] = info;
  [date timeIntervalSinceReferenceDate];
  intervalCopy = 0.0;
  if (repeatsCopy)
  {
    intervalCopy = interval;
  }

  return CFRunLoopTimerCreate(0, v17, intervalCopy, 0, 0, __NSFireTimer, &v20);
}

@end