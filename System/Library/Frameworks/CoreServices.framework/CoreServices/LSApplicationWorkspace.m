@interface LSApplicationWorkspace
+ (id)_defaultAppQueue;
+ (id)_remoteObserver;
+ (id)callbackQueue;
+ (id)defaultWorkspace;
+ (id)progressQueue;
- (BOOL)_LSPrivateAskLSDToExitSafely:(double)a3 completionHandler:(id)a4;
- (BOOL)_LSPrivateDatabaseNeedsRebuild;
- (BOOL)_LSPrivateRebuildDatabaseAtNextRestart:(id)a3;
- (BOOL)_getBundleIdentifierForBundleAtURL:(id)a3 invokeUpdateBlockAndReregister:(id)a4 error:(id *)a5;
- (BOOL)allowsAlternateIcons;
- (BOOL)applicationIsInstalled:(id)a3;
- (BOOL)downgradeApplicationToPlaceholder:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (BOOL)establishConnection;
- (BOOL)forceDatabaseSaveForTestingWithError:(id *)a3;
- (BOOL)garbageCollectDatabaseWithError:(id *)a3;
- (BOOL)getClaimedActivityTypes:(id *)a3 domains:(id *)a4;
- (BOOL)getDefaultApplicationCategories:(unint64_t *)a3 withCurrentDefaultApplication:(id)a4 error:(id *)a5;
- (BOOL)initiateProgressForApp:(id)a3 withType:(unint64_t)a4;
- (BOOL)installApplication:(id)a3 withOptions:(id)a4 error:(id *)a5 usingBlock:(id)a6;
- (BOOL)installContainerizedApplicationArtifactAtURL:(id)a3 withOptions:(id)a4 returningRecordPromise:(id *)a5 error:(id *)a6 progressBlock:(id)a7;
- (BOOL)installPhaseFinishedForProgress:(id)a3;
- (BOOL)invalidateIconCache:(id)a3;
- (BOOL)isApplicationEligibleForReadOnlyDocumentOpenBehavior:(id)a3;
- (BOOL)isBundleEligibleForOpenDocumentViaOpenURL:(id)a3;
- (BOOL)isCurrentProcessEligibleForOpenDocumentViaOpenURL;
- (BOOL)isCurrentProcessEligibleForReadOnlyDocumentOpenBehavior;
- (BOOL)isVersion:(id)a3 greaterThanOrEqualToVersion:(id)a4;
- (BOOL)ls_injectUTTypeWithDeclaration:(id)a3 inDatabase:(id)a4 error:(id *)a5;
- (BOOL)openApplicationWithBundleID:(id)a3;
- (BOOL)openSensitiveURL:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (BOOL)openURL:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (BOOL)refreshUnbundledSystemExtensionPointsWithOperationUUID:(id)a3 requestContext:(id)a4 saveObserver:(id)a5 registrationError:(id *)a6;
- (BOOL)registerApplication:(id)a3;
- (BOOL)registerApplicationForRebuildWithInfoDictionaries:(id)a3 personaUniqueStrings:(id)a4 requestContext:(id)a5 registrationError:(id *)a6;
- (BOOL)registerApplicationForRebuildWithInstallationRecord:(id)a3 extensionInstallationRecords:(id)a4 personaUniqueStrings:(id)a5 requestContext:(id)a6 registrationError:(id *)a7;
- (BOOL)registerBuiltinApplicationWithInstallationRecord:(id)a3 extensionInstallationRecords:(id)a4 personaUniqueStrings:(id)a5 operationUUID:(id)a6 requestContext:(id)a7 saveObserver:(id)a8 registrationError:(id *)a9;
- (BOOL)registerBuiltinStandaloneExtension:(id)a3 personaUniqueStrings:(id)a4 operationUUID:(id)a5 requestContext:(id)a6 saveObserver:(id)a7 registrationError:(id *)a8;
- (BOOL)registerPlugin:(id)a3;
- (BOOL)revertContainerizedApplicationWithIdentifier:(id)a3 options:(id)a4 returningRecordPromise:(id *)a5 error:(id *)a6 progressBlock:(id)a7;
- (BOOL)setPersonaUniqueStrings:(id)a3 forApplicationWithBundleIdentifier:(id)a4 operationUUID:(id)a5 requestContext:(id)a6 saveObserver:(id)a7 error:(id *)a8;
- (BOOL)setPersonaUniqueStrings:(id)a3 forApplicationsWithBundleIdentifiers:(id)a4 operationUUID:(id)a5 requestContext:(id)a6 saveObserver:(id)a7 error:(id *)a8;
- (BOOL)setPreferredAppMarketplaces:(id)a3 error:(id *)a4;
- (BOOL)setProgressProportionsByPhase:(id)a3 forInstallOfApplicationWithIdentifier:(id)a4 error:(id *)a5;
- (BOOL)uninstallApplication:(id)a3 withOptions:(id)a4 error:(id *)a5 usingBlock:(id)a6;
- (BOOL)uninstallContainerizedApplicationWithIdentifier:(id)a3 options:(id)a4 error:(id *)a5 progressBlock:(id)a6;
- (BOOL)unregisterApplication:(id)a3;
- (BOOL)unregisterApplicationsAtMountPoint:(id)a3 operationUUID:(id)a4 saveObserver:(id)a5 requestContext:(id)a6;
- (BOOL)unregisterBuiltinApplicationAtURL:(id)a3 operationUUID:(id)a4 requestContext:(id)a5 saveObserver:(id)a6 error:(id *)a7;
- (BOOL)unregisterBuiltinStandaloneExtensionAtURL:(id)a3 operationUUID:(id)a4 requestContext:(id)a5 saveObserver:(id)a6 error:(id *)a7;
- (BOOL)unregisterPlugin:(id)a3;
- (BOOL)updatePlaceholderMetadataForApp:(id)a3 installType:(unint64_t)a4 failure:(unint64_t)a5 underlyingError:(id)a6 source:(unint64_t)a7 outError:(id *)a8;
- (BOOL)updatePlaceholderMetadataForApplicationWithIdentifier:(id)a3 operationUUID:(id)a4 requestContext:(id)a5 installType:(unint64_t)a6 failure:(unint64_t)a7 saveObserver:(id)a8 error:(id *)a9;
- (BOOL)updateSINFMetadataForApplicationWithIdentifier:(id)a3 operationUUID:(id)a4 requestContext:(id)a5 parsedSINFInfo:(id)a6 saveObserver:(id)a7 error:(id *)a8;
- (BOOL)updateSINFWithData:(id)a3 forApplication:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)updateSINFWithData:(id)a3 forApplicationAtURL:(id)a4 error:(id *)a5;
- (BOOL)updateiTunesMetadataForApplicationWithIdentifier:(id)a3 operationUUID:(id)a4 requestContext:(id)a5 metadataPlist:(id)a6 saveObserver:(id)a7 error:(id *)a8;
- (BOOL)updateiTunesMetadataWithData:(id)a3 forApplication:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)updateiTunesMetadataWithData:(id)a3 forApplicationAtURL:(id)a4 error:(id *)a5;
- (BOOL)urlContainsDeviceIdentifierForAdvertising:(id)a3;
- (id)URLOverrideForURL:(id)a3;
- (id)_LSPrivateRemovedSystemAppIdentifiers;
- (id)applicationForOpeningResource:(id)a3;
- (id)applicationForUserActivityDomainName:(id)a3;
- (id)applicationForUserActivityType:(id)a3;
- (id)applicationsAvailableForHandlingURLScheme:(id)a3;
- (id)applicationsForUserActivityType:(id)a3 limit:(unint64_t)a4;
- (id)applicationsOfType:(unint64_t)a3;
- (id)createDeviceIdentifierWithVendorName:(id)a3 bundleIdentifier:(id)a4;
- (id)defaultApplicationForCategory:(unint64_t)a3 error:(id *)a4;
- (id)deviceIdentifierForAdvertising;
- (id)deviceIdentifierForVendor;
- (id)deviceIdentifierForVendorSeedData;
- (id)getPreferredAppMarketplacesWithError:(id *)a3;
- (id)installProgressForApplication:(id)a3 withPhase:(unint64_t)a4;
- (id)installProgressForBundleID:(id)a3 makeSynchronous:(unsigned __int8)a4;
- (id)installedPlugins;
- (id)legacyApplicationProxiesListWithType:(unint64_t)a3;
- (id)observerProxy;
- (id)openURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id)operationToOpenResource:(id)a3 usingApplication:(id)a4 uniqueDocumentIdentifier:(id)a5 isContentManaged:(BOOL)a6 sourceAuditToken:(id *)a7 userInfo:(id)a8 options:(id)a9 delegate:(id)a10;
- (id)optionsFromOpenConfiguration:(id)a3;
- (id)pluginsMatchingQuery:(id)a3 applyFilter:(id)a4;
- (id)pluginsWithIdentifiers:(id)a3 protocols:(id)a4 version:(id)a5 applyFilter:(id)a6;
- (id)pluginsWithIdentifiers:(id)a3 protocols:(id)a4 version:(id)a5 withFilter:(id)a6;
- (id)privateURLSchemes;
- (id)publicURLSchemes;
- (id)registerContainerizedApplicationWithInfoDictionaries:(id)a3 personaUniqueStrings:(id)a4 operationUUID:(id)a5 requestContext:(id)a6 saveObserver:(id)a7 registrationError:(id *)a8;
- (id)registerContainerizedApplicationWithInstallationRecord:(id)a3 extensionInstallationRecords:(id)a4 personaUniqueStrings:(id)a5 operationUUID:(id)a6 requestContext:(id)a7 saveObserver:(id)a8 registrationError:(id *)a9;
- (id)remoteObserver;
- (id)scanForApplicationStateChangesFromRank:(id)a3 toRank:(id)a4 exceptions:(id)a5;
- (id)scanForApplicationStateChangesWithAllowlist:(id)a3;
- (id)scanForAppsInRatingRankExceptionsList:(id)a3;
- (id)scanForForDeletableSystemApps;
- (id)syncObserverProxy;
- (id)systemMode;
- (void)_LSClearSchemaCaches;
- (void)_LSFailedToOpenURL:(id)a3 withBundle:(id)a4;
- (void)_LSPrivateNoteMigratorRunning;
- (void)_LSPrivateSetRemovedSystemAppIdentifiers:(id)a3;
- (void)_LSPrivateUpdateAppRemovalRestrictions;
- (void)_openUserActivity:(id)a3 orUserActivityUUID:(id)a4 activityTypeForUUID:(id)a5 withApplicationProxy:(id)a6 options:(id)a7 completionHandler:(id)a8;
- (void)addObserver:(id)a3;
- (void)clearAdvertisingIdentifier;
- (void)clearCreatedProgressForBundleID:(id)a3;
- (void)commonClientOpenURL:(id)a3 options:(id)a4 configuration:(id)a5 synchronous:(BOOL)a6 completionHandler:(id)a7;
- (void)deviceIdentifierForVendorSeedData;
- (void)enumerateBundlesOfType:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumeratePluginsMatchingQuery:(id)a3 withBlock:(id)a4;
- (void)getKnowledgeUUID:(id *)a3 andSequenceNumber:(id *)a4;
- (void)ls_resetTestingDatabase;
- (void)ls_testWithCleanDatabaseWithError:(id *)a3;
- (void)noteRestrictionsUpdateForOpensWithCompletion:(id)a3;
- (void)openURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
- (void)openUserActivity:(id)a3 usingApplicationRecord:(id)a4 configuration:(id)a5 completionHandler:(id)a6;
- (void)openUserActivityWithUUID:(id)a3 activityType:(id)a4 usingApplicationRecord:(id)a5 configuration:(id)a6 completionHandler:(id)a7;
- (void)placeholderInstalledForIdentifier:(id)a3 filterDowngrades:(BOOL)a4;
- (void)rebuildDatabaseContentForFrameworkAtURL:(id)a3 completionHandler:(id)a4;
- (void)removeAllDefaultApplicationPreferencesWithCompletionHandler:(id)a3;
- (void)removeDeviceIdentifierForVendorName:(id)a3 bundleIdentifier:(id)a4;
- (void)removeObserver:(id)a3;
- (void)sendApplicationStateChangedNotificationsFor:(id)a3 stateProvider:(id)a4 completion:(id)a5;
- (void)sendExtensionNotificationsForExtensionBundleIdentifier:(id)a3 changingRestrictionStateTo:(BOOL)a4;
- (void)sendExtensionNotificationsForSystemModeChangeFrom:(id)a3 to:(id)a4;
- (void)setDefaultApplicationForCategory:(unint64_t)a3 toApplicationRecord:(id)a4 completionHandler:(id)a5;
- (void)setDefaultHandlerForTypeRecord:(id)a3 toApplicationRecord:(id)a4 completionHandler:(id)a5;
- (void)setDefaultMailClientToApplicationRecord:(id)a3 completionHandler:(id)a4;
- (void)setDefaultURLHandlerForScheme:(id)a3 to:(id)a4 completion:(id)a5;
- (void)setDefaultWebBrowserToApplicationRecord:(id)a3 completionHandler:(id)a4;
- (void)setPreferenceForNoHandlerForCategory:(unint64_t)a3 completionHandler:(id)a4;
- (void)systemMode;
@end

@implementation LSApplicationWorkspace

+ (id)defaultWorkspace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__LSApplicationWorkspace_defaultWorkspace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultWorkspace_once != -1)
  {
    dispatch_once(&defaultWorkspace_once, block);
  }

  v2 = defaultWorkspace_gDefaultWorkspace;

  return v2;
}

- (id)remoteObserver
{
  if (![(LSApplicationWorkspace *)self establishConnection])
  {
    v3 = _LSDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "failed to establish connection to xpc service", v10, 2u);
    }
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = +[LSApplicationWorkspace _remoteObserver];
  if (([v5 isObservinglsd] & 1) == 0)
  {
    v6 = +[LSApplicationWorkspace _remoteObserver];
    v7 = [v6 currentObserverCount];

    if (!v7)
    {
      goto LABEL_9;
    }

    [_sObserverProxy addObserver];
    v5 = +[LSApplicationWorkspace _remoteObserver];
    [v5 setObservinglsd:1];
  }

LABEL_9:
  objc_sync_exit(v4);

  v8 = +[LSApplicationWorkspace _remoteObserver];

  return v8;
}

void __42__LSApplicationWorkspace_defaultWorkspace__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultWorkspace_gDefaultWorkspace;
  defaultWorkspace_gDefaultWorkspace = v1;
}

- (BOOL)establishConnection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v2 = +[LSApplicationWorkspace progressQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__LSApplicationWorkspace_establishConnection__block_invoke;
  block[3] = &unk_1E6A19988;
  block[4] = &v5;
  dispatch_sync(v2, block);

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (id)progressQueue
{
  if (progressQueue_once != -1)
  {
    +[LSApplicationWorkspace progressQueue];
  }

  v3 = progressQueue_result;

  return v3;
}

void __39__LSApplicationWorkspace_progressQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.clientprogress", v2);
  v1 = progressQueue_result;
  progressQueue_result = v0;
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke(uint64_t a1)
{
  if (!_sObserverConnection)
  {
    if (_LSProcessCanAccessProgressPort_onceToken != -1)
    {
      __45__LSApplicationWorkspace_establishConnection__block_invoke_cold_1();
    }

    if (_LSProcessCanAccessProgressPort_canAccessProgressPort == 1)
    {
      v2 = objc_alloc(MEMORY[0x1E696B0B8]);
      v3 = [__LSDefaultsGetSharedInstance() serviceNameForConnectionType:5];
      v4 = [v2 initWithMachServiceName:v3 options:4096];

      v5 = installProgressInterface();
      [v4 setRemoteObjectInterface:v5];

      v6 = workspaceObserverInterface();
      [v4 setExportedInterface:v6];

      v7 = _sObserverConnection;
      _sObserverConnection = v4;

      v8 = _LSProgressLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Establishing xpc connection to lsd", buf, 2u);
      }

      if (_sObserverConnection)
      {
        [_sObserverConnection setInvalidationHandler:&__block_literal_global_191];
        [_sObserverConnection setInterruptionHandler:&__block_literal_global_196];
        v9 = +[LSApplicationWorkspace _remoteObserver];
        [_sObserverConnection setExportedObject:v9];

        [_sObserverConnection resume];
        v10 = [_sObserverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_205];
        v11 = _sObserverProxy;
        _sObserverProxy = v10;

        [_sObserverProxy _lsPing:@"LSWorkspaceObserverPing" reply:&__block_literal_global_212];
      }

      else
      {
        v12 = _LSProgressLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Failed to establish xpc connection to lsd", v14, 2u);
        }

        v13 = _sObserverProxy;
        _sObserverProxy = 0;

        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }
}

+ (id)_remoteObserver
{
  if (_remoteObserver_onceToken != -1)
  {
    +[LSApplicationWorkspace _remoteObserver];
  }

  v3 = _sRemoteObserver;

  return v3;
}

void __41__LSApplicationWorkspace__remoteObserver__block_invoke()
{
  v0 = objc_alloc_init(LSApplicationWorkspaceRemoteObserver);
  v1 = _sRemoteObserver;
  _sRemoteObserver = v0;
}

- (id)observerProxy
{
  if (![(LSApplicationWorkspace *)self establishConnection])
  {
    v2 = _LSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "failed to establish connection to xpc service", v5, 2u);
    }
  }

  v3 = _sObserverProxy;

  return v3;
}

