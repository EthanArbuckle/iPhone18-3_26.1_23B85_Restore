@interface ATXDigestOnboardingMetricsLogger
- (ATXDigestOnboardingMetricsLogger)init;
- (ATXDigestOnboardingMetricsLogger)initWithDigestOnboardingLoggingBiomeStream:(id)a3;
- (double)minutesAfterMidnight:(id)a3;
- (id)digestOnboardingBookmark;
- (void)logDigestOnboardingMetricsWithXPCActivity:(id)a3;
- (void)writeBookmarkToFile:(id)a3;
@end

@implementation ATXDigestOnboardingMetricsLogger

- (ATXDigestOnboardingMetricsLogger)init
{
  v3 = objc_opt_new();
  v4 = [(ATXDigestOnboardingMetricsLogger *)self initWithDigestOnboardingLoggingBiomeStream:v3];

  return v4;
}

- (ATXDigestOnboardingMetricsLogger)initWithDigestOnboardingLoggingBiomeStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXDigestOnboardingMetricsLogger;
  v6 = [(ATXDigestOnboardingMetricsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_digestOnboardingLoggingBiomeStream, a3);
  }

  return v7;
}

- (id)digestOnboardingBookmark
{
  v2 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = [MEMORY[0x277CEBCB0] bookmarksPathFile:@"digestOnboardingBookmark"];
  v4 = [v2 initFileURLWithPath:v3];

  v5 = [MEMORY[0x277CEBBF8] bookmarkFromURLPath:v4 maxFileSize:1000000 versionNumber:&unk_283A56CD8];
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CEBBF8]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
    v5 = [v6 initWithURLPath:v4 versionNumber:v7 bookmark:0 metadata:0];
  }

  return v5;
}

- (void)logDigestOnboardingMetricsWithXPCActivity:(id)a3
{
  v4 = a3;
  v5 = [(ATXDigestOnboardingMetricsLogger *)self digestOnboardingBookmark];
  digestOnboardingLoggingBiomeStream = self->_digestOnboardingLoggingBiomeStream;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = [(ATXDigestOnboardingLoggingBiomeStream *)digestOnboardingLoggingBiomeStream publisherFromStartTime:v7 + -1209600.0];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v9 = [v5 bookmark];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__ATXDigestOnboardingMetricsLogger_logDigestOnboardingMetricsWithXPCActivity___block_invoke;
  v16[3] = &unk_278598378;
  v18 = v19;
  v16[4] = self;
  v10 = v5;
  v17 = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ATXDigestOnboardingMetricsLogger_logDigestOnboardingMetricsWithXPCActivity___block_invoke_26;
  v13[3] = &unk_278597C90;
  v13[4] = self;
  v11 = v4;
  v14 = v11;
  v15 = v19;
  v12 = [v8 drivableSinkWithBookmark:v9 completion:v16 shouldContinue:v13];

  _Block_object_dispose(v19, 8);
}

void __78__ATXDigestOnboardingMetricsLogger_logDigestOnboardingMetricsWithXPCActivity___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "%@ - XPC Activity deferred, terminating.", &v10, 0xCu);
    }
  }

  [*(a1 + 40) setBookmark:v4];
  [*(a1 + 32) writeBookmarkToFile:*(a1 + 40)];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __78__ATXDigestOnboardingMetricsLogger_logDigestOnboardingMetricsWithXPCActivity___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = objc_opt_new();
  v5 = [v3 sessionUUID];
  v6 = [v5 UUIDString];
  [v4 setSessionUUID:v6];

  [v3 entrySource];
  v7 = ATXDigestOnboardingEntrySourceToString();
  [v4 setEntrySource:v7];

  [v3 digestOnboardingOutcome];
  v8 = ATXDigestOnboardingOutcomeToString();
  [v4 setDigestOnboardingOutcome:v8];

  [v3 finalUIShown];
  v9 = ATXDigestOnboardingFinalUIShownToString();
  [v4 setFinalUIShown:v9];

  [v3 timeTaken];
  [v4 setTimeTaken:?];
  v10 = [v3 deliveryTimes];
  if (![v10 count])
  {
    v14 = -1;
    goto LABEL_5;
  }

  v11 = [v3 deliveryTimes];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (v12)
  {
    [*(a1 + 32) minutesAfterMidnight:v12];
    v14 = v13;
    v10 = v12;
LABEL_5:

    goto LABEL_7;
  }

  v14 = -1;
LABEL_7:
  [v4 setDeliveryTime1:v14];
  v15 = [v3 deliveryTimes];
  if ([v15 count] < 2)
  {
    v19 = -1;
    goto LABEL_11;
  }

  v16 = [v3 deliveryTimes];
  v17 = [v16 objectAtIndexedSubscript:1];

  if (v17)
  {
    [*(a1 + 32) minutesAfterMidnight:v17];
    v19 = v18;
    v15 = v17;
LABEL_11:

    goto LABEL_12;
  }

  v19 = -1;
LABEL_12:
  [v4 setDeliveryTime2:v19];
  v20 = [v3 deliveryTimes];
  if ([v20 count] < 3)
  {
    v24 = -1;
    goto LABEL_16;
  }

  v21 = [v3 deliveryTimes];
  v22 = [v21 objectAtIndexedSubscript:2];

  if (v22)
  {
    [*(a1 + 32) minutesAfterMidnight:v22];
    v24 = v23;
    v20 = v22;
LABEL_16:

    goto LABEL_17;
  }

  v24 = -1;
LABEL_17:
  [v4 setDeliveryTime3:v24];
  v25 = [v3 deliveryTimes];
  [v4 setNumScheduledDeliveries:{objc_msgSend(v25, "count")}];

  [v4 logToCoreAnalytics];
  v26 = [*(a1 + 40) didDefer];
  if (v26)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v26 ^ 1u;
}

- (void)writeBookmarkToFile:(id)a3
{
  v6 = 0;
  [a3 saveBookmarkWithError:&v6];
  v4 = v6;
  if (v4)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXDigestOnboardingAppSelectionMetricsLogger *)self writeBookmarkToFile:v4, v5];
    }
  }
}

- (double)minutesAfterMidnight:(id)a3
{
  v3 = a3;
  v4 = [v3 hour];
  v5 = [v3 minute];

  return (v5 + 60 * v4);
}

@end