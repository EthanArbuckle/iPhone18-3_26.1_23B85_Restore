@interface AXUpdateElementVisualsCoalescer
- (AXUpdateElementVisualsCoalescer)init;
- (void)_timerDidFire:(id)fire;
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
  timer = [(AXUpdateElementVisualsCoalescer *)self timer];
  [timer invalidate];

  v4.receiver = self;
  v4.super_class = AXUpdateElementVisualsCoalescer;
  [(AXUpdateElementVisualsCoalescer *)&v4 dealloc];
}

- (void)notifyUpdateElementVisualsEventDidOccur
{
  timer = [(AXUpdateElementVisualsCoalescer *)self timer];

  if (timer)
  {
    timer2 = [(AXUpdateElementVisualsCoalescer *)self timer];
    [timer2 invalidate];

    [(AXUpdateElementVisualsCoalescer *)self setTimer:0];
  }

  else
  {
    updateVisualsSequenceDidBeginHandler = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceDidBeginHandler];

    if (updateVisualsSequenceDidBeginHandler)
    {
      updateVisualsSequenceDidBeginHandler2 = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceDidBeginHandler];
      updateVisualsSequenceDidBeginHandler2[2]();
    }
  }

  v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__timerDidFire_ selector:0 userInfo:0 repeats:self->_threshold];
  [(AXUpdateElementVisualsCoalescer *)self setTimer:v7];

  updateVisualsSequenceInProgressHandler = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceInProgressHandler];
  if (updateVisualsSequenceInProgressHandler)
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

        updateVisualsSequenceInProgressHandler2 = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceInProgressHandler];
        updateVisualsSequenceInProgressHandler2[2]();
      }

      self->_lastProgressTime = v11;
    }
  }
}

- (void)_timerDidFire:(id)fire
{
  updateVisualsSequenceDidFinishHandler = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceDidFinishHandler];

  if (updateVisualsSequenceDidFinishHandler)
  {
    updateVisualsSequenceDidFinishHandler2 = [(AXUpdateElementVisualsCoalescer *)self updateVisualsSequenceDidFinishHandler];
    updateVisualsSequenceDidFinishHandler2[2]();
  }

  timer = [(AXUpdateElementVisualsCoalescer *)self timer];
  [timer invalidate];

  [(AXUpdateElementVisualsCoalescer *)self setTimer:0];
}

@end