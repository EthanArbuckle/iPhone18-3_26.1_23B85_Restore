@interface ASDaemonWakeCoordinator
- (ASDaemonWakeCoordinator)initWithProfile:(id)profile;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields;
- (void)currentActivitySummaryHelper:(id)helper didUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields;
- (void)dealloc;
- (void)samplesAdded:(id)added anchor:(id)anchor;
@end

@implementation ASDaemonWakeCoordinator

- (ASDaemonWakeCoordinator)initWithProfile:(id)profile
{
  v37 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
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

  daemon = [profileCopy daemon];
  behavior = [daemon behavior];
  if ([behavior isAppleWatch])
  {
  }

  else
  {
    daemon2 = [profileCopy daemon];
    behavior2 = [daemon2 behavior];
    isStandalonePhoneFitnessMode = [behavior2 isStandalonePhoneFitnessMode];

    if (!isStandalonePhoneFitnessMode)
    {
      goto LABEL_12;
    }
  }

  currentActivitySummaryHelper = [profileCopy currentActivitySummaryHelper];
  [currentActivitySummaryHelper addObserver:v5];

LABEL_12:
  daemon3 = [profileCopy daemon];
  behavior3 = [daemon3 behavior];
  isAppleWatch = [behavior3 isAppleWatch];

  if (isAppleWatch)
  {
    dataManager = [profileCopy dataManager];
    workoutType = [MEMORY[0x277CCD720] workoutType];
    [dataManager addObserver:v5 forDataType:workoutType];
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

  daemon = [(HDProfile *)self->_profile daemon];
  behavior = [daemon behavior];
  if ([behavior isAppleWatch])
  {

LABEL_4:
    currentActivitySummaryHelper = [(HDProfile *)self->_profile currentActivitySummaryHelper];
    [currentActivitySummaryHelper removeObserver:self];

    dataManager = [(HDProfile *)self->_profile dataManager];
    workoutType = [MEMORY[0x277CCD720] workoutType];
    [dataManager removeObserver:self forDataType:workoutType];

    goto LABEL_5;
  }

  daemon2 = [(HDProfile *)self->_profile daemon];
  behavior2 = [daemon2 behavior];
  isStandalonePhoneFitnessMode = [behavior2 isStandalonePhoneFitnessMode];

  if (isStandalonePhoneFitnessMode)
  {
    goto LABEL_4;
  }

LABEL_5:
  v12.receiver = self;
  v12.super_class = ASDaemonWakeCoordinator;
  [(ASDaemonWakeCoordinator *)&v12 dealloc];
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v13 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  tokenCopy = token;
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = tokenCopy;
    v11 = 2048;
    v12 = connectionCopy;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator received public token %@ on connection %p", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  ASLoggingInitialize();
  v13 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138413058;
    v16 = tokenCopy;
    v17 = 2114;
    v18 = topicCopy;
    v19 = 2112;
    v20 = identifierCopy;
    v21 = 2048;
    v22 = connectionCopy;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator received per-topic push token %@ for topic %{public}@ identifier %@ on connection %p", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v7 = [MEMORY[0x277CBC4C0] notificationFromRemoteNotificationDictionary:userInfo];
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    topic = [messageCopy topic];
    v12 = 138412546;
    v13 = topic;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator APS push received: %@ %@", &v12, 0x16u);
  }

  [(ASXPCClient *)self->_xpcClient launch];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  summaryCopy = summary;
  ASLoggingInitialize();
  v7 = MEMORY[0x277CE8FE8];
  v8 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator today summary changed", buf, 2u);
  }

  daemon = [(HDProfile *)self->_profile daemon];
  behavior = [daemon behavior];
  if ([behavior isAppleWatch] && (lastTodayActivitySummary = self->_lastTodayActivitySummary) != 0 && !ASAllGoalsMetForSummary(lastTodayActivitySummary))
  {
    v13 = ASAllGoalsMetForSummary(summaryCopy);

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
  self->_lastTodayActivitySummary = summaryCopy;
}

- (void)currentActivitySummaryHelper:(id)helper didUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  summaryCopy = summary;
  ASLoggingInitialize();
  v7 = MEMORY[0x277CE8FE8];
  v8 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "ASDaemonWakeCoordinator yesterday summary changed", buf, 2u);
  }

  daemon = [(HDProfile *)self->_profile daemon];
  behavior = [daemon behavior];
  if ([behavior isAppleWatch] && (lastYesterdayActivitySummary = self->_lastYesterdayActivitySummary) != 0 && !ASAllGoalsMetForSummary(lastYesterdayActivitySummary))
  {
    v13 = ASAllGoalsMetForSummary(summaryCopy);

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
  self->_lastYesterdayActivitySummary = summaryCopy;

  notify_post([*MEMORY[0x277CE9188] UTF8String]);
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  if ([added hk_containsObjectPassingTest:{&__block_literal_global_6, anchor}])
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