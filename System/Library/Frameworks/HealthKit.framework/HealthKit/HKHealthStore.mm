@interface HKHealthStore
+ (BOOL)_applicationHasRunningWorkout;
+ (BOOL)_useHKHealthStoreImplementation;
+ (BOOL)isHealthDataAvailable;
+ (BOOL)requireExplicitSystemMachServiceEnablement;
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
- (BOOL)supportsHealthRecords;
- (HKActivityMoveModeObject)activityMoveModeWithError:(NSError *)error;
- (HKAuthorizationStatus)authorizationStatusForType:(HKObjectType *)type;
- (HKBiologicalSexObject)biologicalSexWithError:(NSError *)error;
- (HKBloodTypeObject)bloodTypeWithError:(NSError *)error;
- (HKFitzpatrickSkinTypeObject)fitzpatrickSkinTypeWithError:(NSError *)error;
- (HKHealthServicesManager)healthServicesManager;
- (HKHealthStore)initWithListenerEndpoint:(id)endpoint debugIdentifier:(id)identifier;
- (HKHealthStoreImplementation)implementation;
- (HKProfileIdentifier)profileIdentifier;
- (HKWheelchairUseObject)wheelchairUseWithError:(NSError *)error;
- (NSBundle)sourceBundle;
- (NSDate)dateOfBirthWithError:(NSError *)error;
- (NSDateComponents)dateOfBirthComponentsWithError:(NSError *)error;
- (NSSet)_activeQueries;
- (NSSet)_queries;
- (NSString)clinicalReadAuthorizationUsageDescriptionOverride;
- (NSString)daemonLaunchDarwinNotificationName;
- (NSString)debugIdentifier;
- (NSString)firstName;
- (NSString)readAuthorizationUsageDescriptionOverride;
- (NSString)researchStudyUsageDescriptionOverride;
- (NSString)sourceBundleIdentifier;
- (NSString)writeAuthorizationUsageDescriptionOverride;
- (OS_dispatch_queue)clientQueue;
- (id)_actionCompletionOnClientQueue:(id)queue;
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
- (id)_hkui_authorizationViewControllerPresenter;
- (id)_implementationCreate:(BOOL)create;
- (id)_leanBodyMassCharacteristicQuantityWithError:(id *)error;
- (id)_lock_connectionWithError:(id *)error;
- (id)_modificationDateForCharacteristicWithType:(id)type error:(id *)error;
- (id)_multiActionCompletionOnClientQueue:(id)queue;
- (id)_objectCompletionOnClientQueue:(id)queue;
- (id)_perObjectAuthorizationPresentationRequestForSession:(id)session;
- (id)_researchStudyUsageDescription;
- (id)_sleepFeatureAvailabilityProvider:(id)provider;
- (id)_sourceBundleOrDefaultBundle;
- (id)_synchronousServerProxyWithErrorHandler:(id)handler;
- (id)_typesWithBothBloodPressureIfNeeded:(id)needed;
- (id)_userEnteredMenstrualCycleLengthCharacteristicQuantityWithError:(id *)error;
- (id)_userEnteredMenstrualPeriodLengthCharacteristicQuantityWithError:(id *)error;
- (id)_wrappedErrorHandler:(id)handler proxy:(id)proxy;
- (id)ageWithCurrentDate:(id)date error:(id *)error;
- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)identifier;
- (id)featureStatusProviderForIdentifier:(id)identifier;
- (id)healthDataRequirementEvaluationProvider;
- (id)healthStoreConfiguration;
- (id)initForHKHealthStoreImplementation;
- (id)notifier;
- (id)pluginServiceEndpointForIdentifier:(id)identifier error:(id *)error;
- (id)taskServerEndpointForIdentifier:(id)identifier pluginURL:(id)l taskUUID:(id)d instanceUUID:(id)iD configuration:(id)configuration error:(id *)error;
- (id)unitTest_replaceListenerEndpoint:(id)endpoint;
- (id)wristDetectionSettingManager;
- (unint64_t)applicationSDKVersionToken;
- (void)_activeWorkoutApplicationIdentifierWithCompletion:(id)completion;
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
- (void)_currentWorkoutSnapshotWithCompletion:(id)completion;
- (void)_dateOfBirthWithCompletion:(id)completion;
- (void)_deleteObjects:(id)objects options:(unint64_t)options completion:(id)completion;
- (void)_discardServerProxiesForServer:(id)server;
- (void)_faultIfInappropriateHost;
- (void)_fetchBoolDaemonPreferenceForKey:(id)key completion:(id)completion;
- (void)_fetchDaemonPreferenceForKey:(id)key completion:(id)completion;
- (void)_fitzpatrickSkinTypeWithCompletion:(id)completion;
- (void)_ratingOfExertionSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)_relateReplaceRatingOfExertionSample:(id)sample toWorkout:(id)workout forActivity:(id)activity completion:(id)completion;
- (void)_removePreferredUnitForType:(id)type completion:(id)completion;
- (void)_removeQuery:(id)query;
- (void)_removeQueryFromPendingActivationQueries:(id)queries;
- (void)_replaceWorkout:(id)workout withWorkout:(id)withWorkout completion:(id)completion;
- (void)_safeFetchDaemonPreferenceForKey:(id)key expectedReturnClass:(Class)class completion:(id)completion;
- (void)_saveObjects:(id)objects atomically:(BOOL)atomically skipInsertionFilter:(BOOL)filter completion:(id)completion;
- (void)_serverProxyWithHandler:(id)handler errorHandler:(id)errorHandler;
- (void)_setBackgroundDeliveryFrequencyDataType:(id)type frequency:(int64_t)frequency withCompletion:(id)completion;
- (void)_setConfigurationPropertyUsingBlock:(id)block resumeRequired:(BOOL)required;
- (void)_setDaemonPreferenceValue:(id)value forKey:(id)key completion:(id)completion;
- (void)_setMirroredWorkoutSessionObserverStateToEnabled:(BOOL)enabled handler:(id)handler;
- (void)_setPreferredUnit:(id)unit forType:(id)type completion:(id)completion;
- (void)_shouldGenerateDemoDataPreferenceIsSet:(id)set;
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
- (void)addHealthServicePairing:(id)pairing withCompletion:(id)completion;
- (void)addSamples:(NSArray *)samples toWorkout:(HKWorkout *)workout completion:(void *)completion;
- (void)associateSampleUUIDs:(id)ds withSampleUUID:(id)d completion:(id)completion;
- (void)beginAuthorizationDelegateTransactionWithSessionIdentifier:(id)identifier sourceHandler:(id)handler errorHandler:(id)errorHandler;
- (void)clientRemote_conceptIndexManagerDidBecomeQuiescentWithSamplesProcessedCount:(int64_t)count;
- (void)clientRemote_didCreateRemoteSessionWithConfiguration:(id)configuration;
- (void)clientRemote_presentAuthorizationWithRequestRecord:(id)record completion:(id)completion;
- (void)clientRemote_presentAuthorizationWithSession:(id)session completion:(id)completion;
- (void)clientRemote_presentRecalibrateEstimatesRequestWithRecord:(id)record completion:(id)completion;
- (void)clientRemote_unitPreferencesDidUpdate;
- (void)connectionConfigured;
- (void)connectionInterrupted;
- (void)currentWorkoutZonesForType:(id)type completion:(id)completion;
- (void)dealloc;
- (void)deleteAllSamplesWithTypes:(id)types sourceBundleIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion;
- (void)deleteClientSourceWithCompletion:(id)completion;
- (void)deleteMedicalIDData;
- (void)deleteMedicalIDDataWithCompletion:(id)completion;
- (void)deleteObject:(HKObject *)object withCompletion:(void *)completion;
- (void)deleteObject:(id)object options:(unint64_t)options withCompletion:(id)completion;
- (void)deleteObjectsOfType:(id)type predicate:(id)predicate options:(unint64_t)options withCompletion:(id)completion;
- (void)deleteObjectsWithUUIDs:(id)ds options:(unint64_t)options completion:(id)completion;
- (void)disableAllBackgroundDeliveryWithCompletion:(void *)completion;
- (void)disableBackgroundDeliveryForType:(HKObjectType *)type withCompletion:(void *)completion;
- (void)disableCloudSyncAndDeleteAllCloudDataWithCompletion:(id)completion;
- (void)dropEntitlement:(id)entitlement;
- (void)enableBackgroundDeliveryForType:(HKObjectType *)type frequency:(HKUpdateFrequency)frequency withCompletion:(void *)completion;
- (void)endAuthorizationDelegateTransactionWithSessionIdentifier:(id)identifier error:(id)error;
- (void)endHealthServiceDiscovery:(id)discovery;
- (void)endHealthServiceSession:(id)session;
- (void)endWorkoutSession:(HKWorkoutSession *)workoutSession;
- (void)executeQuery:(id)query activationHandler:(id)handler;
- (void)fetchCloudSyncRequiredWithCompletion:(id)completion;
- (void)fetchMedicalIDDataWithCompletion:(id)completion;
- (void)fetchMedicalIDEmergencyContactsWithCompletion:(id)completion;
- (void)fetchPluginServiceEndpointForIdentifier:(id)identifier endpointHandler:(id)handler errorHandler:(id)errorHandler;
- (void)fetchServerURLForAssetType:(id)type completion:(id)completion;
- (void)fetchTaskServerEndpointForIdentifier:(id)identifier pluginURL:(id)l taskUUID:(id)d instanceUUID:(id)iD configuration:(id)configuration endpointHandler:(id)handler errorHandler:(id)errorHandler;
- (void)forceCloudSyncDataUploadForProfileWithCompletion:(id)completion;
- (void)forceCloudSyncWithOptions:(unint64_t)options completion:(id)completion;
- (void)forceCloudSyncWithOptions:(unint64_t)options reason:(int64_t)reason completion:(id)completion;
- (void)generateFakeDataForActivityType:(int64_t)type minutes:(double)minutes completion:(id)completion;
- (void)getAllHealthDataAccessForSiriWithCompletion:(id)completion;
- (void)getEnabledStatusForPeripheral:(id)peripheral withCompletion:(id)completion;
- (void)getRequestStatusForAuthorizationToShareTypes:(NSSet *)typesToShare readTypes:(NSSet *)typesToRead completion:(void *)completion;
- (void)handleAuthorizationForExtensionWithCompletion:(void *)completion;
- (void)healthPeripheralsWithCustomProperties:(id)properties withCompletion:(id)completion;
- (void)healthPeripheralsWithFilter:(unint64_t)filter handler:(id)handler;
- (void)healthServicePairingsWithHandler:(id)handler;
- (void)invalidateAllDatabaseAccessibilityAssertions;
- (void)invalidateDatabaseAccessibilityAssertion:(id)assertion;
- (void)isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion:(id)completion;
- (void)isProtectedDataAvailableWithCompletion:(id)completion;
- (void)pauseWorkoutSession:(HKWorkoutSession *)workoutSession;
- (void)preferredUnitsForQuantityTypes:(NSSet *)quantityTypes completion:(void *)completion;
- (void)preferredUnitsForQuantityTypes:(id)types version:(int64_t)version completion:(id)completion;
- (void)profileIdentifierForNRDeviceUUID:(id)d completion:(id)completion;
- (void)recalibrateEstimatesForSampleType:(HKSampleType *)sampleType atDate:(NSDate *)date completion:(void *)completion;
- (void)recoverActiveWorkoutSessionWithCompletion:(void *)completion;
- (void)registerPeripheralIdentifier:(id)identifier name:(id)name services:(id)services withCompletion:(id)completion;
- (void)relateWorkoutEffortSample:(id)sample withWorkout:(id)workout activity:(id)activity completion:(id)completion;
- (void)removeHealthServicePairing:(id)pairing withCompletion:(id)completion;
- (void)requestAuthorizationToShareTypes:(NSSet *)typesToShare readTypes:(NSSet *)typesToRead completion:(void *)completion;
- (void)requestDatabaseAccessibilityAssertion:(id)assertion timeout:(double)timeout completion:(id)completion;
- (void)requestDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier contextType:(int64_t)type completion:(id)completion;
- (void)requestPerObjectReadAuthorizationForType:(HKObjectType *)objectType predicate:(NSPredicate *)predicate completion:(void *)completion;
- (void)restoreEntitlement:(id)entitlement;
- (void)resume;
- (void)resumeWorkoutSession:(HKWorkoutSession *)workoutSession;
- (void)saveObject:(HKObject *)object withCompletion:(void *)completion;
- (void)saveObjects:(NSArray *)objects withCompletion:(void *)completion;
- (void)saveObjects:(id)objects deleteObjects:(id)deleteObjects associations:(id)associations completion:(id)completion;
- (void)saveWorkoutZones:(id)zones completion:(id)completion;
- (void)setAllHealthDataAccessForSiri:(int64_t)siri completion:(id)completion;
- (void)setCanConnectToSystemMachService:(BOOL)service;
- (void)setClinicalReadAuthorizationUsageDescriptionOverride:(id)override;
- (void)setDaemonLaunchDarwinNotificationName:(id)name;
- (void)setDebugIdentifier:(id)identifier;
- (void)setProfileIdentifier:(id)identifier;
- (void)setReadAuthorizationUsageDescriptionOverride:(id)override;
- (void)setResearchStudyUsageDescriptionOverride:(id)override;
- (void)setServerURL:(id)l forAssetType:(id)type completion:(id)completion;
- (void)setSourceBundle:(id)bundle;
- (void)setSourceBundleIdentifier:(id)identifier;
- (void)setUnitTest_handleExecuteQuery:(id)query;
- (void)setUnitTest_presentAuthorizationWithSessionHandler:(id)handler;
- (void)setWorkoutSessionMirroringStartHandler:(void *)workoutSessionMirroringStartHandler;
- (void)setWriteAuthorizationUsageDescriptionOverride:(id)override;
- (void)set_hkui_authorizationViewControllerPresenter:(id)presenter;
- (void)splitTotalEnergy:(HKQuantity *)totalEnergy startDate:(NSDate *)startDate endDate:(NSDate *)endDate resultsHandler:(void *)resultsHandler;
- (void)startHealthServiceDiscovery:(id)discovery withHandler:(id)handler;
- (void)startHealthServiceSession:(id)session withHandler:(id)handler;
- (void)startWatchAppWithWorkoutConfiguration:(HKWorkoutConfiguration *)workoutConfiguration completion:(void *)completion;
- (void)startWorkoutSession:(HKWorkoutSession *)workoutSession;
- (void)stopQuery:(HKQuery *)query;
- (void)takeWorkoutBackgroundStartAssertionForApplicationIdentifier:(id)identifier completion:(id)completion;
- (void)unitTest_setApplicationSDKVersionToken:(unint64_t)token;
- (void)unregisterPeripheralIdentifier:(id)identifier withCompletion:(id)completion;
- (void)unrelateWorkoutEffortSample:(id)sample fromWorkout:(id)workout activity:(id)activity completion:(id)completion;
- (void)updateMedicalIDData:(id)data;
- (void)updateMedicalIDData:(id)data completion:(id)completion;
@end

@implementation HKHealthStore

- (void)startHealthServiceDiscovery:(id)discovery withHandler:(id)handler
{
  handlerCopy = handler;
  discoveryCopy = discovery;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager startHealthServiceDiscovery:discoveryCopy withHandler:handlerCopy];
}

- (void)endHealthServiceDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager endHealthServiceDiscovery:discoveryCopy];
}

- (void)startHealthServiceSession:(id)session withHandler:(id)handler
{
  handlerCopy = handler;
  sessionCopy = session;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager startHealthServiceSession:sessionCopy withHandler:handlerCopy];
}

- (void)endHealthServiceSession:(id)session
{
  sessionCopy = session;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager endHealthServiceSession:sessionCopy];
}

- (void)registerPeripheralIdentifier:(id)identifier name:(id)name services:(id)services withCompletion:(id)completion
{
  completionCopy = completion;
  servicesCopy = services;
  nameCopy = name;
  identifierCopy = identifier;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager registerPeripheralIdentifier:identifierCopy name:nameCopy services:servicesCopy withCompletion:completionCopy];
}

- (void)unregisterPeripheralIdentifier:(id)identifier withCompletion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager unregisterPeripheralIdentifier:identifierCopy withCompletion:completionCopy];
}

- (void)healthServicePairingsWithHandler:(id)handler
{
  handlerCopy = handler;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager healthServicePairingsWithHandler:handlerCopy];
}

- (void)healthPeripheralsWithFilter:(unint64_t)filter handler:(id)handler
{
  handlerCopy = handler;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager healthPeripheralsWithFilter:filter handler:handlerCopy];
}

- (void)addHealthServicePairing:(id)pairing withCompletion:(id)completion
{
  completionCopy = completion;
  pairingCopy = pairing;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager addHealthServicePairing:pairingCopy withCompletion:completionCopy];
}

- (void)removeHealthServicePairing:(id)pairing withCompletion:(id)completion
{
  completionCopy = completion;
  pairingCopy = pairing;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager removeHealthServicePairing:pairingCopy withCompletion:completionCopy];
}

- (void)healthPeripheralsWithCustomProperties:(id)properties withCompletion:(id)completion
{
  completionCopy = completion;
  propertiesCopy = properties;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager healthPeripheralsWithCustomProperties:propertiesCopy withCompletion:completionCopy];
}

