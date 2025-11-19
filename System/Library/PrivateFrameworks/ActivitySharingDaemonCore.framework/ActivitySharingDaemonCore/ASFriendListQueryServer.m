@interface ASFriendListQueryServer
- (ASActivitySharingManager)activitySharingManager;
- (ASFriendListQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_activitySharingManagerProcessingStarted;
- (void)_queue_activitySharingManagerProcessingStarted;
- (void)_queue_start;
- (void)_queue_stop;
- (void)friendListDidUpdate:(id)a3;
@end

@implementation ASFriendListQueryServer

- (ASFriendListQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v20.receiver = self;
  v20.super_class = ASFriendListQueryServer;
  v11 = [(HDQueryServer *)&v20 initWithUUID:a3 configuration:a4 client:v10 delegate:a6];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = [v10 profile];
  v13 = [v12 profileExtensionsConformingToProtocol:&unk_285108A30];

  if ([v13 count])
  {
    v14 = [v13 firstObject];
    v15 = [v14 activitySharingManager];
    [(ASFriendListQueryServer *)v11 setActivitySharingManager:v15];

    [(ASFriendListQueryServer *)v11 setManagerStartAction:0];
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v11 selector:sel__activitySharingManagerProcessingStarted name:@"ActivitySharingMangerProcessingStartedNotification" object:0];

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
  v3 = [(ASFriendListQueryServer *)self activitySharingManager];
  v4 = [v3 processingStarted];

  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF0];
  v6 = os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer: Starting.", v8, 2u);
    }

    [(ASFriendListQueryServer *)self setManagerStartAction:0];
    v7 = [(ASFriendListQueryServer *)self activitySharingManager];
    [v7 addFriendListObserver:self];
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
  v3 = [(ASFriendListQueryServer *)self activitySharingManager];
  v4 = [v3 processingStarted];

  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FF0];
  v6 = os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer: Stopping.", v8, 2u);
    }

    v7 = [(ASFriendListQueryServer *)self activitySharingManager];
    [v7 removeFriendListObserver:self];
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

- (void)friendListDidUpdate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDQueryServer *)self clientProxy];
  v6 = ASCodableFriendListFromFriends();
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FF0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v12 = 134217984;
    v13 = [v4 count];
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer calling deliverFriendList with %lu friends", &v12, 0xCu);
  }

  v9 = [v6 data];
  v10 = [(HDQueryServer *)self queryUUID];
  [v5 client_deliverFriendList:v9 queryUUID:v10];

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
  v3 = [(ASFriendListQueryServer *)self activitySharingManager];
  v4 = [v3 processingStarted];

  if (v4)
  {
    v5 = [(ASFriendListQueryServer *)self managerStartAction];
    if (v5 == 2)
    {
      ASLoggingInitialize();
      v10 = *MEMORY[0x277CE8FF0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "ASFriendListQueryServer: Removing friend list observer after activity sharing manager started", v11, 2u);
      }

      v9 = [(ASFriendListQueryServer *)self activitySharingManager];
      [v9 removeFriendListObserver:self];
    }

    else
    {
      if (v5 != 1)
      {
        if (!v5)
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

      v9 = [(ASFriendListQueryServer *)self activitySharingManager];
      [v9 addFriendListObserver:self];
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