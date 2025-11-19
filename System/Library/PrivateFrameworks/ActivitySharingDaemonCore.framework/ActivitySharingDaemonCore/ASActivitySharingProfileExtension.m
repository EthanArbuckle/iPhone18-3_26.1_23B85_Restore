@interface ASActivitySharingProfileExtension
+ (id)activitySharingManagerForProfile:(id)a3;
- (ASActivitySharingProfileExtension)initWithProfile:(id)a3;
- (HDProfile)profile;
- (void)daemonReady:(id)a3;
@end

@implementation ASActivitySharingProfileExtension

- (ASActivitySharingProfileExtension)initWithProfile:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = ASActivitySharingProfileExtension;
  v5 = [(ASActivitySharingProfileExtension *)&v29 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = ASActivitySharingDaemonEnabled();
    if (v7)
    {
      v8 = [ASDaemonWakeCoordinator alloc];
      WeakRetained = objc_loadWeakRetained(&v6->_profile);
      v10 = [(ASDaemonWakeCoordinator *)v8 initWithProfile:WeakRetained];
      daemonWakeCoordinator = v6->_daemonWakeCoordinator;
      v6->_daemonWakeCoordinator = v10;
    }

    else
    {
      v12 = [ASDatabaseClient alloc];
      v13 = objc_loadWeakRetained(&v6->_profile);
      v14 = [(ASDatabaseClient *)v12 initWithProfile:v13];
      databaseClient = v6->_databaseClient;
      v6->_databaseClient = v14;

      v16 = [ASActivitySharingManager alloc];
      v17 = v6->_databaseClient;
      WeakRetained = objc_loadWeakRetained(&v6->_profile);
      daemonWakeCoordinator = [WeakRetained daemon];
      v18 = [daemonWakeCoordinator behavior];
      v19 = -[ASActivitySharingManager initWithDatabaseClient:isWatch:](v16, "initWithDatabaseClient:isWatch:", v17, [v18 isAppleWatch]);
      activitySharingManager = v6->_activitySharingManager;
      v6->_activitySharingManager = v19;
    }

    v21 = objc_loadWeakRetained(&v6->_profile);
    v22 = [v21 daemon];
    [v22 registerForDaemonReady:v6];

    ASLoggingInitialize();
    v23 = *MEMORY[0x277CE8FE8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = objc_opt_class();
      *buf = 138412546;
      v31 = v25;
      v32 = 1024;
      v33 = v7;
      v26 = v25;
      _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "[%@] Activity Sharing profile extension instantiated; daemon enabled %d", buf, 0x12u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)activitySharingManagerForProfile:(id)a3
{
  v3 = [a3 profileExtensionWithIdentifier:*MEMORY[0x277CE92A8]];
  v4 = [v3 activitySharingManager];

  return v4;
}

- (void)daemonReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained database];
  [v4 addProtectedDataObserver:self];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end