- (void)getEnabledStatusForPeripheral:(id)peripheral withCompletion:(id)completion
{
  completionCopy = completion;
  peripheralCopy = peripheral;
  healthServicesManager = [(HKHealthStore *)self healthServicesManager];
  [healthServicesManager getEnabledStatusForPeripheral:peripheralCopy withCompletion:completionCopy];
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

+ (BOOL)requireExplicitSystemMachServiceEnablement
{
  if ([objc_opt_class() _useHKHealthStoreImplementation])
  {

    return +[HKHealthStoreImplementation requireExplicitSystemMachServiceEnablement];
  }

  else
  {
    os_unfair_lock_lock(&_classPropertyLock);
    v3 = _requireExplicitSystemMachServiceEndpoint;
    os_unfair_lock_unlock(&_classPropertyLock);
    return v3;
  }
}

+ (BOOL)_useHKHealthStoreImplementation
{
  v2 = +[_HKBehavior sharedBehavior];
  features = [v2 features];
  sharedStoreXPC = [features sharedStoreXPC];

  return sharedStoreXPC;
}

- (id)initForHKHealthStoreImplementation
{
  v3.receiver = self;
  v3.super_class = HKHealthStore;
  return [(HKHealthStore *)&v3 init];
}

- (HKHealthStore)initWithListenerEndpoint:(id)endpoint debugIdentifier:(id)identifier
{
  v48 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  identifierCopy = identifier;
  if (([objc_opt_class() isHealthDataAvailable] & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "Health data is not available on this device", buf, 2u);
    }
  }

  if (_allowHKHealthStoreCreation == 1)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_FAULT))
    {
      [HKHealthStore initWithListenerEndpoint:debugIdentifier:];
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    v10 = [callStackSymbols countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v42;
      do
      {
        v13 = 0;
        do
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(callStackSymbols);
          }

          v14 = *(*(&v41 + 1) + 8 * v13);
          _HKInitializeLogging();
          v15 = HKLogDefault;
          if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v46 = v14;
            _os_log_error_impl(&dword_19197B000, v15, OS_LOG_TYPE_ERROR, "    %@", buf, 0xCu);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [callStackSymbols countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v11);
    }

    identifierCopy = v35;
    endpointCopy = v36;
  }

  v40.receiver = self;
  v40.super_class = HKHealthStore;
  v16 = [(HKHealthStore *)&v40 init];
  v17 = v16;
  if (v16)
  {
    v16->_lock._os_unfair_lock_opaque = 0;
    v16->_storeKeeperLock._os_unfair_lock_opaque = 0;
    v16->_configurationLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v16->_daemonLaunchDarwinNotificationName, @"kHKHealthDaemonDidFinishLaunchingNotification");
    v18 = [identifierCopy copy];
    debugIdentifier = v17->_debugIdentifier;
    v17->_debugIdentifier = v18;

    v20 = +[HKProfileIdentifier primaryProfile];
    profileIdentifier = v17->_profileIdentifier;
    v17->_profileIdentifier = v20;

    v22 = +[HKHealthStoreIdentifier primaryStoreIdentifier];
    identifier = v17->_identifier;
    v17->_identifier = v22;

    v24 = HKApplicationSDKVersionToken();
    v25 = 0;
    v17->_applicationSDKVersionToken = v24;
    if (!endpointCopy)
    {
      v25 = !+[HKHealthStore requireExplicitSystemMachServiceEnablement];
    }

    v17->_canConnectToSystemMachService = v25;
    v17->_isUsingSystemEndpoint = endpointCopy == 0;
    v26 = HKCreateSerialDispatchQueue(v17, @"client");
    clientQueue = v17->_clientQueue;
    v17->_clientQueue = v26;

    v28 = HKCreateSerialDispatchQueue(v17, @"connection");
    connectionQueue = v17->_connectionQueue;
    v17->_connectionQueue = v28;

    if ([objc_opt_class() _useHKHealthStoreImplementation])
    {
      v30 = endpointCopy;
      healthStoreImplementationEndPoint = v17->_healthStoreImplementationEndPoint;
      v17->_healthStoreImplementationEndPoint = v30;
    }

    else
    {
      healthStoreImplementationEndPoint = [MEMORY[0x1E696AD88] defaultCenter];
      [healthStoreImplementationEndPoint addObserver:v17 selector:sel__applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];
      [healthStoreImplementationEndPoint addObserver:v17 selector:sel__applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
      v32 = v17->_connectionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__HKHealthStore_initWithListenerEndpoint_debugIdentifier___block_invoke;
      block[3] = &unk_1E7378400;
      v38 = v17;
      v39 = endpointCopy;
      dispatch_async(v32, block);
    }

    [(HKHealthStore *)v17 _faultIfInappropriateHost];
  }

  v33 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)_faultIfInappropriateHost
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[_HKBehavior sharedBehavior];
  isAppleInternalInstall = [v2 isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    if (_faultIfInappropriateHost_onceToken != -1)
    {
      [HKHealthStore _faultIfInappropriateHost];
    }

    if (_faultIfInappropriateHost_isHealthd == 1)
    {
      _HKInitializeLogging();
      v4 = HKLogInfrastructure();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [HKHealthStore _faultIfInappropriateHost];
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

void __42__HKHealthStore__faultIfInappropriateHost__block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v1 processName];
  _faultIfInappropriateHost_isHealthd = [v0 isEqualToString:@"healthd"];
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
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation unitTest_replaceListenerEndpoint:endpointCopy];
  }

  else
  {
    self->_isUsingSystemEndpoint = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__3;
    v17 = __Block_byref_object_dispose__3;
    v18 = 0;
    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__HKHealthStore_unitTest_replaceListenerEndpoint___block_invoke;
    block[3] = &unk_1E7378280;
    v12 = &v13;
    block[4] = self;
    v11 = endpointCopy;
    dispatch_sync(connectionQueue, block);
    [(HKHealthStore *)self connectionInterrupted];
    [v14[5] invalidate];
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return v7;
}

uint64_t __50__HKHealthStore_unitTest_replaceListenerEndpoint___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 32));
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
  v4.super_class = HKHealthStore;
  [(HKHealthStore *)&v4 dealloc];
}

- (id)_implementationCreate:(BOOL)create
{
  createCopy = create;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_healthStoreImplementation;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !createCopy;
  }

  if (!v6 && (!self->_resumeRequired || self->_resumed))
  {
    v7 = [HKHealthStoreImplementation healthStoreImplementationFor:self sourceBundle:self->_sourceBundle endpoint:self->_healthStoreImplementationEndPoint shared:1 create:1];
    healthStoreImplementation = self->_healthStoreImplementation;
    self->_healthStoreImplementation = v7;

    v5 = self->_healthStoreImplementation;
    healthStoreImplementationEndPoint = self->_healthStoreImplementationEndPoint;
    self->_healthStoreImplementationEndPoint = 0;

    self->_resumed = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = v5;

  return v5;
}

- (HKHealthStoreImplementation)implementation
{
  if ([objc_opt_class() _useHKHealthStoreImplementation])
  {
    v3 = [(HKHealthStore *)self _implementationCreate:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setConfigurationPropertyUsingBlock:(id)block resumeRequired:(BOOL)required
{
  requiredCopy = required;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  if (self->_resumed)
  {
    os_unfair_lock_unlock(&self->_lock);
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot configure HKHealthStore after it has been resumed"];
  }

  else
  {
    if (requiredCopy)
    {
      self->_resumeRequired = 1;
    }

    blockCopy[2]();
    os_unfair_lock_lock(&self->_configurationLock);
    configuration = self->_configuration;
    self->_configuration = 0;

    os_unfair_lock_unlock(&self->_configurationLock);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)unitTest_setApplicationSDKVersionToken:(unint64_t)token
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__HKHealthStore_unitTest_setApplicationSDKVersionToken___block_invoke;
  v3[3] = &unk_1E7378630;
  v3[4] = self;
  v3[5] = token;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v3 resumeRequired:1];
}

- (unint64_t)applicationSDKVersionToken
{
  v3 = [(HKHealthStore *)self _implementationCreate:0];
  v4 = v3;
  if (v3)
  {
    applicationSDKVersionToken = [v3 applicationSDKVersionToken];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    applicationSDKVersionToken = self->_applicationSDKVersionToken;
    os_unfair_lock_unlock(&self->_lock);
  }

  return applicationSDKVersionToken;
}

- (void)setProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__HKHealthStore_setProfileIdentifier___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:1];
}

uint64_t __38__HKHealthStore_setProfileIdentifier___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = [HKHealthStoreIdentifier identifierFromProfileIdentifier:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 280);
  *(v3 + 280) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (HKProfileIdentifier)profileIdentifier
{
  v3 = [(HKHealthStore *)self _implementationCreate:0];
  v4 = v3;
  if (v3)
  {
    profileIdentifier = [v3 profileIdentifier];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    profileIdentifier = self->_profileIdentifier;
    os_unfair_lock_unlock(&self->_lock);
  }

  return profileIdentifier;
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
  v6[2] = __43__HKHealthStore_setSourceBundleIdentifier___block_invoke;
  v6[3] = &unk_1E7378658;
  v6[4] = self;
  v8 = &v9;
  v5 = identifierCopy;
  v7 = v5;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:1];
  if (*(v10 + 24) == 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Do not set both sourceBundleIdentifier and sourceBundle"];
  }

  _Block_object_dispose(&v9, 8);
}

void __43__HKHealthStore_setSourceBundleIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 40))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((v1 + 48), *(a1 + 40));
  }
}

- (NSString)sourceBundleIdentifier
{
  v3 = [(HKHealthStore *)self _implementationCreate:0];
  v4 = v3;
  if (v3)
  {
    sourceBundleIdentifier = [v3 sourceBundleIdentifier];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    os_unfair_lock_unlock(&self->_lock);
  }

  return sourceBundleIdentifier;
}

- (void)setSourceBundle:(id)bundle
{
  bundleCopy = bundle;
  if (self->_healthStoreImplementation)
  {
    [HKHealthStore setSourceBundle:];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__HKHealthStore_setSourceBundle___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = bundleCopy;
  v5 = bundleCopy;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:1];
}

void __33__HKHealthStore_setSourceBundle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) bundleIdentifier];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = *(a1 + 40);
  v6 = (*(a1 + 32) + 40);

  objc_storeStrong(v6, v5);
}

- (NSBundle)sourceBundle
{
  v3 = [(HKHealthStore *)self _implementationCreate:0];
  v4 = v3;
  if (v3)
  {
    sourceBundle = [v3 sourceBundle];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    sourceBundle = self->_sourceBundle;
    os_unfair_lock_unlock(&self->_lock);
  }

  return sourceBundle;
}

- (id)_sourceBundleOrDefaultBundle
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    _sourceBundleOrDefaultBundle = [implementation _sourceBundleOrDefaultBundle];
  }

  else
  {
    sourceBundle = [(HKHealthStore *)self sourceBundle];
    v7 = sourceBundle;
    if (sourceBundle)
    {
      mainBundle = sourceBundle;
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    }

    _sourceBundleOrDefaultBundle = mainBundle;
  }

  return _sourceBundleOrDefaultBundle;
}

- (void)setDebugIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__HKHealthStore_setDebugIdentifier___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:1];
}

- (NSString)debugIdentifier
{
  v3 = [(HKHealthStore *)self _implementationCreate:0];
  v4 = v3;
  if (v3)
  {
    debugIdentifier = [v3 debugIdentifier];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    debugIdentifier = self->_debugIdentifier;
    os_unfair_lock_unlock(&self->_lock);
  }

  return debugIdentifier;
}

- (void)setCanConnectToSystemMachService:(BOOL)service
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__HKHealthStore_setCanConnectToSystemMachService___block_invoke;
  v3[3] = &unk_1E7378680;
  v3[4] = self;
  serviceCopy = service;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v3 resumeRequired:0];
}

- (BOOL)canConnectToSystemMachService
{
  v3 = [(HKHealthStore *)self _implementationCreate:0];
  v4 = v3;
  if (v3)
  {
    canConnectToSystemMachService = [v3 canConnectToSystemMachService];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    canConnectToSystemMachService = self->_canConnectToSystemMachService;
    os_unfair_lock_unlock(&self->_lock);
  }

  return canConnectToSystemMachService & 1;
}

- (HKHealthServicesManager)healthServicesManager
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    healthServicesManager = [implementation healthServicesManager];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    healthServicesManager = self->_healthServicesManager;
    if (!healthServicesManager)
    {
      v7 = [[HKHealthServicesManager alloc] initWithWeakHealthStore:self];
      v8 = self->_healthServicesManager;
      self->_healthServicesManager = v7;

      healthServicesManager = self->_healthServicesManager;
    }

    healthServicesManager = healthServicesManager;
    os_unfair_lock_unlock(&self->_lock);
  }

  return healthServicesManager;
}

- (OS_dispatch_queue)clientQueue
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    clientQueue = [implementation clientQueue];
  }

  else
  {
    clientQueue = self->_clientQueue;
  }

  v6 = clientQueue;

  return v6;
}

- (void)setUnitTest_handleExecuteQuery:(id)query
{
  unitTest_handleExecuteQuery = query;
  implementation = [(HKHealthStore *)self implementation];
  v7 = implementation;
  if (implementation)
  {
    [implementation setUnitTest_handleExecuteQuery:unitTest_handleExecuteQuery];
  }

  else
  {
    v6 = _Block_copy(unitTest_handleExecuteQuery);

    unitTest_handleExecuteQuery = self->_unitTest_handleExecuteQuery;
    self->_unitTest_handleExecuteQuery = v6;
  }
}

- (void)resume
{
  os_unfair_lock_lock(&self->_lock);
  self->_resumed = 1;
  os_unfair_lock_unlock(&self->_lock);
  implementation = [(HKHealthStore *)self implementation];
  if (implementation)
  {
    v4 = implementation;
    [implementation resume];
    implementation = v4;
  }
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
  aBlock[2] = __44__HKHealthStore__wrappedErrorHandler_proxy___block_invoke;
  aBlock[3] = &unk_1E73786A8;
  aBlock[4] = self;
  v13 = proxyCopy;
  v14 = handlerCopy;
  v8 = handlerCopy;
  v9 = proxyCopy;
  v10 = _Block_copy(aBlock);

  return v10;
}

void __44__HKHealthStore__wrappedErrorHandler_proxy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hk_isXPCConnectionError])
  {
    [*(a1 + 32) _discardServerProxiesForServer:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (id)healthStoreConfiguration
{
  os_unfair_lock_lock(&self->_configurationLock);
  v3 = self->_configuration;
  if (!self->_configuration)
  {
    v4 = [HKHealthStoreConfiguration alloc];
    sourceBundleIdentifier = self->_sourceBundleIdentifier;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [mainBundle objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
    clinicalReadAuthorizationUsageDescriptionOverride = self->_clinicalReadAuthorizationUsageDescriptionOverride;
    v9 = [(HKHealthStoreConfiguration *)v4 initWithSourceBundleIdentifier:sourceBundleIdentifier sourceVersion:v7 debugIdentifier:self->_debugIdentifier profileIdentifier:self->_profileIdentifier applicationSDKVersionToken:self->_applicationSDKVersionToken daemonLaunchDarwinNotificationName:self->_daemonLaunchDarwinNotificationName writeAuthorizationUsageDescriptionOverride:self->_writeAuthorizationUsageDescriptionOverride readAuthorizationUsageDescriptionOverride:self->_readAuthorizationUsageDescriptionOverride clinicalReadAuthorizationUsageDescriptionOverride:clinicalReadAuthorizationUsageDescriptionOverride researchStudyUsageDescriptionOverride:self->_researchStudyUsageDescriptionOverride];
    configuration = self->_configuration;
    self->_configuration = v9;

    v11 = self->_configuration;
    v3 = v11;
  }

  os_unfair_lock_unlock(&self->_configurationLock);

  return v3;
}

- (void)_serverProxyWithHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (!implementation)
  {
    if (handlerCopy)
    {
      if (errorHandlerCopy)
      {
LABEL_5:
        connectionQueue = self->_connectionQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__HKHealthStore__serverProxyWithHandler_errorHandler___block_invoke;
        block[3] = &unk_1E73786F8;
        block[4] = self;
        v12 = errorHandlerCopy;
        v13 = handlerCopy;
        dispatch_async(connectionQueue, block);

        goto LABEL_6;
      }
    }

    else
    {
      [HKHealthStore _serverProxyWithHandler:errorHandler:];
      if (errorHandlerCopy)
      {
        goto LABEL_5;
      }
    }

    [HKHealthStore _serverProxyWithHandler:errorHandler:];
    goto LABEL_5;
  }

  [implementation _serverProxyWithHandler:handlerCopy errorHandler:errorHandlerCopy];
LABEL_6:
}

void __54__HKHealthStore__serverProxyWithHandler_errorHandler___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [v2 _lock_connectionWithError:&v13];
  v4 = v13;
  v5 = *(*(a1 + 32) + 88);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
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
    v10[2] = __54__HKHealthStore__serverProxyWithHandler_errorHandler___block_invoke_2;
    v10[3] = &unk_1E73786D0;
    v10[4] = *(a1 + 32);
    v11 = v6;
    v12 = *(a1 + 48);
    [v8 remote_serverForConfiguration:v9 completion:v10];
  }

LABEL_6:
}

void __54__HKHealthStore__serverProxyWithHandler_errorHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    os_unfair_lock_lock((a1[4] + 8));
    v5 = a1[4];
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;
    v7 = v4;

    os_unfair_lock_unlock((a1[4] + 8));
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
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation _synchronousServerProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__3;
    v35 = __Block_byref_object_dispose__3;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__3;
    v29 = __Block_byref_object_dispose__3;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__3;
    v23 = __Block_byref_object_dispose__3;
    v24 = 0;
    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__HKHealthStore__synchronousServerProxyWithErrorHandler___block_invoke;
    block[3] = &unk_1E7378720;
    block[4] = self;
    block[5] = &v25;
    block[6] = &v31;
    block[7] = &v19;
    dispatch_sync(connectionQueue, block);
    v9 = [(HKHealthStore *)self _wrappedErrorHandler:handlerCopy proxy:v20[5]];
    v10 = v20[5];
    if (v10)
    {
      v7 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v9];
    }

    else
    {
      v11 = v26[5];
      if (v11)
      {
        v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v9];
        healthStoreConfiguration = [(HKHealthStore *)self healthStoreConfiguration];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __57__HKHealthStore__synchronousServerProxyWithErrorHandler___block_invoke_2;
        v15[3] = &unk_1E7378748;
        v15[4] = self;
        v17 = &v19;
        v16 = v9;
        [v12 remote_serverForConfiguration:healthStoreConfiguration completion:v15];
        v7 = v20[5];
      }

      else
      {
        handlerCopy[2](handlerCopy, v32[5]);
        v7 = 0;
      }
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(&v31, 8);
  }

  return v7;
}

void __57__HKHealthStore__synchronousServerProxyWithErrorHandler___block_invoke(void *a1)
{
  os_unfair_lock_lock((a1[4] + 8));
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

  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 88));
  os_unfair_lock_unlock((a1[4] + 8));
}

void __57__HKHealthStore__synchronousServerProxyWithErrorHandler___block_invoke_2(void *a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v14 = v4;
    os_unfair_lock_lock((a1[4] + 8));
    v5 = a1[4];
    v8 = *(v5 + 88);
    v6 = (v5 + 88);
    v7 = v8;
    if (v8)
    {
      v9 = v7;

      v14 = v9;
    }

    else
    {
      objc_storeStrong(v6, a2);
    }

    os_unfair_lock_unlock((a1[4] + 8));
    v11 = [v14 synchronousRemoteObjectProxyWithErrorHandler:a1[5]];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v10 = *(a1[5] + 16);

    v10();
  }
}

- (void)fetchPluginServiceEndpointForIdentifier:(id)identifier endpointHandler:(id)handler errorHandler:(id)errorHandler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (!implementation)
  {
    if (identifierCopy)
    {
      if (handlerCopy)
      {
        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "pluginIdentifier"}];
      if (handlerCopy)
      {
LABEL_5:
        if (errorHandlerCopy)
        {
LABEL_6:
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __86__HKHealthStore_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke;
          aBlock[3] = &unk_1E73786A8;
          v13 = identifierCopy;
          v21 = v13;
          selfCopy = self;
          v23 = errorHandlerCopy;
          v14 = _Block_copy(aBlock);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __86__HKHealthStore_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_2;
          v15[3] = &unk_1E7378798;
          v16 = v13;
          selfCopy2 = self;
          v18 = handlerCopy;
          errorHandlerCopy = v14;
          v19 = errorHandlerCopy;
          [(HKHealthStore *)self _serverProxyWithHandler:v15 errorHandler:errorHandlerCopy];

          goto LABEL_7;
        }

LABEL_10:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "errorHandler"}];
        goto LABEL_6;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "endpointHandler"}];
    if (errorHandlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  [implementation fetchPluginServiceEndpointForIdentifier:identifierCopy endpointHandler:handlerCopy errorHandler:errorHandlerCopy];
LABEL_7:
}

