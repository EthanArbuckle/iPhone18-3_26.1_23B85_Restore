@interface ACHDMetricsReporter
+ (void)reportProcessingMetricsWithSourceType:(int64_t)type intervalProcessed:(id)processed processingDuration:(double)duration recordsProcessed:(unint64_t)recordsProcessed error:(id)error;
@end

@implementation ACHDMetricsReporter

+ (void)reportProcessingMetricsWithSourceType:(int64_t)type intervalProcessed:(id)processed processingDuration:(double)duration recordsProcessed:(unint64_t)recordsProcessed error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  processedCopy = processed;
  errorCopy = error;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    startDate = [processedCopy startDate];
    [startDate timeIntervalSinceReferenceDate];
    if (v16 == 410227200.0)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      [v17 setObject:v18 forKeyedSubscript:@"source"];

      [v17 setObject:&unk_283555A10 forKeyedSubscript:@"historicalPeriodType"];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
      [v17 setObject:v19 forKeyedSubscript:@"duration"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:recordsProcessed];
      [v17 setObject:v20 forKeyedSubscript:@"recordsProcessed"];

      if (errorCopy)
      {
        if ([errorCopy hk_isDatabaseAccessibilityError])
        {
          v21 = 0;
        }

        else
        {
          v21 = 100;
        }

        v22 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
        [v17 setObject:v22 forKeyedSubscript:@"errorType"];

        v23 = [errorCopy description];
        [v17 setObject:v23 forKeyedSubscript:@"errorString"];

        v24 = @"com.apple.ActivityAchievements.ActivityAchievements.HistoricalRunProcessingError";
      }

      else
      {
        v24 = @"com.apple.ActivityAchievements.HistoricalRunProcessingComplete";
      }

      v25 = ACHLogDefault();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412546;
        v29 = v24;
        v30 = 2048;
        typeCopy = type;
        _os_log_impl(&dword_221DDC000, v25, OS_LOG_TYPE_DEFAULT, "Logging historical processing metric event %@ for source %ld", &v28, 0x16u);
      }

      v26 = [v17 copy];
      FIActivityAnalyticsSubmissionWithPayload();
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end