- (id)systemMode
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v2 = +[LSApplicationRestrictionsManager sharedInstance];
    v3 = [(LSApplicationRestrictionsManager *)v2 systemMode];
    v4 = v15[5];
    v15[5] = v3;
  }

  else
  {
    v11 = 0;
    v12[0] = &v11;
    v12[1] = 0x3032000000;
    v12[2] = __Block_byref_object_copy__4;
    v12[3] = __Block_byref_object_dispose__4;
    v13 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__LSApplicationWorkspace_systemMode__block_invoke;
    v10[3] = &unk_1E6A198D0;
    v10[4] = &v11;
    v5 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__LSApplicationWorkspace_systemMode__block_invoke_2;
    v9[3] = &unk_1E6A198F8;
    v9[4] = &v11;
    v9[5] = &v14;
    [v5 getSystemModeWithCompletionHandler:v9];
    if (*(v12[0] + 40))
    {
      v6 = _LSDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(LSApplicationWorkspace *)v12 systemMode];
      }
    }

    _Block_object_dispose(&v11, 8);
  }

  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __36__LSApplicationWorkspace_systemMode__block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)deviceIdentifierForVendor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke;
  v5[3] = &unk_1E6A19D20;
  v5[4] = &v6;
  v2 = _LSRetryForConnectionInterrupted(v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

id __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_2;
  v7[3] = &unk_1E6A198D0;
  v7[4] = &v8;
  v2 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_376;
  v6[3] = &unk_1E6A19CF8;
  v6[4] = *(a1 + 32);
  [v2 getIdentifierOfType:0 completionHandler:v6];
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = v9[5];
  }

  v4 = v3;

  _Block_object_dispose(&v8, 8);

  return v4;
}

+ (id)callbackQueue
{
  if (callbackQueue_once != -1)
  {
    +[LSApplicationWorkspace callbackQueue];
  }

  v3 = callbackQueue_result;

  return v3;
}

void __39__LSApplicationWorkspace_callbackQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.clientcallbacks", v2);
  v1 = callbackQueue_result;
  callbackQueue_result = v0;
}

- (void)getKnowledgeUUID:(id *)a3 andSequenceNumber:(id *)a4
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  if (_LSCurrentProcessMayMapDatabase())
  {
    v13 = 0;
    if (!_LSContextInit(&v13))
    {
      v6 = _LSDatabaseGetCacheGUID(v13);
      v7 = v21[5];
      v21[5] = v6;

      SequenceNumber = _LSDatabaseGetSequenceNumber(v13);
      if (SequenceNumber)
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:SequenceNumber];
        v10 = v15[5];
        v15[5] = v9;
      }

      _LSContextDestroy(&v13);
    }

    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
    __LAUNCH_SERVICES_IS_ABORTING_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
    v11 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__LSApplicationWorkspace_getKnowledgeUUID_andSequenceNumber___block_invoke;
    v12[3] = &unk_1E6A19920;
    v12[4] = &v20;
    v12[5] = &v14;
    [v11 getKnowledgeUUIDAndSequenceNumberWithCompletionHandler:v12];

    if (a3)
    {
LABEL_7:
      *a3 = v21[5];
    }
  }

  if (a4)
  {
    *a4 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __61__LSApplicationWorkspace_getKnowledgeUUID_andSequenceNumber___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __45__LSApplicationWorkspace_establishConnection__block_invoke_189()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEFAULT, "progress connection invalidationHandler called", v2, 2u);
  }

  v1 = +[LSApplicationWorkspace progressQueue];
  dispatch_sync(v1, &__block_literal_global_194);
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_192()
{
  v0 = _sObserverConnection;
  _sObserverConnection = 0;

  v1 = +[LSApplicationWorkspace _remoteObserver];
  [v1 setObservinglsd:0];
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_2()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEFAULT, "interruptionHandler called, re-establishing connection to lsd", v2, 2u);
  }

  v1 = +[LSApplicationWorkspace progressQueue];
  dispatch_sync(v1, &__block_literal_global_199);
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_197()
{
  v0 = [_sObserverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_202];
  [v0 addObserver];

  v1 = +[LSApplicationWorkspace _remoteObserver];
  [v1 setObservinglsd:1];
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_2_200(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Error %@ trying to re-establish observing connection to lsd", &v6, 0xCu);
  }

  v4 = +[LSApplicationWorkspace _remoteObserver];
  [v4 setObservinglsd:0];

  v5 = *MEMORY[0x1E69E9840];
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_203(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Error %@ trying to establish observing connection to lsd", &v6, 0xCu);
  }

  v4 = +[LSApplicationWorkspace _remoteObserver];
  [v4 setObservinglsd:0];

  v5 = *MEMORY[0x1E69E9840];
}

void __45__LSApplicationWorkspace_establishConnection__block_invoke_209(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _LSProgressLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Received %@, xpc connection established", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)syncObserverProxy
{
  if (![(LSApplicationWorkspace *)self establishConnection])
  {
    v2 = _LSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "failed to establish connection to xpc service", buf, 2u);
    }
  }

  *buf = 0;
  v8 = buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v3 = +[LSApplicationWorkspace progressQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__LSApplicationWorkspace_syncObserverProxy__block_invoke;
  block[3] = &unk_1E6A19988;
  block[4] = buf;
  dispatch_sync(v3, block);

  v4 = *(v8 + 5);
  _Block_object_dispose(buf, 8);

  return v4;
}

void __43__LSApplicationWorkspace_syncObserverProxy__block_invoke(uint64_t a1)
{
  v2 = [_sObserverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_214];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __43__LSApplicationWorkspace_syncObserverProxy__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Error %@ trying to establish observing connection to lsd", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = shouldConnectToLSD(v4);
  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = objc_opt_class();
    v16 = 2048;
    v17 = v4;
    v7 = v15;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_INFO, "LSApplicationWorkspace: adding observer %@ @ %p", buf, 0x16u);
  }

  performWithLSAWDistributedNotificationNameBasedOnObserverConformance(v4, subscribeToLSAWDistributedNotification);
  if (DeviceManagementLibrary_frameworkLibrary_0 || (DeviceManagementLibrary_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/DeviceManagement.framework/DeviceManagement", 2)) != 0)
  {
    objc_opt_class();
    v8 = (objc_opt_isKindOfClass() & 1) != 0 ? [objc_opt_class() actuallyOverridesDMFObserverMethod] : objc_opt_respondsToSelector();
    if (v8)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__LSApplicationWorkspace_addObserver___block_invoke;
      block[3] = &unk_1E6A195E0;
      block[4] = self;
      if (addObserver__onceToken != -1)
      {
        dispatch_once(&addObserver__onceToken, block);
      }
    }
  }

  v9 = [(LSApplicationWorkspace *)self remoteObserver];
  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    [v9 setObservinglsd:1];
    [v9 addLocalObserver:v4];
    if (v5)
    {
      v11 = [(LSApplicationWorkspace *)v10 observerProxy];
      [v11 addObserver];
    }

    objc_sync_exit(v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __38__LSApplicationWorkspace_addObserver___block_invoke(uint64_t a1)
{
  v2 = _LSGetDMFNotificationCenter();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__LSApplicationWorkspace_addObserver___block_invoke_2;
  v4[3] = &unk_1E6A199B0;
  v4[4] = *(a1 + 32);
  v3 = [v2 addObserverForName:@"com.apple.launchservices.private._LSDMFPolicyDidChangeNotification" object:0 queue:0 usingBlock:v4];
}

void __38__LSApplicationWorkspace_addObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 remoteObserver];
  v4 = [v3 object];

  [v5 deviceManagementPolicyDidChange:v4];
}

- (void)removeObserver:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = shouldConnectToLSD(v4);
  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = objc_opt_class();
    v18 = 2048;
    v19 = v4;
    v7 = v17;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_INFO, "LSApplicationWorkspace: removing observer %@ @ %p", &v16, 0x16u);
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(LSApplicationWorkspace *)v8 remoteObserver];
  [v9 removeLocalObserver:v4];

  v10 = [(LSApplicationWorkspace *)v8 remoteObserver];
  v11 = [v10 currentObserverCount] == 0;

  if (v5)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = [(LSApplicationWorkspace *)v8 observerProxy];
    [v13 removeObserver];

    v14 = +[LSApplicationWorkspace progressQueue];
    dispatch_async(v14, &__block_literal_global_265);
  }

  performWithLSAWDistributedNotificationNameBasedOnObserverConformance(v4, unsubscribeFromLSAWDistributedNotification);
  objc_sync_exit(v8);

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __71__LSApplicationWorkspace_applicationProxiesWithPlistFlags_bundleFlags___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (id)applicationsForUserActivityType:(id)a3 limit:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    a3 = &stru_1EEF65710;
  }

  v4 = [LSApplicationRecord applicationRecordsForUserActivityType:a3 limit:a4 error:0];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) compatibilityObject];
          v12 = v11;
          if (v11)
          {
            [v11 detach];
            [v5 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)applicationForUserActivityType:(id)a3
{
  v3 = [(LSApplicationWorkspace *)self applicationsForUserActivityType:a3 limit:1];
  v4 = [v3 firstObject];

  return v4;
}

- (id)applicationForUserActivityDomainName:(id)a3
{
  if (!a3)
  {
    a3 = &stru_1EEF65710;
  }

  v3 = [LSApplicationRecord applicationRecordsForUserActivityDomainName:a3 limit:1 error:0];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v4 compatibilityObject];
    [v5 detach];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)openApplicationWithBundleID:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_autoreleasePoolPush();
  _LSFaultIfRunningOnMainThreadOfShellApp();
  v5 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:?];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__LSApplicationWorkspace_openApplicationWithBundleID___block_invoke;
  v7[3] = &unk_1E6A19A00;
  v7[4] = &v8;
  [v5 openApplicationWithIdentifier:v3 options:MEMORY[0x1E695E0F8] useClientProcessHandle:0 completionHandler:v7];

  objc_autoreleasePoolPop(v4);
  LOBYTE(v4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (BOOL)openURL:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  _LSFaultIfRunningOnMainThreadOfShellApp();
  v9 = openOptionsModifiedForOneTapOpen(v7, v8);

  v10 = (v21 + 5);
  obj = v21[5];
  v19 = 0;
  FileHandleForOpeningResourceIfNecessary = getFileHandleForOpeningResourceIfNecessary(v7, 0, 0, &v19, &obj);
  v12 = v19;
  objc_storeStrong(v10, obj);
  if (FileHandleForOpeningResourceIfNecessary)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__LSApplicationWorkspace_openURL_withOptions_error___block_invoke;
    v17[3] = &unk_1E6A198D0;
    v17[4] = &v20;
    v13 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__LSApplicationWorkspace_openURL_withOptions_error___block_invoke_2;
    v16[3] = &unk_1E6A19A28;
    v16[4] = &v26;
    v16[5] = &v20;
    [v13 openURL:v7 fileHandle:v12 options:v9 completionHandler:v16];
  }

  v14 = *(v27 + 24);
  if (a5 && (v27[3] & 1) == 0)
  {
    *a5 = v21[5];
    v14 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v14 & 1;
}

- (BOOL)openSensitiveURL:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v9 = a3;
    v10 = [a4 mutableCopy];
  }

  else
  {
    v11 = MEMORY[0x1E695DF90];
    v12 = a3;
    v10 = objc_alloc_init(v11);
  }

  v13 = v10;
  [v10 setObject:MEMORY[0x1E695E118] forKey:@"LSOpenSensitiveURLOption"];
  v14 = [(LSApplicationWorkspace *)self openURL:a3 withOptions:v13 error:a5];

  return v14;
}

- (void)_openUserActivity:(id)a3 orUserActivityUUID:(id)a4 activityTypeForUUID:(id)a5 withApplicationProxy:(id)a6 options:(id)a7 completionHandler:(id)a8
{
  v54[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v19)
  {
    v19 = [&__block_literal_global_276 copy];
  }

  if (_openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler__once != -1)
  {
    [LSApplicationWorkspace _openUserActivity:orUserActivityUUID:activityTypeForUUID:withApplicationProxy:options:completionHandler:];
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v17)
  {
    v20 = [v17 appState];
    v21 = [v20 isInstalled] ^ 1;
  }

  else
  {
    v20 = [v14 _determineMatchingApplicationBundleIdentifierWithOptions:0];
    if (v20)
    {
      v17 = [LSApplicationProxy applicationProxyForIdentifier:v20 placeholder:0];
    }

    else
    {
      v43 = v16;
      v22 = *MEMORY[0x1E695E480];
      v23 = [v14 _teamIdentifier];
      v24 = [v14 activityType];
      v25 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType(v22, v23, v24);

      if (v25)
      {
        v17 = [(LSApplicationWorkspace *)self applicationForUserActivityType:v25];
      }

      else
      {
        v17 = 0;
      }

      v16 = v43;
    }

    v21 = 1;
  }

LABEL_17:
  if (v14 | v15 && v17 && [v17 isInstalled] && (objc_msgSend(v17, "isRestricted") & 1) == 0)
  {
    v41 = _openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler__openUAQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __130__LSApplicationWorkspace__openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler___block_invoke_3;
    block[3] = &unk_1E6A19A98;
    v45 = v14;
    v46 = v15;
    v47 = v16;
    v50 = v19;
    v48 = v17;
    v49 = v18;
    dispatch_async(v41, block);
  }

  else if (v21)
  {
    v26 = [v17 bundleIdentifier];

    if (v26)
    {
      v27 = [v17 bundleIdentifier];
      v28 = [LSApplicationProxy applicationProxyForSystemPlaceholder:v27];

      if (v28)
      {
        v29 = [v14 webpageURL];
        v30 = [v28 bundleIdentifier];
        [(LSApplicationWorkspace *)self _LSFailedToOpenURL:v29 withBundle:v30];
      }
    }

    v31 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[LSApplicationWorkspace _openUserActivity:orUserActivityUUID:activityTypeForUUID:withApplicationProxy:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 1905);
    (*(v19 + 2))(v19, 0, v31);
  }

  else
  {
    if (v15 && ([v17 appState], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "isInstalled"), v32, (v33 & 1) == 0))
    {
      v39 = *MEMORY[0x1E696A768];
      v53 = *MEMORY[0x1E696A278];
      v54[0] = @"Application must be non-nil and installed.";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v36 = v39;
      v37 = v35;
      v38 = 1909;
    }

    else
    {
      v34 = *MEMORY[0x1E696A768];
      v51 = *MEMORY[0x1E696A278];
      v52 = @"invalid input parameters";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v36 = v34;
      v37 = v35;
      v38 = 1913;
    }

    v40 = _LSMakeNSErrorImpl(v36, -50, v37, "[LSApplicationWorkspace _openUserActivity:orUserActivityUUID:activityTypeForUUID:withApplicationProxy:options:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", v38);
    (*(v19 + 2))(v19, 0, v40);
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __130__LSApplicationWorkspace__openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler___block_invoke_2()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LSApplicationWorkspace openUserActivity queue", v2);
  v1 = _openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler__openUAQueue;
  _openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler__openUAQueue = v0;
}

void __130__LSApplicationWorkspace__openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!v3)
  {
    v4 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v4 = [v3 _uniqueIdentifier];
  v5 = *(a1 + 32);
  v16 = 0;
  v6 = _LSGetDataForUserActivity(v5, &v16);
  v7 = v16;
  v8 = [*(a1 + 32) activityType];
  if (v6)
  {
LABEL_5:
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __130__LSApplicationWorkspace__openUserActivity_orUserActivityUUID_activityTypeForUUID_withApplicationProxy_options_completionHandler___block_invoke_4;
    v14 = &unk_1E6A19A70;
    v15 = *(a1 + 72);
    v9 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:?];
    v10 = [*(a1 + 56) bundleIdentifier];
    [v9 openUserActivityWithUniqueIdentifier:v4 activityData:v6 activityType:v8 bundleIdentifier:v10 options:*(a1 + 64) completionHandler:*(a1 + 72)];

    goto LABEL_6;
  }

  (*(*(a1 + 72) + 16))();
LABEL_6:

  objc_autoreleasePoolPop(v2);
}

- (void)openUserActivity:(id)a3 usingApplicationRecord:(id)a4 configuration:(id)a5 completionHandler:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v15)
  {
    [LSApplicationWorkspace openUserActivity:usingApplicationRecord:configuration:completionHandler:];
  }

  v13 = [v10 compatibilityObject];
  v14 = [(LSApplicationWorkspace *)self optionsFromOpenConfiguration:v11];
  [(LSApplicationWorkspace *)self _openUserActivity:v15 orUserActivityUUID:0 activityTypeForUUID:0 withApplicationProxy:v13 options:v14 completionHandler:v12];
}

- (void)openUserActivityWithUUID:(id)a3 activityType:(id)a4 usingApplicationRecord:(id)a5 configuration:(id)a6 completionHandler:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v18)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    [LSApplicationWorkspace openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:];
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [LSApplicationWorkspace openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:];
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_9:
  [LSApplicationWorkspace openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:];
LABEL_4:
  v16 = [v13 compatibilityObject];
  v17 = [(LSApplicationWorkspace *)self optionsFromOpenConfiguration:v14];
  [(LSApplicationWorkspace *)self _openUserActivity:0 orUserActivityUUID:v18 activityTypeForUUID:v12 withApplicationProxy:v16 options:v17 completionHandler:v15];
}

- (id)operationToOpenResource:(id)a3 usingApplication:(id)a4 uniqueDocumentIdentifier:(id)a5 isContentManaged:(BOOL)a6 sourceAuditToken:(id *)a7 userInfo:(id)a8 options:(id)a9 delegate:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:&__block_literal_global_309];
  v37 = v21;
  if (v20)
  {
    v22 = [[_LSOpenResourceOperationDelegateWrapper alloc] initWithOperation:v21 wrappedDelegate:v20];

    if (a7)
    {
LABEL_3:
      v23 = [MEMORY[0x1E695DEF0] dataWithBytes:a7 length:32];
      goto LABEL_6;
    }
  }

  else
  {
    v22 = 0;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
LABEL_6:
  v24 = [v19 mutableCopy];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = [MEMORY[0x1E695DF90] dictionary];
  }

  v27 = v26;

  [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSBlockUntilComplete"];
  v28 = openOptionsModifiedForOneTapOpen(v15, v27);

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __152__LSApplicationWorkspace_operationToOpenResource_usingApplication_uniqueDocumentIdentifier_isContentManaged_sourceAuditToken_userInfo_options_delegate___block_invoke_2;
  v38[3] = &unk_1E6A19AE8;
  v39 = v15;
  v40 = v18;
  v41 = v28;
  v42 = v22;
  v43 = v16;
  v44 = v17;
  v46 = a6;
  v45 = v23;
  v29 = v23;
  v30 = v17;
  v31 = v16;
  v32 = v22;
  v33 = v28;
  v34 = v18;
  v35 = v15;
  [v37 addExecutionBlock:v38];

  return v37;
}