void __86__HKHealthStore_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke(uint64_t a1, void *a2)
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

  v6 = *(*(a1 + 40) + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__HKHealthStore_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_372;
  v10[3] = &unk_1E7376AC0;
  v7 = *(a1 + 48);
  v11 = v3;
  v12 = v7;
  v8 = v3;
  dispatch_async(v6, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __86__HKHealthStore_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__HKHealthStore_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_3;
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

void __86__HKHealthStore_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 16);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__HKHealthStore_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_4;
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

    v7 = *(*(a1 + 32) + 16);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__HKHealthStore_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_373;
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
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation pluginServiceEndpointForIdentifier:identifierCopy error:error];
  }

  else
  {
    if (!identifierCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "pluginIdentifier"}];
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__3;
    v36 = __Block_byref_object_dispose__3;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__3;
    v30 = __Block_byref_object_dispose__3;
    v31 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58__HKHealthStore_pluginServiceEndpointForIdentifier_error___block_invoke;
    v23[3] = &unk_1E73787C0;
    v10 = identifierCopy;
    v24 = v10;
    v25 = &v26;
    v11 = [(HKHealthStore *)self _synchronousServerProxyWithErrorHandler:v23];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__HKHealthStore_pluginServiceEndpointForIdentifier_error___block_invoke_376;
    v17[3] = &unk_1E73787E8;
    v21 = &v32;
    v18 = v10;
    selfCopy = self;
    v12 = v11;
    v20 = v12;
    v22 = &v26;
    [v12 remote_fetchPluginServiceEndpointWithIdentifier:v18 completion:v17];
    v13 = v27[5];
    v14 = v13;
    if (v13)
    {
      if (error)
      {
        v15 = v13;
        *error = v14;
      }

      else
      {
        _HKLogDroppedError(v13);
      }
    }

    v9 = v33[5];
    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(&v32, 8);
  }

  return v9;
}

void __58__HKHealthStore_pluginServiceEndpointForIdentifier_error___block_invoke(uint64_t a1, void *a2)
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

void __58__HKHealthStore_pluginServiceEndpointForIdentifier_error___block_invoke_376(uint64_t a1, void *a2, void *a3)
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
  implementation = [(HKHealthStore *)self implementation];
  v23 = implementation;
  if (!implementation)
  {
    if (identifierCopy)
    {
      if (handlerCopy)
      {
        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "taskIdentifier"}];
      if (handlerCopy)
      {
LABEL_5:
        if (errorHandlerCopy)
        {
LABEL_6:
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __129__HKHealthStore_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke;
          v24[3] = &unk_1E7378810;
          v25 = identifierCopy;
          v26 = lCopy;
          v27 = dCopy;
          v28 = iDCopy;
          v29 = configurationCopy;
          selfCopy = self;
          v31 = handlerCopy;
          v32 = errorHandlerCopy;
          [(HKHealthStore *)self _serverProxyWithHandler:v24 errorHandler:v32];

          goto LABEL_7;
        }

LABEL_10:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "errorHandler"}];
        goto LABEL_6;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "endpointHandler"}];
    if (errorHandlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  [implementation fetchTaskServerEndpointForIdentifier:identifierCopy pluginURL:lCopy taskUUID:dCopy instanceUUID:iDCopy configuration:configurationCopy endpointHandler:handlerCopy errorHandler:errorHandlerCopy];
LABEL_7:
}

void __129__HKHealthStore_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __129__HKHealthStore_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke_2;
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

void __129__HKHealthStore_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 16);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __129__HKHealthStore_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke_3;
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

    v7 = *(*(a1 + 32) + 16);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __129__HKHealthStore_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke_378;
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
  implementation = [(HKHealthStore *)self implementation];
  v20 = implementation;
  if (implementation)
  {
    v21 = [implementation taskServerEndpointForIdentifier:identifierCopy pluginURL:lCopy taskUUID:dCopy instanceUUID:iDCopy configuration:configurationCopy error:error];
  }

  else
  {
    if (!identifierCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "taskIdentifier"}];
    }

    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__3;
    v45 = __Block_byref_object_dispose__3;
    v46 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__3;
    v39 = __Block_byref_object_dispose__3;
    v40 = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __101__HKHealthStore_taskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_error___block_invoke;
    v34[3] = &unk_1E7378838;
    v34[4] = &v35;
    v22 = [(HKHealthStore *)self _synchronousServerProxyWithErrorHandler:v34];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __101__HKHealthStore_taskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_error___block_invoke_2;
    v28[3] = &unk_1E73787E8;
    v32 = &v41;
    v29 = identifierCopy;
    selfCopy = self;
    v23 = v22;
    v31 = v23;
    v33 = &v35;
    [v23 remote_createTaskServerEndpointForIdentifier:v29 pluginURL:lCopy taskUUID:dCopy instanceUUID:iDCopy configuration:configurationCopy completion:v28];
    v24 = v36[5];
    v25 = v24;
    if (v24)
    {
      if (error)
      {
        v26 = v24;
        *error = v25;
      }

      else
      {
        _HKLogDroppedError(v24);
      }
    }

    v21 = v42[5];
    _Block_object_dispose(&v35, 8);

    _Block_object_dispose(&v41, 8);
  }

  return v21;
}

void __101__HKHealthStore_taskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
  implementation = [(HKHealthStore *)self implementation];
  v14 = implementation;
  if (implementation)
  {
    [implementation deleteAllSamplesWithTypes:typesCopy sourceBundleIdentifier:identifierCopy options:options completion:completionCopy];
  }

  else
  {
    if (!typesCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sampleTypes"}];
    }

    if (![typesCopy count])
    {
      [HKHealthStore deleteAllSamplesWithTypes:sourceBundleIdentifier:options:completion:];
    }

    v15 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__HKHealthStore_deleteAllSamplesWithTypes_sourceBundleIdentifier_options_completion___block_invoke;
    v18[3] = &unk_1E7378860;
    v19 = typesCopy;
    v20 = identifierCopy;
    optionsCopy = options;
    v21 = v15;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __85__HKHealthStore_deleteAllSamplesWithTypes_sourceBundleIdentifier_options_completion___block_invoke_2;
    v16[3] = &unk_1E7376960;
    completionCopy = v21;
    v17 = completionCopy;
    [(HKHealthStore *)self _serverProxyWithHandler:v18 errorHandler:v16];
  }
}

- (void)deleteObjectsWithUUIDs:(id)ds options:(unint64_t)options completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v11 = implementation;
  if (implementation)
  {
    [implementation deleteObjectsWithUUIDs:dsCopy options:options completion:completionCopy];
  }

  else
  {
    if (!dsCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "uuids"}];
    }

    v12 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__HKHealthStore_deleteObjectsWithUUIDs_options_completion___block_invoke;
    v15[3] = &unk_1E7378888;
    v16 = dsCopy;
    optionsCopy = options;
    v17 = v12;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__HKHealthStore_deleteObjectsWithUUIDs_options_completion___block_invoke_2;
    v13[3] = &unk_1E7376960;
    completionCopy = v17;
    v14 = completionCopy;
    [(HKHealthStore *)self _serverProxyWithHandler:v15 errorHandler:v13];
  }
}

- (void)deleteClientSourceWithCompletion:(id)completion
{
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation deleteClientSourceWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__HKHealthStore_deleteClientSourceWithCompletion___block_invoke;
    v10[3] = &unk_1E73788B0;
    v11 = v7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__HKHealthStore_deleteClientSourceWithCompletion___block_invoke_2;
    v8[3] = &unk_1E7376960;
    completionCopy = v11;
    v9 = completionCopy;
    [(HKHealthStore *)self _serverProxyWithHandler:v10 errorHandler:v8];
  }
}

- (void)associateSampleUUIDs:(id)ds withSampleUUID:(id)d completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (implementation)
  {
    [implementation associateSampleUUIDs:dsCopy withSampleUUID:dCopy completion:completionCopy];
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      *buf = 134218242;
      v25 = [dsCopy count];
      v26 = 2114;
      v27 = dCopy;
      _os_log_impl(&dword_19197B000, v14, OS_LOG_TYPE_INFO, "Associating %llu samples to sample %{public}@", buf, 0x16u);
    }

    v15 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__HKHealthStore_associateSampleUUIDs_withSampleUUID_completion___block_invoke;
    v20[3] = &unk_1E73788D8;
    v21 = dsCopy;
    v22 = dCopy;
    v23 = v15;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__HKHealthStore_associateSampleUUIDs_withSampleUUID_completion___block_invoke_2;
    v18[3] = &unk_1E7376960;
    v19 = v23;
    v16 = v23;
    [(HKHealthStore *)self _serverProxyWithHandler:v20 errorHandler:v18];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)saveObjects:(id)objects deleteObjects:(id)deleteObjects associations:(id)associations completion:(id)completion
{
  objectsCopy = objects;
  deleteObjectsCopy = deleteObjects;
  associationsCopy = associations;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v16 = implementation;
  if (implementation)
  {
    [implementation saveObjects:objectsCopy deleteObjects:deleteObjectsCopy associations:associationsCopy completion:completionCopy];
    v17 = completionCopy;
  }

  else
  {
    v17 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

    if ([objectsCopy count] <= 0xC8 && objc_msgSend(deleteObjectsCopy, "count") <= 0xC8 && objc_msgSend(associationsCopy, "count") < 0xC9)
    {
      v28 = 0;
      v19 = [(HKHealthStore *)self _prepareObjectsForSaving:objectsCopy errorOut:&v28];
      v20 = v28;
      if (v19)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __67__HKHealthStore_saveObjects_deleteObjects_associations_completion___block_invoke;
        v23[3] = &unk_1E7378900;
        v24 = objectsCopy;
        v25 = deleteObjectsCopy;
        v26 = associationsCopy;
        v27 = v17;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __67__HKHealthStore_saveObjects_deleteObjects_associations_completion___block_invoke_2;
        v21[3] = &unk_1E7376960;
        v22 = v27;
        [(HKHealthStore *)self _serverProxyWithHandler:v23 errorHandler:v21];
      }

      else
      {
        (v17)[2](v17, 0, v20);
      }
    }

    else
    {
      v18 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Current support only valid for saving, deleting and associating for %d objects or less", 200}];
      (v17)[2](v17, 0, v18);
    }
  }
}

- (void)recalibrateEstimatesForSampleType:(HKSampleType *)sampleType atDate:(NSDate *)date completion:(void *)completion
{
  v8 = sampleType;
  v9 = date;
  v10 = completion;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (!implementation)
  {
    if (v8)
    {
      if (v9)
      {
LABEL_5:
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __69__HKHealthStore_recalibrateEstimatesForSampleType_atDate_completion___block_invoke;
        v22[3] = &unk_1E7378928;
        v13 = v8;
        v23 = v13;
        v14 = v9;
        v24 = v14;
        v25 = v10;
        v15 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v22];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __69__HKHealthStore_recalibrateEstimatesForSampleType_atDate_completion___block_invoke_390;
        v18[3] = &unk_1E73788D8;
        v19 = v13;
        v20 = v14;
        v21 = v15;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __69__HKHealthStore_recalibrateEstimatesForSampleType_atDate_completion___block_invoke_2;
        v16[3] = &unk_1E7376960;
        v10 = v21;
        v17 = v10;
        [(HKHealthStore *)self _serverProxyWithHandler:v18 errorHandler:v16];

        goto LABEL_6;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sampleType"}];
      if (v9)
      {
        goto LABEL_5;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "date"}];
    goto LABEL_5;
  }

  [implementation recalibrateEstimatesForSampleType:v8 atDate:v9 completion:v10];
LABEL_6:
}

void __69__HKHealthStore_recalibrateEstimatesForSampleType_atDate_completion___block_invoke(void *a1, int a2, void *a3)
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
    block[2] = __86__HKHealthStore_clientRemote_presentRecalibrateEstimatesRequestWithRecord_completion___block_invoke;
    block[3] = &unk_1E7376618;
    v14 = completionCopy;
    block[4] = self;
    v13 = recordCopy;
    dispatch_async(clientQueue, block);
  }
}

void __86__HKHealthStore_clientRemote_presentRecalibrateEstimatesRequestWithRecord_completion___block_invoke(void *a1)
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
  v7 = *(v6 + 112);
  if (!v7)
  {
    v8 = _HKCreateRecalibrateEstimatesPresentationController();
    v9 = a1[4];
    v10 = *(v9 + 112);
    *(v9 + 112) = v8;

    v6 = a1[4];
    v7 = *(v6 + 112);
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
  WeakRetained = objc_loadWeakRetained((v6 + 264));
  v13 = a1[6];
  v14 = WeakRetained;
  [v7 presentWithRequestRecord:v11 authorizationViewControllerPresenter:? completion:?];
LABEL_7:
}

- (HKAuthorizationStatus)authorizationStatusForType:(HKObjectType *)type
{
  v4 = type;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation authorizationStatusForType:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKHealthStore authorizationStatusForType:];
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__HKHealthStore_authorizationStatusForType___block_invoke;
    aBlock[3] = &unk_1E7378950;
    aBlock[4] = &v18;
    v8 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__HKHealthStore_authorizationStatusForType___block_invoke_405;
    v15[3] = &unk_1E7376960;
    v9 = v8;
    v16 = v9;
    v10 = [(HKHealthStore *)self _synchronousServerProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__HKHealthStore_authorizationStatusForType___block_invoke_2;
    v13[3] = &unk_1E7378978;
    v11 = v9;
    v14 = v11;
    [v10 remote_authorizationStatusForType:v4 completion:v13];
    v7 = v19[3];

    _Block_object_dispose(&v18, 8);
  }

  return v7;
}

void __44__HKHealthStore_authorizationStatusForType___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)getRequestStatusForAuthorizationToShareTypes:(NSSet *)typesToShare readTypes:(NSSet *)typesToRead completion:(void *)completion
{
  v8 = typesToShare;
  v9 = typesToRead;
  v10 = completion;
  implementation = [(HKHealthStore *)self implementation];
  if (implementation)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __83__HKHealthStore_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke;
    v23[3] = &unk_1E73789C8;
    v12 = v10;
    v23[4] = self;
    v24 = v12;
    [implementation getRequestStatusForAuthorizationToShareTypes:v8 readTypes:v9 completion:v23];
    v13 = v24;
  }

  else
  {
    [(HKHealthStore *)self _validateAuthorizationRequestWithShareTypes:v8 readTypes:v9];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__HKHealthStore_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke_3;
    aBlock[3] = &unk_1E73789F0;
    aBlock[4] = self;
    v22 = v10;
    v14 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__HKHealthStore_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke_5;
    v17[3] = &unk_1E73788D8;
    v18 = v8;
    v19 = v9;
    v20 = v14;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__HKHealthStore_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke_6;
    v15[3] = &unk_1E7376960;
    v12 = v20;
    v16 = v12;
    [(HKHealthStore *)self _serverProxyWithHandler:v17 errorHandler:v15];

    v13 = v22;
  }
}

void __83__HKHealthStore_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__HKHealthStore_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke_2;
    block[3] = &unk_1E73789A0;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void __83__HKHealthStore_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__HKHealthStore_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke_4;
  block[3] = &unk_1E73789A0;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __83__HKHealthStore_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke_4(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[6], a1[4]);
  }

  return result;
}

- (void)requestAuthorizationToShareTypes:(NSSet *)typesToShare readTypes:(NSSet *)typesToRead completion:(void *)completion
{
  v8 = completion;
  v9 = typesToRead;
  v10 = typesToShare;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (implementation)
  {
    [implementation requestAuthorizationToShareTypes:v10 readTypes:v9 completion:v8];
  }

  else
  {
    [(HKHealthStore *)self requestAuthorizationToShareTypes:v10 readTypes:v9 shouldPrompt:1 completion:v8];
  }
}

- (void)_validatePurposeStringsForObjectType:(id)type
{
  typeCopy = type;
  _clientReadAuthorizationUsageDescription = [(HKHealthStore *)self _clientReadAuthorizationUsageDescription];
  if (!_clientReadAuthorizationUsageDescription)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"NSHealthShareUsageDescription must be set in the app's Info.plist in order to request read authorization for the following types: %@", typeCopy}];
  }

  if (HKProgramSDKAtLeast() && ([_clientReadAuthorizationUsageDescription hk_isValidPurposeString] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The string %@ is an invalid value for NSHealthShareUsageDescription", _clientReadAuthorizationUsageDescription}];
  }
}

- (void)requestPerObjectReadAuthorizationForType:(HKObjectType *)objectType predicate:(NSPredicate *)predicate completion:(void *)completion
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = objectType;
  v9 = predicate;
  v10 = completion;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (implementation)
  {
    [implementation requestPerObjectReadAuthorizationForType:v8 predicate:v9 completion:v10];
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogAuthorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v8;
      _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "Requesting per-object authorization to read %@", buf, 0xCu);
    }

    [(HKHealthStore *)self _throwIfPerObjectReadAuthorizationNotSupportedForType:v8];
    [(HKHealthStore *)self _validatePurposeStringsForObjectType:v8];
    v14 = +[_HKBehavior sharedBehavior];
    isAppleWatch = [v14 isAppleWatch];

    if (isAppleWatch)
    {
      v16 = [MEMORY[0x1E696ABC0] hk_error:2 description:@"Per-object authorization presentation is not supported on this device"];
      v10[2](v10, 0, v16);
    }

    else
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __79__HKHealthStore_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke;
      v29[3] = &unk_1E7378928;
      v17 = v8;
      v30 = v17;
      selfCopy = self;
      v32 = v10;
      v18 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v29];
      v19 = [MEMORY[0x1E695DFD8] setWithObject:v17];
      v20 = [(NSPredicate *)v9 hk_filterRepresentationForDataTypes:v19];

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __79__HKHealthStore_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke_417;
      v25[3] = &unk_1E73788D8;
      v26 = v17;
      v27 = v20;
      v28 = v18;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __79__HKHealthStore_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke_2;
      v23[3] = &unk_1E7376960;
      v10 = v28;
      v24 = v10;
      v21 = v20;
      [(HKHealthStore *)self _serverProxyWithHandler:v25 errorHandler:v23];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __79__HKHealthStore_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke(void *a1, uint64_t a2, void *a3)
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

  [*(a1[5] + 96) cancelPresentation];
  v9 = a1[5];
  v10 = *(v9 + 96);
  *(v9 + 96) = 0;

  v11 = a1[6];
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __79__HKHealthStore_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke_417(void *a1, void *a2)
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

  [(HKHealthStore *)self _throwIfClinicalTypesRequestedToShare:typesCopy];
  [(HKHealthStore *)self _throwIfParentTypeNotRequestedForSharing:1 types:typesCopy];
  [(HKHealthStore *)self _throwIfParentTypeNotRequestedForSharing:0 types:readTypesCopy];
  [(HKHealthStore *)self _throwIfAuthorizationDisallowedForSharing:1 types:typesCopy];

  [(HKHealthStore *)self _throwIfAuthorizationDisallowedForSharing:0 types:readTypesCopy];
  [(HKHealthStore *)self _throwIfUsingIncorrectAuthorizationRequestType:readTypesCopy];
  [(HKHealthStore *)self _validateAuthorizationRequiredTypes];
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

void __84__HKHealthStore_requestAuthorizationToShareTypes_readTypes_shouldPrompt_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    [*(*(a1 + 48) + 96) cancelPresentation];
    v11 = *(a1 + 48);
    v12 = *(v11 + 96);
    *(v11 + 96) = 0;
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
  v4 = [v3 hk_map:&__block_literal_global_429];

  _sourceBundleOrDefaultBundle = [(HKHealthStore *)self _sourceBundleOrDefaultBundle];
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
    [(HKHealthStore *)self _validateClinicalHealthRecordsPurposeStringsForSharingTypes:typesCopy readingTypes:readingTypesCopy];
    [(HKHealthStore *)self _validateHealthDataPurposeStringsForSharingTypes:typesCopy readingTypes:readingTypesCopy isResearchStudy:v17];
  }
}

- (NSString)writeAuthorizationUsageDescriptionOverride
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    writeAuthorizationUsageDescriptionOverride = [implementation writeAuthorizationUsageDescriptionOverride];
  }

  else
  {
    writeAuthorizationUsageDescriptionOverride = self->_writeAuthorizationUsageDescriptionOverride;
  }

  v6 = writeAuthorizationUsageDescriptionOverride;

  return v6;
}

