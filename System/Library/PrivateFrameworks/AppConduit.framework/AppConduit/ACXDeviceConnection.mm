@interface ACXDeviceConnection
+ (id)sharedDeviceConnection;
+ (void)_removeFilesAtURL:(id)a3;
+ (void)performUninstallationCleanup;
- (ACXDeviceConnection)init;
- (ACXDeviceConnectionDelegate)delegate;
- (BOOL)_companionAppWithoutCounterparts:(id)a3;
- (BOOL)_onQueue_createXPCConnectionIfNecessary:(id *)a3;
- (BOOL)_onQueue_enableObserversIfNeededForAValidXPCConnection;
- (BOOL)acknowledgeTestFlightInstallBegunForApp:(id)a3 onDeviceWithPairingID:(id)a4 error:(id *)a5;
- (BOOL)cancelUpdatePendingForCompanionApp:(id)a3 error:(id *)a4;
- (BOOL)fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:(id)a3 returningDatabaseUUID:(id *)a4 lastSequenceNumber:(unint64_t *)a5 error:(id *)a6;
- (BOOL)fetchApplicationDatabaseSyncInformationForPairedDevice:(id)a3 returningDatabaseUUID:(id *)a4 lastSequenceNumber:(unint64_t *)a5 error:(id *)a6;
- (BOOL)getAlwaysInstall:(BOOL *)a3 forPairedDevice:(id)a4 error:(id *)a5;
- (BOOL)getApplicationIsInstalled:(BOOL *)a3 onAnyPairedDeviceWithBundleID:(id)a4 error:(id *)a5;
- (BOOL)getApplicationIsInstalled:(BOOL *)a3 onAnyPairedDeviceWithCompanionBundleID:(id)a4 error:(id *)a5;
- (BOOL)getApplicationIsInstalled:(BOOL *)a3 onDeviceWithPairingID:(id)a4 withCompanionBundleID:(id)a5 error:(id *)a6;
- (BOOL)getApplicationIsInstalled:(BOOL *)a3 onPairedDevice:(id)a4 withCompanionBundleID:(id)a5 error:(id *)a6;
- (BOOL)getApplicationIsInstalled:(BOOL *)a3 withBundleID:(id)a4 onDeviceWithPairingID:(id)a5 error:(id *)a6;
- (BOOL)getApplicationIsInstalled:(BOOL *)a3 withBundleID:(id)a4 onPairedDevice:(id)a5 error:(id *)a6;
- (BOOL)getApplicationWithBundleID:(id)a3 willInstallAfterPairing:(BOOL *)a4 onDevice:(id)a5 error:(id *)a6;
- (BOOL)getSystemAppInstallability:(BOOL *)a3 onDeviceWithPairingID:(id)a4 withBundleID:(id)a5 error:(id *)a6;
- (BOOL)getSystemAppInstallability:(BOOL *)a3 onPairedDevice:(id)a4 withBundleID:(id)a5 error:(id *)a6;
- (BOOL)installApplication:(id)a3 onPairedDevice:(id)a4 installationStatus:(int64_t *)a5 error:(id *)a6;
- (BOOL)installApplication:(id)a3 withProvisioningProfiles:(id)a4 onPairedDevice:(id)a5 installationStatus:(int64_t *)a6 error:(id *)a7;
- (BOOL)installApplicationAtURL:(id)a3 onDeviceWithPairingID:(id)a4 installOptions:(id)a5 size:(int64_t)a6 installationStatus:(int64_t *)a7 error:(id *)a8;
- (BOOL)installApplicationAtURL:(id)a3 onPairedDevice:(id)a4 installOptions:(id)a5 size:(int64_t)a6 installationStatus:(int64_t *)a7 error:(id *)a8;
- (BOOL)installProvisioningProfileWithURL:(id)a3 onPairedDevice:(id)a4 error:(id *)a5;
- (BOOL)killDaemonForTestingWithError:(id *)a3;
- (BOOL)removeApplication:(id)a3 fromPairedDevice:(id)a4 removalStatus:(int64_t *)a5 error:(id *)a6;
- (BOOL)removeProvisioningProfileWithID:(id)a3 fromPairedDevice:(id)a4 error:(id *)a5;
- (BOOL)setUpdatePendingForCompanionApp:(id)a3 error:(id *)a4;
- (BOOL)updatePreferencesForApplicationWithIdentifier:(id)a3 preferences:(id)a4 writingToPreferencesLocation:(unint64_t)a5 forPairedDevice:(id)a6 options:(unint64_t)a7 error:(id *)a8;
- (id)_locallyAvailableApplicationWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)_proxyWithErrorHandler:(id)a3;
- (id)_synchronousProxyWithErrorHandler:(id)a3;
- (id)_validateAndExtractProfiles:(id)a3 error:(id *)a4;
- (id)applicationOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 error:(id *)a5;
- (id)applicationOnPairedDevice:(id)a3 withBundleID:(id)a4 error:(id *)a5;
- (id)applicationRemovabilityForPairedDevice:(id)a3 error:(id *)a4;
- (id)copyLocalizedValuesFromAllDevicesForInfoPlistKeys:(id)a3 forAppWithBundleID:(id)a4 fetchingFirstMatchingLocalizationInList:(id)a5 error:(id *)a6;
- (id)copyRemoteDuplicatedClassInfoWithError:(id *)a3;
- (id)installableSystemAppWithBundleID:(id)a3 onDeviceWithPairingID:(id)a4 error:(id *)a5;
- (id)installableSystemAppWithBundleID:(id)a3 onPairedDevice:(id)a4 error:(id *)a5;
- (id)locallyAvailableApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 error:(id *)a5;
- (id)locallyAvailableApplicationWithContainingApplicationBundleID:(id)a3 forDeviceWithPairingID:(id)a4 error:(id *)a5;
- (id)locallyAvailableApplicationWithContainingApplicationBundleID:(id)a3 forPairedDevice:(id)a4 error:(id *)a5;
- (id)provisioningProfilesForApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 error:(id *)a5;
- (id)provisioningProfilesForPairedDevice:(id)a3 error:(id *)a4;
- (id)watchAppBundleIDForCompanionAppBundleID:(id)a3 error:(id *)a4;
- (id)watchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)a3 error:(id *)a4;
- (void)_deviceDidBecomeActiveNotification:(id)a3;
- (void)_deviceDidPairNotification:(id)a3;
- (void)_fetchLocallyAvailableApplicationWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)_invalidateXPCConnection;
- (void)_onQueue_beginMonitoringNanoRegistryDeviceState;
- (void)_onQueue_endMonitoringNanoRegistryDeviceState;
- (void)_onQueue_reEstablishObserverConnectionIfNeeded;
- (void)activeComplicationsForPairedDevice:(id)a3 completion:(id)a4;
- (void)addObserver:(id)a3;
- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)a3;
- (void)applicationIsInstalledOnAnyPairedDeviceWithBundleID:(id)a3 completion:(id)a4;
- (void)applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:(id)a3 completion:(id)a4;
- (void)applicationIsInstalledOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5;
- (void)applicationIsInstalledOnDeviceWithPairingID:(id)a3 withCompanionBundleID:(id)a4 completion:(id)a5;
- (void)applicationIsInstalledOnPairedDevice:(id)a3 withBundleID:(id)a4 completion:(id)a5;
- (void)applicationIsInstalledOnPairedDevice:(id)a3 withCompanionBundleID:(id)a4 completion:(id)a5;
- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)applicationsUpdated:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)applictionRemovabilityForPairedDevice:(id)a3 completion:(id)a4;
- (void)cancelPendingInstallations;
- (void)cancelUpdatePendingForCompanionApp:(id)a3 completion:(id)a4;
- (void)enumerateInstallableSystemAppsOnDeviceWithPairingID:(id)a3 withBlock:(id)a4;
- (void)enumerateInstallableSystemAppsOnPairedDevice:(id)a3 withBlock:(id)a4;
- (void)enumerateInstalledApplicationsOnDeviceWithPairingID:(id)a3 withBlock:(id)a4;
- (void)enumerateInstalledApplicationsOnPairedDevice:(id)a3 withBlock:(id)a4;
- (void)enumerateLocallyAvailableApplicationsForDeviceWithPairingID:(id)a3 options:(unint64_t)a4 withBlock:(id)a5;
- (void)enumerateLocallyAvailableApplicationsForPairedDevice:(id)a3 options:(unint64_t)a4 withBlock:(id)a5;
- (void)fetchApplicationOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5;
- (void)fetchApplicationOnPairedDevice:(id)a3 withBundleID:(id)a4 completion:(id)a5;
- (void)fetchApplicationWithContainingApplicationBundleID:(id)a3 completion:(id)a4;
- (void)fetchInfoForApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5;
- (void)fetchInstallableSystemAppWithBundleID:(id)a3 onDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)fetchInstallableSystemAppWithBundleID:(id)a3 onPairedDevice:(id)a4 completion:(id)a5;
- (void)fetchInstalledApplicationsForPairedDevice:(id)a3 completion:(id)a4;
- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)a3 withErrorCompletion:(id)a4;
- (void)fetchInstalledComplicationsForPairedDevice:(id)a3 completion:(id)a4;
- (void)fetchLocallyAvailableApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5;
- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5;
- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5;
- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5;
- (void)fetchProvisioningProfilesForPairedDevice:(id)a3 completion:(id)a4;
- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)a3 completion:(id)a4;
- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)a3 completion:(id)a4;
- (void)getAlwaysInstallForPairedDevice:(id)a3 completion:(id)a4;
- (void)getApplicationWithBundleID:(id)a3 willInstallAfterPairingOnDevice:(id)a4 completion:(id)a5;
- (void)installAllApplications;
- (void)installApplication:(id)a3 onPairedDevice:(id)a4 completion:(id)a5;
- (void)installApplication:(id)a3 withProvisioningProfiles:(id)a4 onPairedDevice:(id)a5 completion:(id)a6;
- (void)installApplicationAtURL:(id)a3 onDeviceWithPairingID:(id)a4 installOptions:(id)a5 size:(int64_t)a6 completion:(id)a7;
- (void)installApplicationAtURL:(id)a3 onPairedDevice:(id)a4 installOptions:(id)a5 size:(int64_t)a6 completion:(id)a7;
- (void)installProvisioningProfileWithURL:(id)a3 onPairedDevice:(id)a4 completion:(id)a5;
- (void)observerRegistrationSuccessful;
- (void)removabilityDidChangeForApplications:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)removeApplication:(id)a3 fromPairedDevice:(id)a4 completion:(id)a5;
- (void)removeApplication:(id)a3 fromPairedDevice:(id)a4 completionWithError:(id)a5;
- (void)removeObserver:(id)a3;
- (void)removeProvisioningProfileWithID:(id)a3 fromPairedDevice:(id)a4 completion:(id)a5;
- (void)retryPendingAppInstallationsForPairedDevice:(id)a3;
- (void)setAlwaysInstall:(id)a3;
- (void)setAlwaysInstall:(id)a3 forDevice:(id)a4;
- (void)setUpdatePendingForCompanionApp:(id)a3 completion:(id)a4;
- (void)systemAppIsInstallableOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5;
- (void)systemAppIsInstallableOnPairedDevice:(id)a3 withBundleID:(id)a4 completion:(id)a5;
- (void)updateInstallProgressForApplication:(id)a3 progress:(double)a4 phase:(unint64_t)a5;
- (void)updatePreferencesForApplicationWithIdentifier:(id)a3 preferences:(id)a4 writingToPreferencesLocation:(unint64_t)a5 forPairedDevice:(id)a6 options:(unint64_t)a7 completion:(id)a8;
- (void)updatedInstallStateForApplicationsWithInfo:(id)a3;
@end

@implementation ACXDeviceConnection

+ (id)sharedDeviceConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ACXDeviceConnection_sharedDeviceConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedDeviceConnection_onceToken != -1)
  {
    dispatch_once(&sharedDeviceConnection_onceToken, block);
  }

  v2 = sharedDeviceConnection_sharedConnection;

  return v2;
}

uint64_t __45__ACXDeviceConnection_sharedDeviceConnection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedDeviceConnection_sharedConnection = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ACXDeviceConnection)init
{
  v12.receiver = self;
  v12.super_class = ACXDeviceConnection;
  v2 = [(ACXDeviceConnection *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.appconduit.DeviceConnection.internal", v5);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.appconduit.DeviceConnection.observer", v8);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v9;
  }

  return v2;
}

- (void)_onQueue_beginMonitoringNanoRegistryDeviceState
{
  v3 = [(ACXDeviceConnection *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  if (![(ACXDeviceConnection *)self monitoringForDeviceChanges])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel__deviceDidBecomeActiveNotification_ name:*MEMORY[0x277D2BC48] object:0];
    [v4 addObserver:self selector:sel__deviceDidPairNotification_ name:*MEMORY[0x277D2BC68] object:0];
    [(ACXDeviceConnection *)self setMonitoringForDeviceChanges:1];
  }
}

- (void)_onQueue_endMonitoringNanoRegistryDeviceState
{
  v3 = [(ACXDeviceConnection *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  if ([(ACXDeviceConnection *)self monitoringForDeviceChanges])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x277D2BC48] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D2BC68] object:0];
    [(ACXDeviceConnection *)self setMonitoringForDeviceChanges:0];
  }
}

