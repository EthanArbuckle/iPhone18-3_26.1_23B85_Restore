@interface SPDeviceConnection
+ (id)sharedDeviceConnection;
- (SPDeviceConnection)init;
- (SPDeviceConnectionDelegate)delegate;
- (id)connectionProxy:(id)proxy caller:(const char *)caller;
- (id)localeForUserNotification;
- (int64_t)appInstallStateForAppConduitInstallState:(int64_t)state;
- (void)_enumerateObserversSafely:(id)safely;
- (void)activeComplicationsForPairedDevice:(id)device completion:(id)completion;
- (void)activeComplicationsWithCompletion:(id)completion;
- (void)addObserver:(id)observer;
- (void)cancelPendingInstallations;
- (void)createXPCConnectionIfNecessary;
- (void)fetchApplicationWithContainingApplicationBundleID:(id)d completion:(id)completion;
- (void)fetchInfoForApplicationWithBundleID:(id)d forPairedDevice:(id)device completion:(id)completion;
- (void)fetchInstalledApplicationsForPairedDevice:(id)device completion:(id)completion;
- (void)fetchInstalledApplicationsWithCompletion:(id)completion;
- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)device withCompletion:(id)completion;
- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)device withErrorCompletion:(id)completion;
- (void)fetchInstalledComplicationsForPairedDevice:(id)device completion:(id)completion;
- (void)fetchInstalledComplicationsWithCompletion:(id)completion;
- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)d forPairedDevice:(id)device completion:(id)completion;
- (void)fetchProvisioningProfilesForPairedDevice:(id)device completion:(id)completion;
- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)d completion:(id)completion;
- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)identifier completion:(id)completion;
- (void)getAlwaysInstallForPairedDevice:(id)device completion:(id)completion;
- (void)hideUserNotification;
- (void)installAllApplications;
- (void)installApplication:(id)application completion:(id)completion;
- (void)installApplication:(id)application onPairedDevice:(id)device completion:(id)completion;
- (void)installApplication:(id)application withProvisioningProfiles:(id)profiles completion:(id)completion;
- (void)installApplication:(id)application withProvisioningProfiles:(id)profiles onPairedDevice:(id)device completion:(id)completion;
- (void)installApplication:(id)application withProvisioningProfiles:(id)profiles onPairedDevice:(id)device completionWithError:(id)error;
- (void)installProvisioningProfileWithURL:(id)l onPairedDevice:(id)device completion:(id)completion;
- (void)invalidateXPCConnection;
- (void)localeForUserNotification;
- (void)removeApplication:(id)application fromPairedDevice:(id)device completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)removeProvisioningProfileWithID:(id)d fromPairedDevice:(id)device completion:(id)completion;
- (void)setAlwaysInstall:(id)install;
- (void)setAlwaysInstall:(id)install forDevice:(id)device;
- (void)showUserNotification:(int64_t)notification applicationName:(id)name extensionBundleID:(id)d;
- (void)showUserNotification:(int64_t)notification bundleID:(id)d;
- (void)updatePreferencesForApplicationWithIdentifier:(id)identifier preferences:(id)preferences forPairedDevice:(id)device completion:(id)completion;
- (void)wakeExtensionForWatchApp:(id)app;
@end

@implementation SPDeviceConnection

+ (id)sharedDeviceConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SPDeviceConnection_sharedDeviceConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  serverConnection = [(SPDeviceConnection *)self serverConnection];

  if (!serverConnection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.companionappd" options:4096];
    [(SPDeviceConnection *)self setServerConnection:v4];

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E10BE8];
    serverConnection2 = [(SPDeviceConnection *)self serverConnection];
    [serverConnection2 setRemoteObjectInterface:v5];

    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E0FCE8];
    serverConnection3 = [(SPDeviceConnection *)self serverConnection];
    [serverConnection3 setExportedInterface:v7];

    serverConnection4 = [(SPDeviceConnection *)self serverConnection];
    [serverConnection4 setExportedObject:self];

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__SPDeviceConnection_createXPCConnectionIfNecessary__block_invoke;
    v15[3] = &unk_278B7EF10;
    objc_copyWeak(&v16, &location);
    serverConnection5 = [(SPDeviceConnection *)self serverConnection];
    [serverConnection5 setInterruptionHandler:v15];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__SPDeviceConnection_createXPCConnectionIfNecessary__block_invoke_80;
    v13[3] = &unk_278B7EF10;
    objc_copyWeak(&v14, &location);
    serverConnection6 = [(SPDeviceConnection *)self serverConnection];
    [serverConnection6 setInvalidationHandler:v13];

    serverConnection7 = [(SPDeviceConnection *)self serverConnection];
    [serverConnection7 resume];

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

