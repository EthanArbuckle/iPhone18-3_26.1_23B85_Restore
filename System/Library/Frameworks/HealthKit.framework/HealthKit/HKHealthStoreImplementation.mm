@interface HKHealthStoreImplementation
+ (BOOL)isHealthDataAvailable;
+ (BOOL)requireExplicitSystemMachServiceEnablement;
+ (id)healthStoreImplementationFor:(id)for sourceBundle:(id)bundle endpoint:(id)endpoint shared:(BOOL)shared create:(BOOL)create;
+ (void)setRequireExplicitSystemMachServiceEnablement:(BOOL)enablement;
+ (void)unitTest_flushImplementationCache;
- (BOOL)_prepareObjectsForSaving:(id)saving errorOut:(id *)out;
- (BOOL)_setActivityMoveMode:(int64_t)mode error:(id *)error;
- (BOOL)_setBiologicalSex:(int64_t)sex error:(id *)error;
- (BOOL)_setBloodType:(int64_t)type error:(id *)error;
- (BOOL)_setBodyMassCharacteristicQuantity:(id)quantity error:(id *)error;
- (BOOL)_setCardioFitnessMedicationsUse:(unint64_t)use error:(id *)error;
- (BOOL)_setCharacteristic:(id)characteristic forDataType:(id)type error:(id *)error;
- (BOOL)_setDateOfBirthComponents:(id)components error:(id *)error;
- (BOOL)_setFitzpatrickSkinType:(int64_t)type error:(id *)error;
- (BOOL)_setHeightCharacteristicQuantity:(id)quantity error:(id *)error;
- (BOOL)_setLeanBodyMassCharacteristicQuantity:(id)quantity error:(id *)error;
- (BOOL)_setUserEnteredMenstrualCycleLengthCharacteristicQuantity:(id)quantity error:(id *)error;
- (BOOL)_setUserEnteredMenstrualPeriodLengthCharacteristicQuantity:(id)quantity error:(id *)error;
- (BOOL)_setWheelchairUse:(int64_t)use error:(id *)error;
- (BOOL)_supportsFeature:(unint64_t)feature;
- (BOOL)canConnectToSystemMachService;
- (HKHealthStoreImplementation)init;
- (HKHealthStoreImplementation)initWithHealthStore:(id)store sourceBundle:(id)bundle endpoint:(id)endpoint;
- (HKHealthStoreImplementation)initWithListenerEndpoint:(id)endpoint;
- (id)_actionCompletionOnClientQueue:(id)queue;
- (id)_activeQueries;
- (id)_activityMoveModeWithError:(id *)error;
- (id)_bodyMassCharacteristicQuantityWithError:(id *)error;
- (id)_cardioFitnessMedicationsUseWithError:(id *)error;
- (id)_characteristicForDataType:(id)type error:(id *)error;
- (id)_clientClinicalReadAuthorizationUsageDescription;
- (id)_clientReadAuthorizationUsageDescription;
- (id)_clientWriteAuthorizationUsageDescription;
- (id)_clinicalAuthorizationPresentationRequestForRecord:(id)record;
- (id)_getDatabaseAccessibilityAssertionStoreKeeper;
- (id)_healthDataAuthorizationPresentationRequestForRecord:(id)record;
- (id)_heightCharacteristicQuantityWithError:(id *)error;
- (id)_leanBodyMassCharacteristicQuantityWithError:(id *)error;
- (id)_lock_connectionWithError:(id *)error;
- (id)_modificationDateForCharacteristicWithType:(id)type error:(id *)error;
- (id)_multiActionCompletionOnClientQueue:(id)queue;
- (id)_objectCompletionOnClientQueue:(id)queue;
- (id)_perObjectAuthorizationPresentationRequestForSession:(id)session;
- (id)_queries;
- (id)_researchStudyUsageDescription;
- (id)_sourceBundleOrDefaultBundle;
- (id)_synchronousServerProxyWithErrorHandler:(id)handler;
- (id)_typesWithBothBloodPressureIfNeeded:(id)needed;
- (id)_userEnteredMenstrualCycleLengthCharacteristicQuantityWithError:(id *)error;
- (id)_userEnteredMenstrualPeriodLengthCharacteristicQuantityWithError:(id *)error;
- (id)_wrappedErrorHandler:(id)handler proxy:(id)proxy;
- (id)activityMoveModeWithError:(id *)error;
- (id)biologicalSexWithError:(id *)error;
- (id)bloodTypeWithError:(id *)error;
- (id)dateOfBirthComponentsWithError:(id *)error;
- (id)dateOfBirthWithError:(id *)error;
- (id)debugIdentifier;
- (id)fitzpatrickSkinTypeWithError:(id *)error;
- (id)healthServicesManager;
- (id)impl_hkui_authorizationViewControllerPresenter;
- (id)pluginServiceEndpointForIdentifier:(id)identifier error:(id *)error;
- (id)profileIdentifier;
- (id)sourceBundle;
- (id)sourceBundleIdentifier;
- (id)taskServerEndpointForIdentifier:(id)identifier pluginURL:(id)l taskUUID:(id)d instanceUUID:(id)iD configuration:(id)configuration error:(id *)error;
- (id)unitTest_replaceListenerEndpoint:(id)endpoint;
- (id)wheelchairUseWithError:(id *)error;
- (int64_t)authorizationStatusForType:(id)type;
- (unint64_t)applicationSDKVersionToken;
- (void)_activityMoveModeObjectWithCompletion:(id)completion;
- (void)_addQuery:(id)query;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationWillResignActive:(id)active;
- (void)_biologicalSexWithCompletion:(id)completion;
- (void)_bloodTypeWithCompletion:(id)completion;
- (void)_characteristicForDataType:(id)type withCompletion:(id)completion;
- (void)_clientQueue_invokeAuthorizationDelegateTransactionErrorHandlerWithError:(id)error;
- (void)_closeTransactionWithTypes:(id)types anchor:(id)anchor ackTime:(id)time;
- (void)_connectionQueue_setUpWithEndpoint:(id)endpoint;
- (void)_dateOfBirthWithCompletion:(id)completion;
- (void)_deleteObjects:(id)objects options:(unint64_t)options completion:(id)completion;
- (void)_discardServerProxiesForServer:(id)server;
- (void)_faultIfInappropriateHost;
- (void)_fitzpatrickSkinTypeWithCompletion:(id)completion;
- (void)_ratingOfExertionSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)_relateReplaceRatingOfExertionSample:(id)sample toWorkout:(id)workout forActivity:(id)activity completion:(id)completion;
- (void)_removePreferredUnitForType:(id)type completion:(id)completion;
- (void)_removeQuery:(id)query;
- (void)_removeQueryFromPendingActivationQueries:(id)queries;
- (void)_replaceWorkout:(id)workout withWorkout:(id)withWorkout completion:(id)completion;
- (void)_saveObjects:(id)objects atomically:(BOOL)atomically skipInsertionFilter:(BOOL)filter completion:(id)completion;
- (void)_serverProxyWithHandler:(id)handler errorHandler:(id)errorHandler;
- (void)_setBackgroundDeliveryFrequencyDataType:(id)type frequency:(int64_t)frequency withCompletion:(id)completion;
- (void)_setMirroredWorkoutSessionObserverStateToEnabled:(BOOL)enabled handler:(id)handler;
- (void)_setPreferredUnit:(id)unit forType:(id)type completion:(id)completion;
- (void)_startWatchAppWithMirroredStartData:(id)data completion:(id)completion;
- (void)_startWatchAppWithWorkoutPlanData:(id)data completion:(id)completion;
- (void)_throwIfAuthorizationDisallowedForSharing:(BOOL)sharing types:(id)types;
- (void)_throwIfClinicalTypesRequestedToShare:(id)share;
- (void)_throwIfParentTypeNotRequestedForSharing:(BOOL)sharing types:(id)types;
- (void)_throwIfPerObjectReadAuthorizationNotSupportedForType:(id)type;
- (void)_throwIfUsingIncorrectAuthorizationRequestType:(id)type;
- (void)_validateAuthorizationRequestWithShareTypes:(id)types readTypes:(id)readTypes;
- (void)_validateAuthorizationRequiredTypes;
- (void)_validateClinicalHealthRecordsPurposeStringsForSharingTypes:(id)types readingTypes:(id)readingTypes;
- (void)_validateHealthDataPurposeStringsForSharingTypes:(id)types readingTypes:(id)readingTypes isResearchStudy:(BOOL)study;
- (void)_validatePurposeStringsForObjectType:(id)type;
- (void)_validatePurposeStringsForSharingTypes:(id)types readingTypes:(id)readingTypes;
- (void)_wheelchairUseWithCompletion:(id)completion;
- (void)addSamples:(id)samples toWorkout:(id)workout completion:(id)completion;
- (void)associateSampleUUIDs:(id)ds withSampleUUID:(id)d completion:(id)completion;
- (void)beginAuthorizationDelegateTransactionWithSessionIdentifier:(id)identifier sourceHandler:(id)handler errorHandler:(id)errorHandler;
- (void)clientRemote_conceptIndexManagerDidBecomeQuiescentWithSamplesProcessedCount:(int64_t)count;
- (void)clientRemote_didCreateRemoteSessionWithConfiguration:(id)configuration;
- (void)clientRemote_presentAuthorizationWithRequestRecord:(id)record completion:(id)completion;
- (void)clientRemote_presentAuthorizationWithSession:(id)session completion:(id)completion;
- (void)clientRemote_presentRecalibrateEstimatesRequestWithRecord:(id)record completion:(id)completion;
- (void)connectionConfigured;
- (void)connectionInterrupted;
- (void)currentWorkoutZonesForType:(id)type completion:(id)completion;
- (void)dealloc;
- (void)deleteAllSamplesWithTypes:(id)types sourceBundleIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion;
- (void)deleteClientSourceWithCompletion:(id)completion;
- (void)deleteMedicalIDDataWithCompletion:(id)completion;
- (void)deleteObject:(id)object options:(unint64_t)options withCompletion:(id)completion;
- (void)deleteObject:(id)object withCompletion:(id)completion;
- (void)deleteObjectsOfType:(id)type predicate:(id)predicate options:(unint64_t)options withCompletion:(id)completion;
- (void)deleteObjectsWithUUIDs:(id)ds options:(unint64_t)options completion:(id)completion;
- (void)dropEntitlement:(id)entitlement;
- (void)endAuthorizationDelegateTransactionWithSessionIdentifier:(id)identifier error:(id)error;
- (void)endWorkoutSession:(id)session;
- (void)executeQuery:(id)query queue:(id)queue activationHandler:(id)handler;
- (void)fetchMedicalIDDataCreateIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)fetchMedicalIDDataWithCompletion:(id)completion;
- (void)fetchMedicalIDEmergencyContactsWithCompletion:(id)completion;
- (void)fetchPluginServiceEndpointForIdentifier:(id)identifier endpointHandler:(id)handler errorHandler:(id)errorHandler;
- (void)fetchServerURLForAssetType:(id)type completion:(id)completion;
- (void)fetchTaskServerEndpointForIdentifier:(id)identifier pluginURL:(id)l taskUUID:(id)d instanceUUID:(id)iD configuration:(id)configuration endpointHandler:(id)handler errorHandler:(id)errorHandler;
- (void)getAllHealthDataAccessForSiriWithCompletion:(id)completion;
- (void)getRequestStatusForAuthorizationToShareTypes:(id)types readTypes:(id)readTypes completion:(id)completion;
- (void)handleAuthorizationForExtensionWithCompletion:(id)completion;
- (void)invalidateAllDatabaseAccessibilityAssertions;
- (void)invalidateDatabaseAccessibilityAssertion:(id)assertion;
- (void)isProtectedDataAvailableWithCompletion:(id)completion;
- (void)pauseWorkoutSession:(id)session;
- (void)postNotificationNameToAllStores:(id)stores userInfo:(id)info;
- (void)preferredUnitsForQuantityTypes:(id)types completion:(id)completion;
- (void)preferredUnitsForQuantityTypes:(id)types version:(int64_t)version completion:(id)completion;
- (void)recalibrateEstimatesForSampleType:(id)type atDate:(id)date completion:(id)completion;
- (void)recoverActiveWorkoutSessionWithCompletion:(id)completion;
- (void)relateWorkoutEffortSample:(id)sample withWorkout:(id)workout activity:(id)activity completion:(id)completion;
- (void)requestAuthorizationToShareTypes:(id)types readTypes:(id)readTypes shouldPrompt:(BOOL)prompt completion:(id)completion;
- (void)requestDatabaseAccessibilityAssertion:(id)assertion timeout:(double)timeout completion:(id)completion;
- (void)requestDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier contextType:(int64_t)type completion:(id)completion;
- (void)requestPerObjectReadAuthorizationForType:(id)type predicate:(id)predicate completion:(id)completion;
- (void)restoreEntitlement:(id)entitlement;
- (void)resume;
- (void)resumeWorkoutSession:(id)session;
- (void)saveObject:(id)object withCompletion:(id)completion;
- (void)saveObjects:(id)objects deleteObjects:(id)deleteObjects associations:(id)associations completion:(id)completion;
- (void)saveObjects:(id)objects withCompletion:(id)completion;
- (void)saveWorkoutZones:(id)zones completion:(id)completion;
- (void)setAllHealthDataAccessForSiri:(int64_t)siri completion:(id)completion;
- (void)setCanConnectToSystemMachService:(BOOL)service;
- (void)setDebugIdentifier:(id)identifier;
- (void)setProfileIdentifier:(id)identifier;
- (void)setServerURL:(id)l forAssetType:(id)type completion:(id)completion;
- (void)setSourceBundle:(id)bundle;
- (void)setSourceBundleIdentifier:(id)identifier;
- (void)setUnitTest_handleExecuteQuery:(id)query;
- (void)setUnitTest_presentAuthorizationWithSessionHandler:(id)handler;
- (void)setWorkoutSessionMirroringStartHandler:(id)handler;
- (void)splitTotalEnergy:(id)energy startDate:(id)date endDate:(id)endDate resultsHandler:(id)handler;
- (void)startWatchAppWithWorkoutConfiguration:(id)configuration completion:(id)completion;
- (void)startWorkoutSession:(id)session;
- (void)stopQuery:(id)query;
- (void)takeWorkoutBackgroundStartAssertionForApplicationIdentifier:(id)identifier completion:(id)completion;
- (void)unitTest_setApplicationSDKVersionToken:(unint64_t)token;
- (void)unrelateWorkoutEffortSample:(id)sample fromWorkout:(id)workout activity:(id)activity completion:(id)completion;
- (void)updateMedicalIDData:(id)data completion:(id)completion;
@end

@implementation HKHealthStoreImplementation

