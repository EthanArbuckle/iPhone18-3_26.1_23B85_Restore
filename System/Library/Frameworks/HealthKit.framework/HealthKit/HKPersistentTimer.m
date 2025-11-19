@interface HKPersistentTimer
+ (id)timerWithKey:(id)a3;
- (id)timerValue;
- (unint64_t)elapsedNanoseconds;
- (void)clear;
- (void)start;
@end

@implementation HKPersistentTimer

+ (id)timerWithKey:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKPersistentTimer);
  v6 = [a1 _prefixedKeyWithTimerKey:v4];

  fullTimerKey = v5->_fullTimerKey;
  v5->_fullTimerKey = v6;

  return v5;
}

- (void)start
{
  v3 = mach_absolute_time();
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
  [v5 setObject:v4 forKey:self->_fullTimerKey];
}

- (void)clear
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 removeObjectForKey:self->_fullTimerKey];
}

- (id)timerValue
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:self->_fullTimerKey];

  return v4;
}

- (unint64_t)elapsedNanoseconds
{
  v2 = [(HKPersistentTimer *)self timerValue];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
    v5 = mach_absolute_time() - v4;
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