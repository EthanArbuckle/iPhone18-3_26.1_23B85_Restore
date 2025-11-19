@interface ATXInterruptedAppSessionSummaryMetrics
- (ATXInterruptedAppSessionSummaryMetrics)initWithDimensions:(id)a3;
- (double)percentageInterruptedAppSessions;
- (id)coreAnalyticsDictionary;
@end

@implementation ATXInterruptedAppSessionSummaryMetrics

- (ATXInterruptedAppSessionSummaryMetrics)initWithDimensions:(id)a3
{
  v4.receiver = self;
  v4.super_class = ATXInterruptedAppSessionSummaryMetrics;
  result = [(_ATXCoreAnalyticsMetric *)&v4 initWithDimensions:a3];
  if (result)
  {
    result->_totalAppSessions = 0;
    result->_interruptedAppSessions = 0;
  }

  return result;
}

- (double)percentageInterruptedAppSessions
{
  totalAppSessions = self->_totalAppSessions;
  if (totalAppSessions)
  {
    return self->_interruptedAppSessions / totalAppSessions;
  }

  else
  {
    return 0.0;
  }
}

- (id)coreAnalyticsDictionary
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"totalAppSessions";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXInterruptedAppSessionSummaryMetrics totalAppSessions](self, "totalAppSessions")}];
  v11[0] = v3;
  v10[1] = @"interruptedAppSessions";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXInterruptedAppSessionSummaryMetrics interruptedAppSessions](self, "interruptedAppSessions")}];
  v11[1] = v4;
  v10[2] = @"pctInterruptedAppSessions";
  v5 = MEMORY[0x277CCABB0];
  [(ATXInterruptedAppSessionSummaryMetrics *)self percentageInterruptedAppSessions];
  v6 = [v5 numberWithDouble:?];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end