void __152__LSApplicationWorkspace_operationToOpenResource_usingApplication_uniqueDocumentIdentifier_isContentManaged_sourceAuditToken_userInfo_options_delegate___block_invoke_2(uint64_t a1)
{
  _LSFaultIfRunningOnMainThreadOfShellApp();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v22[0] = 0;
  v21 = 0;
  FileHandleForOpeningResourceIfNecessary = getFileHandleForOpeningResourceIfNecessary(v2, v3, v4, v22, &v21);
  v6 = v22[0];
  v7 = v21;
  if (FileHandleForOpeningResourceIfNecessary)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __152__LSApplicationWorkspace_operationToOpenResource_usingApplication_uniqueDocumentIdentifier_isContentManaged_sourceAuditToken_userInfo_options_delegate___block_invoke_3;
    v19[3] = &unk_1E6A19AC0;
    v20 = *(a1 + 56);
    v8 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:v19];
    v9 = *(a1 + 32);
    v10 = *(a1 + 72);
    v16 = *(a1 + 64);
    v11 = *(a1 + 88);
    v12 = [*(a1 + 80) bytes];
    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = *(a1 + 56);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __152__LSApplicationWorkspace_operationToOpenResource_usingApplication_uniqueDocumentIdentifier_isContentManaged_sourceAuditToken_userInfo_options_delegate___block_invoke_4;
    v17[3] = &unk_1E6A19888;
    v18 = v15;
    [v8 performOpenOperationWithURL:v9 fileHandle:v6 bundleIdentifier:v16 documentIdentifier:v10 isContentManaged:v11 sourceAuditToken:v12 userInfo:v14 options:v13 delegate:v18 completionHandler:v17];
  }

  else
  {
    [*(a1 + 56) openResourceOperation:0 didFailWithError:v7];
  }
}

uint64_t __152__LSApplicationWorkspace_operationToOpenResource_usingApplication_uniqueDocumentIdentifier_isContentManaged_sourceAuditToken_userInfo_options_delegate___block_invoke_4(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 openResourceOperationDidComplete:0];
  }

  else
  {
    return [v3 openResourceOperation:0 didFailWithError:a3];
  }
}

- (id)optionsFromOpenConfiguration:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if (v3)
  {
    v5 = [v3 frontBoardOptions];

    if (v5)
    {
      v6 = [v3 frontBoardOptions];
      [v4 addEntriesFromDictionary:v6];
    }

    v7 = [v3 referrerURL];
    [v4 setObject:v7 forKeyedSubscript:@"ReferrerURL"];

    if ([v3 isSensitive])
    {
      [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSOpenSensitiveURLOption"];
    }

    if (([v3 allowURLOverrides] & 1) == 0)
    {
      [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NoOverrides"];
    }

    v8 = [v3 targetConnectionEndpoint];

    if (v8)
    {
      v9 = [v3 targetConnectionEndpoint];
      [v4 setObject:v9 forKeyedSubscript:@"LSTargetBSServiceConnectionEndpointKey"];
    }

    v10 = [v3 clickAttribution];
    if (v10)
    {
      v11 = v10;
      v12 = getUISOpenApplicationOptionClickAttribution[0]();

      if (v12)
      {
        v13 = [v3 clickAttribution];
        [v4 setObject:v13 forKeyedSubscript:getUISOpenApplicationOptionClickAttribution[0]()];
      }
    }

    v14 = [v3 pasteSharingToken];
    if (v14)
    {
      v15 = v14;
      v16 = getUISOpenApplicationOptionPasteSharingToken[0]();

      if (v16)
      {
        v17 = [v3 pasteSharingToken];
        [v4 setObject:v17 forKeyedSubscript:getUISOpenApplicationOptionPasteSharingToken[0]()];
      }
    }

    v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "shouldSetHandlerOnDocumentOpen")}];
    [v4 setObject:v18 forKeyedSubscript:@"LSSetHandlerOnDocumentOpenKey"];

    v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "useOneTapOpenBehavior")}];
    [v4 setObject:v19 forKeyedSubscript:@"LSOneTapOpenBehaviorKey"];
  }

  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSBlockUntilComplete"];
  v20 = [v4 copy];

  return v20;
}

- (id)openURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v10 = [(LSApplicationWorkspace *)self optionsFromOpenConfiguration:v9];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__LSApplicationWorkspace_openURL_configuration_error___block_invoke;
  v13[3] = &unk_1E6A19B10;
  v13[4] = &v20;
  v13[5] = &v14;
  [(LSApplicationWorkspace *)self commonClientOpenURL:v8 options:v10 configuration:v9 synchronous:1 completionHandler:v13];
  if (a5)
  {
    *a5 = v15[5];
  }

  v11 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __54__LSApplicationWorkspace_openURL_configuration_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)openURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(LSApplicationWorkspace *)self optionsFromOpenConfiguration:v9];
  [(LSApplicationWorkspace *)self commonClientOpenURL:v10 options:v11 configuration:v9 synchronous:0 completionHandler:v8];
}

- (void)commonClientOpenURL:(id)a3 options:(id)a4 configuration:(id)a5 synchronous:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v49 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (!v12)
  {
    [LSApplicationWorkspace commonClientOpenURL:options:configuration:synchronous:completionHandler:];
  }

  v16 = _LSDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v29 = loggableURL(v12);
    *buf = 138478339;
    v44 = v29;
    v45 = 2113;
    v46 = v13;
    v47 = 1024;
    v48 = v8;
    _os_log_debug_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEBUG, "Opening URL %{private}@ with options dictionary %{private}@ synchronous: %u", buf, 0x1Cu);
  }

  v17 = openOptionsModifiedForOneTapOpen(v12, v13);

  if ([v12 isFileURL] && !-[LSApplicationWorkspace isCurrentProcessEligibleForOpenDocumentViaOpenURL](self, "isCurrentProcessEligibleForOpenDocumentViaOpenURL"))
  {
    v18 = _LSDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace commonClientOpenURL:options:configuration:synchronous:completionHandler:];
    }

    v19 = *MEMORY[0x1E696A768];
    v41 = *MEMORY[0x1E696A278];
    v42 = @"This process needs to be linked against Fall 2025 SDKs or later to open file: URLs with openURL interfaces.";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v21 = _LSMakeNSErrorImpl(v19, -50, v20, "[LSApplicationWorkspace commonClientOpenURL:options:configuration:synchronous:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 2202);

    if (v21)
    {
      v22 = 0;
LABEL_14:
      v15[2](v15, 0, v21);
      goto LABEL_17;
    }
  }

  v39 = 0;
  v40 = 0;
  FileHandleForOpeningResourceIfNecessary = getFileHandleForOpeningResourceIfNecessary(v12, 0, v17, &v40, &v39);
  v22 = v40;
  v21 = v39;
  if (!FileHandleForOpeningResourceIfNecessary)
  {
    goto LABEL_14;
  }

  if (v8)
  {
    _LSFaultIfRunningOnMainThreadOfShellApp();
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke;
    v36[3] = &unk_1E6A19B38;
    v24 = &v37;
    v37 = v12;
    v25 = &v38;
    v38 = v15;
    v26 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:v36];
  }

  else
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_319;
    v33[3] = &unk_1E6A19B38;
    v24 = &v34;
    v34 = v12;
    v25 = &v35;
    v35 = v15;
    v26 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v33];
  }

  v27 = v26;

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_320;
  v30[3] = &unk_1E6A18DC8;
  v31 = v12;
  v32 = v15;
  [v27 openURL:v31 fileHandle:v22 options:v17 completionHandler:v30];

LABEL_17:
  v28 = *MEMORY[0x1E69E9840];
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_319(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_319_cold_1(a1);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_320(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_320_cold_1(a1);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    if (a2)
    {
      v8 = MEMORY[0x1E695E0F8];
    }

    else
    {
      v8 = 0;
    }

    (*(v7 + 16))(v7, v8, v5);
  }
}

- (id)installedPlugins
{
  if (_LSEntitledForPluginQuery())
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v3 = +[LSPlugInQuery pluginQuery];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__LSApplicationWorkspace_installedPlugins__block_invoke;
    v6[3] = &unk_1E6A19B60;
    v4 = v2;
    v7 = v4;
    enumeratePluginsMatchingQuery(v3, v6);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

void __42__LSApplicationWorkspace_installedPlugins__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  else
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get all plugins: <%@>", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)pluginsWithIdentifiers:(id)a3 protocols:(id)a4 version:(id)a5 applyFilter:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v13 = v12;
  if (v8)
  {
    [v12 setValue:v8 forKey:@"NSExtensionIdentifier"];
    if (v9)
    {
      [v13 setValue:v9 forKey:@"NSExtensionPointName"];
      v14 = MEMORY[0x1E695E118];
      v15 = @"LSShouldORIdentifiers";
      v12 = v13;
LABEL_6:
      [v12 setValue:v14 forKey:v15];
    }
  }

  else if (v9)
  {
    v15 = @"NSExtensionPointName";
    v14 = v9;
    goto LABEL_6;
  }

  v16 = [LSPlugInQuery pluginQueryWithQueryDictionary:v13 applyFilter:v10];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__LSApplicationWorkspace_pluginsWithIdentifiers_protocols_version_applyFilter___block_invoke;
  v22[3] = &unk_1E6A19B88;
  v17 = v11;
  v23 = v17;
  v24 = v13;
  v18 = v13;
  enumeratePluginsMatchingQuery(v16, v22);
  v19 = v24;
  v20 = v17;

  return v17;
}

void __79__LSApplicationWorkspace_pluginsWithIdentifiers_protocols_version_applyFilter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  else if (v6)
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get plugins matching query %@: <%@>", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)enumeratePluginsMatchingQuery:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = [LSPlugInQuery pluginQueryWithQueryDictionary:v6 applyFilter:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__LSApplicationWorkspace_enumeratePluginsMatchingQuery_withBlock___block_invoke;
  v9[3] = &unk_1E6A19BB0;
  v10 = v5;
  v8 = v5;
  enumeratePluginsMatchingQuery(v7, v9);
}

- (id)pluginsMatchingQuery:(id)a3 applyFilter:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  v8 = [v6 arrayWithCapacity:0];
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  v10 = [LSPlugInQuery pluginQueryWithQueryDictionary:v9 applyFilter:v7];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __59__LSApplicationWorkspace_pluginsMatchingQuery_applyFilter___block_invoke;
  v21 = &unk_1E6A19B88;
  v11 = v8;
  v22 = v11;
  v12 = v5;
  v23 = v12;
  enumeratePluginsMatchingQuery(v10, &v18);
  if (![v11 count])
  {
    v13 = _LSDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "No plugins found to match query %@", buf, 0xCu);
    }
  }

  v14 = v23;
  v15 = v11;

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

void __59__LSApplicationWorkspace_pluginsMatchingQuery_applyFilter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  else if (v6)
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get plugins matching query %@: <%@>", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __65__LSApplicationWorkspace_enumerateBundlesOfType_legacySPI_block___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __65__LSApplicationWorkspace_enumerateBundlesOfType_legacySPI_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 32) + 16))();
    v3 = v4;
  }
}

uint64_t __70__LSApplicationWorkspace_enumerateApplicationsOfType_legacySPI_block___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (BOOL)applicationIsInstalled:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (v3)
  {
    v4 = [_LSApplicationIsInstalledQuery queryWithBundleIdentifier:v3];
    if (v4)
    {
      v5 = +[_LSQueryContext defaultContext];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __49__LSApplicationWorkspace_applicationIsInstalled___block_invoke;
      v8[3] = &unk_1E6A18F00;
      v8[4] = &v9;
      [v5 enumerateResolvedResultsOfQuery:v4 withBlock:v8];
    }

    v6 = *(v10 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6 & 1;
}

void __49__LSApplicationWorkspace_applicationIsInstalled___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = a2;
    v7 = [v6 propertyListWithClass:objc_opt_class()];

    *(*(*(a1 + 32) + 8) + 24) = [v7 BOOLValue];
    *a4 = 1;
  }
}

- (BOOL)getClaimedActivityTypes:(id *)a3 domains:(id *)a4
{
  v10 = 0;
  cf = 0;
  v6 = _LSCopyClaimedActivityIdentifiersAndDomains(&cf, &v10);
  if (!v6)
  {
    v7 = cf;
    if (cf)
    {
      if (a3)
      {
        *a3 = [cf copy];
        v7 = cf;
      }

      CFRelease(v7);
    }

    v8 = v10;
    if (v10)
    {
      if (a4)
      {
        *a4 = [v10 copy];
        v8 = v10;
      }

      CFRelease(v8);
    }
  }

  return v6 == 0;
}

- (id)registerContainerizedApplicationWithInfoDictionaries:(id)a3 personaUniqueStrings:(id)a4 operationUUID:(id)a5 requestContext:(id)a6 saveObserver:(id)a7 registrationError:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__4;
  v43 = __Block_byref_object_dispose__4;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  v18 = objc_opt_class();
  v19 = serviceDomainForRequestContext(v16);
  v20 = _LSDServiceGetXPCConnection(v18, v19);

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __160__LSApplicationWorkspace_registerContainerizedApplicationWithInfoDictionaries_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke;
  v26[3] = &unk_1E6A198D0;
  v26[4] = &v27;
  v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __160__LSApplicationWorkspace_registerContainerizedApplicationWithInfoDictionaries_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2;
  v25[3] = &unk_1E6A19C00;
  v25[4] = &v33;
  v25[5] = &v39;
  v25[6] = &v27;
  [v21 performPostInstallationRegistration:v13 personaUniqueStrings:v14 operationUUID:v15 reply:v25];

  handleSaveObserverBehavior(v17, v34[5], v15, v28[5]);
  v22 = v40[5];
  if (a8 && !v22)
  {
    *a8 = v28[5];
    v22 = v40[5];
  }

  v23 = v22;

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);

  return v23;
}

void __160__LSApplicationWorkspace_registerContainerizedApplicationWithInfoDictionaries_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v17 = v8;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
  v14 = v7;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

- (id)registerContainerizedApplicationWithInstallationRecord:(id)a3 extensionInstallationRecords:(id)a4 personaUniqueStrings:(id)a5 operationUUID:(id)a6 requestContext:(id)a7 saveObserver:(id)a8 registrationError:(id *)a9
{
  v29 = self;
  v30 = a9;
  v36 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count") + 1}];
  v19 = [v13 legacyRecordDictionary];
  [v18 addObject:v19];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v14;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v31 + 1) + 8 * i) legacyRecordDictionary];
        [v18 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v22);
  }

  v26 = [(LSApplicationWorkspace *)v29 registerContainerizedApplicationWithInfoDictionaries:v18 operationUUID:v15 requestContext:v16 saveObserver:v17 registrationError:v30];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

void __180__LSApplicationWorkspace_unregisterContainerizedApplicationWithBundleIdentifier_operationUUID_unregistrationOperation_precondition_requestContext_saveObserver_unregistrationError___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = v11 == 0;
}

- (BOOL)setPersonaUniqueStrings:(id)a3 forApplicationsWithBundleIdentifiers:(id)a4 operationUUID:(id)a5 requestContext:(id)a6 saveObserver:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__4;
  v36 = __Block_byref_object_dispose__4;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__4;
  v30 = __Block_byref_object_dispose__4;
  v31 = 0;
  v18 = objc_opt_class();
  v19 = serviceDomainForRequestContext(v16);
  v20 = _LSDServiceGetXPCConnection(v18, v19);

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __135__LSApplicationWorkspace_setPersonaUniqueStrings_forApplicationsWithBundleIdentifiers_operationUUID_requestContext_saveObserver_error___block_invoke;
  v25[3] = &unk_1E6A198D0;
  v25[4] = &v32;
  v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler:v25];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __135__LSApplicationWorkspace_setPersonaUniqueStrings_forApplicationsWithBundleIdentifiers_operationUUID_requestContext_saveObserver_error___block_invoke_2;
  v24[3] = &unk_1E6A19C28;
  v24[4] = &v26;
  v24[5] = &v32;
  v24[6] = &v38;
  [v21 performUpdateOfPersonasOfBundleIDs:v14 toPersonaUniqueStrings:v13 operationUUID:v15 reply:v24];

  handleSaveObserverBehavior(v17, v27[5], v15, v33[5]);
  v22 = *(v39 + 24);
  if (a8 && (v39[3] & 1) == 0)
  {
    *a8 = v33[5];
    v22 = *(v39 + 24);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  return v22 & 1;
}

void __135__LSApplicationWorkspace_setPersonaUniqueStrings_forApplicationsWithBundleIdentifiers_operationUUID_requestContext_saveObserver_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = v11 == 0;
}

- (BOOL)setPersonaUniqueStrings:(id)a3 forApplicationWithBundleIdentifier:(id)a4 operationUUID:(id)a5 requestContext:(id)a6 saveObserver:(id)a7 error:(id *)a8
{
  v14 = MEMORY[0x1E695DFD8];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [v14 setWithObject:a4];
  LOBYTE(a8) = [(LSApplicationWorkspace *)self setPersonaUniqueStrings:v18 forApplicationsWithBundleIdentifiers:v19 operationUUID:v17 requestContext:v16 saveObserver:v15 error:a8];

  return a8;
}

