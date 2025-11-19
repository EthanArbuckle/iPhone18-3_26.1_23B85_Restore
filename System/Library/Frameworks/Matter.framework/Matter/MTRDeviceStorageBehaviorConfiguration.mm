@interface MTRDeviceStorageBehaviorConfiguration
+ (MTRDeviceStorageBehaviorConfiguration)configurationWithDefaultStorageBehavior;
+ (MTRDeviceStorageBehaviorConfiguration)configurationWithReportToPersistenceDelayTime:(double)a3 reportToPersistenceDelayTimeMax:(double)a4 recentReportTimesMaxCount:(unint64_t)a5 timeBetweenReportsTooShortThreshold:(double)a6 timeBetweenReportsTooShortMinThreshold:(double)a7 reportToPersistenceDelayMaxMultiplier:(double)a8 deviceReportingExcessivelyIntervalThreshold:(double)a9;
+ (MTRDeviceStorageBehaviorConfiguration)configurationWithStorageBehaviorOptimizationDisabled;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)checkValuesAndResetToDefaultIfNecessary;
@end

@implementation MTRDeviceStorageBehaviorConfiguration

+ (MTRDeviceStorageBehaviorConfiguration)configurationWithReportToPersistenceDelayTime:(double)a3 reportToPersistenceDelayTimeMax:(double)a4 recentReportTimesMaxCount:(unint64_t)a5 timeBetweenReportsTooShortThreshold:(double)a6 timeBetweenReportsTooShortMinThreshold:(double)a7 reportToPersistenceDelayMaxMultiplier:(double)a8 deviceReportingExcessivelyIntervalThreshold:(double)a9
{
  v16 = objc_alloc_init(MTRDeviceStorageBehaviorConfiguration);
  [(MTRDeviceStorageBehaviorConfiguration *)v16 setReportToPersistenceDelayTime:a3];
  [(MTRDeviceStorageBehaviorConfiguration *)v16 setReportToPersistenceDelayTimeMax:a4];
  [(MTRDeviceStorageBehaviorConfiguration *)v16 setRecentReportTimesMaxCount:a5];
  [(MTRDeviceStorageBehaviorConfiguration *)v16 setTimeBetweenReportsTooShortThreshold:a6];
  [(MTRDeviceStorageBehaviorConfiguration *)v16 setTimeBetweenReportsTooShortMinThreshold:a7];
  [(MTRDeviceStorageBehaviorConfiguration *)v16 setReportToPersistenceDelayMaxMultiplier:a8];
  [(MTRDeviceStorageBehaviorConfiguration *)v16 setDeviceReportingExcessivelyIntervalThreshold:a9];

  return v16;
}

+ (MTRDeviceStorageBehaviorConfiguration)configurationWithDefaultStorageBehavior
{
  v2 = objc_alloc_init(MTRDeviceStorageBehaviorConfiguration);
  [(MTRDeviceStorageBehaviorConfiguration *)v2 checkValuesAndResetToDefaultIfNecessary];

  return v2;
}

+ (MTRDeviceStorageBehaviorConfiguration)configurationWithStorageBehaviorOptimizationDisabled
{
  v2 = objc_alloc_init(MTRDeviceStorageBehaviorConfiguration);
  [(MTRDeviceStorageBehaviorConfiguration *)v2 setDisableStorageBehaviorOptimization:1];

  return v2;
}

- (id)description
{
  if (self->_disableStorageBehaviorOptimization)
  {
    v2 = "YES";
  }

  else
  {
    v2 = "NO";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<MTRDeviceStorageBehaviorConfiguration(%p): disabled %s reportToPersistenceDelayTime %lf reportToPersistenceDelayTimeMax %lf recentReportTimesMaxCount %lu timeBetweenReportsTooShortThreshold %lf timeBetweenReportsTooShortMinThreshold %lf reportToPersistenceDelayMaxMultiplier %lf deviceReportingExcessivelyIntervalThreshold %lf", self, v2, *&self->_reportToPersistenceDelayTime, *&self->_reportToPersistenceDelayTimeMax, self->_recentReportTimesMaxCount, *&self->_timeBetweenReportsTooShortThreshold, *&self->_timeBetweenReportsTooShortMinThreshold, *&self->_reportToPersistenceDelayMaxMultiplier, *&self->_deviceReportingExcessivelyIntervalThreshold];
}

- (void)checkValuesAndResetToDefaultIfNecessary
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_disableStorageBehaviorOptimization)
  {
    reportToPersistenceDelayTime = self->_reportToPersistenceDelayTime;
    if (reportToPersistenceDelayTime <= 0.0 || ((reportToPersistenceDelayTimeMax = self->_reportToPersistenceDelayTimeMax, reportToPersistenceDelayTimeMax > 0.0) ? (v5 = reportToPersistenceDelayTimeMax < reportToPersistenceDelayTime) : (v5 = 1), v5 || self->_recentReportTimesMaxCount < 2 || (timeBetweenReportsTooShortThreshold = self->_timeBetweenReportsTooShortThreshold, timeBetweenReportsTooShortThreshold <= 0.0) || ((timeBetweenReportsTooShortMinThreshold = self->_timeBetweenReportsTooShortMinThreshold, timeBetweenReportsTooShortMinThreshold > 0.0) ? (v8 = timeBetweenReportsTooShortMinThreshold <= timeBetweenReportsTooShortThreshold) : (v8 = 0), !v8 || self->_reportToPersistenceDelayMaxMultiplier <= 1.0 || self->_deviceReportingExcessivelyIntervalThreshold <= 0.0)))
    {
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = self;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ storage behavior: MTRDeviceStorageBehaviorConfiguration values out of bounds - resetting to default", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2);
      }

      *&self->_reportToPersistenceDelayTime = xmmword_2395C1440;
      self->_recentReportTimesMaxCount = 12;
      *&self->_timeBetweenReportsTooShortThreshold = xmmword_2395C1450;
      *&self->_reportToPersistenceDelayMaxMultiplier = xmmword_2395C1460;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDeviceStorageBehaviorConfiguration);
  [(MTRDeviceStorageBehaviorConfiguration *)v4 setDisableStorageBehaviorOptimization:self->_disableStorageBehaviorOptimization];
  [(MTRDeviceStorageBehaviorConfiguration *)v4 setReportToPersistenceDelayTime:self->_reportToPersistenceDelayTime];
  [(MTRDeviceStorageBehaviorConfiguration *)v4 setReportToPersistenceDelayTimeMax:self->_reportToPersistenceDelayTimeMax];
  [(MTRDeviceStorageBehaviorConfiguration *)v4 setRecentReportTimesMaxCount:self->_recentReportTimesMaxCount];
  [(MTRDeviceStorageBehaviorConfiguration *)v4 setTimeBetweenReportsTooShortThreshold:self->_timeBetweenReportsTooShortThreshold];
  [(MTRDeviceStorageBehaviorConfiguration *)v4 setTimeBetweenReportsTooShortMinThreshold:self->_timeBetweenReportsTooShortMinThreshold];
  [(MTRDeviceStorageBehaviorConfiguration *)v4 setReportToPersistenceDelayMaxMultiplier:self->_reportToPersistenceDelayMaxMultiplier];
  [(MTRDeviceStorageBehaviorConfiguration *)v4 setDeviceReportingExcessivelyIntervalThreshold:self->_deviceReportingExcessivelyIntervalThreshold];
  return v4;
}

@end