- (void)_deviceDidBecomeActiveNotification:(id)a3
{
  v4 = a3;
  v5 = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ACXDeviceConnection__deviceDidBecomeActiveNotification___block_invoke;
  v7[3] = &unk_278C8D358;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __58__ACXDeviceConnection__deviceDidBecomeActiveNotification___block_invoke(uint64_t a1)
{
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v2 = [*(a1 + 32) userInfo];
    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277D2BC38]];
    MOLogWrite();
  }

  v3 = *(a1 + 40);

  return [v3 _onQueue_reEstablishObserverConnectionIfNeeded];
}

- (void)_deviceDidPairNotification:(id)a3
{
  v4 = a3;
  v5 = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ACXDeviceConnection__deviceDidPairNotification___block_invoke;
  v7[3] = &unk_278C8D358;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __50__ACXDeviceConnection__deviceDidPairNotification___block_invoke(uint64_t a1)
{
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v2 = [*(a1 + 32) userInfo];
    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277D2BC38]];
    MOLogWrite();
  }

  v3 = *(a1 + 40);

  return [v3 _onQueue_reEstablishObserverConnectionIfNeeded];
}

- (BOOL)_onQueue_createXPCConnectionIfNecessary:(id *)a3
{
  v5 = [(ACXDeviceConnection *)self xpcConnection];

  if (v5)
  {
    return 1;
  }

  v6 = SecTaskCreateFromSelf(0);
  if (v6)
  {
    v7 = v6;
    v8 = SecTaskCopyValueForEntitlement(v6, @"com.apple.companionappd.connect.allow", 0);
    if (v8)
    {
      v9 = v8;
      v10 = ACXBooleanValue(v8, 0);
      CFRelease(v7);
      CFRelease(v9);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      CFRelease(v7);
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [ACXDeviceConnection _onQueue_createXPCConnectionIfNecessary:];
  }

LABEL_12:
  if ((gTestModeEnabled & 1) == 0)
  {
    v11 = [MEMORY[0x277D2BCF8] sharedInstance];
    v12 = [v11 getActivePairedDevice];

    if (!v12)
    {
      v29 = _CreateAndLogError("[ACXDeviceConnection _onQueue_createXPCConnectionIfNecessary:]", 130, @"ACXErrorDomain", 54, 0, 0, @"There is no active paired watch.", v13, v33);
      v27 = v29;
      if (a3)
      {
        v30 = v29;
        *a3 = v27;
      }

      v31 = [(ACXDeviceConnection *)self observers];
      v32 = [v31 count];

      if (v32)
      {
        [(ACXDeviceConnection *)self _onQueue_beginMonitoringNanoRegistryDeviceState];
      }

      goto LABEL_24;
    }

    [(ACXDeviceConnection *)self _onQueue_endMonitoringNanoRegistryDeviceState];
  }

  v14 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.appconduitd.device-connection" options:4096];
  [(ACXDeviceConnection *)self setXpcConnection:v14];

  v15 = [(ACXDeviceConnection *)self xpcConnection];

  if (v15)
  {
    v17 = +[ACXDeviceConnectionProtocolInterface interface];
    v18 = [(ACXDeviceConnection *)self xpcConnection];
    [v18 setRemoteObjectInterface:v17];

    v19 = +[ACXDeviceConnectionDelegateProtocolInterface interface];
    v20 = [(ACXDeviceConnection *)self xpcConnection];
    [v20 setExportedInterface:v19];

    v21 = [(ACXDeviceConnection *)self xpcConnection];
    [v21 setExportedObject:self];

    objc_initWeak(&location, self);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __63__ACXDeviceConnection__onQueue_createXPCConnectionIfNecessary___block_invoke;
    v36[3] = &unk_278C8D3A8;
    objc_copyWeak(&v37, &location);
    v22 = [(ACXDeviceConnection *)self xpcConnection];
    [v22 setInterruptionHandler:v36];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __63__ACXDeviceConnection__onQueue_createXPCConnectionIfNecessary___block_invoke_3;
    v34[3] = &unk_278C8D3A8;
    objc_copyWeak(&v35, &location);
    v23 = [(ACXDeviceConnection *)self xpcConnection];
    [v23 setInvalidationHandler:v34];

    v24 = [(ACXDeviceConnection *)self xpcConnection];
    [v24 resume];

    [(ACXDeviceConnection *)self _onQueue_enableObserversIfNeededForAValidXPCConnection];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
    return 1;
  }

  v26 = _CreateAndLogError("[ACXDeviceConnection _onQueue_createXPCConnectionIfNecessary:]", 148, @"ACXErrorDomain", 1, 0, 0, @"Failed to create NSXPCConnection for service %@", v16, @"com.apple.appconduitd.device-connection");
  v27 = v26;
  if (a3)
  {
    v28 = v26;
    *a3 = v27;
  }

LABEL_24:

  return 0;
}

void __63__ACXDeviceConnection__onQueue_createXPCConnectionIfNecessary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__ACXDeviceConnection__onQueue_createXPCConnectionIfNecessary___block_invoke_2;
    block[3] = &unk_278C8D380;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __63__ACXDeviceConnection__onQueue_createXPCConnectionIfNecessary___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setObserversEnabled:0];
  v2 = *(a1 + 32);

  return [v2 _onQueue_reEstablishObserverConnectionIfNeeded];
}

void __63__ACXDeviceConnection__onQueue_createXPCConnectionIfNecessary___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _invalidateXPCConnection];
    WeakRetained = v2;
  }
}

- (BOOL)_onQueue_enableObserversIfNeededForAValidXPCConnection
{
  v3 = [(ACXDeviceConnection *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v4 = [(ACXDeviceConnection *)self observers];
  v5 = [v4 count];

  if (![(ACXDeviceConnection *)self observersEnabled])
  {
    v6 = [(ACXDeviceConnection *)self xpcConnection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__ACXDeviceConnection__onQueue_enableObserversIfNeededForAValidXPCConnection__block_invoke;
    v10[3] = &unk_278C8D3D0;
    v10[4] = &v11;
    v10[5] = v5;
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v10];
    [v7 enableObservers];

    if (!v12[5])
    {
      [(ACXDeviceConnection *)self setObserversEnabled:1];
    }
  }

  v8 = v12[5] == 0;
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __77__ACXDeviceConnection__onQueue_enableObserversIfNeededForAValidXPCConnection__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v4 = *(a1 + 40);
    MOLogWrite();
  }
}

- (void)_onQueue_reEstablishObserverConnectionIfNeeded
{
  v3 = [(ACXDeviceConnection *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v6 = 0;
  v4 = [(ACXDeviceConnection *)self _onQueue_createXPCConnectionIfNecessary:&v6];
  v5 = v6;
  if (v4)
  {
    [(ACXDeviceConnection *)self _onQueue_enableObserversIfNeededForAValidXPCConnection];
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)_invalidateXPCConnection
{
  v3 = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ACXDeviceConnection__invalidateXPCConnection__block_invoke;
  block[3] = &unk_278C8D380;
  block[4] = self;
  dispatch_async(v3, block);
}

void __47__ACXDeviceConnection__invalidateXPCConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];
  [v2 invalidate];

  [*(a1 + 32) setXpcConnection:0];
  [*(a1 + 32) setObserversEnabled:0];
  v10 = [*(a1 + 32) observers];
  if ([v10 count])
  {
    v3 = [*(a1 + 32) observerReEstablishTimer];

    if (!v3)
    {
      v4 = [*(a1 + 32) internalQueue];
      v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
      [*(a1 + 32) setObserverReEstablishTimer:v5];

      v6 = [*(a1 + 32) observerReEstablishTimer];
      v7 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

      v8 = [*(a1 + 32) observerReEstablishTimer];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __47__ACXDeviceConnection__invalidateXPCConnection__block_invoke_2;
      handler[3] = &unk_278C8D380;
      handler[4] = *(a1 + 32);
      dispatch_source_set_event_handler(v8, handler);

      v9 = [*(a1 + 32) observerReEstablishTimer];
      dispatch_resume(v9);
    }
  }

  else
  {
  }
}

uint64_t __47__ACXDeviceConnection__invalidateXPCConnection__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _onQueue_reEstablishObserverConnectionIfNeeded];
  v2 = [*(a1 + 32) observerReEstablishTimer];
  dispatch_source_cancel(v2);

  v3 = *(a1 + 32);

  return [v3 setObserverReEstablishTimer:0];
}

- (id)_proxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = [(ACXDeviceConnection *)self internalQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__ACXDeviceConnection__proxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278C8D3F8;
  v9[4] = self;
  v11 = &v13;
  v12 = &v19;
  v6 = v4;
  v10 = v6;
  dispatch_sync(v5, v9);

  if (v14[5])
  {
    v6[2](v6);
  }

  v7 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

void __46__ACXDeviceConnection__proxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 _onQueue_createXPCConnectionIfNecessary:&v12];
  v4 = v12;
  v5 = v4;
  if (v3)
  {
    v6 = [*(a1 + 32) xpcConnection];
    v7 = [v6 remoteObjectProxyWithErrorHandler:*(a1 + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = *(*(a1 + 48) + 8);
    v11 = v4;
    v6 = *(v10 + 40);
    *(v10 + 40) = v11;
  }
}

- (id)_synchronousProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = [(ACXDeviceConnection *)self internalQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ACXDeviceConnection__synchronousProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278C8D3F8;
  v9[4] = self;
  v11 = &v13;
  v12 = &v19;
  v6 = v4;
  v10 = v6;
  dispatch_sync(v5, v9);

  if (v14[5])
  {
    v6[2](v6);
  }

  v7 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

void __57__ACXDeviceConnection__synchronousProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 _onQueue_createXPCConnectionIfNecessary:&v12];
  v4 = v12;
  v5 = v4;
  if (v3)
  {
    v6 = [*(a1 + 32) xpcConnection];
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:*(a1 + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = *(*(a1 + 48) + 8);
    v11 = v4;
    v6 = *(v10 + 40);
    *(v10 + 40) = v11;
  }
}

- (void)updatedInstallStateForApplicationsWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ACXDeviceConnection_updatedInstallStateForApplicationsWithInfo___block_invoke;
  v7[3] = &unk_278C8D358;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __66__ACXDeviceConnection_updatedInstallStateForApplicationsWithInfo___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [*(a1 + 32) observers];
  v2 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v29;
    v5 = MEMORY[0x277D85CD0];
    v17 = *v29;
    do
    {
      v6 = 0;
      v18 = v3;
      do
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v20 = v6;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v8 = *(a1 + 40);
          v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v25;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v25 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v24 + 1) + 8 * i);
                v14 = [*(a1 + 40) objectForKeyedSubscript:{v13, v17}];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __66__ACXDeviceConnection_updatedInstallStateForApplicationsWithInfo___block_invoke_2;
                block[3] = &unk_278C8D420;
                block[4] = v7;
                v22 = v14;
                v23 = v13;
                v15 = v14;
                dispatch_async(v5, block);
              }

              v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v10);
          }

          v4 = v17;
          v3 = v18;
          v6 = v20;
        }

        ++v6;
      }

      while (v6 != v3);
      v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v3);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __66__ACXDeviceConnection_updatedInstallStateForApplicationsWithInfo___block_invoke_2(uint64_t a1)
{
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v11 = *(a1 + 48);
    v10 = *(a1 + 32);
    v9 = v4;
    MOLogWrite();
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) integerValue];

  return [v6 updateInstallStateForApplication:v5 installState:v7];
}

- (void)updateInstallProgressForApplication:(id)a3 progress:(double)a4 phase:(unint64_t)a5
{
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__ACXDeviceConnection_updateInstallProgressForApplication_progress_phase___block_invoke;
  v11[3] = &unk_278C8D448;
  v12 = v8;
  v13 = a5;
  v14 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_sync(v9, v11);
}

void __74__ACXDeviceConnection_updateInstallProgressForApplication_progress_phase___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = MEMORY[0x277D85CD0];
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __74__ACXDeviceConnection_updateInstallProgressForApplication_progress_phase___block_invoke_2;
          v11[3] = &unk_278C8D448;
          v9 = *(a1 + 40);
          v13 = *(a1 + 48);
          v11[4] = v8;
          v14 = *(a1 + 56);
          v12 = v9;
          dispatch_async(v6, v11);
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __74__ACXDeviceConnection_updateInstallProgressForApplication_progress_phase___block_invoke_2(double *a1)
{
  if (*(a1 + 6) >= 3uLL)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(a1 + 6);
  }

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v3 = *(a1 + 4);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v12 = *(a1 + 5);
    v11 = *(a1 + 7);
    v10 = *(a1 + 4);
    MOLogWrite();
  }

  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = a1[7];

  return [v6 updateInstallProgressForApplication:v7 progress:v2 installPhase:v8];
}

- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ACXDeviceConnection_applicationsInstalled_onDeviceWithPairingID___block_invoke;
  block[3] = &unk_278C8D420;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __67__ACXDeviceConnection_applicationsInstalled_onDeviceWithPairingID___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [a1[4] observers];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [a1[4] observerQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __67__ACXDeviceConnection_applicationsInstalled_onDeviceWithPairingID___block_invoke_2;
          block[3] = &unk_278C8D420;
          block[4] = v7;
          v11 = a1[5];
          v12 = a1[6];
          dispatch_async(v8, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __67__ACXDeviceConnection_applicationsInstalled_onDeviceWithPairingID___block_invoke_2(uint64_t a1)
{
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    [*(a1 + 40) count];
    v10 = *(a1 + 48);
    MOLogWrite();
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);

  return [v6 applicationsInstalled:v7 onDeviceWithPairingID:v8];
}

- (void)applicationsUpdated:(id)a3 onDeviceWithPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ACXDeviceConnection_applicationsUpdated_onDeviceWithPairingID___block_invoke;
  block[3] = &unk_278C8D420;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __65__ACXDeviceConnection_applicationsUpdated_onDeviceWithPairingID___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [a1[4] observers];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [a1[4] observerQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __65__ACXDeviceConnection_applicationsUpdated_onDeviceWithPairingID___block_invoke_2;
          block[3] = &unk_278C8D420;
          block[4] = v7;
          v11 = a1[5];
          v12 = a1[6];
          dispatch_async(v8, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __65__ACXDeviceConnection_applicationsUpdated_onDeviceWithPairingID___block_invoke_2(uint64_t a1)
{
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    [*(a1 + 40) count];
    v10 = *(a1 + 48);
    MOLogWrite();
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);

  return [v6 applicationsUpdated:v7 onDeviceWithPairingID:v8];
}

- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ACXDeviceConnection_applicationsUninstalled_onDeviceWithPairingID___block_invoke;
  block[3] = &unk_278C8D420;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __69__ACXDeviceConnection_applicationsUninstalled_onDeviceWithPairingID___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [a1[4] observers];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [a1[4] observerQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __69__ACXDeviceConnection_applicationsUninstalled_onDeviceWithPairingID___block_invoke_2;
          block[3] = &unk_278C8D420;
          block[4] = v7;
          v11 = a1[5];
          v12 = a1[6];
          dispatch_async(v8, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __69__ACXDeviceConnection_applicationsUninstalled_onDeviceWithPairingID___block_invoke_2(uint64_t a1)
{
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    [*(a1 + 40) count];
    v10 = *(a1 + 48);
    MOLogWrite();
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);

  return [v6 applicationsUninstalled:v7 onDeviceWithPairingID:v8];
}

- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)a3
{
  v4 = a3;
  v5 = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__ACXDeviceConnection_applicationDatabaseResyncedForDeviceWithPairingID___block_invoke;
  v7[3] = &unk_278C8D358;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __73__ACXDeviceConnection_applicationDatabaseResyncedForDeviceWithPairingID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) observerQueue];
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __73__ACXDeviceConnection_applicationDatabaseResyncedForDeviceWithPairingID___block_invoke_2;
          v10[3] = &unk_278C8D358;
          v10[4] = v7;
          v11 = *(a1 + 40);
          dispatch_async(v8, v10);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __73__ACXDeviceConnection_applicationDatabaseResyncedForDeviceWithPairingID___block_invoke_2(uint64_t a1)
{
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    MOLogWrite();
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 applicationDatabaseResyncedForDeviceWithPairingID:v6];
}

- (void)removabilityDidChangeForApplications:(id)a3 onDeviceWithPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ACXDeviceConnection_removabilityDidChangeForApplications_onDeviceWithPairingID___block_invoke;
  block[3] = &unk_278C8D420;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __82__ACXDeviceConnection_removabilityDidChangeForApplications_onDeviceWithPairingID___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [a1[4] observers];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [a1[4] observerQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __82__ACXDeviceConnection_removabilityDidChangeForApplications_onDeviceWithPairingID___block_invoke_2;
          block[3] = &unk_278C8D420;
          block[4] = v7;
          v11 = a1[5];
          v12 = a1[6];
          dispatch_async(v8, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __82__ACXDeviceConnection_removabilityDidChangeForApplications_onDeviceWithPairingID___block_invoke_2(uint64_t a1)
{
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    [*(a1 + 40) count];
    v10 = *(a1 + 48);
    MOLogWrite();
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);

  return [v6 removabilityDidChangeForApplications:v7 onDeviceWithPairingID:v8];
}

- (void)observerRegistrationSuccessful
{
  v3 = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ACXDeviceConnection_observerRegistrationSuccessful__block_invoke;
  block[3] = &unk_278C8D380;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __53__ACXDeviceConnection_observerRegistrationSuccessful__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) observerQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __53__ACXDeviceConnection_observerRegistrationSuccessful__block_invoke_2;
          block[3] = &unk_278C8D380;
          block[4] = v7;
          dispatch_async(v8, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __53__ACXDeviceConnection_observerRegistrationSuccessful__block_invoke_2(uint64_t a1)
{
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v6 = NSStringFromClass(v3);
    v7 = *(a1 + 32);
    MOLogWrite();
  }

  v4 = *(a1 + 32);

  return [v4 observerRegistered];
}

+ (void)performUninstallationCleanup
{
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v3 = ACXCopyLogDirectory();
  [a1 _removeFilesAtURL:v3];

  v4 = ACXCopyDataDirectory();
  [a1 _removeFilesAtURL:v4];

  v5 = ACXCopyStagingDirectoryPath();
  [a1 _removeFilesAtURL:v5];
}

+ (void)_removeFilesAtURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v8];
  v6 = v8;

  if (v5)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
LABEL_7:
      v7 = [v3 path];
      MOLogWrite();
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    goto LABEL_7;
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ACXDeviceConnection_addObserver___block_invoke;
  v7[3] = &unk_278C8D358;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __35__ACXDeviceConnection_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) observers];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = *(a1 + 32);
    v10 = 0;
    v6 = [v5 _onQueue_createXPCConnectionIfNecessary:&v10];
    v7 = v10;
    if (v6)
    {
      v8 = [*(a1 + 32) xpcConnection];
      v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_1];
      [v9 enableObservers];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }
}

uint64_t __35__ACXDeviceConnection_addObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = gLogHandle;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v5 = v2;
    v3 = MOLogWrite();
    v2 = v5;
  }

  return MEMORY[0x2821F96F8](v3, v2);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ACXDeviceConnection_removeObserver___block_invoke;
  v7[3] = &unk_278C8D358;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __38__ACXDeviceConnection_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) observers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = [*(a1 + 32) observerReEstablishTimer];

    if (v5)
    {
      v6 = [*(a1 + 32) observerReEstablishTimer];
      dispatch_source_cancel(v6);

      [*(a1 + 32) setObserverReEstablishTimer:0];
    }

    v8 = [*(a1 + 32) xpcConnection];
    v7 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_95];
    [v7 disableObservers];
  }
}

uint64_t __38__ACXDeviceConnection_removeObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = gLogHandle;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v5 = v2;
    v3 = MOLogWrite();
    v2 = v5;
  }

  return MEMORY[0x2821F96F8](v3, v2);
}

- (void)fetchInstalledApplicationsForPairedDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__ACXDeviceConnection_fetchInstalledApplicationsForPairedDevice_completion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [v8 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v9 fetchInstalledApplicationsForDeviceWithPairingID:v10 completion:v7];
}

- (void)fetchInstalledComplicationsForPairedDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__ACXDeviceConnection_fetchInstalledComplicationsForPairedDevice_completion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [v8 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v9 fetchInstalledComplicationsForDeviceWithPairingID:v10 completion:v7];
}

- (void)activeComplicationsForPairedDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ACXDeviceConnection_activeComplicationsForPairedDevice_completion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [v8 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v9 activeComplicationsForDeviceWithPairingID:v10 completion:v7];
}

- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)a3 withErrorCompletion:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__ACXDeviceConnection_fetchInstalledCompatibleApplicationsWithDevice_withErrorCompletion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [v8 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v9 fetchInstalledCompatibleApplicationsForDeviceWithPairingID:v10 completion:v7];
}

- (void)fetchApplicationWithContainingApplicationBundleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__ACXDeviceConnection_fetchApplicationWithContainingApplicationBundleID_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 fetchApplicationWithContainingApplicationBundleID:v8 completion:v7];
}

- (void)fetchInfoForApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5
{
  v8 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__ACXDeviceConnection_fetchInfoForApplicationWithBundleID_forPairedDevice_completion___block_invoke;
  v14[3] = &unk_278C8D4B0;
  v15 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v14];
  v13 = [v10 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v12 fetchInfoForApplicationWithBundleID:v11 forDeviceWithPairingID:v13 completion:v9];
}

- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__ACXDeviceConnection_fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:v8 completion:v7];
}

- (id)watchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__ACXDeviceConnection_watchAppBundleURLWithinCompanionAppWithWatchAppIdentifier_error___block_invoke;
  v12[3] = &unk_278C8D4D8;
  v12[4] = &v13;
  v7 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__ACXDeviceConnection_watchAppBundleURLWithinCompanionAppWithWatchAppIdentifier_error___block_invoke_2;
  v11[3] = &unk_278C8D500;
  v11[4] = &v13;
  v11[5] = &v19;
  [v7 fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:v6 completion:v11];

  v8 = v20[5];
  if (a4 && !v8)
  {
    *a4 = v14[5];
    v8 = v20[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __87__ACXDeviceConnection_watchAppBundleURLWithinCompanionAppWithWatchAppIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __87__ACXDeviceConnection_watchAppBundleURLWithinCompanionAppWithWatchAppIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__ACXDeviceConnection_fetchWatchAppBundleIDForCompanionAppBundleID_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 fetchWatchAppBundleIDForCompanionAppBundleID:v8 completion:v7];
}

- (id)watchAppBundleIDForCompanionAppBundleID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__ACXDeviceConnection_watchAppBundleIDForCompanionAppBundleID_error___block_invoke;
  v12[3] = &unk_278C8D4D8;
  v12[4] = &v13;
  v7 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ACXDeviceConnection_watchAppBundleIDForCompanionAppBundleID_error___block_invoke_2;
  v11[3] = &unk_278C8D528;
  v11[4] = &v13;
  v11[5] = &v19;
  [v7 fetchWatchAppBundleIDForCompanionAppBundleID:v6 completion:v11];

  v8 = v20[5];
  if (a4 && !v8)
  {
    *a4 = v14[5];
    v8 = v20[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __69__ACXDeviceConnection_watchAppBundleIDForCompanionAppBundleID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __69__ACXDeviceConnection_watchAppBundleIDForCompanionAppBundleID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)installAllApplications
{
  v2 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:&__block_literal_global_105];
  [v2 installAllApplications];
}

uint64_t __45__ACXDeviceConnection_installAllApplications__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = gLogHandle;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v5 = v2;
    v3 = MOLogWrite();
    v2 = v5;
  }

  return MEMORY[0x2821F96F8](v3, v2);
}

- (void)cancelPendingInstallations
{
  v2 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:&__block_literal_global_107];
  [v2 cancelPendingInstallations];
}

uint64_t __49__ACXDeviceConnection_cancelPendingInstallations__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = gLogHandle;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v5 = v2;
    v3 = MOLogWrite();
    v2 = v5;
  }

  return MEMORY[0x2821F96F8](v3, v2);
}

- (void)retryPendingAppInstallationsForPairedDevice:(id)a3
{
  v4 = a3;
  v6 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:&__block_literal_global_109];
  v5 = [v4 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v6 retryPendingAppInstallationsOnDeviceWithPairingID:v5];
}

uint64_t __67__ACXDeviceConnection_retryPendingAppInstallationsForPairedDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = gLogHandle;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v5 = v2;
    v3 = MOLogWrite();
    v2 = v5;
  }

  return MEMORY[0x2821F96F8](v3, v2);
}

- (void)installApplication:(id)a3 onPairedDevice:(id)a4 completion:(id)a5
{
  v8 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__ACXDeviceConnection_installApplication_onPairedDevice_completion___block_invoke;
  v14[3] = &unk_278C8D4B0;
  v15 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v14];
  v13 = [v10 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v12 installApplication:v11 withProvisioningProfileInfo:0 forTestFlight:0 onDeviceWithPairingID:v13 completion:v9];
}

void __68__ACXDeviceConnection_installApplication_onPairedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)installApplication:(id)a3 onPairedDevice:(id)a4 installationStatus:(int64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__ACXDeviceConnection_installApplication_onPairedDevice_installationStatus_error___block_invoke;
  v19[3] = &unk_278C8D4D8;
  v19[4] = &v20;
  v12 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v19];
  v13 = [v11 valueForProperty:*MEMORY[0x277D2BBB8]];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__ACXDeviceConnection_installApplication_onPairedDevice_installationStatus_error___block_invoke_2;
  v18[3] = &unk_278C8D550;
  v18[4] = &v20;
  v18[5] = &v26;
  [v12 installApplication:v10 withProvisioningProfileInfo:0 forTestFlight:0 onDeviceWithPairingID:v13 completion:v18];

  v14 = v21;
  v15 = v21[5];
  if (v15)
  {
    if (a6)
    {
      *a6 = v15;
      v14 = v21;
    }
  }

  else if (a5)
  {
    *a5 = v27[3];
  }

  v16 = v14[5] == 0;
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v16;
}

void __82__ACXDeviceConnection_installApplication_onPairedDevice_installationStatus_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __82__ACXDeviceConnection_installApplication_onPairedDevice_installationStatus_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (id)_validateAndExtractProfiles:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v17 = objc_opt_new();
    v10 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((ACXArrayContainsOnlyClass(v5) & 1) == 0)
  {
    v10 = _CreateAndLogError("[ACXDeviceConnection _validateAndExtractProfiles:error:]", 693, @"ACXErrorDomain", 20, 0, 0, @"Profiles array did not contain only NSURL objects", v6, v24);
    v17 = 0;
LABEL_14:
    v7 = 0;
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v7 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = v5;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v29;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * v12);
        v15 = [v14 lastPathComponent];
        v27 = v13;
        v16 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v14 options:3 error:&v27];
        v10 = v27;

        if (!v16)
        {
          v18 = [v14 path];
          v20 = _CreateAndLogError("[ACXDeviceConnection _validateAndExtractProfiles:error:]", 702, @"ACXErrorDomain", 21, v10, 0, @"Failed to read profile at %@ : %@", v19, v18);

          v17 = 0;
          v10 = v20;
          goto LABEL_19;
        }

        [v7 setObject:v16 forKeyedSubscript:v15];

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

  v17 = v7;
  v7 = v17;