void __105__LSApplicationWorkspace_sendNotificationOfType_forApplicationWithBundleIdentifier_requestContext_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v4 == 0;
}

- (BOOL)registerApplicationForRebuildWithInfoDictionaries:(id)a3 personaUniqueStrings:(id)a4 requestContext:(id)a5 registrationError:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v12 = objc_opt_class();
  v13 = serviceDomainForRequestContext(v11);
  v14 = _LSDServiceGetXPCConnection(v12, v13);

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __130__LSApplicationWorkspace_registerApplicationForRebuildWithInfoDictionaries_personaUniqueStrings_requestContext_registrationError___block_invoke;
  v19[3] = &unk_1E6A198D0;
  v19[4] = &v20;
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __130__LSApplicationWorkspace_registerApplicationForRebuildWithInfoDictionaries_personaUniqueStrings_requestContext_registrationError___block_invoke_2;
  v18[3] = &unk_1E6A19C50;
  v18[4] = &v26;
  v18[5] = &v20;
  [v15 performRebuildRegistration:v9 personaUniqueStrings:v10 reply:v18];

  v16 = *(v27 + 24);
  if (a6 && (v27[3] & 1) == 0)
  {
    *a6 = v21[5];
    v16 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v16 & 1;
}

- (BOOL)registerApplicationForRebuildWithInstallationRecord:(id)a3 extensionInstallationRecords:(id)a4 personaUniqueStrings:(id)a5 requestContext:(id)a6 registrationError:(id *)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count") + 1}];
  v16 = [v11 legacyRecordDictionary];
  [v15 addObject:v16];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v12;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      v21 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v27 + 1) + 8 * v21) legacyRecordDictionary];
        [v15 addObject:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);
  }

  v23 = [(LSApplicationWorkspace *)self registerApplicationForRebuildWithInfoDictionaries:v15 personaUniqueStrings:v13 requestContext:v14 registrationError:a7];
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)updatePlaceholderMetadataForApplicationWithIdentifier:(id)a3 operationUUID:(id)a4 requestContext:(id)a5 installType:(unint64_t)a6 failure:(unint64_t)a7 saveObserver:(id)a8 error:(id *)a9
{
  v32[2] = *MEMORY[0x1E69E9840];
  v31[0] = @"LSInstallType";
  v14 = MEMORY[0x1E696AD98];
  v15 = a8;
  v16 = a4;
  v17 = a3;
  v18 = [v14 numberWithUnsignedInteger:a6];
  v31[1] = @"PlaceholderFailureReason";
  v32[0] = v18;
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  v32[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v22 = a6 - 7 < 3 && a7 != 0;
  v29 = 0;
  v30 = 0;
  v23 = [(LSApplicationWorkspace *)self updateRecordForApp:v17 withSINF:0 iTunesMetadata:0 placeholderMetadata:v20 sendNotification:v22 operationUUID:v16 outSaveToken:&v30 error:&v29];

  v24 = v30;
  v25 = v29;

  handleSaveObserverBehavior(v15, v24, v16, v25);
  if (a9 && !v23)
  {
    v26 = v25;
    *a9 = v25;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)updateiTunesMetadataForApplicationWithIdentifier:(id)a3 operationUUID:(id)a4 requestContext:(id)a5 metadataPlist:(id)a6 saveObserver:(id)a7 error:(id *)a8
{
  v20 = 0;
  v21 = 0;
  v13 = a7;
  v14 = a4;
  v15 = [(LSApplicationWorkspace *)self updateRecordForApp:a3 withSINF:0 iTunesMetadata:a6 placeholderMetadata:0 sendNotification:0 operationUUID:v14 outSaveToken:&v21 error:&v20];
  v16 = v21;
  v17 = v20;
  handleSaveObserverBehavior(v13, v16, v14, v17);

  if (a8 && !v15)
  {
    v18 = v17;
    *a8 = v17;
  }

  return v15;
}

- (BOOL)updateSINFMetadataForApplicationWithIdentifier:(id)a3 operationUUID:(id)a4 requestContext:(id)a5 parsedSINFInfo:(id)a6 saveObserver:(id)a7 error:(id *)a8
{
  v20 = 0;
  v21 = 0;
  v13 = a7;
  v14 = a4;
  v15 = [(LSApplicationWorkspace *)self updateRecordForApp:a3 withSINF:a6 iTunesMetadata:0 placeholderMetadata:0 sendNotification:0 operationUUID:v14 outSaveToken:&v21 error:&v20];
  v16 = v21;
  v17 = v20;
  handleSaveObserverBehavior(v13, v16, v14, v17);

  if (a8 && !v15)
  {
    v18 = v17;
    *a8 = v17;
  }

  return v15;
}

- (BOOL)setProgressProportionsByPhase:(id)a3 forInstallOfApplicationWithIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  v10 = [(LSApplicationWorkspace *)self syncObserverProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__LSApplicationWorkspace_setProgressProportionsByPhase_forInstallOfApplicationWithIdentifier_error___block_invoke;
  v14[3] = &unk_1E6A198D0;
  v14[4] = &v15;
  [v10 setProgressProportionsByPhase:v8 forInstallOfApplicationWithIdentifier:v9 completion:v14];

  v11 = v16[5];
  if (a5 && v11)
  {
    v11 = v11;
    *a5 = v11;
  }

  v12 = v11 == 0;
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (void)placeholderInstalledForIdentifier:(id)a3 filterDowngrades:(BOOL)a4
{
  v4 = a4;
  v6 = [LSApplicationProxy applicationProxyForIdentifier:a3 placeholder:1];
  v12 = v6;
  if (!v4 || (v7 = [v6 installType], v8 = v12, v7 != 8) && (v9 = objc_msgSend(v12, "installType"), v8 = v12, v9 != 7) && (v10 = objc_msgSend(v12, "installType"), v8 = v12, v10 != 9))
  {
    v11 = [(LSApplicationWorkspace *)self installProgressForApplication:v12 withPhase:3];
    [v11 setInstallState:5];
    [(LSApplicationWorkspace *)self installPhaseFinishedForProgress:v11];

    v8 = v12;
  }
}

- (BOOL)installApplication:(id)a3 withOptions:(id)a4 error:(id *)a5 usingBlock:(id)a6
{
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v7 installApplication:v8 withOptions:v9 error:v10 usingBlock:v11, v12, v13, v14];
  }

  if (a5)
  {
    *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace installApplication:withOptions:error:usingBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3015);
  }

  return 0;
}

- (BOOL)installContainerizedApplicationArtifactAtURL:(id)a3 withOptions:(id)a4 returningRecordPromise:(id *)a5 error:(id *)a6 progressBlock:(id)a7
{
  v8 = _LSInstallLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v8 installContainerizedApplicationArtifactAtURL:v9 withOptions:v10 returningRecordPromise:v11 error:v12 progressBlock:v13, v14, v15];
  }

  if (a6)
  {
    *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace installContainerizedApplicationArtifactAtURL:withOptions:returningRecordPromise:error:progressBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3058);
  }

  return 0;
}

- (BOOL)uninstallContainerizedApplicationWithIdentifier:(id)a3 options:(id)a4 error:(id *)a5 progressBlock:(id)a6
{
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v7 uninstallContainerizedApplicationWithIdentifier:v8 options:v9 error:v10 progressBlock:v11, v12, v13, v14];
  }

  if (a5)
  {
    *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace uninstallContainerizedApplicationWithIdentifier:options:error:progressBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3069);
  }

  return 0;
}

- (BOOL)downgradeApplicationToPlaceholder:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v6 = _LSInstallLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [LSApplicationWorkspace downgradeApplicationToPlaceholder:withOptions:error:];
  }

  v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace downgradeApplicationToPlaceholder:withOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3116);
  if (a5)
  {
    v7 = v7;
    *a5 = v7;
  }

  return 0;
}

- (BOOL)uninstallApplication:(id)a3 withOptions:(id)a4 error:(id *)a5 usingBlock:(id)a6
{
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v7 uninstallApplication:v8 withOptions:v9 error:v10 usingBlock:v11, v12, v13, v14];
  }

  if (a5)
  {
    *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace uninstallApplication:withOptions:error:usingBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3141);
  }

  return 0;
}

- (BOOL)unregisterApplicationsAtMountPoint:(id)a3 operationUUID:(id)a4 saveObserver:(id)a5 requestContext:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v22 = a4;
  v20 = a5;
  v9 = a6;
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x3032000000;
  v32[2] = __Block_byref_object_copy__4;
  v32[3] = __Block_byref_object_dispose__4;
  v33 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v10 = MEMORY[0x1E69E9820];
  do
  {
    v11 = objc_opt_class();
    v12 = serviceDomainForRequestContext(v9);
    v13 = _LSDServiceGetXPCConnection(v11, v12);

    v24[0] = v10;
    v24[1] = 3221225472;
    v24[2] = __103__LSApplicationWorkspace_unregisterApplicationsAtMountPoint_operationUUID_saveObserver_requestContext___block_invoke;
    v24[3] = &unk_1E6A198D0;
    v24[4] = &v31;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v24];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __103__LSApplicationWorkspace_unregisterApplicationsAtMountPoint_operationUUID_saveObserver_requestContext___block_invoke_2;
    v23[3] = &unk_1E6A19C78;
    v23[4] = &v25;
    v23[5] = &v31;
    [v14 unregisterApplicationsAtMountPoint:v21 operationUUID:v22 reply:v23];
  }

  while (_LSNSErrorIsXPCConnectionInterrupted(*(v32[0] + 40)));
  handleSaveObserverBehavior(v20, v26[5], v22, *(v32[0] + 40));
  if (*(v32[0] + 40))
  {
    v15 = _LSDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v21 absoluteString];
      [LSApplicationWorkspace unregisterApplicationsAtMountPoint:v16 operationUUID:v32 saveObserver:v34 requestContext:v15];
    }

    v17 = *(v32[0] + 40) == 0;
  }

  else
  {
    v17 = 1;
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

void __103__LSApplicationWorkspace_unregisterApplicationsAtMountPoint_operationUUID_saveObserver_requestContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)unregisterApplication:(id)a3
{
  v3 = a3;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = __Block_byref_object_copy__4;
  v13[3] = __Block_byref_object_dispose__4;
  v14 = 0;
  v4 = [MEMORY[0x1E696AFB0] UUID];
  do
  {
    v5 = *(v13[0] + 40);
    *(v13[0] + 40) = 0;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__LSApplicationWorkspace_unregisterApplication___block_invoke;
    v11[3] = &unk_1E6A198D0;
    v11[4] = &v12;
    v6 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v11];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__LSApplicationWorkspace_unregisterApplication___block_invoke_2;
    v10[3] = &unk_1E6A19CA0;
    v10[4] = &v12;
    [v6 unregisterApplicationAtURL:v3 operationUUID:v4 reply:v10];
  }

  while (_LSNSErrorIsXPCConnectionInterrupted(*(v13[0] + 40)));
  if (*(v13[0] + 40))
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationWorkspace *)v3 unregisterApplication:v13];
    }

    v8 = *(v13[0] + 40) == 0;
  }

  else
  {
    v8 = 1;
  }

  _Block_object_dispose(&v12, 8);
  return v8;
}

void __48__LSApplicationWorkspace_unregisterApplication___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v5 = v6;
  }
}

- (BOOL)unregisterBuiltinApplicationAtURL:(id)a3 operationUUID:(id)a4 requestContext:(id)a5 saveObserver:(id)a6 error:(id *)a7
{
  v46[1] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v25 = a6;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__4;
  v43 = __Block_byref_object_dispose__4;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = 0;
  v10 = [FSNode alloc];
  v11 = v40;
  obj = v40[5];
  v26 = [(FSNode *)v10 initWithURL:v29 flags:0 error:&obj];
  objc_storeStrong(v11 + 5, obj);
  if (v26)
  {
    if ([(FSNode *)v26 isSecuredSystemContent])
    {
      v12 = MEMORY[0x1E69E9820];
      do
      {
        v13 = objc_opt_class();
        v14 = serviceDomainForRequestContext(v27);
        v15 = _LSDServiceGetXPCConnection(v13, v14);

        v31[0] = v12;
        v31[1] = 3221225472;
        v31[2] = __108__LSApplicationWorkspace_unregisterBuiltinApplicationAtURL_operationUUID_requestContext_saveObserver_error___block_invoke;
        v31[3] = &unk_1E6A198D0;
        v31[4] = &v39;
        v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v31];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __108__LSApplicationWorkspace_unregisterBuiltinApplicationAtURL_operationUUID_requestContext_saveObserver_error___block_invoke_2;
        v30[3] = &unk_1E6A19C78;
        v30[4] = &v33;
        v30[5] = &v39;
        [v16 unregisterApplicationAtURL:v29 operationUUID:v28 reply:v30];
      }

      while (_LSNSErrorIsXPCConnectionInterrupted(v40[5]));
    }

    else
    {
      v45 = *MEMORY[0x1E696A278];
      v46[0] = @"not a builtin application";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "[LSApplicationWorkspace unregisterBuiltinApplicationAtURL:operationUUID:requestContext:saveObserver:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3298);
      v19 = v40[5];
      v40[5] = v18;
    }
  }

  handleSaveObserverBehavior(v25, v34[5], v28, v40[5]);
  v20 = v40[5];
  if (a7 && v20)
  {
    *a7 = v20;
    v20 = v40[5];
  }

  v21 = v20 == 0;

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void __108__LSApplicationWorkspace_unregisterBuiltinApplicationAtURL_operationUUID_requestContext_saveObserver_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)unregisterBuiltinStandaloneExtensionAtURL:(id)a3 operationUUID:(id)a4 requestContext:(id)a5 saveObserver:(id)a6 error:(id *)a7
{
  v46[1] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v25 = a6;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__4;
  v43 = __Block_byref_object_dispose__4;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = 0;
  v10 = [FSNode alloc];
  v11 = v40;
  obj = v40[5];
  v26 = [(FSNode *)v10 initWithURL:v29 flags:0 error:&obj];
  objc_storeStrong(v11 + 5, obj);
  if (v26)
  {
    if ([(FSNode *)v26 isSecuredSystemContent])
    {
      v12 = MEMORY[0x1E69E9820];
      do
      {
        v13 = objc_opt_class();
        v14 = serviceDomainForRequestContext(v27);
        v15 = _LSDServiceGetXPCConnection(v13, v14);

        v31[0] = v12;
        v31[1] = 3221225472;
        v31[2] = __116__LSApplicationWorkspace_unregisterBuiltinStandaloneExtensionAtURL_operationUUID_requestContext_saveObserver_error___block_invoke;
        v31[3] = &unk_1E6A198D0;
        v31[4] = &v39;
        v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v31];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __116__LSApplicationWorkspace_unregisterBuiltinStandaloneExtensionAtURL_operationUUID_requestContext_saveObserver_error___block_invoke_2;
        v30[3] = &unk_1E6A19C78;
        v30[4] = &v33;
        v30[5] = &v39;
        [v16 unregisterPluginAtURL:v29 operationUUID:v28 reply:v30];
      }

      while (_LSNSErrorIsXPCConnectionInterrupted(v40[5]));
    }

    else
    {
      v45 = *MEMORY[0x1E696A278];
      v46[0] = @"not a builtin plugin";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "[LSApplicationWorkspace unregisterBuiltinStandaloneExtensionAtURL:operationUUID:requestContext:saveObserver:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3336);
      v19 = v40[5];
      v40[5] = v18;
    }
  }

  handleSaveObserverBehavior(v25, v34[5], v28, v40[5]);
  v20 = v40[5];
  if (a7 && v20)
  {
    *a7 = v20;
    v20 = v40[5];
  }

  v21 = v20 == 0;

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void __116__LSApplicationWorkspace_unregisterBuiltinStandaloneExtensionAtURL_operationUUID_requestContext_saveObserver_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)registerBuiltinApplicationWithInstallationRecord:(id)a3 extensionInstallationRecords:(id)a4 personaUniqueStrings:(id)a5 operationUUID:(id)a6 requestContext:(id)a7 saveObserver:(id)a8 registrationError:(id *)a9
{
  v64 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v35 = a4;
  v39 = a5;
  v41 = a6;
  v40 = a7;
  v36 = a8;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__4;
  v59 = __Block_byref_object_dispose__4;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__4;
  v53 = __Block_byref_object_dispose__4;
  v54 = 0;
  v14 = [FSNode alloc];
  v15 = [v37 bundleURL];
  v16 = (v56 + 5);
  obj = v56[5];
  v38 = [(FSNode *)v14 initWithURL:v15 flags:0 error:&obj];
  objc_storeStrong(v16, obj);

  if (v38)
  {
    if ([(FSNode *)v38 isSecuredSystemContent])
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v35, "count") + 1}];
      v18 = [v37 legacyRecordDictionary];
      [v17 addObject:v18];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v19 = v35;
      v20 = [v19 countByEnumeratingWithState:&v44 objects:v63 count:16];
      if (v20)
      {
        v21 = *v45;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v45 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = [*(*(&v44 + 1) + 8 * i) legacyRecordDictionary];
            [v17 addObject:v23];
          }

          v20 = [v19 countByEnumeratingWithState:&v44 objects:v63 count:16];
        }

        while (v20);
      }

      v24 = MEMORY[0x1E69E9820];
      do
      {
        v25 = objc_opt_class();
        v26 = serviceDomainForRequestContext(v40);
        v27 = _LSDServiceGetXPCConnection(v25, v26);

        v43[0] = v24;
        v43[1] = 3221225472;
        v43[2] = __185__LSApplicationWorkspace_registerBuiltinApplicationWithInstallationRecord_extensionInstallationRecords_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke;
        v43[3] = &unk_1E6A198D0;
        v43[4] = &v55;
        v28 = [v27 synchronousRemoteObjectProxyWithErrorHandler:v43];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __185__LSApplicationWorkspace_registerBuiltinApplicationWithInstallationRecord_extensionInstallationRecords_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2;
        v42[3] = &unk_1E6A19C78;
        v42[4] = &v49;
        v42[5] = &v55;
        [v28 registerBuiltinApplication:v17 personaUniqueStrings:v39 operationUUID:v41 reply:v42];
      }

      while (_LSNSErrorIsXPCConnectionInterrupted(v56[5]));
    }

    else
    {
      v61 = *MEMORY[0x1E696A278];
      v62 = @"not a builtin application";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v29 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "[LSApplicationWorkspace registerBuiltinApplicationWithInstallationRecord:extensionInstallationRecords:personaUniqueStrings:operationUUID:requestContext:saveObserver:registrationError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3381);
      v30 = v56[5];
      v56[5] = v29;
    }
  }

  handleSaveObserverBehavior(v36, v50[5], v41, v56[5]);
  v31 = v56[5];
  if (a9 && v31)
  {
    *a9 = v31;
    v31 = v56[5];
  }

  v32 = v31 == 0;

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