+ (id)healthStoreImplementationFor:(id)for sourceBundle:(id)bundle endpoint:(id)endpoint shared:(BOOL)shared create:(BOOL)create
{
  createCopy = create;
  sharedCopy = shared;
  v39 = *MEMORY[0x1E69E9840];
  forCopy = for;
  bundleCopy = bundle;
  endpointCopy = endpoint;
  healthStoreConfiguration = [forCopy healthStoreConfiguration];
  if (HKIsUnitTesting() && sharedCopy)
  {
    daemonLaunchDarwinNotificationName = [healthStoreConfiguration daemonLaunchDarwinNotificationName];
    v16 = [daemonLaunchDarwinNotificationName hasSuffix:@".daemon.launch"];

    if ((v16 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v32 = createCopy;
    v33 = bundleCopy;
    os_unfair_lock_lock(&_cacheLock);
    v19 = _gHealthStoreImplCache;
    if (!_gHealthStoreImplCache)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v21 = _gHealthStoreImplCache;
      _gHealthStoreImplCache = weakObjectsHashTable;

      v19 = _gHealthStoreImplCache;
    }

    [v19 allObjects];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v37 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          healthStoreConfiguration2 = [v27 healthStoreConfiguration];
          v29 = [healthStoreConfiguration isEqual:healthStoreConfiguration2];

          if (v29)
          {
            [v27[65] addObject:forCopy];
            os_unfair_lock_unlock(&_cacheLock);
            v18 = v27;

            bundleCopy = v33;
            goto LABEL_21;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_unlock(&_cacheLock);
    v17 = 1;
    bundleCopy = v33;
    if (v32)
    {
      goto LABEL_5;
    }

LABEL_19:
    v18 = 0;
    goto LABEL_21;
  }

  if (sharedCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  v17 = 0;
  if (!createCopy)
  {
    goto LABEL_19;
  }

LABEL_5:
  v18 = [[HKHealthStoreImplementation alloc] initWithHealthStore:forCopy sourceBundle:bundleCopy endpoint:endpointCopy];
  if (v17)
  {
    os_unfair_lock_lock(&_cacheLock);
    [_gHealthStoreImplCache addObject:v18];
    os_unfair_lock_unlock(&_cacheLock);
  }

LABEL_21:

  v30 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (void)unitTest_flushImplementationCache
{
  os_unfair_lock_lock(&_cacheLock);
  [_gHealthStoreImplCache removeAllObjects];

  os_unfair_lock_unlock(&_cacheLock);
}

- (void)postNotificationNameToAllStores:(id)stores userInfo:(id)info
{
  storesCopy = stores;
  infoCopy = info;
  os_unfair_lock_lock(&_cacheLock);
  allObjects = [(NSHashTable *)self->_weakStoreReferences allObjects];
  os_unfair_lock_unlock(&_cacheLock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__HKHealthStoreImplementation_postNotificationNameToAllStores_userInfo___block_invoke;
  v11[3] = &unk_1E7384290;
  v12 = storesCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = storesCopy;
  [allObjects enumerateObjectsUsingBlock:v11];
}

void __72__HKHealthStoreImplementation_postNotificationNameToAllStores_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD88];
  v4 = a2;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:*(a1 + 32) object:v4 userInfo:*(a1 + 40)];
}

+ (BOOL)isHealthDataAvailable
{
  v2 = +[_HKBehavior sharedBehavior];
  if ([v2 isiPad])
  {
    v3 = HKProgramSDKAtLeast();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  return +[_HKBehavior isDeviceSupported];
}

+ (void)setRequireExplicitSystemMachServiceEnablement:(BOOL)enablement
{
  os_unfair_lock_lock(&_classPropertyLock_0);
  _requireExplicitSystemMachServiceEndpoint_0 = enablement;

  os_unfair_lock_unlock(&_classPropertyLock_0);
}

+ (BOOL)requireExplicitSystemMachServiceEnablement
{
  os_unfair_lock_lock(&_classPropertyLock_0);
  v2 = _requireExplicitSystemMachServiceEndpoint_0;
  os_unfair_lock_unlock(&_classPropertyLock_0);
  return v2;
}

- (HKHealthStoreImplementation)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ init unavailable", objc_opt_class()}];

  return 0;
}

- (HKHealthStoreImplementation)initWithListenerEndpoint:(id)endpoint
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ initWithListenerEndpoint unavailable", objc_opt_class()}];

  return 0;
}

- (HKHealthStoreImplementation)initWithHealthStore:(id)store sourceBundle:(id)bundle endpoint:(id)endpoint
{
  storeCopy = store;
  bundleCopy = bundle;
  endpointCopy = endpoint;
  if (([objc_opt_class() isHealthDataAvailable] & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "Health data is not available on this device", buf, 2u);
    }
  }

  [(HKHealthStoreImplementation *)self _faultIfInappropriateHost];
  v58.receiver = self;
  v58.super_class = HKHealthStoreImplementation;
  initForHKHealthStoreImplementation = [(HKHealthStore *)&v58 initForHKHealthStoreImplementation];
  v13 = initForHKHealthStoreImplementation;
  if (initForHKHealthStoreImplementation)
  {
    initForHKHealthStoreImplementation->_lock._os_unfair_lock_opaque = 0;
    initForHKHealthStoreImplementation->_storeKeeperLock._os_unfair_lock_opaque = 0;
    healthStoreConfiguration = [storeCopy healthStoreConfiguration];
    objc_storeStrong(&v13->_sourceBundle, bundle);
    sourceBundleIdentifier = [healthStoreConfiguration sourceBundleIdentifier];
    sourceBundleIdentifier = v13->_sourceBundleIdentifier;
    v13->_sourceBundleIdentifier = sourceBundleIdentifier;

    debugIdentifier = [healthStoreConfiguration debugIdentifier];
    debugIdentifier = v13->_debugIdentifier;
    v13->_debugIdentifier = debugIdentifier;

    profileIdentifier = [healthStoreConfiguration profileIdentifier];
    profileIdentifier = v13->_profileIdentifier;
    v13->_profileIdentifier = profileIdentifier;

    v21 = +[HKHealthStoreIdentifier primaryStoreIdentifier];
    identifier = v13->_identifier;
    v13->_identifier = v21;

    applicationSDKVersionToken = [healthStoreConfiguration applicationSDKVersionToken];
    v24 = 0;
    v13->_applicationSDKVersionToken = applicationSDKVersionToken;
    if (!endpointCopy)
    {
      v24 = !+[HKHealthStore requireExplicitSystemMachServiceEnablement];
    }

    v13->_canConnectToSystemMachService = v24;
    v13->_isUsingSystemEndpoint = endpointCopy == 0;
    daemonLaunchDarwinNotificationName = [healthStoreConfiguration daemonLaunchDarwinNotificationName];
    daemonLaunchDarwinNotificationName = v13->_daemonLaunchDarwinNotificationName;
    v13->_daemonLaunchDarwinNotificationName = daemonLaunchDarwinNotificationName;

    writeAuthorizationUsageDescriptionOverride = [healthStoreConfiguration writeAuthorizationUsageDescriptionOverride];
    writeAuthorizationUsageDescriptionOverride = v13->_writeAuthorizationUsageDescriptionOverride;
    v13->_writeAuthorizationUsageDescriptionOverride = writeAuthorizationUsageDescriptionOverride;

    readAuthorizationUsageDescriptionOverride = [healthStoreConfiguration readAuthorizationUsageDescriptionOverride];
    readAuthorizationUsageDescriptionOverride = v13->_readAuthorizationUsageDescriptionOverride;
    v13->_readAuthorizationUsageDescriptionOverride = readAuthorizationUsageDescriptionOverride;

    clinicalReadAuthorizationUsageDescriptionOverride = [healthStoreConfiguration clinicalReadAuthorizationUsageDescriptionOverride];
    clinicalReadAuthorizationUsageDescriptionOverride = v13->_clinicalReadAuthorizationUsageDescriptionOverride;
    v13->_clinicalReadAuthorizationUsageDescriptionOverride = clinicalReadAuthorizationUsageDescriptionOverride;

    researchStudyUsageDescriptionOverride = [healthStoreConfiguration researchStudyUsageDescriptionOverride];
    researchStudyUsageDescriptionOverride = v13->_researchStudyUsageDescriptionOverride;
    v13->_researchStudyUsageDescriptionOverride = researchStudyUsageDescriptionOverride;

    v35 = HKCreateSerialDispatchQueue(v13, @"connection");
    connectionQueue = v13->_connectionQueue;
    v13->_connectionQueue = v35;

    v37 = HKCreateSerialDispatchQueue(v13, @"client");
    clientQueue = v13->_clientQueue;
    v13->_clientQueue = v37;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    weakStoreReferences = v13->_weakStoreReferences;
    v13->_weakStoreReferences = weakObjectsHashTable;

    [(NSHashTable *)v13->_weakStoreReferences addObject:storeCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];
    [defaultCenter addObserver:v13 selector:sel__applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
    v54 = storeCopy;
    v42 = v13->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__HKHealthStoreImplementation_initWithHealthStore_sourceBundle_endpoint___block_invoke;
    block[3] = &unk_1E7378400;
    v43 = v13;
    v56 = v43;
    v57 = endpointCopy;
    dispatch_async(v42, block);
    v44 = [HKHealthStoreConfiguration alloc];
    v45 = v13->_sourceBundleIdentifier;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v47 = [mainBundle objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
    v48 = v13->_writeAuthorizationUsageDescriptionOverride;
    v49 = v13->_clinicalReadAuthorizationUsageDescriptionOverride;
    v50 = v44;
    storeCopy = v54;
    v51 = [(HKHealthStoreConfiguration *)v50 initWithSourceBundleIdentifier:v45 sourceVersion:v47 debugIdentifier:v13->_debugIdentifier profileIdentifier:v13->_profileIdentifier applicationSDKVersionToken:v13->_applicationSDKVersionToken daemonLaunchDarwinNotificationName:v13->_daemonLaunchDarwinNotificationName writeAuthorizationUsageDescriptionOverride:v48 readAuthorizationUsageDescriptionOverride:v13->_readAuthorizationUsageDescriptionOverride clinicalReadAuthorizationUsageDescriptionOverride:v49 researchStudyUsageDescriptionOverride:v13->_researchStudyUsageDescriptionOverride];
    configuration = v43->_configuration;
    v43->_configuration = v51;
  }

  return v13;
}

- (void)_faultIfInappropriateHost
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[_HKBehavior sharedBehavior];
  isAppleInternalInstall = [v2 isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    if (_faultIfInappropriateHost_onceToken_0 != -1)
    {
      [HKHealthStoreImplementation _faultIfInappropriateHost];
    }

    if (_faultIfInappropriateHost_isHealthd_0 == 1)
    {
      _HKInitializeLogging();
      v4 = HKLogInfrastructure();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [(HKHealthStoreImplementation *)v4 _faultIfInappropriateHost];
      }

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v6 = [callStackSymbols countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(callStackSymbols);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            _HKInitializeLogging();
            v11 = HKLogDefault;
            if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v18 = v10;
              _os_log_error_impl(&dword_19197B000, v11, OS_LOG_TYPE_ERROR, "    %@", buf, 0xCu);
            }
          }

          v7 = [callStackSymbols countByEnumeratingWithState:&v13 objects:v19 count:16];
        }

        while (v7);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __56__HKHealthStoreImplementation__faultIfInappropriateHost__block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v1 processName];
  _faultIfInappropriateHost_isHealthd_0 = [v0 isEqualToString:@"healthd"];
}

- (void)_connectionQueue_setUpWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatch_assert_queue_V2(self->_connectionQueue);
  if (+[_HKBehavior isDeviceSupported])
  {
    v5 = [_HKXPCConnection alloc];
    if (endpointCopy)
    {
      v6 = [(_HKXPCConnection *)v5 initWithListenerEndpoint:endpointCopy];
    }

    else
    {
      v6 = [(_HKXPCConnection *)v5 initWithMachServiceName:@"com.apple.healthd.server" options:4096];
    }

    v7 = v6;
    if (!v6)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        [HKHealthStore _connectionQueue_setUpWithEndpoint:];
      }
    }

    healthdConnection = self->_healthdConnection;
    self->_healthdConnection = v7;
    v9 = v7;

    [(_HKXPCConnection *)self->_healthdConnection setExportedObject:self];
    [(_HKXPCConnection *)self->_healthdConnection resume];
  }
}

- (id)unitTest_replaceListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  self->_isUsingSystemEndpoint = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__52;
  v16 = __Block_byref_object_dispose__52;
  v17 = 0;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__HKHealthStoreImplementation_unitTest_replaceListenerEndpoint___block_invoke;
  block[3] = &unk_1E7378280;
  v11 = &v12;
  block[4] = self;
  v6 = endpointCopy;
  v10 = v6;
  dispatch_sync(connectionQueue, block);
  [(HKHealthStoreImplementation *)self connectionInterrupted];
  [v13[5] invalidate];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __64__HKHealthStoreImplementation_unitTest_replaceListenerEndpoint___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 312));
  [*(a1 + 32) _connectionQueue_setUpWithEndpoint:*(a1 + 40)];
  v2 = *(*(*(a1 + 48) + 8) + 40);

  return [v2 setExportedObject:0];
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  [(_HKXPCConnection *)self->_healthdConnection invalidate];
  os_unfair_lock_unlock(&self->_lock);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIApplicationWillResignActiveNotification" object:0];
  [defaultCenter removeObserver:self name:@"UIApplicationDidBecomeActiveNotification" object:0];

  v4.receiver = self;
  v4.super_class = HKHealthStoreImplementation;
  [(HKHealthStore *)&v4 dealloc];
}

- (void)unitTest_setApplicationSDKVersionToken:(unint64_t)token
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__HKHealthStoreImplementation_unitTest_setApplicationSDKVersionToken___block_invoke;
  v3[3] = &unk_1E7378630;
  v3[4] = self;
  v3[5] = token;
  [(HKHealthStoreImplementation *)self _setConfigurationPropertyUsingBlock:v3 resumeRequired:1];
}

- (unint64_t)applicationSDKVersionToken
{
  os_unfair_lock_lock(&self->_lock);
  applicationSDKVersionToken = self->_applicationSDKVersionToken;
  os_unfair_lock_unlock(&self->_lock);
  return applicationSDKVersionToken;
}

- (void)setProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__HKHealthStoreImplementation_setProfileIdentifier___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(HKHealthStoreImplementation *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:1];
}

uint64_t __52__HKHealthStoreImplementation_setProfileIdentifier___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 344), *(a1 + 40));
  v2 = [HKHealthStoreIdentifier identifierFromProfileIdentifier:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 504);
  *(v3 + 504) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)profileIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_profileIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSourceBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__HKHealthStoreImplementation_setSourceBundleIdentifier___block_invoke;
  v6[3] = &unk_1E7378658;
  v6[4] = self;
  v8 = &v9;
  v5 = identifierCopy;
  v7 = v5;
  [(HKHealthStoreImplementation *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:1];
  if (*(v10 + 24) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Do not set both sourceBundleIdentifier and sourceBundle"];
  }

  _Block_object_dispose(&v9, 8);
}

void __57__HKHealthStoreImplementation_setSourceBundleIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 320))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((v1 + 328), *(a1 + 40));
  }
}

- (id)sourceBundleIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_sourceBundleIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSourceBundle:(id)bundle
{
  bundleCopy = bundle;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__HKHealthStoreImplementation_setSourceBundle___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = bundleCopy;
  v5 = bundleCopy;
  [(HKHealthStoreImplementation *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:1];
}

void __47__HKHealthStoreImplementation_setSourceBundle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) bundleIdentifier];
  v3 = *(a1 + 32);
  v4 = *(v3 + 328);
  *(v3 + 328) = v2;

  v5 = *(a1 + 40);
  v6 = (*(a1 + 32) + 320);

  objc_storeStrong(v6, v5);
}

- (id)sourceBundle
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_sourceBundle;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_sourceBundleOrDefaultBundle
{
  sourceBundle = [(HKHealthStoreImplementation *)self sourceBundle];
  v3 = sourceBundle;
  if (sourceBundle)
  {
    mainBundle = sourceBundle;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  }

  v5 = mainBundle;

  return v5;
}

- (void)setDebugIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__HKHealthStoreImplementation_setDebugIdentifier___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(HKHealthStoreImplementation *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:1];
}

- (id)debugIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_debugIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCanConnectToSystemMachService:(BOOL)service
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__HKHealthStoreImplementation_setCanConnectToSystemMachService___block_invoke;
  v3[3] = &unk_1E7378680;
  v3[4] = self;
  serviceCopy = service;
  [(HKHealthStoreImplementation *)self _setConfigurationPropertyUsingBlock:v3 resumeRequired:0];
}

- (BOOL)canConnectToSystemMachService
{
  os_unfair_lock_lock(&self->_lock);
  canConnectToSystemMachService = self->_canConnectToSystemMachService;
  os_unfair_lock_unlock(&self->_lock);
  return canConnectToSystemMachService;
}

- (id)healthServicesManager
{
  os_unfair_lock_lock(&self->_lock);
  healthServicesManager = self->_healthServicesManager;
  if (!healthServicesManager)
  {
    v4 = [[HKHealthServicesManager alloc] initWithWeakHealthStore:self];
    v5 = self->_healthServicesManager;
    self->_healthServicesManager = v4;

    healthServicesManager = self->_healthServicesManager;
  }

  v6 = healthServicesManager;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)setUnitTest_handleExecuteQuery:(id)query
{
  v4 = _Block_copy(query);
  impl_unitTest_handleExecuteQuery = self->_impl_unitTest_handleExecuteQuery;
  self->_impl_unitTest_handleExecuteQuery = v4;

  MEMORY[0x1EEE66BB8](v4, impl_unitTest_handleExecuteQuery);
}

- (void)resume
{
  os_unfair_lock_lock(&self->_lock);
  self->_resumed = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_discardServerProxiesForServer:(id)server
{
  serverCopy = server;
  os_unfair_lock_lock(&self->_lock);
  serverProxy = self->_serverProxy;

  if (serverProxy == serverCopy)
  {
    self->_serverProxy = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_connectionWithError:(id *)error
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_resumed)
  {
    if (self->_resumeRequired)
    {
      v6 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Missing call to -[HKHealthStore resume]"];
      v7 = v6;
      if (v6)
      {
        if (error)
        {
          v8 = v6;
          *error = v7;
        }

        else
        {
          _HKLogDroppedError(v6);
        }
      }

      goto LABEL_19;
    }

    self->_resumed = 1;
  }

  if (self->_isUsingSystemEndpoint && !self->_canConnectToSystemMachService)
  {
LABEL_19:
    v10 = 0;
    goto LABEL_23;
  }

  v9 = self->_healthdConnection;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else if (+[_HKBehavior isDeviceSupported])
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:{@"invalid connection to %@", @"com.apple.healthd.server"}];
  }

  else
  {
    hk_healthDataUnavailableError = [MEMORY[0x1E696ABC0] hk_healthDataUnavailableError];
    v13 = hk_healthDataUnavailableError;
    if (hk_healthDataUnavailableError)
    {
      if (error)
      {
        v14 = hk_healthDataUnavailableError;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError(hk_healthDataUnavailableError);
      }
    }
  }

LABEL_23:

  return v10;
}

- (id)_wrappedErrorHandler:(id)handler proxy:(id)proxy
{
  handlerCopy = handler;
  proxyCopy = proxy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__HKHealthStoreImplementation__wrappedErrorHandler_proxy___block_invoke;
  aBlock[3] = &unk_1E73786A8;
  aBlock[4] = self;
  v13 = proxyCopy;
  v14 = handlerCopy;
  v8 = handlerCopy;
  v9 = proxyCopy;
  v10 = _Block_copy(aBlock);

  return v10;
}

void __58__HKHealthStoreImplementation__wrappedErrorHandler_proxy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hk_isXPCConnectionError])
  {
    [*(a1 + 32) _discardServerProxiesForServer:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_serverProxyWithHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v8 = errorHandlerCopy;
  if (!handlerCopy)
  {
    [HKHealthStoreImplementation _serverProxyWithHandler:errorHandler:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [HKHealthStoreImplementation _serverProxyWithHandler:errorHandler:];
    goto LABEL_3;
  }

  if (!errorHandlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__HKHealthStoreImplementation__serverProxyWithHandler_errorHandler___block_invoke;
  block[3] = &unk_1E73786F8;
  block[4] = self;
  v13 = v8;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = v8;
  dispatch_async(connectionQueue, block);
}

void __68__HKHealthStoreImplementation__serverProxyWithHandler_errorHandler___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 288));
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [v2 _lock_connectionWithError:&v13];
  v4 = v13;
  v5 = *(*(a1 + 32) + 368);
  os_unfair_lock_unlock((*(a1 + 32) + 288));
  v6 = [*(a1 + 32) _wrappedErrorHandler:*(a1 + 40) proxy:v5];
  if (v5)
  {
    v7 = *(a1 + 48);
    v8 = [v5 remoteObjectProxyWithErrorHandler:v6];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    if (!v3)
    {
      (*(*(a1 + 40) + 16))();
      goto LABEL_6;
    }

    v8 = [v3 remoteObjectProxyWithErrorHandler:v6];
    v9 = [*(a1 + 32) healthStoreConfiguration];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__HKHealthStoreImplementation__serverProxyWithHandler_errorHandler___block_invoke_2;
    v10[3] = &unk_1E73786D0;
    v10[4] = *(a1 + 32);
    v11 = v6;
    v12 = *(a1 + 48);
    [v8 remote_serverForConfiguration:v9 completion:v10];
  }

LABEL_6:
}

void __68__HKHealthStoreImplementation__serverProxyWithHandler_errorHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    os_unfair_lock_lock((a1[4] + 288));
    v5 = a1[4];
    v6 = *(v5 + 368);
    *(v5 + 368) = v4;
    v7 = v4;

    os_unfair_lock_unlock((a1[4] + 288));
    v9 = [v7 remoteObjectProxyWithErrorHandler:a1[5]];

    (*(a1[6] + 16))();
  }

  else
  {
    v8 = *(a1[5] + 16);

    v8();
  }
}

- (id)_synchronousServerProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__52;
  v33 = __Block_byref_object_dispose__52;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__52;
  v27 = __Block_byref_object_dispose__52;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__52;
  v21 = __Block_byref_object_dispose__52;
  v22 = 0;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__HKHealthStoreImplementation__synchronousServerProxyWithErrorHandler___block_invoke;
  block[3] = &unk_1E7378720;
  block[4] = self;
  block[5] = &v23;
  block[6] = &v29;
  block[7] = &v17;
  dispatch_sync(connectionQueue, block);
  v6 = [(HKHealthStoreImplementation *)self _wrappedErrorHandler:handlerCopy proxy:v18[5]];
  v7 = v18[5];
  if (v7)
  {
    v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v6];
  }

  else
  {
    v9 = v24[5];
    if (v9)
    {
      v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v6];
      healthStoreConfiguration = [(HKHealthStoreImplementation *)self healthStoreConfiguration];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __71__HKHealthStoreImplementation__synchronousServerProxyWithErrorHandler___block_invoke_2;
      v13[3] = &unk_1E7378748;
      v13[4] = self;
      v15 = &v17;
      v14 = v6;
      [v10 remote_serverForConfiguration:healthStoreConfiguration completion:v13];
      v8 = v18[5];
    }

    else
    {
      handlerCopy[2](handlerCopy, v30[5]);
      v8 = 0;
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);

  return v8;
}

void __71__HKHealthStoreImplementation__synchronousServerProxyWithErrorHandler___block_invoke(void *a1)
{
  os_unfair_lock_lock((a1[4] + 288));
  v2 = a1[4];
  v10 = 0;
  v3 = [v2 _lock_connectionWithError:&v10];
  v4 = v10;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
  v9 = v4;

  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 368));
  os_unfair_lock_unlock((a1[4] + 288));
}

void __71__HKHealthStoreImplementation__synchronousServerProxyWithErrorHandler___block_invoke_2(void *a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v12 = v4;
    os_unfair_lock_lock((a1[4] + 288));
    v5 = a1[4];
    v6 = *(v5 + 368);
    if (v6)
    {
      v7 = v6;

      v12 = v7;
    }

    else
    {
      objc_storeStrong((v5 + 368), a2);
    }

    os_unfair_lock_unlock((a1[4] + 288));
    v9 = [v12 synchronousRemoteObjectProxyWithErrorHandler:a1[5]];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v8 = *(a1[5] + 16);

    v8();
  }
}