LABEL_19:
  v5 = v25;
  if (a4)
  {
LABEL_20:
    if (!v17)
    {
      v21 = v10;
      *a4 = v10;
    }
  }

LABEL_22:

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)installApplication:(id)a3 withProvisioningProfiles:(id)a4 onPairedDevice:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v23 = 0;
  v13 = [(ACXDeviceConnection *)self _validateAndExtractProfiles:a4 error:&v23];
  v14 = v23;
  if (v13)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __93__ACXDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completion___block_invoke;
    v21 = &unk_278C8D4B0;
    v15 = v12;
    v22 = v15;
    v16 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:&v18];
    v17 = [v11 valueForProperty:{*MEMORY[0x277D2BBB8], v18, v19, v20, v21}];
    [v16 installApplication:v10 withProvisioningProfileInfo:v13 forTestFlight:1 onDeviceWithPairingID:v17 completion:v15];
  }

  else
  {
    (*(v12 + 2))(v12, 0, v14);
  }
}

void __93__ACXDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)installApplication:(id)a3 withProvisioningProfiles:(id)a4 onPairedDevice:(id)a5 installationStatus:(int64_t *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  obj = 0;
  v15 = [(ACXDeviceConnection *)self _validateAndExtractProfiles:v13 error:&obj];
  objc_storeStrong(&v30, obj);
  if (v15)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __107__ACXDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_installationStatus_error___block_invoke;
    v23[3] = &unk_278C8D4D8;
    v23[4] = &v25;
    v16 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v23];
    v17 = [v14 valueForProperty:*MEMORY[0x277D2BBB8]];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __107__ACXDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_installationStatus_error___block_invoke_2;
    v22[3] = &unk_278C8D550;
    v22[4] = &v25;
    v22[5] = &v31;
    [v16 installApplication:v12 withProvisioningProfileInfo:v15 forTestFlight:1 onDeviceWithPairingID:v17 completion:v22];
  }

  v18 = v26;
  v19 = v26[5];
  if (v19)
  {
    if (a7)
    {
      *a7 = v19;
      v18 = v26;
    }
  }

  else if (a6)
  {
    *a6 = v32[3];
  }

  v20 = v18[5] == 0;
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v20;
}

void __107__ACXDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_installationStatus_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __107__ACXDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_installationStatus_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (v9)
  {
    v11 = v6;
    objc_storeStrong(v8, a3);
    v6 = v11;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return MEMORY[0x2821F96F8](v8, v6);
}

- (void)installApplicationAtURL:(id)a3 onPairedDevice:(id)a4 installOptions:(id)a5 size:(int64_t)a6 completion:(id)a7
{
  v12 = *MEMORY[0x277D2BBB8];
  v13 = a7;
  v14 = a5;
  v15 = a3;
  v16 = [a4 valueForProperty:v12];
  [(ACXDeviceConnection *)self installApplicationAtURL:v15 onDeviceWithPairingID:v16 installOptions:v14 size:a6 completion:v13];
}

- (void)installApplicationAtURL:(id)a3 onDeviceWithPairingID:(id)a4 installOptions:(id)a5 size:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __100__ACXDeviceConnection_installApplicationAtURL_onDeviceWithPairingID_installOptions_size_completion___block_invoke;
  v18[3] = &unk_278C8D4B0;
  v19 = v12;
  v13 = v12;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v18];
  [v17 installApplicationAtURL:v16 onDeviceWithPairingID:v15 installOptions:v14 size:a6 completion:v13];
}

void __100__ACXDeviceConnection_installApplicationAtURL_onDeviceWithPairingID_installOptions_size_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)installApplicationAtURL:(id)a3 onPairedDevice:(id)a4 installOptions:(id)a5 size:(int64_t)a6 installationStatus:(int64_t *)a7 error:(id *)a8
{
  v14 = *MEMORY[0x277D2BBB8];
  v15 = a5;
  v16 = a3;
  v17 = [a4 valueForProperty:v14];
  LOBYTE(a8) = [(ACXDeviceConnection *)self installApplicationAtURL:v16 onDeviceWithPairingID:v17 installOptions:v15 size:a6 installationStatus:a7 error:a8];

  return a8;
}

- (BOOL)installApplicationAtURL:(id)a3 onDeviceWithPairingID:(id)a4 installOptions:(id)a5 size:(int64_t)a6 installationStatus:(int64_t *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __114__ACXDeviceConnection_installApplicationAtURL_onDeviceWithPairingID_installOptions_size_installationStatus_error___block_invoke;
  v23[3] = &unk_278C8D4D8;
  v23[4] = &v24;
  v17 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v23];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __114__ACXDeviceConnection_installApplicationAtURL_onDeviceWithPairingID_installOptions_size_installationStatus_error___block_invoke_2;
  v22[3] = &unk_278C8D550;
  v22[4] = &v24;
  v22[5] = &v30;
  [v17 installApplicationAtURL:v14 onDeviceWithPairingID:v15 installOptions:v16 size:a6 completion:v22];

  v18 = v25;
  v19 = v25[5];
  if (v19)
  {
    if (a8)
    {
      *a8 = v19;
      v18 = v25;
    }
  }

  else if (a7)
  {
    *a7 = v31[3];
  }

  v20 = v18[5] == 0;
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v20;
}

void __114__ACXDeviceConnection_installApplicationAtURL_onDeviceWithPairingID_installOptions_size_installationStatus_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __114__ACXDeviceConnection_installApplicationAtURL_onDeviceWithPairingID_installOptions_size_installationStatus_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)removeApplication:(id)a3 fromPairedDevice:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ACXDeviceConnection_removeApplication_fromPairedDevice_completion___block_invoke;
  v10[3] = &unk_278C8D578;
  v11 = v8;
  v9 = v8;
  [(ACXDeviceConnection *)self removeApplication:a3 fromPairedDevice:a4 completionWithError:v10];
}

- (void)removeApplication:(id)a3 fromPairedDevice:(id)a4 completionWithError:(id)a5
{
  v8 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__ACXDeviceConnection_removeApplication_fromPairedDevice_completionWithError___block_invoke;
  v14[3] = &unk_278C8D4B0;
  v15 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v14];
  v13 = [v10 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v12 removeApplication:v11 fromDeviceWithPairingID:v13 completion:v9];
}

void __78__ACXDeviceConnection_removeApplication_fromPairedDevice_completionWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)removeApplication:(id)a3 fromPairedDevice:(id)a4 removalStatus:(int64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__ACXDeviceConnection_removeApplication_fromPairedDevice_removalStatus_error___block_invoke;
  v19[3] = &unk_278C8D4D8;
  v19[4] = &v20;
  v12 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v19];
  v13 = [v11 valueForProperty:*MEMORY[0x277D2BBB8]];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__ACXDeviceConnection_removeApplication_fromPairedDevice_removalStatus_error___block_invoke_2;
  v18[3] = &unk_278C8D550;
  v18[4] = &v20;
  v18[5] = &v26;
  [v12 removeApplication:v10 fromDeviceWithPairingID:v13 completion:v18];

  v14 = v21;
  v15 = v21[5];
  if (v15)
  {
    if (a6)
    {
      *a6 = v15;
      v14 = v21;
    }
  }

  else if (a5)
  {
    *a5 = v27[3];
  }

  v16 = v14[5] == 0;
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v16;
}

void __78__ACXDeviceConnection_removeApplication_fromPairedDevice_removalStatus_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __78__ACXDeviceConnection_removeApplication_fromPairedDevice_removalStatus_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)setAlwaysInstall:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277D2BCF8] sharedInstance];
  v5 = [v4 getActivePairedDevice];

  if (v5)
  {
    [(ACXDeviceConnection *)self setAlwaysInstall:v6 forDevice:v5];
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)setAlwaysInstall:(id)a3 forDevice:(id)a4
{
  v16 = a3;
  v5 = MEMORY[0x277D2BA58];
  v6 = a4;
  v7 = [[v5 alloc] initWithDomain:@"com.apple.appconduitd.gizmostate" pairedDevice:v6];
  v8 = [v6 valueForProperty:*MEMORY[0x277D2BBB8]];

  if (v7)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v9 = [v8 UUIDString];
      v10 = [v16 BOOLValue];
      v11 = @"NO";
      if (v10)
      {
        v11 = @"YES";
      }

      v13 = v9;
      v14 = v11;
      MOLogWrite();
    }

    [v7 setObject:v16 forKey:{@"AlwaysInstall", v13, v14}];
    v12 = [v7 synchronize];
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v15 = [v8 UUIDString];
    MOLogWrite();
  }
}

- (void)getAlwaysInstallForPairedDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__ACXDeviceConnection_getAlwaysInstallForPairedDevice_completion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [v8 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v9 getAlwaysInstallForDeviceWithPairingID:v10 completion:v7];
}

void __66__ACXDeviceConnection_getAlwaysInstallForPairedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)getAlwaysInstall:(BOOL *)a3 forPairedDevice:(id)a4 error:(id *)a5
{
  v8 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__ACXDeviceConnection_getAlwaysInstall_forPairedDevice_error___block_invoke;
  v16[3] = &unk_278C8D4D8;
  v16[4] = &v17;
  v9 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v16];
  v10 = [v8 valueForProperty:*MEMORY[0x277D2BBB8]];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__ACXDeviceConnection_getAlwaysInstall_forPairedDevice_error___block_invoke_2;
  v15[3] = &unk_278C8D5A0;
  v15[4] = &v23;
  [v9 getAlwaysInstallForDeviceWithPairingID:v10 completion:v15];

  v11 = v18;
  v12 = v18[5];
  if (v12)
  {
    if (a5)
    {
      *a5 = v12;
      v11 = v18;
    }
  }

  else if (a3)
  {
    *a3 = *(v24 + 24);
  }

  v13 = v11[5] == 0;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v13;
}

void __62__ACXDeviceConnection_getAlwaysInstall_forPairedDevice_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)installProvisioningProfileWithURL:(id)a3 onPairedDevice:(id)a4 completion:(id)a5
{
  v8 = a4;
  v10 = a5;
  if (a3)
  {
    v22 = 0;
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3 options:3 error:&v22];
    v12 = v22;
    if (v11)
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __83__ACXDeviceConnection_installProvisioningProfileWithURL_onPairedDevice_completion___block_invoke;
      v20 = &unk_278C8D4B0;
      v13 = v10;
      v21 = v13;
      v14 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:&v17];
      v15 = [v8 valueForProperty:{*MEMORY[0x277D2BBB8], v17, v18, v19, v20}];
      [v14 installProvisioningProfileWithData:v11 onDeviceWithPairingID:v15 completion:v13];
    }

    else
    {
      (*(v10 + 2))(v10, 0, v12);
    }
  }

  else
  {
    v16 = _CreateAndLogError("[ACXDeviceConnection installProvisioningProfileWithURL:onPairedDevice:completion:]", 942, @"ACXErrorDomain", 20, 0, 0, @"profileURL parameter was nil", v9, v17);
    (*(v10 + 2))(v10, 0, v16);
  }
}

void __83__ACXDeviceConnection_installProvisioningProfileWithURL_onPairedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)installProvisioningProfileWithURL:(id)a3 onPairedDevice:(id)a4 error:(id *)a5
{
  v8 = a3;
  v10 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (!v8)
  {
    v14 = _CreateAndLogError("[ACXDeviceConnection installProvisioningProfileWithURL:onPairedDevice:error:]", 965, @"ACXErrorDomain", 20, 0, 0, @"profileURL parameter was nil", v9, v17[0]);
    v11 = v25[5];
    v25[5] = v14;
    goto LABEL_5;
  }

  obj = 0;
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8 options:3 error:&obj];
  objc_storeStrong(&v29, obj);
  if (v11)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__ACXDeviceConnection_installProvisioningProfileWithURL_onPairedDevice_error___block_invoke;
    v18[3] = &unk_278C8D4D8;
    v18[4] = &v24;
    v12 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v18];
    v13 = [v10 valueForProperty:*MEMORY[0x277D2BBB8]];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__ACXDeviceConnection_installProvisioningProfileWithURL_onPairedDevice_error___block_invoke_2;
    v17[3] = &unk_278C8D5C8;
    v17[4] = &v24;
    v17[5] = &v20;
    [v12 installProvisioningProfileWithData:v11 onDeviceWithPairingID:v13 completion:v17];

