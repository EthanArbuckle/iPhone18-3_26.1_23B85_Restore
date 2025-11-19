@interface ATXChinSuggestionThrottlingManager
- (ATXChinSuggestionThrottlingManager)init;
- (double)timestampWallClockTimeCreditsLastReplenished;
- (double)wallClockTimeCredits;
- (void)_acceptOrRejectPendingRequestIfExists;
- (void)_acceptPendingRequest;
- (void)_rejectPendingRequest;
- (void)logAcceptedEventToCoreAnalytics;
- (void)logReceivedEventToCoreAnalytics;
- (void)logRejectedEventToCoreAnalytics;
- (void)logWallClockTimeToCoreAnalytics:(double)a3;
- (void)replenishWallClockTimeCredits;
- (void)scheduleRequest:(id)a3;
@end

@implementation ATXChinSuggestionThrottlingManager

- (ATXChinSuggestionThrottlingManager)init
{
  v27 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = ATXChinSuggestionThrottlingManager;
  v2 = [(ATXChinSuggestionThrottlingManager *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEBD0]);
    v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
    defaults = v2->_defaults;
    v2->_defaults = v4;

    v6 = objc_alloc_init(MEMORY[0x277CEB718]);
    [v6 doubleForKey:@"ATXChinSuggestionThrottlingManager.maxWallClockTimeCredits" defaultReturnValue:5.0];
    v2->_maxWallClockTimeCredits = v7;
    [v6 doubleForKey:@"ATXChinSuggestionThrottlingManager.wallClockTimeCreditsReplenishingRate" defaultReturnValue:0.005];
    v2->_wallClockTimeCreditsReplenishingRate = v8;
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      maxWallClockTimeCredits = v2->_maxWallClockTimeCredits;
      wallClockTimeCreditsReplenishingRate = v2->_wallClockTimeCreditsReplenishingRate;
      *buf = 136315650;
      v22 = "[ATXChinSuggestionThrottlingManager init]";
      v23 = 2048;
      v24 = maxWallClockTimeCredits;
      v25 = 2048;
      v26 = wallClockTimeCreditsReplenishingRate;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: Starting up throttling manager with maxWallClockTimeCredits: %fs wallClockTimeCreditsReplenishingRate: %fs per second", buf, 0x20u);
    }

    v2->_requestProcessingQueueInUse = 0;
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("ATXChinSuggestionThrottlingManager.requestManagementQueue", v12);
    requestManagementQueue = v2->_requestManagementQueue;
    v2->_requestManagementQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("ATXChinSuggestionThrottlingManager.requestProcessingQueue", v15);
    requestProcessingQueue = v2->_requestProcessingQueue;
    v2->_requestProcessingQueue = v16;

    v2->_debuggingRequestSequenceNumber = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)scheduleRequest:(id)a3
{
  v4 = a3;
  requestManagementQueue = self->_requestManagementQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ATXChinSuggestionThrottlingManager_scheduleRequest___block_invoke;
  v7[3] = &unk_278596C10;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(requestManagementQueue, v7);
}

uint64_t __54__ATXChinSuggestionThrottlingManager_scheduleRequest___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 40) + 64);
  [*(a1 + 32) setDebugIdentifier:?];
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[ATXChinSuggestionThrottlingManager scheduleRequest:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Received %@", &v7, 0x16u);
  }

  [*(a1 + 40) logReceivedEventToCoreAnalytics];
  v4 = *(a1 + 40);
  if (v4[4])
  {
    [v4 _rejectPendingRequest];
    v4 = *(a1 + 40);
  }

  objc_storeStrong(v4 + 4, *(a1 + 32));
  result = [*(a1 + 40) _acceptOrRejectPendingRequestIfExists];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_acceptOrRejectPendingRequestIfExists
{
  requestManagementQueue = self->_requestManagementQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ATXChinSuggestionThrottlingManager__acceptOrRejectPendingRequestIfExists__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(requestManagementQueue, block);
}

void __75__ATXChinSuggestionThrottlingManager__acceptOrRejectPendingRequestIfExists__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(v2 + 32))
  {
    v3 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[ATXChinSuggestionThrottlingManager _acceptOrRejectPendingRequestIfExists]_block_invoke";
      v4 = "%s: No pending request to schedule. Returning.";
      goto LABEL_7;
    }

LABEL_8:

LABEL_9:
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(v2 + 24) == 1)
  {
    v3 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[ATXChinSuggestionThrottlingManager _acceptOrRejectPendingRequestIfExists]_block_invoke";
      v4 = "%s: A request is currently processing. Returning";
LABEL_7:
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, v4, &v11, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v2 replenishWallClockTimeCredits];
  [*(a1 + 32) wallClockTimeCredits];
  if (v6 <= 0.0)
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) wallClockTimeCredits];
      v11 = 136315394;
      v12 = "[ATXChinSuggestionThrottlingManager _acceptOrRejectPendingRequestIfExists]_block_invoke";
      v13 = 2048;
      v14 = v10;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: Not enough wallClockTimeCredits to process the request. Rejecting. wallClockTimeCredits: %fs", &v11, 0x16u);
    }

    [*(a1 + 32) _rejectPendingRequest];
    goto LABEL_9;
  }

  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 _acceptPendingRequest];
}