- (id)connectionProxy:(id)proxy caller:(const char *)caller
{
  proxyCopy = proxy;
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
  callerCopy = caller;
  v11[4] = self;
  v12 = proxyCopy;
  v8 = proxyCopy;
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

- (void)fetchInstalledApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SPDeviceConnection_fetchInstalledApplicationsWithCompletion___block_invoke;
  v6[3] = &unk_278B7EF88;
  v7 = completionCopy;
  v5 = completionCopy;
  [(SPDeviceConnection *)self fetchInstalledApplicationsWithErrorCompletion:v6];
}

- (void)fetchInstalledApplicationsForPairedDevice:(id)device completion:(id)completion
{
  v5 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  deviceCopy = device;
  sharedDeviceConnection = [v5 sharedDeviceConnection];
  [sharedDeviceConnection fetchInstalledApplicationsForPairedDevice:deviceCopy completion:completionCopy];
}

- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)device withCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__SPDeviceConnection_fetchInstalledCompatibleApplicationsWithDevice_withCompletion___block_invoke;
  v8[3] = &unk_278B7EF88;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SPDeviceConnection *)self fetchInstalledCompatibleApplicationsWithDevice:device withErrorCompletion:v8];
}

- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)device withErrorCompletion:(id)completion
{
  v5 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  deviceCopy = device;
  sharedDeviceConnection = [v5 sharedDeviceConnection];
  [sharedDeviceConnection fetchInstalledCompatibleApplicationsWithDevice:deviceCopy withErrorCompletion:completionCopy];
}

- (void)fetchInstalledComplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SPDeviceConnection_fetchInstalledComplicationsWithCompletion___block_invoke;
  v6[3] = &unk_278B7EF88;
  v7 = completionCopy;
  v5 = completionCopy;
  [(SPDeviceConnection *)self fetchInstalledComplicationsWithErrorCompletion:v6];
}

- (void)fetchInstalledComplicationsForPairedDevice:(id)device completion:(id)completion
{
  v5 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  deviceCopy = device;
  sharedDeviceConnection = [v5 sharedDeviceConnection];
  [sharedDeviceConnection fetchInstalledComplicationsForPairedDevice:deviceCopy completion:completionCopy];
}

- (void)activeComplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SPDeviceConnection_activeComplicationsWithCompletion___block_invoke;
  v6[3] = &unk_278B7EFB0;
  v7 = completionCopy;
  v5 = completionCopy;
  [(SPDeviceConnection *)self activeComplicationsWithErrorCompletion:v6];
}

- (void)activeComplicationsForPairedDevice:(id)device completion:(id)completion
{
  v5 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  deviceCopy = device;
  sharedDeviceConnection = [v5 sharedDeviceConnection];
  [sharedDeviceConnection activeComplicationsForPairedDevice:deviceCopy completion:completionCopy];
}

- (void)installAllApplications
{
  mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  [mEMORY[0x277CEAF80] installAllApplications];
}

- (void)cancelPendingInstallations
{
  mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  [mEMORY[0x277CEAF80] cancelPendingInstallations];
}

- (void)installApplication:(id)application completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SPDeviceConnection_installApplication_completion___block_invoke;
  v11[3] = &unk_278B7EFD8;
  selfCopy = self;
  v14 = completionCopy;
  v12 = applicationCopy;
  v9 = completionCopy;
  v10 = applicationCopy;
  [mEMORY[0x277CEAF80] installApplication:v10 onPairedDevice:0 completion:v11];
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

- (void)installApplication:(id)application onPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v9 = MEMORY[0x277CEAF80];
  deviceCopy = device;
  applicationCopy = application;
  sharedDeviceConnection = [v9 sharedDeviceConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__SPDeviceConnection_installApplication_onPairedDevice_completion___block_invoke;
  v14[3] = &unk_278B7F000;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [sharedDeviceConnection installApplication:applicationCopy onPairedDevice:deviceCopy completion:v14];
}

void __67__SPDeviceConnection_installApplication_onPairedDevice_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  (*(v4 + 16))(v4, [v5 appInstallStateForAppConduitInstallState:a2], v6);
}

- (void)removeApplication:(id)application fromPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v9 = MEMORY[0x277CEAF80];
  deviceCopy = device;
  applicationCopy = application;
  sharedDeviceConnection = [v9 sharedDeviceConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__SPDeviceConnection_removeApplication_fromPairedDevice_completion___block_invoke;
  v14[3] = &unk_278B7F028;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [sharedDeviceConnection removeApplication:applicationCopy fromPairedDevice:deviceCopy completion:v14];
}