LABEL_5:
  }

  v15 = *(v21 + 24);
  if (a5 && (v21[3] & 1) == 0)
  {
    *a5 = v25[5];
    v15 = *(v21 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v15 & 1;
}

void __78__ACXDeviceConnection_installProvisioningProfileWithURL_onPairedDevice_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __78__ACXDeviceConnection_installProvisioningProfileWithURL_onPairedDevice_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)removeProvisioningProfileWithID:(id)a3 fromPairedDevice:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = v10;
  if (v8)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __83__ACXDeviceConnection_removeProvisioningProfileWithID_fromPairedDevice_completion___block_invoke;
    v18[3] = &unk_278C8D4B0;
    v13 = v10;
    v19 = v13;
    v14 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v18];
    v15 = [v9 valueForProperty:*MEMORY[0x277D2BBB8]];
    [v14 removeProvisioningProfileWithID:v8 fromDeviceWithPairingID:v15 completion:v13];
  }

  else
  {
    v16 = _CreateAndLogError("[ACXDeviceConnection removeProvisioningProfileWithID:fromPairedDevice:completion:]", 1001, @"ACXErrorDomain", 20, 0, 0, @"profileID parameter was nil", v11, v17);
    (v12)[2](v12, 0, v16);
  }
}

void __83__ACXDeviceConnection_removeProvisioningProfileWithID_fromPairedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)removeProvisioningProfileWithID:(id)a3 fromPairedDevice:(id)a4 error:(id *)a5
{
  v8 = a3;
  v10 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (v8)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__ACXDeviceConnection_removeProvisioningProfileWithID_fromPairedDevice_error___block_invoke;
    v18[3] = &unk_278C8D4D8;
    v18[4] = &v23;
    v11 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v18];
    v12 = [v10 valueForProperty:*MEMORY[0x277D2BBB8]];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__ACXDeviceConnection_removeProvisioningProfileWithID_fromPairedDevice_error___block_invoke_2;
    v17[3] = &unk_278C8D5C8;
    v17[4] = &v23;
    v17[5] = &v19;
    [v11 removeProvisioningProfileWithID:v8 fromDeviceWithPairingID:v12 completion:v17];
  }

  else
  {
    v13 = _CreateAndLogError("[ACXDeviceConnection removeProvisioningProfileWithID:fromPairedDevice:error:]", 1017, @"ACXErrorDomain", 20, 0, 0, @"profileID parameter was nil", v9, v16);
    v11 = v24[5];
    v24[5] = v13;
  }

  v14 = *(v20 + 24);
  if (a5 && (v20[3] & 1) == 0)
  {
    *a5 = v24[5];
    v14 = *(v20 + 24);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v14 & 1;
}

void __78__ACXDeviceConnection_removeProvisioningProfileWithID_fromPairedDevice_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __78__ACXDeviceConnection_removeProvisioningProfileWithID_fromPairedDevice_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)fetchProvisioningProfilesForPairedDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ACXDeviceConnection_fetchProvisioningProfilesForPairedDevice_completion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [v8 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v9 fetchProvisioningProfilesForDeviceWithPairingID:v10 completion:v7];
}

void __75__ACXDeviceConnection_fetchProvisioningProfilesForPairedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (id)provisioningProfilesForPairedDevice:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__ACXDeviceConnection_provisioningProfilesForPairedDevice_error___block_invoke;
  v13[3] = &unk_278C8D4D8;
  v13[4] = &v20;
  v7 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v13];
  v8 = [v6 valueForProperty:*MEMORY[0x277D2BBB8]];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ACXDeviceConnection_provisioningProfilesForPairedDevice_error___block_invoke_2;
  v12[3] = &unk_278C8D5F0;
  v12[4] = &v20;
  v12[5] = &v14;
  [v7 fetchProvisioningProfilesForDeviceWithPairingID:v8 completion:v12];

  v9 = v15[5];
  if (a4 && !v9)
  {
    *a4 = v21[5];
    v9 = v15[5];
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __65__ACXDeviceConnection_provisioningProfilesForPairedDevice_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __65__ACXDeviceConnection_provisioningProfilesForPairedDevice_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5
{
  v8 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__ACXDeviceConnection_fetchProvisioningProfilesForApplicationWithBundleID_forPairedDevice_completion___block_invoke;
  v14[3] = &unk_278C8D4B0;
  v15 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v14];
  v13 = [v10 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v12 fetchProvisioningProfilesForApplicationWithBundleID:v11 forDeviceWithPairingID:v13 completion:v9];
}

void __102__ACXDeviceConnection_fetchProvisioningProfilesForApplicationWithBundleID_forPairedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (id)provisioningProfilesForApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92__ACXDeviceConnection_provisioningProfilesForApplicationWithBundleID_forPairedDevice_error___block_invoke;
  v16[3] = &unk_278C8D4D8;
  v16[4] = &v23;
  v10 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v16];
  v11 = [v9 valueForProperty:*MEMORY[0x277D2BBB8]];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__ACXDeviceConnection_provisioningProfilesForApplicationWithBundleID_forPairedDevice_error___block_invoke_2;
  v15[3] = &unk_278C8D5F0;
  v15[4] = &v23;
  v15[5] = &v17;
  [v10 fetchProvisioningProfilesForApplicationWithBundleID:v8 forDeviceWithPairingID:v11 completion:v15];

  v12 = v18[5];
  if (a5 && !v12)
  {
    *a5 = v24[5];
    v12 = v18[5];
  }

  v13 = v12;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

void __92__ACXDeviceConnection_provisioningProfilesForApplicationWithBundleID_forPairedDevice_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __92__ACXDeviceConnection_provisioningProfilesForApplicationWithBundleID_forPairedDevice_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)updatePreferencesForApplicationWithIdentifier:(id)a3 preferences:(id)a4 writingToPreferencesLocation:(unint64_t)a5 forPairedDevice:(id)a6 options:(unint64_t)a7 completion:(id)a8
{
  v14 = a8;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __145__ACXDeviceConnection_updatePreferencesForApplicationWithIdentifier_preferences_writingToPreferencesLocation_forPairedDevice_options_completion___block_invoke;
  v21[3] = &unk_278C8D4B0;
  v22 = v14;
  v15 = v14;
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v21];
  v20 = [v16 valueForProperty:*MEMORY[0x277D2BBB8]];

  [v19 updatePreferencesForApplicationWithIdentifier:v18 preferences:v17 writingToPreferencesLocation:a5 forDeviceWithPairingID:v20 options:a7 completion:v15];
}

void __145__ACXDeviceConnection_updatePreferencesForApplicationWithIdentifier_preferences_writingToPreferencesLocation_forPairedDevice_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)updatePreferencesForApplicationWithIdentifier:(id)a3 preferences:(id)a4 writingToPreferencesLocation:(unint64_t)a5 forPairedDevice:(id)a6 options:(unint64_t)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __140__ACXDeviceConnection_updatePreferencesForApplicationWithIdentifier_preferences_writingToPreferencesLocation_forPairedDevice_options_error___block_invoke;
  v22[3] = &unk_278C8D4D8;
  v22[4] = &v23;
  v17 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v22];
  v18 = [v16 valueForProperty:*MEMORY[0x277D2BBB8]];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __140__ACXDeviceConnection_updatePreferencesForApplicationWithIdentifier_preferences_writingToPreferencesLocation_forPairedDevice_options_error___block_invoke_2;
  v21[3] = &unk_278C8D4D8;
  v21[4] = &v23;
  [v17 updatePreferencesForApplicationWithIdentifier:v14 preferences:v15 writingToPreferencesLocation:a5 forDeviceWithPairingID:v18 options:a7 completion:v21];

  if (a8)
  {
    *a8 = v24[5];
  }

  v19 = v24[5] == 0;
  _Block_object_dispose(&v23, 8);

  return v19;
}

void __140__ACXDeviceConnection_updatePreferencesForApplicationWithIdentifier_preferences_writingToPreferencesLocation_forPairedDevice_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __140__ACXDeviceConnection_updatePreferencesForApplicationWithIdentifier_preferences_writingToPreferencesLocation_forPairedDevice_options_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)setUpdatePendingForCompanionApp:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__ACXDeviceConnection_setUpdatePendingForCompanionApp_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 setUpdatePendingForCompanionApp:v8 completion:v7];
}

void __66__ACXDeviceConnection_setUpdatePendingForCompanionApp_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)setUpdatePendingForCompanionApp:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__ACXDeviceConnection_setUpdatePendingForCompanionApp_error___block_invoke;
  v11[3] = &unk_278C8D4D8;
  v11[4] = &v12;
  v7 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__ACXDeviceConnection_setUpdatePendingForCompanionApp_error___block_invoke_2;
  v10[3] = &unk_278C8D4D8;
  v10[4] = &v12;
  [v7 setUpdatePendingForCompanionApp:v6 completion:v10];

  if (a4)
  {
    *a4 = v13[5];
  }

  v8 = v13[5] == 0;
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __61__ACXDeviceConnection_setUpdatePendingForCompanionApp_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __61__ACXDeviceConnection_setUpdatePendingForCompanionApp_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)cancelUpdatePendingForCompanionApp:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ACXDeviceConnection_cancelUpdatePendingForCompanionApp_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 cancelUpdatePendingForCompanionApp:v8 completion:v7];
}

void __69__ACXDeviceConnection_cancelUpdatePendingForCompanionApp_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)cancelUpdatePendingForCompanionApp:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__ACXDeviceConnection_cancelUpdatePendingForCompanionApp_error___block_invoke;
  v11[3] = &unk_278C8D4D8;
  v11[4] = &v12;
  v7 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__ACXDeviceConnection_cancelUpdatePendingForCompanionApp_error___block_invoke_2;
  v10[3] = &unk_278C8D4D8;
  v10[4] = &v12;
  [v7 cancelUpdatePendingForCompanionApp:v6 completion:v10];

  if (a4)
  {
    *a4 = v13[5];
  }

  v8 = v13[5] == 0;
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __64__ACXDeviceConnection_cancelUpdatePendingForCompanionApp_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __64__ACXDeviceConnection_cancelUpdatePendingForCompanionApp_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)getApplicationWithBundleID:(id)a3 willInstallAfterPairingOnDevice:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = *MEMORY[0x277D2BBB8];
  v10 = a3;
  v11 = [a4 valueForProperty:v9];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__ACXDeviceConnection_getApplicationWithBundleID_willInstallAfterPairingOnDevice_completion___block_invoke;
  v14[3] = &unk_278C8D4B0;
  v15 = v8;
  v12 = v8;
  v13 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v14];
  [v13 applicationWillInstallAfterPairingOnDeviceWithPairingID:v11 withBundleID:v10 completion:v12];
}

void __93__ACXDeviceConnection_getApplicationWithBundleID_willInstallAfterPairingOnDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)getApplicationWithBundleID:(id)a3 willInstallAfterPairing:(BOOL *)a4 onDevice:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v12 = [v11 valueForProperty:*MEMORY[0x277D2BBB8]];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__ACXDeviceConnection_getApplicationWithBundleID_willInstallAfterPairing_onDevice_error___block_invoke;
  v18[3] = &unk_278C8D4D8;
  v18[4] = &v23;
  v13 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__ACXDeviceConnection_getApplicationWithBundleID_willInstallAfterPairing_onDevice_error___block_invoke_2;
  v17[3] = &unk_278C8D5C8;
  v17[4] = &v23;
  v17[5] = &v19;
  [v13 applicationWillInstallAfterPairingOnDeviceWithPairingID:v12 withBundleID:v10 completion:v17];

  v14 = v24[5];
  if (v14)
  {
    if (a6)
    {
      v14 = v14;
      *a6 = v14;
    }
  }

  else if (a4)
  {
    *a4 = *(v20 + 24);
  }

  v15 = v14 == 0;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v15;
}

void __89__ACXDeviceConnection_getApplicationWithBundleID_willInstallAfterPairing_onDevice_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __89__ACXDeviceConnection_getApplicationWithBundleID_willInstallAfterPairing_onDevice_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)enumerateInstalledApplicationsOnPairedDevice:(id)a3 withBlock:(id)a4
{
  v6 = *MEMORY[0x277D2BBB8];
  v7 = a4;
  v8 = [a3 valueForProperty:v6];
  [(ACXDeviceConnection *)self enumerateInstalledApplicationsOnDeviceWithPairingID:v8 withBlock:v7];
}

- (void)enumerateInstalledApplicationsOnDeviceWithPairingID:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke;
  v16[3] = &unk_278C8D4B0;
  v8 = v7;
  v17 = v8;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v16];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke_2;
  v12[3] = &unk_278C8D690;
  v14 = self;
  v15 = v8;
  v13 = v6;
  v10 = v6;
  v11 = v8;
  [v9 fetchInstalledWatchAppBundleIDsForDeviceWithPairingID:v10 completion:v12];
}

void __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else
  {
    if ([v5 count])
    {
      v7 = [v5 mutableCopy];
      v20 = 0;
      v21 = &v20;
      v22 = 0x3042000000;
      v23 = __Block_byref_object_copy__155;
      v24 = __Block_byref_object_dispose__156;
      v25 = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke_157;
      v15[3] = &unk_278C8D668;
      v19 = &v20;
      v18 = *(a1 + 48);
      v8 = v7;
      v16 = v8;
      v14 = *(a1 + 32);
      v9 = v14.i64[0];
      v17 = vextq_s8(v14, v14, 8uLL);
      v10 = [v15 copy];
      objc_storeWeak(v21 + 5, v10);
      v11 = qos_class_self();
      v12 = dispatch_get_global_queue(v11, 0);
      dispatch_async(v12, v10);

      _Block_object_dispose(&v20, 8);
      objc_destroyWeak(&v25);

      goto LABEL_8;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v13 = *(a1 + 32);
      MOLogWrite();
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48));
LABEL_8:
}