- (void)fetchPluginServiceEndpointForIdentifier:(id)identifier endpointHandler:(id)handler errorHandler:(id)errorHandler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  if (identifierCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "endpointHandler"}];
    if (errorHandlerCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "errorHandler"}];
    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "pluginIdentifier"}];
  if (!handlerCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!errorHandlerCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__HKHealthStoreImplementation_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke;
  aBlock[3] = &unk_1E73786A8;
  v11 = identifierCopy;
  v22 = v11;
  selfCopy = self;
  v24 = errorHandlerCopy;
  v12 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100__HKHealthStoreImplementation_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_2;
  v16[3] = &unk_1E7378798;
  v17 = v11;
  selfCopy2 = self;
  v19 = handlerCopy;
  v20 = v12;
  v13 = v12;
  v14 = handlerCopy;
  v15 = v11;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v16 errorHandler:v13];
}

void __100__HKHealthStoreImplementation_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "Failed to fetch endpoint for plugin service %{public}@: %{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 40) + 304);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__HKHealthStoreImplementation_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_388;
  v10[3] = &unk_1E7376AC0;
  v7 = *(a1 + 48);
  v11 = v3;
  v12 = v7;
  v8 = v3;
  dispatch_async(v6, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __100__HKHealthStoreImplementation_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__HKHealthStoreImplementation_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_3;
  v7[3] = &unk_1E7378770;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v10 = v5;
  v8 = *(a1 + 32);
  v9 = v3;
  v11 = *(a1 + 56);
  v6 = v3;
  [v6 remote_fetchPluginServiceEndpointWithIdentifier:v4 completion:v7];
}

void __100__HKHealthStoreImplementation_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 304);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __100__HKHealthStoreImplementation_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_4;
    v17[3] = &unk_1E7376AC0;
    v8 = &v19;
    v19 = *(a1 + 56);
    v9 = &v18;
    v18 = v5;
    v10 = v17;
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      *buf = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_INFO, "Failed to fetch endpoint for plugin %{public}@: %{public}@", buf, 0x16u);
    }

    if ([v6 hk_isXPCConnectionError])
    {
      [*(a1 + 32) _discardServerProxiesForServer:*(a1 + 48)];
    }

    v7 = *(*(a1 + 32) + 304);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __100__HKHealthStoreImplementation_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_389;
    v14[3] = &unk_1E7376AC0;
    v8 = &v16;
    v16 = *(a1 + 64);
    v9 = &v15;
    v15 = v6;
    v10 = v14;
  }

  dispatch_async(v7, v10);

  v13 = *MEMORY[0x1E69E9840];
}

- (id)pluginServiceEndpointForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "pluginIdentifier"}];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__52;
  v35 = __Block_byref_object_dispose__52;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__52;
  v29 = __Block_byref_object_dispose__52;
  v30 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__HKHealthStoreImplementation_pluginServiceEndpointForIdentifier_error___block_invoke;
  v22[3] = &unk_1E73787C0;
  v7 = identifierCopy;
  v23 = v7;
  v24 = &v25;
  v8 = [(HKHealthStoreImplementation *)self _synchronousServerProxyWithErrorHandler:v22];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__HKHealthStoreImplementation_pluginServiceEndpointForIdentifier_error___block_invoke_392;
  v16[3] = &unk_1E73787E8;
  v20 = &v31;
  v9 = v7;
  v17 = v9;
  selfCopy = self;
  v10 = v8;
  v19 = v10;
  v21 = &v25;
  [v10 remote_fetchPluginServiceEndpointWithIdentifier:v9 completion:v16];
  v11 = v26[5];
  v12 = v11;
  if (v11)
  {
    if (error)
    {
      v13 = v11;
      *error = v12;
    }

    else
    {
      _HKLogDroppedError(v11);
    }
  }

  v14 = v32[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);

  return v14;
}

void __72__HKHealthStoreImplementation_pluginServiceEndpointForIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "Failed to fetch endpoint for plugin service %{public}@: %{public}@", &v9, 0x16u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __72__HKHealthStoreImplementation_pluginServiceEndpointForIdentifier_error___block_invoke_392(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = 56;
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_INFO, "Failed to fetch endpoint for plugin %{public}@: %{public}@", &v12, 0x16u);
    }

    if ([v7 hk_isXPCConnectionError])
    {
      [*(a1 + 40) _discardServerProxiesForServer:*(a1 + 48)];
    }

    v8 = 64;
    v4 = a3;
  }

  objc_storeStrong((*(*(a1 + v8) + 8) + 40), v4);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchTaskServerEndpointForIdentifier:(id)identifier pluginURL:(id)l taskUUID:(id)d instanceUUID:(id)iD configuration:(id)configuration endpointHandler:(id)handler errorHandler:(id)errorHandler
{
  identifierCopy = identifier;
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  configurationCopy = configuration;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  if (identifierCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "endpointHandler"}];
    if (errorHandlerCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "errorHandler"}];
    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "taskIdentifier"}];
  if (!handlerCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!errorHandlerCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __143__HKHealthStoreImplementation_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke;
  v29[3] = &unk_1E7378810;
  v30 = identifierCopy;
  v31 = lCopy;
  v32 = dCopy;
  v33 = iDCopy;
  v34 = configurationCopy;
  selfCopy = self;
  v36 = handlerCopy;
  v37 = errorHandlerCopy;
  v22 = errorHandlerCopy;
  v23 = handlerCopy;
  v24 = configurationCopy;
  v25 = iDCopy;
  v26 = dCopy;
  v27 = lCopy;
  v28 = identifierCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v29 errorHandler:v22];
}

void __143__HKHealthStoreImplementation_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __143__HKHealthStoreImplementation_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke_2;
  v11[3] = &unk_1E7378770;
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  v11[4] = *(a1 + 72);
  v14 = v9;
  v12 = *(a1 + 32);
  v13 = v3;
  v15 = *(a1 + 88);
  v10 = v3;
  [v10 remote_createTaskServerEndpointForIdentifier:v4 pluginURL:v5 taskUUID:v6 instanceUUID:v7 configuration:v8 completion:v11];
}

void __143__HKHealthStoreImplementation_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 304);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __143__HKHealthStoreImplementation_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke_3;
    v17[3] = &unk_1E7376AC0;
    v8 = &v19;
    v19 = *(a1 + 56);
    v9 = &v18;
    v18 = v5;
    v10 = v17;
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      *buf = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_INFO, "Failed to fetch endpoint for task server %{public}@: %{public}@", buf, 0x16u);
    }

    if ([v6 hk_isXPCConnectionError])
    {
      [*(a1 + 32) _discardServerProxiesForServer:*(a1 + 48)];
    }

    v7 = *(*(a1 + 32) + 304);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __143__HKHealthStoreImplementation_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke_394;
    v14[3] = &unk_1E7376AC0;
    v8 = &v16;
    v16 = *(a1 + 64);
    v9 = &v15;
    v15 = v6;
    v10 = v14;
  }

  dispatch_async(v7, v10);

  v13 = *MEMORY[0x1E69E9840];
}

- (id)taskServerEndpointForIdentifier:(id)identifier pluginURL:(id)l taskUUID:(id)d instanceUUID:(id)iD configuration:(id)configuration error:(id *)error
{
  identifierCopy = identifier;
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  configurationCopy = configuration;
  if (!identifierCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "taskIdentifier"}];
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__52;
  v44 = __Block_byref_object_dispose__52;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__52;
  v38 = __Block_byref_object_dispose__52;
  v39 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __115__HKHealthStoreImplementation_taskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_error___block_invoke;
  v33[3] = &unk_1E7378838;
  v33[4] = &v34;
  v19 = [(HKHealthStoreImplementation *)self _synchronousServerProxyWithErrorHandler:v33];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __115__HKHealthStoreImplementation_taskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_error___block_invoke_2;
  v27[3] = &unk_1E73787E8;
  v31 = &v40;
  v20 = identifierCopy;
  v28 = v20;
  selfCopy = self;
  v21 = v19;
  v30 = v21;
  v32 = &v34;
  [v21 remote_createTaskServerEndpointForIdentifier:v20 pluginURL:lCopy taskUUID:dCopy instanceUUID:iDCopy configuration:configurationCopy completion:v27];
  v22 = v35[5];
  v23 = v22;
  if (v22)
  {
    if (error)
    {
      v24 = v22;
      *error = v23;
    }

    else
    {
      _HKLogDroppedError(v22);
    }
  }

  v25 = v41[5];
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);

  return v25;
}

void __115__HKHealthStoreImplementation_taskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = 56;
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_INFO, "Failed to fetch endpoint for task server %{public}@: %{public}@", &v12, 0x16u);
    }

    if ([v7 hk_isXPCConnectionError])
    {
      [*(a1 + 40) _discardServerProxiesForServer:*(a1 + 48)];
    }

    v8 = 64;
    v4 = a3;
  }

  objc_storeStrong((*(*(a1 + v8) + 8) + 40), v4);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllSamplesWithTypes:(id)types sourceBundleIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion
{
  typesCopy = types;
  identifierCopy = identifier;
  completionCopy = completion;
  if (!typesCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sampleTypes"}];
  }

  if (![typesCopy count])
  {
    [HKHealthStoreImplementation deleteAllSamplesWithTypes:sourceBundleIdentifier:options:completion:];
  }

  v13 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__HKHealthStoreImplementation_deleteAllSamplesWithTypes_sourceBundleIdentifier_options_completion___block_invoke;
  v19[3] = &unk_1E7378860;
  v20 = typesCopy;
  v21 = identifierCopy;
  optionsCopy = options;
  v22 = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__HKHealthStoreImplementation_deleteAllSamplesWithTypes_sourceBundleIdentifier_options_completion___block_invoke_2;
  v17[3] = &unk_1E7376960;
  v18 = v22;
  v14 = v22;
  v15 = identifierCopy;
  v16 = typesCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v19 errorHandler:v17];
}

- (void)deleteObjectsWithUUIDs:(id)ds options:(unint64_t)options completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (!dsCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "uuids"}];
  }

  v10 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__HKHealthStoreImplementation_deleteObjectsWithUUIDs_options_completion___block_invoke;
  v15[3] = &unk_1E7378888;
  v16 = dsCopy;
  optionsCopy = options;
  v17 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__HKHealthStoreImplementation_deleteObjectsWithUUIDs_options_completion___block_invoke_2;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = dsCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v15 errorHandler:v13];
}

- (void)deleteClientSourceWithCompletion:(id)completion
{
  v4 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completion];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__HKHealthStoreImplementation_deleteClientSourceWithCompletion___block_invoke;
  v8[3] = &unk_1E73788B0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__HKHealthStoreImplementation_deleteClientSourceWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v8 errorHandler:v6];
}

- (void)associateSampleUUIDs:(id)ds withSampleUUID:(id)d completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    *buf = 134218242;
    v25 = [dsCopy count];
    v26 = 2114;
    v27 = dCopy;
    _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_INFO, "Associating %llu samples to sample %{public}@", buf, 0x16u);
  }

  v13 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__HKHealthStoreImplementation_associateSampleUUIDs_withSampleUUID_completion___block_invoke;
  v20[3] = &unk_1E73788D8;
  v21 = dsCopy;
  v22 = dCopy;
  v23 = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__HKHealthStoreImplementation_associateSampleUUIDs_withSampleUUID_completion___block_invoke_2;
  v18[3] = &unk_1E7376960;
  v19 = v23;
  v14 = v23;
  v15 = dCopy;
  v16 = dsCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v20 errorHandler:v18];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)saveObjects:(id)objects deleteObjects:(id)deleteObjects associations:(id)associations completion:(id)completion
{
  objectsCopy = objects;
  deleteObjectsCopy = deleteObjects;
  associationsCopy = associations;
  v14 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completion];
  if ([objectsCopy count] <= 0xC8 && objc_msgSend(deleteObjectsCopy, "count") <= 0xC8 && objc_msgSend(associationsCopy, "count") < 0xC9)
  {
    v25 = 0;
    v16 = [(HKHealthStoreImplementation *)self _prepareObjectsForSaving:objectsCopy errorOut:&v25];
    v17 = v25;
    if (v16)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __81__HKHealthStoreImplementation_saveObjects_deleteObjects_associations_completion___block_invoke;
      v20[3] = &unk_1E7378900;
      v21 = objectsCopy;
      v22 = deleteObjectsCopy;
      v23 = associationsCopy;
      v24 = v14;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __81__HKHealthStoreImplementation_saveObjects_deleteObjects_associations_completion___block_invoke_2;
      v18[3] = &unk_1E7376960;
      v19 = v24;
      [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v20 errorHandler:v18];
    }

    else
    {
      (v14)[2](v14, 0, v17);
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Current support only valid for saving, deleting and associating for %d objects or less", 200}];
    (v14)[2](v14, 0, v15);
  }
}

- (void)recalibrateEstimatesForSampleType:(id)type atDate:(id)date completion:(id)completion
{
  typeCopy = type;
  dateCopy = date;
  completionCopy = completion;
  if (!typeCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sampleType"}];
    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "date"}];
    goto LABEL_3;
  }

  if (!dateCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __83__HKHealthStoreImplementation_recalibrateEstimatesForSampleType_atDate_completion___block_invoke;
  v23[3] = &unk_1E7378928;
  v11 = typeCopy;
  v24 = v11;
  v12 = dateCopy;
  v25 = v12;
  v26 = completionCopy;
  v13 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:v23];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__HKHealthStoreImplementation_recalibrateEstimatesForSampleType_atDate_completion___block_invoke_406;
  v19[3] = &unk_1E73788D8;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__HKHealthStoreImplementation_recalibrateEstimatesForSampleType_atDate_completion___block_invoke_2;
  v17[3] = &unk_1E7376960;
  v18 = v22;
  v14 = v22;
  v15 = v12;
  v16 = v11;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v19 errorHandler:v17];
}

void __83__HKHealthStoreImplementation_recalibrateEstimatesForSampleType_atDate_completion___block_invoke(void *a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogAuthorization();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = a1[5];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "Finished recalibrate estimates request for %@ effective %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __69__HKHealthStore_recalibrateEstimatesForSampleType_atDate_completion___block_invoke_cold_1(a1);
  }

  (*(a1[6] + 16))();
  v10 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_presentRecalibrateEstimatesRequestWithRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  v8 = +[_HKBehavior sharedBehavior];
  isiPad = [v8 isiPad];

  if (isiPad)
  {
    v10 = [MEMORY[0x1E696ABC0] hk_error:2 description:@"Estimate recalibration is not supported on this device."];
    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__HKHealthStoreImplementation_clientRemote_presentRecalibrateEstimatesRequestWithRecord_completion___block_invoke;
    block[3] = &unk_1E7376618;
    v14 = completionCopy;
    block[4] = self;
    v13 = recordCopy;
    dispatch_async(clientQueue, block);
  }
}

void __100__HKHealthStoreImplementation_clientRemote_presentRecalibrateEstimatesRequestWithRecord_completion___block_invoke(void *a1)
{
  if (_HKCurrentTaskIsAppExtension())
  {
    v2 = a1[6];
    v3 = MEMORY[0x1E696ABC0];
    v4 = @"Cannot present recalibrate estimates prompt from an app extension.";
    v5 = 3;
LABEL_3:
    v14 = [v3 hk_error:v5 description:v4];
    (*(v2 + 16))(v2, 0);
    goto LABEL_7;
  }

  v6 = a1[4];
  v7 = *(v6 + 392);
  if (!v7)
  {
    v8 = _HKCreateRecalibrateEstimatesPresentationController();
    v9 = a1[4];
    v10 = *(v9 + 392);
    *(v9 + 392) = v8;

    v6 = a1[4];
    v7 = *(v6 + 392);
    if (!v7)
    {
      v2 = a1[6];
      v3 = MEMORY[0x1E696ABC0];
      v4 = @"Failed to create recalibrate estimates presentation controller.";
      v5 = 100;
      goto LABEL_3;
    }
  }

  v11 = a1[5];
  WeakRetained = objc_loadWeakRetained((v6 + 544));
  v13 = a1[6];
  v14 = WeakRetained;
  [v7 presentWithRequestRecord:v11 authorizationViewControllerPresenter:? completion:?];
LABEL_7:
}

- (int64_t)authorizationStatusForType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHealthStoreImplementation authorizationStatusForType:];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__HKHealthStoreImplementation_authorizationStatusForType___block_invoke;
  aBlock[3] = &unk_1E7378950;
  aBlock[4] = &v16;
  v5 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__HKHealthStoreImplementation_authorizationStatusForType___block_invoke_421;
  v13[3] = &unk_1E7376960;
  v6 = v5;
  v14 = v6;
  v7 = [(HKHealthStoreImplementation *)self _synchronousServerProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__HKHealthStoreImplementation_authorizationStatusForType___block_invoke_2;
  v11[3] = &unk_1E7378978;
  v8 = v6;
  v12 = v8;
  [v7 remote_authorizationStatusForType:typeCopy completion:v11];
  v9 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v9;
}

void __58__HKHealthStoreImplementation_authorizationStatusForType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 integerValue];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__HKHealthStore_authorizationStatusForType___block_invoke_cold_1();
    }
  }
}

- (void)getRequestStatusForAuthorizationToShareTypes:(id)types readTypes:(id)readTypes completion:(id)completion
{
  typesCopy = types;
  readTypesCopy = readTypes;
  completionCopy = completion;
  [(HKHealthStoreImplementation *)self _validateAuthorizationRequestWithShareTypes:typesCopy readTypes:readTypesCopy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__HKHealthStoreImplementation_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke;
  v16[3] = &unk_1E73788D8;
  v17 = typesCopy;
  v18 = readTypesCopy;
  v19 = completionCopy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __97__HKHealthStoreImplementation_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke_2;
  v14[3] = &unk_1E7376960;
  v15 = v19;
  v11 = v19;
  v12 = readTypesCopy;
  v13 = typesCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v16 errorHandler:v14];
}

- (void)_validatePurposeStringsForObjectType:(id)type
{
  typeCopy = type;
  _clientReadAuthorizationUsageDescription = [(HKHealthStoreImplementation *)self _clientReadAuthorizationUsageDescription];
  if (!_clientReadAuthorizationUsageDescription)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"NSHealthShareUsageDescription must be set in the app's Info.plist in order to request read authorization for the following types: %@", typeCopy}];
  }

  if (HKProgramSDKAtLeast() && ([_clientReadAuthorizationUsageDescription hk_isValidPurposeString] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The string %@ is an invalid value for NSHealthShareUsageDescription", _clientReadAuthorizationUsageDescription}];
  }
}

