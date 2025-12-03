@interface ATXDeviceUsageSummaryMetrics
- (ATXDeviceUsageSummaryMetrics)initWithDimensions:(id)dimensions;
- (double)averagePickupDuration;
- (id)coreAnalyticsDictionary;
- (void)handleConfigurationExit:(id)exit;
- (void)handleOnInterval:(id)interval;
@end

@implementation ATXDeviceUsageSummaryMetrics

- (ATXDeviceUsageSummaryMetrics)initWithDimensions:(id)dimensions
{
  v7.receiver = self;
  v7.super_class = ATXDeviceUsageSummaryMetrics;
  v3 = [(_ATXCoreAnalyticsMetric *)&v7 initWithDimensions:dimensions];
  v4 = v3;
  if (v3)
  {
    v3->_devicePickupCount = 0;
    v3->_totalDeviceOnTime = 0.0;
    v3->_totalTime = 0.0;
    lastEntryTime = v3->_lastEntryTime;
    v3->_lastEntryTime = 0;
  }

  return v4;
}

- (double)averagePickupDuration
{
  devicePickupCount = self->_devicePickupCount;
  if (devicePickupCount)
  {
    return self->_totalDeviceOnTime / devicePickupCount;
  }

  else
  {
    return 0.0;
  }
}

- (void)handleConfigurationExit:(id)exit
{
  lastEntryTime = self->_lastEntryTime;
  if (lastEntryTime)
  {
    [exit timeIntervalSinceDate:lastEntryTime];
    self->_totalTime = v5 + self->_totalTime;
    v6 = self->_lastEntryTime;
    self->_lastEntryTime = 0;
  }

  else
  {
    v7 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXDeviceUsageSummaryMetrics handleConfigurationExit:v7];
    }
  }
}

- (void)handleOnInterval:(id)interval
{
  ++self->_devicePickupCount;
  onInterval = [interval onInterval];
  [onInterval duration];
  self->_totalDeviceOnTime = v4 + self->_totalDeviceOnTime;
}

- (id)coreAnalyticsDictionary
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"devicePickupCount";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDeviceUsageSummaryMetrics devicePickupCount](self, "devicePickupCount")}];
  v14[0] = v3;
  v13[1] = @"averagePickupDuration";
  v4 = MEMORY[0x277CCABB0];
  [(ATXDeviceUsageSummaryMetrics *)self averagePickupDuration];
  v5 = [v4 numberWithDouble:?];
  v14[1] = v5;
  v13[2] = @"totalTime";
  v6 = MEMORY[0x277CCABB0];
  [(ATXDeviceUsageSummaryMetrics *)self totalTime];
  v7 = [v6 numberWithDouble:?];
  v14[2] = v7;
  v13[3] = @"totalDeviceOnTime";
  v8 = MEMORY[0x277CCABB0];
  [(ATXDeviceUsageSummaryMetrics *)self totalDeviceOnTime];
  v9 = [v8 numberWithDouble:?];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end