- (void)setWriteAuthorizationUsageDescriptionOverride:(id)override
{
  overrideCopy = override;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__HKHealthStore_setWriteAuthorizationUsageDescriptionOverride___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = overrideCopy;
  v5 = overrideCopy;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:0];
}

- (NSString)readAuthorizationUsageDescriptionOverride
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    readAuthorizationUsageDescriptionOverride = [implementation readAuthorizationUsageDescriptionOverride];
  }

  else
  {
    readAuthorizationUsageDescriptionOverride = self->_readAuthorizationUsageDescriptionOverride;
  }

  v6 = readAuthorizationUsageDescriptionOverride;

  return v6;
}

- (void)setReadAuthorizationUsageDescriptionOverride:(id)override
{
  overrideCopy = override;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__HKHealthStore_setReadAuthorizationUsageDescriptionOverride___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = overrideCopy;
  v5 = overrideCopy;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:0];
}

- (NSString)clinicalReadAuthorizationUsageDescriptionOverride
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    clinicalReadAuthorizationUsageDescriptionOverride = [implementation clinicalReadAuthorizationUsageDescriptionOverride];
  }

  else
  {
    clinicalReadAuthorizationUsageDescriptionOverride = self->_clinicalReadAuthorizationUsageDescriptionOverride;
  }

  v6 = clinicalReadAuthorizationUsageDescriptionOverride;

  return v6;
}

- (void)setClinicalReadAuthorizationUsageDescriptionOverride:(id)override
{
  overrideCopy = override;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__HKHealthStore_setClinicalReadAuthorizationUsageDescriptionOverride___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = overrideCopy;
  v5 = overrideCopy;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:0];
}

- (NSString)researchStudyUsageDescriptionOverride
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    researchStudyUsageDescriptionOverride = [implementation researchStudyUsageDescriptionOverride];
  }

  else
  {
    researchStudyUsageDescriptionOverride = self->_researchStudyUsageDescriptionOverride;
  }

  v6 = researchStudyUsageDescriptionOverride;

  return v6;
}

- (void)setResearchStudyUsageDescriptionOverride:(id)override
{
  overrideCopy = override;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__HKHealthStore_setResearchStudyUsageDescriptionOverride___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = overrideCopy;
  v5 = overrideCopy;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:0];
}

- (NSString)daemonLaunchDarwinNotificationName
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    daemonLaunchDarwinNotificationName = [implementation daemonLaunchDarwinNotificationName];
  }

  else
  {
    daemonLaunchDarwinNotificationName = self->_daemonLaunchDarwinNotificationName;
  }

  v6 = daemonLaunchDarwinNotificationName;

  return v6;
}

- (void)setDaemonLaunchDarwinNotificationName:(id)name
{
  nameCopy = name;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__HKHealthStore_setDaemonLaunchDarwinNotificationName___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = nameCopy;
  v5 = nameCopy;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:0];
}

- (id)_clientWriteAuthorizationUsageDescription
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    _clientWriteAuthorizationUsageDescription = [implementation _clientWriteAuthorizationUsageDescription];
LABEL_5:
    hk_localizedWriteAuthorizationUsageDescription = _clientWriteAuthorizationUsageDescription;
    goto LABEL_6;
  }

  writeAuthorizationUsageDescriptionOverride = self->_writeAuthorizationUsageDescriptionOverride;
  if (writeAuthorizationUsageDescriptionOverride)
  {
    _clientWriteAuthorizationUsageDescription = writeAuthorizationUsageDescriptionOverride;
    goto LABEL_5;
  }

  _sourceBundleOrDefaultBundle = [(HKHealthStore *)self _sourceBundleOrDefaultBundle];
  hk_localizedWriteAuthorizationUsageDescription = [_sourceBundleOrDefaultBundle hk_localizedWriteAuthorizationUsageDescription];

LABEL_6:

  return hk_localizedWriteAuthorizationUsageDescription;
}

- (id)_clientReadAuthorizationUsageDescription
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    _clientReadAuthorizationUsageDescription = [implementation _clientReadAuthorizationUsageDescription];
LABEL_5:
    hk_localizedReadAuthorizationUsageDescription = _clientReadAuthorizationUsageDescription;
    goto LABEL_6;
  }

  readAuthorizationUsageDescriptionOverride = self->_readAuthorizationUsageDescriptionOverride;
  if (readAuthorizationUsageDescriptionOverride)
  {
    _clientReadAuthorizationUsageDescription = readAuthorizationUsageDescriptionOverride;
    goto LABEL_5;
  }

  _sourceBundleOrDefaultBundle = [(HKHealthStore *)self _sourceBundleOrDefaultBundle];
  hk_localizedReadAuthorizationUsageDescription = [_sourceBundleOrDefaultBundle hk_localizedReadAuthorizationUsageDescription];

LABEL_6:

  return hk_localizedReadAuthorizationUsageDescription;
}

- (id)_clientClinicalReadAuthorizationUsageDescription
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    _clientClinicalReadAuthorizationUsageDescription = [implementation _clientClinicalReadAuthorizationUsageDescription];
LABEL_5:
    hk_localizedClinicalReadAuthorizationUsageDescription = _clientClinicalReadAuthorizationUsageDescription;
    goto LABEL_6;
  }

  clinicalReadAuthorizationUsageDescriptionOverride = self->_clinicalReadAuthorizationUsageDescriptionOverride;
  if (clinicalReadAuthorizationUsageDescriptionOverride)
  {
    _clientClinicalReadAuthorizationUsageDescription = clinicalReadAuthorizationUsageDescriptionOverride;
    goto LABEL_5;
  }

  _sourceBundleOrDefaultBundle = [(HKHealthStore *)self _sourceBundleOrDefaultBundle];
  hk_localizedClinicalReadAuthorizationUsageDescription = [_sourceBundleOrDefaultBundle hk_localizedClinicalReadAuthorizationUsageDescription];

LABEL_6:

  return hk_localizedClinicalReadAuthorizationUsageDescription;
}

- (id)_researchStudyUsageDescription
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    _researchStudyUsageDescription = [implementation _researchStudyUsageDescription];
LABEL_5:
    hk_localizedResearchStudyUsageDescription = _researchStudyUsageDescription;
    goto LABEL_6;
  }

  researchStudyUsageDescriptionOverride = self->_researchStudyUsageDescriptionOverride;
  if (researchStudyUsageDescriptionOverride)
  {
    _researchStudyUsageDescription = researchStudyUsageDescriptionOverride;
    goto LABEL_5;
  }

  _sourceBundleOrDefaultBundle = [(HKHealthStore *)self _sourceBundleOrDefaultBundle];
  hk_localizedResearchStudyUsageDescription = [_sourceBundleOrDefaultBundle hk_localizedResearchStudyUsageDescription];

LABEL_6:

  return hk_localizedResearchStudyUsageDescription;
}

- (void)_validateClinicalHealthRecordsPurposeStringsForSharingTypes:(id)types readingTypes:(id)readingTypes
{
  v10 = [HKObjectType _clinicalTypesFromTypes:readingTypes];
  _clientClinicalReadAuthorizationUsageDescription = [(HKHealthStore *)self _clientClinicalReadAuthorizationUsageDescription];

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

    _researchStudyUsageDescription = [(HKHealthStore *)self _researchStudyUsageDescription];
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
      _clientWriteAuthorizationUsageDescription = [(HKHealthStore *)self _clientWriteAuthorizationUsageDescription];
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

    _researchStudyUsageDescription = [(HKHealthStore *)self _clientReadAuthorizationUsageDescription];
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

- (void)handleAuthorizationForExtensionWithCompletion:(void *)completion
{
  v4 = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation handleAuthorizationForExtensionWithCompletion:v4];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "Handling authorization for extension", buf, 2u);
    }

    v8 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v4];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__HKHealthStore_handleAuthorizationForExtensionWithCompletion___block_invoke;
    v11[3] = &unk_1E73788B0;
    v12 = v8;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__HKHealthStore_handleAuthorizationForExtensionWithCompletion___block_invoke_2;
    v9[3] = &unk_1E7376960;
    v4 = v12;
    v10 = v4;
    [(HKHealthStore *)self _serverProxyWithHandler:v11 errorHandler:v9];
  }
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
  v6 = [type hk_filter:&__block_literal_global_471];
  if ([v6 count])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    allObjects = [v6 allObjects];
    [v3 raise:v4 format:{@"Authorization to read the following type(s) using this API is disallowed: %@", allObjects}];
  }
}

BOOL __64__HKHealthStore__throwIfUsingIncorrectAuthorizationRequestType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 code];

  return HKDataTypeAllowsPerObjectAuthorizationAPI(v2);
}

- (void)beginAuthorizationDelegateTransactionWithSessionIdentifier:(id)identifier sourceHandler:(id)handler errorHandler:(id)errorHandler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (!implementation)
  {
    if (identifierCopy)
    {
      if (handlerCopy)
      {
        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sessionIdentifier"}];
      if (handlerCopy)
      {
LABEL_5:
        if (errorHandlerCopy)
        {
LABEL_6:
          clientQueue = self->_clientQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __103__HKHealthStore_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke;
          block[3] = &unk_1E7378B20;
          block[4] = self;
          v16 = errorHandlerCopy;
          v17 = handlerCopy;
          v15 = identifierCopy;
          dispatch_async(clientQueue, block);

          goto LABEL_7;
        }

LABEL_10:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "errorHandler"}];
        goto LABEL_6;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sourceHandler"}];
    if (errorHandlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  [implementation beginAuthorizationDelegateTransactionWithSessionIdentifier:identifierCopy sourceHandler:handlerCopy errorHandler:errorHandlerCopy];
LABEL_7:
}

void __103__HKHealthStore_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__HKHealthStore_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_2;
  aBlock[3] = &unk_1E7378AD0;
  aBlock[4] = *(a1 + 32);
  v13 = *(a1 + 56);
  v5 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __103__HKHealthStore_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_4;
  v9[3] = &unk_1E7378AF8;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __103__HKHealthStore_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_5;
  v8[3] = &unk_1E7376898;
  v8[4] = *(a1 + 32);
  v7 = v5;
  [v6 _serverProxyWithHandler:v9 errorHandler:v8];
}

void __103__HKHealthStore_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__HKHealthStore_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_3;
  v12[3] = &unk_1E7378AA8;
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

uint64_t __103__HKHealthStore_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke_3(uint64_t a1)
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
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (implementation)
  {
    [implementation endAuthorizationDelegateTransactionWithSessionIdentifier:identifierCopy error:errorCopy];
  }

  else
  {
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__HKHealthStore_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke;
    block[3] = &unk_1E7376640;
    block[4] = self;
    v12 = identifierCopy;
    v13 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

void __80__HKHealthStore_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__HKHealthStore_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke_2;
  v5[3] = &unk_1E7378B48;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 _serverProxyWithHandler:v5 errorHandler:&__block_literal_global_479];
}

void __80__HKHealthStore_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke_3(uint64_t a1, void *a2)
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
    _clientClinicalReadAuthorizationUsageDescription = [(HKHealthStore *)self _clientClinicalReadAuthorizationUsageDescription];
    [(HKAuthorizationPresentationRequest *)v6 setReadUsageDescription:_clientClinicalReadAuthorizationUsageDescription];

    _researchStudyUsageDescription = [(HKHealthStore *)self _researchStudyUsageDescription];
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
    _clientReadAuthorizationUsageDescription = [(HKHealthStore *)self _clientReadAuthorizationUsageDescription];
    [(HKAuthorizationPresentationRequest *)v9 setReadUsageDescription:_clientReadAuthorizationUsageDescription];

    _clientWriteAuthorizationUsageDescription = [(HKHealthStore *)self _clientWriteAuthorizationUsageDescription];
    [(HKAuthorizationPresentationRequest *)v9 setShareUsageDescription:_clientWriteAuthorizationUsageDescription];

    _researchStudyUsageDescription = [(HKHealthStore *)self _researchStudyUsageDescription];
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
  _clientReadAuthorizationUsageDescription = [(HKHealthStore *)self _clientReadAuthorizationUsageDescription];
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
  aBlock[2] = __79__HKHealthStore_clientRemote_presentAuthorizationWithRequestRecord_completion___block_invoke;
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
      v17[2] = __79__HKHealthStore_clientRemote_presentAuthorizationWithRequestRecord_completion___block_invoke_2;
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

uint64_t __79__HKHealthStore_clientRemote_presentAuthorizationWithRequestRecord_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__HKHealthStore_clientRemote_presentAuthorizationWithRequestRecord_completion___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 96) || (_HKCreateAuthorizationPresentationController(), v2 = objc_claimAutoreleasedReturnValue(), v3 = *(a1 + 32), v4 = *(v3 + 96), *(v3 + 96) = v2, v4, *(*(a1 + 32) + 96)))
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
      v9 = *(v7 + 96);
      WeakRetained = objc_loadWeakRetained((v7 + 264));
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
  v12[2] = __73__HKHealthStore_clientRemote_presentAuthorizationWithSession_completion___block_invoke;
  v12[3] = &unk_1E7378B70;
  v12[4] = self;
  v13 = sessionCopy;
  v14 = completionCopy;
  v15 = a2;
  v10 = completionCopy;
  v11 = sessionCopy;
  dispatch_async(clientQueue, v12);
}

uint64_t __73__HKHealthStore_clientRemote_presentAuthorizationWithSession_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 256);
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
    if (*(*(a1 + 32) + 104) || (_HKCreateObjectPickerPresentationController(), v10 = objc_claimAutoreleasedReturnValue(), v11 = *(a1 + 32), v12 = *(v11 + 104), *(v11 + 104) = v10, v12, *(*(a1 + 32) + 104)))
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = [*(a1 + 32) _perObjectAuthorizationPresentationRequestForSession:*(a1 + 40)];
      if (v14)
      {
        [v13 addObject:v14];
      }

      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = *(v15 + 104);
      WeakRetained = objc_loadWeakRetained((v15 + 264));
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

- (void)set_hkui_authorizationViewControllerPresenter:(id)presenter
{
  presenterCopy = presenter;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation set_hkui_authorizationViewControllerPresenter:presenterCopy];
  }

  else
  {
    objc_storeWeak(&self->__hkui_authorizationViewControllerPresenter, presenterCopy);
  }
}

- (void)setUnitTest_presentAuthorizationWithSessionHandler:(id)handler
{
  unitTest_presentAuthorizationWithSessionHandler = handler;
  implementation = [(HKHealthStore *)self implementation];
  v7 = implementation;
  if (implementation)
  {
    [implementation setUnitTest_presentAuthorizationWithSessionHandler:unitTest_presentAuthorizationWithSessionHandler];
  }

  else
  {
    v6 = _Block_copy(unitTest_presentAuthorizationWithSessionHandler);

    unitTest_presentAuthorizationWithSessionHandler = self->_unitTest_presentAuthorizationWithSessionHandler;
    self->_unitTest_presentAuthorizationWithSessionHandler = v6;
  }
}

- (void)saveObject:(HKObject *)object withCompletion:(void *)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = completion;
  v7 = object;
  implementation = [(HKHealthStore *)self implementation];
  if (implementation)
  {
    v13[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

    selfCopy = implementation;
  }

  else
  {
    v12 = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];

    selfCopy = self;
  }

  [(HKHealthStore *)selfCopy saveObjects:v9 withCompletion:v6];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)saveObjects:(NSArray *)objects withCompletion:(void *)completion
{
  v9 = objects;
  v6 = completion;
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    [implementation saveObjects:v9 withCompletion:v6];
  }

  else
  {
    [(HKHealthStore *)self _saveObjects:v9 atomically:[(NSArray *)v9 count]< 0x5DC skipInsertionFilter:0 completion:v6];
  }
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

  v14 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

  v26 = 0;
  v15 = [(HKHealthStore *)self _prepareObjectsForSaving:objectsCopy errorOut:&v26];
  v16 = v26;
  if (v15)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__HKHealthStore__saveObjects_atomically_skipInsertionFilter_completion___block_invoke;
    v20[3] = &unk_1E7378B98;
    atomicallyCopy = atomically;
    v21 = objectsCopy;
    filterCopy = filter;
    selfCopy = self;
    v23 = v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__HKHealthStore__saveObjects_atomically_skipInsertionFilter_completion___block_invoke_2;
    v18[3] = &unk_1E7376960;
    v19 = v23;
    [(HKHealthStore *)self _serverProxyWithHandler:v20 errorHandler:v18];
  }

  else
  {
    (v14)[2](v14, 0, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __72__HKHealthStore__saveObjects_atomically_skipInsertionFilter_completion___block_invoke(uint64_t a1, void *a2)
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

void __98__HKHealthStore__sendNextObjectBatch_skipInsertionFilter_lastRange_server_transaction_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
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

- (void)deleteObject:(HKObject *)object withCompletion:(void *)completion
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = object;
  v7 = completion;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "dataObject"}];
  }

  v10[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(HKHealthStore *)self _deleteObjects:v8 options:0 completion:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)deleteObject:(id)object options:(unint64_t)options withCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v8 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  objectCopy2 = object;
  v11 = [v8 arrayWithObjects:&objectCopy count:1];

  [(HKHealthStore *)self _deleteObjects:v11 options:options completion:completionCopy, objectCopy, v14];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_deleteObjects:(id)objects options:(unint64_t)options completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  if (implementation)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __51__HKHealthStore__deleteObjects_options_completion___block_invoke;
    v23[3] = &unk_1E7378BE8;
    v11 = &v24;
    v12 = completionCopy;
    v23[4] = self;
    v24 = v12;
    [implementation _deleteObjects:objectsCopy options:options completion:v23];
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      *buf = 134218240;
      v26 = [objectsCopy count];
      v27 = 2048;
      optionsCopy = options;
      _os_log_impl(&dword_19197B000, v14, OS_LOG_TYPE_DEFAULT, "Deleting %lu objects, options %lu", buf, 0x16u);
    }

    v15 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__HKHealthStore__deleteObjects_options_completion___block_invoke_507;
    v19[3] = &unk_1E7378888;
    v11 = &v20;
    v20 = objectsCopy;
    optionsCopy2 = options;
    v21 = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__HKHealthStore__deleteObjects_options_completion___block_invoke_2_508;
    v17[3] = &unk_1E7376960;
    v12 = v21;
    v18 = v12;
    [(HKHealthStore *)self _serverProxyWithHandler:v19 errorHandler:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __51__HKHealthStore__deleteObjects_options_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__HKHealthStore__deleteObjects_options_completion___block_invoke_2;
    block[3] = &unk_1E7376678;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)deleteObjectsOfType:(id)type predicate:(id)predicate options:(unint64_t)options withCompletion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  predicateCopy = predicate;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  if (!implementation)
  {
    _HKInitializeLogging();
    v15 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v30 = typeCopy;
      v31 = 2048;
      optionsCopy = options;
      v33 = 2112;
      v34 = predicateCopy;
      _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_DEFAULT, "Deleting objects of type %@ with options %lu, predicate %@", buf, 0x20u);
    }

    if (!HKProgramSDKAtLeast())
    {
      goto LABEL_8;
    }

    if (typeCopy)
    {
      if (predicateCopy)
      {
LABEL_8:
        v16 = [MEMORY[0x1E695DFD8] setWithObject:typeCopy];
        v17 = [predicateCopy hk_filterRepresentationForDataTypes:v16];

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_512;
        v21[3] = &unk_1E7378C88;
        v22 = typeCopy;
        v23 = v17;
        optionsCopy2 = options;
        selfCopy = self;
        v25 = completionCopy;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_4;
        v19[3] = &unk_1E7376820;
        v19[4] = self;
        v20 = v25;
        v14 = v17;
        [(HKHealthStore *)self _serverProxyWithHandler:v21 errorHandler:v19];

        goto LABEL_9;
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
    goto LABEL_8;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke;
  v27[3] = &unk_1E7378C38;
  v27[4] = self;
  v28 = completionCopy;
  [implementation deleteObjectsOfType:typeCopy predicate:predicateCopy options:options withCompletion:v27];
  v14 = v28;
LABEL_9:

  v18 = *MEMORY[0x1E69E9840];
}

void __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 16);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_2;
    v10[3] = &unk_1E7378C10;
    v14 = a2;
    v12 = v8;
    v13 = a3;
    v11 = v7;
    dispatch_async(v9, v10);
  }
}