- (void)requestPerObjectReadAuthorizationForType:(id)type predicate:(id)predicate completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  predicateCopy = predicate;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = HKLogAuthorization();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = typeCopy;
    _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "Requesting per-object authorization to read %@", buf, 0xCu);
  }

  [(HKHealthStoreImplementation *)self _throwIfPerObjectReadAuthorizationNotSupportedForType:typeCopy];
  [(HKHealthStoreImplementation *)self _validatePurposeStringsForObjectType:typeCopy];
  v12 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v12 isAppleWatch];

  if (isAppleWatch)
  {
    v14 = [MEMORY[0x1E696ABC0] hk_error:2 description:@"Per-object authorization presentation is not supported on this device"];
    completionCopy[2](completionCopy, 0, v14);
  }

  else
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __93__HKHealthStoreImplementation_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke;
    v27[3] = &unk_1E7378928;
    v15 = typeCopy;
    v28 = v15;
    selfCopy = self;
    v30 = completionCopy;
    v16 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:v27];
    v17 = [MEMORY[0x1E695DFD8] setWithObject:v15];
    v18 = [predicateCopy hk_filterRepresentationForDataTypes:v17];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __93__HKHealthStoreImplementation_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke_432;
    v23[3] = &unk_1E73788D8;
    v24 = v15;
    v25 = v18;
    v26 = v16;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__HKHealthStoreImplementation_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke_2;
    v21[3] = &unk_1E7376960;
    completionCopy = v26;
    v22 = completionCopy;
    v19 = v18;
    [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v23 errorHandler:v21];

    v14 = v28;
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __93__HKHealthStoreImplementation_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogAuthorization();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "Finished authorization request to read %@", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __79__HKHealthStore_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke_cold_1(a1);
  }

  [*(a1[5] + 376) cancelPresentation];
  v9 = a1[5];
  v10 = *(v9 + 376);
  *(v9 + 376) = 0;

  v11 = a1[6];
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __93__HKHealthStoreImplementation_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke_432(void *a1, void *a2)
{
  v3 = a1[4];
  v8 = a2;
  v4 = +[(HKObjectType *)HKUserAnnotatedMedicationType];

  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  if (v3 == v4)
  {
    [v8 remote_requestConceptReadAuthorizationForType:v5 filter:v6 completion:v7];
  }

  else
  {
    [v8 remote_requestPerObjectReadAuthorizationForType:v5 filter:v6 completion:v7];
  }
}

- (void)_validateAuthorizationRequestWithShareTypes:(id)types readTypes:(id)readTypes
{
  readTypesCopy = readTypes;
  typesCopy = types;
  if (![typesCopy count] && !objc_msgSend(readTypesCopy, "count"))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must request authorization for at least one data type"];
  }

  [(HKHealthStoreImplementation *)self _throwIfClinicalTypesRequestedToShare:typesCopy];
  [(HKHealthStoreImplementation *)self _throwIfParentTypeNotRequestedForSharing:1 types:typesCopy];
  [(HKHealthStoreImplementation *)self _throwIfParentTypeNotRequestedForSharing:0 types:readTypesCopy];
  [(HKHealthStoreImplementation *)self _throwIfAuthorizationDisallowedForSharing:1 types:typesCopy];

  [(HKHealthStoreImplementation *)self _throwIfAuthorizationDisallowedForSharing:0 types:readTypesCopy];
  [(HKHealthStoreImplementation *)self _throwIfUsingIncorrectAuthorizationRequestType:readTypesCopy];
  [(HKHealthStoreImplementation *)self _validateAuthorizationRequiredTypes];
}

- (id)_typesWithBothBloodPressureIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = [HKObjectType dataTypeWithCode:16];
  v5 = [HKObjectType dataTypeWithCode:17];
  v6 = [neededCopy containsObject:v4];
  v7 = [neededCopy containsObject:v5];
  if (v6 == v7)
  {
    v10 = neededCopy;
  }

  else
  {
    v8 = v7;
    _HKInitializeLogging();
    v9 = HKLogAuthorization();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(HKHealthStore *)v6 _typesWithBothBloodPressureIfNeeded:v8, v9];
    }

    v10 = [MEMORY[0x1E695DFA8] setWithSet:neededCopy];
    [v10 addObject:v4];
    [v10 addObject:v5];
  }

  return v10;
}

- (void)requestAuthorizationToShareTypes:(id)types readTypes:(id)readTypes shouldPrompt:(BOOL)prompt completion:(id)completion
{
  promptCopy = prompt;
  v45 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  readTypesCopy = readTypes;
  completionCopy = completion;
  _HKInitializeLogging();
  v13 = HKLogAuthorization();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (promptCopy)
    {
      v14 = "prompting";
    }

    else
    {
      v14 = "silent";
    }

    allObjects = [typesCopy allObjects];
    allObjects2 = [readTypesCopy allObjects];
    *buf = 136315650;
    v40 = v14;
    v41 = 2112;
    v42 = allObjects;
    v43 = 2112;
    v44 = allObjects2;
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "Requesting %s authorization to share %@, read %@", buf, 0x20u);
  }

  v17 = [(HKHealthStoreImplementation *)self _typesWithBothBloodPressureIfNeeded:typesCopy];

  v18 = [(HKHealthStoreImplementation *)self _typesWithBothBloodPressureIfNeeded:readTypesCopy];

  [(HKHealthStoreImplementation *)self _validateAuthorizationRequestWithShareTypes:v17 readTypes:v18];
  [(HKHealthStoreImplementation *)self _validatePurposeStringsForSharingTypes:v17 readingTypes:v18];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __98__HKHealthStoreImplementation_requestAuthorizationToShareTypes_readTypes_shouldPrompt_completion___block_invoke;
  v33[3] = &unk_1E7378A18;
  v38 = promptCopy;
  v19 = v17;
  v34 = v19;
  v20 = v18;
  v35 = v20;
  selfCopy = self;
  v37 = completionCopy;
  v21 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:v33];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __98__HKHealthStoreImplementation_requestAuthorizationToShareTypes_readTypes_shouldPrompt_completion___block_invoke_440;
  v28[3] = &unk_1E7378A40;
  v29 = v19;
  v30 = v20;
  v32 = promptCopy;
  v31 = v21;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __98__HKHealthStoreImplementation_requestAuthorizationToShareTypes_readTypes_shouldPrompt_completion___block_invoke_2;
  v26[3] = &unk_1E7376960;
  v27 = v31;
  v22 = v31;
  v23 = v20;
  v24 = v19;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v28 errorHandler:v26];

  v25 = *MEMORY[0x1E69E9840];
}

void __98__HKHealthStoreImplementation_requestAuthorizationToShareTypes_readTypes_shouldPrompt_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogAuthorization();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 64))
      {
        v8 = "prompting";
      }

      else
      {
        v8 = "silent";
      }

      v9 = [*(a1 + 32) allObjects];
      v10 = [*(a1 + 40) allObjects];
      v15 = 136315650;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "Finished %s authorization request to share %@, read %@", &v15, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __84__HKHealthStore_requestAuthorizationToShareTypes_readTypes_shouldPrompt_completion___block_invoke_cold_1(a1, v5, v7);
  }

  if (*(a1 + 64) == 1)
  {
    [*(*(a1 + 48) + 376) cancelPresentation];
    v11 = *(a1 + 48);
    v12 = *(v11 + 376);
    *(v11 + 376) = 0;
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_validateAuthorizationRequiredTypes
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[HKClinicalType allTypes];
  v4 = [v3 hk_map:&__block_literal_global_444];

  _sourceBundleOrDefaultBundle = [(HKHealthStoreImplementation *)self _sourceBundleOrDefaultBundle];
  v6 = [_sourceBundleOrDefaultBundle objectForInfoDictionaryKey:@"NSHealthRequiredReadAuthorizationTypeIdentifiers"];

  if ([v6 count] && objc_msgSend(v6, "count") < 3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Apps that specify required read authorization types (NSHealthRequiredReadAuthorizationTypeIdentifiers) must specify at least three clinical record types."];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = *MEMORY[0x1E695D940];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([v4 containsObject:v13] & 1) == 0)
        {
          v14 = MEMORY[0x1E695DF30];
          v15 = [v4 componentsJoinedByString:{@", "}];
          [v14 raise:v11 format:{@"%@ is not a valid required clinical record type. Must be one of: %@", v13, v15, v17}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_validatePurposeStringsForSharingTypes:(id)types readingTypes:(id)readingTypes
{
  typesCopy = types;
  readingTypesCopy = readingTypes;
  v18 = 0;
  v8 = [_HKEntitlements entitlementsForCurrentTaskWithError:&v18];
  v9 = v18;
  if (!v8)
  {
    _HKInitializeLogging();
    v10 = HKLogAuthorization();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HKHealthStore _validatePurposeStringsForSharingTypes:readingTypes:];
    }
  }

  v11 = [v8 hasEntitlement:@"com.apple.private.healthkit.authorization_bypass"];
  typesForWriteAuthorizationOverride = [v8 typesForWriteAuthorizationOverride];
  v13 = [typesForWriteAuthorizationOverride count];

  typesForReadAuthorizationOverride = [v8 typesForReadAuthorizationOverride];
  v15 = [typesForReadAuthorizationOverride count];

  v16 = [v8 hasEntitlement:@"com.apple.private.healthkit.source.research-study"];
  if ((v11 & 1) == 0 && !v13 && !v15)
  {
    v17 = v16;
    [(HKHealthStoreImplementation *)self _validateClinicalHealthRecordsPurposeStringsForSharingTypes:typesCopy readingTypes:readingTypesCopy];
    [(HKHealthStoreImplementation *)self _validateHealthDataPurposeStringsForSharingTypes:typesCopy readingTypes:readingTypesCopy isResearchStudy:v17];
  }
}

- (id)_clientWriteAuthorizationUsageDescription
{
  writeAuthorizationUsageDescriptionOverride = self->_writeAuthorizationUsageDescriptionOverride;
  if (writeAuthorizationUsageDescriptionOverride)
  {
    hk_localizedWriteAuthorizationUsageDescription = writeAuthorizationUsageDescriptionOverride;
  }

  else
  {
    _sourceBundleOrDefaultBundle = [(HKHealthStoreImplementation *)self _sourceBundleOrDefaultBundle];
    hk_localizedWriteAuthorizationUsageDescription = [_sourceBundleOrDefaultBundle hk_localizedWriteAuthorizationUsageDescription];
  }

  return hk_localizedWriteAuthorizationUsageDescription;
}

- (id)_clientReadAuthorizationUsageDescription
{
  readAuthorizationUsageDescriptionOverride = self->_readAuthorizationUsageDescriptionOverride;
  if (readAuthorizationUsageDescriptionOverride)
  {
    hk_localizedReadAuthorizationUsageDescription = readAuthorizationUsageDescriptionOverride;
  }

  else
  {
    _sourceBundleOrDefaultBundle = [(HKHealthStoreImplementation *)self _sourceBundleOrDefaultBundle];
    hk_localizedReadAuthorizationUsageDescription = [_sourceBundleOrDefaultBundle hk_localizedReadAuthorizationUsageDescription];
  }

  return hk_localizedReadAuthorizationUsageDescription;
}

- (id)_clientClinicalReadAuthorizationUsageDescription
{
  clinicalReadAuthorizationUsageDescriptionOverride = self->_clinicalReadAuthorizationUsageDescriptionOverride;
  if (clinicalReadAuthorizationUsageDescriptionOverride)
  {
    hk_localizedClinicalReadAuthorizationUsageDescription = clinicalReadAuthorizationUsageDescriptionOverride;
  }

  else
  {
    _sourceBundleOrDefaultBundle = [(HKHealthStoreImplementation *)self _sourceBundleOrDefaultBundle];
    hk_localizedClinicalReadAuthorizationUsageDescription = [_sourceBundleOrDefaultBundle hk_localizedClinicalReadAuthorizationUsageDescription];
  }

  return hk_localizedClinicalReadAuthorizationUsageDescription;
}

- (id)_researchStudyUsageDescription
{
  researchStudyUsageDescriptionOverride = self->_researchStudyUsageDescriptionOverride;
  if (researchStudyUsageDescriptionOverride)
  {
    hk_localizedResearchStudyUsageDescription = researchStudyUsageDescriptionOverride;
  }

  else
  {
    _sourceBundleOrDefaultBundle = [(HKHealthStoreImplementation *)self _sourceBundleOrDefaultBundle];
    hk_localizedResearchStudyUsageDescription = [_sourceBundleOrDefaultBundle hk_localizedResearchStudyUsageDescription];
  }

  return hk_localizedResearchStudyUsageDescription;
}

- (void)_validateClinicalHealthRecordsPurposeStringsForSharingTypes:(id)types readingTypes:(id)readingTypes
{
  v10 = [HKObjectType _clinicalTypesFromTypes:readingTypes];
  _clientClinicalReadAuthorizationUsageDescription = [(HKHealthStoreImplementation *)self _clientClinicalReadAuthorizationUsageDescription];

  if (!_clientClinicalReadAuthorizationUsageDescription && [v10 count])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    allObjects = [v10 allObjects];
    v9 = [allObjects componentsJoinedByString:{@", "}];
    [v6 raise:v7 format:{@"NSHealthClinicalHealthRecordsShareUsageDescription must be set in the app's Info.plist in order to request read authorization for the following types: %@", v9}];
  }
}

- (void)_validateHealthDataPurposeStringsForSharingTypes:(id)types readingTypes:(id)readingTypes isResearchStudy:(BOOL)study
{
  studyCopy = study;
  typesCopy = types;
  readingTypesCopy = readingTypes;
  if (HKProgramSDKAtLeast())
  {
    v9 = +[_HKBehavior sharedBehavior];
    if ([v9 isAppleWatch])
    {
      v10 = HKProgramSDKAtLeast();

      if ((v10 & 1) == 0)
      {
        goto LABEL_27;
      }

      if (!studyCopy)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if (!studyCopy)
      {
        goto LABEL_12;
      }
    }

    _researchStudyUsageDescription = [(HKHealthStoreImplementation *)self _researchStudyUsageDescription];
    if ([_researchStudyUsageDescription hk_isValidPurposeString])
    {
      v12 = readingTypesCopy;
      v13 = typesCopy;
      goto LABEL_25;
    }

    if (_researchStudyUsageDescription)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The string %@ is an invalid value for NSHealthResearchStudyUsageDescription", _researchStudyUsageDescription}];
    }

LABEL_12:
    v13 = [HKObjectType _nonClinicalTypesFromTypes:typesCopy];

    if ([v13 count])
    {
      _clientWriteAuthorizationUsageDescription = [(HKHealthStoreImplementation *)self _clientWriteAuthorizationUsageDescription];
      if (!_clientWriteAuthorizationUsageDescription)
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        allObjects = [v13 allObjects];
        v18 = [allObjects componentsJoinedByString:{@", "}];
        [v15 raise:v16 format:{@"NSHealthUpdateUsageDescription must be set in the app's Info.plist in order to request write authorization for the following types: %@", v18}];
      }

      if (HKProgramSDKAtLeast() && ([_clientWriteAuthorizationUsageDescription hk_isValidPurposeString] & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The string %@ is an invalid value for NSHealthUpdateUsageDescription", _clientWriteAuthorizationUsageDescription}];
      }
    }

    v12 = [HKObjectType _nonClinicalTypesFromTypes:readingTypesCopy];

    if (![v12 count])
    {
      goto LABEL_26;
    }

    _researchStudyUsageDescription = [(HKHealthStoreImplementation *)self _clientReadAuthorizationUsageDescription];
    if (!_researchStudyUsageDescription)
    {
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      allObjects2 = [v12 allObjects];
      v22 = [allObjects2 componentsJoinedByString:{@", "}];
      [v19 raise:v20 format:{@"NSHealthShareUsageDescription must be set in the app's Info.plist in order to request read authorization for the following types: %@", v22}];
    }

    if (HKProgramSDKAtLeast() && ([_researchStudyUsageDescription hk_isValidPurposeString] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The string %@ is an invalid value for NSHealthShareUsageDescription", _researchStudyUsageDescription}];
    }

LABEL_25:

LABEL_26:
    readingTypesCopy = v12;
    typesCopy = v13;
  }

LABEL_27:
}

- (void)handleAuthorizationForExtensionWithCompletion:(id)completion
{
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "Handling authorization for extension", buf, 2u);
  }

  v6 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__HKHealthStoreImplementation_handleAuthorizationForExtensionWithCompletion___block_invoke;
  v10[3] = &unk_1E73788B0;
  v11 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__HKHealthStoreImplementation_handleAuthorizationForExtensionWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v10 errorHandler:v8];
}

- (void)_throwIfAuthorizationDisallowedForSharing:(BOOL)sharing types:(id)types
{
  sharingCopy = sharing;
  typesCopy = types;
  if ([typesCopy count])
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v19 = 0;
    v7 = [_HKEntitlements entitlementsForCurrentTaskWithError:&v19];
    v8 = v19;
    if (!v7)
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D940];
      if (sharingCopy)
      {
        v11 = "share";
      }

      else
      {
        v11 = "read";
      }

      allObjects = [v6 allObjects];
      v13 = [allObjects componentsJoinedByString:{@", "}];
      [v9 raise:v10 format:{@"Failed to retrieve local task entitlements when determining authorization access for %s for %@ : %@", v11, v13, v8}];
    }

    if (sharingCopy)
    {
      if (![HKObjectType _allowAuthorizationForSharingWithTypes:typesCopy entitlements:v7 disallowedTypes:v6])
      {
        v14 = "share";
LABEL_12:
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        allObjects2 = [v6 allObjects];
        v18 = [allObjects2 componentsJoinedByString:{@", "}];
        [v15 raise:v16 format:{@"Authorization to %s the following types is disallowed: %@", v14, v18}];
      }
    }

    else if (![HKObjectType _allowAuthorizationForReadingWithTypes:typesCopy entitlements:v7 disallowedTypes:v6])
    {
      v14 = "read";
      goto LABEL_12;
    }
  }
}

- (void)_throwIfClinicalTypesRequestedToShare:(id)share
{
  v7 = [HKObjectType _clinicalTypesFromTypes:share];
  if ([v7 count])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    allObjects = [v7 allObjects];
    v6 = [allObjects componentsJoinedByString:{@", "}];
    [v3 raise:v4 format:{@"Authorization to share the following types is disallowed: %@", v6}];
  }
}

- (void)_throwIfParentTypeNotRequestedForSharing:(BOOL)sharing types:(id)types
{
  sharingCopy = sharing;
  v25 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [typesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = *MEMORY[0x1E695D940];
    if (sharingCopy)
    {
      v10 = "share";
    }

    else
    {
      v10 = "read";
    }

    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(typesCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        parentType = [v12 parentType];
        if (parentType)
        {
          v14 = parentType;
          parentType2 = [v12 parentType];
          v16 = [typesCopy containsObject:parentType2];

          if ((v16 & 1) == 0)
          {
            v17 = MEMORY[0x1E695DF30];
            parentType3 = [v12 parentType];
            [v17 raise:v9 format:{@"Authorization for %@ should also be requested when requesting authorization to %s %@", parentType3, v10, v12}];
          }
        }
      }

      v7 = [typesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_throwIfPerObjectReadAuthorizationNotSupportedForType:(id)type
{
  typeCopy = type;
  if (!HKDataTypeAllowsPerObjectAuthorizationAPI([typeCopy code]))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Per-Object authorization to read %@ is disallowed", typeCopy}];
  }
}

- (void)_throwIfUsingIncorrectAuthorizationRequestType:(id)type
{
  v6 = [type hk_filter:&__block_literal_global_486];
  if ([v6 count])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    allObjects = [v6 allObjects];
    [v3 raise:v4 format:{@"Authorization to read the following type(s) using this API is disallowed: %@", allObjects}];
  }
}

BOOL __78__HKHealthStoreImplementation__throwIfUsingIncorrectAuthorizationRequestType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 code];

  return HKDataTypeAllowsPerObjectAuthorizationAPI(v2);
}

- (void)beginAuthorizationDelegateTransactionWithSessionIdentifier:(id)identifier sourceHandler:(id)handler errorHandler:(id)errorHandler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  if (identifierCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sourceHandler"}];
    if (errorHandlerCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "errorHandler"}];
    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sessionIdentifier"}];
  if (!handlerCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!errorHandlerCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__HKHealthStoreImplementation_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke;
  block[3] = &unk_1E7378B20;
  v17 = errorHandlerCopy;
  v18 = handlerCopy;
  block[4] = self;
  v16 = identifierCopy;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v14 = errorHandlerCopy;
  dispatch_async(clientQueue, block);
}

