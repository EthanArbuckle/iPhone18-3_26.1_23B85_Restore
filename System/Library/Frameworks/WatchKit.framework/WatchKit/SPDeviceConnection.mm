@interface SPDeviceConnection
+ (id)sharedDeviceConnection;
- (SPDeviceConnection)init;
- (SPDeviceConnectionDelegate)delegate;
- (id)connectionProxy:(id)a3 caller:(const char *)a4;
- (id)localeForUserNotification;
- (int64_t)appInstallStateForAppConduitInstallState:(int64_t)a3;
- (void)_enumerateObserversSafely:(id)a3;
- (void)activeComplicationsForPairedDevice:(id)a3 completion:(id)a4;
- (void)activeComplicationsWithCompletion:(id)a3;
- (void)addObserver:(id)a3;
- (void)cancelPendingInstallations;
- (void)createXPCConnectionIfNecessary;
- (void)fetchApplicationWithContainingApplicationBundleID:(id)a3 completion:(id)a4;
- (void)fetchInfoForApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5;
- (void)fetchInstalledApplicationsForPairedDevice:(id)a3 completion:(id)a4;
- (void)fetchInstalledApplicationsWithCompletion:(id)a3;
- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)a3 withCompletion:(id)a4;
- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)a3 withErrorCompletion:(id)a4;
- (void)fetchInstalledComplicationsForPairedDevice:(id)a3 completion:(id)a4;
- (void)fetchInstalledComplicationsWithCompletion:(id)a3;
- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5;
- (void)fetchProvisioningProfilesForPairedDevice:(id)a3 completion:(id)a4;
- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)a3 completion:(id)a4;
- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)a3 completion:(id)a4;
- (void)getAlwaysInstallForPairedDevice:(id)a3 completion:(id)a4;
- (void)hideUserNotification;
- (void)installAllApplications;
- (void)installApplication:(id)a3 completion:(id)a4;
- (void)installApplication:(id)a3 onPairedDevice:(id)a4 completion:(id)a5;
- (void)installApplication:(id)a3 withProvisioningProfiles:(id)a4 completion:(id)a5;
- (void)installApplication:(id)a3 withProvisioningProfiles:(id)a4 onPairedDevice:(id)a5 completion:(id)a6;
- (void)installApplication:(id)a3 withProvisioningProfiles:(id)a4 onPairedDevice:(id)a5 completionWithError:(id)a6;
- (void)installProvisioningProfileWithURL:(id)a3 onPairedDevice:(id)a4 completion:(id)a5;
- (void)invalidateXPCConnection;
- (void)localeForUserNotification;
- (void)removeApplication:(id)a3 fromPairedDevice:(id)a4 completion:(id)a5;
- (void)removeObserver:(id)a3;
- (void)removeProvisioningProfileWithID:(id)a3 fromPairedDevice:(id)a4 completion:(id)a5;
- (void)setAlwaysInstall:(id)a3;
- (void)setAlwaysInstall:(id)a3 forDevice:(id)a4;
- (void)showUserNotification:(int64_t)a3 applicationName:(id)a4 extensionBundleID:(id)a5;
- (void)showUserNotification:(int64_t)a3 bundleID:(id)a4;
- (void)updatePreferencesForApplicationWithIdentifier:(id)a3 preferences:(id)a4 forPairedDevice:(id)a5 completion:(id)a6;
- (void)wakeExtensionForWatchApp:(id)a3;
@end

@implementation SPDeviceConnection

+ (id)sharedDeviceConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SPDeviceConnection_sharedDeviceConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedDeviceConnection_onceToken != -1)
  {
    dispatch_once(&sharedDeviceConnection_onceToken, block);
  }

  v2 = sharedDeviceConnection___sharedDeviceConnection;

  return v2;
}

