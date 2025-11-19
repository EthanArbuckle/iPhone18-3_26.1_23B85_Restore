@interface _CPPowerAssertion
- (_CPPowerAssertion)initWithIdentifier:(id)a3 timeout:(double)a4;
- (void)dealloc;
- (void)timedout;
@end

@implementation _CPPowerAssertion

- (_CPPowerAssertion)initWithIdentifier:(id)a3 timeout:(double)a4
{
  v10.receiver = self;
  v10.super_class = _CPPowerAssertion;
  v6 = [(_CPPowerAssertion *)&v10 init];
  if (v6)
  {
    if (a4 <= 0.0)
    {
      v7 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, a3, &v6->_assertion);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = IOPMAssertionCreateWithDescription(@"NoIdleSleepAssertion", a3, 0, 0, 0, a4 + 60.0, @"TimeoutActionTurnOff", &v6->_assertion);
      if (v7)
      {
LABEL_4:
        v6->_assertion = 0;
        NSLog(@"Unable to create the power assertion for %@ (%d).", a3, v7);

        return 0;
      }
    }

    v6->_identifier = [a3 copy];
    v6->_timeout = a4;
    v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v6->_stack = [MEMORY[0x1E696AF00] callStackReturnAddresses];
    if (a4 > 0.0)
    {
      pthread_mutex_lock(&_PowerAssertionsLock);
      if (!_PowerAssertions)
      {
        _PowerAssertions = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      }

      if (!_PowerAssertionTimerThread)
      {
        _PowerAssertionTimerThread = objc_alloc_init(_CPPowerAssertionThread);
        [_PowerAssertionTimerThread start];
      }

      pthread_mutex_unlock(&_PowerAssertionsLock);
      [_PowerAssertionTimerThread performSelector:sel_addAssertion_ onThread:_PowerAssertionTimerThread withObject:v6 waitUntilDone:0];
    }

    [v8 drain];
  }

  return v6;
}

- (void)dealloc
{
  pthread_mutex_lock(&_PowerAssertionsLock);
  v3 = _PowerAssertions;
  if (_PowerAssertions)
  {
    v9.length = CFArrayGetCount(_PowerAssertions);
    v9.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v9, self);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(_PowerAssertions, FirstIndexOfValue);
    }
  }

  pthread_mutex_unlock(&_PowerAssertionsLock);
  assertion = self->_assertion;
  if (assertion)
  {
    v6 = IOPMAssertionRelease(assertion);
    if (v6)
    {
      NSLog(@"Unable to properly release the power assertion for %@ (%d).  Dropping it instead.", self->_identifier, v6);
      v7 = getpid();
      NSLog(@"Backtrace for power assertion: pid %d %@", v7, self->_stack);
    }
  }

  v8.receiver = self;
  v8.super_class = _CPPowerAssertion;
  [(_CPPowerAssertion *)&v8 dealloc];
}

- (void)timedout
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Power assertion timeout for %@.  Simply releasing it now.\nBacktrace for power assertion: pid %d %@", self->_identifier, getpid(), self->_stack];
  NSLog(@"%@", v4);
  v3 = IOPMAssertionRelease(self->_assertion);
  if (v3)
  {
    NSLog(@"Unable to properly release the power assertion though (%d).  Just dropping it.", v3);
  }

  self->_assertion = 0;
}

@end