void __185__LSApplicationWorkspace_registerBuiltinApplicationWithInstallationRecord_extensionInstallationRecords_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)registerBuiltinStandaloneExtension:(id)a3 personaUniqueStrings:(id)a4 operationUUID:(id)a5 requestContext:(id)a6 saveObserver:(id)a7 registrationError:(id *)a8
{
  v51[1] = *MEMORY[0x1E69E9840];
  v34 = a3;
  v28 = a4;
  v33 = a5;
  v32 = a6;
  v30 = a7;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__4;
  v48 = __Block_byref_object_dispose__4;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__4;
  v42 = __Block_byref_object_dispose__4;
  v43 = 0;
  v12 = [FSNode alloc];
  v13 = [v34 bundleURL];
  v14 = v45;
  obj = v45[5];
  v31 = [(FSNode *)v12 initWithURL:v13 flags:0 error:&obj];
  objc_storeStrong(v14 + 5, obj);

  if (v31)
  {
    if ([(FSNode *)v31 isSecuredSystemContent])
    {
      v15 = MEMORY[0x1E69E9820];
      do
      {
        v16 = objc_opt_class();
        v17 = serviceDomainForRequestContext(v32);
        v18 = _LSDServiceGetXPCConnection(v16, v17);

        v36[0] = v15;
        v36[1] = 3221225472;
        v36[2] = __142__LSApplicationWorkspace_registerBuiltinStandaloneExtension_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke;
        v36[3] = &unk_1E6A198D0;
        v36[4] = &v44;
        v19 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v36];
        v20 = [v34 legacyRecordDictionary];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __142__LSApplicationWorkspace_registerBuiltinStandaloneExtension_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2;
        v35[3] = &unk_1E6A19C78;
        v35[4] = &v44;
        v35[5] = &v38;
        [v19 registerBuiltinAppex:v20 operationUUID:v33 reply:v35];
      }

      while (_LSNSErrorIsXPCConnectionInterrupted(v45[5]));
    }

    else
    {
      v50 = *MEMORY[0x1E696A278];
      v51[0] = @"not a builtin application";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v21, "[LSApplicationWorkspace registerBuiltinStandaloneExtension:personaUniqueStrings:operationUUID:requestContext:saveObserver:registrationError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3420);
      v23 = v45[5];
      v45[5] = v22;
    }
  }

  handleSaveObserverBehavior(v30, v39[5], v33, v45[5]);
  v24 = v45[5];
  if (a8 && v24)
  {
    *a8 = v24;
    v24 = v45[5];
  }

  v25 = v24 == 0;

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

void __142__LSApplicationWorkspace_registerBuiltinStandaloneExtension_personaUniqueStrings_operationUUID_requestContext_saveObserver_registrationError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)refreshUnbundledSystemExtensionPointsWithOperationUUID:(id)a3 requestContext:(id)a4 saveObserver:(id)a5 registrationError:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v18 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  do
  {
    v10 = objc_opt_class();
    v11 = serviceDomainForRequestContext(v9);
    v12 = _LSDServiceGetXPCConnection(v10, v11);

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __127__LSApplicationWorkspace_refreshUnbundledSystemExtensionPointsWithOperationUUID_requestContext_saveObserver_registrationError___block_invoke;
    v20[3] = &unk_1E6A198D0;
    v20[4] = &v27;
    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __127__LSApplicationWorkspace_refreshUnbundledSystemExtensionPointsWithOperationUUID_requestContext_saveObserver_registrationError___block_invoke_2;
    v19[3] = &unk_1E6A19C78;
    v19[4] = &v27;
    v19[5] = &v21;
    [v13 refreshExtensionPointsWithOperationUUID:v8 reply:v19];
  }

  while (_LSNSErrorIsXPCConnectionInterrupted(v28[5]));
  handleSaveObserverBehavior(v18, v22[5], v8, v28[5]);
  v14 = v28[5];
  if (a6 && v14)
  {
    *a6 = v14;
    v14 = v28[5];
  }

  v15 = v14 == 0;
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  return v15;
}

void __127__LSApplicationWorkspace_refreshUnbundledSystemExtensionPointsWithOperationUUID_requestContext_saveObserver_registrationError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __139__LSApplicationWorkspace_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_outSaveToken_error___block_invoke_2(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  *(*(a1[5] + 8) + 24) = a2;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

- (BOOL)updateSINFWithData:(id)a3 forApplication:(id)a4 options:(id)a5 error:(id *)a6
{
  v7 = _LSDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v7 updateSINFWithData:v8 forApplication:v9 options:v10 error:v11, v12, v13, v14];
  }

  v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace updateSINFWithData:forApplication:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3514);
  if (a6)
  {
    v15 = v15;
    *a6 = v15;
  }

  return 0;
}

- (BOOL)_getBundleIdentifierForBundleAtURL:(id)a3 invokeUpdateBlockAndReregister:(id)a4 error:(id *)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v23 = 0;
  v9 = [[LSApplicationRecord alloc] initWithURL:v7 allowPlaceholder:1 error:&v23];
  v10 = v23;
  if (!v9)
  {
    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace _getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:];
    }

    goto LABEL_14;
  }

  v11 = [(LSBundleRecord *)v9 bundleIdentifier];
  if (v11)
  {
    v22 = v10;
    v12 = v8[2](v8, v7, v11, &v22);
    v13 = v22;

    if (v12)
    {
      v14 = 1;
      v15 = LSRegisterURL(v7, 1u);
      v21 = v13;
      v16 = _LSGetNSErrorFromOSStatusImpl(v15, &v21, 0, "[LSApplicationWorkspace _getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3534);
      v10 = v21;

      if (v16)
      {
        goto LABEL_15;
      }

      v17 = _LSDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [LSApplicationWorkspace _getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:];
      }

      goto LABEL_13;
    }

    v17 = _LSDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace _getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:];
    }
  }

  else
  {
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"provided bundle URL was not a bundle with a bundle identifier";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v13 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 112, v17, "[LSApplicationWorkspace _getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3545);
  }

  v10 = v13;
LABEL_13:

LABEL_14:
  v14 = 0;
LABEL_15:

  if (a5)
  {
    v18 = v10;
    *a5 = v10;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)updateSINFWithData:(id)a3 forApplicationAtURL:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace updateSINFWithData:forApplicationAtURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3582);
  }

  return 0;
}

- (BOOL)updateiTunesMetadataWithData:(id)a3 forApplication:(id)a4 options:(id)a5 error:(id *)a6
{
  v7 = _LSDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v7 updateiTunesMetadataWithData:v8 forApplication:v9 options:v10 error:v11, v12, v13, v14];
  }

  v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace updateiTunesMetadataWithData:forApplication:options:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3594);
  if (a6)
  {
    v15 = v15;
    *a6 = v15;
  }

  return 0;
}

- (BOOL)updateiTunesMetadataWithData:(id)a3 forApplicationAtURL:(id)a4 error:(id *)a5
{
  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [(LSApplicationWorkspace *)v6 updateiTunesMetadataWithData:v7 forApplicationAtURL:v8 error:v9, v10, v11, v12, v13];
  }

  if (a5)
  {
    *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace updateiTunesMetadataWithData:forApplicationAtURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3606);
  }

  return 0;
}

- (BOOL)updatePlaceholderMetadataForApp:(id)a3 installType:(unint64_t)a4 failure:(unint64_t)a5 underlyingError:(id)a6 source:(unint64_t)a7 outError:(id *)a8
{
  v45[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = MEMORY[0x1E696AD98];
  v15 = a6;
  v16 = [v14 numberWithUnsignedInteger:a5];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  v41 = v40 = v15;
  v39 = v17;
  _LSLogStepStart(11, 0, v13, @"Updating PlaceholderMetadata for %@ with failure %@ <LSInstallType %@, underlyingError (%@), source %@>", v18, v19, v20, v21, v13);

  v22 = (softLinkMobileInstallationUpdatePlaceholderMetadata[0])(v13, a4, a5, v15, a7);

  if (v22)
  {
    v23 = _LSDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace updatePlaceholderMetadataForApp:installType:failure:underlyingError:source:outError:];
    }

    v24 = 0;
  }

  else
  {
    v26 = a4 - 7 < 3 && a5 != 0;
    v44[0] = @"LSInstallType";
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v44[1] = @"PlaceholderFailureReason";
    v45[0] = v27;
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v45[1] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v30 = [MEMORY[0x1E696AFB0] UUID];
    v43 = 0;
    v24 = [(LSApplicationWorkspace *)self updateRecordForApp:v13 withSINF:0 iTunesMetadata:0 placeholderMetadata:v29 sendNotification:v26 operationUUID:v30 outSaveToken:0 error:&v43, v39, v40, v41];
    v22 = v43;

    if (!v26)
    {
      v35 = a8;
      goto LABEL_14;
    }

    v23 = [(LSApplicationWorkspace *)self observerProxy];
    [v23 installationEndedForApplication:v13 withState:4];
  }

  v35 = a8;

LABEL_14:
  _LSLogStepFinished(11, v24, v13, @"Updated PlaceholderMetadata for app with error %@", v31, v32, v33, v34, v22);
  if (v35 && !v24)
  {
    v36 = v22;
    *v35 = v22;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)initiateProgressForApp:(id)a3 withType:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v19 = [v6 numberWithUnsignedInteger:a4];
  _LSLogStepStart(11, 0, v7, @"Updating PlaceholderMetadata for %@ with LSInstallType %@", v8, v9, v10, v11, v7);

  [(LSApplicationWorkspace *)self placeholderInstalledForIdentifier:v7 filterDowngrades:0];
  v20 = 0;
  updated = _updatePlaceholderInstallType(self, v7, a4, &v20);
  v13 = v20;
  _LSLogStepFinished(11, updated, v7, @"Updated PlaceholderMetadata for app with error %@", v14, v15, v16, v17, v13);

  return updated;
}

- (BOOL)revertContainerizedApplicationWithIdentifier:(id)a3 options:(id)a4 returningRecordPromise:(id *)a5 error:(id *)a6 progressBlock:(id)a7
{
  if (a6)
  {
    *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace revertContainerizedApplicationWithIdentifier:options:returningRecordPromise:error:progressBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 3706);
  }

  return 0;
}

- (BOOL)unregisterPlugin:(id)a3
{
  v3 = a3;
  v8 = 0;
  v4 = _LSUnregisterPluginsAtURL(v3, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace unregisterPlugin:];
    }
  }

  return v4;
}

- (BOOL)allowsAlternateIcons
{
  SharedInstance = __LSDefaultsGetSharedInstance();

  return [SharedInstance allowsAlternateIcons];
}

- (BOOL)garbageCollectDatabaseWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__LSApplicationWorkspace_garbageCollectDatabaseWithError___block_invoke;
  v8[3] = &unk_1E6A198D0;
  v8[4] = &v9;
  v4 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__LSApplicationWorkspace_garbageCollectDatabaseWithError___block_invoke_2;
  v7[3] = &unk_1E6A19A28;
  v7[4] = &v15;
  v7[5] = &v9;
  [v4 garbageCollectDatabaseWithCompletionHandler:v7];
  v5 = *(v16 + 24);
  if (a3 && (v16[3] & 1) == 0)
  {
    *a3 = v10[5];
    v5 = *(v16 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
  return v5 & 1;
}

- (BOOL)isVersion:(id)a3 greaterThanOrEqualToVersion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    [LSApplicationWorkspace isVersion:greaterThanOrEqualToVersion:];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    [LSApplicationWorkspace isVersion:greaterThanOrEqualToVersion:];
    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = 0u;
  v16 = 0u;
  _LSVersionNumberMakeWithString(&v15, v5);
  v13 = 0u;
  v14 = 0u;
  _LSVersionNumberMakeWithString(&v13, v7);
  v12[0] = v15;
  v12[1] = v16;
  v11[0] = v13;
  v11[1] = v14;
  v8 = _LSVersionNumberCompare(v12, v11) != -1;

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)invalidateIconCache:(id)a3
{
  v3 = a3;
  if (IconServicesLibrary_frameworkLibrary_0 || (IconServicesLibrary_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
  {
    (softLink_ISInvalidateCacheEntriesForBundleIdentifier[0])(v3);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearAdvertisingIdentifier
{
  v2 = [(_LSDService *)_LSDDeviceIdentifierService XPCProxyWithErrorHandler:?];
  [v2 clearAllIdentifiersOfType:1];
}

- (id)deviceIdentifierForAdvertising
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke;
  v5[3] = &unk_1E6A19D20;
  v5[4] = &v6;
  v2 = _LSRetryForConnectionInterrupted(v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

id __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_2;
  v7[3] = &unk_1E6A198D0;
  v7[4] = &v8;
  v2 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_373;
  v6[3] = &unk_1E6A19CF8;
  v6[4] = *(a1 + 32);
  [v2 getIdentifierOfType:1 completionHandler:v6];
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = v9[5];
  }

  v4 = v3;

  _Block_object_dispose(&v8, 8);

  return v4;
}

void __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_2_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_373(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = _LSDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_373_cold_1();
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_2_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_376(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = _LSDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_376_cold_1();
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)urlContainsDeviceIdentifierForAdvertising:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke;
  v8[3] = &unk_1E6A19D98;
  v4 = v3;
  v9 = v4;
  v10 = &v11;
  v5 = _LSRetryForConnectionInterrupted(v8);
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

id __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke_2;
  v7[3] = &unk_1E6A19D48;
  v8 = *(a1 + 32);
  v9 = &v10;
  v2 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke_377;
  v6[3] = &unk_1E6A19D70;
  v3 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  [v2 urlContainsDeviceIdentifierForAdvertising:v3 completionHandler:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke_2_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)createDeviceIdentifierWithVendorName:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v7 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:?];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__LSApplicationWorkspace_createDeviceIdentifierWithVendorName_bundleIdentifier___block_invoke;
  v10[3] = &unk_1E6A19CF8;
  v10[4] = &v11;
  [v7 getIdentifierOfType:0 vendorName:v5 bundleIdentifier:v6 completionHandler:v10];
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)removeDeviceIdentifierForVendorName:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:?];
  [v7 clearIdentifiersForUninstallationWithVendorName:v6 bundleIdentifier:v5];
}

- (id)deviceIdentifierForVendorSeedData
{
  v15[2] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  v2 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:?];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__LSApplicationWorkspace_deviceIdentifierForVendorSeedData__block_invoke;
  v8[3] = &unk_1E6A19CF8;
  v8[4] = &v9;
  [v2 getIdentifierOfType:2 completionHandler:v8];
  v3 = v10[5];
  if (v3)
  {
    v15[0] = 0;
    v15[1] = 0;
    [v3 getUUIDBytes:v15];
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:16];
  }

  else
  {
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace deviceIdentifierForVendorSeedData];
    }

    v4 = 0;
  }

  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)installProgressForBundleID:(id)a3 makeSynchronous:(unsigned __int8)a4
{
  v5 = a3;
  v6 = _LSProgressLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspace installProgressForBundleID:makeSynchronous:];
  }

  v7 = +[LSApplicationWorkspace progressQueue];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke;
  v15 = &unk_1E6A18F50;
  v16 = self;
  v8 = v5;
  v17 = v8;
  dispatch_sync(v7, &v12);

  v9 = [(LSInstallProgressList *)self->_observedInstallProgresses progressForBundleID:v8, v12, v13, v14, v15, v16];
  v10 = _LSProgressLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspace installProgressForBundleID:v9 makeSynchronous:?];
  }

  return v9;
}

void __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  if (!v3)
  {
    v4 = objc_alloc_init(LSInstallProgressList);
    v5 = *(*v2 + 16);
    *(*v2 + 16) = v4;

    v3 = *(*v2 + 16);
  }

  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  v8 = [v3 progressForBundleID:v7];
  if (v8)
  {

    goto LABEL_6;
  }

  v9 = [*(*v2 + 16) subscriberForBundleID:*v6 andPublishingKey:*v6];

  if (v9)
  {
LABEL_6:
    v10 = _LSProgressLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_cold_1(v6);
    }

    goto LABEL_8;
  }

  v12 = _LSProgressLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_cold_2(v6);
  }

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_380;
  v22 = &unk_1E6A19DC0;
  v13 = *v6;
  v14 = *v2;
  v23 = v13;
  v24 = v14;
  v15 = MEMORY[0x1865D71B0](&v19);
  v16 = [MEMORY[0x1E696AE38] _addSubscriberForCategory:*v6 usingPublishingHandler:{v15, v19, v20, v21, v22}];
  if (v16)
  {
    [*(*v2 + 16) addSubscriber:v16 forPublishingKey:*v6 andBundleID:*v6];
  }

  v17 = _LSProgressLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *v6;
    *buf = 138412290;
    v26 = v18;
    _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "Subscribing to progress for app %@, ", buf, 0xCu);
  }

  v10 = v23;
LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
}