void __44__SPDeviceConnection_sharedDeviceConnection__block_invoke(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___SPDeviceConnection;
  v1 = [objc_msgSendSuper2(&v4 allocWithZone_];
  v2 = sharedDeviceConnection___sharedDeviceConnection;
  sharedDeviceConnection___sharedDeviceConnection = v1;

  v3 = [sharedDeviceConnection___sharedDeviceConnection connectionQueue];
  dispatch_sync(v3, &__block_literal_global_3);
}

- (SPDeviceConnection)init
{
  v8.receiver = self;
  v8.super_class = SPDeviceConnection;
  v2 = [(SPDeviceConnection *)&v8 init];
  v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
  observers = v2->_observers;
  v2->_observers = v3;

  v5 = dispatch_queue_create("com.apple.WatchKit.connectionQueue", 0);
  connectionQueue = v2->_connectionQueue;
  v2->_connectionQueue = v5;

  return v2;
}

- (void)createXPCConnectionIfNecessary
{
  v3 = [(SPDeviceConnection *)self serverConnection];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.companionappd" options:4096];
    [(SPDeviceConnection *)self setServerConnection:v4];

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E10BE8];
    v6 = [(SPDeviceConnection *)self serverConnection];
    [v6 setRemoteObjectInterface:v5];

    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E0FCE8];
    v8 = [(SPDeviceConnection *)self serverConnection];
    [v8 setExportedInterface:v7];

    v9 = [(SPDeviceConnection *)self serverConnection];
    [v9 setExportedObject:self];

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__SPDeviceConnection_createXPCConnectionIfNecessary__block_invoke;
    v15[3] = &unk_278B7EF10;
    objc_copyWeak(&v16, &location);
    v10 = [(SPDeviceConnection *)self serverConnection];
    [v10 setInterruptionHandler:v15];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__SPDeviceConnection_createXPCConnectionIfNecessary__block_invoke_80;
    v13[3] = &unk_278B7EF10;
    objc_copyWeak(&v14, &location);
    v11 = [(SPDeviceConnection *)self serverConnection];
    [v11 setInvalidationHandler:v13];

    v12 = [(SPDeviceConnection *)self serverConnection];
    [v12 resume];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __52__SPDeviceConnection_createXPCConnectionIfNecessary__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPDeviceConnection createXPCConnectionIfNecessary]_block_invoke";
    v7 = 1024;
    v8 = 110;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: SPDeviceConnection, createXPCConnection, interruptionHandler", &v5, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateXPCConnection];

  v4 = *MEMORY[0x277D85DE8];
}

void __52__SPDeviceConnection_createXPCConnectionIfNecessary__block_invoke_80(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPDeviceConnection createXPCConnectionIfNecessary]_block_invoke";
    v7 = 1024;
    v8 = 115;
    _os_log_impl(&dword_23B338000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: SPDeviceConnection, createXPCConnection, invalidationHandler", &v5, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateXPCConnection];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)invalidateXPCConnection
{
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SPDeviceConnection_invalidateXPCConnection__block_invoke;
  block[3] = &unk_278B7E200;
  block[4] = self;
  dispatch_sync(connectionQueue, block);
}

uint64_t __45__SPDeviceConnection_invalidateXPCConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverConnection];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setServerConnection:0];
}

- (id)connectionProxy:(id)a3 caller:(const char *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  connectionQueue = self->_connectionQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__SPDeviceConnection_connectionProxy_caller___block_invoke;
  v11[3] = &unk_278B7EF60;
  v13 = &v15;
  v14 = a4;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  dispatch_sync(connectionQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __45__SPDeviceConnection_connectionProxy_caller___block_invoke(uint64_t a1)
{
  [*(a1 + 32) createXPCConnectionIfNecessary];
  v2 = [*(a1 + 32) serverConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SPDeviceConnection_connectionProxy_caller___block_invoke_2;
  v8[3] = &unk_278B7EF38;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10 = *(a1 + 56);
  v8[4] = v3;
  v9 = v4;
  v5 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __45__SPDeviceConnection_connectionProxy_caller___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = wk_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__SPDeviceConnection_connectionProxy_caller___block_invoke_2_cold_1(a1);
  }

  [*(a1 + 32) invalidateXPCConnection];
  (*(*(a1 + 40) + 16))();
}

- (void)fetchInstalledApplicationsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SPDeviceConnection_fetchInstalledApplicationsWithCompletion___block_invoke;
  v6[3] = &unk_278B7EF88;
  v7 = v4;
  v5 = v4;
  [(SPDeviceConnection *)self fetchInstalledApplicationsWithErrorCompletion:v6];
}

- (void)fetchInstalledApplicationsForPairedDevice:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CEAF80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDeviceConnection];
  [v8 fetchInstalledApplicationsForPairedDevice:v7 completion:v6];
}

- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__SPDeviceConnection_fetchInstalledCompatibleApplicationsWithDevice_withCompletion___block_invoke;
  v8[3] = &unk_278B7EF88;
  v9 = v6;
  v7 = v6;
  [(SPDeviceConnection *)self fetchInstalledCompatibleApplicationsWithDevice:a3 withErrorCompletion:v8];
}

- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)a3 withErrorCompletion:(id)a4
{
  v5 = MEMORY[0x277CEAF80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDeviceConnection];
  [v8 fetchInstalledCompatibleApplicationsWithDevice:v7 withErrorCompletion:v6];
}