void __117__HKHealthStoreImplementation_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 400);
  *(v3 + 400) = v2;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__HKHealthStoreImplementation_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_2;
  aBlock[3] = &unk_1E7378AD0;
  aBlock[4] = *(a1 + 32);
  v13 = *(a1 + 56);
  v5 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __117__HKHealthStoreImplementation_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_4;
  v9[3] = &unk_1E7378AF8;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __117__HKHealthStoreImplementation_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_5;
  v8[3] = &unk_1E7376898;
  v8[4] = *(a1 + 32);
  v7 = v5;
  [v6 _serverProxyWithHandler:v9 errorHandler:v8];
}

void __117__HKHealthStoreImplementation_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 304);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __117__HKHealthStoreImplementation_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_3;
  v12[3] = &unk_1E7378AA8;
  v13 = v6;
  v14 = v7;
  v9 = *(a1 + 40);
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, v12);
}

uint64_t __117__HKHealthStoreImplementation_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return [*(a1 + 40) _clientQueue_invokeAuthorizationDelegateTransactionErrorHandlerWithError:?];
  }

  else
  {
    return (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48));
  }
}

- (void)endAuthorizationDelegateTransactionWithSessionIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__HKHealthStoreImplementation_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = identifierCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = identifierCopy;
  dispatch_async(clientQueue, block);
}

void __94__HKHealthStoreImplementation_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 400);
  *(v2 + 400) = 0;

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__HKHealthStoreImplementation_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke_2;
  v5[3] = &unk_1E7378B48;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 _serverProxyWithHandler:v5 errorHandler:&__block_literal_global_494];
}

void __94__HKHealthStoreImplementation_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    __80__HKHealthStore_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke_3_cold_1();
  }
}

- (void)_clientQueue_invokeAuthorizationDelegateTransactionErrorHandlerWithError:(id)error
{
  authorizationDelegateTransactionErrorHandler = self->_authorizationDelegateTransactionErrorHandler;
  if (authorizationDelegateTransactionErrorHandler)
  {
    authorizationDelegateTransactionErrorHandler[2](authorizationDelegateTransactionErrorHandler, error);
    v5 = self->_authorizationDelegateTransactionErrorHandler;
    self->_authorizationDelegateTransactionErrorHandler = 0;
  }
}

- (id)_clinicalAuthorizationPresentationRequestForRecord:(id)record
{
  typesRequiringReadAuthorization = [record typesRequiringReadAuthorization];
  v5 = [HKObjectType _clinicalTypesFromTypes:typesRequiringReadAuthorization];

  if ([v5 count])
  {
    v6 = objc_alloc_init(HKAuthorizationPresentationRequest);
    [(HKAuthorizationPresentationRequest *)v6 setType:0];
    _clientClinicalReadAuthorizationUsageDescription = [(HKHealthStoreImplementation *)self _clientClinicalReadAuthorizationUsageDescription];
    [(HKAuthorizationPresentationRequest *)v6 setReadUsageDescription:_clientClinicalReadAuthorizationUsageDescription];

    _researchStudyUsageDescription = [(HKHealthStoreImplementation *)self _researchStudyUsageDescription];
    [(HKAuthorizationPresentationRequest *)v6 setResearchStudyUsageDescription:_researchStudyUsageDescription];

    [(HKAuthorizationPresentationRequest *)v6 setTypesRequiringReadAuthorization:v5];
    [(HKAuthorizationPresentationRequest *)v6 setDismissWhenBackgrounded:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_healthDataAuthorizationPresentationRequestForRecord:(id)record
{
  recordCopy = record;
  typesRequiringReadAuthorization = [recordCopy typesRequiringReadAuthorization];
  v6 = [HKObjectType _nonClinicalTypesFromTypes:typesRequiringReadAuthorization];

  typesRequiringShareAuthorization = [recordCopy typesRequiringShareAuthorization];

  v8 = [HKObjectType _nonClinicalTypesFromTypes:typesRequiringShareAuthorization];

  if ([v6 count] || objc_msgSend(v8, "count"))
  {
    v9 = objc_alloc_init(HKAuthorizationPresentationRequest);
    [(HKAuthorizationPresentationRequest *)v9 setType:1];
    _clientReadAuthorizationUsageDescription = [(HKHealthStoreImplementation *)self _clientReadAuthorizationUsageDescription];
    [(HKAuthorizationPresentationRequest *)v9 setReadUsageDescription:_clientReadAuthorizationUsageDescription];

    _clientWriteAuthorizationUsageDescription = [(HKHealthStoreImplementation *)self _clientWriteAuthorizationUsageDescription];
    [(HKAuthorizationPresentationRequest *)v9 setShareUsageDescription:_clientWriteAuthorizationUsageDescription];

    _researchStudyUsageDescription = [(HKHealthStoreImplementation *)self _researchStudyUsageDescription];
    [(HKAuthorizationPresentationRequest *)v9 setResearchStudyUsageDescription:_researchStudyUsageDescription];

    [(HKAuthorizationPresentationRequest *)v9 setTypesRequiringReadAuthorization:v6];
    [(HKAuthorizationPresentationRequest *)v9 setTypesRequiringShareAuthorization:v8];
    [(HKAuthorizationPresentationRequest *)v9 setDismissWhenBackgrounded:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_perObjectAuthorizationPresentationRequestForSession:(id)session
{
  sessionCopy = session;
  v5 = objc_alloc_init(HKAuthorizationPresentationRequest);
  [(HKAuthorizationPresentationRequest *)v5 setType:2];
  _clientReadAuthorizationUsageDescription = [(HKHealthStoreImplementation *)self _clientReadAuthorizationUsageDescription];
  [(HKAuthorizationPresentationRequest *)v5 setReadUsageDescription:_clientReadAuthorizationUsageDescription];

  objectType = [sessionCopy objectType];

  if (objectType)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:objectType];
    [(HKAuthorizationPresentationRequest *)v5 setTypesRequiringReadAuthorization:v8];
  }

  [(HKAuthorizationPresentationRequest *)v5 setDismissWhenBackgrounded:0];

  return v5;
}

- (void)clientRemote_presentAuthorizationWithRequestRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__HKHealthStoreImplementation_clientRemote_presentAuthorizationWithRequestRecord_completion___block_invoke;
  aBlock[3] = &unk_1E7376910;
  v21 = completionCopy;
  v9 = _Block_copy(aBlock);
  if (recordCopy)
  {
    v10 = +[_HKBehavior sharedBehavior];
    isAppleWatch = [v10 isAppleWatch];

    if (!_HKCurrentTaskIsAppExtension() || (isAppleWatch & 1) != 0)
    {
      clientQueue = self->_clientQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __93__HKHealthStoreImplementation_clientRemote_presentAuthorizationWithRequestRecord_completion___block_invoke_2;
      v17[3] = &unk_1E73766C8;
      v17[4] = self;
      v18 = recordCopy;
      v19 = v9;
      dispatch_async(clientQueue, v17);

      goto LABEL_8;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = objc_opt_class();
    v14 = @"Cannot present authorization prompt from a non-Watch app extension.";
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = objc_opt_class();
    v14 = @"Invalid authorization request record.";
  }

  v15 = [v12 hk_errorForInvalidArgument:@"@" class:v13 selector:a2 format:v14];
  (*(v9 + 2))(v9, 0, v15);

LABEL_8:
}

uint64_t __93__HKHealthStoreImplementation_clientRemote_presentAuthorizationWithRequestRecord_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __93__HKHealthStoreImplementation_clientRemote_presentAuthorizationWithRequestRecord_completion___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 376) || (_HKCreateAuthorizationPresentationController(), v2 = objc_claimAutoreleasedReturnValue(), v3 = *(a1 + 32), v4 = *(v3 + 376), *(v3 + 376) = v2, v4, *(*(a1 + 32) + 376)))
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [*(a1 + 32) _clinicalAuthorizationPresentationRequestForRecord:*(a1 + 40)];
    if (v5)
    {
      [v13 addObject:v5];
    }

    v6 = [*(a1 + 32) _healthDataAuthorizationPresentationRequestForRecord:*(a1 + 40)];
    if (v6)
    {
      [v13 addObject:v6];
    }

    if ([v13 count])
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(v7 + 376);
      WeakRetained = objc_loadWeakRetained((v7 + 544));
      [v9 presentWithPresentationRequests:v13 authorizationRequestRecord:v8 authorizationViewControllerPresenter:WeakRetained completion:*(a1 + 48)];
    }

    else
    {
      v11 = *(a1 + 48);
      WeakRetained = [MEMORY[0x1E696ABC0] hk_error:100 description:@"Failed to create authorization presentation requests"];
      (*(v11 + 16))(v11, 0, WeakRetained);
    }
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"Failed to create authorization presentation controller"];
    (*(v12 + 16))(v12, 0);
  }
}

- (void)clientRemote_presentAuthorizationWithSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  clientQueue = self->_clientQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__HKHealthStoreImplementation_clientRemote_presentAuthorizationWithSession_completion___block_invoke;
  v12[3] = &unk_1E7378B70;
  v12[4] = self;
  v13 = sessionCopy;
  v14 = completionCopy;
  v15 = a2;
  v10 = completionCopy;
  v11 = sessionCopy;
  dispatch_async(clientQueue, v12);
}

uint64_t __87__HKHealthStoreImplementation_clientRemote_presentAuthorizationWithSession_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 536);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(v2 + 16);

    return v5();
  }

  if (_HKCurrentTaskIsAppExtension())
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 56) format:@"Cannot present document authorization prompt from app extension."];
  }

  else
  {
    if (*(*(a1 + 32) + 384) || (_HKCreateObjectPickerPresentationController(), v10 = objc_claimAutoreleasedReturnValue(), v11 = *(a1 + 32), v12 = *(v11 + 384), *(v11 + 384) = v10, v12, *(*(a1 + 32) + 384)))
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = [*(a1 + 32) _perObjectAuthorizationPresentationRequestForSession:*(a1 + 40)];
      if (v14)
      {
        [v13 addObject:v14];
      }

      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = *(v15 + 384);
      WeakRetained = objc_loadWeakRetained((v15 + 544));
      [v17 presentWithSession:v16 presentationRequests:v13 authorizationViewControllerPresenter:WeakRetained completion:*(a1 + 48)];

      goto LABEL_16;
    }

    v8 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"Failed to create document authorization presentation controller"];
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    if (v8)
    {
      (*(v9 + 16))(v9, 0);
      goto LABEL_17;
    }

    v13 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"Unknown error"];
    (*(v9 + 16))(v9, 0, v13);
LABEL_16:
  }

LABEL_17:

  return MEMORY[0x1EEE66BE0]();
}

- (void)setUnitTest_presentAuthorizationWithSessionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  impl_unitTest_presentAuthorizationWithSessionHandler = self->_impl_unitTest_presentAuthorizationWithSessionHandler;
  self->_impl_unitTest_presentAuthorizationWithSessionHandler = v4;

  MEMORY[0x1EEE66BB8](v4, impl_unitTest_presentAuthorizationWithSessionHandler);
}

- (void)saveObject:(id)object withCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  objectCopy2 = object;
  v9 = [v6 arrayWithObjects:&objectCopy count:1];

  [(HKHealthStoreImplementation *)self saveObjects:v9 withCompletion:completionCopy, objectCopy, v12];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)saveObjects:(id)objects withCompletion:(id)completion
{
  completionCopy = completion;
  objectsCopy = objects;
  -[HKHealthStoreImplementation _saveObjects:atomically:skipInsertionFilter:completion:](self, "_saveObjects:atomically:skipInsertionFilter:completion:", objectsCopy, [objectsCopy count] < 0x5DC, 0, completionCopy);
}

- (void)_saveObjects:(id)objects atomically:(BOOL)atomically skipInsertionFilter:(BOOL)filter completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  completionCopy = completion;
  _HKInitializeLogging();
  v12 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    *buf = 134217984;
    v28 = [objectsCopy count];
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "Saving %lu objects", buf, 0xCu);
  }

  v14 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];

  v26 = 0;
  v15 = [(HKHealthStoreImplementation *)self _prepareObjectsForSaving:objectsCopy errorOut:&v26];
  v16 = v26;
  if (v15)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__HKHealthStoreImplementation__saveObjects_atomically_skipInsertionFilter_completion___block_invoke;
    v20[3] = &unk_1E7378B98;
    atomicallyCopy = atomically;
    v21 = objectsCopy;
    filterCopy = filter;
    selfCopy = self;
    v23 = v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __86__HKHealthStoreImplementation__saveObjects_atomically_skipInsertionFilter_completion___block_invoke_2;
    v18[3] = &unk_1E7376960;
    v19 = v23;
    [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v20 errorHandler:v18];
  }

  else
  {
    (v14)[2](v14, 0, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __86__HKHealthStoreImplementation__saveObjects_atomically_skipInsertionFilter_completion___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 56) != 1)
  {
    return [*(a1 + 40) _sendNextObjectBatch:*(a1 + 32) skipInsertionFilter:*(a1 + 57) lastRange:0 server:0 transaction:a2 completion:{0, *(a1 + 48)}];
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 57);
  v5 = *(a1 + 48);

  return [a2 remote_saveDataObjects:v3 skipInsertionFilter:v4 creationDateOverride:0 handler:v5];
}

void __112__HKHealthStoreImplementation__sendNextObjectBatch_skipInsertionFilter_lastRange_server_transaction_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v8 = a2;
  v7 = a4;
  if (a3)
  {
    [*(a1 + 32) _saveObjects:*(a1 + 40) atomically:1 skipInsertionFilter:*(a1 + 80) completion:*(a1 + 56)];
  }

  else if (v8 && (*(a1 + 81) & 1) == 0)
  {
    [*(a1 + 32) _sendNextObjectBatch:*(a1 + 40) skipInsertionFilter:*(a1 + 80) lastRange:*(a1 + 64) server:*(a1 + 72) transaction:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))(*(a1 + 56), v7 == 0, v7);
  }
}

- (void)deleteObject:(id)object withCompletion:(id)completion
{
  v10[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  completionCopy = completion;
  if (!objectCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "dataObject"}];
  }

  v10[0] = objectCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(HKHealthStoreImplementation *)self _deleteObjects:v8 options:0 completion:completionCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_deleteObjects:(id)objects options:(unint64_t)options completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  completionCopy = completion;
  _HKInitializeLogging();
  v10 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 134218240;
    v23 = [objectsCopy count];
    v24 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "Deleting %lu objects, options %lu", buf, 0x16u);
  }

  v12 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__HKHealthStoreImplementation__deleteObjects_options_completion___block_invoke;
  v18[3] = &unk_1E7378888;
  v19 = objectsCopy;
  optionsCopy2 = options;
  v20 = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__HKHealthStoreImplementation__deleteObjects_options_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v20;
  v13 = v20;
  v14 = objectsCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v18 errorHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)deleteObject:(id)object options:(unint64_t)options withCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v8 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  objectCopy2 = object;
  v11 = [v8 arrayWithObjects:&objectCopy count:1];

  [(HKHealthStoreImplementation *)self _deleteObjects:v11 options:options completion:completionCopy, objectCopy, v14];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)deleteObjectsOfType:(id)type predicate:(id)predicate options:(unint64_t)options withCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  predicateCopy = predicate;
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKHealthStoreImplementation deleteObjectsOfType:predicate:options:withCompletion:];
  }

  _HKInitializeLogging();
  v13 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = typeCopy;
    v29 = 2048;
    optionsCopy = options;
    v31 = 2112;
    v32 = predicateCopy;
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "Deleting objects of type %@ with options %lu, predicate %@", buf, 0x20u);
  }

  if (HKProgramSDKAtLeast())
  {
    if (typeCopy)
    {
      if (predicateCopy)
      {
        goto LABEL_8;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "objectType"}];
      if (predicateCopy)
      {
        goto LABEL_8;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "predicate"}];
  }

LABEL_8:
  v14 = [MEMORY[0x1E695DFD8] setWithObject:typeCopy];
  v15 = [predicateCopy hk_filterRepresentationForDataTypes:v14];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__HKHealthStoreImplementation_deleteObjectsOfType_predicate_options_withCompletion___block_invoke;
  v22[3] = &unk_1E7378860;
  v23 = typeCopy;
  v24 = v15;
  optionsCopy2 = options;
  v25 = completionCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__HKHealthStoreImplementation_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_3;
  v20[3] = &unk_1E7376960;
  v21 = v25;
  v16 = v25;
  v17 = v15;
  v18 = typeCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v22 errorHandler:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __84__HKHealthStoreImplementation_deleteObjectsOfType_predicate_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__HKHealthStoreImplementation_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_2;
  v6[3] = &unk_1E73842B8;
  v5 = *(a1 + 56);
  v7 = *(a1 + 48);
  [a2 remote_deleteDataObjectsOfType:v3 matchingFilter:v4 options:v5 handler:v6];
}

- (void)_addQuery:(id)query
{
  queryCopy = query;
  os_unfair_lock_lock(&self->_lock);
  queries = self->_queries;
  if (!queries)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_queries;
    self->_queries = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    pendingActivationQueries = self->_pendingActivationQueries;
    self->_pendingActivationQueries = v8;

    queries = self->_queries;
  }

  [(NSMutableSet *)queries addObject:queryCopy];
  [(NSMutableSet *)self->_pendingActivationQueries addObject:queryCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeQuery:(id)query
{
  queryCopy = query;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_queries removeObject:queryCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeQueryFromPendingActivationQueries:(id)queries
{
  queriesCopy = queries;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_pendingActivationQueries removeObject:queriesCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)executeQuery:(id)query queue:(id)queue activationHandler:(id)handler
{
  queryCopy = query;
  queueCopy = queue;
  handlerCopy = handler;
  if (!queryCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "query"}];
  }

  Current = CFAbsoluteTimeGetCurrent();
  impl_unitTest_handleExecuteQuery = self->_impl_unitTest_handleExecuteQuery;
  if (impl_unitTest_handleExecuteQuery)
  {
    impl_unitTest_handleExecuteQuery[2](impl_unitTest_handleExecuteQuery, queryCopy);
  }

  [(HKHealthStoreImplementation *)self _addQuery:queryCopy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__HKHealthStoreImplementation_executeQuery_queue_activationHandler___block_invoke;
  v15[3] = &unk_1E7378928;
  v15[4] = self;
  v13 = queryCopy;
  v16 = v13;
  v14 = handlerCopy;
  v17 = v14;
  [v13 activateWithClientQueue:queueCopy healthStore:self delegate:self time:v15 completion:Current];
  [(HKHealthStoreImplementation *)self _removeQueryFromPendingActivationQueries:v13];
}

uint64_t __68__HKHealthStoreImplementation_executeQuery_queue_activationHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _removeQuery:*(a1 + 40)];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v7);
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)stopQuery:(id)query
{
  if (query)
  {
    queryCopy = query;
    [(HKHealthStoreImplementation *)self _removeQuery:queryCopy];
    [queryCopy deactivate];
  }
}

- (id)_queries
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_queries copy];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  v5 = v4;

  return v5;
}

- (id)_activeQueries
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_queries mutableCopy];
  v4 = [(NSMutableSet *)self->_pendingActivationQueries copy];
  os_unfair_lock_unlock(&self->_lock);
  [v3 minusSet:v4];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  return v6;
}

