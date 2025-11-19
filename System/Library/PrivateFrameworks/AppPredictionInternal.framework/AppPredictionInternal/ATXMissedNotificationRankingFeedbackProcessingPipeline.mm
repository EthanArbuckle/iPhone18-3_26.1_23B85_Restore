@interface ATXMissedNotificationRankingFeedbackProcessingPipeline
- (ATXMissedNotificationRankingFeedbackProcessingPipeline)init;
- (ATXMissedNotificationRankingFeedbackProcessingPipeline)initWithBookmark:(id)a3 path:(id)a4 trackedMNRStream:(id)a5;
- (BOOL)_fileExistsAtPath:(id)a3;
- (void)_readBookmarkFromPath;
- (void)_writeBookmarkToPath;
- (void)logMetricsForRanking:(id)a3;
- (void)logMetricsWithXPCActivity:(id)a3;
@end

@implementation ATXMissedNotificationRankingFeedbackProcessingPipeline

- (ATXMissedNotificationRankingFeedbackProcessingPipeline)init
{
  v3 = [MEMORY[0x277CEBCB0] metricsRootDirectory];
  v4 = [v3 stringByAppendingPathComponent:@"mnrLoggingBookmark"];

  v5 = objc_opt_new();
  v6 = [(ATXMissedNotificationRankingFeedbackProcessingPipeline *)self initWithBookmark:0 path:v4 trackedMNRStream:v5];

  return v6;
}

- (ATXMissedNotificationRankingFeedbackProcessingPipeline)initWithBookmark:(id)a3 path:(id)a4 trackedMNRStream:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATXMissedNotificationRankingFeedbackProcessingPipeline;
  v12 = [(ATXMissedNotificationRankingFeedbackProcessingPipeline *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmark, a3);
    objc_storeStrong(&v13->_path, a4);
    objc_storeStrong(&v13->_trackedMNRStream, a5);
    if (!v13->_bookmark)
    {
      [(ATXMissedNotificationRankingFeedbackProcessingPipeline *)v13 _readBookmarkFromPath];
    }
  }

  return v13;
}

- (void)logMetricsWithXPCActivity:(id)a3
{
  v4 = a3;
  trackedMNRStream = self->_trackedMNRStream;
  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-172800.0];
  [v6 timeIntervalSinceReferenceDate];
  v7 = [(ATXEngagementTrackedMissedNotificationRankingBiomeStream *)trackedMNRStream publisherFromStartTime:?];

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  bookmark = self->_bookmark;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__ATXMissedNotificationRankingFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke;
  v15[3] = &unk_278597760;
  v15[4] = self;
  v15[5] = v16;
  v15[6] = v17;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__ATXMissedNotificationRankingFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke_21;
  v11[3] = &unk_27859C078;
  v11[4] = self;
  v13 = v16;
  v9 = v4;
  v12 = v9;
  v14 = v17;
  v10 = [v7 drivableSinkWithBookmark:bookmark completion:v15 shouldContinue:v11];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
}

void __84__ATXMissedNotificationRankingFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 error];

  if (!v7)
  {
    v9 = *(*(*(a1 + 48) + 8) + 24);
    v8 = __atxlog_handle_metrics();
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v9 == 1)
    {
      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = *(*(*(a1 + 40) + 8) + 24);
      v23 = 138412546;
      v24 = v13;
      v25 = 2048;
      v26 = v14;
      v15 = "[%@] Stopping missed notification ranking metrics due to XPC deferral.  Logged %lu rankings.";
    }

    else
    {
      if (!v10)
      {
        goto LABEL_10;
      }

      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      v13 = NSStringFromClass(v17);
      v18 = *(*(*(a1 + 40) + 8) + 24);
      v23 = 138412546;
      v24 = v13;
      v25 = 2048;
      v26 = v18;
      v15 = "[%@] Finished logging missed notification ranking metrics.  Logged %lu digests.";
    }

    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, v15, &v23, 0x16u);

    goto LABEL_10;
  }

  v8 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __84__ATXMissedNotificationRankingFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke_cold_1(a1, v5, v8);
  }

LABEL_10:

  v19 = *(a1 + 32);
  v20 = *(v19 + 8);
  *(v19 + 8) = v6;
  v21 = v6;

  [*(a1 + 32) _writeBookmarkToPath];
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __84__ATXMissedNotificationRankingFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke_21(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) logMetricsForRanking:a2];
  ++*(*(*(a1 + 48) + 8) + 24);
  v3 = [*(a1 + 40) didDefer];
  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return v3 ^ 1u;
}

- (void)logMetricsForRanking:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 uuid];
    v8 = [v7 UUIDString];
    *buf = 138412546;
    v26 = v6;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "[%@] Logging metrics for missed notification ranking %@", buf, 0x16u);
  }

  v9 = objc_opt_new();
  [v9 populateMetricsFromRanking:v3];
  [v9 logToCoreAnalytics];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v3 rankedGroups];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 digestEngagementTrackingMetrics];

        if (v16)
        {
          v17 = objc_opt_new();
          v18 = [v3 uuid];
          [v17 populateMetricsFromDigestGroup:v15 mnbUUID:v18];

          [v17 logToCoreAnalytics];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_readBookmarkFromPath
{
  v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:self->_path];
  v3 = [MEMORY[0x277CEBBF8] bookmarkFromURLPath:v6 maxFileSize:2000000 versionNumber:&unk_283A56018];
  v4 = [v3 bookmark];
  bookmark = self->_bookmark;
  self->_bookmark = v4;
}

- (void)_writeBookmarkToPath
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ – Error writing missed notification ranking metrics bookmark: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_fileExistsAtPath:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  return v6;
}

void __84__ATXMissedNotificationRankingFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [a2 error];
  v10 = *(*(*(a1 + 40) + 8) + 24);
  v12 = 138412802;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  v16 = 2048;
  v17 = v10;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "[%@] Error while sinking Biome stream: %@.  Logged %lu rankings.", &v12, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

@end