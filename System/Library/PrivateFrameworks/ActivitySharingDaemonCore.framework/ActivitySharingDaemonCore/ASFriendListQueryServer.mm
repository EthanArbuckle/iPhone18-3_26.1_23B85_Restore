@interface ASFriendListQueryServer
- (ASActivitySharingManager)activitySharingManager;
- (ASFriendListQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_activitySharingManagerProcessingStarted;
- (void)_queue_activitySharingManagerProcessingStarted;
- (void)_queue_start;
- (void)_queue_stop;
- (void)friendListDidUpdate:(id)update;
@end

@implementation ASFriendListQueryServer

- (ASFriendListQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v20.receiver = self;
  v20.super_class = ASFriendListQueryServer;
  v11 = [(HDQueryServer *)&v20 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (!v11)
  {
    goto LABEL_4;
  }

  profile = [clientCopy profile];
  v13 = [profile profileExtensionsConformingToProtocol:&unk_285108A30];

  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    activitySharingManager = [firstObject activitySharingManager];
    [(ASFriendListQueryServer *)v11 setActivitySharingManager:activitySharingManager];

    [(ASFriendListQueryServer *)v11 setManagerStartAction:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__activitySharingManagerProcessingStarted name:@"ActivitySharingMangerProcessingStartedNotification" object:0];

LABEL_4:
    v17 = v11;
    goto LABEL_8;
  }

  ASLoggingInitialize();
  v18 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_ERROR))
  {
    [ASFriendListQueryServer initWithUUID:v18 configuration:? client:? delegate:?];
  }

  v17 = 0;
LABEL_8:

  return v17;
}

- (void)_queue_start
{
  v9.receiver = self;
  v9.super_class = ASFriendListQueryServer;
  [(HDQueryServer *)&v9 _queue_start];
  activitySharingManager = [(ASFriendListQueryServer *)self activitySharingManager];
  processingStarted = [activitySharingManager processingStarted];

  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF0];
  v6 = os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT);
  if (processingStarted)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer: Starting.", v8, 2u);
    }

    [(ASFriendListQueryServer *)self setManagerStartAction:0];
    activitySharingManager2 = [(ASFriendListQueryServer *)self activitySharingManager];
    [activitySharingManager2 addFriendListObserver:self];
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer: Waiting for processing to start for add", v8, 2u);
    }

    [(ASFriendListQueryServer *)self setManagerStartAction:1];
  }
}

- (void)_queue_stop
{
  v9.receiver = self;
  v9.super_class = ASFriendListQueryServer;
  [(HDQueryServer *)&v9 _queue_stop];
  activitySharingManager = [(ASFriendListQueryServer *)self activitySharingManager];
  processingStarted = [activitySharingManager processingStarted];

  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF0];
  v6 = os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT);
  if (processingStarted)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer: Stopping.", v8, 2u);
    }

    activitySharingManager2 = [(ASFriendListQueryServer *)self activitySharingManager];
    [activitySharingManager2 removeFriendListObserver:self];
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer: Waiting for processing to start for remove", v8, 2u);
    }

    [(ASFriendListQueryServer *)self setManagerStartAction:2];
  }
}

- (void)friendListDidUpdate:(id)update
{
  v14 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  clientProxy = [(HDQueryServer *)self clientProxy];
  v6 = ASCodableFriendListFromFriends();
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v12 = 134217984;
    v13 = [updateCopy count];
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer calling deliverFriendList with %lu friends", &v12, 0xCu);
  }

  data = [v6 data];
  queryUUID = [(HDQueryServer *)self queryUUID];
  [clientProxy client_deliverFriendList:data queryUUID:queryUUID];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_activitySharingManagerProcessingStarted
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer: Manager processing started", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__ASFriendListQueryServer__activitySharingManagerProcessingStarted__block_invoke;
  v4[3] = &unk_278C4B278;
  v4[4] = self;
  [(HDQueryServer *)self onQueue:v4];
}

- (void)_queue_activitySharingManagerProcessingStarted
{
  activitySharingManager = [(ASFriendListQueryServer *)self activitySharingManager];
  processingStarted = [activitySharingManager processingStarted];

  if (processingStarted)
  {
    managerStartAction = [(ASFriendListQueryServer *)self managerStartAction];
    if (managerStartAction == 2)
    {
      ASLoggingInitialize();
      v10 = *MEMORY[0x277CE8FF0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer: Removing friend list observer after activity sharing manager started", v11, 2u);
      }

      activitySharingManager2 = [(ASFriendListQueryServer *)self activitySharingManager];
      [activitySharingManager2 removeFriendListObserver:self];
    }

    else
    {
      if (managerStartAction != 1)
      {
        if (!managerStartAction)
        {
          ASLoggingInitialize();
          v6 = *MEMORY[0x277CE8FF0];
          if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer: Activity sharing manager started, but no queries enabled", buf, 2u);
          }
        }

        goto LABEL_16;
      }

      ASLoggingInitialize();
      v8 = *MEMORY[0x277CE8FF0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer: Adding friend list observer after activity sharing manager started", v12, 2u);
      }

      activitySharingManager2 = [(ASFriendListQueryServer *)self activitySharingManager];
      [activitySharingManager2 addFriendListObserver:self];
    }

LABEL_16:
    [(ASFriendListQueryServer *)self setManagerStartAction:0];
    return;
  }

  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_ERROR))
  {
    [(ASFriendListQueryServer *)v7 _queue_activitySharingManagerProcessingStarted];
  }
}

- (ASActivitySharingManager)activitySharingManager
{
  WeakRetained = objc_loadWeakRetained(&self->_activitySharingManager);

  return WeakRetained;
}

@end