void __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_512(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_2_513;
  v7[3] = &unk_1E7378C60;
  v5 = a1[7];
  v6 = a1[8];
  v7[4] = a1[6];
  v8 = v5;
  [a2 remote_deleteDataObjectsOfType:v3 matchingFilter:v4 options:v6 handler:v7];
}

void __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_2_513(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(*(a1 + 32) + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_3;
  v11[3] = &unk_1E7378C10;
  v9 = *(a1 + 40);
  v15 = a2;
  v13 = v9;
  v14 = a3;
  v12 = v7;
  v10 = v7;
  dispatch_async(v8, v11);
}

uint64_t __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_5;
  v7[3] = &unk_1E7376AC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, *(a1 + 32));
  }

  return result;
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

- (void)executeQuery:(id)query activationHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (implementation)
  {
    [implementation executeQuery:queryCopy queue:self->_clientQueue activationHandler:handlerCopy];
  }

  else
  {
    if (!queryCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "query"}];
    }

    Current = CFAbsoluteTimeGetCurrent();
    unitTest_handleExecuteQuery = self->_unitTest_handleExecuteQuery;
    if (unitTest_handleExecuteQuery)
    {
      unitTest_handleExecuteQuery[2](unitTest_handleExecuteQuery, queryCopy);
    }

    [(HKHealthStore *)self _addQuery:queryCopy];
    clientQueue = self->_clientQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__HKHealthStore_executeQuery_activationHandler___block_invoke;
    v14[3] = &unk_1E7378928;
    v14[4] = self;
    v13 = queryCopy;
    v15 = v13;
    v16 = handlerCopy;
    [v13 activateWithClientQueue:clientQueue healthStore:self delegate:self time:v14 completion:Current];
    [(HKHealthStore *)self _removeQueryFromPendingActivationQueries:v13];
  }
}

uint64_t __48__HKHealthStore_executeQuery_activationHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (void)stopQuery:(HKQuery *)query
{
  v6 = query;
  implementation = [(HKHealthStore *)self implementation];
  v5 = implementation;
  if (implementation)
  {
    [implementation stopQuery:v6];
  }

  else if (v6)
  {
    [(HKHealthStore *)self _removeQuery:v6];
    [(HKQuery *)v6 deactivate];
  }
}

- (NSSet)_queries
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    _queries = [implementation _queries];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v6 = [(NSMutableSet *)self->_queries copy];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [MEMORY[0x1E695DFD8] set];
    }

    _queries = v7;
  }

  return _queries;
}

- (NSSet)_activeQueries
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    _activeQueries = [implementation _activeQueries];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v6 = [(NSMutableSet *)self->_queries mutableCopy];
    v7 = [(NSMutableSet *)self->_pendingActivationQueries copy];
    os_unfair_lock_unlock(&self->_lock);
    [v6 minusSet:v7];
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFD8] set];
    }

    _activeQueries = v8;
  }

  return _activeQueries;
}

- (void)_dateOfBirthWithCompletion:(id)completion
{
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation _dateOfBirthWithCompletion:completionCopy];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__HKHealthStore__dateOfBirthWithCompletion___block_invoke;
    v8[3] = &unk_1E7378CB0;
    v9 = completionCopy;
    [(HKHealthStore *)self _characteristicForDataType:v7 withCompletion:v8];
  }
}

- (NSDate)dateOfBirthWithError:(NSError *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation dateOfBirthWithError:error];
  }

  else
  {
    v8 = [(HKHealthStore *)self dateOfBirthComponentsWithError:error];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v7 = [v9 dateFromComponents:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSDateComponents)dateOfBirthComponentsWithError:(NSError *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation dateOfBirthComponentsWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:error];
  }

  return v7;
}

- (BOOL)_setDateOfBirthComponents:(id)components error:(id *)error
{
  componentsCopy = components;
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setDateOfBirthComponents:componentsCopy error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
    v9 = [(HKHealthStore *)self _setCharacteristic:componentsCopy forDataType:v10 error:error];
  }

  return v9;
}

- (void)_biologicalSexWithCompletion:(id)completion
{
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation _biologicalSexWithCompletion:completionCopy];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__HKHealthStore__biologicalSexWithCompletion___block_invoke;
    v8[3] = &unk_1E7378978;
    v9 = completionCopy;
    [(HKHealthStore *)self _characteristicForDataType:v7 withCompletion:v8];
  }
}

void __46__HKHealthStore__biologicalSexWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (HKBiologicalSexObject)biologicalSexWithError:(NSError *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation biologicalSexWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
    v15 = 0;
    v9 = [(HKHealthStore *)self _characteristicForDataType:v8 error:&v15];
    v10 = v15;
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (error)
      {
        v7 = 0;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError(v12);
        v7 = 0;
      }
    }

    else
    {
      if (v9)
      {
        integerValue = [v9 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      v7 = [[HKBiologicalSexObject alloc] _initWithBiologicalSex:integerValue];
    }
  }

  return v7;
}

- (BOOL)_setBiologicalSex:(int64_t)sex error:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setBiologicalSex:sex error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:sex];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:error];
  }

  return v9;
}

- (void)_bloodTypeWithCompletion:(id)completion
{
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation _bloodTypeWithCompletion:completionCopy];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBloodType"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__HKHealthStore__bloodTypeWithCompletion___block_invoke;
    v8[3] = &unk_1E7378978;
    v9 = completionCopy;
    [(HKHealthStore *)self _characteristicForDataType:v7 withCompletion:v8];
  }
}

void __42__HKHealthStore__bloodTypeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (HKBloodTypeObject)bloodTypeWithError:(NSError *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation bloodTypeWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBloodType"];
    v15 = 0;
    v9 = [(HKHealthStore *)self _characteristicForDataType:v8 error:&v15];
    v10 = v15;
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (error)
      {
        v7 = 0;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError(v12);
        v7 = 0;
      }
    }

    else
    {
      if (v9)
      {
        integerValue = [v9 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      v7 = [[HKBloodTypeObject alloc] _initWithBloodType:integerValue];
    }
  }

  return v7;
}

- (BOOL)_setBloodType:(int64_t)type error:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setBloodType:type error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBloodType"];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:error];
  }

  return v9;
}

- (void)_fitzpatrickSkinTypeWithCompletion:(id)completion
{
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation _fitzpatrickSkinTypeWithCompletion:completionCopy];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierFitzpatrickSkinType"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__HKHealthStore__fitzpatrickSkinTypeWithCompletion___block_invoke;
    v8[3] = &unk_1E7378978;
    v9 = completionCopy;
    [(HKHealthStore *)self _characteristicForDataType:v7 withCompletion:v8];
  }
}

void __52__HKHealthStore__fitzpatrickSkinTypeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (HKFitzpatrickSkinTypeObject)fitzpatrickSkinTypeWithError:(NSError *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation fitzpatrickSkinTypeWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierFitzpatrickSkinType"];
    v15 = 0;
    v9 = [(HKHealthStore *)self _characteristicForDataType:v8 error:&v15];
    v10 = v15;
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (error)
      {
        v7 = 0;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError(v12);
        v7 = 0;
      }
    }

    else
    {
      if (v9)
      {
        integerValue = [v9 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      v7 = [[HKFitzpatrickSkinTypeObject alloc] _initWithSkinType:integerValue];
    }
  }

  return v7;
}

- (BOOL)_setFitzpatrickSkinType:(int64_t)type error:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setFitzpatrickSkinType:type error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierFitzpatrickSkinType"];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:error];
  }

  return v9;
}

- (void)_wheelchairUseWithCompletion:(id)completion
{
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation _wheelchairUseWithCompletion:completionCopy];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierWheelchairUse"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__HKHealthStore__wheelchairUseWithCompletion___block_invoke;
    v8[3] = &unk_1E7378978;
    v9 = completionCopy;
    [(HKHealthStore *)self _characteristicForDataType:v7 withCompletion:v8];
  }
}

void __46__HKHealthStore__wheelchairUseWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (HKWheelchairUseObject)wheelchairUseWithError:(NSError *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation wheelchairUseWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierWheelchairUse"];
    v15 = 0;
    v9 = [(HKHealthStore *)self _characteristicForDataType:v8 error:&v15];
    v10 = v15;
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (error)
      {
        v7 = 0;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError(v12);
        v7 = 0;
      }
    }

    else
    {
      if (v9)
      {
        integerValue = [v9 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      v7 = [[HKWheelchairUseObject alloc] _initWithWheelchairUse:integerValue];
    }
  }

  return v7;
}

- (BOOL)_setWheelchairUse:(int64_t)use error:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setWheelchairUse:use error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierWheelchairUse"];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:use];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:error];
  }

  return v9;
}

- (id)_cardioFitnessMedicationsUseWithError:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation _cardioFitnessMedicationsUseWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierCardioFitnessMedicationsUse"];
    v15 = 0;
    v9 = [(HKHealthStore *)self _characteristicForDataType:v8 error:&v15];
    v10 = v15;
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (error)
      {
        v7 = 0;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError(v12);
        v7 = 0;
      }
    }

    else
    {
      if (v9)
      {
        unsignedIntValue = [v9 unsignedIntValue];
      }

      else
      {
        unsignedIntValue = 0;
      }

      v7 = [[HKCardioFitnessMedicationsUseObject alloc] _initWithCardioFitnessMedicationsUseOptions:unsignedIntValue];
    }
  }

  return v7;
}

- (BOOL)_setCardioFitnessMedicationsUse:(unint64_t)use error:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setCardioFitnessMedicationsUse:use error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierCardioFitnessMedicationsUse"];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:use];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:error];
  }

  return v9;
}

- (id)_bodyMassCharacteristicQuantityWithError:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation _bodyMassCharacteristicQuantityWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBodyMass"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:error];
  }

  return v7;
}

- (BOOL)_setBodyMassCharacteristicQuantity:(id)quantity error:(id *)error
{
  quantityCopy = quantity;
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setBodyMassCharacteristicQuantity:quantityCopy error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBodyMass"];
    v9 = [(HKHealthStore *)self _setCharacteristic:quantityCopy forDataType:v10 error:error];
  }

  return v9;
}

- (id)_leanBodyMassCharacteristicQuantityWithError:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation _leanBodyMassCharacteristicQuantityWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierLeanBodyMass"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:error];
  }

  return v7;
}

- (BOOL)_setLeanBodyMassCharacteristicQuantity:(id)quantity error:(id *)error
{
  quantityCopy = quantity;
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setLeanBodyMassCharacteristicQuantity:quantityCopy error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierLeanBodyMass"];
    v9 = [(HKHealthStore *)self _setCharacteristic:quantityCopy forDataType:v10 error:error];
  }

  return v9;
}

- (id)_heightCharacteristicQuantityWithError:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation _heightCharacteristicQuantityWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierHeight"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:error];
  }

  return v7;
}

- (BOOL)_setHeightCharacteristicQuantity:(id)quantity error:(id *)error
{
  quantityCopy = quantity;
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setHeightCharacteristicQuantity:quantityCopy error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierHeight"];
    v9 = [(HKHealthStore *)self _setCharacteristic:quantityCopy forDataType:v10 error:error];
  }

  return v9;
}

- (id)_userEnteredMenstrualCycleLengthCharacteristicQuantityWithError:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation _userEnteredMenstrualCycleLengthCharacteristicQuantityWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualCycleLength"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:error];
  }

  return v7;
}

- (BOOL)_setUserEnteredMenstrualCycleLengthCharacteristicQuantity:(id)quantity error:(id *)error
{
  quantityCopy = quantity;
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setUserEnteredMenstrualCycleLengthCharacteristicQuantity:quantityCopy error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualCycleLength"];
    v9 = [(HKHealthStore *)self _setCharacteristic:quantityCopy forDataType:v10 error:error];
  }

  return v9;
}

- (id)_userEnteredMenstrualPeriodLengthCharacteristicQuantityWithError:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation _userEnteredMenstrualPeriodLengthCharacteristicQuantityWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualPeriodLength"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:error];
  }

  return v7;
}

- (BOOL)_setUserEnteredMenstrualPeriodLengthCharacteristicQuantity:(id)quantity error:(id *)error
{
  quantityCopy = quantity;
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setUserEnteredMenstrualPeriodLengthCharacteristicQuantity:quantityCopy error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualPeriodLength"];
    v9 = [(HKHealthStore *)self _setCharacteristic:quantityCopy forDataType:v10 error:error];
  }

  return v9;
}

- (void)_activityMoveModeObjectWithCompletion:(id)completion
{
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation _activityMoveModeObjectWithCompletion:completionCopy];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__HKHealthStore__activityMoveModeObjectWithCompletion___block_invoke;
    v8[3] = &unk_1E7378978;
    v9 = completionCopy;
    [(HKHealthStore *)self _characteristicForDataType:v7 withCompletion:v8];
  }
}

void __55__HKHealthStore__activityMoveModeObjectWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (HKActivityMoveModeObject)activityMoveModeWithError:(NSError *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation activityMoveModeWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
    v15 = 0;
    v9 = [(HKHealthStore *)self _characteristicForDataType:v8 error:&v15];
    v10 = v15;
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (error)
      {
        v7 = 0;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError(v12);
        v7 = 0;
      }
    }

    else
    {
      if (v9)
      {
        integerValue = [v9 integerValue];
      }

      else
      {
        integerValue = 1;
      }

      v7 = [[HKActivityMoveModeObject alloc] _initWithActivityMoveMode:integerValue];
    }
  }

  return v7;
}

- (id)_activityMoveModeWithError:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation _activityMoveModeWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:error];
  }

  return v7;
}

- (BOOL)_setActivityMoveMode:(int64_t)mode error:(id *)error
{
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    v9 = [implementation _setActivityMoveMode:mode error:error];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:error];
  }

  return v9;
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
  v18[2] = __59__HKHealthStore__characteristicForDataType_withCompletion___block_invoke;
  v18[3] = &unk_1E7378AF8;
  v19 = typeCopy;
  v20 = completionCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__HKHealthStore__characteristicForDataType_withCompletion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v20;
  v14 = v20;
  v15 = typeCopy;
  [(HKHealthStore *)self _serverProxyWithHandler:v18 errorHandler:v16];
}

- (id)_characteristicForDataType:(id)type error:(id *)error
{
  typeCopy = type;
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (implementation)
  {
    v10 = [implementation _characteristicForDataType:typeCopy error:error];
  }

  else
  {
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

    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__3;
    v37 = __Block_byref_object_dispose__3;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__3;
    v31 = __Block_byref_object_dispose__3;
    v32 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__HKHealthStore__characteristicForDataType_error___block_invoke;
    aBlock[3] = &unk_1E7378CD8;
    aBlock[4] = &v33;
    aBlock[5] = &v27;
    v16 = _Block_copy(aBlock);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __50__HKHealthStore__characteristicForDataType_error___block_invoke_2;
    v24[3] = &unk_1E7376960;
    v17 = v16;
    v25 = v17;
    v18 = [(HKHealthStore *)self _synchronousServerProxyWithErrorHandler:v24];
    [v18 remote_fetchCharacteristicWithDataType:typeCopy handler:v17];
    v19 = v34[5];
    if (!v19)
    {
      v20 = v28[5];
      v21 = v20;
      if (v20)
      {
        if (error)
        {
          v22 = v20;
          *error = v21;
        }

        else
        {
          _HKLogDroppedError(v20);
        }
      }

      v19 = v34[5];
    }

    v10 = v19;

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v33, 8);
  }

  return v10;
}

void __50__HKHealthStore__characteristicForDataType_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (implementation)
  {
    v13 = [implementation _setCharacteristic:characteristicCopy forDataType:typeCopy error:error];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = NSStringFromSelector(a2);
      [v14 raise:v15 format:{@"%@: Invalid data type %@, expected data type of class %@ in %@", v16, typeCopy, v17, v18}];
    }

    if ([typeCopy _validateCharacteristic:characteristicCopy error:error])
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__3;
      v34 = __Block_byref_object_dispose__3;
      v35 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __54__HKHealthStore__setCharacteristic_forDataType_error___block_invoke;
      v25[3] = &unk_1E7378D00;
      v25[4] = &v30;
      v25[5] = &v26;
      v19 = [(HKHealthStore *)self _synchronousServerProxyWithErrorHandler:v25];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __54__HKHealthStore__setCharacteristic_forDataType_error___block_invoke_2;
      v24[3] = &unk_1E7378D28;
      v24[4] = &v26;
      v24[5] = &v30;
      [v19 remote_setCharacteristic:characteristicCopy forDataType:typeCopy handler:v24];
      v20 = v31[5];
      v21 = v20;
      if (v20)
      {
        if (error)
        {
          v22 = v20;
          *error = v21;
        }

        else
        {
          _HKLogDroppedError(v20);
        }
      }

      v13 = *(v27 + 24);
      _Block_object_dispose(&v26, 8);
      _Block_object_dispose(&v30, 8);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13 & 1;
}

void __54__HKHealthStore__setCharacteristic_forDataType_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

- (id)_modificationDateForCharacteristicWithType:(id)type error:(id *)error
{
  typeCopy = type;
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (implementation)
  {
    v10 = [implementation _modificationDateForCharacteristicWithType:typeCopy error:error];
  }

  else
  {
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

    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__3;
    v33 = __Block_byref_object_dispose__3;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__3;
    v27 = __Block_byref_object_dispose__3;
    v28 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __66__HKHealthStore__modificationDateForCharacteristicWithType_error___block_invoke;
    v22[3] = &unk_1E7378D00;
    v22[4] = &v29;
    v22[5] = &v23;
    v16 = [(HKHealthStore *)self _synchronousServerProxyWithErrorHandler:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __66__HKHealthStore__modificationDateForCharacteristicWithType_error___block_invoke_2;
    v21[3] = &unk_1E7378D50;
    v21[4] = &v23;
    v21[5] = &v29;
    [v16 remote_fetchModificationDateForCharacteristicWithDataType:typeCopy handler:v21];
    v17 = v30[5];
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

    v10 = v24[5];
    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(&v29, 8);
  }

  return v10;
}

void __66__HKHealthStore__modificationDateForCharacteristicWithType_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void __66__HKHealthStore__modificationDateForCharacteristicWithType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)supportsHealthRecords
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    supportsHealthRecords = [implementation supportsHealthRecords];
  }

  else
  {
    supportsHealthRecords = [(HKHealthStore *)self _supportsFeature:1];
  }

  v6 = supportsHealthRecords;

  return v6;
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
  v7[2] = __34__HKHealthStore__supportsFeature___block_invoke;
  v7[3] = &unk_1E7378D78;
  v7[4] = &v8;
  v7[5] = feature;
  v4 = [(HKHealthStore *)self _synchronousServerProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HKHealthStore__supportsFeature___block_invoke_533;
  v6[3] = &unk_1E7378DA0;
  v6[4] = &v8;
  v6[5] = featureCopy;
  [v4 remote_getIsFeatureSetAvailable:featureCopy completion:v6];
  LOBYTE(featureCopy) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return featureCopy;
}

