@interface ACXDeviceConnection
+ (id)sharedDeviceConnection;
+ (void)_removeFilesAtURL:(id)l;
+ (void)performUninstallationCleanup;
- (ACXDeviceConnection)init;
- (ACXDeviceConnectionDelegate)delegate;
- (BOOL)_companionAppWithoutCounterparts:(id)counterparts;
- (BOOL)_onQueue_createXPCConnectionIfNecessary:(id *)necessary;
- (BOOL)_onQueue_enableObserversIfNeededForAValidXPCConnection;
- (BOOL)acknowledgeTestFlightInstallBegunForApp:(id)app onDeviceWithPairingID:(id)d error:(id *)error;
- (BOOL)cancelUpdatePendingForCompanionApp:(id)app error:(id *)error;
- (BOOL)fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:(id)d returningDatabaseUUID:(id *)iD lastSequenceNumber:(unint64_t *)number error:(id *)error;
- (BOOL)fetchApplicationDatabaseSyncInformationForPairedDevice:(id)device returningDatabaseUUID:(id *)d lastSequenceNumber:(unint64_t *)number error:(id *)error;
- (BOOL)getAlwaysInstall:(BOOL *)install forPairedDevice:(id)device error:(id *)error;
- (BOOL)getApplicationIsInstalled:(BOOL *)installed onAnyPairedDeviceWithBundleID:(id)d error:(id *)error;
- (BOOL)getApplicationIsInstalled:(BOOL *)installed onAnyPairedDeviceWithCompanionBundleID:(id)d error:(id *)error;
- (BOOL)getApplicationIsInstalled:(BOOL *)installed onDeviceWithPairingID:(id)d withCompanionBundleID:(id)iD error:(id *)error;
- (BOOL)getApplicationIsInstalled:(BOOL *)installed onPairedDevice:(id)device withCompanionBundleID:(id)d error:(id *)error;
- (BOOL)getApplicationIsInstalled:(BOOL *)installed withBundleID:(id)d onDeviceWithPairingID:(id)iD error:(id *)error;
- (BOOL)getApplicationIsInstalled:(BOOL *)installed withBundleID:(id)d onPairedDevice:(id)device error:(id *)error;
- (BOOL)getApplicationWithBundleID:(id)d willInstallAfterPairing:(BOOL *)pairing onDevice:(id)device error:(id *)error;
- (BOOL)getSystemAppInstallability:(BOOL *)installability onDeviceWithPairingID:(id)d withBundleID:(id)iD error:(id *)error;
- (BOOL)getSystemAppInstallability:(BOOL *)installability onPairedDevice:(id)device withBundleID:(id)d error:(id *)error;
- (BOOL)installApplication:(id)application onPairedDevice:(id)device installationStatus:(int64_t *)status error:(id *)error;
- (BOOL)installApplication:(id)application withProvisioningProfiles:(id)profiles onPairedDevice:(id)device installationStatus:(int64_t *)status error:(id *)error;
- (BOOL)installApplicationAtURL:(id)l onDeviceWithPairingID:(id)d installOptions:(id)options size:(int64_t)size installationStatus:(int64_t *)status error:(id *)error;
- (BOOL)installApplicationAtURL:(id)l onPairedDevice:(id)device installOptions:(id)options size:(int64_t)size installationStatus:(int64_t *)status error:(id *)error;
- (BOOL)installProvisioningProfileWithURL:(id)l onPairedDevice:(id)device error:(id *)error;
- (BOOL)killDaemonForTestingWithError:(id *)error;
- (BOOL)removeApplication:(id)application fromPairedDevice:(id)device removalStatus:(int64_t *)status error:(id *)error;
- (BOOL)removeProvisioningProfileWithID:(id)d fromPairedDevice:(id)device error:(id *)error;
- (BOOL)setUpdatePendingForCompanionApp:(id)app error:(id *)error;
- (BOOL)updatePreferencesForApplicationWithIdentifier:(id)identifier preferences:(id)preferences writingToPreferencesLocation:(unint64_t)location forPairedDevice:(id)device options:(unint64_t)options error:(id *)error;
- (id)_locallyAvailableApplicationWithBundleID:(id)d forDeviceWithPairingID:(id)iD options:(unint64_t)options error:(id *)error;
- (id)_proxyWithErrorHandler:(id)handler;
- (id)_synchronousProxyWithErrorHandler:(id)handler;
- (id)_validateAndExtractProfiles:(id)profiles error:(id *)error;
- (id)applicationOnDeviceWithPairingID:(id)d withBundleID:(id)iD error:(id *)error;
- (id)applicationOnPairedDevice:(id)device withBundleID:(id)d error:(id *)error;
- (id)applicationRemovabilityForPairedDevice:(id)device error:(id *)error;
- (id)copyLocalizedValuesFromAllDevicesForInfoPlistKeys:(id)keys forAppWithBundleID:(id)d fetchingFirstMatchingLocalizationInList:(id)list error:(id *)error;
- (id)copyRemoteDuplicatedClassInfoWithError:(id *)error;
- (id)installableSystemAppWithBundleID:(id)d onDeviceWithPairingID:(id)iD error:(id *)error;
- (id)installableSystemAppWithBundleID:(id)d onPairedDevice:(id)device error:(id *)error;
- (id)locallyAvailableApplicationWithBundleID:(id)d forPairedDevice:(id)device error:(id *)error;
- (id)locallyAvailableApplicationWithContainingApplicationBundleID:(id)d forDeviceWithPairingID:(id)iD error:(id *)error;
- (id)locallyAvailableApplicationWithContainingApplicationBundleID:(id)d forPairedDevice:(id)device error:(id *)error;
- (id)provisioningProfilesForApplicationWithBundleID:(id)d forPairedDevice:(id)device error:(id *)error;
- (id)provisioningProfilesForPairedDevice:(id)device error:(id *)error;
- (id)watchAppBundleIDForCompanionAppBundleID:(id)d error:(id *)error;
- (id)watchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)identifier error:(id *)error;
- (void)_deviceDidBecomeActiveNotification:(id)notification;
- (void)_deviceDidPairNotification:(id)notification;
- (void)_fetchLocallyAvailableApplicationWithBundleID:(id)d forDeviceWithPairingID:(id)iD options:(unint64_t)options completion:(id)completion;
- (void)_invalidateXPCConnection;
- (void)_onQueue_beginMonitoringNanoRegistryDeviceState;
- (void)_onQueue_endMonitoringNanoRegistryDeviceState;
- (void)_onQueue_reEstablishObserverConnectionIfNeeded;
- (void)activeComplicationsForPairedDevice:(id)device completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)d;
- (void)applicationIsInstalledOnAnyPairedDeviceWithBundleID:(id)d completion:(id)completion;
- (void)applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:(id)d completion:(id)completion;
- (void)applicationIsInstalledOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion;
- (void)applicationIsInstalledOnDeviceWithPairingID:(id)d withCompanionBundleID:(id)iD completion:(id)completion;
- (void)applicationIsInstalledOnPairedDevice:(id)device withBundleID:(id)d completion:(id)completion;
- (void)applicationIsInstalledOnPairedDevice:(id)device withCompanionBundleID:(id)d completion:(id)completion;
- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d;
- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d;
- (void)applicationsUpdated:(id)updated onDeviceWithPairingID:(id)d;
- (void)applictionRemovabilityForPairedDevice:(id)device completion:(id)completion;
- (void)cancelPendingInstallations;
- (void)cancelUpdatePendingForCompanionApp:(id)app completion:(id)completion;
- (void)enumerateInstallableSystemAppsOnDeviceWithPairingID:(id)d withBlock:(id)block;
- (void)enumerateInstallableSystemAppsOnPairedDevice:(id)device withBlock:(id)block;
- (void)enumerateInstalledApplicationsOnDeviceWithPairingID:(id)d withBlock:(id)block;
- (void)enumerateInstalledApplicationsOnPairedDevice:(id)device withBlock:(id)block;
- (void)enumerateLocallyAvailableApplicationsForDeviceWithPairingID:(id)d options:(unint64_t)options withBlock:(id)block;
- (void)enumerateLocallyAvailableApplicationsForPairedDevice:(id)device options:(unint64_t)options withBlock:(id)block;
- (void)fetchApplicationOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion;
- (void)fetchApplicationOnPairedDevice:(id)device withBundleID:(id)d completion:(id)completion;
- (void)fetchApplicationWithContainingApplicationBundleID:(id)d completion:(id)completion;
- (void)fetchInfoForApplicationWithBundleID:(id)d forPairedDevice:(id)device completion:(id)completion;
- (void)fetchInstallableSystemAppWithBundleID:(id)d onDeviceWithPairingID:(id)iD completion:(id)completion;
- (void)fetchInstallableSystemAppWithBundleID:(id)d onPairedDevice:(id)device completion:(id)completion;
- (void)fetchInstalledApplicationsForPairedDevice:(id)device completion:(id)completion;
- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)device withErrorCompletion:(id)completion;
- (void)fetchInstalledComplicationsForPairedDevice:(id)device completion:(id)completion;
- (void)fetchLocallyAvailableApplicationWithBundleID:(id)d forPairedDevice:(id)device completion:(id)completion;
- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion;
- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)d forPairedDevice:(id)device completion:(id)completion;
- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)d forPairedDevice:(id)device completion:(id)completion;
- (void)fetchProvisioningProfilesForPairedDevice:(id)device completion:(id)completion;
- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)d completion:(id)completion;
- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)identifier completion:(id)completion;
- (void)getAlwaysInstallForPairedDevice:(id)device completion:(id)completion;
- (void)getApplicationWithBundleID:(id)d willInstallAfterPairingOnDevice:(id)device completion:(id)completion;
- (void)installAllApplications;
- (void)installApplication:(id)application onPairedDevice:(id)device completion:(id)completion;
- (void)installApplication:(id)application withProvisioningProfiles:(id)profiles onPairedDevice:(id)device completion:(id)completion;
- (void)installApplicationAtURL:(id)l onDeviceWithPairingID:(id)d installOptions:(id)options size:(int64_t)size completion:(id)completion;
- (void)installApplicationAtURL:(id)l onPairedDevice:(id)device installOptions:(id)options size:(int64_t)size completion:(id)completion;
- (void)installProvisioningProfileWithURL:(id)l onPairedDevice:(id)device completion:(id)completion;
- (void)observerRegistrationSuccessful;
- (void)removabilityDidChangeForApplications:(id)applications onDeviceWithPairingID:(id)d;
- (void)removeApplication:(id)application fromPairedDevice:(id)device completion:(id)completion;
- (void)removeApplication:(id)application fromPairedDevice:(id)device completionWithError:(id)error;
- (void)removeObserver:(id)observer;
- (void)removeProvisioningProfileWithID:(id)d fromPairedDevice:(id)device completion:(id)completion;
- (void)retryPendingAppInstallationsForPairedDevice:(id)device;
- (void)setAlwaysInstall:(id)install;
- (void)setAlwaysInstall:(id)install forDevice:(id)device;
- (void)setUpdatePendingForCompanionApp:(id)app completion:(id)completion;
- (void)systemAppIsInstallableOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion;
- (void)systemAppIsInstallableOnPairedDevice:(id)device withBundleID:(id)d completion:(id)completion;
- (void)updateInstallProgressForApplication:(id)application progress:(double)progress phase:(unint64_t)phase;
- (void)updatePreferencesForApplicationWithIdentifier:(id)identifier preferences:(id)preferences writingToPreferencesLocation:(unint64_t)location forPairedDevice:(id)device options:(unint64_t)options completion:(id)completion;
- (void)updatedInstallStateForApplicationsWithInfo:(id)info;
@end

