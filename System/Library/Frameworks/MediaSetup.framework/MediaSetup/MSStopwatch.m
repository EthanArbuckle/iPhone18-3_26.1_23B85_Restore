@interface MSStopwatch
- (MSStopwatch)init;
- (void)lapWithName:(id)a3;
- (void)reset;
- (void)start;
- (void)stop;
- (void)toggleLock:(BOOL)a3;
@end

@implementation MSStopwatch

- (MSStopwatch)init
{
  v6.receiver = self;
  v6.super_class = MSStopwatch;
  v2 = [(MSStopwatch *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MSStopwatch *)v2 setStartTime:0];
    [(MSStopwatch *)v3 setStopTime:0];
    [(MSStopwatch *)v3 setElapsedTime:0];
    [(MSStopwatch *)v3 setElapsedTimeMS:0];
    [(MSStopwatch *)v3 setElapsedTimeSeconds:0];
    [(MSStopwatch *)v3 setLastLapTime:0];
    [(MSStopwatch *)v3 setStatus:1];
    [(MSStopwatch *)v3 setIsLocked:0];
    v4 = objc_opt_new();
    [(MSStopwatch *)v3 setLaps:v4];
  }

  return v3;
}

- (void)start
{
  if (self->_status && !self->_isLocked)
  {
    if (!self->_startTime)
    {
      self->_startTime = mach_absolute_time();
    }

    self->_status = 0;
  }
}

- (void)stop
{
  if (self->_status != 1 && !self->_isLocked)
  {
    v3 = mach_absolute_time();
    v4 = v3 - self->_startTime;
    self->_stopTime = v3;
    self->_elapsedTime = v4;
    self->_elapsedTimeMS = UpTicksToMilliseconds();
    elapsedTime = self->_elapsedTime;
    self->_elapsedTimeSeconds = UpTicksToSeconds();
    self->_status = 1;
  }
}

- (void)lapWithName:(id)a3
{
  v4 = a3;
  if (self->_status != 1 && !self->_isLocked)
  {
    v10 = v4;
    v5 = mach_absolute_time() - self->_startTime;
    if (v10)
    {
      v6 = v10;
    }

    else
    {
      v7 = [MEMORY[0x277CCAD78] UUID];
      v6 = [v7 UUIDString];
    }

    laps = self->_laps;
    v9 = [[MSStopwatchLap alloc] initWithLapTime:v5 andName:v6];
    [(NSMutableArray *)laps addObject:v9];

    self->_startTime = 0;
    self->_lastLapTime = v5;

    v4 = v10;
  }
}

- (void)reset
{
  if (self->_status && !self->_isLocked)
  {
    *&self->_elapsedTime = 0u;
    *&self->_elapsedTimeSeconds = 0u;
    *&self->_startTime = 0u;
    v3 = objc_opt_new();
    laps = self->_laps;
    self->_laps = v3;

    MEMORY[0x2821F96F8]();
  }
}

- (void)toggleLock:(BOOL)a3
{
  if (self->_isLocked != a3)
  {
    self->_isLocked = a3;
  }
}

@end