void __34__HKHealthStore__supportsFeature___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    __34__HKHealthStore__supportsFeature___block_invoke_cold_1(a1);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void __34__HKHealthStore__supportsFeature___block_invoke_533(uint64_t a1, uint64_t a2, void *a3)
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

- (void)addSamples:(NSArray *)samples toWorkout:(HKWorkout *)workout completion:(void *)completion
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = samples;
  v9 = workout;
  v10 = completion;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (implementation)
  {
    [implementation addSamples:v8 toWorkout:v9 completion:v10];
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(NSArray *)v8 count];
      uUID = [(HKObject *)v9 UUID];
      uUIDString = [uUID UUIDString];
      *buf = 134218242;
      v28 = v15;
      v29 = 2114;
      v30 = uUIDString;
      _os_log_impl(&dword_19197B000, v14, OS_LOG_TYPE_DEFAULT, "Adding %lu samples to workout %{public}@", buf, 0x16u);
    }

    v18 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v10];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __49__HKHealthStore_addSamples_toWorkout_completion___block_invoke;
    v23[3] = &unk_1E73788D8;
    v24 = v8;
    v25 = v9;
    v26 = v18;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __49__HKHealthStore_addSamples_toWorkout_completion___block_invoke_2;
    v21[3] = &unk_1E7376960;
    v22 = v26;
    v19 = v26;
    [(HKHealthStore *)self _serverProxyWithHandler:v23 errorHandler:v21];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_replaceWorkout:(id)workout withWorkout:(id)withWorkout completion:(id)completion
{
  workoutCopy = workout;
  withWorkoutCopy = withWorkout;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (implementation)
  {
    [implementation _replaceWorkout:workoutCopy withWorkout:withWorkoutCopy completion:completionCopy];
  }

  else
  {
    v13 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__HKHealthStore__replaceWorkout_withWorkout_completion___block_invoke;
    v16[3] = &unk_1E73788D8;
    v17 = workoutCopy;
    v18 = withWorkoutCopy;
    v19 = v13;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__HKHealthStore__replaceWorkout_withWorkout_completion___block_invoke_2;
    v14[3] = &unk_1E7376960;
    v15 = v19;
    completionCopy = v19;
    [(HKHealthStore *)self _serverProxyWithHandler:v16 errorHandler:v14];
  }
}

- (void)startWorkoutSession:(HKWorkoutSession *)workoutSession
{
  v7 = workoutSession;
  implementation = [(HKHealthStore *)self implementation];
  v5 = implementation;
  if (implementation)
  {
    [implementation startWorkoutSession:v7];
  }

  else
  {
    [(HKWorkoutSession *)v7 _setupWithHealthStore:self];
    date = [MEMORY[0x1E695DF00] date];
    [(HKWorkoutSession *)v7 startActivityWithDate:date completion:&__block_literal_global_535];
  }
}

void __37__HKHealthStore_startWorkoutSession___block_invoke(uint64_t a1, char a2, void *a3)
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

- (void)endWorkoutSession:(HKWorkoutSession *)workoutSession
{
  v6 = workoutSession;
  implementation = [(HKHealthStore *)self implementation];
  v5 = implementation;
  if (implementation)
  {
    [implementation endWorkoutSession:v6];
  }

  else
  {
    [(HKWorkoutSession *)v6 _setupWithHealthStore:self];
    [(HKWorkoutSession *)v6 endWithCompletion:&__block_literal_global_537];
  }
}

void __35__HKHealthStore_endWorkoutSession___block_invoke(uint64_t a1, char a2, void *a3)
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

- (void)pauseWorkoutSession:(HKWorkoutSession *)workoutSession
{
  v6 = workoutSession;
  implementation = [(HKHealthStore *)self implementation];
  v5 = implementation;
  if (implementation)
  {
    [implementation pauseWorkoutSession:v6];
  }

  else
  {
    [(HKWorkoutSession *)v6 _setupWithHealthStore:self];
    [(HKWorkoutSession *)v6 pauseWithCompletion:&__block_literal_global_539];
  }
}

void __37__HKHealthStore_pauseWorkoutSession___block_invoke(uint64_t a1, char a2, void *a3)
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

- (void)resumeWorkoutSession:(HKWorkoutSession *)workoutSession
{
  v6 = workoutSession;
  implementation = [(HKHealthStore *)self implementation];
  v5 = implementation;
  if (implementation)
  {
    [implementation resumeWorkoutSession:v6];
  }

  else
  {
    [(HKWorkoutSession *)v6 _setupWithHealthStore:self];
    [(HKWorkoutSession *)v6 resumeWithCompletion:&__block_literal_global_541];
  }
}

void __38__HKHealthStore_resumeWorkoutSession___block_invoke(uint64_t a1, char a2, void *a3)
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

- (void)startWatchAppWithWorkoutConfiguration:(HKWorkoutConfiguration *)workoutConfiguration completion:(void *)completion
{
  v6 = workoutConfiguration;
  v7 = completion;
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (implementation)
  {
    [implementation startWatchAppWithWorkoutConfiguration:v6 completion:v7];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "Requesting watch workout app launch with configuration", buf, 2u);
    }

    v11 = +[_HKBehavior sharedBehavior];
    if ([v11 isiPad])
    {
    }

    else
    {
      v12 = +[_HKBehavior sharedBehavior];
      isRealityDevice = [v12 isRealityDevice];

      if (!isRealityDevice)
      {
        v15 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v7];

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __66__HKHealthStore_startWatchAppWithWorkoutConfiguration_completion___block_invoke;
        v18[3] = &unk_1E7378AF8;
        v19 = v6;
        v20 = v15;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __66__HKHealthStore_startWatchAppWithWorkoutConfiguration_completion___block_invoke_2;
        v16[3] = &unk_1E7376960;
        v7 = v20;
        v17 = v7;
        [(HKHealthStore *)self _serverProxyWithHandler:v18 errorHandler:v16];

        goto LABEL_10;
      }
    }

    v14 = [MEMORY[0x1E696ABC0] hk_error:2 description:@"Starting a workout from this device is not supported."];
    (*(v7 + 2))(v7, 0, v14);
  }

LABEL_10:
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
      v13 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __62__HKHealthStore__startWatchAppWithWorkoutPlanData_completion___block_invoke;
      v16[3] = &unk_1E7378AF8;
      v17 = dataCopy;
      v18 = v13;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __62__HKHealthStore__startWatchAppWithWorkoutPlanData_completion___block_invoke_2;
      v14[3] = &unk_1E7376960;
      completionCopy = v18;
      v15 = completionCopy;
      [(HKHealthStore *)self _serverProxyWithHandler:v16 errorHandler:v14];

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
      v13 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64__HKHealthStore__startWatchAppWithMirroredStartData_completion___block_invoke;
      v16[3] = &unk_1E7378AF8;
      v17 = dataCopy;
      v18 = v13;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __64__HKHealthStore__startWatchAppWithMirroredStartData_completion___block_invoke_2;
      v14[3] = &unk_1E7376960;
      completionCopy = v18;
      v15 = completionCopy;
      [(HKHealthStore *)self _serverProxyWithHandler:v16 errorHandler:v14];

      v12 = v17;
      goto LABEL_8;
    }
  }

  v12 = [MEMORY[0x1E696ABC0] hk_error:2 description:@"Starting a workout from this device is not supported."];
  (*(completionCopy + 2))(completionCopy, 0, v12);
LABEL_8:
}

- (void)recoverActiveWorkoutSessionWithCompletion:(void *)completion
{
  v4 = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation recoverActiveWorkoutSessionWithCompletion:v4];
  }

  else
  {
    v7 = [(HKHealthStore *)self _objectCompletionOnClientQueue:v4];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__HKHealthStore_recoverActiveWorkoutSessionWithCompletion___block_invoke;
    v10[3] = &unk_1E7378E18;
    v10[4] = self;
    v11 = v7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__HKHealthStore_recoverActiveWorkoutSessionWithCompletion___block_invoke_5;
    v8[3] = &unk_1E7376960;
    v4 = v11;
    v9 = v4;
    [(HKHealthStore *)self _serverProxyWithHandler:v10 errorHandler:v8];
  }
}

void __59__HKHealthStore_recoverActiveWorkoutSessionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__HKHealthStore_recoverActiveWorkoutSessionWithCompletion___block_invoke_2;
  v5[3] = &unk_1E7378DF0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 remote_recoverActiveWorkoutSessionWithCompletion:v5];
}

void __59__HKHealthStore_recoverActiveWorkoutSessionWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
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
      [v12 setSupportsAppRelaunchForRecovery:1];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __59__HKHealthStore_recoverActiveWorkoutSessionWithCompletion___block_invoke_3;
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

void __59__HKHealthStore_recoverActiveWorkoutSessionWithCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
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
    v11[2] = __59__HKHealthStore_recoverActiveWorkoutSessionWithCompletion___block_invoke_4;
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

uint64_t __59__HKHealthStore_recoverActiveWorkoutSessionWithCompletion___block_invoke_4(uint64_t a1, int a2)
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

- (void)setWorkoutSessionMirroringStartHandler:(void *)workoutSessionMirroringStartHandler
{
  v4 = workoutSessionMirroringStartHandler;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation setWorkoutSessionMirroringStartHandler:v4];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogWorkouts;
    v8 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[mirroring] Client setting mirrored session handler.", buf, 2u);
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__HKHealthStore_setWorkoutSessionMirroringStartHandler___block_invoke_551;
      aBlock[3] = &unk_1E7378E60;
      v14 = v4;
      v9 = _Block_copy(aBlock);
      os_unfair_lock_lock(&self->_lock);
      v10 = _Block_copy(v9);
      mirroredSessionHandler = self->_mirroredSessionHandler;
      self->_mirroredSessionHandler = v10;

      os_unfair_lock_unlock(&self->_lock);
      [(HKHealthStore *)self _setMirroredWorkoutSessionObserverStateToEnabled:1 handler:v9];
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[mirroring] Mirrored session handler set to nil by the client.", buf, 2u);
      }

      os_unfair_lock_lock(&self->_lock);
      v12 = self->_mirroredSessionHandler;
      self->_mirroredSessionHandler = 0;

      os_unfair_lock_unlock(&self->_lock);
      [(HKHealthStore *)self _setMirroredWorkoutSessionObserverStateToEnabled:0 handler:&__block_literal_global_550];
    }
  }
}

void __56__HKHealthStore_setWorkoutSessionMirroringStartHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

void __56__HKHealthStore_setWorkoutSessionMirroringStartHandler___block_invoke_551(uint64_t a1, void *a2, void *a3)
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
  v10[2] = __74__HKHealthStore__setMirroredWorkoutSessionObserverStateToEnabled_handler___block_invoke;
  v10[3] = &unk_1E7378E88;
  enabledCopy = enabled;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__HKHealthStore__setMirroredWorkoutSessionObserverStateToEnabled_handler___block_invoke_3;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKHealthStore *)self _serverProxyWithHandler:v10 errorHandler:v8];
}

void __74__HKHealthStore__setMirroredWorkoutSessionObserverStateToEnabled_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__HKHealthStore__setMirroredWorkoutSessionObserverStateToEnabled_handler___block_invoke_2;
  v4[3] = &unk_1E7376910;
  v5 = *(a1 + 32);
  [a2 remote_setMirroredWorkoutSessionObserverStateToEnabled:v3 completion:v4];
}

uint64_t __74__HKHealthStore__setMirroredWorkoutSessionObserverStateToEnabled_handler___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

+ (BOOL)_applicationHasRunningWorkout
{
  _useHKHealthStoreImplementation = [objc_opt_class() _useHKHealthStoreImplementation];
  v3 = off_1E7375038;
  if (!_useHKHealthStoreImplementation)
  {
    v3 = off_1E73757E8;
  }

  v4 = *v3;

  return [(__objc2_class *)v4 _applicationHasRunningWorkout];
}

- (void)_ratingOfExertionSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (!implementation)
  {
    v13 = [(HKHealthStore *)self _objectCompletionOnClientQueue:completionCopy];
    v34 = 0;
    v14 = [_HKEntitlements entitlementsForCurrentTaskWithError:&v34];
    v15 = v34;
    if (!v14)
    {
      _HKInitializeLogging();
      v18 = HKLogAuthorization();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [HKHealthStore _ratingOfExertionSamplesForWorkout:workoutActivity:completion:];
      }

      completionCopy[2](completionCopy, 0, v15);
      goto LABEL_18;
    }

    if ([v14 hasEntitlement:@"com.apple.private.healthkit"])
    {
      if (activityCopy)
      {
        workoutActivities = [workoutCopy workoutActivities];
        v17 = [workoutActivities containsObject:activityCopy];

        if (v17)
        {
          [workoutCopy workoutActivityType];
LABEL_14:
          uUID = [workoutCopy UUID];
          v23 = [HKQuery predicateForObjectWithUUID:uUID];

          v24 = [HKWorkoutEffortRelationshipQuery alloc];
          v27 = MEMORY[0x1E69E9820];
          v28 = 3221225472;
          v29 = __79__HKHealthStore__ratingOfExertionSamplesForWorkout_workoutActivity_completion___block_invoke;
          v30 = &unk_1E7378EB0;
          selfCopy = self;
          v33 = v13;
          v32 = activityCopy;
          v25 = [(HKWorkoutEffortRelationshipQuery *)v24 initWithPredicate:v23 anchor:0 options:0 resultsHandler:&v27];
          [(HKHealthStore *)self executeQuery:v25, v27, v28, v29, v30, selfCopy];

LABEL_18:
          goto LABEL_19;
        }

        v20 = MEMORY[0x1E696ABC0];
        v21 = @"Activity must be inside workout activities.";
      }

      else
      {
        if ([workoutCopy workoutActivityType] != 82)
        {
          goto LABEL_14;
        }

        v20 = MEMORY[0x1E696ABC0];
        v21 = @"Activity must be set for HKWorkoutActivityTypeSwimBikeRun workouts.";
      }

      v19 = [v20 hk_error:3 description:v21];
    }

    else
    {
      v19 = [MEMORY[0x1E696ABC0] hk_error:4 format:@"Missing private entitlement."];
    }

    v26 = v19;
    completionCopy[2](completionCopy, 0, v19);

    goto LABEL_18;
  }

  [implementation _ratingOfExertionSamplesForWorkout:workoutCopy workoutActivity:activityCopy completion:completionCopy];
LABEL_19:
}

void __79__HKHealthStore__ratingOfExertionSamplesForWorkout_workoutActivity_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
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
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v15 = implementation;
  if (implementation)
  {
    [implementation _relateReplaceRatingOfExertionSample:sampleCopy toWorkout:workoutCopy forActivity:activityCopy completion:completionCopy];
  }

  else
  {
    v16 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __87__HKHealthStore__relateReplaceRatingOfExertionSample_toWorkout_forActivity_completion___block_invoke;
    v17[3] = &unk_1E7378F00;
    v21 = v16;
    v17[4] = self;
    v18 = sampleCopy;
    v19 = workoutCopy;
    v20 = activityCopy;
    completionCopy = v16;
    [(HKHealthStore *)self _ratingOfExertionSamplesForWorkout:v19 workoutActivity:v20 completion:v17];
  }
}

void __87__HKHealthStore__relateReplaceRatingOfExertionSample_toWorkout_forActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __87__HKHealthStore__relateReplaceRatingOfExertionSample_toWorkout_forActivity_completion___block_invoke_2;
    v7[3] = &unk_1E7378ED8;
    v4 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v3;
    v12 = *(a1 + 64);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __87__HKHealthStore__relateReplaceRatingOfExertionSample_toWorkout_forActivity_completion___block_invoke_3;
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
  implementation = [(HKHealthStore *)self implementation];
  v15 = implementation;
  if (implementation)
  {
    [implementation relateWorkoutEffortSample:sampleCopy withWorkout:workoutCopy activity:activityCopy completion:completionCopy];
  }

  else if (activityCopy && ([workoutCopy workoutActivities], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", activityCopy), v16, (v17 & 1) == 0))
  {
    v20 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Activity must be inside workout activities."];
    completionCopy[2](completionCopy, 0, v20);
  }

  else
  {
    v18 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __75__HKHealthStore_relateWorkoutEffortSample_withWorkout_activity_completion___block_invoke;
    v23[3] = &unk_1E7378900;
    v24 = sampleCopy;
    v25 = workoutCopy;
    v26 = activityCopy;
    v27 = v18;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__HKHealthStore_relateWorkoutEffortSample_withWorkout_activity_completion___block_invoke_2;
    v21[3] = &unk_1E7376960;
    v22 = v27;
    v19 = v27;
    [(HKHealthStore *)self _serverProxyWithHandler:v23 errorHandler:v21];
  }
}

void __75__HKHealthStore_relateWorkoutEffortSample_withWorkout_activity_completion___block_invoke(void *a1, void *a2)
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
  implementation = [(HKHealthStore *)self implementation];
  v15 = implementation;
  if (implementation)
  {
    [implementation unrelateWorkoutEffortSample:sampleCopy fromWorkout:workoutCopy activity:activityCopy completion:completionCopy];
  }

  else if (activityCopy && ([workoutCopy workoutActivities], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", activityCopy), v16, (v17 & 1) == 0))
  {
    v20 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Activity must be inside workout activities."];
    completionCopy[2](completionCopy, 0, v20);
  }

  else
  {
    v18 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77__HKHealthStore_unrelateWorkoutEffortSample_fromWorkout_activity_completion___block_invoke;
    v23[3] = &unk_1E7378900;
    v24 = sampleCopy;
    v25 = workoutCopy;
    v26 = activityCopy;
    v27 = v18;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77__HKHealthStore_unrelateWorkoutEffortSample_fromWorkout_activity_completion___block_invoke_2;
    v21[3] = &unk_1E7376960;
    v22 = v27;
    v19 = v27;
    [(HKHealthStore *)self _serverProxyWithHandler:v23 errorHandler:v21];
  }
}

void __77__HKHealthStore_unrelateWorkoutEffortSample_fromWorkout_activity_completion___block_invoke(void *a1, void *a2)
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
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (implementation)
  {
    [implementation currentWorkoutZonesForType:typeCopy completion:completionCopy];
  }

  else
  {
    v10 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
    if ([typeCopy isEqual:v10])
    {
    }

    else
    {
      v11 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierCyclingPower"];
      v12 = [typeCopy isEqual:v11];

      if ((v12 & 1) == 0)
      {
        v23 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Object type not supported"];
        completionCopy[2](completionCopy, 0, v23);

        goto LABEL_14;
      }
    }

    v13 = [[HKKeyValueDomain alloc] initWithCategory:0 domainName:@"WorkoutZones" healthStore:self];
    identifier = [typeCopy identifier];
    v25 = 0;
    v15 = [(HKKeyValueDomain *)v13 dataForKey:identifier error:&v25];
    v16 = v25;

    if (v15 || !v16)
    {
      if (v15)
      {
        v17 = MEMORY[0x1E695DFD8];
        v18 = objc_opt_class();
        v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
        v24 = v16;
        v20 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v19 fromData:v15 error:&v24];
        v21 = v24;

        v22 = [v20 sortedArrayUsingComparator:&__block_literal_global_576];
        (completionCopy)[2](completionCopy, v22, v21);

        v16 = v21;
      }

      else
      {
        completionCopy[2](completionCopy, MEMORY[0x1E695E0F0], 0);
      }
    }

    else
    {
      completionCopy[2](completionCopy, 0, v16);
    }
  }

LABEL_14:
}

