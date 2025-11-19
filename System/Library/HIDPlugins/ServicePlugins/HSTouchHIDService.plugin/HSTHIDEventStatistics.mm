@interface HSTHIDEventStatistics
- (HSTHIDEventStatistics)init;
- (id)stats;
- (void)_doUpdateStat:(id)a3;
- (void)_drainCurrentWindow;
- (void)handleHIDEvents:(id)a3;
@end

@implementation HSTHIDEventStatistics

- (void)_drainCurrentWindow
{
  if (self->_currentStatsWindow)
  {
    v3 = 0;
    eventCount = self->_eventCount;
    do
    {
      if (eventCount[v3] >= 1)
      {
        v5 = [NSNumber numberWithInt:?];
        currentStatsWindow = self->_currentStatsWindow;
        v7 = [NSString stringWithUTF8String:IOHIDEventGetTypeString()];
        [(NSMutableDictionary *)currentStatsWindow setObject:v5 forKeyedSubscript:v7];
      }

      ++v3;
    }

    while (v3 != 44);
    v8 = [NSNumber numberWithInt:self->_totalCount];
    [(NSMutableDictionary *)self->_currentStatsWindow setObject:v8 forKeyedSubscript:@"totalCount"];

    if ([(NSMutableArray *)self->_eventStats count]>= 0x32)
    {
      do
      {
        [(NSMutableArray *)self->_eventStats removeObjectAtIndex:0];
      }

      while ([(NSMutableArray *)self->_eventStats count]> 0x31);
    }

    [(NSMutableArray *)self->_eventStats addObject:self->_currentStatsWindow];
    v9 = self->_currentStatsWindow;
    self->_currentStatsWindow = 0;

    eventCount[44] = 0;
    *(eventCount + 9) = 0u;
    *(eventCount + 10) = 0u;
    *(eventCount + 7) = 0u;
    *(eventCount + 8) = 0u;
    *(eventCount + 5) = 0u;
    *(eventCount + 6) = 0u;
    *(eventCount + 3) = 0u;
    *(eventCount + 4) = 0u;
    *(eventCount + 1) = 0u;
    *(eventCount + 2) = 0u;
    *eventCount = 0u;
  }
}

- (HSTHIDEventStatistics)init
{
  v7.receiver = self;
  v7.super_class = HSTHIDEventStatistics;
  v2 = [(HSTHIDEventStatistics *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    *(v2 + 196) = 0u;
    *(v2 + 184) = 0u;
    *(v2 + 168) = 0u;
    *(v2 + 152) = 0u;
    *(v2 + 136) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 104) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 24) = 0u;
    v5 = v2;
  }

  return v2;
}

- (void)handleHIDEvents:(id)a3
{
  v16 = a3;
  v5 = v16[1];
  for (i = v16[2]; v5 != i; ++v5)
  {
    v6 = *v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = HSUtil::NanosecondsFromMachTime([v7 timestamp]);
      v9 = v8;
      currentWindowStartTime = self->_currentWindowStartTime;
      if (currentWindowStartTime && v8 > currentWindowStartTime + 10000000000)
      {
        [(HSTHIDEventStatistics *)self _drainCurrentWindow];
      }

      if (!self->_currentStatsWindow)
      {
        v11 = objc_opt_new();
        currentStatsWindow = self->_currentStatsWindow;
        self->_currentStatsWindow = v11;

        *v18 = 0u;
        v19 = 0u;
        v17 = time(0);
        v13 = [NSNumber numberWithLong:v17];
        [(NSMutableDictionary *)self->_currentStatsWindow setObject:v13 forKeyedSubscript:@"startTimeSinceEpoch"];

        v14 = localtime(&v17);
        if (v14)
        {
          strftime(v18, 0x20uLL, "%Y-%m-%d %H:%M:%S %z", v14);
        }

        v15 = [NSString stringWithUTF8String:v18, v14];
        [(NSMutableDictionary *)self->_currentStatsWindow setObject:v15 forKeyedSubscript:@"startTime"];

        self->_currentWindowStartTime = v9;
      }

      ++self->_totalCount;
      [(HSTHIDEventStatistics *)self _doUpdateStat:v7];
    }
  }
}

- (void)_doUpdateStat:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  ++self->_eventCount[v5];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v4 children];
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(HSTHIDEventStatistics *)self _doUpdateStat:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)stats
{
  [(HSTHIDEventStatistics *)self _drainCurrentWindow];
  self->_currentWindowStartTime = 0;
  eventStats = self->_eventStats;

  return eventStats;
}

@end