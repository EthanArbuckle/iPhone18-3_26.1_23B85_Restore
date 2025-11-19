@interface ASDaemonWakeCoordinator
- (ASDaemonWakeCoordinator)initWithProfile:(id)a3;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)currentActivitySummaryHelper:(id)a3 didUpdateTodayActivitySummary:(id)a4 changedFields:(unint64_t)a5;
- (void)currentActivitySummaryHelper:(id)a3 didUpdateYesterdayActivitySummary:(id)a4 changedFields:(unint64_t)a5;
- (void)dealloc;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
@end

@implementation ASDaemonWakeCoordinator

- (ASDaemonWakeCoordinator)initWithProfile:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = ASDaemonWakeCoordinator;
  v5 = [(ASDaemonWakeCoordinator *)&v33 init];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = objc_alloc_init(ASXPCClient);
  xpcClient = v5->_xpcClient;
  v5->_xpcClient = v6;

  v8 = objc_alloc(MEMORY[0x277CEEA10]);
  v9 = *MEMORY[0x277CEE9F0];
  v10 = *MEMORY[0x277CE92C0];
  v11 = dispatch_get_global_queue(0, 0);
  v12 = [v8 initWithEnvironmentName:v9 namedDelegatePort:v10 queue:v11];
  apsConnection = v5->_apsConnection;
  v5->_apsConnection = v12;

  [(APSConnection *)v5->_apsConnection setDelegate:v5];
  v14 = v5->_apsConnection;
  ASLoggingInitialize();
  v15 = *MEMORY[0x277CE8FE8];
  v16 = os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = v5->_apsConnection;
      *buf = 134217984;
      v36 = v17;
      _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator created APS connection %p", buf, 0xCu);
    }

    v18 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.Fitness"];
    v34 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    [(APSConnection *)v5->_apsConnection _setEnabledTopics:v19];
  }

  else if (v16)
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator couldn't create APS push connection", buf, 2u);
  }

  v20 = [v4 daemon];
  v21 = [v20 behavior];
  if ([v21 isAppleWatch])
  {
  }

  else
  {
    v22 = [v4 daemon];
    v23 = [v22 behavior];
    v24 = [v23 isStandalonePhoneFitnessMode];

    if (!v24)
    {
      goto LABEL_12;
    }
  }

  v25 = [v4 currentActivitySummaryHelper];
  [v25 addObserver:v5];

LABEL_12:
  v26 = [v4 daemon];
  v27 = [v26 behavior];
  v28 = [v27 isAppleWatch];

  if (v28)
  {
    v29 = [v4 dataManager];
    v30 = [MEMORY[0x277CCD720] workoutType];
    [v29 addObserver:v5 forDataType:v30];
  }

LABEL_14:

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  [(ASXPCClient *)self->_xpcClient invalidate];
  [(APSConnection *)self->_apsConnection _setEnabledTopics:0];
  apsConnection = self->_apsConnection;
  self->_apsConnection = 0;

  v4 = [(HDProfile *)self->_profile daemon];
  v5 = [v4 behavior];
  if ([v5 isAppleWatch])
  {

LABEL_4:
    v9 = [(HDProfile *)self->_profile currentActivitySummaryHelper];
    [v9 removeObserver:self];

    v10 = [(HDProfile *)self->_profile dataManager];
    v11 = [MEMORY[0x277CCD720] workoutType];
    [v10 removeObserver:self forDataType:v11];

    goto LABEL_5;
  }

  v6 = [(HDProfile *)self->_profile daemon];
  v7 = [v6 behavior];
  v8 = [v7 isStandalonePhoneFitnessMode];

  if (v8)
  {
    goto LABEL_4;
  }

LABEL_5:
  v12.receiver = self;
  v12.super_class = ASDaemonWakeCoordinator;
  [(ASDaemonWakeCoordinator *)&v12 dealloc];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator received public token %@ on connection %p", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  ASLoggingInitialize();
  v13 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138413058;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator received per-topic push token %@ for topic %{public}@ identifier %@ on connection %p", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 userInfo];
  v7 = [MEMORY[0x277CBC4C0] notificationFromRemoteNotificationDictionary:v6];
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v5 topic];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator APS push received: %@ %@", &v12, 0x16u);
  }

  [(ASXPCClient *)self->_xpcClient launch];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)currentActivitySummaryHelper:(id)a3 didUpdateTodayActivitySummary:(id)a4 changedFields:(unint64_t)a5
{
  v6 = a4;
  ASLoggingInitialize();
  v7 = MEMORY[0x277CE8FE8];
  v8 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator today summary changed", buf, 2u);
  }

  v9 = [(HDProfile *)self->_profile daemon];
  v10 = [v9 behavior];
  if ([v10 isAppleWatch] && (lastTodayActivitySummary = self->_lastTodayActivitySummary) != 0 && !ASAllGoalsMetForSummary(lastTodayActivitySummary))
  {
    v13 = ASAllGoalsMetForSummary(v6);

    if (v13)
    {
      ASLoggingInitialize();
      v14 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator all goals completed for today", v15, 2u);
      }

      [(ASXPCClient *)self->_xpcClient launch];
    }
  }

  else
  {
  }

  v12 = self->_lastTodayActivitySummary;
  self->_lastTodayActivitySummary = v6;
}

- (void)currentActivitySummaryHelper:(id)a3 didUpdateYesterdayActivitySummary:(id)a4 changedFields:(unint64_t)a5
{
  v6 = a4;
  ASLoggingInitialize();
  v7 = MEMORY[0x277CE8FE8];
  v8 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator yesterday summary changed", buf, 2u);
  }

  v9 = [(HDProfile *)self->_profile daemon];
  v10 = [v9 behavior];
  if ([v10 isAppleWatch] && (lastYesterdayActivitySummary = self->_lastYesterdayActivitySummary) != 0 && !ASAllGoalsMetForSummary(lastYesterdayActivitySummary))
  {
    v13 = ASAllGoalsMetForSummary(v6);

    if (v13)
    {
      ASLoggingInitialize();
      v14 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator all goals completed for yesterday", v15, 2u);
      }

      [(ASXPCClient *)self->_xpcClient launch];
    }
  }

  else
  {
  }

  v12 = self->_lastYesterdayActivitySummary;
  self->_lastYesterdayActivitySummary = v6;

  notify_post([*MEMORY[0x277CE9188] UTF8String]);
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  if ([a3 hk_containsObjectPassingTest:{&__block_literal_global_6, a4}])
  {
    ASLoggingInitialize();
    v5 = *MEMORY[0x277CE8FE8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator received workout sample", v6, 2u);
    }

    [(ASXPCClient *)self->_xpcClient launch];
  }
}

uint64_t __47__ASDaemonWakeCoordinator_samplesAdded_anchor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sampleType];
  v3 = [MEMORY[0x277CCD720] workoutType];
  v4 = [v2 isEqual:v3];

  return v4;
}

@end