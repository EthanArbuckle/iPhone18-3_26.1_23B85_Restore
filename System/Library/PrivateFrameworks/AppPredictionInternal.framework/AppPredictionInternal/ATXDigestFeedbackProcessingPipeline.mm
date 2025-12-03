@interface ATXDigestFeedbackProcessingPipeline
- (ATXDigestFeedbackProcessingPipeline)init;
- (ATXDigestFeedbackProcessingPipeline)initWithBookmark:(id)bookmark path:(id)path trackedDigestStream:(id)stream;
- (ATXDigestFeedbackProcessingPipeline)initWithBookmark:(id)bookmark path:(id)path trackedDigestStream:(id)stream digestFeedbackLogger:(id)logger;
- (BOOL)_fileExistsAtPath:(id)path;
- (void)_readBookmarkFromPath;
- (void)_writeBookmarkToPath;
- (void)logFeedbackForDigest:(id)digest;
- (void)logMetricsForDigest:(id)digest;
- (void)logMetricsWithXPCActivity:(id)activity;
@end

@implementation ATXDigestFeedbackProcessingPipeline

- (ATXDigestFeedbackProcessingPipeline)init
{
  metricsRootDirectory = [MEMORY[0x277CEBCB0] metricsRootDirectory];
  v4 = [metricsRootDirectory stringByAppendingPathComponent:@"digestLoggingBookmark"];

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXDigestFeedbackProcessingPipeline *)self initWithBookmark:0 path:v4 trackedDigestStream:v5 digestFeedbackLogger:v6];

  return v7;
}

- (ATXDigestFeedbackProcessingPipeline)initWithBookmark:(id)bookmark path:(id)path trackedDigestStream:(id)stream
{
  streamCopy = stream;
  pathCopy = path;
  bookmarkCopy = bookmark;
  v11 = objc_opt_new();
  v12 = [(ATXDigestFeedbackProcessingPipeline *)self initWithBookmark:bookmarkCopy path:pathCopy trackedDigestStream:streamCopy digestFeedbackLogger:v11];

  return v12;
}

- (ATXDigestFeedbackProcessingPipeline)initWithBookmark:(id)bookmark path:(id)path trackedDigestStream:(id)stream digestFeedbackLogger:(id)logger
{
  bookmarkCopy = bookmark;
  pathCopy = path;
  streamCopy = stream;
  loggerCopy = logger;
  v18.receiver = self;
  v18.super_class = ATXDigestFeedbackProcessingPipeline;
  v15 = [(ATXDigestFeedbackProcessingPipeline *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bookmark, bookmark);
    objc_storeStrong(&v16->_path, path);
    objc_storeStrong(&v16->_trackedDigestStream, stream);
    if (!v16->_bookmark)
    {
      [(ATXDigestFeedbackProcessingPipeline *)v16 _readBookmarkFromPath];
    }

    objc_storeStrong(&v16->_feedbackLogger, logger);
  }

  return v16;
}

- (void)logMetricsWithXPCActivity:(id)activity
{
  activityCopy = activity;
  trackedDigestStream = self->_trackedDigestStream;
  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-172800.0];
  [v6 timeIntervalSinceReferenceDate];
  v7 = [(ATXEngagementTrackedDigestBiomeStream *)trackedDigestStream publisherFromStartTime:?];

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
  v15[2] = __65__ATXDigestFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke;
  v15[3] = &unk_278597760;
  v15[4] = self;
  v15[5] = v16;
  v15[6] = v17;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ATXDigestFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke_22;
  v11[3] = &unk_278597788;
  v11[4] = self;
  v13 = v16;
  v9 = activityCopy;
  v12 = v9;
  v14 = v17;
  v10 = [v7 drivableSinkWithBookmark:bookmark completion:v15 shouldContinue:v11];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
}

void __65__ATXDigestFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke(uint64_t a1, void *a2, void *a3)
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
      v15 = "[%@] Stopping digest metrics due to XPC deferral.  Logged %lu digests.";
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
      v15 = "[%@] Finished logging digest metrics.  Logged %lu digests.";
    }

    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, v15, &v23, 0x16u);

    goto LABEL_10;
  }

  v8 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __65__ATXDigestFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke_cold_1(a1, v5, v8);
  }

LABEL_10:

  v19 = *(a1 + 32);
  v20 = *(v19 + 8);
  *(v19 + 8) = v6;
  v21 = v6;

  [*(a1 + 32) _writeBookmarkToPath];
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __65__ATXDigestFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 logFeedbackForDigest:v4];
  [*(a1 + 32) logMetricsForDigest:v4];

  ++*(*(*(a1 + 48) + 8) + 24);
  v5 = [*(a1 + 40) didDefer];
  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return v5 ^ 1u;
}

- (void)logFeedbackForDigest:(id)digest
{
  v20 = *MEMORY[0x277D85DE8];
  digestCopy = digest;
  v5 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    uuid = [digestCopy uuid];
    uUIDString = [uuid UUIDString];
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = uUIDString;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "[%@] Logging feedback for digest %@", &v16, 0x16u);
  }

  [(ATXNotificationDigestFeedbackLogger *)self->_feedbackLogger logFeedbackForAnnotatedDigest:digestCopy];
  v10 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    uuid2 = [digestCopy uuid];
    uUIDString2 = [uuid2 UUIDString];
    v16 = 138412546;
    v17 = v12;
    v18 = 2112;
    v19 = uUIDString2;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "[%@] Finished logging feedback for digest %@", &v16, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)logMetricsForDigest:(id)digest
{
  v29 = *MEMORY[0x277D85DE8];
  digestCopy = digest;
  v4 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    uuid = [digestCopy uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138412546;
    v26 = v6;
    v27 = 2112;
    v28 = uUIDString;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "[%@] Logging metrics for digest %@", buf, 0x16u);
  }

  v9 = objc_opt_new();
  [v9 populateMetricsFromDigest:digestCopy];
  [v9 logToCoreAnalytics];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  viewFlattenedGroups = [digestCopy viewFlattenedGroups];
  v11 = [viewFlattenedGroups countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(viewFlattenedGroups);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        digestEngagementTrackingMetrics = [v15 digestEngagementTrackingMetrics];

        if (digestEngagementTrackingMetrics)
        {
          v17 = objc_opt_new();
          uuid2 = [digestCopy uuid];
          [v17 populateMetricsFromDigestGroup:v15 digestUUID:uuid2];

          [v17 logToCoreAnalytics];
        }
      }

      v12 = [viewFlattenedGroups countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_readBookmarkFromPath
{
  v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:self->_path];
  v3 = [MEMORY[0x277CEBBF8] bookmarkFromURLPath:v6 maxFileSize:2000000 versionNumber:&unk_283A55298];
  bookmark = [v3 bookmark];
  bookmark = self->_bookmark;
  self->_bookmark = bookmark;
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
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ – Error writing notification digest metrics bookmark: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_fileExistsAtPath:(id)path
{
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  return v6;
}

void __65__ATXDigestFeedbackProcessingPipeline_logMetricsWithXPCActivity___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
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
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "[%@] Error while sinking Biome stream: %@.  Logged %lu digests.", &v12, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

@end