- (void)fetchInstalledComplicationsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SPDeviceConnection_fetchInstalledComplicationsWithCompletion___block_invoke;
  v6[3] = &unk_278B7EF88;
  v7 = v4;
  v5 = v4;
  [(SPDeviceConnection *)self fetchInstalledComplicationsWithErrorCompletion:v6];
}

- (void)fetchInstalledComplicationsForPairedDevice:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CEAF80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDeviceConnection];
  [v8 fetchInstalledComplicationsForPairedDevice:v7 completion:v6];
}

- (void)activeComplicationsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SPDeviceConnection_activeComplicationsWithCompletion___block_invoke;
  v6[3] = &unk_278B7EFB0;
  v7 = v4;
  v5 = v4;
  [(SPDeviceConnection *)self activeComplicationsWithErrorCompletion:v6];
}

- (void)activeComplicationsForPairedDevice:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CEAF80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDeviceConnection];
  [v8 activeComplicationsForPairedDevice:v7 completion:v6];
}

- (void)installAllApplications
{
  v2 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  [v2 installAllApplications];
}

- (void)cancelPendingInstallations
{
  v2 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  [v2 cancelPendingInstallations];
}

- (void)installApplication:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SPDeviceConnection_installApplication_completion___block_invoke;
  v11[3] = &unk_278B7EFD8;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 installApplication:v10 onPairedDevice:0 completion:v11];
}

void __52__SPDeviceConnection_installApplication_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__SPDeviceConnection_installApplication_completion___block_invoke_cold_1(a1);
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 40) appInstallStateForAppConduitInstallState:a2]);
}

- (void)installApplication:(id)a3 onPairedDevice:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277CEAF80];
  v10 = a4;
  v11 = a3;
  v12 = [v9 sharedDeviceConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__SPDeviceConnection_installApplication_onPairedDevice_completion___block_invoke;
  v14[3] = &unk_278B7F000;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [v12 installApplication:v11 onPairedDevice:v10 completion:v14];
}

void __67__SPDeviceConnection_installApplication_onPairedDevice_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  (*(v4 + 16))(v4, [v5 appInstallStateForAppConduitInstallState:a2], v6);
}

- (void)removeApplication:(id)a3 fromPairedDevice:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277CEAF80];
  v10 = a4;
  v11 = a3;
  v12 = [v9 sharedDeviceConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__SPDeviceConnection_removeApplication_fromPairedDevice_completion___block_invoke;
  v14[3] = &unk_278B7F028;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [v12 removeApplication:v11 fromPairedDevice:v10 completion:v14];
}

uint64_t __68__SPDeviceConnection_removeApplication_fromPairedDevice_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) appInstallStateForAppConduitInstallState:a2];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)fetchApplicationWithContainingApplicationBundleID:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CEAF80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDeviceConnection];
  [v8 fetchApplicationWithContainingApplicationBundleID:v7 completion:v6];
}

- (void)fetchInfoForApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x277CEAF80];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 sharedDeviceConnection];
  [v11 fetchInfoForApplicationWithBundleID:v10 forPairedDevice:v9 completion:v8];
}

- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CEAF80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDeviceConnection];
  [v8 fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:v7 completion:v6];
}

- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CEAF80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDeviceConnection];
  [v8 fetchWatchAppBundleIDForCompanionAppBundleID:v7 completion:v6];
}

- (void)setAlwaysInstall:(id)a3
{
  v3 = MEMORY[0x277CEAF80];
  v4 = a3;
  v5 = [v3 sharedDeviceConnection];
  [v5 setAlwaysInstall:v4];
}

- (void)setAlwaysInstall:(id)a3 forDevice:(id)a4
{
  v5 = MEMORY[0x277CEAF80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDeviceConnection];
  [v8 setAlwaysInstall:v7 forDevice:v6];
}

- (void)getAlwaysInstallForPairedDevice:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CEAF80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDeviceConnection];
  [v8 getAlwaysInstallForPairedDevice:v7 completion:v6];
}

- (void)showUserNotification:(int64_t)a3 bundleID:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(SPDeviceConnection *)self connectionProxy:&__block_literal_global_88 caller:"[SPDeviceConnection showUserNotification:bundleID:]"];
    [v7 showUserNotification:a3 applicationName:v6];
  }

  else
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SPDeviceConnection showUserNotification:bundleID:];
    }
  }
}

