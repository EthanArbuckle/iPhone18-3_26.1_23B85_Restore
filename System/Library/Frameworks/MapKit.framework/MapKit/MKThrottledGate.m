@interface MKThrottledGate
- (BOOL)_dispatchWaitingJobsIfNecessary;
- (BOOL)_replenishAvailableJobsIfNecessary;
- (MKThrottledGate)initWithMax:(int)a3 refreshRate:(double)a4 queue:(id)a5;
- (id)description;
- (void)_ensureTimer;
- (void)_timerFired:(id)a3;
- (void)dealloc;
- (void)dispatch:(id)a3;
@end

@implementation MKThrottledGate

- (BOOL)_dispatchWaitingJobsIfNecessary
{
  v3 = [(NSMutableArray *)self->_waitingJobs count];
  if (v3)
  {
    while (self->_availableTickets >= 1.0)
    {
      if (![(NSMutableArray *)self->_waitingJobs count])
      {
        break;
      }

      self->_availableTickets = self->_availableTickets + -1.0;
      v4 = [(NSMutableArray *)self->_waitingJobs objectAtIndex:0];
      [(NSMutableArray *)self->_waitingJobs removeObjectAtIndex:0];
      dispatch_async(self->_queue, v4);
    }

    LOBYTE(v3) = [(NSMutableArray *)self->_waitingJobs count]!= 0;
  }

  return v3;
}

- (BOOL)_replenishAvailableJobsIfNecessary
{
  availableTickets = self->_availableTickets;
  maxAvailableTickets = self->_maxAvailableTickets;
  if (availableTickets < maxAvailableTickets)
  {
    availableTickets = availableTickets + self->_refreshRate;
    if (availableTickets >= maxAvailableTickets)
    {
      availableTickets = self->_maxAvailableTickets;
    }

    self->_availableTickets = availableTickets;
  }

  return availableTickets < maxAvailableTickets;
}

- (void)_timerFired:(id)a3
{
  v4 = [(MKThrottledGate *)self _replenishAvailableJobsIfNecessary];
  v5 = [(MKThrottledGate *)self _dispatchWaitingJobsIfNecessary];
  if (v4 || v5)
  {

    [(MKThrottledGate *)self _ensureTimer];
  }
}

- (void)dispatch:(id)a3
{
  v4 = [a3 copy];
  waitingJobs = self->_waitingJobs;
  v7 = v4;
  v6 = MEMORY[0x1A58E9F30]();
  [(NSMutableArray *)waitingJobs addObject:v6];

  if ([(MKThrottledGate *)self _dispatchWaitingJobsIfNecessary])
  {
    [(MKThrottledGate *)self _ensureTimer];
  }
}

- (void)_ensureTimer
{
  [(VKTimer *)self->_timer nextFireDate];
  if (v3 > CFAbsoluteTimeGetCurrent() + 1.0)
  {
    timer = self->_timer;

    [(VKTimer *)timer fireAfter:1.0];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p: max tickets: %d, available: %f, refresh rate: %f, waiting jobs: %lu", v5, self, self->_maxAvailableTickets, *&self->_availableTickets, *&self->_refreshRate, -[NSMutableArray count](self->_waitingJobs, "count")];

  return v6;
}

- (void)dealloc
{
  [(VKTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = MKThrottledGate;
  [(MKThrottledGate *)&v3 dealloc];
}

- (MKThrottledGate)initWithMax:(int)a3 refreshRate:(double)a4 queue:(id)a5
{
  v9 = a5;
  v17.receiver = self;
  v17.super_class = MKThrottledGate;
  v10 = [(MKThrottledGate *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, a5);
    v11->_maxAvailableTickets = a3;
    v11->_availableTickets = a3;
    v11->_refreshRate = a4;
    v12 = [objc_alloc(MEMORY[0x1E69DF4A8]) initWithTarget:v11 selector:sel__timerFired_ queue:v11->_queue];
    timer = v11->_timer;
    v11->_timer = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    waitingJobs = v11->_waitingJobs;
    v11->_waitingJobs = v14;
  }

  return v11;
}

@end