- (void)_dateOfBirthWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__HKHealthStoreImplementation__dateOfBirthWithCompletion___block_invoke;
  v7[3] = &unk_1E7378CB0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 withCompletion:v7];
}

- (id)dateOfBirthWithError:(id *)error
{
  v3 = [(HKHealthStoreImplementation *)self dateOfBirthComponentsWithError:error];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v5 = [v4 dateFromComponents:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dateOfBirthComponentsWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:error];

  return v6;
}

- (BOOL)_setDateOfBirthComponents:(id)components error:(id *)error
{
  componentsCopy = components;
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:componentsCopy forDataType:v7 error:error];

  return error;
}

- (void)_biologicalSexWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__HKHealthStoreImplementation__biologicalSexWithCompletion___block_invoke;
  v7[3] = &unk_1E7378978;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 withCompletion:v7];
}

void __60__HKHealthStoreImplementation__biologicalSexWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if (v8)
    {
      v7 = [v8 integerValue];
    }

    else
    {
      v7 = 0;
    }

    v6 = [[HKBiologicalSexObject alloc] _initWithBiologicalSex:v7];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)biologicalSexWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
  v13 = 0;
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (error)
    {
      v10 = 0;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError(v9);
      v10 = 0;
    }
  }

  else
  {
    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v10 = [[HKBiologicalSexObject alloc] _initWithBiologicalSex:integerValue];
  }

  return v10;
}

- (BOOL)_setBiologicalSex:(int64_t)sex error:(id *)error
{
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:sex];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:v8 forDataType:v7 error:error];

  return error;
}

- (void)_bloodTypeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBloodType"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__HKHealthStoreImplementation__bloodTypeWithCompletion___block_invoke;
  v7[3] = &unk_1E7378978;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 withCompletion:v7];
}

void __56__HKHealthStoreImplementation__bloodTypeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if (v8)
    {
      v7 = [v8 integerValue];
    }

    else
    {
      v7 = 0;
    }

    v6 = [[HKBloodTypeObject alloc] _initWithBloodType:v7];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)bloodTypeWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBloodType"];
  v13 = 0;
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (error)
    {
      v10 = 0;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError(v9);
      v10 = 0;
    }
  }

  else
  {
    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v10 = [[HKBloodTypeObject alloc] _initWithBloodType:integerValue];
  }

  return v10;
}

- (BOOL)_setBloodType:(int64_t)type error:(id *)error
{
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBloodType"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:v8 forDataType:v7 error:error];

  return error;
}

- (void)_fitzpatrickSkinTypeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierFitzpatrickSkinType"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__HKHealthStoreImplementation__fitzpatrickSkinTypeWithCompletion___block_invoke;
  v7[3] = &unk_1E7378978;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 withCompletion:v7];
}

void __66__HKHealthStoreImplementation__fitzpatrickSkinTypeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if (v8)
    {
      v7 = [v8 integerValue];
    }

    else
    {
      v7 = 0;
    }

    v6 = [[HKFitzpatrickSkinTypeObject alloc] _initWithSkinType:v7];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)fitzpatrickSkinTypeWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierFitzpatrickSkinType"];
  v13 = 0;
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (error)
    {
      v10 = 0;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError(v9);
      v10 = 0;
    }
  }

  else
  {
    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v10 = [[HKFitzpatrickSkinTypeObject alloc] _initWithSkinType:integerValue];
  }

  return v10;
}

- (BOOL)_setFitzpatrickSkinType:(int64_t)type error:(id *)error
{
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierFitzpatrickSkinType"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:v8 forDataType:v7 error:error];

  return error;
}

- (void)_wheelchairUseWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierWheelchairUse"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__HKHealthStoreImplementation__wheelchairUseWithCompletion___block_invoke;
  v7[3] = &unk_1E7378978;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 withCompletion:v7];
}

void __60__HKHealthStoreImplementation__wheelchairUseWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if (v8)
    {
      v7 = [v8 integerValue];
    }

    else
    {
      v7 = 0;
    }

    v6 = [[HKWheelchairUseObject alloc] _initWithWheelchairUse:v7];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)wheelchairUseWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierWheelchairUse"];
  v13 = 0;
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (error)
    {
      v10 = 0;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError(v9);
      v10 = 0;
    }
  }

  else
  {
    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v10 = [[HKWheelchairUseObject alloc] _initWithWheelchairUse:integerValue];
  }

  return v10;
}

- (BOOL)_setWheelchairUse:(int64_t)use error:(id *)error
{
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierWheelchairUse"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:use];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:v8 forDataType:v7 error:error];

  return error;
}

- (id)_cardioFitnessMedicationsUseWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierCardioFitnessMedicationsUse"];
  v13 = 0;
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (error)
    {
      v10 = 0;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError(v9);
      v10 = 0;
    }
  }

  else
  {
    if (v6)
    {
      unsignedIntValue = [v6 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }

    v10 = [[HKCardioFitnessMedicationsUseObject alloc] _initWithCardioFitnessMedicationsUseOptions:unsignedIntValue];
  }

  return v10;
}

- (BOOL)_setCardioFitnessMedicationsUse:(unint64_t)use error:(id *)error
{
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierCardioFitnessMedicationsUse"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:use];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:v8 forDataType:v7 error:error];

  return error;
}

- (id)_bodyMassCharacteristicQuantityWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBodyMass"];
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:error];

  return v6;
}

- (BOOL)_setBodyMassCharacteristicQuantity:(id)quantity error:(id *)error
{
  quantityCopy = quantity;
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBodyMass"];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:quantityCopy forDataType:v7 error:error];

  return error;
}

- (id)_leanBodyMassCharacteristicQuantityWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierLeanBodyMass"];
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:error];

  return v6;
}

- (BOOL)_setLeanBodyMassCharacteristicQuantity:(id)quantity error:(id *)error
{
  quantityCopy = quantity;
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierLeanBodyMass"];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:quantityCopy forDataType:v7 error:error];

  return error;
}

- (id)_heightCharacteristicQuantityWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierHeight"];
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:error];

  return v6;
}

- (BOOL)_setHeightCharacteristicQuantity:(id)quantity error:(id *)error
{
  quantityCopy = quantity;
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierHeight"];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:quantityCopy forDataType:v7 error:error];

  return error;
}

- (id)_userEnteredMenstrualCycleLengthCharacteristicQuantityWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualCycleLength"];
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:error];

  return v6;
}

- (BOOL)_setUserEnteredMenstrualCycleLengthCharacteristicQuantity:(id)quantity error:(id *)error
{
  quantityCopy = quantity;
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualCycleLength"];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:quantityCopy forDataType:v7 error:error];

  return error;
}

- (id)_userEnteredMenstrualPeriodLengthCharacteristicQuantityWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualPeriodLength"];
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:error];

  return v6;
}

- (BOOL)_setUserEnteredMenstrualPeriodLengthCharacteristicQuantity:(id)quantity error:(id *)error
{
  quantityCopy = quantity;
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualPeriodLength"];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:quantityCopy forDataType:v7 error:error];

  return error;
}

- (void)_activityMoveModeObjectWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__HKHealthStoreImplementation__activityMoveModeObjectWithCompletion___block_invoke;
  v7[3] = &unk_1E7378978;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 withCompletion:v7];
}

void __69__HKHealthStoreImplementation__activityMoveModeObjectWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    if (v8)
    {
      v7 = [v8 integerValue];
    }

    else
    {
      v7 = 0;
    }

    v6 = [[HKActivityMoveModeObject alloc] _initWithActivityMoveMode:v7];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)activityMoveModeWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
  v13 = 0;
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (error)
    {
      v10 = 0;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError(v9);
      v10 = 0;
    }
  }

  else
  {
    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = 1;
    }

    v10 = [[HKActivityMoveModeObject alloc] _initWithActivityMoveMode:integerValue];
  }

  return v10;
}

- (id)_activityMoveModeWithError:(id *)error
{
  v5 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
  v6 = [(HKHealthStoreImplementation *)self _characteristicForDataType:v5 error:error];

  return v6;
}

- (BOOL)_setActivityMoveMode:(int64_t)mode error:(id *)error
{
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  LOBYTE(error) = [(HKHealthStoreImplementation *)self _setCharacteristic:v8 forDataType:v7 error:error];

  return error;
}

- (void)_characteristicForDataType:(id)type withCompletion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    [v9 raise:v10 format:{@"%@: Invalid data type %@, expected data type of class %@ in %@", v11, typeCopy, v12, v13}];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__HKHealthStoreImplementation__characteristicForDataType_withCompletion___block_invoke;
  v18[3] = &unk_1E7378AF8;
  v19 = typeCopy;
  v20 = completionCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__HKHealthStoreImplementation__characteristicForDataType_withCompletion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v20;
  v14 = v20;
  v15 = typeCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v18 errorHandler:v16];
}

- (id)_characteristicForDataType:(id)type error:(id *)error
{
  typeCopy = type;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    [v8 raise:v9 format:{@"%@: Invalid data type %@, expected data type of class %@ in %@", v10, typeCopy, v11, v12}];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__52;
  v35 = __Block_byref_object_dispose__52;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__52;
  v29 = __Block_byref_object_dispose__52;
  v30 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HKHealthStoreImplementation__characteristicForDataType_error___block_invoke;
  aBlock[3] = &unk_1E7378CD8;
  aBlock[4] = &v31;
  aBlock[5] = &v25;
  v13 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__HKHealthStoreImplementation__characteristicForDataType_error___block_invoke_2;
  v22[3] = &unk_1E7376960;
  v14 = v13;
  v23 = v14;
  v15 = [(HKHealthStoreImplementation *)self _synchronousServerProxyWithErrorHandler:v22];
  [v15 remote_fetchCharacteristicWithDataType:typeCopy handler:v14];
  v16 = v32[5];
  if (!v16)
  {
    v17 = v26[5];
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError(v17);
      }
    }

    v16 = v32[5];
  }

  v20 = v16;

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v20;
}

void __64__HKHealthStoreImplementation__characteristicForDataType_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_setCharacteristic:(id)characteristic forDataType:(id)type error:(id *)error
{
  characteristicCopy = characteristic;
  typeCopy = type;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = NSStringFromSelector(a2);
    [v11 raise:v12 format:{@"%@: Invalid data type %@, expected data type of class %@ in %@", v13, typeCopy, v14, v15}];
  }

  if ([typeCopy _validateCharacteristic:characteristicCopy error:error])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__52;
    v32 = __Block_byref_object_dispose__52;
    v33 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__HKHealthStoreImplementation__setCharacteristic_forDataType_error___block_invoke;
    v23[3] = &unk_1E7378D00;
    v23[4] = &v28;
    v23[5] = &v24;
    v16 = [(HKHealthStoreImplementation *)self _synchronousServerProxyWithErrorHandler:v23];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__HKHealthStoreImplementation__setCharacteristic_forDataType_error___block_invoke_2;
    v22[3] = &unk_1E7378D28;
    v22[4] = &v24;
    v22[5] = &v28;
    [v16 remote_setCharacteristic:characteristicCopy forDataType:typeCopy handler:v22];
    v17 = v29[5];
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError(v17);
      }
    }

    v20 = *(v25 + 24);
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

void __68__HKHealthStoreImplementation__setCharacteristic_forDataType_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

- (id)_modificationDateForCharacteristicWithType:(id)type error:(id *)error
{
  typeCopy = type;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    [v8 raise:v9 format:{@"%@: Invalid data type %@, expected data type of class %@ in %@", v10, typeCopy, v11, v12}];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__52;
  v31 = __Block_byref_object_dispose__52;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__52;
  v25 = __Block_byref_object_dispose__52;
  v26 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__HKHealthStoreImplementation__modificationDateForCharacteristicWithType_error___block_invoke;
  v20[3] = &unk_1E7378D00;
  v20[4] = &v27;
  v20[5] = &v21;
  v13 = [(HKHealthStoreImplementation *)self _synchronousServerProxyWithErrorHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__HKHealthStoreImplementation__modificationDateForCharacteristicWithType_error___block_invoke_2;
  v19[3] = &unk_1E7378D50;
  v19[4] = &v21;
  v19[5] = &v27;
  [v13 remote_fetchModificationDateForCharacteristicWithDataType:typeCopy handler:v19];
  v14 = v28[5];
  v15 = v14;
  if (v14)
  {
    if (error)
    {
      v16 = v14;
      *error = v15;
    }

    else
    {
      _HKLogDroppedError(v14);
    }
  }

  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v17;
}

void __80__HKHealthStoreImplementation__modificationDateForCharacteristicWithType_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void __80__HKHealthStoreImplementation__modificationDateForCharacteristicWithType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_supportsFeature:(unint64_t)feature
{
  featureCopy = feature;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__HKHealthStoreImplementation__supportsFeature___block_invoke;
  v7[3] = &unk_1E7378D78;
  v7[4] = &v8;
  v7[5] = feature;
  v4 = [(HKHealthStoreImplementation *)self _synchronousServerProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__HKHealthStoreImplementation__supportsFeature___block_invoke_550;
  v6[3] = &unk_1E7378DA0;
  v6[4] = &v8;
  v6[5] = featureCopy;
  [v4 remote_getIsFeatureSetAvailable:featureCopy completion:v6];
  LOBYTE(featureCopy) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return featureCopy;
}

void __48__HKHealthStoreImplementation__supportsFeature___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    __34__HKHealthStore__supportsFeature___block_invoke_cold_1(a1);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void __48__HKHealthStoreImplementation__supportsFeature___block_invoke_550(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2 == 1;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      __34__HKHealthStore__supportsFeature___block_invoke_cold_1(a1);
    }
  }
}

- (void)addSamples:(id)samples toWorkout:(id)workout completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  workoutCopy = workout;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [samplesCopy count];
    uUID = [workoutCopy UUID];
    uUIDString = [uUID UUIDString];
    *buf = 134218242;
    v28 = v13;
    v29 = 2114;
    v30 = uUIDString;
    _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "Adding %lu samples to workout %{public}@", buf, 0x16u);
  }

  v16 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __63__HKHealthStoreImplementation_addSamples_toWorkout_completion___block_invoke;
  v23[3] = &unk_1E73788D8;
  v24 = samplesCopy;
  v25 = workoutCopy;
  v26 = v16;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__HKHealthStoreImplementation_addSamples_toWorkout_completion___block_invoke_2;
  v21[3] = &unk_1E7376960;
  v22 = v26;
  v17 = v26;
  v18 = workoutCopy;
  v19 = samplesCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v23 errorHandler:v21];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_replaceWorkout:(id)workout withWorkout:(id)withWorkout completion:(id)completion
{
  workoutCopy = workout;
  withWorkoutCopy = withWorkout;
  v10 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completion];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__HKHealthStoreImplementation__replaceWorkout_withWorkout_completion___block_invoke;
  v16[3] = &unk_1E73788D8;
  v17 = workoutCopy;
  v18 = withWorkoutCopy;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__HKHealthStoreImplementation__replaceWorkout_withWorkout_completion___block_invoke_2;
  v14[3] = &unk_1E7376960;
  v15 = v19;
  v11 = v19;
  v12 = withWorkoutCopy;
  v13 = workoutCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v16 errorHandler:v14];
}

- (void)startWorkoutSession:(id)session
{
  sessionCopy = session;
  [sessionCopy _setupWithHealthStore:self];
  date = [MEMORY[0x1E695DF00] date];
  [sessionCopy startActivityWithDate:date completion:&__block_literal_global_553];
}

void __51__HKHealthStoreImplementation_startWorkoutSession___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __37__HKHealthStore_startWorkoutSession___block_invoke_cold_1();
    }
  }
}

- (void)endWorkoutSession:(id)session
{
  sessionCopy = session;
  [sessionCopy _setupWithHealthStore:self];
  [sessionCopy endWithCompletion:&__block_literal_global_555];
}

void __49__HKHealthStoreImplementation_endWorkoutSession___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __35__HKHealthStore_endWorkoutSession___block_invoke_cold_1();
    }
  }
}

- (void)pauseWorkoutSession:(id)session
{
  sessionCopy = session;
  [sessionCopy _setupWithHealthStore:self];
  [sessionCopy pauseWithCompletion:&__block_literal_global_557];
}

void __51__HKHealthStoreImplementation_pauseWorkoutSession___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __35__HKHealthStore_endWorkoutSession___block_invoke_cold_1();
    }
  }
}

- (void)resumeWorkoutSession:(id)session
{
  sessionCopy = session;
  [sessionCopy _setupWithHealthStore:self];
  [sessionCopy resumeWithCompletion:&__block_literal_global_559];
}

void __52__HKHealthStoreImplementation_resumeWorkoutSession___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __35__HKHealthStore_endWorkoutSession___block_invoke_cold_1();
    }
  }
}

- (void)startWatchAppWithWorkoutConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  _HKInitializeLogging();
  v8 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "Requesting watch workout app launch with configuration", buf, 2u);
  }

  v9 = +[_HKBehavior sharedBehavior];
  if ([v9 isiPad])
  {
  }

  else
  {
    v10 = +[_HKBehavior sharedBehavior];
    isRealityDevice = [v10 isRealityDevice];

    if (!isRealityDevice)
    {
      v13 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __80__HKHealthStoreImplementation_startWatchAppWithWorkoutConfiguration_completion___block_invoke;
      v16[3] = &unk_1E7378AF8;
      v17 = configurationCopy;
      v18 = v13;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __80__HKHealthStoreImplementation_startWatchAppWithWorkoutConfiguration_completion___block_invoke_2;
      v14[3] = &unk_1E7376960;
      completionCopy = v18;
      v15 = completionCopy;
      [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v16 errorHandler:v14];

      v12 = v17;
      goto LABEL_8;
    }
  }

  v12 = [MEMORY[0x1E696ABC0] hk_error:2 description:@"Starting a workout from this device is not supported."];
  (*(completionCopy + 2))(completionCopy, 0, v12);
LABEL_8:
}

- (void)_startWatchAppWithWorkoutPlanData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  _HKInitializeLogging();
  v8 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "Requesting Apple watch workout app launch with workoutPlanData", buf, 2u);
  }

  v9 = +[_HKBehavior sharedBehavior];
  if ([v9 isiPad])
  {
  }

  else
  {
    v10 = +[_HKBehavior sharedBehavior];
    isRealityDevice = [v10 isRealityDevice];

    if (!isRealityDevice)
    {
      v13 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__HKHealthStoreImplementation__startWatchAppWithWorkoutPlanData_completion___block_invoke;
      v16[3] = &unk_1E7378AF8;
      v17 = dataCopy;
      v18 = v13;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __76__HKHealthStoreImplementation__startWatchAppWithWorkoutPlanData_completion___block_invoke_2;
      v14[3] = &unk_1E7376960;
      completionCopy = v18;
      v15 = completionCopy;
      [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v16 errorHandler:v14];

      v12 = v17;
      goto LABEL_8;
    }
  }

  v12 = [MEMORY[0x1E696ABC0] hk_error:2 description:@"Starting a workout from this device is not supported."];
  (*(completionCopy + 2))(completionCopy, 0, v12);
LABEL_8:
}

