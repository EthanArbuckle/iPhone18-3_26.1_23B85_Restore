@interface ACHDMetricsReporter
+ (void)reportProcessingMetricsWithSourceType:(int64_t)a3 intervalProcessed:(id)a4 processingDuration:(double)a5 recordsProcessed:(unint64_t)a6 error:(id)a7;
@end

@implementation ACHDMetricsReporter

+ (void)reportProcessingMetricsWithSourceType:(int64_t)a3 intervalProcessed:(id)a4 processingDuration:(double)a5 recordsProcessed:(unint64_t)a6 error:(id)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a7;
  v13 = [MEMORY[0x277CCDD30] sharedBehavior];
  v14 = [v13 isAppleWatch];

  if ((v14 & 1) == 0)
  {
    v15 = [v11 startDate];
    [v15 timeIntervalSinceReferenceDate];
    if (v16 == 410227200.0)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [v17 setObject:v18 forKeyedSubscript:@"source"];

      [v17 setObject:&unk_283555A10 forKeyedSubscript:@"historicalPeriodType"];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
      [v17 setObject:v19 forKeyedSubscript:@"duration"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
      [v17 setObject:v20 forKeyedSubscript:@"recordsProcessed"];

      if (v12)
      {
        if ([v12 hk_isDatabaseAccessibilityError])
        {
          v21 = 0;
        }

        else
        {
          v21 = 100;
        }

        v22 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
        [v17 setObject:v22 forKeyedSubscript:@"errorType"];

        v23 = [v12 description];
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
        v31 = a3;
        _os_log_impl(&dword_221DDC000, v25, OS_LOG_TYPE_DEFAULT, "Logging historical processing metric event %@ for source %ld", &v28, 0x16u);
      }

      v26 = [v17 copy];
      FIActivityAnalyticsSubmissionWithPayload();
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end