- (void)showUserNotification:(int64_t)a3 applicationName:(id)a4 extensionBundleID:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [(SPDeviceConnection *)self connectionProxy:&__block_literal_global_90 caller:"[SPDeviceConnection showUserNotification:applicationName:extensionBundleID:]"];
    v11 = v10;
    if (v9)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __77__SPDeviceConnection_showUserNotification_applicationName_extensionBundleID___block_invoke_2;
      v12[3] = &unk_278B7F070;
      v13 = v9;
      v11 = v11;
      v14 = v11;
      v16 = a3;
      v15 = v8;
      [v11 fetchInstalledApplicationsWithCompletion:v12];
    }

    else
    {
      [v10 showUserNotification:a3 applicationName:v8];
    }
  }

  else
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SPDeviceConnection showUserNotification:applicationName:extensionBundleID:];
    }
  }
}

void __77__SPDeviceConnection_showUserNotification_applicationName_extensionBundleID___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v3 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v7)];
        v9 = [v8 objectForKeyedSubscript:@"SPPluginBundleIdKey"];
        v10 = [v9 isEqualToString:*(a1 + 32)];

        if (v10)
        {
          [*(a1 + 40) showUserNotification:*(a1 + 56) applicationName:*(a1 + 48)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)hideUserNotification
{
  v2 = [(SPDeviceConnection *)self connectionProxy:&__block_literal_global_96 caller:"[SPDeviceConnection hideUserNotification]"];
  [v2 hideUserNotification];
}

- (id)localeForUserNotification
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v2 = getNRPairedDeviceRegistryClass_softClass_0;
  v24 = getNRPairedDeviceRegistryClass_softClass_0;
  if (!getNRPairedDeviceRegistryClass_softClass_0)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __getNRPairedDeviceRegistryClass_block_invoke_0;
    v19 = &unk_278B7E070;
    v20 = &v21;
    __getNRPairedDeviceRegistryClass_block_invoke_0(&v16);
    v2 = v22[3];
  }

  v3 = v2;
  _Block_object_dispose(&v21, 8);
  v4 = [v2 sharedInstance];
  v5 = [v4 getDevices];
  v6 = [v5 firstObject];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v7 = getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr;
  v24 = getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr;
  if (!getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __getNRDevicePropertyCurrentUserLocaleSymbolLoc_block_invoke;
    v19 = &unk_278B7E070;
    v20 = &v21;
    v8 = NanoRegistryLibrary_0();
    v9 = dlsym(v8, "NRDevicePropertyCurrentUserLocale");
    *(v20[1] + 24) = v9;
    getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr = *(v20[1] + 24);
    v7 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v7)
  {
    [SPDeviceConnection localeForUserNotification];
  }

  v10 = [v6 valueForProperty:*v7];
  v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x277CBEAF8] currentLocale];
  }

  v14 = v13;

  return v14;
}

- (void)wakeExtensionForWatchApp:(id)a3
{
  v4 = a3;
  v5 = [(SPDeviceConnection *)self connectionProxy:&__block_literal_global_99 caller:"[SPDeviceConnection wakeExtensionForWatchApp:]"];
  [v5 wakeExtensionForWatchApp:v4];
}

- (void)addObserver:(id)a3
{
  v3 = MEMORY[0x277CEAF80];
  v4 = a3;
  v5 = [v3 sharedDeviceConnection];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v3 = MEMORY[0x277CEAF80];
  v4 = a3;
  v5 = [v3 sharedDeviceConnection];
  [v5 removeObserver:v4];
}

- (void)_enumerateObserversSafely:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(NSHashTable *)self->_observers copy];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)installApplication:(id)a3 withProvisioningProfiles:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CEAF80];
  v11 = a4;
  v12 = [v10 sharedDeviceConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__SPDeviceConnection_installApplication_withProvisioningProfiles_completion___block_invoke;
  v15[3] = &unk_278B7EFD8;
  v17 = self;
  v18 = v9;
  v16 = v8;
  v13 = v9;
  v14 = v8;
  [v12 installApplication:v14 withProvisioningProfiles:v11 onPairedDevice:0 completion:v15];
}

void __77__SPDeviceConnection_installApplication_withProvisioningProfiles_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __77__SPDeviceConnection_installApplication_withProvisioningProfiles_completion___block_invoke_cold_1(a1);
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 40) appInstallStateForAppConduitInstallState:a2]);
}

- (void)installApplication:(id)a3 withProvisioningProfiles:(id)a4 onPairedDevice:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = MEMORY[0x277CEAF80];
  v13 = a5;
  v14 = a4;
  v15 = [v12 sharedDeviceConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__SPDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completion___block_invoke;
  v18[3] = &unk_278B7EFD8;
  v20 = self;
  v21 = v11;
  v19 = v10;
  v16 = v11;
  v17 = v10;
  [v15 installApplication:v17 withProvisioningProfiles:v14 onPairedDevice:v13 completion:v18];
}

