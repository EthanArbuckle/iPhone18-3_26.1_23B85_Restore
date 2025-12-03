@interface ASActivitySharingProfileExtension
+ (id)activitySharingManagerForProfile:(id)profile;
- (ASActivitySharingProfileExtension)initWithProfile:(id)profile;
- (HDProfile)profile;
- (void)daemonReady:(id)ready;
@end

@implementation ASActivitySharingProfileExtension

- (ASActivitySharingProfileExtension)initWithProfile:(id)profile
{
  v34 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v29.receiver = self;
  v29.super_class = ASActivitySharingProfileExtension;
  v5 = [(ASActivitySharingProfileExtension *)&v29 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
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
      behavior = [daemonWakeCoordinator behavior];
      v19 = -[ASActivitySharingManager initWithDatabaseClient:isWatch:](v16, "initWithDatabaseClient:isWatch:", v17, [behavior isAppleWatch]);
      activitySharingManager = v6->_activitySharingManager;
      v6->_activitySharingManager = v19;
    }

    v21 = objc_loadWeakRetained(&v6->_profile);
    daemon = [v21 daemon];
    [daemon registerForDaemonReady:v6];

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

+ (id)activitySharingManagerForProfile:(id)profile
{
  v3 = [profile profileExtensionWithIdentifier:*MEMORY[0x277CE92A8]];
  activitySharingManager = [v3 activitySharingManager];

  return activitySharingManager;
}

- (void)daemonReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database addProtectedDataObserver:self];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end