@interface ATXInterruptingNotificationsAccumulator
- (ATXInterruptingNotificationsAccumulator)init;
- (ATXInterruptingNotificationsAccumulator)initWithNotificationPublisher:(id)publisher appLaunchPublisher:(id)launchPublisher;
- (BOOL)successfullyAccumulatedInterruptingSessions;
- (void)successfullyAccumulatedInterruptingSessions;
@end

@implementation ATXInterruptingNotificationsAccumulator

- (ATXInterruptingNotificationsAccumulator)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = BiomeLibrary();
  notification = [v4 Notification];
  usage = [notification Usage];

  v7 = BiomeLibrary();
  v8 = [v7 App];
  inFocus = [v8 InFocus];

  v10 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v3 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v11 = *MEMORY[0x277CEBB48];
  v12 = [usage publisherWithUseCase:*MEMORY[0x277CEBB48] options:v10];
  v13 = [inFocus publisherWithUseCase:v11 options:v10];
  v14 = [(ATXInterruptingNotificationsAccumulator *)self initWithNotificationPublisher:v12 appLaunchPublisher:v13];

  return v14;
}

- (ATXInterruptingNotificationsAccumulator)initWithNotificationPublisher:(id)publisher appLaunchPublisher:(id)launchPublisher
{
  publisherCopy = publisher;
  launchPublisherCopy = launchPublisher;
  v13.receiver = self;
  v13.super_class = ATXInterruptingNotificationsAccumulator;
  v9 = [(ATXInterruptingNotificationsAccumulator *)&v13 init];
  if (v9)
  {
    v10 = objc_opt_new();
    interruptingNotifications = v9->_interruptingNotifications;
    v9->_interruptingNotifications = v10;

    objc_storeStrong(&v9->_notificationPublisher, publisher);
    objc_storeStrong(&v9->_appLaunchPublisher, launchPublisher);
  }

  return v9;
}

- (BOOL)successfullyAccumulatedInterruptingSessions
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v4 allInstalledAppsKnownToSpringBoard];
  v6 = [v3 initWithArray:allInstalledAppsKnownToSpringBoard];

  v7 = [(BPSPublisher *)self->_notificationPublisher orderedMergeWithOther:self->_appLaunchPublisher comparator:&__block_literal_global_182];
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = __Block_byref_object_copy__81;
  v21[3] = __Block_byref_object_dispose__81;
  v22 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__ATXInterruptingNotificationsAccumulator_successfullyAccumulatedInterruptingSessions__block_invoke_16;
  v19[3] = &unk_278597540;
  v19[4] = &v20;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__ATXInterruptingNotificationsAccumulator_successfullyAccumulatedInterruptingSessions__block_invoke_2;
  v16[3] = &unk_2785988C8;
  v8 = v6;
  v17 = v8;
  selfCopy = self;
  v9 = [v7 sinkWithCompletion:v19 receiveInput:v16];
  v10 = *(v21[0] + 40);
  if (v10)
  {
    p_super = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [(ATXInterruptingNotificationsAccumulator *)v21 successfullyAccumulatedInterruptingSessions];
    }
  }

  else
  {
    v12 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "[ATXInterruptingNotificationsAccumulator successfullyAccumulatedInterruptingSessions]";
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "%s: Successfully accumulated interrupting app session events", buf, 0xCu);
    }

    interruptingAppsessions = [(ATXInterruptingNotificationsHelper *)self->_interruptingNotifications interruptingAppsessions];
    p_super = &self->_allInterruptingAppSessions->super;
    self->_allInterruptingAppSessions = interruptingAppsessions;
  }

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v10 == 0;
}

uint64_t __86__ATXInterruptingNotificationsAccumulator_successfullyAccumulatedInterruptingSessions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __86__ATXInterruptingNotificationsAccumulator_successfullyAccumulatedInterruptingSessions__block_invoke_16(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __86__ATXInterruptingNotificationsAccumulator_successfullyAccumulatedInterruptingSessions__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [v12 eventBody];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = *(a1 + 32);
    v8 = [v5 bundleID];
    LODWORD(v7) = [v7 containsObject:v8];

    if (v7 && [v6 usageType] == 17)
    {
      [*(*(a1 + 40) + 8) checkNotificationEvent:v6];
    }
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }

    v6 = [v12 eventBody];
    v10 = *(a1 + 32);
    v11 = [v6 bundleID];
    LODWORD(v10) = [v10 containsObject:v11];

    if (v10)
    {
      if ([v6 starting])
      {
        [*(*(a1 + 40) + 8) checkAppLaunchStartEvent:v6];
      }

      if (([v6 starting] & 1) == 0)
      {
        [*(*(a1 + 40) + 8) checkAppLaunchEndEvent:v6];
      }
    }
  }

LABEL_12:
}

- (void)successfullyAccumulatedInterruptingSessions
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v4 = 136315394;
  v5 = "[ATXInterruptingNotificationsAccumulator successfullyAccumulatedInterruptingSessions]";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error with reading merged notifications and app launch streams: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end