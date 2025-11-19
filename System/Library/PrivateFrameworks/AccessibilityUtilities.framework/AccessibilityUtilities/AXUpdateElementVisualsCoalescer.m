@interface AXUpdateElementVisualsCoalescer
- (AXUpdateElementVisualsCoalescer)init;
- (void)_timerDidFire:(id)a3;
- (void)dealloc;
- (void)notifyUpdateElementVisualsEventDidOccur;
@end

@implementation AXUpdateElementVisualsCoalescer

- (AXUpdateElementVisualsCoalescer)init
{
  v3.receiver = self;
  v3.super_class = AXUpdateElementVisualsCoalescer;
  result = [(AXUpdateElementVisualsCoalescer *)&v3 init];
  if (result)
  {
    *&result->_threshold = xmmword_18B2F87D0;
    result->_lastProgressTime = -1.0;
  }

  return result;
}

- (void)dealloc
{
  v3 = [(AXUpdateElementVisualsCoalescer *)self timer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = AXUpdateElementVisualsCoalescer;
  [(AXUpdateElementVisualsCoalescer *)&v4 dealloc];
}

- (void)notifyUpdateElementVisualsEventDidOccur
{
  v3 = [(AXUpdateElementVisualsCoalescer *)self timer];

  if (v3)
  {
    v4 = [(AXUpdateElementVisualsCoalescer *)self timer];
    [v4 invalidate];

    [(AXUpdateElementVisualsCoalescer *)self setTimer:0];
  }

  else
  {
    v5 = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceDidBeginHandler];

    if (v5)
    {
      v6 = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceDidBeginHandler];
      v6[2]();
    }
  }

  v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__timerDidFire_ selector:0 userInfo:0 repeats:self->_threshold];
  [(AXUpdateElementVisualsCoalescer *)self setTimer:v7];

  v8 = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceInProgressHandler];
  if (v8)
  {
    progressInterval = self->_progressInterval;

    if (progressInterval > 0.0)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v11 = v10;
      lastProgressTime = self->_lastProgressTime;
      if (lastProgressTime > 0.0)
      {
        if (v11 - lastProgressTime <= self->_progressInterval)
        {
          return;
        }

        v13 = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceInProgressHandler];
        v13[2]();
      }

      self->_lastProgressTime = v11;
    }
  }
}

- (void)_timerDidFire:(id)a3
{
  v4 = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceDidFinishHandler];

  if (v4)
  {
    v5 = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceDidFinishHandler];
    v5[2]();
  }

  v6 = [(AXUpdateElementVisualsCoalescer *)self timer];
  [v6 invalidate];

  [(AXUpdateElementVisualsCoalescer *)self setTimer:0];
}

@end