@interface HKPersistentTimer
+ (id)timerWithKey:(id)key;
- (id)timerValue;
- (unint64_t)elapsedNanoseconds;
- (void)clear;
- (void)start;
@end

@implementation HKPersistentTimer

+ (id)timerWithKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(HKPersistentTimer);
  v6 = [self _prefixedKeyWithTimerKey:keyCopy];

  fullTimerKey = v5->_fullTimerKey;
  v5->_fullTimerKey = v6;

  return v5;
}

- (void)start
{
  v3 = mach_absolute_time();
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
  [standardUserDefaults setObject:v4 forKey:self->_fullTimerKey];
}

- (void)clear
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:self->_fullTimerKey];
}

- (id)timerValue
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:self->_fullTimerKey];

  return v4;
}

- (unint64_t)elapsedNanoseconds
{
  timerValue = [(HKPersistentTimer *)self timerValue];
  v3 = timerValue;
  if (timerValue)
  {
    unsignedLongLongValue = [timerValue unsignedLongLongValue];
    v5 = mach_absolute_time() - unsignedLongLongValue;
    v6 = dword_1EADCDC94;
    if (!dword_1EADCDC94)
    {
      mach_timebase_info(&elapsedNanoseconds_timebaseInfo);
      v6 = dword_1EADCDC94;
    }

    v7 = v5 * elapsedNanoseconds_timebaseInfo / v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end