id __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_380(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSProgressLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 _LSDescription];
    v6 = *(a1 + 32);
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Got progress %@ for app %@, ", buf, 0x16u);
  }

  [*(*(a1 + 40) + 16) setProgress:v3 forBundleID:*(a1 + 32)];
  v7 = [*(a1 + 40) remoteObserver];
  v18 = *(a1 + 32);
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [v7 applicationInstallsDidChange:v8];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_381;
  v15[3] = &unk_1E6A18F50;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v16 = v9;
  v17 = v10;
  v11 = [v15 copy];
  v12 = MEMORY[0x1865D71B0]();

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_381(int8x16_t *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _LSProgressLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[2].i64[0];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Unpublishing progress block called for app %@", buf, 0xCu);
  }

  v4 = +[LSApplicationWorkspace progressQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_382;
  block[3] = &unk_1E6A18F50;
  v7 = a1[2];
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  dispatch_async(v4, block);

  v6 = *MEMORY[0x1E69E9840];
}

void *__69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_382(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    [result removeProgressForBundleID:*(a1 + 40)];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 16);

    return [v4 removeSubscriberForPublishingKey:v3 andBundleID:v3];
  }

  return result;
}

- (id)installProgressForApplication:(id)a3 withPhase:(unint64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 bundleIdentifier];
    v9 = [MEMORY[0x1E696AE38] publishingKeyForApp:v8 withPhase:a4];
    v10 = self;
    objc_sync_enter(v10);
    createdInstallProgresses = v10->_createdInstallProgresses;
    if (!createdInstallProgresses)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
      v13 = v10->_createdInstallProgresses;
      v10->_createdInstallProgresses = v12;

      createdInstallProgresses = v10->_createdInstallProgresses;
    }

    v14 = [(NSMutableDictionary *)createdInstallProgresses objectForKeyedSubscript:v9];
    if (!v14)
    {
      if ([v7 isPlaceholder])
      {
        v14 = [MEMORY[0x1E696AE38] childProgressForBundleID:v8 andPhase:a4];
        v15 = [(LSApplicationWorkspace *)v10 syncObserverProxy];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke;
        v23[3] = &unk_1E6A19AC0;
        v24 = v7;
        [v15 createInstallProgressForApplication:v24 withPhase:a4 andPublishingString:v9 reply:v23];

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke_385;
        v21[3] = &unk_1E6A18F50;
        v21[4] = v10;
        v22 = v8;
        [v14 setCancellationHandler:v21];
        [(NSMutableDictionary *)v10->_createdInstallProgresses setObject:v14 forKeyedSubscript:v9];
        [v14 _publish];
        v16 = _LSProgressLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v14 _LSDescription];
          *buf = 138412290;
          v26 = v17;
          _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "Published install progress %@", buf, 0xCu);
        }

        v18 = v24;
      }

      else
      {
        v18 = _LSProgressLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v7;
          _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "App %@ is not a placeholder so cannot have progress", buf, 0xCu);
        }

        v14 = 0;
      }
    }

    objc_sync_exit(v10);
  }

  else
  {
    v14 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v14;
}

void __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LSProgressLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke_cold_1(a1);
    }
  }
}

void __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke_385(uint64_t a1)
{
  v2 = [*(a1 + 32) observerProxy];
  [v2 installationEndedForApplication:*(a1 + 40) withState:3];
}

- (BOOL)installPhaseFinishedForProgress:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"bundleID"];

  v7 = [v6 substringToIndex:{objc_msgSend(v6, "rangeOfString:options:", @".", 4)}];
  v8 = [v4 installState];
  if (v8 == 4)
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 _LSDescription];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "installPhaseFinishedForProgress: %@ - %@ called", &v16, 0x16u);
    }

    v11 = [(LSApplicationWorkspace *)self syncObserverProxy];
    [v11 installationFailedForApplication:v7 reply:&__block_literal_global_393];
  }

  v12 = _LSDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspace installPhaseFinishedForProgress:];
  }

  [v4 _unpublish];
  v13 = self;
  objc_sync_enter(v13);
  if (v6)
  {
    [(NSMutableDictionary *)v13->_createdInstallProgresses removeObjectForKey:v6];
  }

  objc_sync_exit(v13);

  v14 = *MEMORY[0x1E69E9840];
  return v8 != 4;
}

- (void)clearCreatedProgressForBundleID:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableDictionary *)v5->_createdInstallProgresses allKeys];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v9 = *v16;
    *&v8 = 138412290;
    v14 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 hasPrefix:{v4, v14, v15}])
        {
          [(NSMutableDictionary *)v5->_createdInstallProgresses removeObjectForKey:v11];
          v12 = _LSProgressLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = v11;
            _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Clearing progress for key %@ from cache", buf, 0xCu);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v13 = *MEMORY[0x1E69E9840];
}

void __95__LSApplicationWorkspace__LSPrivateRebuildApplicationDatabasesForSystemApps_internal_user_uid___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __95__LSApplicationWorkspace__LSPrivateRebuildApplicationDatabasesForSystemApps_internal_user_uid___block_invoke_cold_1();
  }
}

- (void)rebuildDatabaseContentForFrameworkAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__LSApplicationWorkspace_rebuildDatabaseContentForFrameworkAtURL_completionHandler___block_invoke;
  v12[3] = &unk_1E6A19A70;
  v6 = v5;
  v13 = v6;
  v7 = a3;
  v8 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__LSApplicationWorkspace_rebuildDatabaseContentForFrameworkAtURL_completionHandler___block_invoke_2;
  v10[3] = &unk_1E6A19A70;
  v11 = v6;
  v9 = v6;
  [v8 refreshContentInFrameworkAtURL:v7 reply:v10];
}

uint64_t __84__LSApplicationWorkspace_rebuildDatabaseContentForFrameworkAtURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

uint64_t __84__LSApplicationWorkspace_rebuildDatabaseContentForFrameworkAtURL_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

- (void)noteRestrictionsUpdateForOpensWithCompletion:(id)a3
{
  v3 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__LSApplicationWorkspace_noteRestrictionsUpdateForOpensWithCompletion___block_invoke;
  v6[3] = &unk_1E6A19A70;
  v7 = v3;
  v4 = v3;
  v5 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v6];
  [v5 updateRestrictionKnowledgeWithCompletionHandler:v4];
}

- (void)_LSPrivateUpdateAppRemovalRestrictions
{
  v2 = +[LSApplicationRestrictionsManager sharedInstance];
  [(LSApplicationRestrictionsManager *)v2 cleanRemovedSystemApplicationsList];
}

- (void)_LSPrivateSetRemovedSystemAppIdentifiers:(id)a3
{
  v3 = a3;
  v4 = +[LSApplicationRestrictionsManager sharedInstance];
  [(LSApplicationRestrictionsManager *)v4 setRemovedSystemApplicationIdentifiers:v3];
}

- (id)_LSPrivateRemovedSystemAppIdentifiers
{
  v2 = +[LSApplicationRestrictionsManager sharedInstance];
  v3 = [(LSApplicationRestrictionsManager *)v2 removedSystemApplicationIdentifiers];

  return v3;
}

- (BOOL)_LSPrivateDatabaseNeedsRebuild
{
  v2 = _LSGetStatus();
  if ((v2 & 0x200) != 0)
  {
    v3 = _LSDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Incomplete database seed detected, _LSPrivateDatabaseNeedsRebuild = YES", v6, 2u);
    }
  }

  return (v2 >> 9) & 1;
}

- (BOOL)_LSPrivateRebuildDatabaseAtNextRestart:(id)a3
{
  v3 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke;
  v10[3] = &unk_1E6A19A70;
  v4 = v3;
  v11 = v4;
  v5 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke_3;
  v8[3] = &unk_1E6A19E58;
  v9 = v4;
  v6 = v4;
  [v5 removeDatabaseStoreOnNextOpportunity:v8];

  return 1;
}

void __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke_2;
    v6[3] = &unk_1E6A19E08;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__LSApplicationWorkspace__LSPrivateRebuildDatabaseAtNextRestart___block_invoke_4;
    block[3] = &unk_1E6A19E30;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (BOOL)_LSPrivateAskLSDToExitSafely:(double)a3 completionHandler:(id)a4
{
  v5 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke;
  v12[3] = &unk_1E6A19A70;
  v6 = v5;
  v13 = v6;
  v7 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v12];
  if (a3 <= 0.0)
  {
    a3 = 1.0e99;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke_3;
  v10[3] = &unk_1E6A19E58;
  v11 = v6;
  v8 = v6;
  [v7 requestLSDExitSafely:v10 completionHandler:a3];

  return 1;
}

void __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke_2;
    v6[3] = &unk_1E6A19E08;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__LSApplicationWorkspace__LSPrivateAskLSDToExitSafely_completionHandler___block_invoke_4;
    block[3] = &unk_1E6A19E30;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)_LSPrivateNoteMigratorRunning
{
  v2 = objc_opt_class();
  v3 = +[_LSDServiceDomain defaultServiceDomain];
  v5 = _LSDServiceGetXPCConnection(v2, v3);

  v4 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_401];
  [v4 noteMigratorRunningWithReply:&__block_literal_global_404];
}

void __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke_cold_1();
  }
}

void __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke_402(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _LSDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke_402_cold_1();
    }
  }
}

- (void)_LSFailedToOpenURL:(id)a3 withBundle:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = _LSDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v14 = v5;
    v15 = 2113;
    v16 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "_LSFailedToOpenURL:%{private}@ withBundle:%{private}@", buf, 0x16u);
  }

  v8 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:?];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__LSApplicationWorkspace__LSFailedToOpenURL_withBundle___block_invoke;
  v11[3] = &unk_1E6A19888;
  v12 = v6;
  v9 = v6;
  [v8 failedToOpenApplication:v9 withURL:v5 completionHandler:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __56__LSApplicationWorkspace__LSFailedToOpenURL_withBundle___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _LSDefaultLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v10 = 138477827;
      v11 = v8;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Finished presenting restoration prompt for %{private}@.", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __56__LSApplicationWorkspace__LSFailedToOpenURL_withBundle___block_invoke_cold_1(a1);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_LSClearSchemaCaches
{
  if (_LSCurrentProcessMayMapDatabase())
  {
    v3 = 0;
    if (!_LSContextInit(&v3))
    {
      v2 = [(_LSDatabase *)v3 schema];
      _LSSchemaClearAllCaches(v2);
      _LSContextDestroy(&v3);
    }
  }
}

- (void)sendExtensionNotificationsForSystemModeChangeFrom:(id)a3 to:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = _LSExtensionsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Begin updating extensions for mode change %@ -> %@", buf, 0x16u);
  }

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = _LSServer_DatabaseExecutionContext();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__LSApplicationWorkspace_sendExtensionNotificationsForSystemModeChangeFrom_to___block_invoke;
  v16[3] = &unk_1E6A19E80;
  v17 = v6;
  v18 = v8;
  v19 = v5;
  v20 = v9;
  v11 = v9;
  v12 = v5;
  v13 = v8;
  v14 = v6;
  [(LSDBExecutionContext *)v10 syncRead:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __79__LSApplicationWorkspace_sendExtensionNotificationsForSystemModeChangeFrom_to___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = +[LSExtensionPointRecord enumerator];
  v2 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v47;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v47 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v46 + 1) + 8 * i);
        v7 = [v6 SDKDictionary];
        v8 = objc_opt_class();
        v9 = [v7 objectForKey:@"LSExtensionRestrictedSystemModes" ofClass:v8 valuesOfClass:objc_opt_class()];

        if ([v9 containsObject:*(a1 + 32)])
        {
          [*(a1 + 40) addObject:v6];
        }

        if ([v9 containsObject:*(a1 + 48)])
        {
          [*(a1 + 56) addObject:v6];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v3);
  }

  v10 = [*(a1 + 40) mutableCopy];
  [v10 minusSet:*(a1 + 56)];
  v11 = [*(a1 + 56) mutableCopy];
  [v11 minusSet:*(a1 + 40)];
  v12 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [LSApplicationExtensionRecord enumeratorWithExtensionPointRecord:*(*(&v42 + 1) + 8 * j) options:0];
        v19 = [v18 allObjects];
        [v12 addObjectsFromArray:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v15);
  }

  obja = v13;

  v20 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v39;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [LSApplicationExtensionRecord enumeratorWithExtensionPointRecord:*(*(&v38 + 1) + 8 * k) options:0];
        v27 = [v26 allObjects];
        [v20 addObjectsFromArray:v27];
      }

      v23 = [v21 countByEnumeratingWithState:&v38 objects:v54 count:16];
    }

    while (v23);
  }

  if ([v12 count])
  {
    v28 = _LSExtensionsLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v12;
      _os_log_impl(&dword_18162D000, v28, OS_LOG_TYPE_DEFAULT, "Sending system mode unrestricted app extension installedNotifications for %@", buf, 0xCu);
    }

    v29 = +[_LSInstallProgressService sharedInstance];
    [v29 detachAndSendNotification:@"com.apple.LaunchServices.pluginsregistered" forApplicationExtensionRecords:v12];
  }

  if ([v20 count])
  {
    v30 = _LSExtensionsLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v20;
      _os_log_impl(&dword_18162D000, v30, OS_LOG_TYPE_DEFAULT, "Sending system mode restricted app extension uninstalledNotifications for %@", buf, 0xCu);
    }

    v31 = +[_LSInstallProgressService sharedInstance];
    [v31 detachAndSendNotification:@"com.apple.LaunchServices.pluginsunregistered" forApplicationExtensionRecords:v20];
  }

  v32 = _LSExtensionsLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = *(a1 + 48);
    v34 = *(a1 + 32);
    *buf = 138412546;
    v51 = v33;
    v52 = 2112;
    v53 = v34;
    _os_log_impl(&dword_18162D000, v32, OS_LOG_TYPE_INFO, "Done updating extensions for mode change %@ -> %@", buf, 0x16u);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)sendExtensionNotificationsForExtensionBundleIdentifier:(id)a3 changingRestrictionStateTo:(BOOL)a4
{
  v5 = a3;
  v6 = _LSServer_DatabaseExecutionContext();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__LSApplicationWorkspace_sendExtensionNotificationsForExtensionBundleIdentifier_changingRestrictionStateTo___block_invoke;
  v8[3] = &unk_1E6A19EA8;
  v9 = v5;
  v10 = a4;
  v7 = v5;
  [(LSDBExecutionContext *)v6 syncRead:v8];
}

void __108__LSApplicationWorkspace_sendExtensionNotificationsForExtensionBundleIdentifier_changingRestrictionStateTo___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [LSApplicationExtensionRecord alloc];
  v3 = *(a1 + 32);
  v14 = 0;
  v4 = [(LSApplicationExtensionRecord *)v2 initWithBundleIdentifier:v3 error:&v14];
  v5 = v14;
  if (v4)
  {
    if (*(a1 + 40))
    {
      v6 = @"com.apple.LaunchServices.pluginsunregistered";
    }

    else
    {
      v6 = @"com.apple.LaunchServices.pluginsregistered";
    }

    v7 = v6;
    v8 = _LSInstallLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18[0] = v4;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Sending %@ for %@", buf, 0x16u);
    }

    v9 = +[_LSInstallProgressService sharedInstance];
    v19[0] = v4;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v9 detachAndSendNotification:v7 forApplicationExtensionRecords:v10];
  }

  else
  {
    v7 = _LSInstallLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138412802;
      v16 = v11;
      v17 = 1024;
      LODWORD(v18[0]) = v12;
      WORD2(v18[0]) = 2112;
      *(v18 + 6) = v5;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "no record for %@, could not change restriction state to %d: %@", buf, 0x1Cu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)sendApplicationStateChangedNotificationsFor:(id)a3 stateProvider:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v10 = _LSServer_DatabaseExecutionContext();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke;
    v25[3] = &unk_1E6A19680;
    v11 = v7;
    v26 = v11;
    [(LSDBExecutionContext *)v10 syncWrite:v25];

    v12 = _LSServer_DatabaseExecutionContext();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke_2;
    v21[3] = &unk_1E6A19860;
    v22 = v11;
    v23 = v8;
    v24 = v9;
    [(LSDBExecutionContext *)v12 syncRead:v21];
  }

  else
  {
    v13 = _LSDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(LSApplicationWorkspace *)v13 sendApplicationStateChangedNotificationsFor:v14 stateProvider:v15 completion:v16, v17, v18, v19, v20];
    }

    if (v9)
    {
      v9[2](v9);
    }
  }
}

void __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v6 = v2;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v1);
        }

        _LSServer_UpdateDatabaseWithInfo(*(*(&v10 + 1) + 8 * v8++), 0, 0, 0, 1, v3, v4, v5);
      }

      while (v6 != v8);
      v6 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  _LSArmSaveTimer(1);
  v9 = *MEMORY[0x1E69E9840];
}

void __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = 0;
  v12 = 0;
  inited = _LSContextInitReturningError(&v12, &v11);
  v8 = v11;
  if (inited)
  {
    _LSServer_SendStateChangedNotificationsForBundlesWithIdentifiers(&v12, *(a1 + 32), *(a1 + 40));
    _LSContextDestroy(&v12);
  }

  else
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke_2_cold_1();
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

- (id)scanForApplicationStateChangesFromRank:(id)a3 toRank:(id)a4 exceptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v12 = _LSServer_DatabaseExecutionContext();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__LSApplicationWorkspace_scanForApplicationStateChangesFromRank_toRank_exceptions___block_invoke;
    v14[3] = &unk_1E6A19EF8;
    v14[4] = self;
    v15 = v10;
    v16 = v8;
    v17 = v9;
    v18 = v11;
    [(LSDBExecutionContext *)v12 syncRead:v14];
  }

  return v11;
}

void __83__LSApplicationWorkspace_scanForApplicationStateChangesFromRank_toRank_exceptions___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__LSApplicationWorkspace_scanForApplicationStateChangesFromRank_toRank_exceptions___block_invoke_2;
  v9[3] = &unk_1E6A19ED0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 enumerateApplicationsOfType:0 block:v9];
}