void __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke_157(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) lastObject];
    if (v5)
    {
      [*(a1 + 32) removeLastObject];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke_4;
      v17[3] = &unk_278C8D640;
      v5 = v5;
      v18 = v5;
      v20 = *(a1 + 56);
      v19 = *(a1 + 32);
      v21 = WeakRetained;
      [v6 fetchApplicationOnDeviceWithPairingID:v7 withBundleID:v5 completion:v17];

      v8 = v18;
    }

    else
    {
      v13 = _CreateAndLogError("[ACXDeviceConnection enumerateInstalledApplicationsOnDeviceWithPairingID:withBlock:]_block_invoke", 1286, @"ACXErrorDomain", 1, 0, 0, @"Failed to get next bundle ID while enumerating remote apps", v4, v17[0]);
      v14 = qos_class_self();
      v15 = dispatch_get_global_queue(v14, 0);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke_3;
      v22[3] = &unk_278C8D1E8;
      v16 = *(a1 + 56);
      v23 = v13;
      v24 = v16;
      v8 = v13;
      dispatch_async(v15, v22);
    }
  }

  else
  {
    v9 = _CreateAndLogError("[ACXDeviceConnection enumerateInstalledApplicationsOnDeviceWithPairingID:withBlock:]_block_invoke", 1277, @"ACXErrorDomain", 1, 0, 0, @"Async enumeration block reference somehow became nil while enumerating remote apps", v2, v17[0]);
    v10 = qos_class_self();
    v11 = dispatch_get_global_queue(v10, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke_2_161;
    block[3] = &unk_278C8D1E8;
    v12 = *(a1 + 56);
    v26 = v9;
    v27 = v12;
    v5 = v9;
    dispatch_async(v11, block);

    v8 = v27;
  }
}

void __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke_4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qos_class_self();
  v8 = dispatch_get_global_queue(v7, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke_5;
  v11[3] = &unk_278C8D618;
  v12 = v6;
  v13 = a1[4];
  v16 = a1[6];
  v14 = v5;
  v15 = a1[5];
  v17 = a1[7];
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

void __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if (![v3 isEqualToString:@"ACXErrorDomain"])
    {

      goto LABEL_14;
    }

    v4 = [*(a1 + 32) code];

    if (v4 != 19)
    {
LABEL_14:
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v10 = *(a1 + 40);
        v12 = *(a1 + 32);
        MOLogWrite();
      }

      v7 = *(a1 + 32);
      v8 = *(*(a1 + 64) + 16);
LABEL_26:

      v8();
      return;
    }
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v9 = *(a1 + 40);
      MOLogWrite();
    }

    v5 = *(a1 + 48);
    if (!(*(*(a1 + 64) + 16))(*(a1 + 64)))
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
        v11 = *(a1 + 40);
        MOLogWrite();
      }

      return;
    }
  }

  if (![*(a1 + 56) count])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v8 = *(*(a1 + 64) + 16);
    goto LABEL_26;
  }

  v6 = qos_class_self();
  v13 = dispatch_get_global_queue(v6, 0);
  dispatch_async(v13, *(a1 + 72));
}

- (void)enumerateLocallyAvailableApplicationsForPairedDevice:(id)a3 options:(unint64_t)a4 withBlock:(id)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a5;
  v10 = [a3 valueForProperty:v8];
  [(ACXDeviceConnection *)self enumerateLocallyAvailableApplicationsForDeviceWithPairingID:v10 options:a4 withBlock:v9];
}

- (void)enumerateLocallyAvailableApplicationsForDeviceWithPairingID:(id)a3 options:(unint64_t)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke;
  v18[3] = &unk_278C8D4B0;
  v10 = v9;
  v19 = v10;
  v11 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke_2;
  v14[3] = &unk_278C8D730;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v17 = a4;
  v12 = v8;
  v13 = v10;
  [v11 fetchLocallyAvailableWatchAppBundleIDsWithCompletion:v14];
}

void __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else
  {
    if ([v5 count])
    {
      v7 = [v5 mutableCopy];
      v23 = 0;
      v24 = &v23;
      v25 = 0x3042000000;
      v26 = __Block_byref_object_copy__155;
      v27 = __Block_byref_object_dispose__156;
      v28 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke_3;
      v16[3] = &unk_278C8D708;
      v21 = &v23;
      v20 = *(a1 + 48);
      v8 = v7;
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v17 = v8;
      v18 = v9;
      v11 = v10;
      v12 = *(a1 + 56);
      v19 = v11;
      v22 = v12;
      v13 = [v16 copy];
      objc_storeWeak(v24 + 5, v13);
      v14 = qos_class_self();
      v15 = dispatch_get_global_queue(v14, 0);
      dispatch_async(v15, v13);

      _Block_object_dispose(&v23, 8);
      objc_destroyWeak(&v28);

      goto LABEL_8;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48));
LABEL_8:
}

void __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) lastObject];
    if (v5)
    {
      [*(a1 + 32) removeLastObject];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 72);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke_6;
      v19[3] = &unk_278C8D6E0;
      v24 = v8;
      v5 = v5;
      v20 = v5;
      v22 = *(a1 + 56);
      v21 = *(a1 + 32);
      v23 = WeakRetained;
      [v6 _fetchLocallyAvailableApplicationWithBundleID:v5 forDeviceWithPairingID:v7 options:v8 completion:v19];

      v9 = v20;
    }

    else
    {
      v14 = _CreateAndLogError("[ACXDeviceConnection enumerateLocallyAvailableApplicationsForDeviceWithPairingID:options:withBlock:]_block_invoke_3", 1373, @"ACXErrorDomain", 1, 0, 0, @"Failed to get next bundle ID while enumerating local apps", v4, v18);
      v15 = qos_class_self();
      v16 = dispatch_get_global_queue(v15, 0);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke_5;
      v25[3] = &unk_278C8D1E8;
      v17 = *(a1 + 56);
      v26 = v14;
      v27 = v17;
      v9 = v14;
      dispatch_async(v16, v25);
    }
  }

  else
  {
    v10 = _CreateAndLogError("[ACXDeviceConnection enumerateLocallyAvailableApplicationsForDeviceWithPairingID:options:withBlock:]_block_invoke_3", 1364, @"ACXErrorDomain", 1, 0, 0, @"Async enumeration block reference somehow became nil while enumerating local apps", v2, v18);
    v11 = qos_class_self();
    v12 = dispatch_get_global_queue(v11, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke_4;
    block[3] = &unk_278C8D1E8;
    v13 = *(a1 + 56);
    v29 = v10;
    v30 = v13;
    v5 = v10;
    dispatch_async(v12, block);

    v9 = v30;
  }
}

void __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qos_class_self();
  v8 = dispatch_get_global_queue(v7, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke_7;
  block[3] = &unk_278C8D6B8;
  v9 = *(a1 + 64);
  v13 = v6;
  v19 = v9;
  v14 = *(a1 + 32);
  v17 = *(a1 + 48);
  v15 = v5;
  v16 = *(a1 + 40);
  v18 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

void __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(a1 + 80))
    {
      v4 = [v2 domain];
      if ([v4 isEqualToString:@"ACXErrorDomain"] && objc_msgSend(*(a1 + 32), "code") == 37)
      {

LABEL_22:
        [*(a1 + 48) isSystemApp];
LABEL_23:
        if ([*(a1 + 56) count])
        {
          v9 = qos_class_self();
          v16 = dispatch_get_global_queue(v9, 0);
          dispatch_async(v16, *(a1 + 72));

          return;
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          MOLogWrite();
        }

        v11 = *(*(a1 + 64) + 16);
        goto LABEL_36;
      }

      v5 = [*(a1 + 32) domain];
      if ([v5 isEqualToString:@"ACXErrorDomain"])
      {
        v6 = [*(a1 + 32) code];

        if (v6 == 38)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v7 = [*(a1 + 32) domain];
    if ([v7 isEqualToString:@"ACXErrorDomain"])
    {
      v8 = [*(a1 + 32) code];

      if (v8 == 19)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 32);
      MOLogWrite();
    }

    v10 = *(a1 + 32);
    v11 = *(*(a1 + 64) + 16);
LABEL_36:

    v11();
    return;
  }

  if ([*(a1 + 48) isSystemApp])
  {
    goto LABEL_23;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v12 = *(a1 + 40);
    MOLogWrite();
  }

  v3 = *(a1 + 48);
  if ((*(*(a1 + 64) + 16))(*(a1 + 64)))
  {
    goto LABEL_23;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v13 = *(a1 + 40);
    MOLogWrite();
  }
}

- (void)fetchApplicationOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__ACXDeviceConnection_fetchApplicationOnDeviceWithPairingID_withBundleID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 fetchInstalledWatchAppWithBundleID:v10 forDeviceWithPairingID:v11 completion:v9];
}

void __85__ACXDeviceConnection_fetchApplicationOnDeviceWithPairingID_withBundleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (id)applicationOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ACXDeviceConnection_applicationOnDeviceWithPairingID_withBundleID_error___block_invoke;
  v15[3] = &unk_278C8D4D8;
  v15[4] = &v22;
  v10 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__ACXDeviceConnection_applicationOnDeviceWithPairingID_withBundleID_error___block_invoke_2;
  v14[3] = &unk_278C8D758;
  v14[4] = &v22;
  v14[5] = &v16;
  [v10 fetchInstalledWatchAppWithBundleID:v9 forDeviceWithPairingID:v8 completion:v14];

  v11 = v17[5];
  if (a5 && !v11)
  {
    *a5 = v23[5];
    v11 = v17[5];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __75__ACXDeviceConnection_applicationOnDeviceWithPairingID_withBundleID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __75__ACXDeviceConnection_applicationOnDeviceWithPairingID_withBundleID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)fetchApplicationOnPairedDevice:(id)a3 withBundleID:(id)a4 completion:(id)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a5;
  v10 = a4;
  v11 = [a3 valueForProperty:v8];
  [(ACXDeviceConnection *)self fetchApplicationOnDeviceWithPairingID:v11 withBundleID:v10 completion:v9];
}

- (id)applicationOnPairedDevice:(id)a3 withBundleID:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a4;
  v10 = [a3 valueForProperty:v8];
  v11 = [(ACXDeviceConnection *)self applicationOnDeviceWithPairingID:v10 withBundleID:v9 error:a5];

  return v11;
}

- (void)_fetchLocallyAvailableApplicationWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__ACXDeviceConnection__fetchLocallyAvailableApplicationWithBundleID_forDeviceWithPairingID_options_completion___block_invoke;
  v15[3] = &unk_278C8D4B0;
  v16 = v10;
  v11 = v10;
  v12 = a4;
  v13 = a3;
  v14 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v15];
  [v14 fetchLocallyAvailableWatchAppWithBundleID:v13 forDeviceWithPairingID:v12 options:a5 completion:v11];
}

void __111__ACXDeviceConnection__fetchLocallyAvailableApplicationWithBundleID_forDeviceWithPairingID_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (void)fetchLocallyAvailableApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a5;
  v10 = a3;
  v11 = [a4 valueForProperty:v8];
  [(ACXDeviceConnection *)self _fetchLocallyAvailableApplicationWithBundleID:v10 forDeviceWithPairingID:v11 options:0 completion:v9];
}

- (id)_locallyAvailableApplicationWithBundleID:(id)a3 forDeviceWithPairingID:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__ACXDeviceConnection__locallyAvailableApplicationWithBundleID_forDeviceWithPairingID_options_error___block_invoke;
  v17[3] = &unk_278C8D4D8;
  v17[4] = &v24;
  v12 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__ACXDeviceConnection__locallyAvailableApplicationWithBundleID_forDeviceWithPairingID_options_error___block_invoke_2;
  v16[3] = &unk_278C8D780;
  v16[4] = &v24;
  v16[5] = &v18;
  [v12 fetchLocallyAvailableWatchAppWithBundleID:v10 forDeviceWithPairingID:v11 options:a5 completion:v16];

  v13 = v19[5];
  if (a6 && !v13)
  {
    *a6 = v25[5];
    v13 = v19[5];
  }

  v14 = v13;
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __101__ACXDeviceConnection__locallyAvailableApplicationWithBundleID_forDeviceWithPairingID_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __101__ACXDeviceConnection__locallyAvailableApplicationWithBundleID_forDeviceWithPairingID_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (id)locallyAvailableApplicationWithBundleID:(id)a3 forPairedDevice:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a3;
  v10 = [a4 valueForProperty:v8];
  v11 = [(ACXDeviceConnection *)self _locallyAvailableApplicationWithBundleID:v9 forDeviceWithPairingID:v10 options:0 error:a5];

  return v11;
}

- (id)locallyAvailableApplicationWithContainingApplicationBundleID:(id)a3 forPairedDevice:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a3;
  v10 = [a4 valueForProperty:v8];
  v11 = [(ACXDeviceConnection *)self locallyAvailableApplicationWithContainingApplicationBundleID:v9 forDeviceWithPairingID:v10 error:a5];

  return v11;
}

- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)a3 forPairedDevice:(id)a4 completion:(id)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a5;
  v10 = a3;
  v11 = [a4 valueForProperty:v8];
  [(ACXDeviceConnection *)self fetchLocallyAvailableApplicationWithContainingApplicationBundleID:v10 forDeviceWithPairingID:v11 completion:v9];
}

- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)a3 forDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __123__ACXDeviceConnection_fetchLocallyAvailableApplicationWithContainingApplicationBundleID_forDeviceWithPairingID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 fetchLocallyAvailableApplicationWithContainingApplicationBundleID:v11 forDeviceWithPairingID:v10 completion:v9];
}