- (void)_startWatchAppWithMirroredStartData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  _HKInitializeLogging();
  v8 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "Requesting Apple watch workout app launch with mirroredStartData", buf, 2u);
  }

  v9 = +[_HKBehavior sharedBehavior];
  if ([v9 isiPad])
  {
  }

  else
  {
    v10 = +[_HKBehavior sharedBehavior];
    isRealityDevice = [v10 isRealityDevice];

    if (!isRealityDevice)
    {
      v13 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78__HKHealthStoreImplementation__startWatchAppWithMirroredStartData_completion___block_invoke;
      v16[3] = &unk_1E7378AF8;
      v17 = dataCopy;
      v18 = v13;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __78__HKHealthStoreImplementation__startWatchAppWithMirroredStartData_completion___block_invoke_2;
      v14[3] = &unk_1E7376960;
      completionCopy = v18;
      v15 = completionCopy;
      [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v16 errorHandler:v14];

      v12 = v17;
      goto LABEL_8;
    }
  }

  v12 = [MEMORY[0x1E696ABC0] hk_error:2 description:@"Starting a workout from this device is not supported."];
  (*(completionCopy + 2))(completionCopy, 0, v12);
LABEL_8:
}

- (void)recoverActiveWorkoutSessionWithCompletion:(id)completion
{
  v4 = [(HKHealthStoreImplementation *)self _objectCompletionOnClientQueue:completion];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__HKHealthStoreImplementation_recoverActiveWorkoutSessionWithCompletion___block_invoke;
  v8[3] = &unk_1E7378E18;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__HKHealthStoreImplementation_recoverActiveWorkoutSessionWithCompletion___block_invoke_5;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v8 errorHandler:v6];
}

void __73__HKHealthStoreImplementation_recoverActiveWorkoutSessionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__HKHealthStoreImplementation_recoverActiveWorkoutSessionWithCompletion___block_invoke_2;
  v5[3] = &unk_1E7378DF0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 remote_recoverActiveWorkoutSessionWithCompletion:v5];
}

void __73__HKHealthStoreImplementation_recoverActiveWorkoutSessionWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    [v7 setRequiresRecovery:1];
    v10 = [HKWorkoutSession alloc];
    v11 = *(a1 + 32);
    v22 = 0;
    v12 = [(HKWorkoutSession *)v10 _initWithHealthStore:v11 taskConfiguration:v7 error:&v22];
    v13 = v22;
    if (v12)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __73__HKHealthStoreImplementation_recoverActiveWorkoutSessionWithCompletion___block_invoke_3;
      v16[3] = &unk_1E7378DC8;
      v21 = *(a1 + 40);
      v17 = v8;
      v14 = v12;
      v15 = *(a1 + 32);
      v18 = v14;
      v19 = v15;
      v20 = v9;
      [v14 _recoverWithCompletion:v16];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __73__HKHealthStoreImplementation_recoverActiveWorkoutSessionWithCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v8 = *(*(a1 + 64) + 16);
LABEL_7:
    v8();
    goto LABEL_10;
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    v9 = *(a1 + 40);
    v8 = *(*(a1 + 64) + 16);
    goto LABEL_7;
  }

  [v6 setRequiresRecovery:1];
  v7 = [[HKLiveWorkoutBuilder alloc] initWithHealthStore:*(a1 + 48) session:*(a1 + 40) builderConfiguration:*(a1 + 32) builderIdentifier:*(a1 + 56)];
  if (v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__HKHealthStoreImplementation_recoverActiveWorkoutSessionWithCompletion___block_invoke_4;
    v11[3] = &unk_1E7378928;
    v12 = *(a1 + 40);
    v13 = v7;
    v14 = *(a1 + 64);
    [(HKWorkoutBuilder *)v13 _recoverWithCompletion:v11];
  }

  else
  {
    v10 = *(a1 + 40);
    (*(*(a1 + 64) + 16))();
  }

LABEL_10:
}

uint64_t __73__HKHealthStoreImplementation_recoverActiveWorkoutSessionWithCompletion___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _setAssociatedWorkoutBuilder:*(a1 + 40)];
    v3 = *(a1 + 32);
  }

  else
  {
    v5 = *(a1 + 48);
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (void)setWorkoutSessionMirroringStartHandler:(id)handler
{
  handlerCopy = handler;
  _HKInitializeLogging();
  v5 = HKLogWorkouts;
  v6 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
  if (handlerCopy)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[mirroring] Client setting mirrored session handler.", buf, 2u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__HKHealthStoreImplementation_setWorkoutSessionMirroringStartHandler___block_invoke_569;
    aBlock[3] = &unk_1E7378E60;
    v12 = handlerCopy;
    v7 = _Block_copy(aBlock);
    os_unfair_lock_lock(&self->_lock);
    v8 = _Block_copy(v7);
    mirroredSessionHandler = self->_mirroredSessionHandler;
    self->_mirroredSessionHandler = v8;

    os_unfair_lock_unlock(&self->_lock);
    [(HKHealthStoreImplementation *)self _setMirroredWorkoutSessionObserverStateToEnabled:1 handler:v7];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[mirroring] Mirrored session handler set to nil by the client.", buf, 2u);
    }

    os_unfair_lock_lock(&self->_lock);
    v10 = self->_mirroredSessionHandler;
    self->_mirroredSessionHandler = 0;

    os_unfair_lock_unlock(&self->_lock);
    [(HKHealthStoreImplementation *)self _setMirroredWorkoutSessionObserverStateToEnabled:0 handler:&__block_literal_global_568];
  }
}

void __70__HKHealthStoreImplementation_setWorkoutSessionMirroringStartHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __56__HKHealthStore_setWorkoutSessionMirroringStartHandler___block_invoke_cold_1();
    }
  }
}

void __70__HKHealthStoreImplementation_setWorkoutSessionMirroringStartHandler___block_invoke_569(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogWorkouts;
  if (v5)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[mirroring] Client received remote session", v10, 2u);
    }

    v8 = [*(a1 + 32) copy];
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, v5);
    }
  }

  else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __56__HKHealthStore_setWorkoutSessionMirroringStartHandler___block_invoke_551_cold_1();
  }
}

- (void)_setMirroredWorkoutSessionObserverStateToEnabled:(BOOL)enabled handler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__HKHealthStoreImplementation__setMirroredWorkoutSessionObserverStateToEnabled_handler___block_invoke;
  v10[3] = &unk_1E7378E88;
  enabledCopy = enabled;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__HKHealthStoreImplementation__setMirroredWorkoutSessionObserverStateToEnabled_handler___block_invoke_3;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v10 errorHandler:v8];
}

void __88__HKHealthStoreImplementation__setMirroredWorkoutSessionObserverStateToEnabled_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__HKHealthStoreImplementation__setMirroredWorkoutSessionObserverStateToEnabled_handler___block_invoke_2;
  v4[3] = &unk_1E7376910;
  v5 = *(a1 + 32);
  [a2 remote_setMirroredWorkoutSessionObserverStateToEnabled:v3 completion:v4];
}

uint64_t __88__HKHealthStoreImplementation__setMirroredWorkoutSessionObserverStateToEnabled_handler___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_ratingOfExertionSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(HKHealthStoreImplementation *)self _objectCompletionOnClientQueue:completionCopy];
  v32 = 0;
  v12 = [_HKEntitlements entitlementsForCurrentTaskWithError:&v32];
  v13 = v32;
  if (v12)
  {
    if ([v12 hasEntitlement:@"com.apple.private.healthkit"])
    {
      if (activityCopy)
      {
        workoutActivities = [workoutCopy workoutActivities];
        v15 = [workoutActivities containsObject:activityCopy];

        if (v15)
        {
          [workoutCopy workoutActivityType];
LABEL_12:
          uUID = [workoutCopy UUID];
          v21 = [HKQuery predicateForObjectWithUUID:uUID];

          v22 = [HKWorkoutEffortRelationshipQuery alloc];
          v25 = MEMORY[0x1E69E9820];
          v26 = 3221225472;
          v27 = __93__HKHealthStoreImplementation__ratingOfExertionSamplesForWorkout_workoutActivity_completion___block_invoke;
          v28 = &unk_1E7378EB0;
          selfCopy = self;
          v31 = v11;
          v30 = activityCopy;
          v23 = [(HKWorkoutEffortRelationshipQuery *)v22 initWithPredicate:v21 anchor:0 options:0 resultsHandler:&v25];
          [(HKHealthStoreImplementation *)self executeQuery:v23 queue:self->_clientQueue activationHandler:0, v25, v26, v27, v28, selfCopy];

          goto LABEL_16;
        }

        v18 = MEMORY[0x1E696ABC0];
        v19 = @"Activity must be inside workout activities.";
      }

      else
      {
        if ([workoutCopy workoutActivityType] != 82)
        {
          goto LABEL_12;
        }

        v18 = MEMORY[0x1E696ABC0];
        v19 = @"Activity must be set for HKWorkoutActivityTypeSwimBikeRun workouts.";
      }

      v17 = [v18 hk_error:3 description:v19];
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] hk_error:4 format:@"Missing private entitlement."];
    }

    v24 = v17;
    completionCopy[2](completionCopy, 0, v17);

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v16 = HKLogAuthorization();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [HKHealthStore _ratingOfExertionSamplesForWorkout:workoutActivity:completion:];
  }

  completionCopy[2](completionCopy, 0, v13);
LABEL_16:
}

void __93__HKHealthStoreImplementation__ratingOfExertionSamplesForWorkout_workoutActivity_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  [*(a1 + 32) stopQuery:a2];
  if (v8)
  {
    v24 = v9;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = [v16 samples];
          if (!v17 || (v18 = *(a1 + 40), v17, v18))
          {
            v19 = *(a1 + 40);
            if (!v19)
            {
              continue;
            }

            v20 = [v16 activity];
            v21 = [v19 isEqual:v20];

            if (!v21)
            {
              continue;
            }
          }

          v22 = [v16 samples];
          [v10 addObjectsFromArray:v22];
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v9 = v24;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_relateReplaceRatingOfExertionSample:(id)sample toWorkout:(id)workout forActivity:(id)activity completion:(id)completion
{
  sampleCopy = sample;
  workoutCopy = workout;
  activityCopy = activity;
  v13 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completion];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__HKHealthStoreImplementation__relateReplaceRatingOfExertionSample_toWorkout_forActivity_completion___block_invoke;
  v18[3] = &unk_1E7378F00;
  v21 = activityCopy;
  v22 = v13;
  v18[4] = self;
  v19 = sampleCopy;
  v20 = workoutCopy;
  v14 = activityCopy;
  v15 = workoutCopy;
  v16 = sampleCopy;
  v17 = v13;
  [(HKHealthStoreImplementation *)self _ratingOfExertionSamplesForWorkout:v15 workoutActivity:v14 completion:v18];
}

void __101__HKHealthStoreImplementation__relateReplaceRatingOfExertionSample_toWorkout_forActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __101__HKHealthStoreImplementation__relateReplaceRatingOfExertionSample_toWorkout_forActivity_completion___block_invoke_2;
    v7[3] = &unk_1E7378ED8;
    v4 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v3;
    v12 = *(a1 + 64);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __101__HKHealthStoreImplementation__relateReplaceRatingOfExertionSample_toWorkout_forActivity_completion___block_invoke_3;
    v5[3] = &unk_1E7376960;
    v6 = *(a1 + 64);
    [v4 _serverProxyWithHandler:v7 errorHandler:v5];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

- (void)relateWorkoutEffortSample:(id)sample withWorkout:(id)workout activity:(id)activity completion:(id)completion
{
  sampleCopy = sample;
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  if (activityCopy && ([workoutCopy workoutActivities], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", activityCopy), v14, (v15 & 1) == 0))
  {
    v18 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Activity must be inside workout activities."];
    completionCopy[2](completionCopy, 0, v18);
  }

  else
  {
    v16 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__HKHealthStoreImplementation_relateWorkoutEffortSample_withWorkout_activity_completion___block_invoke;
    v21[3] = &unk_1E7378900;
    v22 = sampleCopy;
    v23 = workoutCopy;
    v24 = activityCopy;
    v25 = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __89__HKHealthStoreImplementation_relateWorkoutEffortSample_withWorkout_activity_completion___block_invoke_2;
    v19[3] = &unk_1E7376960;
    v20 = v25;
    v17 = v25;
    [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v21 errorHandler:v19];
  }
}

void __89__HKHealthStoreImplementation_relateWorkoutEffortSample_withWorkout_activity_completion___block_invoke(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a1[4];
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v4 remote_relateSamples:v5 withObject:a1[5] subObject:a1[6] type:1 behavior:0 completion:{a1[7], v7, v8}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)unrelateWorkoutEffortSample:(id)sample fromWorkout:(id)workout activity:(id)activity completion:(id)completion
{
  sampleCopy = sample;
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  if (activityCopy && ([workoutCopy workoutActivities], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", activityCopy), v14, (v15 & 1) == 0))
  {
    v18 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Activity must be inside workout activities."];
    completionCopy[2](completionCopy, 0, v18);
  }

  else
  {
    v16 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __91__HKHealthStoreImplementation_unrelateWorkoutEffortSample_fromWorkout_activity_completion___block_invoke;
    v21[3] = &unk_1E7378900;
    v22 = sampleCopy;
    v23 = workoutCopy;
    v24 = activityCopy;
    v25 = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__HKHealthStoreImplementation_unrelateWorkoutEffortSample_fromWorkout_activity_completion___block_invoke_2;
    v19[3] = &unk_1E7376960;
    v20 = v25;
    v17 = v25;
    [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v21 errorHandler:v19];
  }
}

void __91__HKHealthStoreImplementation_unrelateWorkoutEffortSample_fromWorkout_activity_completion___block_invoke(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a1[4];
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v4 remote_unrelateSamples:v5 withObject:a1[5] subObject:a1[6] type:1 behavior:0 completion:{a1[7], v7, v8}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)currentWorkoutZonesForType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v8 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  if ([typeCopy isEqual:v8])
  {
  }

  else
  {
    v9 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierCyclingPower"];
    v10 = [typeCopy isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v21 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Object type not supported"];
      completionCopy[2](completionCopy, 0, v21);

      goto LABEL_12;
    }
  }

  v11 = [[HKKeyValueDomain alloc] initWithCategory:0 domainName:@"WorkoutZones" healthStore:self];
  identifier = [typeCopy identifier];
  v23 = 0;
  v13 = [(HKKeyValueDomain *)v11 dataForKey:identifier error:&v23];
  v14 = v23;

  if (v13 || !v14)
  {
    if (v13)
    {
      v15 = MEMORY[0x1E695DFD8];
      v16 = objc_opt_class();
      v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
      v22 = v14;
      v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v17 fromData:v13 error:&v22];
      v19 = v22;

      v20 = [v18 sortedArrayUsingComparator:&__block_literal_global_594];
      (completionCopy)[2](completionCopy, v20, v19);

      v14 = v19;
    }

    else
    {
      completionCopy[2](completionCopy, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v14);
  }

LABEL_12:
}

uint64_t __69__HKHealthStoreImplementation_currentWorkoutZonesForType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 startQuantity];

  if (v6)
  {
    v7 = [v5 startQuantity];

    if (v7)
    {
      v8 = [v4 startQuantity];
      v9 = [v5 startQuantity];
      v10 = [v8 compare:v9];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)saveWorkoutZones:(id)zones completion:(id)completion
{
  zonesCopy = zones;
  completionCopy = completion;
  if ([zonesCopy count])
  {
    v8 = [zonesCopy hk_mapToSet:&__block_literal_global_600];
    if ([v8 count] < 2)
    {
      v21 = 0;
      v10 = [HKWorkoutUtilities validateZones:zonesCopy error:&v21];
      v9 = v21;
      if (v10)
      {
        v20 = 0;
        v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:zonesCopy requiringSecureCoding:1 error:&v20];
        v12 = v20;
        if (v11)
        {
          v18 = [[HKKeyValueDomain alloc] initWithCategory:0 domainName:@"WorkoutZones" healthStore:self];
          firstObject = [zonesCopy firstObject];
          type = [firstObject type];
          identifier = [type identifier];
          v19 = v12;
          v17 = [(HKKeyValueDomain *)v18 setData:v11 forKey:identifier error:&v19];
          v16 = v19;

          (completionCopy)[2](completionCopy, v17, v16);
          v12 = v16;
        }

        else
        {
          completionCopy[2](completionCopy, 0, v12);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v9 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"All zones must have the same object type"];
    }

    completionCopy[2](completionCopy, 0, v9);
LABEL_11:

    goto LABEL_12;
  }

  v8 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Cannot save empty zones"];
  completionCopy[2](completionCopy, 0, v8);
LABEL_12:
}

- (void)takeWorkoutBackgroundStartAssertionForApplicationIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v20 = 0;
  v8 = [_HKEntitlements entitlementsForCurrentTaskWithError:&v20];
  v9 = v20;
  if (v8)
  {
    if ([v8 hasEntitlement:@"com.apple.private.healthkit.background-workout-start"])
    {
      v10 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completionCopy];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __102__HKHealthStoreImplementation_takeWorkoutBackgroundStartAssertionForApplicationIdentifier_completion___block_invoke;
      v17[3] = &unk_1E7378AF8;
      v18 = identifierCopy;
      v19 = v10;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __102__HKHealthStoreImplementation_takeWorkoutBackgroundStartAssertionForApplicationIdentifier_completion___block_invoke_2;
      v15[3] = &unk_1E7376960;
      v16 = v19;
      v11 = v19;
      [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v17 errorHandler:v15];
    }

    else
    {
      _HKInitializeLogging();
      v13 = HKLogAuthorization();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [HKHealthStoreImplementation takeWorkoutBackgroundStartAssertionForApplicationIdentifier:v13 completion:?];
      }

      v14 = [MEMORY[0x1E696ABC0] hk_error:4 format:@"Missing background workout start entitlement."];
      completionCopy[2](completionCopy, 0, v14);
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogAuthorization();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HKHealthStore _ratingOfExertionSamplesForWorkout:workoutActivity:completion:];
    }

    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)_setBackgroundDeliveryFrequencyDataType:(id)type frequency:(int64_t)frequency withCompletion:(id)completion
{
  typeCopy = type;
  v9 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completion];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__HKHealthStoreImplementation__setBackgroundDeliveryFrequencyDataType_frequency_withCompletion___block_invoke;
  v14[3] = &unk_1E7378888;
  frequencyCopy = frequency;
  v15 = typeCopy;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__HKHealthStoreImplementation__setBackgroundDeliveryFrequencyDataType_frequency_withCompletion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = typeCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v14 errorHandler:v12];
}

- (void)_closeTransactionWithTypes:(id)types anchor:(id)anchor ackTime:(id)time
{
  typesCopy = types;
  anchorCopy = anchor;
  timeCopy = time;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__HKHealthStoreImplementation__closeTransactionWithTypes_anchor_ackTime___block_invoke;
  v14[3] = &unk_1E7378F68;
  v15 = typesCopy;
  v16 = anchorCopy;
  v17 = timeCopy;
  v11 = timeCopy;
  v12 = anchorCopy;
  v13 = typesCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v14 errorHandler:&__block_literal_global_613_0];
}

void __73__HKHealthStoreImplementation__closeTransactionWithTypes_anchor_ackTime___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      __59__HKHealthStore__closeTransactionWithTypes_anchor_ackTime___block_invoke_2_cold_1();
    }
  }
}

void __73__HKHealthStoreImplementation__closeTransactionWithTypes_anchor_ackTime___block_invoke_611(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    __59__HKHealthStore__closeTransactionWithTypes_anchor_ackTime___block_invoke_2_cold_1();
  }
}

- (void)preferredUnitsForQuantityTypes:(id)types completion:(id)completion
{
  completionCopy = completion;
  typesCopy = types;
  [(HKHealthStoreImplementation *)self preferredUnitsForQuantityTypes:typesCopy version:HKSupportedUnitPreferencesVersion() completion:completionCopy];
}

