@interface ATXDigestOnboardingAppSelectionMetricsLogger
- (ATXDigestOnboardingAppSelectionMetricsLogger)init;
- (ATXDigestOnboardingAppSelectionMetricsLogger)initWithDigestOnboardingAppSelectionLoggingBiomeStream:(id)a3;
- (id)digestOnboardingAppSelectionBookmark;
- (void)logDigestOnboardingAppSelectionMetricsWithXPCActivity:(id)a3;
- (void)writeBookmarkToFile:(id)a3;
@end

@implementation ATXDigestOnboardingAppSelectionMetricsLogger

- (ATXDigestOnboardingAppSelectionMetricsLogger)init
{
  v3 = objc_opt_new();
  v4 = [(ATXDigestOnboardingAppSelectionMetricsLogger *)self initWithDigestOnboardingAppSelectionLoggingBiomeStream:v3];

  return v4;
}

- (ATXDigestOnboardingAppSelectionMetricsLogger)initWithDigestOnboardingAppSelectionLoggingBiomeStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXDigestOnboardingAppSelectionMetricsLogger;
  v6 = [(ATXDigestOnboardingAppSelectionMetricsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_digestOnboardingAppSelectionLoggingBiomeStream, a3);
  }

  return v7;
}

- (id)digestOnboardingAppSelectionBookmark
{
  v2 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = [MEMORY[0x277CEBCB0] bookmarksPathFile:@"digestOnboardingAppSelectionBookmark"];
  v4 = [v2 initFileURLWithPath:v3];

  v5 = [MEMORY[0x277CEBBF8] bookmarkFromURLPath:v4 maxFileSize:1000000 versionNumber:&unk_283A553A0];
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CEBBF8]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
    v5 = [v6 initWithURLPath:v4 versionNumber:v7 bookmark:0 metadata:0];
  }

  return v5;
}

- (void)logDigestOnboardingAppSelectionMetricsWithXPCActivity:(id)a3
{
  v4 = a3;
  v5 = [(ATXDigestOnboardingAppSelectionMetricsLogger *)self digestOnboardingAppSelectionBookmark];
  digestOnboardingAppSelectionLoggingBiomeStream = self->_digestOnboardingAppSelectionLoggingBiomeStream;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = [(ATXDigestOnboardingAppSelectionLoggingBiomeStream *)digestOnboardingAppSelectionLoggingBiomeStream publisherFromStartTime:v7 + -1209600.0];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v9 = [v5 bookmark];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__ATXDigestOnboardingAppSelectionMetricsLogger_logDigestOnboardingAppSelectionMetricsWithXPCActivity___block_invoke;
  v16[3] = &unk_278598378;
  v18 = v19;
  v16[4] = self;
  v10 = v5;
  v17 = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__ATXDigestOnboardingAppSelectionMetricsLogger_logDigestOnboardingAppSelectionMetricsWithXPCActivity___block_invoke_26;
  v13[3] = &unk_2785983A0;
  v11 = v4;
  v14 = v11;
  v15 = v19;
  v12 = [v8 drivableSinkWithBookmark:v9 completion:v16 shouldContinue:v13];

  _Block_object_dispose(v19, 8);
}

void __102__ATXDigestOnboardingAppSelectionMetricsLogger_logDigestOnboardingAppSelectionMetricsWithXPCActivity___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t __102__ATXDigestOnboardingAppSelectionMetricsLogger_logDigestOnboardingAppSelectionMetricsWithXPCActivity___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = objc_opt_new();
  v5 = [v3 sessionUUID];
  v6 = [v5 UUIDString];
  [v4 setSessionUUID:v6];

  v7 = [v3 bundleId];
  [v4 setBundleId:v7];

  [v4 setAvgNumBasicNotifications:{objc_msgSend(v3, "avgNumBasicNotifications")}];
  [v4 setAvgNumMessageNotfications:{objc_msgSend(v3, "avgNumMessageNotfications")}];
  [v4 setAvgNumTimeSensitiveNonMessageNotifications:{objc_msgSend(v3, "avgNumTimeSensitiveNonMessageNotifications")}];
  [v4 setRank:{objc_msgSend(v3, "rank")}];
  [v4 setAddedToDigest:{objc_msgSend(v3, "addedToDigest")}];
  [v4 setWasShownInDigestOnboarding:{objc_msgSend(v3, "wasShownInDigestOnboarding")}];
  [v4 logToCoreAnalytics];
  v8 = [*(a1 + 32) didDefer];
  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v8 ^ 1u;
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

- (void)writeBookmarkToFile:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - Unable to save bookmark due to : %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end