void __123__ACXDeviceConnection_fetchLocallyAvailableApplicationWithContainingApplicationBundleID_forDeviceWithPairingID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (id)locallyAvailableApplicationWithContainingApplicationBundleID:(id)a3 forDeviceWithPairingID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __113__ACXDeviceConnection_locallyAvailableApplicationWithContainingApplicationBundleID_forDeviceWithPairingID_error___block_invoke;
  v15[3] = &unk_278C8D4D8;
  v15[4] = &v22;
  v10 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __113__ACXDeviceConnection_locallyAvailableApplicationWithContainingApplicationBundleID_forDeviceWithPairingID_error___block_invoke_2;
  v14[3] = &unk_278C8D780;
  v14[4] = &v22;
  v14[5] = &v16;
  [v10 fetchLocallyAvailableApplicationWithContainingApplicationBundleID:v8 forDeviceWithPairingID:v9 completion:v14];

  v11 = v17[5];
  if (a5 && !v11)
  {
    *a5 = v23[5];
    v11 = v17[5];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __113__ACXDeviceConnection_locallyAvailableApplicationWithContainingApplicationBundleID_forDeviceWithPairingID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __113__ACXDeviceConnection_locallyAvailableApplicationWithContainingApplicationBundleID_forDeviceWithPairingID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)applicationIsInstalledOnPairedDevice:(id)a3 withBundleID:(id)a4 completion:(id)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a5;
  v10 = a4;
  v11 = [a3 valueForProperty:v8];
  [(ACXDeviceConnection *)self applicationIsInstalledOnDeviceWithPairingID:v11 withBundleID:v10 completion:v9];
}

- (BOOL)getApplicationIsInstalled:(BOOL *)a3 withBundleID:(id)a4 onPairedDevice:(id)a5 error:(id *)a6
{
  v10 = *MEMORY[0x277D2BBB8];
  v11 = a4;
  v12 = [a5 valueForProperty:v10];
  LOBYTE(a6) = [(ACXDeviceConnection *)self getApplicationIsInstalled:a3 withBundleID:v11 onDeviceWithPairingID:v12 error:a6];

  return a6;
}

- (BOOL)getApplicationIsInstalled:(BOOL *)a3 withBundleID:(id)a4 onDeviceWithPairingID:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__ACXDeviceConnection_getApplicationIsInstalled_withBundleID_onDeviceWithPairingID_error___block_invoke;
  v18[3] = &unk_278C8D4D8;
  v18[4] = &v23;
  v12 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__ACXDeviceConnection_getApplicationIsInstalled_withBundleID_onDeviceWithPairingID_error___block_invoke_2;
  v17[3] = &unk_278C8D5C8;
  v17[4] = &v23;
  v17[5] = &v19;
  [v12 applicationIsInstalledOnDeviceWithPairingID:v11 withBundleID:v10 completion:v17];

  v13 = v24;
  v14 = v24[5];
  if (v14)
  {
    if (a6)
    {
      *a6 = v14;
      v13 = v24;
    }
  }

  else if (a3)
  {
    *a3 = *(v20 + 24);
  }

  v15 = v13[5] == 0;
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v15;
}

void __90__ACXDeviceConnection_getApplicationIsInstalled_withBundleID_onDeviceWithPairingID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __90__ACXDeviceConnection_getApplicationIsInstalled_withBundleID_onDeviceWithPairingID_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)applicationIsInstalledOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__ACXDeviceConnection_applicationIsInstalledOnDeviceWithPairingID_withBundleID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 applicationIsInstalledOnDeviceWithPairingID:v11 withBundleID:v10 completion:v9];
}

void __91__ACXDeviceConnection_applicationIsInstalledOnDeviceWithPairingID_withBundleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (void)applicationIsInstalledOnPairedDevice:(id)a3 withCompanionBundleID:(id)a4 completion:(id)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a5;
  v10 = a4;
  v11 = [a3 valueForProperty:v8];
  [(ACXDeviceConnection *)self applicationIsInstalledOnDeviceWithPairingID:v11 withCompanionBundleID:v10 completion:v9];
}

- (BOOL)getApplicationIsInstalled:(BOOL *)a3 onPairedDevice:(id)a4 withCompanionBundleID:(id)a5 error:(id *)a6
{
  v10 = *MEMORY[0x277D2BBB8];
  v11 = a5;
  v12 = [a4 valueForProperty:v10];
  LOBYTE(a6) = [(ACXDeviceConnection *)self getApplicationIsInstalled:a3 onDeviceWithPairingID:v12 withCompanionBundleID:v11 error:a6];

  return a6;
}

- (void)applicationIsInstalledOnDeviceWithPairingID:(id)a3 withCompanionBundleID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__ACXDeviceConnection_applicationIsInstalledOnDeviceWithPairingID_withCompanionBundleID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 applicationIsInstalledOnDeviceWithPairingID:v11 withCompanionBundleID:v10 completion:v9];
}

void __100__ACXDeviceConnection_applicationIsInstalledOnDeviceWithPairingID_withCompanionBundleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)getApplicationIsInstalled:(BOOL *)a3 onDeviceWithPairingID:(id)a4 withCompanionBundleID:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__ACXDeviceConnection_getApplicationIsInstalled_onDeviceWithPairingID_withCompanionBundleID_error___block_invoke;
  v18[3] = &unk_278C8D4D8;
  v18[4] = &v19;
  v12 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__ACXDeviceConnection_getApplicationIsInstalled_onDeviceWithPairingID_withCompanionBundleID_error___block_invoke_2;
  v17[3] = &unk_278C8D5C8;
  v17[4] = &v19;
  v17[5] = &v25;
  [v12 applicationIsInstalledOnDeviceWithPairingID:v10 withCompanionBundleID:v11 completion:v17];

  v13 = v20;
  v14 = v20[5];
  if (v14)
  {
    if (a6)
    {
      *a6 = v14;
      v13 = v20;
    }
  }

  else if (a3)
  {
    *a3 = *(v26 + 24);
  }

  v15 = v13[5] == 0;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __99__ACXDeviceConnection_getApplicationIsInstalled_onDeviceWithPairingID_withCompanionBundleID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __99__ACXDeviceConnection_getApplicationIsInstalled_onDeviceWithPairingID_withCompanionBundleID_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)applicationIsInstalledOnAnyPairedDeviceWithBundleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__ACXDeviceConnection_applicationIsInstalledOnAnyPairedDeviceWithBundleID_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 applicationIsInstalledOnAnyPairedDeviceWithBundleID:v8 completion:v7];
}

void __86__ACXDeviceConnection_applicationIsInstalledOnAnyPairedDeviceWithBundleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)getApplicationIsInstalled:(BOOL *)a3 onAnyPairedDeviceWithBundleID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__ACXDeviceConnection_getApplicationIsInstalled_onAnyPairedDeviceWithBundleID_error___block_invoke;
  v15[3] = &unk_278C8D4D8;
  v15[4] = &v16;
  v9 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__ACXDeviceConnection_getApplicationIsInstalled_onAnyPairedDeviceWithBundleID_error___block_invoke_2;
  v14[3] = &unk_278C8D5C8;
  v14[4] = &v16;
  v14[5] = &v22;
  [v9 applicationIsInstalledOnAnyPairedDeviceWithBundleID:v8 completion:v14];

  v10 = v17;
  v11 = v17[5];
  if (v11)
  {
    if (a5)
    {
      *a5 = v11;
      v10 = v17;
    }
  }

  else if (a3)
  {
    *a3 = *(v23 + 24);
  }

  v12 = v10[5] == 0;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v12;
}

void __85__ACXDeviceConnection_getApplicationIsInstalled_onAnyPairedDeviceWithBundleID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __85__ACXDeviceConnection_getApplicationIsInstalled_onAnyPairedDeviceWithBundleID_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (BOOL)_companionAppWithoutCounterparts:(id)a3
{
  v3 = MEMORY[0x277CC1E70];
  v4 = a3;
  v9 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v9];

  if (v5)
  {
    v6 = [v5 counterpartIdentifiers];
    v7 = [v6 count] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ACXDeviceConnection *)self _companionAppWithoutCounterparts:v6])
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __95__ACXDeviceConnection_applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID_completion___block_invoke;
    v10[3] = &unk_278C8D4B0;
    v8 = v7;
    v11 = v8;
    v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
    [v9 applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:v6 completion:v8];
  }
}

void __95__ACXDeviceConnection_applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)getApplicationIsInstalled:(BOOL *)a3 onAnyPairedDeviceWithCompanionBundleID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  if ([(ACXDeviceConnection *)self _companionAppWithoutCounterparts:v8])
  {
    v9 = 0;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __94__ACXDeviceConnection_getApplicationIsInstalled_onAnyPairedDeviceWithCompanionBundleID_error___block_invoke;
    v15[3] = &unk_278C8D4D8;
    v15[4] = &v16;
    v10 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __94__ACXDeviceConnection_getApplicationIsInstalled_onAnyPairedDeviceWithCompanionBundleID_error___block_invoke_2;
    v14[3] = &unk_278C8D5C8;
    v14[4] = &v16;
    v14[5] = &v22;
    [v10 applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:v8 completion:v14];

    v11 = v17;
    v12 = v17[5];
    if (v12)
    {
      if (a5)
      {
        *a5 = v12;
        v11 = v17;
      }
    }

    else if (a3)
    {
      *a3 = *(v23 + 24);
    }

    v9 = v11[5] == 0;
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v9;
}

void __94__ACXDeviceConnection_getApplicationIsInstalled_onAnyPairedDeviceWithCompanionBundleID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __94__ACXDeviceConnection_getApplicationIsInstalled_onAnyPairedDeviceWithCompanionBundleID_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (BOOL)fetchApplicationDatabaseSyncInformationForPairedDevice:(id)a3 returningDatabaseUUID:(id *)a4 lastSequenceNumber:(unint64_t *)a5 error:(id *)a6
{
  v10 = [a3 valueForProperty:*MEMORY[0x277D2BBB8]];
  LOBYTE(a6) = [(ACXDeviceConnection *)self fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:v10 returningDatabaseUUID:a4 lastSequenceNumber:a5 error:a6];

  return a6;
}

- (BOOL)fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:(id)a3 returningDatabaseUUID:(id *)a4 lastSequenceNumber:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __132__ACXDeviceConnection_fetchApplicationDatabaseSyncInformationForDeviceWithPairingID_returningDatabaseUUID_lastSequenceNumber_error___block_invoke;
  v16[3] = &unk_278C8D4D8;
  v16[4] = &v17;
  v11 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __132__ACXDeviceConnection_fetchApplicationDatabaseSyncInformationForDeviceWithPairingID_returningDatabaseUUID_lastSequenceNumber_error___block_invoke_2;
  v15[3] = &unk_278C8D7A8;
  v15[4] = &v17;
  v15[5] = &v27;
  v15[6] = &v23;
  [v11 fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:v10 completion:v15];

  v12 = v18[5];
  if (v12)
  {
    if (a6)
    {
      v13 = v12;
      *a6 = v12;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = v28[5];
    }

    if (a5)
    {
      *a5 = v24[3];
    }
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v12 == 0;
}

void __132__ACXDeviceConnection_fetchApplicationDatabaseSyncInformationForDeviceWithPairingID_returningDatabaseUUID_lastSequenceNumber_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __132__ACXDeviceConnection_fetchApplicationDatabaseSyncInformationForDeviceWithPairingID_returningDatabaseUUID_lastSequenceNumber_error___block_invoke_2(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v8 = a4;
  if (v8)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a4);
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = a3;
  }
}

- (id)copyLocalizedValuesFromAllDevicesForInfoPlistKeys:(id)a3 forAppWithBundleID:(id)a4 fetchingFirstMatchingLocalizationInList:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __138__ACXDeviceConnection_copyLocalizedValuesFromAllDevicesForInfoPlistKeys_forAppWithBundleID_fetchingFirstMatchingLocalizationInList_error___block_invoke;
  v18[3] = &unk_278C8D4D8;
  v18[4] = &v19;
  v13 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __138__ACXDeviceConnection_copyLocalizedValuesFromAllDevicesForInfoPlistKeys_forAppWithBundleID_fetchingFirstMatchingLocalizationInList_error___block_invoke_2;
  v17[3] = &unk_278C8D5F0;
  v17[4] = &v19;
  v17[5] = &v25;
  [v13 fetchLocalizedValuesFromAllDevicesForInfoPlistKeys:v10 forAppWithBundleID:v11 fetchingFirstMatchingLocalizationInList:v12 completion:v17];

  v14 = v26[5];
  if (a6 && !v14)
  {
    *a6 = v20[5];
    v14 = v26[5];
  }

  v15 = v14;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __138__ACXDeviceConnection_copyLocalizedValuesFromAllDevicesForInfoPlistKeys_forAppWithBundleID_fetchingFirstMatchingLocalizationInList_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __138__ACXDeviceConnection_copyLocalizedValuesFromAllDevicesForInfoPlistKeys_forAppWithBundleID_fetchingFirstMatchingLocalizationInList_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)enumerateInstallableSystemAppsOnPairedDevice:(id)a3 withBlock:(id)a4
{
  v6 = *MEMORY[0x277D2BBB8];
  v7 = a4;
  v8 = [a3 valueForProperty:v6];
  [(ACXDeviceConnection *)self enumerateInstallableSystemAppsOnDeviceWithPairingID:v8 withBlock:v7];
}