void __92__SPDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = wk_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __92__SPDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completion___block_invoke_cold_1(a1);
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 40) appInstallStateForAppConduitInstallState:a2]);
}

- (void)installApplication:(id)a3 withProvisioningProfiles:(id)a4 onPairedDevice:(id)a5 completionWithError:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x277CEAF80];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v11 sharedDeviceConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__SPDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completionWithError___block_invoke;
  v17[3] = &unk_278B7F000;
  v17[4] = self;
  v18 = v10;
  v16 = v10;
  [v15 installApplication:v14 withProvisioningProfiles:v13 onPairedDevice:v12 completion:v17];
}

void __101__SPDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completionWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  (*(v4 + 16))(v4, [v5 appInstallStateForAppConduitInstallState:a2], v6);
}

- (void)installProvisioningProfileWithURL:(id)a3 onPairedDevice:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x277CEAF80];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 sharedDeviceConnection];
  [v11 installProvisioningProfileWithURL:v10 onPairedDevice:v9 completion:v8];
}

- (void)removeProvisioningProfileWithID:(id)a3 fromPairedDevice:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x277CEAF80];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 sharedDeviceConnection];
  [v11 removeProvisioningProfileWithID:v10 fromPairedDevice:v9 completion:v8];
}

- (void)fetchProvisioningProfilesForPairedDevice:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CEAF80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedDeviceConnection];
  [v8 fetchProvisioningProfilesForPairedDevice:v7 completion:v6];
}

- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x277CEAF80];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 sharedDeviceConnection];
  [v11 fetchProvisioningProfilesForApplicationWithBundleID:v10 forPairedDevice:v9 completion:v8];
}

- (void)updatePreferencesForApplicationWithIdentifier:(id)a3 preferences:(id)a4 forPairedDevice:(id)a5 completion:(id)a6
{
  v9 = MEMORY[0x277CEAF80];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 sharedDeviceConnection];
  [v14 updatePreferencesForApplicationWithIdentifier:v13 preferences:v12 forPairedDevice:v11 completion:v10];
}

- (int64_t)appInstallStateForAppConduitInstallState:(int64_t)a3
{
  v3 = a3;
  if (a3 >= 0xF)
  {
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SPDeviceConnection appInstallStateForAppConduitInstallState:];
    }

    return 0;
  }

  return v3;
}

- (SPDeviceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__SPDeviceConnection_connectionProxy_caller___block_invoke_2_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  v5 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_23B338000, v2, v3, "%{public}s:%d: %{public}s - error: %{public}@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __52__SPDeviceConnection_installApplication_completion___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_23B338000, v2, v3, "%{public}s:%d: installApplication for %{public}@, failed with: %{public}@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)showUserNotification:bundleID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  *v4 = 136446722;
  OUTLINED_FUNCTION_3();
  *&v4[7] = 359;
  v4[9] = v0;
  v5 = v1;
  _os_log_error_impl(&dword_23B338000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%d: SPDeviceConnection, nil application name for notification %d", v4, 0x18u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)showUserNotification:applicationName:extensionBundleID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  *v4 = 136446722;
  OUTLINED_FUNCTION_3();
  *&v4[7] = 368;
  v4[9] = v0;
  v5 = v1;
  _os_log_error_impl(&dword_23B338000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%d: SPDeviceConnection, nil application name for notification %d", v4, 0x18u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)localeForUserNotification
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertyCurrentUserLocale(void)"];
  [v0 handleFailureInFunction:v1 file:@"SPDeviceConnection.m" lineNumber:48 description:{@"%s", dlerror()}];

  __break(1u);
}

void __77__SPDeviceConnection_installApplication_withProvisioningProfiles_completion___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_23B338000, v2, v3, "%{public}s:%d: installApplication for %{public}@, withProfiles, failed with: %{public}@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __92__SPDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completion___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = 136446978;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_23B338000, v2, v3, "%{public}s:%d: installApplication for %{public}@, withProfiles, failed with: %{public}@", v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)appInstallStateForAppConduitInstallState:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  *v3 = 136446722;
  OUTLINED_FUNCTION_3();
  *&v3[7] = 554;
  v3[9] = 2048;
  v4 = v0;
  _os_log_error_impl(&dword_23B338000, v1, OS_LOG_TYPE_ERROR, "%{public}s:%d: Failed to map ACXApplicationInstallState : %ld, returning SPApplicationInstallStateError", v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

@end