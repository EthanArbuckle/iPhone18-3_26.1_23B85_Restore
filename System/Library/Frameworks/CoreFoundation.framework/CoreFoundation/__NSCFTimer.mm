@interface __NSCFTimer
- (BOOL)isEqual:(id)equal;
- (__NSCFTimer)initWithFireDate:(id)date interval:(double)interval target:(id)target selector:(SEL)selector userInfo:(id)info repeats:(BOOL)repeats;
- (id)fireDate;
- (id)userInfo;
- (void)fire;
- (void)setFireDate:(id)date;
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

  return _CFNonObjCEqual(self, equal) != 0;
}

- (void)setFireDate:(id)date
{
  [date timeIntervalSinceReferenceDate];

  CFRunLoopTimerSetNextFireDate(self, v4);
}

- (void)fire
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(__NSCFTimer *)self isValid])
  {
    selfCopy = self;
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

- (__NSCFTimer)initWithFireDate:(id)date interval:(double)interval target:(id)target selector:(SEL)selector userInfo:(id)info repeats:(BOOL)repeats
{
  repeatsCopy = repeats;
  v22 = *MEMORY[0x1E69E9840];
  v14 = malloc_default_zone();
  v15 = malloc_type_zone_calloc(v14, 1uLL, 0x20uLL, 0x10800406BDE4C18uLL);
  v16 = v15;
  v21.version = 0;
  v21.info = v15;
  v21.retain = _timerRetain;
  v21.release = _timerRelease;
  v21.copyDescription = 0;
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

  result = CFRunLoopTimerCreate(0, v17, intervalCopy, 0, 0, __CFFireTimer, &v21);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

@end