uint64_t __68__SPDeviceConnection_removeApplication_fromPairedDevice_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) appInstallStateForAppConduitInstallState:a2];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)fetchApplicationWithContainingApplicationBundleID:(id)d completion:(id)completion
{
  v5 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  dCopy = d;
  sharedDeviceConnection = [v5 sharedDeviceConnection];
  [sharedDeviceConnection fetchApplicationWithContainingApplicationBundleID:dCopy completion:completionCopy];
}

- (void)fetchInfoForApplicationWithBundleID:(id)d forPairedDevice:(id)device completion:(id)completion
{
  v7 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  deviceCopy = device;
  dCopy = d;
  sharedDeviceConnection = [v7 sharedDeviceConnection];
  [sharedDeviceConnection fetchInfoForApplicationWithBundleID:dCopy forPairedDevice:deviceCopy completion:completionCopy];
}

- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)identifier completion:(id)completion
{
  v5 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  identifierCopy = identifier;
  sharedDeviceConnection = [v5 sharedDeviceConnection];
  [sharedDeviceConnection fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:identifierCopy completion:completionCopy];
}

- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)d completion:(id)completion
{
  v5 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  dCopy = d;
  sharedDeviceConnection = [v5 sharedDeviceConnection];
  [sharedDeviceConnection fetchWatchAppBundleIDForCompanionAppBundleID:dCopy completion:completionCopy];
}

- (void)setAlwaysInstall:(id)install
{
  v3 = MEMORY[0x277CEAF80];
  installCopy = install;
  sharedDeviceConnection = [v3 sharedDeviceConnection];
  [sharedDeviceConnection setAlwaysInstall:installCopy];
}

- (void)setAlwaysInstall:(id)install forDevice:(id)device
{
  v5 = MEMORY[0x277CEAF80];
  deviceCopy = device;
  installCopy = install;
  sharedDeviceConnection = [v5 sharedDeviceConnection];
  [sharedDeviceConnection setAlwaysInstall:installCopy forDevice:deviceCopy];
}

- (void)getAlwaysInstallForPairedDevice:(id)device completion:(id)completion
{
  v5 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  deviceCopy = device;
  sharedDeviceConnection = [v5 sharedDeviceConnection];
  [sharedDeviceConnection getAlwaysInstallForPairedDevice:deviceCopy completion:completionCopy];
}

- (void)showUserNotification:(int64_t)notification bundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v7 = [(SPDeviceConnection *)self connectionProxy:&__block_literal_global_88 caller:"[SPDeviceConnection showUserNotification:bundleID:]"];
    [v7 showUserNotification:notification applicationName:dCopy];
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

- (void)showUserNotification:(int64_t)notification applicationName:(id)name extensionBundleID:(id)d
{
  nameCopy = name;
  dCopy = d;
  if (nameCopy)
  {
    v10 = [(SPDeviceConnection *)self connectionProxy:&__block_literal_global_90 caller:"[SPDeviceConnection showUserNotification:applicationName:extensionBundleID:]"];
    v11 = v10;
    if (dCopy)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __77__SPDeviceConnection_showUserNotification_applicationName_extensionBundleID___block_invoke_2;
      v12[3] = &unk_278B7F070;
      v13 = dCopy;
      v11 = v11;
      v14 = v11;
      notificationCopy = notification;
      v15 = nameCopy;
      [v11 fetchInstalledApplicationsWithCompletion:v12];
    }

    else
    {
      [v10 showUserNotification:notification applicationName:nameCopy];
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
  sharedInstance = [v2 sharedInstance];
  getDevices = [sharedInstance getDevices];
  firstObject = [getDevices firstObject];

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

  v10 = [firstObject valueForProperty:*v7];
  v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v10];
  v12 = v11;
  if (v11)
  {
    currentLocale = v11;
  }

  else
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  }

  v14 = currentLocale;

  return v14;
}

- (void)wakeExtensionForWatchApp:(id)app
{
  appCopy = app;
  v5 = [(SPDeviceConnection *)self connectionProxy:&__block_literal_global_99 caller:"[SPDeviceConnection wakeExtensionForWatchApp:]"];
  [v5 wakeExtensionForWatchApp:appCopy];
}