void __83__LSApplicationWorkspace_scanForApplicationStateChangesFromRank_toRank_exceptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v3 bundleIdentifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = [v10 ratingRank];
    v7 = [v6 intValue];

    LODWORD(v6) = v7 > [*(a1 + 40) intValue];
    if (((v6 ^ (v7 <= [*(a1 + 48) intValue])) & 1) == 0)
    {
      v8 = *(a1 + 56);
      v9 = [v10 bundleIdentifier];
      [v8 addObject:v9];
    }
  }
}

- (id)scanForApplicationStateChangesWithAllowlist:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v6 = _LSServer_DatabaseExecutionContext();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__LSApplicationWorkspace_scanForApplicationStateChangesWithAllowlist___block_invoke;
    v8[3] = &unk_1E6A19F48;
    v8[4] = self;
    v9 = v4;
    v10 = v5;
    [(LSDBExecutionContext *)v6 syncRead:v8];
  }

  return v5;
}

void __70__LSApplicationWorkspace_scanForApplicationStateChangesWithAllowlist___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__LSApplicationWorkspace_scanForApplicationStateChangesWithAllowlist___block_invoke_2;
  v3[3] = &unk_1E6A19F20;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateBundlesOfType:0 block:v3];
}

void __70__LSApplicationWorkspace_scanForApplicationStateChangesWithAllowlist___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleIdentifier];
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = [v6 appState];
    v5 = [v4 isAlwaysAvailable];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 40) addObject:v3];
    }
  }
}

- (id)scanForForDeletableSystemApps
{
  v3 = objc_opt_new();
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v4 = _LSServer_DatabaseExecutionContext();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__LSApplicationWorkspace_scanForForDeletableSystemApps__block_invoke;
    v6[3] = &unk_1E6A19F98;
    v6[4] = self;
    v7 = v3;
    [(LSDBExecutionContext *)v4 syncRead:v6];
  }

  return v3;
}

void __55__LSApplicationWorkspace_scanForForDeletableSystemApps__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__LSApplicationWorkspace_scanForForDeletableSystemApps__block_invoke_2;
  v2[3] = &unk_1E6A19F70;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateApplicationsOfType:1 block:v2];
}

void __55__LSApplicationWorkspace_scanForForDeletableSystemApps__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isDeletableIgnoringRestrictions])
  {
    v3 = *(a1 + 32);
    v4 = [v5 bundleIdentifier];
    [v3 addObject:v4];
  }
}

- (id)scanForAppsInRatingRankExceptionsList:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v5 = _LSServer_DatabaseExecutionContext();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__LSApplicationWorkspace_scanForAppsInRatingRankExceptionsList___block_invoke;
    v7[3] = &unk_1E6A19F98;
    v8 = v3;
    v9 = v4;
    [(LSDBExecutionContext *)v5 syncRead:v7];
  }

  return v4;
}

void __64__LSApplicationWorkspace_scanForAppsInRatingRankExceptionsList___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v17 = a3;
  v26 = 0;
  v27 = 0;
  LODWORD(a3) = _LSContextInitReturningError(&v27, &v26);
  v18 = v26;
  if (a3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = *(a1 + 32);
    v4 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = *v23;
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [LSApplicationRecord alloc];
        v21 = 0;
        v9 = [(LSApplicationRecord *)v8 _initWithNode:0 bundleIdentifier:v7 placeholderBehavior:1 systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:&v27 error:&v21];
        v10 = v21;
        if (v9)
        {
          v11 = [v9 bundleIdentifier];

          if (!v11)
          {
            goto LABEL_13;
          }

          v12 = *(a1 + 40);
          v13 = [v9 bundleIdentifier];
          [v12 addObject:v13];
        }

        else
        {
          v13 = _LSDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v29 = v7;
            v30 = 2112;
            v31 = v10;
            _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "App %@ on rating rank exceptions list does not appear to be installed (this may be expected): %@", buf, 0x16u);
          }
        }

LABEL_13:
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (!v4)
      {
LABEL_15:

        _LSContextDestroy(&v27);
        goto LABEL_19;
      }
    }
  }

  v14 = _LSDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __64__LSApplicationWorkspace_scanForAppsInRatingRankExceptionsList___block_invoke_cold_1();
  }

LABEL_19:
  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)forceDatabaseSaveForTestingWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__LSApplicationWorkspace_forceDatabaseSaveForTestingWithError___block_invoke;
  v8[3] = &unk_1E6A198D0;
  v8[4] = &v9;
  v4 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__LSApplicationWorkspace_forceDatabaseSaveForTestingWithError___block_invoke_2;
  v7[3] = &unk_1E6A19C50;
  v7[4] = &v9;
  v7[5] = &v15;
  [v4 forceSaveForTestingWithCompletion:v7];
  _LSContextInvalidate();
  v5 = *(v16 + 24);
  if (a3 && (v16[3] & 1) == 0)
  {
    *a3 = v10[5];
    v5 = *(v16 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
  return v5 & 1;
}

void __63__LSApplicationWorkspace_forceDatabaseSaveForTestingWithError___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v4 == 0;
}

- (void)ls_testWithCleanDatabaseWithError:(id *)a3
{
  if (![__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -5500, 0, "[LSApplicationWorkspace ls_testWithCleanDatabaseWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4468);
    v6 = 0;
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v9 = 0;
  v4 = _LSDatabaseCreateCleanForTesting(&v9);
  v5 = v9;
  if (v4)
  {
    _LSSetLocalDatabase(v4);
    v6 = CFAutorelease(v4);
  }

  else
  {
    v6 = 0;
  }

  if (a3)
  {
LABEL_8:
    if (!v6)
    {
      v7 = v5;
      *a3 = v5;
    }
  }

LABEL_10:

  return v6;
}

- (BOOL)ls_injectUTTypeWithDeclaration:(id)a3 inDatabase:(id)a4 error:(id *)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    v13 = 0;
    v14 = 0;
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v7 && v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"UTTypeDescription"];
    v10 = v9;
    if (v9)
    {
      v23 = v9;
      v24 = v9;
      v22 = @"LSDefaultLocalizedValue";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v25[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    else
    {
      v12 = 0;
    }

    v16 = _UTTypeAddWithDeclarationDictionary();
    v14 = v16 == 0;
    if (v16)
    {
      v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v16, 0, "[LSApplicationWorkspace ls_injectUTTypeWithDeclaration:inDatabase:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4496);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v15 = *MEMORY[0x1E696A768];
    v20 = *MEMORY[0x1E696A278];
    v21 = @"invalid input parameters";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = _LSMakeNSErrorImpl(v15, -50, v12, "[LSApplicationWorkspace ls_injectUTTypeWithDeclaration:inDatabase:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4500);
    v14 = 0;
  }

  if (a5)
  {
LABEL_15:
    if (!v14)
    {
      v17 = v13;
      *a5 = v13;
    }
  }

LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)ls_resetTestingDatabase
{
  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    v2 = 0;
    if (!_LSContextInit(&v2))
    {
      _LSContextUpdate(&v2, 1, 0);
      _LSContextDestroy(&v2);
    }
  }
}

- (id)pluginsWithIdentifiers:(id)a3 protocols:(id)a4 version:(id)a5 withFilter:(id)a6
{
  v10 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__LSApplicationWorkspace_DeprecatedEnumeration__pluginsWithIdentifiers_protocols_version_withFilter___block_invoke;
  v14[3] = &unk_1E6A19FC0;
  v15 = v10;
  v11 = v10;
  v12 = [(LSApplicationWorkspace *)self pluginsWithIdentifiers:a3 protocols:a4 version:a5 applyFilter:v14];

  return v12;
}

- (void)enumerateBundlesOfType:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__LSApplicationWorkspace_DeprecatedEnumeration__enumerateBundlesOfType_usingBlock___block_invoke;
    v8[3] = &unk_1E6A1A008;
    v9 = v6;
    [(LSApplicationWorkspace *)self enumerateBundlesOfType:a3 legacySPI:1 block:v8];
  }
}

- (id)applicationsOfType:(unint64_t)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__LSApplicationWorkspace_DeprecatedEnumeration__applicationsOfType___block_invoke;
  v8[3] = &unk_1E6A19F70;
  v6 = v5;
  v9 = v6;
  [(LSApplicationWorkspace *)self enumerateApplicationsOfType:a3 legacySPI:1 block:v8];

  return v6;
}

- (id)legacyApplicationProxiesListWithType:(unint64_t)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__LSApplicationWorkspace_DeprecatedEnumeration__legacyApplicationProxiesListWithType___block_invoke;
  v8[3] = &unk_1E6A19F70;
  v6 = v5;
  v9 = v6;
  [(LSApplicationWorkspace *)self enumerateBundlesOfType:a3 legacySPI:1 block:v8];

  return v6;
}

+ (id)_defaultAppQueue
{
  if (_defaultAppQueue_once != -1)
  {
    +[LSApplicationWorkspace(DefaultApps) _defaultAppQueue];
  }

  v3 = _defaultAppQueue_result;

  return v3;
}

void __55__LSApplicationWorkspace_DefaultApps___defaultAppQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS default app setter queue", v2);
  v1 = _defaultAppQueue_result;
  _defaultAppQueue_result = v0;
}

- (void)setDefaultURLHandlerForScheme:(id)a3 to:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_opt_class() _defaultAppQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__LSApplicationWorkspace_DefaultApps__setDefaultURLHandlerForScheme_to_completion___block_invoke;
  v15[3] = &unk_1E6A1A058;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __83__LSApplicationWorkspace_DefaultApps__setDefaultURLHandlerForScheme_to_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [*(a1 + 32) claimRecords];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v21 + 1) + 8 * v6) URLSchemes];
        v8 = [*(a1 + 40) lowercaseString];
        v9 = [v7 containsObject:v8];

        if (v9)
        {

          v14 = *(a1 + 48);
          v15 = [objc_opt_class() _defaultAppQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __83__LSApplicationWorkspace_DefaultApps__setDefaultURLHandlerForScheme_to_completion___block_invoke_2;
          block[3] = &unk_1E6A1A030;
          v18 = *(a1 + 40);
          v19 = *(a1 + 32);
          v20 = *(a1 + 56);
          dispatch_async(v15, block);

          v12 = v18;
          goto LABEL_12;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *MEMORY[0x1E696A768];
    v25 = *MEMORY[0x1E696A278];
    v26 = @"scheme";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v13 = _LSMakeNSErrorImpl(v11, -50, v12, "[LSApplicationWorkspace(DefaultApps) setDefaultURLHandlerForScheme:to:completion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4661);
    (*(v10 + 16))(v10, 0, v13);

LABEL_12:
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __83__LSApplicationWorkspace_DefaultApps__setDefaultURLHandlerForScheme_to_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = *(a1 + 40);
  if (v4)
  {
    [v4 _bundleVersion];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v5 = _LSSetSchemeHandler(v2, v3, v11);
  v10 = 0;
  v6 = _LSGetNSErrorFromOSStatusImpl(v5, &v10, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultURLHandlerForScheme:to:completion:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4655);
  v7 = v10;

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setDefaultWebBrowserToApplicationRecord:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!_os_feature_enabled_impl())
  {
    if (v6)
    {
      if (([v6 isWebBrowser] & 1) == 0)
      {
        if (!v7)
        {
          goto LABEL_11;
        }

        v13 = *MEMORY[0x1E696A768];
        v21 = *MEMORY[0x1E696A278];
        v22[0] = @"input application record was not a web browser";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        v14 = _LSMakeNSErrorImpl(v13, -50, v12, "[LSApplicationWorkspace(DefaultApps) setDefaultWebBrowserToApplicationRecord:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4679);
        v7[2](v7, 0, v14);

LABEL_10:
        goto LABEL_11;
      }

      v8 = [v6 bundleIdentifier];
      [v6 _bundleVersion];
      v9 = _LSVersionNumberGetStringRepresentation(&v20);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v10 = [objc_opt_class() _defaultAppQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __97__LSApplicationWorkspace_DefaultApps__setDefaultWebBrowserToApplicationRecord_completionHandler___block_invoke;
    v16[3] = &unk_1E6A1A030;
    v17 = v8;
    v18 = v9;
    v19 = v7;
    v11 = v9;
    v12 = v8;
    dispatch_async(v10, v16);

    goto LABEL_10;
  }

  [(LSApplicationWorkspace *)self setDefaultApplicationForCategory:1 toApplicationRecord:v6 completionHandler:v7];
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

void __97__LSApplicationWorkspace_DefaultApps__setDefaultWebBrowserToApplicationRecord_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _LSSetDefaultWebBrowserWithBundleIdentifierAndVersion(*(a1 + 32), *(a1 + 40));
  v6 = 0;
  v3 = _LSGetNSErrorFromOSStatusImpl(v2, &v6, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultWebBrowserToApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4691);
  v4 = v6;
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

- (void)setDefaultMailClientToApplicationRecord:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!_os_feature_enabled_impl())
  {
    if (v6)
    {
      if (([v6 isMailClient] & 1) == 0)
      {
        if (!v7)
        {
          goto LABEL_11;
        }

        v11 = *MEMORY[0x1E696A768];
        v21 = *MEMORY[0x1E696A278];
        v22[0] = @"input application record was not a mail client";
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        v12 = _LSMakeNSErrorImpl(v11, -50, v10, "[LSApplicationWorkspace(DefaultApps) setDefaultMailClientToApplicationRecord:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4713);
        v7[2](v7, 0, v12);

LABEL_10:
        goto LABEL_11;
      }

      v8 = [v6 bundleIdentifier];
      v19 = 0u;
      v20 = 0u;
      [v6 _bundleVersion];
    }

    else
    {
      v8 = 0;
      v19 = kLSVersionNumberNull;
      v20 = unk_1817E90C0;
    }

    v9 = [objc_opt_class() _defaultAppQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__LSApplicationWorkspace_DefaultApps__setDefaultMailClientToApplicationRecord_completionHandler___block_invoke;
    v14[3] = &unk_1E6A1A080;
    v15 = v8;
    v17 = v19;
    v18 = v20;
    v16 = v7;
    v10 = v8;
    dispatch_async(v9, v14);

    goto LABEL_10;
  }

  [(LSApplicationWorkspace *)self setDefaultApplicationForCategory:2 toApplicationRecord:v6 completionHandler:v7];
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
}

void __97__LSApplicationWorkspace_DefaultApps__setDefaultMailClientToApplicationRecord_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v10[0] = *(a1 + 48);
  v10[1] = v3;
  v4 = _LSSetSchemeHandler(@"mailto", v2, v10);
  v9 = 0;
  v5 = _LSGetNSErrorFromOSStatusImpl(v4, &v9, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultMailClientToApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4720);
  v6 = v9;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeAllDefaultApplicationPreferencesWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = &__block_literal_global_678;
  }

  v5 = v3;
  v4 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:?];
  [v4 removeAllHandlersWithCompletionHandler:v5];
}

- (void)setDefaultApplicationForCategory:(unint64_t)a3 toApplicationRecord:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [objc_opt_class() _defaultAppQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__LSApplicationWorkspace_DefaultApps__setDefaultApplicationForCategory_toApplicationRecord_completionHandler___block_invoke;
  block[3] = &unk_1E6A1A0A8;
  v14 = v8;
  v15 = a3;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __110__LSApplicationWorkspace_DefaultApps__setDefaultApplicationForCategory_toApplicationRecord_completionHandler___block_invoke(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(LSGetDefaultAppCategoryInfoForCategory(a1[6]) + 1);
  if (!_os_feature_enabled_impl())
  {
    v5 = (a1 + 4);
    if (a1[4])
    {
      v10 = -4;
      goto LABEL_17;
    }

LABEL_13:
    v11 = _LSRemoveDefaultRoleHandlerForContentType(v2, 0xFFFFFFFFLL);
    if (v11)
    {
      v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v11, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultApplicationForCategory:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4836);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_29;
  }

  v3 = _LSGetAuditTokenForSelf();
  v4 = _LSCheckEntitlementForChangingDefaultHandler(v3, 0, v2);
  v5 = (a1 + 4);
  if (!a1[4])
  {
    goto LABEL_13;
  }

  if (!v4)
  {
    v10 = -54;
LABEL_17:
    v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v10, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultApplicationForCategory:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4804);
    if (v7)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  *&v19 = 0;
  v17 = 0;
  inited = _LSContextInitReturningError(&v19, &v17);
  v7 = v17;
  if (inited && !_LSCanBundleHandleNodeOrSchemeOrUTI(&v19, [*v5 unitID], 0, 0, v2, 14))
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __110__LSApplicationWorkspace_DefaultApps__setDefaultApplicationForCategory_toApplicationRecord_completionHandler___block_invoke_cold_1([*v5 unitID], v2, v21, v8);
    }

    v9 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -105, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultApplicationForCategory:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4799);

    v7 = v9;
  }

  if (!v7)
  {
LABEL_18:
    if (!*v5 || ([*v5 bundleIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, !v13) || (_LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 118, 0, "-[LSApplicationWorkspace(DefaultApps) setDefaultApplicationForCategory:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4811), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v14 = [*v5 bundleIdentifier];
      v19 = 0u;
      v20 = 0u;
      if (*v5)
      {
        [*v5 _bundleVersion];
      }

      if (*v5)
      {
        v18[0] = v19;
        v18[1] = v20;
        v15 = _LSSetContentTypeHandler(v2, 0xFFFFFFFFLL, v14, v18);
      }

      else
      {
        v15 = _LSRemoveDefaultRoleHandlerForContentType(v2, 0xFFFFFFFFLL);
      }

      if (v15)
      {
        v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v15, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultApplicationForCategory:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4829);
      }

      else
      {
        v7 = 0;
      }
    }
  }

LABEL_29:
  _LSContextInvalidate();
  (*(a1[5] + 16))(a1[5], v7 == 0, v7);

  v16 = *MEMORY[0x1E69E9840];
}

- (id)defaultApplicationForCategory:(unint64_t)a3 error:(id *)a4
{
  if (_os_feature_enabled_impl())
  {
    v6 = LSGetDefaultAppCategoryInfoForCategory(a3);
    v7 = [LSClaimBindingConfiguration alloc];
    v8 = [LSClaimBindingBindable bindableWithTypeIdentifier:*(v6 + 1)];
    v9 = [(LSClaimBindingConfiguration *)v7 initWithBindable:v8];

    [(LSClaimBindingConfiguration *)v9 setHonorPreferenceForNoHandler:1];
    v10 = [[LSClaimBinding alloc] initWithConfiguration:v9 error:a4];
    v11 = v10;
    if (v10)
    {
      v12 = [(LSClaimBinding *)v10 bundleRecord];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v14 = [(LSClaimBinding *)v11 bundleRecord];
LABEL_15:

        goto LABEL_23;
      }

      if (a4)
      {
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10811, 0, "[LSApplicationWorkspace(DefaultApps) defaultApplicationForCategory:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4874);
        *a4 = v14 = 0;
        goto LABEL_15;
      }
    }

    v14 = 0;
    goto LABEL_15;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v16 = [LSApplicationRecord alloc];
      v17 = @"com.apple.MobileSMS";
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_16;
      }

      v16 = [LSApplicationRecord alloc];
      v17 = @"com.apple.mobilephone";
    }

    v18 = [(LSApplicationRecord *)v16 initWithBundleIdentifier:v17 allowPlaceholder:0 error:a4];
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v15 = @"https";
    goto LABEL_19;
  }

  if (a3 == 2)
  {
    v15 = @"mailto";
LABEL_19:
    v18 = bestRecordForScheme(v15, a4);
LABEL_22:
    v14 = v18;
    goto LABEL_23;
  }

