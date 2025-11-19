@interface _ATXAppHistoricalAverageDose
- (_ATXAppHistoricalAverageDose)initWith:(id)a3 endDate:(id)a4 timeZone:(id)a5 alpha:(double)a6;
- (void)_finishCurrentDay;
- (void)addDuration:(id)a3 endDate:(id)a4;
- (void)skipTo:(id)a3;
@end

@implementation _ATXAppHistoricalAverageDose

- (_ATXAppHistoricalAverageDose)initWith:(id)a3 endDate:(id)a4 timeZone:(id)a5 alpha:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = _ATXAppHistoricalAverageDose;
  v13 = [(_ATXAppHistoricalAverageDose *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_timeZone, a5);
    v15 = [ATXTimeUtil getDayFromTime:v10 timeZone:v14->_timeZone];
    currentDay = v14->_currentDay;
    v14->_currentDay = v15;

    [v11 timeIntervalSinceDate:v10];
    v14->_currentDuration = v17;
    v18 = [[_ATXMovingAverage alloc] initWithAlpha:a6];
    movingAverage = v14->_movingAverage;
    v14->_movingAverage = v18;

    v14->_dayCount = 0;
  }

  return v14;
}

- (void)addDuration:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ATXTimeUtil getDayFromTime:v6 timeZone:self->_timeZone];
  [v7 timeIntervalSinceDate:v6];
  v10 = v9;
  p_currentDay = &self->_currentDay;
  if ([v8 isEqual:self->_currentDay])
  {
    self->_currentDuration = v10 + self->_currentDuration;
  }

  else if ([v8 compare:*p_currentDay] == 1)
  {
    for (i = *p_currentDay; [v8 compare:i] == 1; i = self->_currentDay)
    {
      [(_ATXAppHistoricalAverageDose *)self _finishCurrentDay];
    }

    self->_currentDuration = v10;
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [_ATXAppHistoricalAverageDose addDuration:v8 endDate:p_currentDay];
    }
  }
}

- (void)skipTo:(id)a3
{
  v4 = a3;
  if ([v4 compare:self->_currentDay] == -1)
  {
    [_ATXAppHistoricalAverageDose skipTo:];
  }

  while ([v4 compare:self->_currentDay] == 1)
  {
    [(_ATXAppHistoricalAverageDose *)self _finishCurrentDay];
  }
}

- (void)_finishCurrentDay
{
  [(_ATXAppHistoricalAverageDose *)self _updateMovingAverageForOneDay:self->_currentDuration];
  v3 = [ATXTimeUtil nextStartOfDayAfter:self->_currentDay timeZone:self->_timeZone];
  currentDay = self->_currentDay;
  self->_currentDay = v3;

  self->_currentDuration = 0.0;
}

- (void)addDuration:(uint64_t)a1 endDate:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = v3;
  _os_log_fault_impl(&dword_2263AA000, v4, OS_LOG_TYPE_FAULT, "Received a corrupt app launch event from the app launch stream. LaunchDay is %@, which is earlier than currentDay: %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)skipTo:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"[day compare:_currentDay] != NSOrderedAscending" object:? file:? lineNumber:? description:?];
}

@end