- (void)addObserver:(id)observer
{
  v3 = MEMORY[0x277CEAF80];
  observerCopy = observer;
  sharedDeviceConnection = [v3 sharedDeviceConnection];
  [sharedDeviceConnection addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  v3 = MEMORY[0x277CEAF80];
  observerCopy = observer;
  sharedDeviceConnection = [v3 sharedDeviceConnection];
  [sharedDeviceConnection removeObserver:observerCopy];
}

- (void)_enumerateObserversSafely:(id)safely
{
  v16 = *MEMORY[0x277D85DE8];
  safelyCopy = safely;
  if (safelyCopy)
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

          safelyCopy[2](safelyCopy, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)installApplication:(id)application withProvisioningProfiles:(id)profiles completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  v10 = MEMORY[0x277CEAF80];
  profilesCopy = profiles;
  sharedDeviceConnection = [v10 sharedDeviceConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__SPDeviceConnection_installApplication_withProvisioningProfiles_completion___block_invoke;
  v15[3] = &unk_278B7EFD8;
  selfCopy = self;
  v18 = completionCopy;
  v16 = applicationCopy;
  v13 = completionCopy;
  v14 = applicationCopy;
  [sharedDeviceConnection installApplication:v14 withProvisioningProfiles:profilesCopy onPairedDevice:0 completion:v15];
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

- (void)installApplication:(id)application withProvisioningProfiles:(id)profiles onPairedDevice:(id)device completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  v12 = MEMORY[0x277CEAF80];
  deviceCopy = device;
  profilesCopy = profiles;
  sharedDeviceConnection = [v12 sharedDeviceConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__SPDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completion___block_invoke;
  v18[3] = &unk_278B7EFD8;
  selfCopy = self;
  v21 = completionCopy;
  v19 = applicationCopy;
  v16 = completionCopy;
  v17 = applicationCopy;
  [sharedDeviceConnection installApplication:v17 withProvisioningProfiles:profilesCopy onPairedDevice:deviceCopy completion:v18];
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

- (void)installApplication:(id)application withProvisioningProfiles:(id)profiles onPairedDevice:(id)device completionWithError:(id)error
{
  errorCopy = error;
  v11 = MEMORY[0x277CEAF80];
  deviceCopy = device;
  profilesCopy = profiles;
  applicationCopy = application;
  sharedDeviceConnection = [v11 sharedDeviceConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__SPDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completionWithError___block_invoke;
  v17[3] = &unk_278B7F000;
  v17[4] = self;
  v18 = errorCopy;
  v16 = errorCopy;
  [sharedDeviceConnection installApplication:applicationCopy withProvisioningProfiles:profilesCopy onPairedDevice:deviceCopy completion:v17];
}

void __101__SPDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completionWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  (*(v4 + 16))(v4, [v5 appInstallStateForAppConduitInstallState:a2], v6);
}

- (void)installProvisioningProfileWithURL:(id)l onPairedDevice:(id)device completion:(id)completion
{
  v7 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  deviceCopy = device;
  lCopy = l;
  sharedDeviceConnection = [v7 sharedDeviceConnection];
  [sharedDeviceConnection installProvisioningProfileWithURL:lCopy onPairedDevice:deviceCopy completion:completionCopy];
}

- (void)removeProvisioningProfileWithID:(id)d fromPairedDevice:(id)device completion:(id)completion
{
  v7 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  deviceCopy = device;
  dCopy = d;
  sharedDeviceConnection = [v7 sharedDeviceConnection];
  [sharedDeviceConnection removeProvisioningProfileWithID:dCopy fromPairedDevice:deviceCopy completion:completionCopy];
}

- (void)fetchProvisioningProfilesForPairedDevice:(id)device completion:(id)completion
{
  v5 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  deviceCopy = device;
  sharedDeviceConnection = [v5 sharedDeviceConnection];
  [sharedDeviceConnection fetchProvisioningProfilesForPairedDevice:deviceCopy completion:completionCopy];
}

- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)d forPairedDevice:(id)device completion:(id)completion
{
  v7 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  deviceCopy = device;
  dCopy = d;
  sharedDeviceConnection = [v7 sharedDeviceConnection];
  [sharedDeviceConnection fetchProvisioningProfilesForApplicationWithBundleID:dCopy forPairedDevice:deviceCopy completion:completionCopy];
}

- (void)updatePreferencesForApplicationWithIdentifier:(id)identifier preferences:(id)preferences forPairedDevice:(id)device completion:(id)completion
{
  v9 = MEMORY[0x277CEAF80];
  completionCopy = completion;
  deviceCopy = device;
  preferencesCopy = preferences;
  identifierCopy = identifier;
  sharedDeviceConnection = [v9 sharedDeviceConnection];
  [sharedDeviceConnection updatePreferencesForApplicationWithIdentifier:identifierCopy preferences:preferencesCopy forPairedDevice:deviceCopy completion:completionCopy];
}

- (int64_t)appInstallStateForAppConduitInstallState:(int64_t)state
{
  stateCopy = state;
  if (state >= 0xF)
  {
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SPDeviceConnection appInstallStateForAppConduitInstallState:];
    }

    return 0;
  }

  return stateCopy;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertyCurrentUserLocale(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"SPDeviceConnection.m" lineNumber:48 description:{@"%s", dlerror()}];

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