@implementation ACXDeviceConnection

+ (id)sharedDeviceConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ACXDeviceConnection_sharedDeviceConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

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
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (![(ACXDeviceConnection *)self monitoringForDeviceChanges])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__deviceDidBecomeActiveNotification_ name:*MEMORY[0x277D2BC48] object:0];
    [defaultCenter addObserver:self selector:sel__deviceDidPairNotification_ name:*MEMORY[0x277D2BC68] object:0];
    [(ACXDeviceConnection *)self setMonitoringForDeviceChanges:1];
  }
}

- (void)_onQueue_endMonitoringNanoRegistryDeviceState
{
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if ([(ACXDeviceConnection *)self monitoringForDeviceChanges])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D2BC48] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D2BC68] object:0];
    [(ACXDeviceConnection *)self setMonitoringForDeviceChanges:0];
  }
}

- (void)_deviceDidBecomeActiveNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ACXDeviceConnection__deviceDidBecomeActiveNotification___block_invoke;
  v7[3] = &unk_278C8D358;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
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

- (void)_deviceDidPairNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ACXDeviceConnection__deviceDidPairNotification___block_invoke;
  v7[3] = &unk_278C8D358;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
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

- (BOOL)_onQueue_createXPCConnectionIfNecessary:(id *)necessary
{
  xpcConnection = [(ACXDeviceConnection *)self xpcConnection];

  if (xpcConnection)
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
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

    if (!getActivePairedDevice)
    {
      v29 = _CreateAndLogError("[ACXDeviceConnection _onQueue_createXPCConnectionIfNecessary:]", 130, @"ACXErrorDomain", 54, 0, 0, @"There is no active paired watch.", v13, v33);
      v27 = v29;
      if (necessary)
      {
        v30 = v29;
        *necessary = v27;
      }

      observers = [(ACXDeviceConnection *)self observers];
      v32 = [observers count];

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

  xpcConnection2 = [(ACXDeviceConnection *)self xpcConnection];

  if (xpcConnection2)
  {
    v17 = +[ACXDeviceConnectionProtocolInterface interface];
    xpcConnection3 = [(ACXDeviceConnection *)self xpcConnection];
    [xpcConnection3 setRemoteObjectInterface:v17];

    v19 = +[ACXDeviceConnectionDelegateProtocolInterface interface];
    xpcConnection4 = [(ACXDeviceConnection *)self xpcConnection];
    [xpcConnection4 setExportedInterface:v19];

    xpcConnection5 = [(ACXDeviceConnection *)self xpcConnection];
    [xpcConnection5 setExportedObject:self];

    objc_initWeak(&location, self);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __63__ACXDeviceConnection__onQueue_createXPCConnectionIfNecessary___block_invoke;
    v36[3] = &unk_278C8D3A8;
    objc_copyWeak(&v37, &location);
    xpcConnection6 = [(ACXDeviceConnection *)self xpcConnection];
    [xpcConnection6 setInterruptionHandler:v36];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __63__ACXDeviceConnection__onQueue_createXPCConnectionIfNecessary___block_invoke_3;
    v34[3] = &unk_278C8D3A8;
    objc_copyWeak(&v35, &location);
    xpcConnection7 = [(ACXDeviceConnection *)self xpcConnection];
    [xpcConnection7 setInvalidationHandler:v34];

    xpcConnection8 = [(ACXDeviceConnection *)self xpcConnection];
    [xpcConnection8 resume];

    [(ACXDeviceConnection *)self _onQueue_enableObserversIfNeededForAValidXPCConnection];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
    return 1;
  }

  v26 = _CreateAndLogError("[ACXDeviceConnection _onQueue_createXPCConnectionIfNecessary:]", 148, @"ACXErrorDomain", 1, 0, 0, @"Failed to create NSXPCConnection for service %@", v16, @"com.apple.appconduitd.device-connection");
  v27 = v26;
  if (necessary)
  {
    v28 = v26;
    *necessary = v27;
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
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  observers = [(ACXDeviceConnection *)self observers];
  v5 = [observers count];

  if (![(ACXDeviceConnection *)self observersEnabled])
  {
    xpcConnection = [(ACXDeviceConnection *)self xpcConnection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__ACXDeviceConnection__onQueue_enableObserversIfNeededForAValidXPCConnection__block_invoke;
    v10[3] = &unk_278C8D3D0;
    v10[4] = &v11;
    v10[5] = v5;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
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
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

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
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ACXDeviceConnection__invalidateXPCConnection__block_invoke;
  block[3] = &unk_278C8D380;
  block[4] = self;
  dispatch_async(internalQueue, block);
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

- (id)_proxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
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
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__ACXDeviceConnection__proxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278C8D3F8;
  v9[4] = self;
  v11 = &v13;
  v12 = &v19;
  v6 = handlerCopy;
  v10 = v6;
  dispatch_sync(internalQueue, v9);

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

- (id)_synchronousProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
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
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ACXDeviceConnection__synchronousProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278C8D3F8;
  v9[4] = self;
  v11 = &v13;
  v12 = &v19;
  v6 = handlerCopy;
  v10 = v6;
  dispatch_sync(internalQueue, v9);

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

- (void)updatedInstallStateForApplicationsWithInfo:(id)info
{
  infoCopy = info;
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ACXDeviceConnection_updatedInstallStateForApplicationsWithInfo___block_invoke;
  v7[3] = &unk_278C8D358;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_sync(internalQueue, v7);
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

- (void)updateInstallProgressForApplication:(id)application progress:(double)progress phase:(unint64_t)phase
{
  applicationCopy = application;
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__ACXDeviceConnection_updateInstallProgressForApplication_progress_phase___block_invoke;
  v11[3] = &unk_278C8D448;
  v12 = applicationCopy;
  phaseCopy = phase;
  progressCopy = progress;
  v11[4] = self;
  v10 = applicationCopy;
  dispatch_sync(internalQueue, v11);
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

- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d
{
  installedCopy = installed;
  dCopy = d;
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ACXDeviceConnection_applicationsInstalled_onDeviceWithPairingID___block_invoke;
  block[3] = &unk_278C8D420;
  block[4] = self;
  v12 = installedCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = installedCopy;
  dispatch_sync(internalQueue, block);
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

- (void)applicationsUpdated:(id)updated onDeviceWithPairingID:(id)d
{
  updatedCopy = updated;
  dCopy = d;
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ACXDeviceConnection_applicationsUpdated_onDeviceWithPairingID___block_invoke;
  block[3] = &unk_278C8D420;
  block[4] = self;
  v12 = updatedCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = updatedCopy;
  dispatch_sync(internalQueue, block);
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

- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d
{
  uninstalledCopy = uninstalled;
  dCopy = d;
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ACXDeviceConnection_applicationsUninstalled_onDeviceWithPairingID___block_invoke;
  block[3] = &unk_278C8D420;
  block[4] = self;
  v12 = uninstalledCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = uninstalledCopy;
  dispatch_sync(internalQueue, block);
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

- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)d
{
  dCopy = d;
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__ACXDeviceConnection_applicationDatabaseResyncedForDeviceWithPairingID___block_invoke;
  v7[3] = &unk_278C8D358;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(internalQueue, v7);
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

- (void)removabilityDidChangeForApplications:(id)applications onDeviceWithPairingID:(id)d
{
  applicationsCopy = applications;
  dCopy = d;
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ACXDeviceConnection_removabilityDidChangeForApplications_onDeviceWithPairingID___block_invoke;
  block[3] = &unk_278C8D420;
  block[4] = self;
  v12 = applicationsCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = applicationsCopy;
  dispatch_sync(internalQueue, block);
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
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ACXDeviceConnection_observerRegistrationSuccessful__block_invoke;
  block[3] = &unk_278C8D380;
  block[4] = self;
  dispatch_sync(internalQueue, block);
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
  [self _removeFilesAtURL:v3];

  v4 = ACXCopyDataDirectory();
  [self _removeFilesAtURL:v4];

  v5 = ACXCopyStagingDirectoryPath();
  [self _removeFilesAtURL:v5];
}

+ (void)_removeFilesAtURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = 0;
  v5 = [defaultManager removeItemAtURL:lCopy error:&v8];
  v6 = v8;

  if (v5)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
LABEL_7:
      path = [lCopy path];
      MOLogWrite();
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    goto LABEL_7;
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ACXDeviceConnection_addObserver___block_invoke;
  v7[3] = &unk_278C8D358;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(internalQueue, v7);
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

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  internalQueue = [(ACXDeviceConnection *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ACXDeviceConnection_removeObserver___block_invoke;
  v7[3] = &unk_278C8D358;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(internalQueue, v7);
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

- (void)fetchInstalledApplicationsForPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__ACXDeviceConnection_fetchInstalledApplicationsForPairedDevice_completion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = completionCopy;
  v7 = completionCopy;
  deviceCopy = device;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  [v9 fetchInstalledApplicationsForDeviceWithPairingID:v10 completion:v7];
}

- (void)fetchInstalledComplicationsForPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__ACXDeviceConnection_fetchInstalledComplicationsForPairedDevice_completion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = completionCopy;
  v7 = completionCopy;
  deviceCopy = device;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  [v9 fetchInstalledComplicationsForDeviceWithPairingID:v10 completion:v7];
}

- (void)activeComplicationsForPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ACXDeviceConnection_activeComplicationsForPairedDevice_completion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = completionCopy;
  v7 = completionCopy;
  deviceCopy = device;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  [v9 activeComplicationsForDeviceWithPairingID:v10 completion:v7];
}

- (void)fetchInstalledCompatibleApplicationsWithDevice:(id)device withErrorCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__ACXDeviceConnection_fetchInstalledCompatibleApplicationsWithDevice_withErrorCompletion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = completionCopy;
  v7 = completionCopy;
  deviceCopy = device;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  [v9 fetchInstalledCompatibleApplicationsForDeviceWithPairingID:v10 completion:v7];
}

- (void)fetchApplicationWithContainingApplicationBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__ACXDeviceConnection_fetchApplicationWithContainingApplicationBundleID_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = completionCopy;
  v7 = completionCopy;
  dCopy = d;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 fetchApplicationWithContainingApplicationBundleID:dCopy completion:v7];
}

- (void)fetchInfoForApplicationWithBundleID:(id)d forPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__ACXDeviceConnection_fetchInfoForApplicationWithBundleID_forPairedDevice_completion___block_invoke;
  v14[3] = &unk_278C8D4B0;
  v15 = completionCopy;
  v9 = completionCopy;
  deviceCopy = device;
  dCopy = d;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v14];
  v13 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  [v12 fetchInfoForApplicationWithBundleID:dCopy forDeviceWithPairingID:v13 completion:v9];
}

- (void)fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__ACXDeviceConnection_fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = completionCopy;
  v7 = completionCopy;
  identifierCopy = identifier;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:identifierCopy completion:v7];
}

- (id)watchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  [v7 fetchWatchAppBundleURLWithinCompanionAppWithWatchAppIdentifier:identifierCopy completion:v11];

  v8 = v20[5];
  if (error && !v8)
  {
    *error = v14[5];
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

- (void)fetchWatchAppBundleIDForCompanionAppBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__ACXDeviceConnection_fetchWatchAppBundleIDForCompanionAppBundleID_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = completionCopy;
  v7 = completionCopy;
  dCopy = d;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 fetchWatchAppBundleIDForCompanionAppBundleID:dCopy completion:v7];
}

- (id)watchAppBundleIDForCompanionAppBundleID:(id)d error:(id *)error
{
  dCopy = d;
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
  [v7 fetchWatchAppBundleIDForCompanionAppBundleID:dCopy completion:v11];

  v8 = v20[5];
  if (error && !v8)
  {
    *error = v14[5];
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

- (void)retryPendingAppInstallationsForPairedDevice:(id)device
{
  deviceCopy = device;
  v6 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:&__block_literal_global_109];
  v5 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

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

- (void)installApplication:(id)application onPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__ACXDeviceConnection_installApplication_onPairedDevice_completion___block_invoke;
  v14[3] = &unk_278C8D4B0;
  v15 = completionCopy;
  v9 = completionCopy;
  deviceCopy = device;
  applicationCopy = application;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v14];
  v13 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  [v12 installApplication:applicationCopy withProvisioningProfileInfo:0 forTestFlight:0 onDeviceWithPairingID:v13 completion:v9];
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

- (BOOL)installApplication:(id)application onPairedDevice:(id)device installationStatus:(int64_t *)status error:(id *)error
{
  applicationCopy = application;
  deviceCopy = device;
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
  v13 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__ACXDeviceConnection_installApplication_onPairedDevice_installationStatus_error___block_invoke_2;
  v18[3] = &unk_278C8D550;
  v18[4] = &v20;
  v18[5] = &v26;
  [v12 installApplication:applicationCopy withProvisioningProfileInfo:0 forTestFlight:0 onDeviceWithPairingID:v13 completion:v18];

  v14 = v21;
  v15 = v21[5];
  if (v15)
  {
    if (error)
    {
      *error = v15;
      v14 = v21;
    }
  }

  else if (status)
  {
    *status = v27[3];
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

- (id)_validateAndExtractProfiles:(id)profiles error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  if (!profilesCopy)
  {
    v17 = objc_opt_new();
    v10 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((ACXArrayContainsOnlyClass(profilesCopy) & 1) == 0)
  {
    v10 = _CreateAndLogError("[ACXDeviceConnection _validateAndExtractProfiles:error:]", 693, @"ACXErrorDomain", 20, 0, 0, @"Profiles array did not contain only NSURL objects", v6, v24);
    v17 = 0;
LABEL_14:
    v7 = 0;
    if (!error)
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
  v25 = profilesCopy;
  obj = profilesCopy;
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
        lastPathComponent = [v14 lastPathComponent];
        v27 = v13;
        v16 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v14 options:3 error:&v27];
        v10 = v27;

        if (!v16)
        {
          path = [v14 path];
          v20 = _CreateAndLogError("[ACXDeviceConnection _validateAndExtractProfiles:error:]", 702, @"ACXErrorDomain", 21, v10, 0, @"Failed to read profile at %@ : %@", v19, path);

          v17 = 0;
          v10 = v20;
          goto LABEL_19;
        }

        [v7 setObject:v16 forKeyedSubscript:lastPathComponent];

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
  profilesCopy = v25;
  if (error)
  {
LABEL_20:
    if (!v17)
    {
      v21 = v10;
      *error = v10;
    }
  }

LABEL_22:

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)installApplication:(id)application withProvisioningProfiles:(id)profiles onPairedDevice:(id)device completion:(id)completion
{
  applicationCopy = application;
  deviceCopy = device;
  completionCopy = completion;
  v23 = 0;
  v13 = [(ACXDeviceConnection *)self _validateAndExtractProfiles:profiles error:&v23];
  v14 = v23;
  if (v13)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __93__ACXDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_completion___block_invoke;
    v21 = &unk_278C8D4B0;
    v15 = completionCopy;
    v22 = v15;
    v16 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:&v18];
    v17 = [deviceCopy valueForProperty:{*MEMORY[0x277D2BBB8], v18, v19, v20, v21}];
    [v16 installApplication:applicationCopy withProvisioningProfileInfo:v13 forTestFlight:1 onDeviceWithPairingID:v17 completion:v15];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (BOOL)installApplication:(id)application withProvisioningProfiles:(id)profiles onPairedDevice:(id)device installationStatus:(int64_t *)status error:(id *)error
{
  applicationCopy = application;
  profilesCopy = profiles;
  deviceCopy = device;
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
  v15 = [(ACXDeviceConnection *)self _validateAndExtractProfiles:profilesCopy error:&obj];
  objc_storeStrong(&v30, obj);
  if (v15)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __107__ACXDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_installationStatus_error___block_invoke;
    v23[3] = &unk_278C8D4D8;
    v23[4] = &v25;
    v16 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v23];
    v17 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __107__ACXDeviceConnection_installApplication_withProvisioningProfiles_onPairedDevice_installationStatus_error___block_invoke_2;
    v22[3] = &unk_278C8D550;
    v22[4] = &v25;
    v22[5] = &v31;
    [v16 installApplication:applicationCopy withProvisioningProfileInfo:v15 forTestFlight:1 onDeviceWithPairingID:v17 completion:v22];
  }

  v18 = v26;
  v19 = v26[5];
  if (v19)
  {
    if (error)
    {
      *error = v19;
      v18 = v26;
    }
  }

  else if (status)
  {
    *status = v32[3];
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

- (void)installApplicationAtURL:(id)l onPairedDevice:(id)device installOptions:(id)options size:(int64_t)size completion:(id)completion
{
  v12 = *MEMORY[0x277D2BBB8];
  completionCopy = completion;
  optionsCopy = options;
  lCopy = l;
  v16 = [device valueForProperty:v12];
  [(ACXDeviceConnection *)self installApplicationAtURL:lCopy onDeviceWithPairingID:v16 installOptions:optionsCopy size:size completion:completionCopy];
}

- (void)installApplicationAtURL:(id)l onDeviceWithPairingID:(id)d installOptions:(id)options size:(int64_t)size completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __100__ACXDeviceConnection_installApplicationAtURL_onDeviceWithPairingID_installOptions_size_completion___block_invoke;
  v18[3] = &unk_278C8D4B0;
  v19 = completionCopy;
  v13 = completionCopy;
  optionsCopy = options;
  dCopy = d;
  lCopy = l;
  v17 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v18];
  [v17 installApplicationAtURL:lCopy onDeviceWithPairingID:dCopy installOptions:optionsCopy size:size completion:v13];
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

- (BOOL)installApplicationAtURL:(id)l onPairedDevice:(id)device installOptions:(id)options size:(int64_t)size installationStatus:(int64_t *)status error:(id *)error
{
  v14 = *MEMORY[0x277D2BBB8];
  optionsCopy = options;
  lCopy = l;
  v17 = [device valueForProperty:v14];
  LOBYTE(error) = [(ACXDeviceConnection *)self installApplicationAtURL:lCopy onDeviceWithPairingID:v17 installOptions:optionsCopy size:size installationStatus:status error:error];

  return error;
}

- (BOOL)installApplicationAtURL:(id)l onDeviceWithPairingID:(id)d installOptions:(id)options size:(int64_t)size installationStatus:(int64_t *)status error:(id *)error
{
  lCopy = l;
  dCopy = d;
  optionsCopy = options;
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
  [v17 installApplicationAtURL:lCopy onDeviceWithPairingID:dCopy installOptions:optionsCopy size:size completion:v22];

  v18 = v25;
  v19 = v25[5];
  if (v19)
  {
    if (error)
    {
      *error = v19;
      v18 = v25;
    }
  }

  else if (status)
  {
    *status = v31[3];
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

- (void)removeApplication:(id)application fromPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ACXDeviceConnection_removeApplication_fromPairedDevice_completion___block_invoke;
  v10[3] = &unk_278C8D578;
  v11 = completionCopy;
  v9 = completionCopy;
  [(ACXDeviceConnection *)self removeApplication:application fromPairedDevice:device completionWithError:v10];
}

- (void)removeApplication:(id)application fromPairedDevice:(id)device completionWithError:(id)error
{
  errorCopy = error;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__ACXDeviceConnection_removeApplication_fromPairedDevice_completionWithError___block_invoke;
  v14[3] = &unk_278C8D4B0;
  v15 = errorCopy;
  v9 = errorCopy;
  deviceCopy = device;
  applicationCopy = application;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v14];
  v13 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  [v12 removeApplication:applicationCopy fromDeviceWithPairingID:v13 completion:v9];
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

- (BOOL)removeApplication:(id)application fromPairedDevice:(id)device removalStatus:(int64_t *)status error:(id *)error
{
  applicationCopy = application;
  deviceCopy = device;
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
  v13 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__ACXDeviceConnection_removeApplication_fromPairedDevice_removalStatus_error___block_invoke_2;
  v18[3] = &unk_278C8D550;
  v18[4] = &v20;
  v18[5] = &v26;
  [v12 removeApplication:applicationCopy fromDeviceWithPairingID:v13 completion:v18];

  v14 = v21;
  v15 = v21[5];
  if (v15)
  {
    if (error)
    {
      *error = v15;
      v14 = v21;
    }
  }

  else if (status)
  {
    *status = v27[3];
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

- (void)setAlwaysInstall:(id)install
{
  installCopy = install;
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  if (getActivePairedDevice)
  {
    [(ACXDeviceConnection *)self setAlwaysInstall:installCopy forDevice:getActivePairedDevice];
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)setAlwaysInstall:(id)install forDevice:(id)device
{
  installCopy = install;
  v5 = MEMORY[0x277D2BA58];
  deviceCopy = device;
  v7 = [[v5 alloc] initWithDomain:@"com.apple.appconduitd.gizmostate" pairedDevice:deviceCopy];
  v8 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  if (v7)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      uUIDString = [v8 UUIDString];
      bOOLValue = [installCopy BOOLValue];
      v11 = @"NO";
      if (bOOLValue)
      {
        v11 = @"YES";
      }

      v13 = uUIDString;
      v14 = v11;
      MOLogWrite();
    }

    [v7 setObject:installCopy forKey:{@"AlwaysInstall", v13, v14}];
    synchronize = [v7 synchronize];
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    uUIDString2 = [v8 UUIDString];
    MOLogWrite();
  }
}

- (void)getAlwaysInstallForPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__ACXDeviceConnection_getAlwaysInstallForPairedDevice_completion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = completionCopy;
  v7 = completionCopy;
  deviceCopy = device;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

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

- (BOOL)getAlwaysInstall:(BOOL *)install forPairedDevice:(id)device error:(id *)error
{
  deviceCopy = device;
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
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
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
    if (error)
    {
      *error = v12;
      v11 = v18;
    }
  }

  else if (install)
  {
    *install = *(v24 + 24);
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

- (void)installProvisioningProfileWithURL:(id)l onPairedDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  if (l)
  {
    v22 = 0;
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l options:3 error:&v22];
    v12 = v22;
    if (v11)
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __83__ACXDeviceConnection_installProvisioningProfileWithURL_onPairedDevice_completion___block_invoke;
      v20 = &unk_278C8D4B0;
      v13 = completionCopy;
      v21 = v13;
      v14 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:&v17];
      v15 = [deviceCopy valueForProperty:{*MEMORY[0x277D2BBB8], v17, v18, v19, v20}];
      [v14 installProvisioningProfileWithData:v11 onDeviceWithPairingID:v15 completion:v13];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, v12);
    }
  }

  else
  {
    v16 = _CreateAndLogError("[ACXDeviceConnection installProvisioningProfileWithURL:onPairedDevice:completion:]", 942, @"ACXErrorDomain", 20, 0, 0, @"profileURL parameter was nil", v9, v17);
    (*(completionCopy + 2))(completionCopy, 0, v16);
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

- (BOOL)installProvisioningProfileWithURL:(id)l onPairedDevice:(id)device error:(id *)error
{
  lCopy = l;
  deviceCopy = device;
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
  if (!lCopy)
  {
    v14 = _CreateAndLogError("[ACXDeviceConnection installProvisioningProfileWithURL:onPairedDevice:error:]", 965, @"ACXErrorDomain", 20, 0, 0, @"profileURL parameter was nil", v9, v17[0]);
    v11 = v25[5];
    v25[5] = v14;
    goto LABEL_5;
  }

  obj = 0;
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:3 error:&obj];
  objc_storeStrong(&v29, obj);
  if (v11)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__ACXDeviceConnection_installProvisioningProfileWithURL_onPairedDevice_error___block_invoke;
    v18[3] = &unk_278C8D4D8;
    v18[4] = &v24;
    v12 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v18];
    v13 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
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
  if (error && (v21[3] & 1) == 0)
  {
    *error = v25[5];
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

- (void)removeProvisioningProfileWithID:(id)d fromPairedDevice:(id)device completion:(id)completion
{
  dCopy = d;
  deviceCopy = device;
  completionCopy = completion;
  v12 = completionCopy;
  if (dCopy)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __83__ACXDeviceConnection_removeProvisioningProfileWithID_fromPairedDevice_completion___block_invoke;
    v18[3] = &unk_278C8D4B0;
    v13 = completionCopy;
    v19 = v13;
    v14 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v18];
    v15 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
    [v14 removeProvisioningProfileWithID:dCopy fromDeviceWithPairingID:v15 completion:v13];
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

- (BOOL)removeProvisioningProfileWithID:(id)d fromPairedDevice:(id)device error:(id *)error
{
  dCopy = d;
  deviceCopy = device;
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
  if (dCopy)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__ACXDeviceConnection_removeProvisioningProfileWithID_fromPairedDevice_error___block_invoke;
    v18[3] = &unk_278C8D4D8;
    v18[4] = &v23;
    v11 = [(ACXDeviceConnection *)self _synchronousProxyWithErrorHandler:v18];
    v12 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__ACXDeviceConnection_removeProvisioningProfileWithID_fromPairedDevice_error___block_invoke_2;
    v17[3] = &unk_278C8D5C8;
    v17[4] = &v23;
    v17[5] = &v19;
    [v11 removeProvisioningProfileWithID:dCopy fromDeviceWithPairingID:v12 completion:v17];
  }

  else
  {
    v13 = _CreateAndLogError("[ACXDeviceConnection removeProvisioningProfileWithID:fromPairedDevice:error:]", 1017, @"ACXErrorDomain", 20, 0, 0, @"profileID parameter was nil", v9, v16);
    v11 = v24[5];
    v24[5] = v13;
  }

  v14 = *(v20 + 24);
  if (error && (v20[3] & 1) == 0)
  {
    *error = v24[5];
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

- (void)fetchProvisioningProfilesForPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ACXDeviceConnection_fetchProvisioningProfilesForPairedDevice_completion___block_invoke;
  v11[3] = &unk_278C8D4B0;
  v12 = completionCopy;
  v7 = completionCopy;
  deviceCopy = device;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v11];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

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

- (id)provisioningProfilesForPairedDevice:(id)device error:(id *)error
{
  deviceCopy = device;
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
  v8 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ACXDeviceConnection_provisioningProfilesForPairedDevice_error___block_invoke_2;
  v12[3] = &unk_278C8D5F0;
  v12[4] = &v20;
  v12[5] = &v14;
  [v7 fetchProvisioningProfilesForDeviceWithPairingID:v8 completion:v12];

  v9 = v15[5];
  if (error && !v9)
  {
    *error = v21[5];
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

- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)d forPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__ACXDeviceConnection_fetchProvisioningProfilesForApplicationWithBundleID_forPairedDevice_completion___block_invoke;
  v14[3] = &unk_278C8D4B0;
  v15 = completionCopy;
  v9 = completionCopy;
  deviceCopy = device;
  dCopy = d;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v14];
  v13 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  [v12 fetchProvisioningProfilesForApplicationWithBundleID:dCopy forDeviceWithPairingID:v13 completion:v9];
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

- (id)provisioningProfilesForApplicationWithBundleID:(id)d forPairedDevice:(id)device error:(id *)error
{
  dCopy = d;
  deviceCopy = device;
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
  v11 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__ACXDeviceConnection_provisioningProfilesForApplicationWithBundleID_forPairedDevice_error___block_invoke_2;
  v15[3] = &unk_278C8D5F0;
  v15[4] = &v23;
  v15[5] = &v17;
  [v10 fetchProvisioningProfilesForApplicationWithBundleID:dCopy forDeviceWithPairingID:v11 completion:v15];

  v12 = v18[5];
  if (error && !v12)
  {
    *error = v24[5];
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

- (void)updatePreferencesForApplicationWithIdentifier:(id)identifier preferences:(id)preferences writingToPreferencesLocation:(unint64_t)location forPairedDevice:(id)device options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __145__ACXDeviceConnection_updatePreferencesForApplicationWithIdentifier_preferences_writingToPreferencesLocation_forPairedDevice_options_completion___block_invoke;
  v21[3] = &unk_278C8D4B0;
  v22 = completionCopy;
  v15 = completionCopy;
  deviceCopy = device;
  preferencesCopy = preferences;
  identifierCopy = identifier;
  v19 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v21];
  v20 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  [v19 updatePreferencesForApplicationWithIdentifier:identifierCopy preferences:preferencesCopy writingToPreferencesLocation:location forDeviceWithPairingID:v20 options:options completion:v15];
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

- (BOOL)updatePreferencesForApplicationWithIdentifier:(id)identifier preferences:(id)preferences writingToPreferencesLocation:(unint64_t)location forPairedDevice:(id)device options:(unint64_t)options error:(id *)error
{
  identifierCopy = identifier;
  preferencesCopy = preferences;
  deviceCopy = device;
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
  v18 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __140__ACXDeviceConnection_updatePreferencesForApplicationWithIdentifier_preferences_writingToPreferencesLocation_forPairedDevice_options_error___block_invoke_2;
  v21[3] = &unk_278C8D4D8;
  v21[4] = &v23;
  [v17 updatePreferencesForApplicationWithIdentifier:identifierCopy preferences:preferencesCopy writingToPreferencesLocation:location forDeviceWithPairingID:v18 options:options completion:v21];

  if (error)
  {
    *error = v24[5];
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

- (void)setUpdatePendingForCompanionApp:(id)app completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__ACXDeviceConnection_setUpdatePendingForCompanionApp_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = completionCopy;
  v7 = completionCopy;
  appCopy = app;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 setUpdatePendingForCompanionApp:appCopy completion:v7];
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

- (BOOL)setUpdatePendingForCompanionApp:(id)app error:(id *)error
{
  appCopy = app;
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
  [v7 setUpdatePendingForCompanionApp:appCopy completion:v10];

  if (error)
  {
    *error = v13[5];
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

- (void)cancelUpdatePendingForCompanionApp:(id)app completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ACXDeviceConnection_cancelUpdatePendingForCompanionApp_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = completionCopy;
  v7 = completionCopy;
  appCopy = app;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 cancelUpdatePendingForCompanionApp:appCopy completion:v7];
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

- (BOOL)cancelUpdatePendingForCompanionApp:(id)app error:(id *)error
{
  appCopy = app;
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
  [v7 cancelUpdatePendingForCompanionApp:appCopy completion:v10];

  if (error)
  {
    *error = v13[5];
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

- (void)getApplicationWithBundleID:(id)d willInstallAfterPairingOnDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v9 = *MEMORY[0x277D2BBB8];
  dCopy = d;
  v11 = [device valueForProperty:v9];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__ACXDeviceConnection_getApplicationWithBundleID_willInstallAfterPairingOnDevice_completion___block_invoke;
  v14[3] = &unk_278C8D4B0;
  v15 = completionCopy;
  v12 = completionCopy;
  v13 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v14];
  [v13 applicationWillInstallAfterPairingOnDeviceWithPairingID:v11 withBundleID:dCopy completion:v12];
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

- (BOOL)getApplicationWithBundleID:(id)d willInstallAfterPairing:(BOOL *)pairing onDevice:(id)device error:(id *)error
{
  dCopy = d;
  deviceCopy = device;
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
  v12 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
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
  [v13 applicationWillInstallAfterPairingOnDeviceWithPairingID:v12 withBundleID:dCopy completion:v17];

  v14 = v24[5];
  if (v14)
  {
    if (error)
    {
      v14 = v14;
      *error = v14;
    }
  }

  else if (pairing)
  {
    *pairing = *(v20 + 24);
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

- (void)enumerateInstalledApplicationsOnPairedDevice:(id)device withBlock:(id)block
{
  v6 = *MEMORY[0x277D2BBB8];
  blockCopy = block;
  v8 = [device valueForProperty:v6];
  [(ACXDeviceConnection *)self enumerateInstalledApplicationsOnDeviceWithPairingID:v8 withBlock:blockCopy];
}

- (void)enumerateInstalledApplicationsOnDeviceWithPairingID:(id)d withBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke;
  v16[3] = &unk_278C8D4B0;
  v8 = blockCopy;
  v17 = v8;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v16];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__ACXDeviceConnection_enumerateInstalledApplicationsOnDeviceWithPairingID_withBlock___block_invoke_2;
  v12[3] = &unk_278C8D690;
  selfCopy = self;
  v15 = v8;
  v13 = dCopy;
  v10 = dCopy;
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

- (void)enumerateLocallyAvailableApplicationsForPairedDevice:(id)device options:(unint64_t)options withBlock:(id)block
{
  v8 = *MEMORY[0x277D2BBB8];
  blockCopy = block;
  v10 = [device valueForProperty:v8];
  [(ACXDeviceConnection *)self enumerateLocallyAvailableApplicationsForDeviceWithPairingID:v10 options:options withBlock:blockCopy];
}

- (void)enumerateLocallyAvailableApplicationsForDeviceWithPairingID:(id)d options:(unint64_t)options withBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke;
  v18[3] = &unk_278C8D4B0;
  v10 = blockCopy;
  v19 = v10;
  v11 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__ACXDeviceConnection_enumerateLocallyAvailableApplicationsForDeviceWithPairingID_options_withBlock___block_invoke_2;
  v14[3] = &unk_278C8D730;
  v14[4] = self;
  v15 = dCopy;
  v16 = v10;
  optionsCopy = options;
  v12 = dCopy;
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

- (void)fetchApplicationOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__ACXDeviceConnection_fetchApplicationOnDeviceWithPairingID_withBundleID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = completionCopy;
  v9 = completionCopy;
  iDCopy = iD;
  dCopy = d;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 fetchInstalledWatchAppWithBundleID:iDCopy forDeviceWithPairingID:dCopy completion:v9];
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

- (id)applicationOnDeviceWithPairingID:(id)d withBundleID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
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
  [v10 fetchInstalledWatchAppWithBundleID:iDCopy forDeviceWithPairingID:dCopy completion:v14];

  v11 = v17[5];
  if (error && !v11)
  {
    *error = v23[5];
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

- (void)fetchApplicationOnPairedDevice:(id)device withBundleID:(id)d completion:(id)completion
{
  v8 = *MEMORY[0x277D2BBB8];
  completionCopy = completion;
  dCopy = d;
  v11 = [device valueForProperty:v8];
  [(ACXDeviceConnection *)self fetchApplicationOnDeviceWithPairingID:v11 withBundleID:dCopy completion:completionCopy];
}

- (id)applicationOnPairedDevice:(id)device withBundleID:(id)d error:(id *)error
{
  v8 = *MEMORY[0x277D2BBB8];
  dCopy = d;
  v10 = [device valueForProperty:v8];
  v11 = [(ACXDeviceConnection *)self applicationOnDeviceWithPairingID:v10 withBundleID:dCopy error:error];

  return v11;
}

- (void)_fetchLocallyAvailableApplicationWithBundleID:(id)d forDeviceWithPairingID:(id)iD options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__ACXDeviceConnection__fetchLocallyAvailableApplicationWithBundleID_forDeviceWithPairingID_options_completion___block_invoke;
  v15[3] = &unk_278C8D4B0;
  v16 = completionCopy;
  v11 = completionCopy;
  iDCopy = iD;
  dCopy = d;
  v14 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v15];
  [v14 fetchLocallyAvailableWatchAppWithBundleID:dCopy forDeviceWithPairingID:iDCopy options:options completion:v11];
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

- (void)fetchLocallyAvailableApplicationWithBundleID:(id)d forPairedDevice:(id)device completion:(id)completion
{
  v8 = *MEMORY[0x277D2BBB8];
  completionCopy = completion;
  dCopy = d;
  v11 = [device valueForProperty:v8];
  [(ACXDeviceConnection *)self _fetchLocallyAvailableApplicationWithBundleID:dCopy forDeviceWithPairingID:v11 options:0 completion:completionCopy];
}

- (id)_locallyAvailableApplicationWithBundleID:(id)d forDeviceWithPairingID:(id)iD options:(unint64_t)options error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
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
  [v12 fetchLocallyAvailableWatchAppWithBundleID:dCopy forDeviceWithPairingID:iDCopy options:options completion:v16];

  v13 = v19[5];
  if (error && !v13)
  {
    *error = v25[5];
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

- (id)locallyAvailableApplicationWithBundleID:(id)d forPairedDevice:(id)device error:(id *)error
{
  v8 = *MEMORY[0x277D2BBB8];
  dCopy = d;
  v10 = [device valueForProperty:v8];
  v11 = [(ACXDeviceConnection *)self _locallyAvailableApplicationWithBundleID:dCopy forDeviceWithPairingID:v10 options:0 error:error];

  return v11;
}

- (id)locallyAvailableApplicationWithContainingApplicationBundleID:(id)d forPairedDevice:(id)device error:(id *)error
{
  v8 = *MEMORY[0x277D2BBB8];
  dCopy = d;
  v10 = [device valueForProperty:v8];
  v11 = [(ACXDeviceConnection *)self locallyAvailableApplicationWithContainingApplicationBundleID:dCopy forDeviceWithPairingID:v10 error:error];

  return v11;
}

- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)d forPairedDevice:(id)device completion:(id)completion
{
  v8 = *MEMORY[0x277D2BBB8];
  completionCopy = completion;
  dCopy = d;
  v11 = [device valueForProperty:v8];
  [(ACXDeviceConnection *)self fetchLocallyAvailableApplicationWithContainingApplicationBundleID:dCopy forDeviceWithPairingID:v11 completion:completionCopy];
}

- (void)fetchLocallyAvailableApplicationWithContainingApplicationBundleID:(id)d forDeviceWithPairingID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __123__ACXDeviceConnection_fetchLocallyAvailableApplicationWithContainingApplicationBundleID_forDeviceWithPairingID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = completionCopy;
  v9 = completionCopy;
  iDCopy = iD;
  dCopy = d;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 fetchLocallyAvailableApplicationWithContainingApplicationBundleID:dCopy forDeviceWithPairingID:iDCopy completion:v9];
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

- (id)locallyAvailableApplicationWithContainingApplicationBundleID:(id)d forDeviceWithPairingID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
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
  [v10 fetchLocallyAvailableApplicationWithContainingApplicationBundleID:dCopy forDeviceWithPairingID:iDCopy completion:v14];

  v11 = v17[5];
  if (error && !v11)
  {
    *error = v23[5];
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

- (void)applicationIsInstalledOnPairedDevice:(id)device withBundleID:(id)d completion:(id)completion
{
  v8 = *MEMORY[0x277D2BBB8];
  completionCopy = completion;
  dCopy = d;
  v11 = [device valueForProperty:v8];
  [(ACXDeviceConnection *)self applicationIsInstalledOnDeviceWithPairingID:v11 withBundleID:dCopy completion:completionCopy];
}

- (BOOL)getApplicationIsInstalled:(BOOL *)installed withBundleID:(id)d onPairedDevice:(id)device error:(id *)error
{
  v10 = *MEMORY[0x277D2BBB8];
  dCopy = d;
  v12 = [device valueForProperty:v10];
  LOBYTE(error) = [(ACXDeviceConnection *)self getApplicationIsInstalled:installed withBundleID:dCopy onDeviceWithPairingID:v12 error:error];

  return error;
}

- (BOOL)getApplicationIsInstalled:(BOOL *)installed withBundleID:(id)d onDeviceWithPairingID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
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
  [v12 applicationIsInstalledOnDeviceWithPairingID:iDCopy withBundleID:dCopy completion:v17];

  v13 = v24;
  v14 = v24[5];
  if (v14)
  {
    if (error)
    {
      *error = v14;
      v13 = v24;
    }
  }

  else if (installed)
  {
    *installed = *(v20 + 24);
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

- (void)applicationIsInstalledOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__ACXDeviceConnection_applicationIsInstalledOnDeviceWithPairingID_withBundleID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = completionCopy;
  v9 = completionCopy;
  iDCopy = iD;
  dCopy = d;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 applicationIsInstalledOnDeviceWithPairingID:dCopy withBundleID:iDCopy completion:v9];
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

- (void)applicationIsInstalledOnPairedDevice:(id)device withCompanionBundleID:(id)d completion:(id)completion
{
  v8 = *MEMORY[0x277D2BBB8];
  completionCopy = completion;
  dCopy = d;
  v11 = [device valueForProperty:v8];
  [(ACXDeviceConnection *)self applicationIsInstalledOnDeviceWithPairingID:v11 withCompanionBundleID:dCopy completion:completionCopy];
}

- (BOOL)getApplicationIsInstalled:(BOOL *)installed onPairedDevice:(id)device withCompanionBundleID:(id)d error:(id *)error
{
  v10 = *MEMORY[0x277D2BBB8];
  dCopy = d;
  v12 = [device valueForProperty:v10];
  LOBYTE(error) = [(ACXDeviceConnection *)self getApplicationIsInstalled:installed onDeviceWithPairingID:v12 withCompanionBundleID:dCopy error:error];

  return error;
}

- (void)applicationIsInstalledOnDeviceWithPairingID:(id)d withCompanionBundleID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__ACXDeviceConnection_applicationIsInstalledOnDeviceWithPairingID_withCompanionBundleID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = completionCopy;
  v9 = completionCopy;
  iDCopy = iD;
  dCopy = d;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 applicationIsInstalledOnDeviceWithPairingID:dCopy withCompanionBundleID:iDCopy completion:v9];
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

- (BOOL)getApplicationIsInstalled:(BOOL *)installed onDeviceWithPairingID:(id)d withCompanionBundleID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
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
  [v12 applicationIsInstalledOnDeviceWithPairingID:dCopy withCompanionBundleID:iDCopy completion:v17];

  v13 = v20;
  v14 = v20[5];
  if (v14)
  {
    if (error)
    {
      *error = v14;
      v13 = v20;
    }
  }

  else if (installed)
  {
    *installed = *(v26 + 24);
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

- (void)applicationIsInstalledOnAnyPairedDeviceWithBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__ACXDeviceConnection_applicationIsInstalledOnAnyPairedDeviceWithBundleID_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = completionCopy;
  v7 = completionCopy;
  dCopy = d;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
  [v9 applicationIsInstalledOnAnyPairedDeviceWithBundleID:dCopy completion:v7];
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

- (BOOL)getApplicationIsInstalled:(BOOL *)installed onAnyPairedDeviceWithBundleID:(id)d error:(id *)error
{
  dCopy = d;
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
  [v9 applicationIsInstalledOnAnyPairedDeviceWithBundleID:dCopy completion:v14];

  v10 = v17;
  v11 = v17[5];
  if (v11)
  {
    if (error)
    {
      *error = v11;
      v10 = v17;
    }
  }

  else if (installed)
  {
    *installed = *(v23 + 24);
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

- (BOOL)_companionAppWithoutCounterparts:(id)counterparts
{
  v3 = MEMORY[0x277CC1E70];
  counterpartsCopy = counterparts;
  v9 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:counterpartsCopy allowPlaceholder:1 error:&v9];

  if (v5)
  {
    counterpartIdentifiers = [v5 counterpartIdentifiers];
    v7 = [counterpartIdentifiers count] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([(ACXDeviceConnection *)self _companionAppWithoutCounterparts:dCopy])
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __95__ACXDeviceConnection_applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID_completion___block_invoke;
    v10[3] = &unk_278C8D4B0;
    v8 = completionCopy;
    v11 = v8;
    v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v10];
    [v9 applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:dCopy completion:v8];
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

- (BOOL)getApplicationIsInstalled:(BOOL *)installed onAnyPairedDeviceWithCompanionBundleID:(id)d error:(id *)error
{
  dCopy = d;
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
  if ([(ACXDeviceConnection *)self _companionAppWithoutCounterparts:dCopy])
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
    [v10 applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:dCopy completion:v14];

    v11 = v17;
    v12 = v17[5];
    if (v12)
    {
      if (error)
      {
        *error = v12;
        v11 = v17;
      }
    }

    else if (installed)
    {
      *installed = *(v23 + 24);
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

- (BOOL)fetchApplicationDatabaseSyncInformationForPairedDevice:(id)device returningDatabaseUUID:(id *)d lastSequenceNumber:(unint64_t *)number error:(id *)error
{
  v10 = [device valueForProperty:*MEMORY[0x277D2BBB8]];
  LOBYTE(error) = [(ACXDeviceConnection *)self fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:v10 returningDatabaseUUID:d lastSequenceNumber:number error:error];

  return error;
}

- (BOOL)fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:(id)d returningDatabaseUUID:(id *)iD lastSequenceNumber:(unint64_t *)number error:(id *)error
{
  dCopy = d;
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
  [v11 fetchApplicationDatabaseSyncInformationForDeviceWithPairingID:dCopy completion:v15];

  v12 = v18[5];
  if (v12)
  {
    if (error)
    {
      v13 = v12;
      *error = v12;
    }
  }

  else
  {
    if (iD)
    {
      *iD = v28[5];
    }

    if (number)
    {
      *number = v24[3];
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

- (id)copyLocalizedValuesFromAllDevicesForInfoPlistKeys:(id)keys forAppWithBundleID:(id)d fetchingFirstMatchingLocalizationInList:(id)list error:(id *)error
{
  keysCopy = keys;
  dCopy = d;
  listCopy = list;
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
  [v13 fetchLocalizedValuesFromAllDevicesForInfoPlistKeys:keysCopy forAppWithBundleID:dCopy fetchingFirstMatchingLocalizationInList:listCopy completion:v17];

  v14 = v26[5];
  if (error && !v14)
  {
    *error = v20[5];
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

- (void)enumerateInstallableSystemAppsOnPairedDevice:(id)device withBlock:(id)block
{
  v6 = *MEMORY[0x277D2BBB8];
  blockCopy = block;
  v8 = [device valueForProperty:v6];
  [(ACXDeviceConnection *)self enumerateInstallableSystemAppsOnDeviceWithPairingID:v8 withBlock:blockCopy];
}

- (void)enumerateInstallableSystemAppsOnDeviceWithPairingID:(id)d withBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke;
  v16[3] = &unk_278C8D4B0;
  v8 = blockCopy;
  v17 = v8;
  v9 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v16];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__ACXDeviceConnection_enumerateInstallableSystemAppsOnDeviceWithPairingID_withBlock___block_invoke_2;
  v12[3] = &unk_278C8D690;
  selfCopy = self;
  v15 = v8;
  v13 = dCopy;
  v10 = dCopy;
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

- (void)fetchInstallableSystemAppWithBundleID:(id)d onPairedDevice:(id)device completion:(id)completion
{
  v8 = *MEMORY[0x277D2BBB8];
  completionCopy = completion;
  dCopy = d;
  v11 = [device valueForProperty:v8];
  [(ACXDeviceConnection *)self fetchInstallableSystemAppWithBundleID:dCopy onDeviceWithPairingID:v11 completion:completionCopy];
}

- (void)fetchInstallableSystemAppWithBundleID:(id)d onDeviceWithPairingID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__ACXDeviceConnection_fetchInstallableSystemAppWithBundleID_onDeviceWithPairingID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = completionCopy;
  v9 = completionCopy;
  iDCopy = iD;
  dCopy = d;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 fetchInstallableSystemAppWithBundleID:dCopy forDeviceWithPairingID:iDCopy completion:v9];
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

- (id)installableSystemAppWithBundleID:(id)d onPairedDevice:(id)device error:(id *)error
{
  v8 = *MEMORY[0x277D2BBB8];
  dCopy = d;
  v10 = [device valueForProperty:v8];
  v11 = [(ACXDeviceConnection *)self installableSystemAppWithBundleID:dCopy onDeviceWithPairingID:v10 error:error];

  return v11;
}

- (id)installableSystemAppWithBundleID:(id)d onDeviceWithPairingID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
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
  [v10 fetchInstallableSystemAppWithBundleID:dCopy forDeviceWithPairingID:iDCopy completion:v14];

  v11 = v17[5];
  if (error && !v11)
  {
    *error = v23[5];
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

- (void)systemAppIsInstallableOnPairedDevice:(id)device withBundleID:(id)d completion:(id)completion
{
  v8 = *MEMORY[0x277D2BBB8];
  completionCopy = completion;
  dCopy = d;
  v11 = [device valueForProperty:v8];
  [(ACXDeviceConnection *)self systemAppIsInstallableOnDeviceWithPairingID:v11 withBundleID:dCopy completion:completionCopy];
}

- (void)systemAppIsInstallableOnDeviceWithPairingID:(id)d withBundleID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__ACXDeviceConnection_systemAppIsInstallableOnDeviceWithPairingID_withBundleID_completion___block_invoke;
  v13[3] = &unk_278C8D4B0;
  v14 = completionCopy;
  v9 = completionCopy;
  iDCopy = iD;
  dCopy = d;
  v12 = [(ACXDeviceConnection *)self _proxyWithErrorHandler:v13];
  [v12 systemAppIsInstallableOnDeviceWithPairingID:dCopy withBundleID:iDCopy completion:v9];
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

- (BOOL)getSystemAppInstallability:(BOOL *)installability onPairedDevice:(id)device withBundleID:(id)d error:(id *)error
{
  v10 = *MEMORY[0x277D2BBB8];
  dCopy = d;
  v12 = [device valueForProperty:v10];
  LOBYTE(error) = [(ACXDeviceConnection *)self getSystemAppInstallability:installability onDeviceWithPairingID:v12 withBundleID:dCopy error:error];

  return error;
}

- (BOOL)getSystemAppInstallability:(BOOL *)installability onDeviceWithPairingID:(id)d withBundleID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
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
  [v12 systemAppIsInstallableOnDeviceWithPairingID:dCopy withBundleID:iDCopy completion:v17];

  v13 = v24;
  v14 = v24[5];
  if (v14)
  {
    if (error)
    {
      *error = v14;
      v13 = v24;
    }
  }

  else if (installability)
  {
    *installability = *(v20 + 24);
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

- (BOOL)acknowledgeTestFlightInstallBegunForApp:(id)app onDeviceWithPairingID:(id)d error:(id *)error
{
  appCopy = app;
  dCopy = d;
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
  [v10 acknowledgeTestFlightInstallBegunForApp:appCopy forDeviceWithPairingID:dCopy completion:v15];

  v11 = v18;
  if (error)
  {
    v12 = v18[5];
    if (v12)
    {
      *error = v12;
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

- (id)applicationRemovabilityForPairedDevice:(id)device error:(id *)error
{
  deviceCopy = device;
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
  v7 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
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
  if (error && !v9)
  {
    *error = v21[5];
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

- (void)applictionRemovabilityForPairedDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v7 = [device valueForProperty:*MEMORY[0x277D2BBB8]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__ACXDeviceConnection_applictionRemovabilityForPairedDevice_completion___block_invoke;
  v10[3] = &unk_278C8D4B0;
  v11 = completionCopy;
  v8 = completionCopy;
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

- (BOOL)killDaemonForTestingWithError:(id *)error
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
  if (error && (v15[3] & 1) == 0)
  {
    *error = v9[5];
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

- (id)copyRemoteDuplicatedClassInfoWithError:(id *)error
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
  if (error && !v5)
  {
    *error = v11[5];
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