LABEL_16:
  if (a4)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationWorkspace(DefaultApps) defaultApplicationForCategory:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4899);
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:

  return v14;
}

- (BOOL)getDefaultApplicationCategories:(unint64_t *)a3 withCurrentDefaultApplication:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [v6 supportedDefaultAppCategories];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *MEMORY[0x1E696A768];
    while (1)
    {
      v11 = LSDefaultAppCategoryForMask(v8);
      v21 = 0;
      v12 = [(LSApplicationWorkspace *)self defaultApplicationForCategory:v11 error:&v21];
      v13 = v21;
      if ([v12 isEqual:v6])
      {
        v9 |= LSDefaultAppCategoryMaskForCategory(v11);
      }

      v14 = [v13 domain];
      if ([v14 isEqual:v10])
      {
        v15 = [v13 code];

        if (v15 != -10814)
        {
          goto LABEL_9;
        }

        v14 = v13;
        v13 = 0;
      }

LABEL_9:
      v8 &= ~LSDefaultAppCategoryMaskForCategory(v11);

      v16 = v13 == 0;
      if (!v8 || v13)
      {
        goto LABEL_13;
      }
    }
  }

  v9 = 0;
  v13 = 0;
  v16 = 1;
LABEL_13:
  if (a3 && v16)
  {
    *a3 = v9;
  }

  if (a5)
  {
    v17 = v13;
    *a5 = v13;
  }

  return v16;
}

- (void)setDefaultHandlerForTypeRecord:(id)a3 toApplicationRecord:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    [LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:];
  }

  v10 = [objc_opt_class() _defaultAppQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__LSApplicationWorkspace_DefaultApps__setDefaultHandlerForTypeRecord_toApplicationRecord_completionHandler___block_invoke;
  block[3] = &unk_1E6A1A030;
  v15 = v8;
  v16 = v7;
  v17 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v8;
  dispatch_async(v10, block);
}

void __108__LSApplicationWorkspace_DefaultApps__setDefaultHandlerForTypeRecord_toApplicationRecord_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v9 = _LSRemoveDefaultRoleHandlerForContentType([*(a1 + 40) identifier], 0xFFFFFFFFLL);
    if (v9)
    {
      v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v9, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5027);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_29;
  }

  v19 = 0;
  v20 = 0;
  inited = _LSContextInitReturningError(&v20, &v19);
  v3 = v19;
  v4 = v3;
  if (!inited)
  {
    v8 = v3;
    goto LABEL_18;
  }

  v26 = 0;
  v27 = 0;
  v5 = [*(a1 + 40) identifier];
  v6 = _LSGetBindingForNodeOrSchemeOrUTI(&v20, 0, 0, v5, [*(a1 + 32) unitID], 14, 0, 12320, &v24);

  if (!v6)
  {
    if (*(&v25 + 1))
    {
      if (_LSClaimFlagsAreWildcard(*(*(&v25 + 1) + 8)))
      {
        v10 = 4986;
        v11 = 120;
LABEL_12:
        v8 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", v11, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", v10);
        goto LABEL_13;
      }

      if (*(&v25 + 1) && !*(*(&v25 + 1) + 12))
      {
        v10 = 4990;
        v11 = 121;
        goto LABEL_12;
      }
    }

    v8 = v4;
    goto LABEL_17;
  }

  v22 = *MEMORY[0x1E696A278];
  v23 = @"_LSGetBindingForNodeOrSchemeOrUTI failed";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v6, v7, "[LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4994);

  v4 = v7;
LABEL_13:

LABEL_17:
  _LSContextDestroy(&v20);

LABEL_18:
  if (!v8)
  {
    v12 = [*(a1 + 32) bundleIdentifier];
    v13 = v12 == 0;

    if (!v13 || (_LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 118, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5005), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v14 = [*(a1 + 32) bundleIdentifier];
      v24 = 0u;
      v25 = 0u;
      v15 = *(a1 + 32);
      if (v15)
      {
        [v15 _bundleVersion];
      }

      v16 = [*(a1 + 40) identifier];
      v21[0] = v24;
      v21[1] = v25;
      v17 = _LSSetContentTypeHandler(v16, 0xFFFFFFFFLL, v14, v21);
      if (v17)
      {
        v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v17, 0, "[LSApplicationWorkspace(DefaultApps) setDefaultHandlerForTypeRecord:toApplicationRecord:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5020);
      }

      else
      {
        v8 = 0;
      }
    }
  }

LABEL_29:
  _LSContextInvalidate();
  (*(*(a1 + 48) + 16))(*(a1 + 48), v8 == 0, v8);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setPreferenceForNoHandlerForCategory:(unint64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() _defaultAppQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__LSApplicationWorkspace_DefaultApps__setPreferenceForNoHandlerForCategory_completionHandler___block_invoke;
  v8[3] = &unk_1E6A1A0D0;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __94__LSApplicationWorkspace_DefaultApps__setPreferenceForNoHandlerForCategory_completionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(LSGetDefaultAppCategoryInfoForCategory(*(a1 + 40)) + 1);
  memset(v6, 0, sizeof(v6));
  v3 = _LSSetContentTypeHandler(v2, 0xFFFFFFFFLL, @"com.apple.coreservices.nohandler$BF6A2FC2-EAE7-4116-BEF3-495EAA007C85", v6);
  if (v3)
  {
    v4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v3, 0, "[LSApplicationWorkspace(DefaultApps) setPreferenceForNoHandlerForCategory:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5056);
  }

  else
  {
    v4 = 0;
  }

  _LSContextInvalidate();
  (*(*(a1 + 32) + 16))(*(a1 + 32), v4 == 0, v4);

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)setPreferredAppMarketplaces:(id)a3 error:(id *)a4
{
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__LSApplicationWorkspace_Marketplaces__setPreferredAppMarketplaces_error___block_invoke;
  v11[3] = &unk_1E6A198D0;
  v11[4] = &v12;
  v6 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__LSApplicationWorkspace_Marketplaces__setPreferredAppMarketplaces_error___block_invoke_2;
  v10[3] = &unk_1E6A198D0;
  v10[4] = &v12;
  [v6 setPreferredAppMarketplaces:v5 completion:v10];

  v7 = v13[5];
  if (a4 && v7)
  {
    *a4 = v7;
    v7 = v13[5];
  }

  v8 = v7 == 0;
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)getPreferredAppMarketplacesWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__LSApplicationWorkspace_Marketplaces__getPreferredAppMarketplacesWithError___block_invoke;
  v9[3] = &unk_1E6A198D0;
  v9[4] = &v10;
  v4 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__LSApplicationWorkspace_Marketplaces__getPreferredAppMarketplacesWithError___block_invoke_2;
  v8[3] = &unk_1E6A1A0F8;
  v8[4] = &v16;
  v8[5] = &v10;
  [v4 getPreferredAppMarketplacesWithCompletion:v8];

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

void __77__LSApplicationWorkspace_Marketplaces__getPreferredAppMarketplacesWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)applicationForOpeningResource:(id)a3
{
  v3 = [(LSApplicationWorkspace *)self applicationsAvailableForOpeningURL:a3 legacySPI:1];
  v4 = [v3 firstObject];

  return v4;
}

- (id)applicationsAvailableForHandlingURLScheme:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://", v5];

    v8 = [v6 initWithString:v7];
    if ([v8 isFileURL])
    {
      v9 = 0;
    }

    else
    {
      v9 = [(LSApplicationWorkspace *)self applicationsAvailableForOpeningURL:v8 legacySPI:1];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)publicURLSchemes
{
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [LSApplicationWorkspace(DeprecatedURLQueries) publicURLSchemes];
  }

  return MEMORY[0x1E695E0F0];
}

- (id)privateURLSchemes
{
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [LSApplicationWorkspace(DeprecatedURLQueries) publicURLSchemes];
  }

  return MEMORY[0x1E695E0F0];
}

- (BOOL)isApplicationEligibleForReadOnlyDocumentOpenBehavior:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = &ReadOnlyDocumentOpenCheckList;
  v5 = 48;
  while (1)
  {
    v6 = [v3 bundleIdentifier];
    v7 = v6;
    v8 = strcmp([v6 UTF8String], *v4) == 0;

    if (v8 && [v3 platform] == *(v4 + 2))
    {
      if (v3)
      {
        [v3 execSDKVersion];
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      _LSVersionNumberMakeWithDYLDVersion(*(v4 + 3), v11);
      v15[0] = v12;
      v15[1] = v13;
      v14[0] = v11[0];
      v14[1] = v11[1];
      if (_LSVersionNumberCompare(v15, v14) == -1)
      {
        break;
      }
    }

    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      v4 = off_1E6A1C9F8;
      break;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4 == off_1E6A1C9F8;
}

- (BOOL)isCurrentProcessEligibleForReadOnlyDocumentOpenBehavior
{
  v3 = +[LSBundleRecord bundleRecordForCurrentProcess];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [(LSApplicationWorkspace *)self isApplicationEligibleForReadOnlyDocumentOpenBehavior:v3];

  return v4;
}

- (BOOL)isBundleEligibleForOpenDocumentViaOpenURL:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  v5 = strcmp([v4 UTF8String], "org.reactjs.native.Popspedia");

  if (v5 || [v3 platform] != 2)
  {
    goto LABEL_7;
  }

  if (v3)
  {
    [v3 execSDKVersion];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  _LSVersionNumberMakeWithDYLDVersion(1703936, v9);
  v13[0] = v10;
  v13[1] = v11;
  v12[0] = v9[0];
  v12[1] = v9[1];
  if (_LSVersionNumberCompare(v13, v12) == -1)
  {
    v6 = 0;
  }

  else
  {
LABEL_7:
    v6 = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isCurrentProcessEligibleForOpenDocumentViaOpenURL
{
  v3 = +[LSBundleRecord bundleRecordForCurrentProcess];
  if (v3)
  {
    v4 = [(LSApplicationWorkspace *)self isBundleEligibleForOpenDocumentViaOpenURL:v3];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)URLOverrideForURL:(id)a3
{
  v3 = LaunchServices::URLOverrides::getURLOverrideCommon(a3, a2);

  return v3;
}

- (BOOL)registerApplication:(id)a3
{
  v3 = LSRegisterURL(a3, 0);
  if (!v3)
  {
    v4 = _LSInstallLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Not sending applicationsDidInstall notification, please file a bug with Purple LaunchServices if you need this", v6, 2u);
    }
  }

  return v3 == 0;
}

- (BOOL)registerPlugin:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  _LSUnregisterPluginsAtURL(v3, 0);
  v4 = _LSRegisterPluginWithInfo(v3, 0);

  return v4 == 0;
}

- (void)systemMode
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)openUserActivity:usingApplicationRecord:configuration:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"userActivity != nil" object:? file:? lineNumber:? description:?];
}

- (void)openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"uuid != nil" object:? file:? lineNumber:? description:?];
}

- (void)openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"activityType != nil" object:? file:? lineNumber:? description:?];
}

- (void)openUserActivityWithUUID:activityType:usingApplicationRecord:configuration:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"appRecord != nil" object:? file:? lineNumber:? description:?];
}

- (void)commonClientOpenURL:options:configuration:synchronous:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"url != nil" object:? file:? lineNumber:? description:?];
}

- (void)commonClientOpenURL:options:configuration:synchronous:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_319_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __98__LSApplicationWorkspace_commonClientOpenURL_options_configuration_synchronous_completionHandler___block_invoke_320_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)installApplication:(uint64_t)a3 withOptions:(uint64_t)a4 error:(uint64_t)a5 usingBlock:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "this process is using %{public}s to install applications, which is not supported. Use InstallCoordination to install and uninstall applications on this platform.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)installContainerizedApplicationArtifactAtURL:(uint64_t)a3 withOptions:(uint64_t)a4 returningRecordPromise:(uint64_t)a5 error:(uint64_t)a6 progressBlock:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "this process is using %{public}s to install applications, which is not supported. Use InstallCoordination to install and uninstall applications on this platform.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)uninstallContainerizedApplicationWithIdentifier:(uint64_t)a3 options:(uint64_t)a4 error:(uint64_t)a5 progressBlock:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "this process is using %{public}s to uninstall applications, which is not supported. Use InstallCoordination to install and uninstall applications on this platform.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)downgradeApplicationToPlaceholder:withOptions:error:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uninstallApplication:(uint64_t)a3 withOptions:(uint64_t)a4 error:(uint64_t)a5 usingBlock:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "this process is using %{public}s to uninstall applications, which is not supported. Use InstallCoordination to install and uninstall applications on this platform.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)unregisterApplicationsAtMountPoint:(void *)a1 operationUUID:(uint64_t)a2 saveObserver:(uint64_t)a3 requestContext:(NSObject *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v5 = *(*a2 + 40);
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = v5;
  OUTLINED_FUNCTION_15_0(&dword_18162D000, a4, a3, "Unable to unregister applications at mount point: %@: %@", a3);
}

- (void)unregisterApplication:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateSINFWithData:(uint64_t)a3 forApplication:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "%s is no longer supported. Adopt InstallCoordination to update iTMD and SINF.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_getBundleIdentifierForBundleAtURL:invokeUpdateBlockAndReregister:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateiTunesMetadataWithData:(uint64_t)a3 forApplication:(uint64_t)a4 options:(uint64_t)a5 error:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "%s is no longer supported. Adopt InstallCoordination to update iTMD and SINF.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateiTunesMetadataWithData:(uint64_t)a3 forApplicationAtURL:(uint64_t)a4 error:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "%s is no longer supported. Adopt InstallCoordination to update iTMD and SINF.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)updatePlaceholderMetadataForApp:installType:failure:underlyingError:source:outError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)unregisterPlugin:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)isVersion:greaterThanOrEqualToVersion:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"version != nil" object:? file:? lineNumber:? description:?];
}

- (void)isVersion:greaterThanOrEqualToVersion:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"minVersion != nil" object:? file:? lineNumber:? description:?];
}

void __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__LSApplicationWorkspace_deviceIdentifierForAdvertising__block_invoke_373_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __51__LSApplicationWorkspace_deviceIdentifierForVendor__block_invoke_376_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__LSApplicationWorkspace_urlContainsDeviceIdentifierForAdvertising___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deviceIdentifierForVendorSeedData
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)installProgressForBundleID:makeSynchronous:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Getting installProgress for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)installProgressForBundleID:(void *)a1 makeSynchronous:.cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 _LSDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  v2 = *(*v1 + 16);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3(&dword_18162D000, v3, v4, "NOT subscribing to progress for %@, existing subscriptions %@");
  v5 = *MEMORY[0x1E69E9840];
}

void __69__LSApplicationWorkspace_installProgressForBundleID_makeSynchronous___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1(&dword_18162D000, v1, v2, "Attempting subscribe to progress for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __66__LSApplicationWorkspace_installProgressForApplication_withPhase___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)installPhaseFinishedForProgress:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3(&dword_18162D000, v0, v1, "installPhaseFinishedForProgress: %@ - %@ called, removing progress from cache");
  v2 = *MEMORY[0x1E69E9840];
}

void __95__LSApplicationWorkspace__LSPrivateRebuildApplicationDatabasesForSystemApps_internal_user_uid___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __55__LSApplicationWorkspace__LSPrivateNoteMigratorRunning__block_invoke_402_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__LSApplicationWorkspace__LSFailedToOpenURL_withBundle___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendApplicationStateChangedNotificationsFor:(uint64_t)a3 stateProvider:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0(&dword_18162D000, a1, a3, "Called %s but not in the database server. Please file a bug.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __95__LSApplicationWorkspace_sendApplicationStateChangedNotificationsFor_stateProvider_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __64__LSApplicationWorkspace_scanForAppsInRatingRankExceptionsList___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __110__LSApplicationWorkspace_DefaultApps__setDefaultApplicationForCategory_toApplicationRecord_completionHandler___block_invoke_cold_1(unsigned int a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 134218242;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_15_0(&dword_18162D000, a4, a3, "Record with unit 0x%llx does not claim %@", a3);
}

@end