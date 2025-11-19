@interface AMUIDefaultDateProvider
- (AMUIDefaultDateProvider)init;
- (id)observeMinuteUpdatesWithHandler:(id)a3;
- (void)_minuteTimerFired;
- (void)_scheduleNextMinuteTimer;
- (void)_updateMinuteTimer;
- (void)removeMinuteUpdateHandler:(id)a3;
@end

@implementation AMUIDefaultDateProvider

- (AMUIDefaultDateProvider)init
{
  v6.receiver = self;
  v6.super_class = AMUIDefaultDateProvider;
  v2 = [(AMUIDefaultDateProvider *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v2->_calendar;
    v2->_calendar = v3;
  }

  return v2;
}

- (id)observeMinuteUpdatesWithHandler:(id)a3
{
  v4 = a3;
  if (!self->_minuteHandlers)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    minuteHandlers = self->_minuteHandlers;
    self->_minuteHandlers = v5;
  }

  v7 = MEMORY[0x277CCABB0];
  ++self->_nextToken;
  v8 = [v7 numberWithUnsignedInteger:?];
  v9 = [v4 copy];
  v10 = MEMORY[0x245CAD730]();
  [(NSMutableDictionary *)self->_minuteHandlers setObject:v10 forKeyedSubscript:v8];

  [(AMUIDefaultDateProvider *)self _updateMinuteTimer];

  return v8;
}

- (void)removeMinuteUpdateHandler:(id)a3
{
  [(NSMutableDictionary *)self->_minuteHandlers removeObjectForKey:a3];

  [(AMUIDefaultDateProvider *)self _updateMinuteTimer];
}

- (void)_updateMinuteTimer
{
  v3 = [(NSMutableDictionary *)self->_minuteHandlers count];
  minuteTimer = self->_minuteTimer;
  if (v3)
  {
    if (!minuteTimer)
    {

      [(AMUIDefaultDateProvider *)self _scheduleNextMinuteTimer];
      return;
    }
  }

  else if (!minuteTimer)
  {
    return;
  }

  if (![(NSMutableDictionary *)self->_minuteHandlers count])
  {
    [(NSTimer *)self->_minuteTimer invalidate];
    v5 = self->_minuteTimer;
    self->_minuteTimer = 0;
  }
}

- (void)_scheduleNextMinuteTimer
{
  v3 = [(AMUIDefaultDateProvider *)self date];
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  [(NSCalendar *)self->_calendar getHour:&v12 minute:&v11 second:&v10 nanosecond:&v9 fromDate:v3];
  v4 = 60.0 - (v9 / 1000000000.0 + v10);
  [(NSTimer *)self->_minuteTimer invalidate];
  v5 = [v3 dateByAddingTimeInterval:v4];
  v6 = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:v5 interval:self target:sel__minuteTimerFired selector:0 userInfo:0 repeats:0.0];
  minuteTimer = self->_minuteTimer;
  self->_minuteTimer = v6;

  v8 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v8 addTimer:self->_minuteTimer forMode:*MEMORY[0x277CBE738]];
}

- (void)_minuteTimerFired
{
  v3 = [(AMUIDefaultDateProvider *)self date];
  minuteHandlers = self->_minuteHandlers;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__AMUIDefaultDateProvider__minuteTimerFired__block_invoke;
  v6[3] = &unk_278C76358;
  v7 = v3;
  v5 = v3;
  [(NSMutableDictionary *)minuteHandlers enumerateKeysAndObjectsUsingBlock:v6];
  [(AMUIDefaultDateProvider *)self _scheduleNextMinuteTimer];
}

@end