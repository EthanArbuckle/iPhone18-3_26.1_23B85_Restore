@interface ATXDeviceUsageAccumulator
- (ATXDeviceUsageAccumulator)init;
- (id)_getSummaryMetricForDimensions:(id)a3;
- (void)handleEndOfStream:(id)a3;
- (void)handleModeDimensionSetChange:(id)a3 changeTime:(id)a4;
- (void)handleNextOnInterval:(id)a3 dimensionSet:(id)a4;
- (void)logToCoreAnalytics;
@end

@implementation ATXDeviceUsageAccumulator

- (ATXDeviceUsageAccumulator)init
{
  v7.receiver = self;
  v7.super_class = ATXDeviceUsageAccumulator;
  v2 = [(ATXDeviceUsageAccumulator *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    summaryMetrics = v2->_summaryMetrics;
    v2->_summaryMetrics = v3;

    lastDimensionSet = v2->_lastDimensionSet;
    v2->_lastDimensionSet = 0;
  }

  return v2;
}

- (void)handleEndOfStream:(id)a3
{
  lastDimensionSet = self->_lastDimensionSet;
  if (lastDimensionSet)
  {
    v5 = a3;
    v6 = [(ATXDeviceUsageAccumulator *)self _getSummaryMetricForDimensions:lastDimensionSet];
    [v6 handleConfigurationExit:v5];
  }
}

- (void)handleModeDimensionSetChange:(id)a3 changeTime:(id)a4
{
  v6 = a3;
  v10 = a4;
  if (self->_lastDimensionSet)
  {
    v7 = [(ATXDeviceUsageAccumulator *)self _getSummaryMetricForDimensions:?];
    [v7 handleConfigurationExit:v10];
  }

  v8 = [(ATXDeviceUsageAccumulator *)self _getSummaryMetricForDimensions:v6];
  [v8 handleConfigurationEntry:v10];
  lastDimensionSet = self->_lastDimensionSet;
  self->_lastDimensionSet = v6;
}

- (void)handleNextOnInterval:(id)a3 dimensionSet:(id)a4
{
  v6 = a3;
  v7 = [(ATXDeviceUsageAccumulator *)self _getSummaryMetricForDimensions:a4];
  [v7 handleOnInterval:v6];
}

- (id)_getSummaryMetricForDimensions:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_summaryMetrics objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = [[ATXDeviceUsageSummaryMetrics alloc] initWithDimensions:v4];
    [(NSMutableDictionary *)self->_summaryMetrics setObject:v6 forKeyedSubscript:v4];
  }

  v7 = [(NSMutableDictionary *)self->_summaryMetrics objectForKeyedSubscript:v4];

  return v7;
}

- (void)logToCoreAnalytics
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_summaryMetrics;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_summaryMetrics objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7), v10];
        [v8 logToCoreAnalytics];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end