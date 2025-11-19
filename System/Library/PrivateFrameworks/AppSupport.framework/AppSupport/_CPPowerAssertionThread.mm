@interface _CPPowerAssertionThread
- (void)addAssertion:(id)a3;
- (void)didTimeOut:(id)a3;
- (void)main;
@end

@implementation _CPPowerAssertionThread

- (void)main
{
  self->_earliest = [MEMORY[0x1E695DF00] distantFuture];
  v3 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v4 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:self->_earliest interval:self target:sel_didTimeOut_ selector:0 userInfo:1 repeats:60.0];
  self->_timer = v4;
  [v3 addTimer:v4 forMode:*MEMORY[0x1E695D918]];

  [v3 run];
}

- (void)addAssertion:(id)a3
{
  pthread_mutex_lock(&_PowerAssertionsLock);
  v5 = MEMORY[0x1E695DF00];
  [a3 timeout];
  v6 = [v5 dateWithTimeIntervalSinceNow:?];
  if ([v6 earlierDate:self->_earliest] == self->_earliest)
  {
    [v6 timeIntervalSinceDate:?];
    [a3 setTimeout:?];
    Count = CFArrayGetCount(_PowerAssertions);
    v17.location = 0;
    v17.length = Count;
    v15 = CFArrayBSearchValues(_PowerAssertions, v17, a3, _CompareAssertionTimeouts, 0);
    if (v15 <= Count)
    {
      CFArrayInsertValueAtIndex(_PowerAssertions, v15, a3);
    }

    else
    {
      CFArrayAppendValue(_PowerAssertions, a3);
    }
  }

  else
  {
    [(NSDate *)self->_earliest timeIntervalSinceDate:v6];
    v8 = v7;
    v9 = CFArrayGetCount(_PowerAssertions);
    if (v9 >= 1)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(_PowerAssertions, i);
        [ValueAtIndex timeout];
        [ValueAtIndex setTimeout:v8 + v13];
      }
    }

    self->_earliest = v6;
    [a3 setTimeout:0.0];
    CFArrayInsertValueAtIndex(_PowerAssertions, 0, a3);
    [(NSTimer *)self->_timer setFireDate:v6];
  }

  pthread_mutex_unlock(&_PowerAssertionsLock);
}

- (void)didTimeOut:(id)a3
{
  pthread_mutex_lock(&_PowerAssertionsLock);
  Count = CFArrayGetCount(_PowerAssertions);

  self->_earliest = [MEMORY[0x1E695DF00] distantFuture];
  if (Count >= 1)
  {
    v5 = 0;
    v6 = 0.0;
    v7 = -1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(_PowerAssertions, v5);
      [ValueAtIndex timeout];
      if (v9 == 0.0)
      {
        [ValueAtIndex timedout];
      }

      else
      {
        if (v6 == 0.0)
        {
          [ValueAtIndex timeout];
          v6 = v10;

          self->_earliest = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:v6];
          v7 = v5;
        }

        [ValueAtIndex timeout];
        [ValueAtIndex setTimeout:v11 - v6];
      }

      ++v5;
    }

    while (Count != v5);
    if (v7 != -1)
    {
      v13.location = 0;
      v13.length = v7;
      CFArrayReplaceValues(_PowerAssertions, v13, 0, 0);
    }
  }

  [(NSTimer *)self->_timer setFireDate:self->_earliest];

  pthread_mutex_unlock(&_PowerAssertionsLock);
}

@end