uint64_t __55__HKHealthStore_currentWorkoutZonesForType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
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
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (!implementation)
  {
    if (![zonesCopy count])
    {
      v10 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Cannot save empty zones"];
      completionCopy[2](completionCopy, 0, v10);
LABEL_14:

      goto LABEL_15;
    }

    v10 = [zonesCopy hk_mapToSet:&__block_literal_global_582];
    if ([v10 count] < 2)
    {
      v23 = 0;
      v12 = [HKWorkoutUtilities validateZones:zonesCopy error:&v23];
      v11 = v23;
      if (v12)
      {
        v22 = 0;
        v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:zonesCopy requiringSecureCoding:1 error:&v22];
        v14 = v22;
        if (v13)
        {
          v19 = [[HKKeyValueDomain alloc] initWithCategory:0 domainName:@"WorkoutZones" healthStore:self];
          firstObject = [zonesCopy firstObject];
          type = [firstObject type];
          identifier = [type identifier];
          v21 = v14;
          v18 = [(HKKeyValueDomain *)v19 setData:v13 forKey:identifier error:&v21];
          v17 = v21;

          (completionCopy)[2](completionCopy, v18, v17);
          v14 = v17;
        }

        else
        {
          completionCopy[2](completionCopy, 0, v14);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v11 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"All zones must have the same object type"];
    }

    completionCopy[2](completionCopy, 0, v11);
LABEL_13:

    goto LABEL_14;
  }

  [implementation saveWorkoutZones:zonesCopy completion:completionCopy];
LABEL_15:
}

- (void)takeWorkoutBackgroundStartAssertionForApplicationIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (implementation)
  {
    [implementation takeWorkoutBackgroundStartAssertionForApplicationIdentifier:identifierCopy completion:completionCopy];
  }

  else
  {
    v22 = 0;
    v10 = [_HKEntitlements entitlementsForCurrentTaskWithError:&v22];
    v11 = v22;
    if (v10)
    {
      if ([v10 hasEntitlement:@"com.apple.private.healthkit.background-workout-start"])
      {
        v12 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __88__HKHealthStore_takeWorkoutBackgroundStartAssertionForApplicationIdentifier_completion___block_invoke;
        v19[3] = &unk_1E7378AF8;
        v20 = identifierCopy;
        v21 = v12;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __88__HKHealthStore_takeWorkoutBackgroundStartAssertionForApplicationIdentifier_completion___block_invoke_2;
        v17[3] = &unk_1E7376960;
        v18 = v21;
        v13 = v21;
        [(HKHealthStore *)self _serverProxyWithHandler:v19 errorHandler:v17];
      }

      else
      {
        _HKInitializeLogging();
        v15 = HKLogAuthorization();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [HKHealthStore takeWorkoutBackgroundStartAssertionForApplicationIdentifier:completion:];
        }

        v16 = [MEMORY[0x1E696ABC0] hk_error:4 format:@"Missing background workout start entitlement."];
        completionCopy[2](completionCopy, 0, v16);
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogAuthorization();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [HKHealthStore _ratingOfExertionSamplesForWorkout:workoutActivity:completion:];
      }

      completionCopy[2](completionCopy, 0, v11);
    }
  }
}

- (void)_setBackgroundDeliveryFrequencyDataType:(id)type frequency:(int64_t)frequency withCompletion:(id)completion
{
  typeCopy = type;
  v9 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completion];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__HKHealthStore__setBackgroundDeliveryFrequencyDataType_frequency_withCompletion___block_invoke;
  v14[3] = &unk_1E7378888;
  frequencyCopy = frequency;
  v15 = typeCopy;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__HKHealthStore__setBackgroundDeliveryFrequencyDataType_frequency_withCompletion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = typeCopy;
  [(HKHealthStore *)self _serverProxyWithHandler:v14 errorHandler:v12];
}

- (void)enableBackgroundDeliveryForType:(HKObjectType *)type frequency:(HKUpdateFrequency)frequency withCompletion:(void *)completion
{
  v8 = completion;
  v9 = type;
  implementation = [(HKHealthStore *)self implementation];
  v11 = implementation;
  if (implementation)
  {
    [implementation enableBackgroundDeliveryForType:v9 frequency:frequency withCompletion:v8];
  }

  else
  {
    [(HKHealthStore *)self _setBackgroundDeliveryFrequencyDataType:v9 frequency:frequency withCompletion:v8];
  }
}

- (void)disableBackgroundDeliveryForType:(HKObjectType *)type withCompletion:(void *)completion
{
  v6 = completion;
  v7 = type;
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (implementation)
  {
    [implementation disableBackgroundDeliveryForType:v7 withCompletion:v6];
  }

  else
  {
    [(HKHealthStore *)self _setBackgroundDeliveryFrequencyDataType:v7 frequency:0 withCompletion:v6];
  }
}

- (void)disableAllBackgroundDeliveryWithCompletion:(void *)completion
{
  v4 = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation disableAllBackgroundDeliveryWithCompletion:v4];
  }

  else
  {
    [(HKHealthStore *)self _setBackgroundDeliveryFrequencyDataType:0 frequency:0 withCompletion:v4];
  }
}

- (void)_closeTransactionWithTypes:(id)types anchor:(id)anchor ackTime:(id)time
{
  typesCopy = types;
  anchorCopy = anchor;
  timeCopy = time;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (implementation)
  {
    [implementation _closeTransactionWithTypes:typesCopy anchor:anchorCopy ackTime:timeCopy];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__HKHealthStore__closeTransactionWithTypes_anchor_ackTime___block_invoke;
    v13[3] = &unk_1E7378F68;
    v14 = typesCopy;
    v15 = anchorCopy;
    v16 = timeCopy;
    [(HKHealthStore *)self _serverProxyWithHandler:v13 errorHandler:&__block_literal_global_595];
  }
}

void __59__HKHealthStore__closeTransactionWithTypes_anchor_ackTime___block_invoke_2(uint64_t a1, char a2, void *a3)
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

void __59__HKHealthStore__closeTransactionWithTypes_anchor_ackTime___block_invoke_593(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    __59__HKHealthStore__closeTransactionWithTypes_anchor_ackTime___block_invoke_2_cold_1();
  }
}

- (void)preferredUnitsForQuantityTypes:(NSSet *)quantityTypes completion:(void *)completion
{
  v9 = quantityTypes;
  v6 = completion;
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    [implementation preferredUnitsForQuantityTypes:v9 completion:v6];
  }

  else
  {
    [(HKHealthStore *)self preferredUnitsForQuantityTypes:v9 version:HKSupportedUnitPreferencesVersion() completion:v6];
  }
}

- (void)preferredUnitsForQuantityTypes:(id)types version:(int64_t)version completion:(id)completion
{
  typesCopy = types;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v11 = implementation;
  if (implementation)
  {
    [implementation preferredUnitsForQuantityTypes:typesCopy version:version completion:completionCopy];
  }

  else
  {
    v12 = [(HKHealthStore *)self _objectCompletionOnClientQueue:completionCopy];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__HKHealthStore_preferredUnitsForQuantityTypes_version_completion___block_invoke;
    v15[3] = &unk_1E7378888;
    v16 = typesCopy;
    versionCopy = version;
    v17 = v12;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__HKHealthStore_preferredUnitsForQuantityTypes_version_completion___block_invoke_2;
    v13[3] = &unk_1E7376960;
    v14 = v17;
    completionCopy = v17;
    [(HKHealthStore *)self _serverProxyWithHandler:v15 errorHandler:v13];
  }
}

- (void)_setPreferredUnit:(id)unit forType:(id)type completion:(id)completion
{
  unitCopy = unit;
  typeCopy = type;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (implementation)
  {
    [implementation _setPreferredUnit:unitCopy forType:typeCopy completion:completionCopy];
  }

  else
  {
    v13 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__HKHealthStore__setPreferredUnit_forType_completion___block_invoke;
    v16[3] = &unk_1E73788D8;
    v17 = unitCopy;
    v18 = typeCopy;
    v19 = v13;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__HKHealthStore__setPreferredUnit_forType_completion___block_invoke_2;
    v14[3] = &unk_1E7376960;
    v15 = v19;
    completionCopy = v19;
    [(HKHealthStore *)self _serverProxyWithHandler:v16 errorHandler:v14];
  }
}

- (void)_removePreferredUnitForType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (implementation)
  {
    [implementation _removePreferredUnitForType:typeCopy completion:completionCopy];
  }

  else
  {
    v10 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__HKHealthStore__removePreferredUnitForType_completion___block_invoke;
    v13[3] = &unk_1E7378AF8;
    v14 = typeCopy;
    v15 = v10;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__HKHealthStore__removePreferredUnitForType_completion___block_invoke_2;
    v11[3] = &unk_1E7376960;
    v12 = v15;
    completionCopy = v15;
    [(HKHealthStore *)self _serverProxyWithHandler:v13 errorHandler:v11];
  }
}

- (void)splitTotalEnergy:(HKQuantity *)totalEnergy startDate:(NSDate *)startDate endDate:(NSDate *)endDate resultsHandler:(void *)resultsHandler
{
  v11 = totalEnergy;
  v12 = startDate;
  v13 = endDate;
  v14 = resultsHandler;
  implementation = [(HKHealthStore *)self implementation];
  if (implementation)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke;
    v35[3] = &unk_1E7378FB8;
    v35[4] = self;
    v36 = v14;
    [implementation splitTotalEnergy:v11 startDate:v12 endDate:v13 resultsHandler:v35];
    v16 = v36;
  }

  else
  {
    [(NSDate *)v12 timeIntervalSinceDate:v13];
    if (v17 <= 0.00000011920929)
    {
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"startDate (%@) cannot occur after endDate (%@)", v12, v13}];
    }

    v18 = +[HKUnit kilocalorieUnit];
    v19 = [(HKQuantity *)v11 isCompatibleWithUnit:v18];

    if (!v19)
    {
      v20 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"totalEnergy (%@) quantity unit is not compatible with kilocalories", v11}];

      v16 = v20;
    }

    if (v16)
    {
      clientQueue = self->_clientQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_3;
      block[3] = &unk_1E7376AC0;
      v22 = &v34;
      v34 = v14;
      v33 = v16;
      dispatch_async(clientQueue, block);
      v23 = v33;
    }

    else
    {
      v24 = +[HKUnit kilocalorieUnit];
      [(HKQuantity *)v11 doubleValueForUnit:v24];
      v26 = v25;

      [(NSDate *)v13 timeIntervalSinceDate:v12];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_4;
      v30[3] = &unk_1E7379008;
      v31[1] = v26;
      v31[2] = v27;
      v22 = v31;
      v31[0] = v14;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_6;
      v28[3] = &unk_1E7376820;
      v28[4] = self;
      v29 = v31[0];
      [(HKHealthStore *)self _serverProxyWithHandler:v30 errorHandler:v28];
      v23 = v29;
    }
  }
}

void __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_2;
    v12[3] = &unk_1E7378F90;
    v16 = v10;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    dispatch_async(v11, v12);
  }
}

uint64_t __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, *(a1 + 32));
  }

  return result;
}

void __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_5;
  v5[3] = &unk_1E7378FE0;
  v7 = v3;
  v6 = *(a1 + 32);
  [a2 remote_splitTotalCalories:v5 timeInterval:v3 withCompletion:v4];
}

void __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_5(uint64_t a1, double a2)
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

void __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_6(uint64_t a1, void *a2)
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

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_606;
  v7[3] = &unk_1E7376AC0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_606(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, *(a1 + 32));
  }

  return result;
}

- (void)connectionInterrupted
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_queries copy];
  serverProxy = self->_serverProxy;
  self->_serverProxy = 0;

  v5 = [self->_mirroredSessionHandler copy];
  [(HKHealthStore *)self invalidateAllDatabaseAccessibilityAssertions];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"connection interrupted"];
  clientQueue = self->_clientQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__HKHealthStore_connectionInterrupted__block_invoke;
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

void __38__HKHealthStore_connectionInterrupted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clientQueue_invokeAuthorizationDelegateTransactionErrorHandlerWithError:*(a1 + 40)];
  if ([*(a1 + 48) count])
  {
    v2 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__HKHealthStore_connectionInterrupted__block_invoke_2;
    v5[3] = &unk_1E7378B48;
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6 = v3;
    v7 = v4;
    [v2 _serverProxyWithHandler:v5 errorHandler:&__block_literal_global_611];
  }

  if (*(a1 + 56))
  {
    [*(a1 + 32) _setMirroredWorkoutSessionObserverStateToEnabled:1 handler:?];
  }
}

void __38__HKHealthStore_connectionInterrupted__block_invoke_2(uint64_t a1)
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

  [(HKHealthStore *)self _serverProxyWithHandler:&__block_literal_global_613 errorHandler:&__block_literal_global_617];
}

void __46__HKHealthStore__applicationWillResignActive___block_invoke_3(uint64_t a1, void *a2)
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

  [(HKHealthStore *)self _serverProxyWithHandler:&__block_literal_global_619 errorHandler:&__block_literal_global_623];
}

void __45__HKHealthStore__applicationDidBecomeActive___block_invoke_3(uint64_t a1, void *a2)
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
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation _actionCompletionOnClientQueue:queueCopy];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__HKHealthStore__actionCompletionOnClientQueue___block_invoke;
    v9[3] = &unk_1E73766A0;
    v9[4] = self;
    v10 = queueCopy;
    v7 = [v9 copy];
  }

  return v7;
}

void __48__HKHealthStore__actionCompletionOnClientQueue___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKHealthStore__actionCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_1E7376678;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __48__HKHealthStore__actionCompletionOnClientQueue___block_invoke_2(uint64_t a1)
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
  v8[2] = __53__HKHealthStore__multiActionCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_1E7379078;
  v8[4] = self;
  v9 = queueCopy;
  v5 = queueCopy;
  v6 = [v8 copy];

  return v6;
}

void __53__HKHealthStore__multiActionCompletionOnClientQueue___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__HKHealthStore__multiActionCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_1E7379050;
  v9 = *(a1 + 40);
  v14 = a2;
  v15 = a3;
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, block);
}

uint64_t __53__HKHealthStore__multiActionCompletionOnClientQueue___block_invoke_2(uint64_t a1)
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
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    v7 = [implementation _objectCompletionOnClientQueue:queueCopy];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__HKHealthStore__objectCompletionOnClientQueue___block_invoke;
    v9[3] = &unk_1E73790A0;
    v9[4] = self;
    v10 = queueCopy;
    v7 = [v9 copy];
  }

  return v7;
}

void __48__HKHealthStore__objectCompletionOnClientQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKHealthStore__objectCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_1E7376618;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __48__HKHealthStore__objectCompletionOnClientQueue___block_invoke_2(void *a1)
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
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    [implementation setAllHealthDataAccessForSiri:siri completion:completionCopy];
  }

  else
  {
    v9 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__HKHealthStore_setAllHealthDataAccessForSiri_completion___block_invoke;
    v12[3] = &unk_1E73790C8;
    siriCopy = siri;
    v13 = v9;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__HKHealthStore_setAllHealthDataAccessForSiri_completion___block_invoke_2;
    v10[3] = &unk_1E7376960;
    completionCopy = v13;
    v11 = completionCopy;
    [(HKHealthStore *)self _serverProxyWithHandler:v12 errorHandler:v10];
  }
}

- (void)getAllHealthDataAccessForSiriWithCompletion:(id)completion
{
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation getAllHealthDataAccessForSiriWithCompletion:completionCopy];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__HKHealthStore_getAllHealthDataAccessForSiriWithCompletion___block_invoke;
    v12[3] = &unk_1E73789F0;
    v12[4] = self;
    v13 = completionCopy;
    v7 = [v12 copy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__HKHealthStore_getAllHealthDataAccessForSiriWithCompletion___block_invoke_3;
    v10[3] = &unk_1E73788B0;
    v11 = v7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__HKHealthStore_getAllHealthDataAccessForSiriWithCompletion___block_invoke_4;
    v8[3] = &unk_1E7376960;
    completionCopy = v11;
    v9 = completionCopy;
    [(HKHealthStore *)self _serverProxyWithHandler:v10 errorHandler:v8];
  }
}

void __61__HKHealthStore_getAllHealthDataAccessForSiriWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__HKHealthStore_getAllHealthDataAccessForSiriWithCompletion___block_invoke_2;
  block[3] = &unk_1E73789A0;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __61__HKHealthStore_getAllHealthDataAccessForSiriWithCompletion___block_invoke_2(void *a1)
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
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v9 = implementation;
  if (implementation)
  {
    [implementation fetchServerURLForAssetType:typeCopy completion:completionCopy];
  }

  else
  {
    v10 = [(HKHealthStore *)self _objectCompletionOnClientQueue:completionCopy];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__HKHealthStore_fetchServerURLForAssetType_completion___block_invoke;
    v13[3] = &unk_1E7378AF8;
    v14 = typeCopy;
    v15 = v10;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__HKHealthStore_fetchServerURLForAssetType_completion___block_invoke_2;
    v11[3] = &unk_1E7376960;
    completionCopy = v15;
    v12 = completionCopy;
    [(HKHealthStore *)self _serverProxyWithHandler:v13 errorHandler:v11];
  }
}

- (void)setServerURL:(id)l forAssetType:(id)type completion:(id)completion
{
  lCopy = l;
  typeCopy = type;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v12 = implementation;
  if (implementation)
  {
    [implementation setServerURL:lCopy forAssetType:typeCopy completion:completionCopy];
  }

  else
  {
    v13 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__HKHealthStore_setServerURL_forAssetType_completion___block_invoke;
    v16[3] = &unk_1E73788D8;
    v17 = lCopy;
    v18 = typeCopy;
    v19 = v13;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__HKHealthStore_setServerURL_forAssetType_completion___block_invoke_2;
    v14[3] = &unk_1E7376960;
    completionCopy = v19;
    v15 = completionCopy;
    [(HKHealthStore *)self _serverProxyWithHandler:v16 errorHandler:v14];
  }
}

- (void)clientRemote_unitPreferencesDidUpdate
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"HKUserPreferencesDidChangeNotification" object:self];
}

- (void)clientRemote_conceptIndexManagerDidBecomeQuiescentWithSamplesProcessedCount:(int64_t)count
{
  v10[1] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"processedSampleCount";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:count];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [defaultCenter postNotificationName:@"HKConceptIndexManagerDidBecomeQuiescentNotification" object:self userInfo:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_didCreateRemoteSessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__HKHealthStore_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(clientQueue, v7);
}

void __70__HKHealthStore_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = _Block_copy(*(*(a1 + 32) + 160));
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if (v2)
  {
    v3 = [HKWorkoutSession alloc];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v12 = 0;
    v6 = [(HKWorkoutSession *)v3 _initWithHealthStore:v4 taskConfiguration:v5 error:&v12];
    v7 = v12;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__HKHealthStore_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke_626;
    v9[3] = &unk_1E7378BE8;
    v10 = v6;
    v11 = v2;
    v8 = v6;
    [v8 _setupMirroredSessionTaskServerWithCompletion:v9];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __70__HKHealthStore_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke_cold_1();
    }
  }
}

