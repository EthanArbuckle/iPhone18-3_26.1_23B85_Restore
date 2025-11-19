@interface _ATXCoreAnalyticsMetric
- (_ATXCoreAnalyticsMetric)init;
- (_ATXCoreAnalyticsMetric)initWithDimensions:(id)a3;
- (id)coreAnalyticsDictionary;
- (id)coreAnalyticsDictionaryWithDimensions;
- (id)metricName;
- (void)coreAnalyticsDictionary;
- (void)logToCoreAnalytics;
- (void)metricName;
@end

@implementation _ATXCoreAnalyticsMetric

- (id)metricName
{
  v2 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [_ATXCoreAnalyticsMetric metricName];
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Attempted to call metricName on %@ without overriding in a subclass", v6}];

  return 0;
}

- (_ATXCoreAnalyticsMetric)init
{
  v3 = objc_opt_new();
  v4 = [(_ATXCoreAnalyticsMetric *)self initWithDimensions:v3];

  return v4;
}

- (_ATXCoreAnalyticsMetric)initWithDimensions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ATXCoreAnalyticsMetric;
  v6 = [(_ATXCoreAnalyticsMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dimensionSet, a3);
  }

  return v7;
}

- (id)coreAnalyticsDictionary
{
  v2 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [_ATXCoreAnalyticsMetric coreAnalyticsDictionary];
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"Attempted to call coreAnalyticsDictionary on %@ without overriding in a subclass", v6}];

  return MEMORY[0x277CBEC10];
}

- (id)coreAnalyticsDictionaryWithDimensions
{
  v3 = objc_opt_new();
  v4 = [(_ATXCoreAnalyticsDimensionSet *)self->_dimensionSet coreAnalyticsDictionary];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(_ATXCoreAnalyticsMetric *)self coreAnalyticsDictionary];
  [v3 addEntriesFromDictionary:v5];

  return v3;
}

- (void)logToCoreAnalytics
{
  v4 = [(_ATXCoreAnalyticsMetric *)self metricName];
  v3 = [(_ATXCoreAnalyticsMetric *)self coreAnalyticsDictionaryWithDimensions];
  AnalyticsSendEvent();
}

- (void)metricName
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Attempted to call metricName on %@ without overriding in a subclass", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)coreAnalyticsDictionary
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Attempted to call coreAnalyticsDictionary on %@ without overriding in a subclass", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end