- (void)preferredUnitsForQuantityTypes:(id)types version:(int64_t)version completion:(id)completion
{
  typesCopy = types;
  v9 = [(HKHealthStoreImplementation *)self _objectCompletionOnClientQueue:completion];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__HKHealthStoreImplementation_preferredUnitsForQuantityTypes_version_completion___block_invoke;
  v14[3] = &unk_1E7378888;
  v15 = typesCopy;
  versionCopy = version;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__HKHealthStoreImplementation_preferredUnitsForQuantityTypes_version_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = typesCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v14 errorHandler:v12];
}

- (void)_setPreferredUnit:(id)unit forType:(id)type completion:(id)completion
{
  unitCopy = unit;
  typeCopy = type;
  v10 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completion];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__HKHealthStoreImplementation__setPreferredUnit_forType_completion___block_invoke;
  v16[3] = &unk_1E73788D8;
  v17 = unitCopy;
  v18 = typeCopy;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__HKHealthStoreImplementation__setPreferredUnit_forType_completion___block_invoke_2;
  v14[3] = &unk_1E7376960;
  v15 = v19;
  v11 = v19;
  v12 = typeCopy;
  v13 = unitCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v16 errorHandler:v14];
}

- (void)_removePreferredUnitForType:(id)type completion:(id)completion
{
  typeCopy = type;
  v7 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completion];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__HKHealthStoreImplementation__removePreferredUnitForType_completion___block_invoke;
  v12[3] = &unk_1E7378AF8;
  v13 = typeCopy;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__HKHealthStoreImplementation__removePreferredUnitForType_completion___block_invoke_2;
  v10[3] = &unk_1E7376960;
  v11 = v14;
  v8 = v14;
  v9 = typeCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v12 errorHandler:v10];
}

- (void)splitTotalEnergy:(id)energy startDate:(id)date endDate:(id)endDate resultsHandler:(id)handler
{
  energyCopy = energy;
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [HKHealthStoreImplementation splitTotalEnergy:startDate:endDate:resultsHandler:];
  }

  [dateCopy timeIntervalSinceDate:endDateCopy];
  if (v15 <= 0.00000011920929)
  {
    v17 = a2;
    selfCopy2 = self;
    v18 = 0;
  }

  else
  {
    selfCopy2 = self;
    v17 = a2;
    v18 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"startDate (%@) cannot occur after endDate (%@)", dateCopy, endDateCopy}];
  }

  v19 = +[HKUnit kilocalorieUnit];
  v20 = energyCopy;
  v21 = [energyCopy isCompatibleWithUnit:v19];

  if ((v21 & 1) == 0)
  {
    v22 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:v17 format:{@"totalEnergy (%@) quantity unit is not compatible with kilocalories", v20}];

    v18 = v22;
  }

  if (v18)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v18);
  }

  else
  {
    v23 = +[HKUnit kilocalorieUnit];
    [v20 doubleValueForUnit:v23];
    v25 = v24;

    [endDateCopy timeIntervalSinceDate:dateCopy];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __81__HKHealthStoreImplementation_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke;
    v29[3] = &unk_1E7379008;
    v31 = v25;
    v32 = v26;
    v30 = handlerCopy;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __81__HKHealthStoreImplementation_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_3;
    v27[3] = &unk_1E7376960;
    v28 = v30;
    [(HKHealthStoreImplementation *)selfCopy2 _serverProxyWithHandler:v29 errorHandler:v27];
  }
}

void __81__HKHealthStoreImplementation_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__HKHealthStoreImplementation_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_2;
  v5[3] = &unk_1E7378FE0;
  v7 = v3;
  v6 = *(a1 + 32);
  [a2 remote_splitTotalCalories:v5 timeInterval:v3 withCompletion:v4];
}

void __81__HKHealthStoreImplementation_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_2(uint64_t a1, double a2)
{
  if (*(a1 + 40) >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v4 = +[HKUnit kilocalorieUnit];
  v7 = [HKQuantity quantityWithUnit:v4 doubleValue:v3];

  v5 = +[HKUnit kilocalorieUnit];
  v6 = [HKQuantity quantityWithUnit:v5 doubleValue:*(a1 + 40) - v3];

  (*(*(a1 + 32) + 16))();
}

void __81__HKHealthStoreImplementation_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((HKIsUnitTesting() & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_6_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)connectionInterrupted
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_queries copy];
  serverProxy = self->_serverProxy;
  self->_serverProxy = 0;

  v5 = [self->_mirroredSessionHandler copy];
  [(HKHealthStoreImplementation *)self invalidateAllDatabaseAccessibilityAssertions];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"connection interrupted"];
  clientQueue = self->_clientQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__HKHealthStoreImplementation_connectionInterrupted__block_invoke;
  v11[3] = &unk_1E7376710;
  v11[4] = self;
  v12 = v6;
  v13 = v3;
  v14 = v5;
  v8 = v5;
  v9 = v3;
  v10 = v6;
  dispatch_async(clientQueue, v11);
}

void __52__HKHealthStoreImplementation_connectionInterrupted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clientQueue_invokeAuthorizationDelegateTransactionErrorHandlerWithError:*(a1 + 40)];
  if ([*(a1 + 48) count])
  {
    v2 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__HKHealthStoreImplementation_connectionInterrupted__block_invoke_2;
    v5[3] = &unk_1E7378B48;
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6 = v3;
    v7 = v4;
    [v2 _serverProxyWithHandler:v5 errorHandler:&__block_literal_global_630];
  }

  if (*(a1 + 56))
  {
    [*(a1 + 32) _setMirroredWorkoutSessionObserverStateToEnabled:1 handler:?];
  }
}

void __52__HKHealthStoreImplementation_connectionInterrupted__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) reactivateWithHealthStore:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)connectionConfigured
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_databaseAccessibilityAssertionStoreKeeper;
  os_unfair_lock_unlock(&self->_lock);
  [(HKDatabaseAccessibilityAssertionStoreKeeper *)v3 connectionConfigured];
}

- (void)_applicationWillResignActive:(id)active
{
  _HKInitializeLogging();
  v4 = HKLogProcessState();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "App will resign active", v5, 2u);
  }

  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:&__block_literal_global_632 errorHandler:&__block_literal_global_636];
}

void __60__HKHealthStoreImplementation__applicationWillResignActive___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_6_cold_1();
  }
}

- (void)_applicationDidBecomeActive:(id)active
{
  _HKInitializeLogging();
  v4 = HKLogProcessState();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "App did become active", v5, 2u);
  }

  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:&__block_literal_global_638 errorHandler:&__block_literal_global_642];
}

void __59__HKHealthStoreImplementation__applicationDidBecomeActive___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_6_cold_1();
  }
}

- (id)_actionCompletionOnClientQueue:(id)queue
{
  queueCopy = queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__HKHealthStoreImplementation__actionCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_1E73766A0;
  v8[4] = self;
  v9 = queueCopy;
  v5 = queueCopy;
  v6 = [v8 copy];

  return v6;
}

void __62__HKHealthStoreImplementation__actionCompletionOnClientQueue___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 304);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HKHealthStoreImplementation__actionCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __62__HKHealthStoreImplementation__actionCompletionOnClientQueue___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (id)_multiActionCompletionOnClientQueue:(id)queue
{
  queueCopy = queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__HKHealthStoreImplementation__multiActionCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_1E7379078;
  v8[4] = self;
  v9 = queueCopy;
  v5 = queueCopy;
  v6 = [v8 copy];

  return v6;
}

void __67__HKHealthStoreImplementation__multiActionCompletionOnClientQueue___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = *(*(a1 + 32) + 304);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HKHealthStoreImplementation__multiActionCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_1E7379050;
  v9 = *(a1 + 40);
  v14 = a2;
  v15 = a3;
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, block);
}

uint64_t __67__HKHealthStoreImplementation__multiActionCompletionOnClientQueue___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 49), *(a1 + 32));
  }

  return result;
}

- (id)_objectCompletionOnClientQueue:(id)queue
{
  queueCopy = queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__HKHealthStoreImplementation__objectCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_1E73790A0;
  v8[4] = self;
  v9 = queueCopy;
  v5 = queueCopy;
  v6 = [v8 copy];

  return v6;
}

void __62__HKHealthStoreImplementation__objectCompletionOnClientQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 304);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HKHealthStoreImplementation__objectCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_1E7376618;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __62__HKHealthStoreImplementation__objectCompletionOnClientQueue___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (BOOL)_prepareObjectsForSaving:(id)saving errorOut:(id *)out
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  savingCopy = saving;
  v6 = [savingCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(savingCopy);
        }

        if (![*(*(&v13 + 1) + 8 * i) prepareForSaving:{out, v13}])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [savingCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)setAllHealthDataAccessForSiri:(int64_t)siri completion:(id)completion
{
  v6 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completion];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__HKHealthStoreImplementation_setAllHealthDataAccessForSiri_completion___block_invoke;
  v10[3] = &unk_1E73790C8;
  siriCopy = siri;
  v11 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__HKHealthStoreImplementation_setAllHealthDataAccessForSiri_completion___block_invoke_2;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v10 errorHandler:v8];
}

- (void)getAllHealthDataAccessForSiriWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__HKHealthStoreImplementation_getAllHealthDataAccessForSiriWithCompletion___block_invoke;
  v11[3] = &unk_1E73789F0;
  v11[4] = self;
  v12 = completionCopy;
  v5 = [v11 copy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__HKHealthStoreImplementation_getAllHealthDataAccessForSiriWithCompletion___block_invoke_3;
  v9[3] = &unk_1E73788B0;
  v10 = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__HKHealthStoreImplementation_getAllHealthDataAccessForSiriWithCompletion___block_invoke_4;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v9 errorHandler:v7];
}

void __75__HKHealthStoreImplementation_getAllHealthDataAccessForSiriWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 304);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__HKHealthStoreImplementation_getAllHealthDataAccessForSiriWithCompletion___block_invoke_2;
  block[3] = &unk_1E73789A0;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __75__HKHealthStoreImplementation_getAllHealthDataAccessForSiriWithCompletion___block_invoke_2(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[6], a1[4]);
  }

  return result;
}

- (void)fetchServerURLForAssetType:(id)type completion:(id)completion
{
  typeCopy = type;
  v7 = [(HKHealthStoreImplementation *)self _objectCompletionOnClientQueue:completion];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__HKHealthStoreImplementation_fetchServerURLForAssetType_completion___block_invoke;
  v12[3] = &unk_1E7378AF8;
  v13 = typeCopy;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__HKHealthStoreImplementation_fetchServerURLForAssetType_completion___block_invoke_2;
  v10[3] = &unk_1E7376960;
  v11 = v14;
  v8 = v14;
  v9 = typeCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v12 errorHandler:v10];
}

- (void)setServerURL:(id)l forAssetType:(id)type completion:(id)completion
{
  lCopy = l;
  typeCopy = type;
  v10 = [(HKHealthStoreImplementation *)self _actionCompletionOnClientQueue:completion];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__HKHealthStoreImplementation_setServerURL_forAssetType_completion___block_invoke;
  v16[3] = &unk_1E73788D8;
  v17 = lCopy;
  v18 = typeCopy;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__HKHealthStoreImplementation_setServerURL_forAssetType_completion___block_invoke_2;
  v14[3] = &unk_1E7376960;
  v15 = v19;
  v11 = v19;
  v12 = typeCopy;
  v13 = lCopy;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v16 errorHandler:v14];
}

- (void)clientRemote_conceptIndexManagerDidBecomeQuiescentWithSamplesProcessedCount:(int64_t)count
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"processedSampleCount";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:count];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(HKHealthStoreImplementation *)self postNotificationNameToAllStores:@"HKConceptIndexManagerDidBecomeQuiescentNotification" userInfo:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_didCreateRemoteSessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__HKHealthStoreImplementation_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(clientQueue, v7);
}

void __84__HKHealthStoreImplementation_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 288));
  v2 = _Block_copy(*(*(a1 + 32) + 440));
  os_unfair_lock_unlock((*(a1 + 32) + 288));
  if (v2)
  {
    v3 = [HKWorkoutSession alloc];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v13 = 0;
    v6 = [(HKWorkoutSession *)v3 _initWithHealthStore:v4 taskConfiguration:v5 error:&v13];
    v7 = v13;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__HKHealthStoreImplementation_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke_645;
    v10[3] = &unk_1E7378BE8;
    v11 = v6;
    v12 = v2;
    v8 = v6;
    [v8 _setupMirroredSessionTaskServerWithCompletion:v10];
    [v8 _runSetupPostClientMirroringStartHandlerWithCompletion:&__block_literal_global_647];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __84__HKHealthStoreImplementation_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke_cold_1(v9);
    }
  }
}

uint64_t __84__HKHealthStoreImplementation_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke_645(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4);
}

void __84__HKHealthStoreImplementation_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __70__HKHealthStore_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke_2_cold_1(v5, a2, v4);
  }
}

- (void)fetchMedicalIDDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__HKHealthStoreImplementation_fetchMedicalIDDataWithCompletion___block_invoke;
  v7[3] = &unk_1E73790F0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HKMedicalIDStore *)v5 fetchMedicalIDDataWithCompletion:v7];
}

- (void)fetchMedicalIDDataCreateIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  necessaryCopy = necessary;
  completionCopy = completion;
  v7 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
  v8 = v7;
  if (necessaryCopy)
  {
    [(HKMedicalIDStore *)v7 fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion:completionCopy];
  }

  else
  {
    [(HKMedicalIDStore *)v7 fetchMedicalIDDataWithCompletion:completionCopy];
  }
}

- (void)fetchMedicalIDEmergencyContactsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
  [(HKMedicalIDStore *)v5 fetchMedicalIDEmergencyContactsWithCompletion:completionCopy];
}

- (void)updateMedicalIDData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v8 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
  [(HKMedicalIDStore *)v8 updateMedicalIDData:dataCopy completion:completionCopy];
}

- (void)deleteMedicalIDDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
  [(HKMedicalIDStore *)v5 deleteMedicalIDDataWithCompletion:completionCopy];
}

- (id)_getDatabaseAccessibilityAssertionStoreKeeper
{
  os_unfair_lock_lock(&self->_storeKeeperLock);
  databaseAccessibilityAssertionStoreKeeper = self->_databaseAccessibilityAssertionStoreKeeper;
  if (!databaseAccessibilityAssertionStoreKeeper)
  {
    v4 = [[HKDatabaseAccessibilityAssertionStoreKeeper alloc] initWithHealthStore:self];
    v5 = self->_databaseAccessibilityAssertionStoreKeeper;
    self->_databaseAccessibilityAssertionStoreKeeper = v4;

    databaseAccessibilityAssertionStoreKeeper = self->_databaseAccessibilityAssertionStoreKeeper;
  }

  v6 = databaseAccessibilityAssertionStoreKeeper;
  os_unfair_lock_unlock(&self->_storeKeeperLock);

  return v6;
}

- (void)requestDatabaseAccessibilityAssertion:(id)assertion timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  assertionCopy = assertion;
  _getDatabaseAccessibilityAssertionStoreKeeper = [(HKHealthStoreImplementation *)self _getDatabaseAccessibilityAssertionStoreKeeper];
  [_getDatabaseAccessibilityAssertionStoreKeeper fetchDatabaseAccessibilityAssertionForOwnerIdentifier:assertionCopy isRecovery:0 timeout:completionCopy completion:timeout];
}

- (void)requestDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier contextType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  _getDatabaseAccessibilityAssertionStoreKeeper = [(HKHealthStoreImplementation *)self _getDatabaseAccessibilityAssertionStoreKeeper];
  [_getDatabaseAccessibilityAssertionStoreKeeper fetchDatabaseAccessibilityAssertionForOwnerIdentifier:identifierCopy contextType:type isRecovery:0 timeout:completionCopy completion:1.79769313e308];
}

- (void)invalidateDatabaseAccessibilityAssertion:(id)assertion
{
  assertionCopy = assertion;
  _getDatabaseAccessibilityAssertionStoreKeeper = [(HKHealthStoreImplementation *)self _getDatabaseAccessibilityAssertionStoreKeeper];
  [_getDatabaseAccessibilityAssertionStoreKeeper invalidateDatabaseAccessibilityAssertionWithAssertion:assertionCopy];
}

- (void)invalidateAllDatabaseAccessibilityAssertions
{
  _getDatabaseAccessibilityAssertionStoreKeeper = [(HKHealthStoreImplementation *)self _getDatabaseAccessibilityAssertionStoreKeeper];
  [_getDatabaseAccessibilityAssertionStoreKeeper invalidateAllDatabaseAccessibilityAssertions];
}

- (void)isProtectedDataAvailableWithCompletion:(id)completion
{
  v4 = [(HKHealthStoreImplementation *)self _multiActionCompletionOnClientQueue:completion];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__HKHealthStoreImplementation_isProtectedDataAvailableWithCompletion___block_invoke;
  v8[3] = &unk_1E73788B0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__HKHealthStoreImplementation_isProtectedDataAvailableWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthStoreImplementation *)self _serverProxyWithHandler:v8 errorHandler:v6];
}

- (void)dropEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__HKHealthStoreImplementation_dropEntitlement___block_invoke;
  v10[3] = &unk_1E7376898;
  v5 = entitlementCopy;
  v11 = v5;
  v6 = [(HKHealthStoreImplementation *)self _synchronousServerProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__HKHealthStoreImplementation_dropEntitlement___block_invoke_651;
  v8[3] = &unk_1E7376A00;
  v9 = v5;
  v7 = v5;
  [v6 remote_dropEntitlement:v7 completion:v8];
}

void __47__HKHealthStoreImplementation_dropEntitlement___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogTesting();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "Failed to drop '%{public}@' entitlement: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __47__HKHealthStoreImplementation_dropEntitlement___block_invoke_651(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogTesting();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "Failed to drop '%{public}@' entitlement: %{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)restoreEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__HKHealthStoreImplementation_restoreEntitlement___block_invoke;
  v10[3] = &unk_1E7376898;
  v5 = entitlementCopy;
  v11 = v5;
  v6 = [(HKHealthStoreImplementation *)self _synchronousServerProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__HKHealthStoreImplementation_restoreEntitlement___block_invoke_652;
  v8[3] = &unk_1E7376A00;
  v9 = v5;
  v7 = v5;
  [v6 remote_restoreEntitlement:v7 completion:v8];
}

void __50__HKHealthStoreImplementation_restoreEntitlement___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogTesting();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "Failed to restore '%{public}@' entitlement: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __50__HKHealthStoreImplementation_restoreEntitlement___block_invoke_652(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogTesting();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "Failed to restore '%{public}@' entitlement: %{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)impl_hkui_authorizationViewControllerPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_impl_hkui_authorizationViewControllerPresenter);

  return WeakRetained;
}

- (void)_serverProxyWithHandler:errorHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"proxyHandler" object:? file:? lineNumber:? description:?];
}

- (void)_serverProxyWithHandler:errorHandler:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"originalErrorHandler" object:? file:? lineNumber:? description:?];
}

- (void)deleteAllSamplesWithTypes:sourceBundleIdentifier:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[sampleTypes count] > 0" object:? file:? lineNumber:? description:?];
}

- (void)authorizationStatusForType:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[type isKindOfClass:[HKObjectType class]]" object:? file:? lineNumber:? description:?];
}

- (void)deleteObjectsOfType:predicate:options:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)splitTotalEnergy:startDate:endDate:resultsHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"resultsHandler" object:? file:? lineNumber:? description:?];
}

@end