uint64_t __70__HKHealthStore_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke_626(uint64_t a1, int a2)
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

  (*(v3 + 16))(v3, v4);
  v5 = *(a1 + 32);

  return [v5 _runSetupPostClientMirroringStartHandlerWithCompletion:&__block_literal_global_628];
}

void __70__HKHealthStore_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke_2(uint64_t a1, char a2, void *a3)
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
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation fetchMedicalIDDataWithCompletion:completionCopy];
  }

  else
  {
    v7 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__HKHealthStore_fetchMedicalIDDataWithCompletion___block_invoke;
    v8[3] = &unk_1E73790F0;
    v9 = completionCopy;
    [(HKMedicalIDStore *)v7 fetchMedicalIDDataWithCompletion:v8];
  }
}

- (void)fetchMedicalIDEmergencyContactsWithCompletion:(id)completion
{
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v5 = implementation;
  if (implementation)
  {
    [implementation fetchMedicalIDEmergencyContactsWithCompletion:completionCopy];
  }

  else
  {
    v6 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
    [(HKMedicalIDStore *)v6 fetchMedicalIDEmergencyContactsWithCompletion:completionCopy];
  }
}

- (void)updateMedicalIDData:(id)data
{
  dataCopy = data;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation updateMedicalIDData:dataCopy];
  }

  else
  {
    [(HKHealthStore *)self updateMedicalIDData:dataCopy completion:0];
  }
}

- (void)updateMedicalIDData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v8 = implementation;
  if (implementation)
  {
    [implementation updateMedicalIDData:dataCopy completion:completionCopy];
  }

  else
  {
    v9 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
    [(HKMedicalIDStore *)v9 updateMedicalIDData:dataCopy completion:completionCopy];
  }
}

- (void)deleteMedicalIDData
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    [implementation deleteMedicalIDData];
  }

  else
  {
    [(HKHealthStore *)self deleteMedicalIDDataWithCompletion:0];
  }
}

- (void)deleteMedicalIDDataWithCompletion:(id)completion
{
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v5 = implementation;
  if (implementation)
  {
    [implementation deleteMedicalIDDataWithCompletion:completionCopy];
  }

  else
  {
    v6 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
    [(HKMedicalIDStore *)v6 deleteMedicalIDDataWithCompletion:completionCopy];
  }
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
  assertionCopy = assertion;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v10 = implementation;
  if (implementation)
  {
    [implementation requestDatabaseAccessibilityAssertion:assertionCopy timeout:completionCopy completion:timeout];
  }

  else
  {
    _getDatabaseAccessibilityAssertionStoreKeeper = [(HKHealthStore *)self _getDatabaseAccessibilityAssertionStoreKeeper];
    [_getDatabaseAccessibilityAssertionStoreKeeper fetchDatabaseAccessibilityAssertionForOwnerIdentifier:assertionCopy isRecovery:0 timeout:completionCopy completion:timeout];
  }
}

- (void)requestDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier contextType:(int64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v10 = implementation;
  if (implementation)
  {
    [implementation requestDatabaseAccessibilityAssertionForOwnerIdentifier:identifierCopy contextType:type completion:completionCopy];
  }

  else
  {
    _getDatabaseAccessibilityAssertionStoreKeeper = [(HKHealthStore *)self _getDatabaseAccessibilityAssertionStoreKeeper];
    [_getDatabaseAccessibilityAssertionStoreKeeper fetchDatabaseAccessibilityAssertionForOwnerIdentifier:identifierCopy contextType:type isRecovery:0 timeout:completionCopy completion:1.79769313e308];
  }
}

- (void)invalidateDatabaseAccessibilityAssertion:(id)assertion
{
  assertionCopy = assertion;
  implementation = [(HKHealthStore *)self implementation];
  v5 = implementation;
  if (implementation)
  {
    [implementation invalidateDatabaseAccessibilityAssertion:assertionCopy];
  }

  else
  {
    _getDatabaseAccessibilityAssertionStoreKeeper = [(HKHealthStore *)self _getDatabaseAccessibilityAssertionStoreKeeper];
    [_getDatabaseAccessibilityAssertionStoreKeeper invalidateDatabaseAccessibilityAssertionWithAssertion:assertionCopy];
  }
}

- (void)invalidateAllDatabaseAccessibilityAssertions
{
  implementation = [(HKHealthStore *)self implementation];
  v5 = implementation;
  if (implementation)
  {
    [implementation invalidateAllDatabaseAccessibilityAssertions];
  }

  else
  {
    _getDatabaseAccessibilityAssertionStoreKeeper = [(HKHealthStore *)self _getDatabaseAccessibilityAssertionStoreKeeper];
    [_getDatabaseAccessibilityAssertionStoreKeeper invalidateAllDatabaseAccessibilityAssertions];
  }
}

- (void)isProtectedDataAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation isProtectedDataAvailableWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(HKHealthStore *)self _multiActionCompletionOnClientQueue:completionCopy];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__HKHealthStore_isProtectedDataAvailableWithCompletion___block_invoke;
    v10[3] = &unk_1E73788B0;
    v11 = v7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__HKHealthStore_isProtectedDataAvailableWithCompletion___block_invoke_2;
    v8[3] = &unk_1E7376960;
    completionCopy = v11;
    v9 = completionCopy;
    [(HKHealthStore *)self _serverProxyWithHandler:v10 errorHandler:v8];
  }
}

- (id)notifier
{
  implementation = [(HKHealthStore *)self implementation];
  v4 = implementation;
  if (implementation)
  {
    selfCopy = implementation;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (void)dropEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation dropEntitlement:entitlementCopy];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__HKHealthStore_dropEntitlement___block_invoke;
    v11[3] = &unk_1E7376898;
    v7 = entitlementCopy;
    v12 = v7;
    v8 = [(HKHealthStore *)self _synchronousServerProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __33__HKHealthStore_dropEntitlement___block_invoke_632;
    v9[3] = &unk_1E7376A00;
    v10 = v7;
    [v8 remote_dropEntitlement:v10 completion:v9];
  }
}

void __33__HKHealthStore_dropEntitlement___block_invoke(uint64_t a1, void *a2)
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

void __33__HKHealthStore_dropEntitlement___block_invoke_632(uint64_t a1, char a2, void *a3)
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
  implementation = [(HKHealthStore *)self implementation];
  v6 = implementation;
  if (implementation)
  {
    [implementation restoreEntitlement:entitlementCopy];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__HKHealthStore_restoreEntitlement___block_invoke;
    v11[3] = &unk_1E7376898;
    v7 = entitlementCopy;
    v12 = v7;
    v8 = [(HKHealthStore *)self _synchronousServerProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__HKHealthStore_restoreEntitlement___block_invoke_633;
    v9[3] = &unk_1E7376A00;
    v10 = v7;
    [v8 remote_restoreEntitlement:v10 completion:v9];
  }
}

void __36__HKHealthStore_restoreEntitlement___block_invoke(uint64_t a1, void *a2)
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

void __36__HKHealthStore_restoreEntitlement___block_invoke_633(uint64_t a1, char a2, void *a3)
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

- (id)_hkui_authorizationViewControllerPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->__hkui_authorizationViewControllerPresenter);

  return WeakRetained;
}

- (NSString)firstName
{
  v2 = [[HKProfileStore alloc] initWithHealthStore:self];
  synchronouslyFetchFirstName = [(HKProfileStore *)v2 synchronouslyFetchFirstName];

  return synchronouslyFetchFirstName;
}

- (void)profileIdentifierForNRDeviceUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = [[HKProfileStore alloc] initWithHealthStore:self];
  [(HKProfileStore *)v8 fetchProfileIdentifierForNRDeviceUUID:dCopy completion:completionCopy];
}

- (void)forceCloudSyncWithOptions:(unint64_t)options reason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v9 = [[HKCloudSyncControl alloc] initWithHealthStore:self];
  [(HKCloudSyncControl *)v9 forceCloudSyncWithOptions:options reason:reason completion:completionCopy];
}

- (void)forceCloudSyncWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v7 = [[HKCloudSyncControl alloc] initWithHealthStore:self];
  [(HKCloudSyncControl *)v7 forceCloudSyncWithOptions:options completion:completionCopy];
}

- (void)forceCloudSyncDataUploadForProfileWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HKCloudSyncControl alloc] initWithHealthStore:self];
  [(HKCloudSyncControl *)v5 forceCloudSyncDataUploadForProfileWithCompletion:completionCopy];
}

- (void)fetchCloudSyncRequiredWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HKCloudSyncControl alloc] initWithHealthStore:self];
  [(HKCloudSyncControl *)v5 fetchCloudSyncRequiredWithCompletion:completionCopy];
}

- (void)disableCloudSyncAndDeleteAllCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HKCloudSyncControl alloc] initWithHealthStore:self];
  [(HKCloudSyncControl *)v5 disableCloudSyncAndDeleteAllCloudDataWithCompletion:completionCopy];
}

- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (HKFeatureIdentifierIsProvidedBySleepDaemon(identifierCopy))
  {
    v5 = [(HKHealthStore *)self _sleepFeatureAvailabilityProvider:identifierCopy];
  }

  else
  {
    v5 = [[HKFeatureAvailabilityStore alloc] initWithFeatureIdentifier:identifierCopy healthStore:self];
  }

  v6 = v5;

  return v6;
}

- (id)_sleepFeatureAvailabilityProvider:(id)provider
{
  providerCopy = provider;
  if (SleepLibraryCore() && getgetSleepFeatureAvailabilityProvidingSymbolLoc())
  {
    providerCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKHealthStore<HKFeatureAvailabilityHealthDataSource> (%@)", providerCopy];
    selfCopy = self;
    v7 = providerCopy;
    v8 = getgetSleepFeatureAvailabilityProvidingSymbolLoc();
    if (!v8)
    {
      [HKHealthStore(HKFeatureAvailabilityHealthDataSource) _sleepFeatureAvailabilityProvider:];
    }

    v9 = v8(providerCopy, selfCopy, v7);
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogSleep;
    if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_ERROR))
    {
      [HKHealthStore(HKFeatureAvailabilityHealthDataSource) _sleepFeatureAvailabilityProvider:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (id)healthDataRequirementEvaluationProvider
{
  v2 = [[HKFeatureAvailabilityHealthDataRequirementStore alloc] initWithHealthStore:self];

  return v2;
}

- (id)wristDetectionSettingManager
{
  v2 = objc_alloc_init(HKWristDetectionSettingManager);

  return v2;
}

- (id)ageWithCurrentDate:(id)date error:(id *)error
{
  dateCopy = date;
  v7 = [(HKHealthStore *)self dateOfBirthComponentsWithError:error];
  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "hk_ageWithCurrentDate:", dateCopy)}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)featureStatusProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[HKFeatureStatusManager alloc] initWithFeatureIdentifier:identifierCopy healthStore:self countryCodeSource:0];

  return v5;
}

- (void)isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HKHealthRecordsStore alloc] initWithHealthStore:self];
  [(HKHealthRecordsStore *)v5 fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion:completionCopy];
}

- (void)generateFakeDataForActivityType:(int64_t)type minutes:(double)minutes completion:(id)completion
{
  completionCopy = completion;
  v9 = [[HKWorkoutControl alloc] initWithHealthStore:self];
  [(HKWorkoutControl *)v9 generateFakeDataForActivityType:type minutes:completionCopy completion:minutes];
}

- (void)_activeWorkoutApplicationIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__HKHealthStore_Deprecated___activeWorkoutApplicationIdentifierWithCompletion___block_invoke;
  v6[3] = &unk_1E737DBF8;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HKHealthStore *)self _currentWorkoutSnapshotWithCompletion:v6];
}

void __79__HKHealthStore_Deprecated___activeWorkoutApplicationIdentifierWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 applicationIdentifier];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)_currentWorkoutSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__21;
  v14 = __Block_byref_object_dispose__21;
  v15 = [[_HKWorkoutObserver alloc] initWithHealthStore:self reportInactiveSessions:0];
  v5 = v11[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__HKHealthStore_Deprecated___currentWorkoutSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E737DC20;
  v6 = completionCopy;
  v8 = v6;
  v9 = &v10;
  [v5 currentWorkoutSnapshotWithCompletion:v7];

  _Block_object_dispose(&v10, 8);
}

void __67__HKHealthStore_Deprecated___currentWorkoutSnapshotWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)_shouldGenerateDemoDataPreferenceIsSet:(id)set
{
  setCopy = set;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__HKHealthStore__HKDaemonPreferences___shouldGenerateDemoDataPreferenceIsSet___block_invoke;
  v6[3] = &unk_1E7378BE8;
  v6[4] = self;
  v7 = setCopy;
  v5 = setCopy;
  [(HKHealthStore *)self _fetchBoolDaemonPreferenceForKey:@"HealthUseDemoDataDatabaseKey" completion:v6];
}

void __78__HKHealthStore__HKDaemonPreferences___shouldGenerateDemoDataPreferenceIsSet___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      __78__HKHealthStore__HKDaemonPreferences___shouldGenerateDemoDataPreferenceIsSet___block_invoke_cold_1(v5, v6);
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_6:
      (*(*(a1 + 40) + 16))();
      goto LABEL_7;
    }
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__HKHealthStore__HKDaemonPreferences___shouldGenerateDemoDataPreferenceIsSet___block_invoke_34;
  v8[3] = &unk_1E7376910;
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v7 _fetchBoolDaemonPreferenceForKey:@"HealthDemoDataGenerateKey" completion:v8];

LABEL_7:
}

void __78__HKHealthStore__HKDaemonPreferences___shouldGenerateDemoDataPreferenceIsSet___block_invoke_34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      __78__HKHealthStore__HKDaemonPreferences___shouldGenerateDemoDataPreferenceIsSet___block_invoke_34_cold_1(v4, v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_fetchBoolDaemonPreferenceForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  v8 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__HKHealthStore__HKDaemonPreferences___fetchBoolDaemonPreferenceForKey_completion___block_invoke;
  v10[3] = &unk_1E7378978;
  v11 = completionCopy;
  v9 = completionCopy;
  [(HKHealthStore *)self _safeFetchDaemonPreferenceForKey:keyCopy expectedReturnClass:v8 completion:v10];
}

void __83__HKHealthStore__HKDaemonPreferences___fetchBoolDaemonPreferenceForKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [a2 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_safeFetchDaemonPreferenceForKey:(id)key expectedReturnClass:(Class)class completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__HKHealthStore__HKDaemonPreferences___safeFetchDaemonPreferenceForKey_expectedReturnClass_completion___block_invoke;
  v10[3] = &unk_1E7385480;
  v11 = completionCopy;
  classCopy = class;
  v9 = completionCopy;
  [(HKHealthStore *)self _fetchDaemonPreferenceForKey:key completion:v10];
}

void __103__HKHealthStore__HKDaemonPreferences___safeFetchDaemonPreferenceForKey_expectedReturnClass_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (objc_opt_isKindOfClass())
  {
    v7 = v8;
  }

  else
  {

    v7 = 0;
  }

  v9 = v7;
  (*(*(a1 + 32) + 16))();
}

- (void)_fetchDaemonPreferenceForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if (!completionCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
    if (keyCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "key"}];
    goto LABEL_3;
  }

  if (!keyCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [(HKHealthStore *)self _objectCompletionOnClientQueue:completionCopy];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__HKHealthStore__HKDaemonPreferences___fetchDaemonPreferenceForKey_completion___block_invoke;
  v13[3] = &unk_1E7378AF8;
  v14 = keyCopy;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__HKHealthStore__HKDaemonPreferences___fetchDaemonPreferenceForKey_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = keyCopy;
  [(HKHealthStore *)self _serverProxyWithHandler:v13 errorHandler:v11];
}

- (void)_setDaemonPreferenceValue:(id)value forKey:(id)key completion:(id)completion
{
  valueCopy = value;
  keyCopy = key;
  completionCopy = completion;
  if (!completionCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
    if (keyCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "key"}];
    goto LABEL_3;
  }

  if (!keyCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [(HKHealthStore *)self _actionCompletionOnClientQueue:completionCopy];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__HKHealthStore__HKDaemonPreferences___setDaemonPreferenceValue_forKey_completion___block_invoke;
  v17[3] = &unk_1E73788D8;
  v18 = valueCopy;
  v19 = keyCopy;
  v20 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__HKHealthStore__HKDaemonPreferences___setDaemonPreferenceValue_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = keyCopy;
  v14 = valueCopy;
  [(HKHealthStore *)self _serverProxyWithHandler:v17 errorHandler:v15];
}

- (void)_connectionQueue_setUpWithEndpoint:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Could not establish connection with %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setSourceBundle:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
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

void __69__HKHealthStore_recalibrateEstimatesForSampleType_atDate_completion___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)authorizationStatusForType:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[type isKindOfClass:[HKObjectType class]]" object:? file:? lineNumber:? description:?];
}

void __44__HKHealthStore_authorizationStatusForType___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Failed to determine authorization status: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79__HKHealthStore_requestPerObjectReadAuthorizationForType_predicate_completion___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2(&dword_19197B000, v2, v3, "FAILED authorization request to read %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_typesWithBothBloodPressureIfNeeded:(os_log_t)log .cold.1(int a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_fault_impl(&dword_19197B000, log, OS_LOG_TYPE_FAULT, "App did not pass in both blood pressure types. containsSystolic = %{BOOL}d containsDiastolic = %{BOOL}d. Automatically adding missing one.", v4, 0xEu);
  v3 = *MEMORY[0x1E69E9840];
}

void __84__HKHealthStore_requestAuthorizationToShareTypes_readTypes_shouldPrompt_completion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v6 = "prompting";
  }

  else
  {
    v6 = "silent";
  }

  v7 = [*(a1 + 32) allObjects];
  v8 = [*(a1 + 40) allObjects];
  v9 = [a2 localizedDescription];
  v11 = 136315906;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  v15 = 2112;
  v16 = v8;
  v17 = 2112;
  v18 = v9;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "FAILED %s authorization request to share %@, read %@, error %@", &v11, 0x2Au);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_validatePurposeStringsForSharingTypes:readingTypes:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Failed to fetch entitlements when validating purpose strings: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __80__HKHealthStore_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Failed to end delegate transaction: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __34__HKHealthStore__supportsFeature___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __37__HKHealthStore_startWorkoutSession___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Failed to start workout session: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __35__HKHealthStore_endWorkoutSession___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Failed to end workout session: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__HKHealthStore_setWorkoutSessionMirroringStartHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "[mirroring] Failed to disable remote session observer with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__HKHealthStore_setWorkoutSessionMirroringStartHandler___block_invoke_551_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "[mirroring] Failed to set remote session observer with XPC error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_ratingOfExertionSamplesForWorkout:workoutActivity:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Failed to fetch entitlements: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __59__HKHealthStore__closeTransactionWithTypes_anchor_ackTime___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Failed to close observer query transaction: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke_6_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "connection error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__HKHealthStore_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke_2_cold_1(void *a1, char a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithBool:a2 & 1];
  OUTLINED_FUNCTION_4();
  v10 = 2114;
  v11 = a3;
  _os_log_error_impl(&dword_19197B000, v6, OS_LOG_TYPE_ERROR, "[mirroring] Post mirroring start handler completed with success %{public}@ and error %{public}@", v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __78__HKHealthStore__HKDaemonPreferences___shouldGenerateDemoDataPreferenceIsSet___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error fetching demo data database preferences: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __78__HKHealthStore__HKDaemonPreferences___shouldGenerateDemoDataPreferenceIsSet___block_invoke_34_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error fetching demo data generation preferences: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end