- (void)enumerateInstallableSystemAppsOnDeviceWithPairingID:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke;
  v16[3] = &unk_278C8D4B0;
  v8 = v7;
  v17 = v8;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v16];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke_2;
  v12[3] = &unk_278C8D690;
  v14 = self;
  v15 = v8;
  v13 = v6;
  v10 = v6;
  v11 = v8;
  [v9 fetchInstallableSystemAppBundleIDsForDeviceWithPairingID:v10 completion:v12];
}

void __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else
  {
    if ([v5 count])
    {
      v7 = [v5 mutableCopy];
      v20 = 0;
      v21 = &v20;
      v22 = 0x3042000000;
      v23 = __Block_byref_object_copy__155;
      v24 = __Block_byref_object_dispose__156;
      v25 = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke_3;
      v15[3] = &unk_278C8D668;
      v19 = &v20;
      v18 = *(a1 + 48);
      v8 = v7;
      v16 = v8;
      v14 = *(a1 + 32);
      v9 = v14.i64[0];
      v17 = vextq_s8(v14, v14, 8uLL);
      v10 = [v15 copy];
      objc_storeWeak(v21 + 5, v10);
      v11 = qos_class_self();
      v12 = dispatch_get_global_queue(v11, 0);
      dispatch_async(v12, v10);

      _Block_object_dispose(&v20, 8);
      objc_destroyWeak(&v25);

      goto LABEL_8;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v13 = *(a1 + 32);
      MOLogWrite();
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48));
LABEL_8:
}

void __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) lastObject];
    if (v5)
    {
      [*(a1 + 32) removeLastObject];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke_6;
      v17[3] = &unk_278C8D640;
      v5 = v5;
      v18 = v5;
      v20 = *(a1 + 56);
      v19 = *(a1 + 32);
      v21 = WeakRetained;
      [v6 fetchInstallableSystemAppWithBundleID:v5 onDeviceWithPairingID:v7 completion:v17];

      v8 = v18;
    }

    else
    {
      v13 = _CreateAndLogError("[ACXDeviceConnection enumerateInstallableSystemAppsOnDeviceWithPairingID:withBlock:]_block_invoke_3", 1863, @"ACXErrorDomain", 1, 0, 0, @"Failed to get next bundle ID while enumerating local apps", v4, v17[0]);
      v14 = qos_class_self();
      v15 = dispatch_get_global_queue(v14, 0);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke_5;
      v22[3] = &unk_278C8D1E8;
      v16 = *(a1 + 56);
      v23 = v13;
      v24 = v16;
      v8 = v13;
      dispatch_async(v15, v22);
    }
  }

  else
  {
    v9 = _CreateAndLogError("[ACXDeviceConnection enumerateInstallableSystemAppsOnDeviceWithPairingID:withBlock:]_block_invoke_3", 1854, @"ACXErrorDomain", 1, 0, 0, @"Async enumeration block reference somehow became nil while enumerating local apps", v2, v17[0]);
    v10 = qos_class_self();
    v11 = dispatch_get_global_queue(v10, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke_4;
    block[3] = &unk_278C8D1E8;
    v12 = *(a1 + 56);
    v26 = v9;
    v27 = v12;
    v5 = v9;
    dispatch_async(v11, block);

    v8 = v27;
  }
}

void __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke_6(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qos_class_self();
  v8 = dispatch_get_global_queue(v7, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke_7;
  v11[3] = &unk_278C8D618;
  v12 = v6;
  v13 = a1[4];
  v16 = a1[6];
  v14 = v5;
  v15 = a1[5];
  v17 = a1[7];
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

void __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if (![v3 isEqualToString:@"ACXErrorDomain"])
    {

      goto LABEL_14;
    }

    v4 = [*(a1 + 32) code];

    if (v4 != 19)
    {
LABEL_14:
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v10 = *(a1 + 40);
        v12 = *(a1 + 32);
        MOLogWrite();
      }

      v7 = *(a1 + 32);
      v8 = *(*(a1 + 64) + 16);
LABEL_26:

      v8();
      return;
    }
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v9 = *(a1 + 40);
      MOLogWrite();
    }

    v5 = *(a1 + 48);
    if (!(*(*(a1 + 64) + 16))(*(a1 + 64)))
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
        v11 = *(a1 + 40);
        MOLogWrite();
      }

      return;
    }
  }

  if (![*(a1 + 56) count])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v8 = *(*(a1 + 64) + 16);
    goto LABEL_26;
  }

  v6 = qos_class_self();
  v13 = dispatch_get_global_queue(v6, 0);
  dispatch_async(v13, *(a1 + 72));
}

- (void)fetchInstallableSystemAppWithBundleID:(id)a3 onPairedDevice:(id)a4 completion:(id)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a5;
  v10 = a3;
  v11 = [a4 valueForProperty:v8];
  [(ACXDeviceConnection *)self fetchInstallableSystemAppWithBundleID:v10 onDeviceWithPairingID:v11 completion:v9];
}

- (void)fetchInstallableSystemAppWithBundleID:(id)a3 onDeviceWithPairingID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__ACXDeviceConnection_fetchInstallableSystemAppWithBundleID_onDeviceWithPairingID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 fetchInstallableSystemAppWithBundleID:v11 forDeviceWithPairingID:v10 completion:v9];
}

void __94__ACXDeviceConnection_fetchInstallableSystemAppWithBundleID_onDeviceWithPairingID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (id)installableSystemAppWithBundleID:(id)a3 onPairedDevice:(id)a4 error:(id *)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a3;
  v10 = [a4 valueForProperty:v8];
  v11 = [(ACXDeviceConnection *)self installableSystemAppWithBundleID:v9 onDeviceWithPairingID:v10 error:a5];

  return v11;
}

- (id)installableSystemAppWithBundleID:(id)a3 onDeviceWithPairingID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__ACXDeviceConnection_installableSystemAppWithBundleID_onDeviceWithPairingID_error___block_invoke;
  v15[3] = &unk_278C8D4D8;
  v15[4] = &v22;
  v10 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__ACXDeviceConnection_installableSystemAppWithBundleID_onDeviceWithPairingID_error___block_invoke_2;
  v14[3] = &unk_278C8D758;
  v14[4] = &v22;
  v14[5] = &v16;
  [v10 fetchInstallableSystemAppWithBundleID:v8 forDeviceWithPairingID:v9 completion:v14];

  v11 = v17[5];
  if (a5 && !v11)
  {
    *a5 = v23[5];
    v11 = v17[5];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __84__ACXDeviceConnection_installableSystemAppWithBundleID_onDeviceWithPairingID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __84__ACXDeviceConnection_installableSystemAppWithBundleID_onDeviceWithPairingID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)systemAppIsInstallableOnPairedDevice:(id)a3 withBundleID:(id)a4 completion:(id)a5
{
  v8 = *MEMORY[0x277D2BBB8];
  v9 = a5;
  v10 = a4;
  v11 = [a3 valueForProperty:v8];
  [(ACXDeviceConnection *)self systemAppIsInstallableOnDeviceWithPairingID:v11 withBundleID:v10 completion:v9];
}

- (void)systemAppIsInstallableOnDeviceWithPairingID:(id)a3 withBundleID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__ACXDeviceConnection_systemAppIsInstallableOnDeviceWithPairingID_withBundleID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 systemAppIsInstallableOnDeviceWithPairingID:v11 withBundleID:v10 completion:v9];
}

void __91__ACXDeviceConnection_systemAppIsInstallableOnDeviceWithPairingID_withBundleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)getSystemAppInstallability:(BOOL *)a3 onPairedDevice:(id)a4 withBundleID:(id)a5 error:(id *)a6
{
  v10 = *MEMORY[0x277D2BBB8];
  v11 = a5;
  v12 = [a4 valueForProperty:v10];
  LOBYTE(a6) = [(ACXDeviceConnection *)self getSystemAppInstallability:a3 onDeviceWithPairingID:v12 withBundleID:v11 error:a6];

  return a6;
}

- (BOOL)getSystemAppInstallability:(BOOL *)a3 onDeviceWithPairingID:(id)a4 withBundleID:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91__ACXDeviceConnection_getSystemAppInstallability_onDeviceWithPairingID_withBundleID_error___block_invoke;
  v18[3] = &unk_278C8D4D8;
  v18[4] = &v23;
  v12 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__ACXDeviceConnection_getSystemAppInstallability_onDeviceWithPairingID_withBundleID_error___block_invoke_2;
  v17[3] = &unk_278C8D5C8;
  v17[4] = &v23;
  v17[5] = &v19;
  [v12 systemAppIsInstallableOnDeviceWithPairingID:v10 withBundleID:v11 completion:v17];

  v13 = v24;
  v14 = v24[5];
  if (v14)
  {
    if (a6)
    {
      *a6 = v14;
      v13 = v24;
    }
  }

  else if (a3)
  {
    *a3 = *(v20 + 24);
  }

  v15 = v13[5] == 0;
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v15;
}

void __91__ACXDeviceConnection_getSystemAppInstallability_onDeviceWithPairingID_withBundleID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __91__ACXDeviceConnection_getSystemAppInstallability_onDeviceWithPairingID_withBundleID_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void __109__ACXDeviceConnection_installRequestFailedForApp_onDeviceWithPairingID_failureReason_wasUserInitiated_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)acknowledgeTestFlightInstallBegunForApp:(id)a3 onDeviceWithPairingID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__ACXDeviceConnection_acknowledgeTestFlightInstallBegunForApp_onDeviceWithPairingID_error___block_invoke;
  v16[3] = &unk_278C8D4D8;
  v16[4] = &v17;
  v10 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__ACXDeviceConnection_acknowledgeTestFlightInstallBegunForApp_onDeviceWithPairingID_error___block_invoke_2;
  v15[3] = &unk_278C8D4D8;
  v15[4] = &v17;
  [v10 acknowledgeTestFlightInstallBegunForApp:v8 forDeviceWithPairingID:v9 completion:v15];

  v11 = v18;
  if (a5)
  {
    v12 = v18[5];
    if (v12)
    {
      *a5 = v12;
      v11 = v18;
    }
  }

  v13 = v11[5] == 0;
  _Block_object_dispose(&v17, 8);

  return v13;
}

void __91__ACXDeviceConnection_acknowledgeTestFlightInstallBegunForApp_onDeviceWithPairingID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)applicationRemovabilityForPairedDevice:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v7 = [v6 valueForProperty:*MEMORY[0x277D2BBB8]];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__ACXDeviceConnection_applicationRemovabilityForPairedDevice_error___block_invoke;
  v13[3] = &unk_278C8D4D8;
  v13[4] = &v20;
  v8 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__ACXDeviceConnection_applicationRemovabilityForPairedDevice_error___block_invoke_2;
  v12[3] = &unk_278C8D5F0;
  v12[4] = &v20;
  v12[5] = &v14;
  [v8 applicationRemovabilityOnDeviceWithPairingID:v7 completion:v12];

  v9 = v15[5];
  if (a4 && !v9)
  {
    *a4 = v21[5];
    v9 = v15[5];
  }

  v10 = v9;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __68__ACXDeviceConnection_applicationRemovabilityForPairedDevice_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __68__ACXDeviceConnection_applicationRemovabilityForPairedDevice_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)applictionRemovabilityForPairedDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 valueForProperty:*MEMORY[0x277D2BBB8]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__ACXDeviceConnection_applictionRemovabilityForPairedDevice_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = v6;
  v8 = v6;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 applicationRemovabilityOnDeviceWithPairingID:v7 completion:v8];
}

void __72__ACXDeviceConnection_applictionRemovabilityForPairedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)killDaemonForTestingWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ACXDeviceConnection_killDaemonForTestingWithError___block_invoke;
  v7[3] = &unk_278C8D7D0;
  v7[4] = &v8;
  v7[5] = &v14;
  v4 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v7];
  [v4 killDaemonForTesting:&__block_literal_global_207];

  v5 = *(v15 + 24);
  if (a3 && (v15[3] & 1) == 0)
  {
    *a3 = v9[5];
    v5 = *(v15 + 24);
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5 & 1;
}

void __53__ACXDeviceConnection_killDaemonForTestingWithError___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v5 = [v6 code];

    if (v5 == 4097)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_9:
}

uint64_t __53__ACXDeviceConnection_killDaemonForTestingWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = gLogHandle;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v5 = v2;
    v3 = MOLogWrite();
    v2 = v5;
  }

  return MEMORY[0x2821F96F8](v3, v2);
}

- (id)copyRemoteDuplicatedClassInfoWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__ACXDeviceConnection_copyRemoteDuplicatedClassInfoWithError___block_invoke;
  v9[3] = &unk_278C8D7D0;
  v9[4] = &v10;
  v9[5] = &v16;
  v4 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__ACXDeviceConnection_copyRemoteDuplicatedClassInfoWithError___block_invoke_2;
  v8[3] = &unk_278C8D5F0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 fetchDuplicatedClassInfo:v8];

  v5 = v17[5];
  if (a3 && !v5)
  {
    *a3 = v11[5];
    v5 = v17[5];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v6;
}

void __62__ACXDeviceConnection_copyRemoteDuplicatedClassInfoWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v8 = v3;

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __62__ACXDeviceConnection_copyRemoteDuplicatedClassInfoWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (ACXDeviceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_onQueue_createXPCConnectionIfNecessary:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"com.apple.companionappd.connect.allow";
  _os_log_fault_impl(&dword_23FF1B000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "This process does not have the %@:=TRUE entitlement. AppConduit interfaces will all return errors", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

@end