- (void)_acceptPendingRequest
{
  v3 = self->_pendingRequest;
  pendingRequest = self->_pendingRequest;
  self->_pendingRequest = 0;

  self->_requestProcessingQueueInUse = 1;
  requestProcessingQueue = self->_requestProcessingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ATXChinSuggestionThrottlingManager__acceptPendingRequest__block_invoke;
  v7[3] = &unk_278596C10;
  v8 = v3;
  v9 = self;
  v6 = v3;
  dispatch_async(requestProcessingQueue, v7);
}

void __59__ATXChinSuggestionThrottlingManager__acceptPendingRequest__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v16 = "[ATXChinSuggestionThrottlingManager _acceptPendingRequest]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Running %@", buf, 0x16u);
  }

  [*(a1 + 40) logAcceptedEventToCoreAnalytics];
  [*(a1 + 40) now];
  v5 = v4;
  v6 = [*(a1 + 32) acceptedBlock];
  v6[2]();

  [*(a1 + 40) now];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(v8 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ATXChinSuggestionThrottlingManager__acceptPendingRequest__block_invoke_76;
  block[3] = &unk_278599E28;
  block[4] = v8;
  v14 = v10 - v5;
  v13 = v7;
  dispatch_async(v9, block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __59__ATXChinSuggestionThrottlingManager__acceptPendingRequest__block_invoke_76(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  [v2 wallClockTimeCredits];
  [v2 setWallClockTimeCredits:v3 - *(a1 + 48)];
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    [*(a1 + 32) wallClockTimeCredits];
    v10 = 136315906;
    v11 = "[ATXChinSuggestionThrottlingManager _acceptPendingRequest]_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 2048;
    v15 = v5;
    v16 = 2048;
    v17 = v7;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: Finished %@ in %fs. Remaining wallClockTimeCredits: %fs", &v10, 0x2Au);
  }

  [*(a1 + 32) logWallClockTimeToCoreAnalytics:*(a1 + 48)];
  *(*(a1 + 32) + 24) = 0;
  result = [*(a1 + 32) _acceptOrRejectPendingRequestIfExists];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_rejectPendingRequest
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pendingRequest = self->_pendingRequest;
    v8 = 136315394;
    v9 = "[ATXChinSuggestionThrottlingManager _rejectPendingRequest]";
    v10 = 2112;
    v11 = pendingRequest;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@", &v8, 0x16u);
  }

  [(ATXChinSuggestionThrottlingManager *)self logRejectedEventToCoreAnalytics];
  v5 = [(ATXChinSuggestionRequest *)self->_pendingRequest rejectedBlock];
  v5[2]();

  v6 = self->_pendingRequest;
  self->_pendingRequest = 0;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logReceivedEventToCoreAnalytics
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"received";
  v5[0] = &unk_283A57038;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  AnalyticsSendEvent();

  v3 = *MEMORY[0x277D85DE8];
}

- (void)logAcceptedEventToCoreAnalytics
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"accepted";
  v5[0] = &unk_283A57038;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  AnalyticsSendEvent();

  v3 = *MEMORY[0x277D85DE8];
}

- (void)logRejectedEventToCoreAnalytics
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"rejected";
  v5[0] = &unk_283A57038;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  AnalyticsSendEvent();

  v3 = *MEMORY[0x277D85DE8];
}

- (void)logWallClockTimeToCoreAnalytics:(double)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"wallClockTime";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  AnalyticsSendEvent();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)replenishWallClockTimeCredits
{
  maxWallClockTimeCredits = self->_maxWallClockTimeCredits;
  [(ATXChinSuggestionThrottlingManager *)self wallClockTimeCredits];
  v5 = v4;
  [(ATXChinSuggestionThrottlingManager *)self now];
  v7 = v6;
  [(ATXChinSuggestionThrottlingManager *)self timestampWallClockTimeCreditsLastReplenished];
  [(ATXChinSuggestionThrottlingManager *)self setWallClockTimeCredits:fmin(maxWallClockTimeCredits, v5 + (v7 - v8) * self->_wallClockTimeCreditsReplenishingRate)];
  [(ATXChinSuggestionThrottlingManager *)self now];

  [(ATXChinSuggestionThrottlingManager *)self setTimestampWallClockTimeCreditsLastReplenished:?];
}

- (double)wallClockTimeCredits
{
  v2 = [(NSUserDefaults *)self->_defaults objectForKey:@"ATXChinSuggestionThrottlingManager.wallClockTimeCredits"];
  objc_opt_class();
  v3 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v2 doubleValue];
    v3 = v4;
  }

  return v3;
}

- (double)timestampWallClockTimeCreditsLastReplenished
{
  v2 = [(NSUserDefaults *)self->_defaults objectForKey:@"ATXChinSuggestionThrottlingManager.timestampWallClockTimeCreditsLastReplenished"];
  objc_opt_class();
  v3 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v2 doubleValue];
    v3 = v4;
  }

  return v3;
}

@end