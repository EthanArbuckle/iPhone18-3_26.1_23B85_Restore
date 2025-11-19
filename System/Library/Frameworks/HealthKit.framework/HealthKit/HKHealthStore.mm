@interface HKHealthStore
+ (BOOL)_applicationHasRunningWorkout;
+ (BOOL)_useHKHealthStoreImplementation;
+ (BOOL)isHealthDataAvailable;
+ (BOOL)requireExplicitSystemMachServiceEnablement;
- (BOOL)_prepareObjectsForSaving:(id)a3 errorOut:(id *)a4;
- (BOOL)_setActivityMoveMode:(int64_t)a3 error:(id *)a4;
- (BOOL)_setBiologicalSex:(int64_t)a3 error:(id *)a4;
- (BOOL)_setBloodType:(int64_t)a3 error:(id *)a4;
- (BOOL)_setBodyMassCharacteristicQuantity:(id)a3 error:(id *)a4;
- (BOOL)_setCardioFitnessMedicationsUse:(unint64_t)a3 error:(id *)a4;
- (BOOL)_setCharacteristic:(id)a3 forDataType:(id)a4 error:(id *)a5;
- (BOOL)_setDateOfBirthComponents:(id)a3 error:(id *)a4;
- (BOOL)_setFitzpatrickSkinType:(int64_t)a3 error:(id *)a4;
- (BOOL)_setHeightCharacteristicQuantity:(id)a3 error:(id *)a4;
- (BOOL)_setLeanBodyMassCharacteristicQuantity:(id)a3 error:(id *)a4;
- (BOOL)_setUserEnteredMenstrualCycleLengthCharacteristicQuantity:(id)a3 error:(id *)a4;
- (BOOL)_setUserEnteredMenstrualPeriodLengthCharacteristicQuantity:(id)a3 error:(id *)a4;
- (BOOL)_setWheelchairUse:(int64_t)a3 error:(id *)a4;
- (BOOL)_supportsFeature:(unint64_t)a3;
- (BOOL)canConnectToSystemMachService;
- (BOOL)supportsHealthRecords;
- (HKActivityMoveModeObject)activityMoveModeWithError:(NSError *)error;
- (HKAuthorizationStatus)authorizationStatusForType:(HKObjectType *)type;
- (HKBiologicalSexObject)biologicalSexWithError:(NSError *)error;
- (HKBloodTypeObject)bloodTypeWithError:(NSError *)error;
- (HKFitzpatrickSkinTypeObject)fitzpatrickSkinTypeWithError:(NSError *)error;
- (HKHealthServicesManager)healthServicesManager;
- (HKHealthStore)initWithListenerEndpoint:(id)a3 debugIdentifier:(id)a4;
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
- (id)_actionCompletionOnClientQueue:(id)a3;
- (id)_activityMoveModeWithError:(id *)a3;
- (id)_bodyMassCharacteristicQuantityWithError:(id *)a3;
- (id)_cardioFitnessMedicationsUseWithError:(id *)a3;
- (id)_characteristicForDataType:(id)a3 error:(id *)a4;
- (id)_clientClinicalReadAuthorizationUsageDescription;
- (id)_clientReadAuthorizationUsageDescription;
- (id)_clientWriteAuthorizationUsageDescription;
- (id)_clinicalAuthorizationPresentationRequestForRecord:(id)a3;
- (id)_getDatabaseAccessibilityAssertionStoreKeeper;
- (id)_healthDataAuthorizationPresentationRequestForRecord:(id)a3;
- (id)_heightCharacteristicQuantityWithError:(id *)a3;
- (id)_hkui_authorizationViewControllerPresenter;
- (id)_implementationCreate:(BOOL)a3;
- (id)_leanBodyMassCharacteristicQuantityWithError:(id *)a3;
- (id)_lock_connectionWithError:(id *)a3;
- (id)_modificationDateForCharacteristicWithType:(id)a3 error:(id *)a4;
- (id)_multiActionCompletionOnClientQueue:(id)a3;
- (id)_objectCompletionOnClientQueue:(id)a3;
- (id)_perObjectAuthorizationPresentationRequestForSession:(id)a3;
- (id)_researchStudyUsageDescription;
- (id)_sleepFeatureAvailabilityProvider:(id)a3;
- (id)_sourceBundleOrDefaultBundle;
- (id)_synchronousServerProxyWithErrorHandler:(id)a3;
- (id)_typesWithBothBloodPressureIfNeeded:(id)a3;
- (id)_userEnteredMenstrualCycleLengthCharacteristicQuantityWithError:(id *)a3;
- (id)_userEnteredMenstrualPeriodLengthCharacteristicQuantityWithError:(id *)a3;
- (id)_wrappedErrorHandler:(id)a3 proxy:(id)a4;
- (id)ageWithCurrentDate:(id)a3 error:(id *)a4;
- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)a3;
- (id)featureStatusProviderForIdentifier:(id)a3;
- (id)healthDataRequirementEvaluationProvider;
- (id)healthStoreConfiguration;
- (id)initForHKHealthStoreImplementation;
- (id)notifier;
- (id)pluginServiceEndpointForIdentifier:(id)a3 error:(id *)a4;
- (id)taskServerEndpointForIdentifier:(id)a3 pluginURL:(id)a4 taskUUID:(id)a5 instanceUUID:(id)a6 configuration:(id)a7 error:(id *)a8;
- (id)unitTest_replaceListenerEndpoint:(id)a3;
- (id)wristDetectionSettingManager;
- (unint64_t)applicationSDKVersionToken;
- (void)_activeWorkoutApplicationIdentifierWithCompletion:(id)a3;
- (void)_activityMoveModeObjectWithCompletion:(id)a3;
- (void)_addQuery:(id)a3;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_biologicalSexWithCompletion:(id)a3;
- (void)_bloodTypeWithCompletion:(id)a3;
- (void)_characteristicForDataType:(id)a3 withCompletion:(id)a4;
- (void)_clientQueue_invokeAuthorizationDelegateTransactionErrorHandlerWithError:(id)a3;
- (void)_closeTransactionWithTypes:(id)a3 anchor:(id)a4 ackTime:(id)a5;
- (void)_connectionQueue_setUpWithEndpoint:(id)a3;
- (void)_currentWorkoutSnapshotWithCompletion:(id)a3;
- (void)_dateOfBirthWithCompletion:(id)a3;
- (void)_deleteObjects:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)_discardServerProxiesForServer:(id)a3;
- (void)_faultIfInappropriateHost;
- (void)_fetchBoolDaemonPreferenceForKey:(id)a3 completion:(id)a4;
- (void)_fetchDaemonPreferenceForKey:(id)a3 completion:(id)a4;
- (void)_fitzpatrickSkinTypeWithCompletion:(id)a3;
- (void)_ratingOfExertionSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)_relateReplaceRatingOfExertionSample:(id)a3 toWorkout:(id)a4 forActivity:(id)a5 completion:(id)a6;
- (void)_removePreferredUnitForType:(id)a3 completion:(id)a4;
- (void)_removeQuery:(id)a3;
- (void)_removeQueryFromPendingActivationQueries:(id)a3;
- (void)_replaceWorkout:(id)a3 withWorkout:(id)a4 completion:(id)a5;
- (void)_safeFetchDaemonPreferenceForKey:(id)a3 expectedReturnClass:(Class)a4 completion:(id)a5;
- (void)_saveObjects:(id)a3 atomically:(BOOL)a4 skipInsertionFilter:(BOOL)a5 completion:(id)a6;
- (void)_serverProxyWithHandler:(id)a3 errorHandler:(id)a4;
- (void)_setBackgroundDeliveryFrequencyDataType:(id)a3 frequency:(int64_t)a4 withCompletion:(id)a5;
- (void)_setConfigurationPropertyUsingBlock:(id)a3 resumeRequired:(BOOL)a4;
- (void)_setDaemonPreferenceValue:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)_setMirroredWorkoutSessionObserverStateToEnabled:(BOOL)a3 handler:(id)a4;
- (void)_setPreferredUnit:(id)a3 forType:(id)a4 completion:(id)a5;
- (void)_shouldGenerateDemoDataPreferenceIsSet:(id)a3;
- (void)_startWatchAppWithMirroredStartData:(id)a3 completion:(id)a4;
- (void)_startWatchAppWithWorkoutPlanData:(id)a3 completion:(id)a4;
- (void)_throwIfAuthorizationDisallowedForSharing:(BOOL)a3 types:(id)a4;
- (void)_throwIfClinicalTypesRequestedToShare:(id)a3;
- (void)_throwIfParentTypeNotRequestedForSharing:(BOOL)a3 types:(id)a4;
- (void)_throwIfPerObjectReadAuthorizationNotSupportedForType:(id)a3;
- (void)_throwIfUsingIncorrectAuthorizationRequestType:(id)a3;
- (void)_validateAuthorizationRequestWithShareTypes:(id)a3 readTypes:(id)a4;
- (void)_validateAuthorizationRequiredTypes;
- (void)_validateClinicalHealthRecordsPurposeStringsForSharingTypes:(id)a3 readingTypes:(id)a4;
- (void)_validateHealthDataPurposeStringsForSharingTypes:(id)a3 readingTypes:(id)a4 isResearchStudy:(BOOL)a5;
- (void)_validatePurposeStringsForObjectType:(id)a3;
- (void)_validatePurposeStringsForSharingTypes:(id)a3 readingTypes:(id)a4;
- (void)_wheelchairUseWithCompletion:(id)a3;
- (void)addHealthServicePairing:(id)a3 withCompletion:(id)a4;
- (void)addSamples:(NSArray *)samples toWorkout:(HKWorkout *)workout completion:(void *)completion;
- (void)associateSampleUUIDs:(id)a3 withSampleUUID:(id)a4 completion:(id)a5;
- (void)beginAuthorizationDelegateTransactionWithSessionIdentifier:(id)a3 sourceHandler:(id)a4 errorHandler:(id)a5;
- (void)clientRemote_conceptIndexManagerDidBecomeQuiescentWithSamplesProcessedCount:(int64_t)a3;
- (void)clientRemote_didCreateRemoteSessionWithConfiguration:(id)a3;
- (void)clientRemote_presentAuthorizationWithRequestRecord:(id)a3 completion:(id)a4;
- (void)clientRemote_presentAuthorizationWithSession:(id)a3 completion:(id)a4;
- (void)clientRemote_presentRecalibrateEstimatesRequestWithRecord:(id)a3 completion:(id)a4;
- (void)clientRemote_unitPreferencesDidUpdate;
- (void)connectionConfigured;
- (void)connectionInterrupted;
- (void)currentWorkoutZonesForType:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)deleteAllSamplesWithTypes:(id)a3 sourceBundleIdentifier:(id)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)deleteClientSourceWithCompletion:(id)a3;
- (void)deleteMedicalIDData;
- (void)deleteMedicalIDDataWithCompletion:(id)a3;
- (void)deleteObject:(HKObject *)object withCompletion:(void *)completion;
- (void)deleteObject:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5;
- (void)deleteObjectsOfType:(id)a3 predicate:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6;
- (void)deleteObjectsWithUUIDs:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)disableAllBackgroundDeliveryWithCompletion:(void *)completion;
- (void)disableBackgroundDeliveryForType:(HKObjectType *)type withCompletion:(void *)completion;
- (void)disableCloudSyncAndDeleteAllCloudDataWithCompletion:(id)a3;
- (void)dropEntitlement:(id)a3;
- (void)enableBackgroundDeliveryForType:(HKObjectType *)type frequency:(HKUpdateFrequency)frequency withCompletion:(void *)completion;
- (void)endAuthorizationDelegateTransactionWithSessionIdentifier:(id)a3 error:(id)a4;
- (void)endHealthServiceDiscovery:(id)a3;
- (void)endHealthServiceSession:(id)a3;
- (void)endWorkoutSession:(HKWorkoutSession *)workoutSession;
- (void)executeQuery:(id)a3 activationHandler:(id)a4;
- (void)fetchCloudSyncRequiredWithCompletion:(id)a3;
- (void)fetchMedicalIDDataWithCompletion:(id)a3;
- (void)fetchMedicalIDEmergencyContactsWithCompletion:(id)a3;
- (void)fetchPluginServiceEndpointForIdentifier:(id)a3 endpointHandler:(id)a4 errorHandler:(id)a5;
- (void)fetchServerURLForAssetType:(id)a3 completion:(id)a4;
- (void)fetchTaskServerEndpointForIdentifier:(id)a3 pluginURL:(id)a4 taskUUID:(id)a5 instanceUUID:(id)a6 configuration:(id)a7 endpointHandler:(id)a8 errorHandler:(id)a9;
- (void)forceCloudSyncDataUploadForProfileWithCompletion:(id)a3;
- (void)forceCloudSyncWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)forceCloudSyncWithOptions:(unint64_t)a3 reason:(int64_t)a4 completion:(id)a5;
- (void)generateFakeDataForActivityType:(int64_t)a3 minutes:(double)a4 completion:(id)a5;
- (void)getAllHealthDataAccessForSiriWithCompletion:(id)a3;
- (void)getEnabledStatusForPeripheral:(id)a3 withCompletion:(id)a4;
- (void)getRequestStatusForAuthorizationToShareTypes:(NSSet *)typesToShare readTypes:(NSSet *)typesToRead completion:(void *)completion;
- (void)handleAuthorizationForExtensionWithCompletion:(void *)completion;
- (void)healthPeripheralsWithCustomProperties:(id)a3 withCompletion:(id)a4;
- (void)healthPeripheralsWithFilter:(unint64_t)a3 handler:(id)a4;
- (void)healthServicePairingsWithHandler:(id)a3;
- (void)invalidateAllDatabaseAccessibilityAssertions;
- (void)invalidateDatabaseAccessibilityAssertion:(id)a3;
- (void)isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion:(id)a3;
- (void)isProtectedDataAvailableWithCompletion:(id)a3;
- (void)pauseWorkoutSession:(HKWorkoutSession *)workoutSession;
- (void)preferredUnitsForQuantityTypes:(NSSet *)quantityTypes completion:(void *)completion;
- (void)preferredUnitsForQuantityTypes:(id)a3 version:(int64_t)a4 completion:(id)a5;
- (void)profileIdentifierForNRDeviceUUID:(id)a3 completion:(id)a4;
- (void)recalibrateEstimatesForSampleType:(HKSampleType *)sampleType atDate:(NSDate *)date completion:(void *)completion;
- (void)recoverActiveWorkoutSessionWithCompletion:(void *)completion;
- (void)registerPeripheralIdentifier:(id)a3 name:(id)a4 services:(id)a5 withCompletion:(id)a6;
- (void)relateWorkoutEffortSample:(id)a3 withWorkout:(id)a4 activity:(id)a5 completion:(id)a6;
- (void)removeHealthServicePairing:(id)a3 withCompletion:(id)a4;
- (void)requestAuthorizationToShareTypes:(NSSet *)typesToShare readTypes:(NSSet *)typesToRead completion:(void *)completion;
- (void)requestDatabaseAccessibilityAssertion:(id)a3 timeout:(double)a4 completion:(id)a5;
- (void)requestDatabaseAccessibilityAssertionForOwnerIdentifier:(id)a3 contextType:(int64_t)a4 completion:(id)a5;
- (void)requestPerObjectReadAuthorizationForType:(HKObjectType *)objectType predicate:(NSPredicate *)predicate completion:(void *)completion;
- (void)restoreEntitlement:(id)a3;
- (void)resume;
- (void)resumeWorkoutSession:(HKWorkoutSession *)workoutSession;
- (void)saveObject:(HKObject *)object withCompletion:(void *)completion;
- (void)saveObjects:(NSArray *)objects withCompletion:(void *)completion;
- (void)saveObjects:(id)a3 deleteObjects:(id)a4 associations:(id)a5 completion:(id)a6;
- (void)saveWorkoutZones:(id)a3 completion:(id)a4;
- (void)setAllHealthDataAccessForSiri:(int64_t)a3 completion:(id)a4;
- (void)setCanConnectToSystemMachService:(BOOL)a3;
- (void)setClinicalReadAuthorizationUsageDescriptionOverride:(id)a3;
- (void)setDaemonLaunchDarwinNotificationName:(id)a3;
- (void)setDebugIdentifier:(id)a3;
- (void)setProfileIdentifier:(id)a3;
- (void)setReadAuthorizationUsageDescriptionOverride:(id)a3;
- (void)setResearchStudyUsageDescriptionOverride:(id)a3;
- (void)setServerURL:(id)a3 forAssetType:(id)a4 completion:(id)a5;
- (void)setSourceBundle:(id)a3;
- (void)setSourceBundleIdentifier:(id)a3;
- (void)setUnitTest_handleExecuteQuery:(id)a3;
- (void)setUnitTest_presentAuthorizationWithSessionHandler:(id)a3;
- (void)setWorkoutSessionMirroringStartHandler:(void *)workoutSessionMirroringStartHandler;
- (void)setWriteAuthorizationUsageDescriptionOverride:(id)a3;
- (void)set_hkui_authorizationViewControllerPresenter:(id)a3;
- (void)splitTotalEnergy:(HKQuantity *)totalEnergy startDate:(NSDate *)startDate endDate:(NSDate *)endDate resultsHandler:(void *)resultsHandler;
- (void)startHealthServiceDiscovery:(id)a3 withHandler:(id)a4;
- (void)startHealthServiceSession:(id)a3 withHandler:(id)a4;
- (void)startWatchAppWithWorkoutConfiguration:(HKWorkoutConfiguration *)workoutConfiguration completion:(void *)completion;
- (void)startWorkoutSession:(HKWorkoutSession *)workoutSession;
- (void)stopQuery:(HKQuery *)query;
- (void)takeWorkoutBackgroundStartAssertionForApplicationIdentifier:(id)a3 completion:(id)a4;
- (void)unitTest_setApplicationSDKVersionToken:(unint64_t)a3;
- (void)unregisterPeripheralIdentifier:(id)a3 withCompletion:(id)a4;
- (void)unrelateWorkoutEffortSample:(id)a3 fromWorkout:(id)a4 activity:(id)a5 completion:(id)a6;
- (void)updateMedicalIDData:(id)a3;
- (void)updateMedicalIDData:(id)a3 completion:(id)a4;
@end

@implementation HKHealthStore

- (void)startHealthServiceDiscovery:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKHealthStore *)self healthServicesManager];
  [v8 startHealthServiceDiscovery:v7 withHandler:v6];
}

- (void)endHealthServiceDiscovery:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self healthServicesManager];
  [v5 endHealthServiceDiscovery:v4];
}

- (void)startHealthServiceSession:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKHealthStore *)self healthServicesManager];
  [v8 startHealthServiceSession:v7 withHandler:v6];
}

- (void)endHealthServiceSession:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self healthServicesManager];
  [v5 endHealthServiceSession:v4];
}

- (void)registerPeripheralIdentifier:(id)a3 name:(id)a4 services:(id)a5 withCompletion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(HKHealthStore *)self healthServicesManager];
  [v14 registerPeripheralIdentifier:v13 name:v12 services:v11 withCompletion:v10];
}

- (void)unregisterPeripheralIdentifier:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKHealthStore *)self healthServicesManager];
  [v8 unregisterPeripheralIdentifier:v7 withCompletion:v6];
}

- (void)healthServicePairingsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self healthServicesManager];
  [v5 healthServicePairingsWithHandler:v4];
}

- (void)healthPeripheralsWithFilter:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [(HKHealthStore *)self healthServicesManager];
  [v7 healthPeripheralsWithFilter:a3 handler:v6];
}

- (void)addHealthServicePairing:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKHealthStore *)self healthServicesManager];
  [v8 addHealthServicePairing:v7 withCompletion:v6];
}

- (void)removeHealthServicePairing:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKHealthStore *)self healthServicesManager];
  [v8 removeHealthServicePairing:v7 withCompletion:v6];
}

- (void)healthPeripheralsWithCustomProperties:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKHealthStore *)self healthServicesManager];
  [v8 healthPeripheralsWithCustomProperties:v7 withCompletion:v6];
}

- (void)getEnabledStatusForPeripheral:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKHealthStore *)self healthServicesManager];
  [v8 getEnabledStatusForPeripheral:v7 withCompletion:v6];
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
  v3 = [v2 features];
  v4 = [v3 sharedStoreXPC];

  return v4;
}

- (id)initForHKHealthStoreImplementation
{
  v3.receiver = self;
  v3.super_class = HKHealthStore;
  return [(HKHealthStore *)&v3 init];
}

- (HKHealthStore)initWithListenerEndpoint:(id)a3 debugIdentifier:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
    v9 = [MEMORY[0x1E696AF00] callStackSymbols];
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
            objc_enumerationMutation(v9);
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
        v11 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v11);
    }

    v7 = v35;
    v6 = v36;
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
    v18 = [v7 copy];
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
    if (!v6)
    {
      v25 = !+[HKHealthStore requireExplicitSystemMachServiceEnablement];
    }

    v17->_canConnectToSystemMachService = v25;
    v17->_isUsingSystemEndpoint = v6 == 0;
    v26 = HKCreateSerialDispatchQueue(v17, @"client");
    clientQueue = v17->_clientQueue;
    v17->_clientQueue = v26;

    v28 = HKCreateSerialDispatchQueue(v17, @"connection");
    connectionQueue = v17->_connectionQueue;
    v17->_connectionQueue = v28;

    if ([objc_opt_class() _useHKHealthStoreImplementation])
    {
      v30 = v6;
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
      v39 = v6;
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
  v3 = [v2 isAppleInternalInstall];

  if (v3)
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
      v5 = [MEMORY[0x1E696AF00] callStackSymbols];
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
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
              objc_enumerationMutation(v5);
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

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
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

- (void)_connectionQueue_setUpWithEndpoint:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_connectionQueue);
  if (+[_HKBehavior isDeviceSupported])
  {
    v5 = [_HKXPCConnection alloc];
    if (v4)
    {
      v6 = [(_HKXPCConnection *)v5 initWithListenerEndpoint:v4];
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

- (id)unitTest_replaceListenerEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unitTest_replaceListenerEndpoint:v4];
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
    v11 = v4;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIApplicationWillResignActiveNotification" object:0];
  [v3 removeObserver:self name:@"UIApplicationDidBecomeActiveNotification" object:0];

  v4.receiver = self;
  v4.super_class = HKHealthStore;
  [(HKHealthStore *)&v4 dealloc];
}

- (id)_implementationCreate:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_healthStoreImplementation;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
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

- (void)_setConfigurationPropertyUsingBlock:(id)a3 resumeRequired:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_resumed)
  {
    os_unfair_lock_unlock(&self->_lock);
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot configure HKHealthStore after it has been resumed"];
  }

  else
  {
    if (v4)
    {
      self->_resumeRequired = 1;
    }

    v7[2]();
    os_unfair_lock_lock(&self->_configurationLock);
    configuration = self->_configuration;
    self->_configuration = 0;

    os_unfair_lock_unlock(&self->_configurationLock);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)unitTest_setApplicationSDKVersionToken:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__HKHealthStore_unitTest_setApplicationSDKVersionToken___block_invoke;
  v3[3] = &unk_1E7378630;
  v3[4] = self;
  v3[5] = a3;
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

- (void)setProfileIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__HKHealthStore_setProfileIdentifier___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
    v5 = [v3 profileIdentifier];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_profileIdentifier;
    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (void)setSourceBundleIdentifier:(id)a3
{
  v4 = a3;
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
  v5 = v4;
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
    v5 = [v3 sourceBundleIdentifier];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_sourceBundleIdentifier;
    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (void)setSourceBundle:(id)a3
{
  v4 = a3;
  if (self->_healthStoreImplementation)
  {
    [HKHealthStore setSourceBundle:];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__HKHealthStore_setSourceBundle___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
    v5 = [v3 sourceBundle];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_sourceBundle;
    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (id)_sourceBundleOrDefaultBundle
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _sourceBundleOrDefaultBundle];
  }

  else
  {
    v6 = [(HKHealthStore *)self sourceBundle];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E696AAE8] mainBundle];
    }

    v5 = v8;
  }

  return v5;
}

- (void)setDebugIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__HKHealthStore_setDebugIdentifier___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:1];
}

- (NSString)debugIdentifier
{
  v3 = [(HKHealthStore *)self _implementationCreate:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 debugIdentifier];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_debugIdentifier;
    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (void)setCanConnectToSystemMachService:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__HKHealthStore_setCanConnectToSystemMachService___block_invoke;
  v3[3] = &unk_1E7378680;
  v3[4] = self;
  v4 = a3;
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
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 healthServicesManager];
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

    v5 = healthServicesManager;
    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (OS_dispatch_queue)clientQueue
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 clientQueue];
  }

  else
  {
    v5 = self->_clientQueue;
  }

  v6 = v5;

  return v6;
}

- (void)setUnitTest_handleExecuteQuery:(id)a3
{
  unitTest_handleExecuteQuery = a3;
  v5 = [(HKHealthStore *)self implementation];
  v7 = v5;
  if (v5)
  {
    [v5 setUnitTest_handleExecuteQuery:unitTest_handleExecuteQuery];
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
  v3 = [(HKHealthStore *)self implementation];
  if (v3)
  {
    v4 = v3;
    [v3 resume];
    v3 = v4;
  }
}

- (void)_discardServerProxiesForServer:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  serverProxy = self->_serverProxy;

  if (serverProxy == v4)
  {
    self->_serverProxy = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_connectionWithError:(id *)a3
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
        if (a3)
        {
          v8 = v6;
          *a3 = v7;
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
    [MEMORY[0x1E696ABC0] hk_assignError:a3 code:100 format:{@"invalid connection to %@", @"com.apple.healthd.server"}];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] hk_healthDataUnavailableError];
    v13 = v12;
    if (v12)
    {
      if (a3)
      {
        v14 = v12;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError(v12);
      }
    }
  }

LABEL_23:

  return v10;
}

- (id)_wrappedErrorHandler:(id)a3 proxy:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__HKHealthStore__wrappedErrorHandler_proxy___block_invoke;
  aBlock[3] = &unk_1E73786A8;
  aBlock[4] = self;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
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
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
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

- (void)_serverProxyWithHandler:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (!v8)
  {
    if (v6)
    {
      if (v7)
      {
LABEL_5:
        connectionQueue = self->_connectionQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__HKHealthStore__serverProxyWithHandler_errorHandler___block_invoke;
        block[3] = &unk_1E73786F8;
        block[4] = self;
        v12 = v7;
        v13 = v6;
        dispatch_async(connectionQueue, block);

        goto LABEL_6;
      }
    }

    else
    {
      [HKHealthStore _serverProxyWithHandler:errorHandler:];
      if (v7)
      {
        goto LABEL_5;
      }
    }

    [HKHealthStore _serverProxyWithHandler:errorHandler:];
    goto LABEL_5;
  }

  [v8 _serverProxyWithHandler:v6 errorHandler:v7];
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

- (id)_synchronousServerProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _synchronousServerProxyWithErrorHandler:v4];
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
    v9 = [(HKHealthStore *)self _wrappedErrorHandler:v4 proxy:v20[5]];
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
        v13 = [(HKHealthStore *)self healthStoreConfiguration];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __57__HKHealthStore__synchronousServerProxyWithErrorHandler___block_invoke_2;
        v15[3] = &unk_1E7378748;
        v15[4] = self;
        v17 = &v19;
        v16 = v9;
        [v12 remote_serverForConfiguration:v13 completion:v15];
        v7 = v20[5];
      }

      else
      {
        v4[2](v4, v32[5]);
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

- (void)fetchPluginServiceEndpointForIdentifier:(id)a3 endpointHandler:(id)a4 errorHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (!v11)
  {
    if (v8)
    {
      if (v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "pluginIdentifier"}];
      if (v9)
      {
LABEL_5:
        if (v10)
        {
LABEL_6:
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __86__HKHealthStore_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke;
          aBlock[3] = &unk_1E73786A8;
          v13 = v8;
          v21 = v13;
          v22 = self;
          v23 = v10;
          v14 = _Block_copy(aBlock);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __86__HKHealthStore_fetchPluginServiceEndpointForIdentifier_endpointHandler_errorHandler___block_invoke_2;
          v15[3] = &unk_1E7378798;
          v16 = v13;
          v17 = self;
          v18 = v9;
          v10 = v14;
          v19 = v10;
          [(HKHealthStore *)self _serverProxyWithHandler:v15 errorHandler:v10];

          goto LABEL_7;
        }

LABEL_10:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "errorHandler"}];
        goto LABEL_6;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "endpointHandler"}];
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  [v11 fetchPluginServiceEndpointForIdentifier:v8 endpointHandler:v9 errorHandler:v10];
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

- (id)pluginServiceEndpointForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 pluginServiceEndpointForIdentifier:v6 error:a4];
  }

  else
  {
    if (!v6)
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
    v10 = v6;
    v24 = v10;
    v25 = &v26;
    v11 = [(HKHealthStore *)self _synchronousServerProxyWithErrorHandler:v23];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__HKHealthStore_pluginServiceEndpointForIdentifier_error___block_invoke_376;
    v17[3] = &unk_1E73787E8;
    v21 = &v32;
    v18 = v10;
    v19 = self;
    v12 = v11;
    v20 = v12;
    v22 = &v26;
    [v12 remote_fetchPluginServiceEndpointWithIdentifier:v18 completion:v17];
    v13 = v27[5];
    v14 = v13;
    if (v13)
    {
      if (a4)
      {
        v15 = v13;
        *a4 = v14;
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

- (void)fetchTaskServerEndpointForIdentifier:(id)a3 pluginURL:(id)a4 taskUUID:(id)a5 instanceUUID:(id)a6 configuration:(id)a7 endpointHandler:(id)a8 errorHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [(HKHealthStore *)self implementation];
  v23 = v22;
  if (!v22)
  {
    if (v15)
    {
      if (v20)
      {
        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "taskIdentifier"}];
      if (v20)
      {
LABEL_5:
        if (v21)
        {
LABEL_6:
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __129__HKHealthStore_fetchTaskServerEndpointForIdentifier_pluginURL_taskUUID_instanceUUID_configuration_endpointHandler_errorHandler___block_invoke;
          v24[3] = &unk_1E7378810;
          v25 = v15;
          v26 = v16;
          v27 = v17;
          v28 = v18;
          v29 = v19;
          v30 = self;
          v31 = v20;
          v32 = v21;
          [(HKHealthStore *)self _serverProxyWithHandler:v24 errorHandler:v32];

          goto LABEL_7;
        }

LABEL_10:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "errorHandler"}];
        goto LABEL_6;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "endpointHandler"}];
    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  [v22 fetchTaskServerEndpointForIdentifier:v15 pluginURL:v16 taskUUID:v17 instanceUUID:v18 configuration:v19 endpointHandler:v20 errorHandler:v21];
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

- (id)taskServerEndpointForIdentifier:(id)a3 pluginURL:(id)a4 taskUUID:(id)a5 instanceUUID:(id)a6 configuration:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [(HKHealthStore *)self implementation];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 taskServerEndpointForIdentifier:v14 pluginURL:v15 taskUUID:v16 instanceUUID:v17 configuration:v18 error:a8];
  }

  else
  {
    if (!v14)
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
    v29 = v14;
    v30 = self;
    v23 = v22;
    v31 = v23;
    v33 = &v35;
    [v23 remote_createTaskServerEndpointForIdentifier:v29 pluginURL:v15 taskUUID:v16 instanceUUID:v17 configuration:v18 completion:v28];
    v24 = v36[5];
    v25 = v24;
    if (v24)
    {
      if (a8)
      {
        v26 = v24;
        *a8 = v25;
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

- (void)deleteAllSamplesWithTypes:(id)a3 sourceBundleIdentifier:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(HKHealthStore *)self implementation];
  v14 = v13;
  if (v13)
  {
    [v13 deleteAllSamplesWithTypes:v10 sourceBundleIdentifier:v11 options:a5 completion:v12];
  }

  else
  {
    if (!v10)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sampleTypes"}];
    }

    if (![v10 count])
    {
      [HKHealthStore deleteAllSamplesWithTypes:sourceBundleIdentifier:options:completion:];
    }

    v15 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v12];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__HKHealthStore_deleteAllSamplesWithTypes_sourceBundleIdentifier_options_completion___block_invoke;
    v18[3] = &unk_1E7378860;
    v19 = v10;
    v20 = v11;
    v22 = a5;
    v21 = v15;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __85__HKHealthStore_deleteAllSamplesWithTypes_sourceBundleIdentifier_options_completion___block_invoke_2;
    v16[3] = &unk_1E7376960;
    v12 = v21;
    v17 = v12;
    [(HKHealthStore *)self _serverProxyWithHandler:v18 errorHandler:v16];
  }
}

- (void)deleteObjectsWithUUIDs:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HKHealthStore *)self implementation];
  v11 = v10;
  if (v10)
  {
    [v10 deleteObjectsWithUUIDs:v8 options:a4 completion:v9];
  }

  else
  {
    if (!v8)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "uuids"}];
    }

    v12 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v9];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__HKHealthStore_deleteObjectsWithUUIDs_options_completion___block_invoke;
    v15[3] = &unk_1E7378888;
    v16 = v8;
    v18 = a4;
    v17 = v12;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__HKHealthStore_deleteObjectsWithUUIDs_options_completion___block_invoke_2;
    v13[3] = &unk_1E7376960;
    v9 = v17;
    v14 = v9;
    [(HKHealthStore *)self _serverProxyWithHandler:v15 errorHandler:v13];
  }
}

- (void)deleteClientSourceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 deleteClientSourceWithCompletion:v4];
  }

  else
  {
    v7 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v4];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__HKHealthStore_deleteClientSourceWithCompletion___block_invoke;
    v10[3] = &unk_1E73788B0;
    v11 = v7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__HKHealthStore_deleteClientSourceWithCompletion___block_invoke_2;
    v8[3] = &unk_1E7376960;
    v4 = v11;
    v9 = v4;
    [(HKHealthStore *)self _serverProxyWithHandler:v10 errorHandler:v8];
  }
}

- (void)associateSampleUUIDs:(id)a3 withSampleUUID:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (v11)
  {
    [v11 associateSampleUUIDs:v8 withSampleUUID:v9 completion:v10];
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      *buf = 134218242;
      v25 = [v8 count];
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&dword_19197B000, v14, OS_LOG_TYPE_INFO, "Associating %llu samples to sample %{public}@", buf, 0x16u);
    }

    v15 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v10];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__HKHealthStore_associateSampleUUIDs_withSampleUUID_completion___block_invoke;
    v20[3] = &unk_1E73788D8;
    v21 = v8;
    v22 = v9;
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

- (void)saveObjects:(id)a3 deleteObjects:(id)a4 associations:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(HKHealthStore *)self implementation];
  v16 = v15;
  if (v15)
  {
    [v15 saveObjects:v11 deleteObjects:v12 associations:v13 completion:v14];
    v17 = v14;
  }

  else
  {
    v17 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v14];

    if ([v11 count] <= 0xC8 && objc_msgSend(v12, "count") <= 0xC8 && objc_msgSend(v13, "count") < 0xC9)
    {
      v28 = 0;
      v19 = [(HKHealthStore *)self _prepareObjectsForSaving:v11 errorOut:&v28];
      v20 = v28;
      if (v19)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __67__HKHealthStore_saveObjects_deleteObjects_associations_completion___block_invoke;
        v23[3] = &unk_1E7378900;
        v24 = v11;
        v25 = v12;
        v26 = v13;
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
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (!v11)
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

  [v11 recalibrateEstimatesForSampleType:v8 atDate:v9 completion:v10];
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

- (void)clientRemote_presentRecalibrateEstimatesRequestWithRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_HKBehavior sharedBehavior];
  v9 = [v8 isiPad];

  if (v9)
  {
    v10 = [MEMORY[0x1E696ABC0] hk_error:2 description:@"Estimate recalibration is not supported on this device."];
    v7[2](v7, 0, v10);
  }

  else
  {
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__HKHealthStore_clientRemote_presentRecalibrateEstimatesRequestWithRecord_completion___block_invoke;
    block[3] = &unk_1E7376618;
    v14 = v7;
    block[4] = self;
    v13 = v6;
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
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 authorizationStatusForType:v4];
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
  v11 = [(HKHealthStore *)self implementation];
  if (v11)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __83__HKHealthStore_getRequestStatusForAuthorizationToShareTypes_readTypes_completion___block_invoke;
    v23[3] = &unk_1E73789C8;
    v12 = v10;
    v23[4] = self;
    v24 = v12;
    [v11 getRequestStatusForAuthorizationToShareTypes:v8 readTypes:v9 completion:v23];
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
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (v11)
  {
    [v11 requestAuthorizationToShareTypes:v10 readTypes:v9 completion:v8];
  }

  else
  {
    [(HKHealthStore *)self requestAuthorizationToShareTypes:v10 readTypes:v9 shouldPrompt:1 completion:v8];
  }
}

- (void)_validatePurposeStringsForObjectType:(id)a3
{
  v5 = a3;
  v4 = [(HKHealthStore *)self _clientReadAuthorizationUsageDescription];
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"NSHealthShareUsageDescription must be set in the app's Info.plist in order to request read authorization for the following types: %@", v5}];
  }

  if (HKProgramSDKAtLeast() && ([v4 hk_isValidPurposeString] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The string %@ is an invalid value for NSHealthShareUsageDescription", v4}];
  }
}

- (void)requestPerObjectReadAuthorizationForType:(HKObjectType *)objectType predicate:(NSPredicate *)predicate completion:(void *)completion
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = objectType;
  v9 = predicate;
  v10 = completion;
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (v11)
  {
    [v11 requestPerObjectReadAuthorizationForType:v8 predicate:v9 completion:v10];
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
    v15 = [v14 isAppleWatch];

    if (v15)
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
      v31 = self;
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

- (void)_validateAuthorizationRequestWithShareTypes:(id)a3 readTypes:(id)a4
{
  v7 = a4;
  v6 = a3;
  if (![v6 count] && !objc_msgSend(v7, "count"))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must request authorization for at least one data type"];
  }

  [(HKHealthStore *)self _throwIfClinicalTypesRequestedToShare:v6];
  [(HKHealthStore *)self _throwIfParentTypeNotRequestedForSharing:1 types:v6];
  [(HKHealthStore *)self _throwIfParentTypeNotRequestedForSharing:0 types:v7];
  [(HKHealthStore *)self _throwIfAuthorizationDisallowedForSharing:1 types:v6];

  [(HKHealthStore *)self _throwIfAuthorizationDisallowedForSharing:0 types:v7];
  [(HKHealthStore *)self _throwIfUsingIncorrectAuthorizationRequestType:v7];
  [(HKHealthStore *)self _validateAuthorizationRequiredTypes];
}

- (id)_typesWithBothBloodPressureIfNeeded:(id)a3
{
  v3 = a3;
  v4 = [HKObjectType dataTypeWithCode:16];
  v5 = [HKObjectType dataTypeWithCode:17];
  v6 = [v3 containsObject:v4];
  v7 = [v3 containsObject:v5];
  if (v6 == v7)
  {
    v10 = v3;
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

    v10 = [MEMORY[0x1E695DFA8] setWithSet:v3];
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

  v5 = [(HKHealthStore *)self _sourceBundleOrDefaultBundle];
  v6 = [v5 objectForInfoDictionaryKey:@"NSHealthRequiredReadAuthorizationTypeIdentifiers"];

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

- (void)_validatePurposeStringsForSharingTypes:(id)a3 readingTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v12 = [v8 typesForWriteAuthorizationOverride];
  v13 = [v12 count];

  v14 = [v8 typesForReadAuthorizationOverride];
  v15 = [v14 count];

  v16 = [v8 hasEntitlement:@"com.apple.private.healthkit.source.research-study"];
  if ((v11 & 1) == 0 && !v13 && !v15)
  {
    v17 = v16;
    [(HKHealthStore *)self _validateClinicalHealthRecordsPurposeStringsForSharingTypes:v6 readingTypes:v7];
    [(HKHealthStore *)self _validateHealthDataPurposeStringsForSharingTypes:v6 readingTypes:v7 isResearchStudy:v17];
  }
}

- (NSString)writeAuthorizationUsageDescriptionOverride
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 writeAuthorizationUsageDescriptionOverride];
  }

  else
  {
    v5 = self->_writeAuthorizationUsageDescriptionOverride;
  }

  v6 = v5;

  return v6;
}

- (void)setWriteAuthorizationUsageDescriptionOverride:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__HKHealthStore_setWriteAuthorizationUsageDescriptionOverride___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:0];
}

- (NSString)readAuthorizationUsageDescriptionOverride
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 readAuthorizationUsageDescriptionOverride];
  }

  else
  {
    v5 = self->_readAuthorizationUsageDescriptionOverride;
  }

  v6 = v5;

  return v6;
}

- (void)setReadAuthorizationUsageDescriptionOverride:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__HKHealthStore_setReadAuthorizationUsageDescriptionOverride___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:0];
}

- (NSString)clinicalReadAuthorizationUsageDescriptionOverride
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 clinicalReadAuthorizationUsageDescriptionOverride];
  }

  else
  {
    v5 = self->_clinicalReadAuthorizationUsageDescriptionOverride;
  }

  v6 = v5;

  return v6;
}

- (void)setClinicalReadAuthorizationUsageDescriptionOverride:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__HKHealthStore_setClinicalReadAuthorizationUsageDescriptionOverride___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:0];
}

- (NSString)researchStudyUsageDescriptionOverride
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 researchStudyUsageDescriptionOverride];
  }

  else
  {
    v5 = self->_researchStudyUsageDescriptionOverride;
  }

  v6 = v5;

  return v6;
}

- (void)setResearchStudyUsageDescriptionOverride:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__HKHealthStore_setResearchStudyUsageDescriptionOverride___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:0];
}

- (NSString)daemonLaunchDarwinNotificationName
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 daemonLaunchDarwinNotificationName];
  }

  else
  {
    v5 = self->_daemonLaunchDarwinNotificationName;
  }

  v6 = v5;

  return v6;
}

- (void)setDaemonLaunchDarwinNotificationName:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__HKHealthStore_setDaemonLaunchDarwinNotificationName___block_invoke;
  v6[3] = &unk_1E7378400;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKHealthStore *)self _setConfigurationPropertyUsingBlock:v6 resumeRequired:0];
}

- (id)_clientWriteAuthorizationUsageDescription
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _clientWriteAuthorizationUsageDescription];
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  writeAuthorizationUsageDescriptionOverride = self->_writeAuthorizationUsageDescriptionOverride;
  if (writeAuthorizationUsageDescriptionOverride)
  {
    v5 = writeAuthorizationUsageDescriptionOverride;
    goto LABEL_5;
  }

  v9 = [(HKHealthStore *)self _sourceBundleOrDefaultBundle];
  v7 = [v9 hk_localizedWriteAuthorizationUsageDescription];

LABEL_6:

  return v7;
}

- (id)_clientReadAuthorizationUsageDescription
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _clientReadAuthorizationUsageDescription];
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  readAuthorizationUsageDescriptionOverride = self->_readAuthorizationUsageDescriptionOverride;
  if (readAuthorizationUsageDescriptionOverride)
  {
    v5 = readAuthorizationUsageDescriptionOverride;
    goto LABEL_5;
  }

  v9 = [(HKHealthStore *)self _sourceBundleOrDefaultBundle];
  v7 = [v9 hk_localizedReadAuthorizationUsageDescription];

LABEL_6:

  return v7;
}

- (id)_clientClinicalReadAuthorizationUsageDescription
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _clientClinicalReadAuthorizationUsageDescription];
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  clinicalReadAuthorizationUsageDescriptionOverride = self->_clinicalReadAuthorizationUsageDescriptionOverride;
  if (clinicalReadAuthorizationUsageDescriptionOverride)
  {
    v5 = clinicalReadAuthorizationUsageDescriptionOverride;
    goto LABEL_5;
  }

  v9 = [(HKHealthStore *)self _sourceBundleOrDefaultBundle];
  v7 = [v9 hk_localizedClinicalReadAuthorizationUsageDescription];

LABEL_6:

  return v7;
}

- (id)_researchStudyUsageDescription
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _researchStudyUsageDescription];
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  researchStudyUsageDescriptionOverride = self->_researchStudyUsageDescriptionOverride;
  if (researchStudyUsageDescriptionOverride)
  {
    v5 = researchStudyUsageDescriptionOverride;
    goto LABEL_5;
  }

  v9 = [(HKHealthStore *)self _sourceBundleOrDefaultBundle];
  v7 = [v9 hk_localizedResearchStudyUsageDescription];

LABEL_6:

  return v7;
}

- (void)_validateClinicalHealthRecordsPurposeStringsForSharingTypes:(id)a3 readingTypes:(id)a4
{
  v10 = [HKObjectType _clinicalTypesFromTypes:a4];
  v5 = [(HKHealthStore *)self _clientClinicalReadAuthorizationUsageDescription];

  if (!v5 && [v10 count])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = [v10 allObjects];
    v9 = [v8 componentsJoinedByString:{@", "}];
    [v6 raise:v7 format:{@"NSHealthClinicalHealthRecordsShareUsageDescription must be set in the app's Info.plist in order to request read authorization for the following types: %@", v9}];
  }
}

- (void)_validateHealthDataPurposeStringsForSharingTypes:(id)a3 readingTypes:(id)a4 isResearchStudy:(BOOL)a5
{
  v5 = a5;
  v23 = a3;
  v8 = a4;
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

      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if (!v5)
      {
        goto LABEL_12;
      }
    }

    v11 = [(HKHealthStore *)self _researchStudyUsageDescription];
    if ([v11 hk_isValidPurposeString])
    {
      v12 = v8;
      v13 = v23;
      goto LABEL_25;
    }

    if (v11)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The string %@ is an invalid value for NSHealthResearchStudyUsageDescription", v11}];
    }

LABEL_12:
    v13 = [HKObjectType _nonClinicalTypesFromTypes:v23];

    if ([v13 count])
    {
      v14 = [(HKHealthStore *)self _clientWriteAuthorizationUsageDescription];
      if (!v14)
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = [v13 allObjects];
        v18 = [v17 componentsJoinedByString:{@", "}];
        [v15 raise:v16 format:{@"NSHealthUpdateUsageDescription must be set in the app's Info.plist in order to request write authorization for the following types: %@", v18}];
      }

      if (HKProgramSDKAtLeast() && ([v14 hk_isValidPurposeString] & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The string %@ is an invalid value for NSHealthUpdateUsageDescription", v14}];
      }
    }

    v12 = [HKObjectType _nonClinicalTypesFromTypes:v8];

    if (![v12 count])
    {
      goto LABEL_26;
    }

    v11 = [(HKHealthStore *)self _clientReadAuthorizationUsageDescription];
    if (!v11)
    {
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = [v12 allObjects];
      v22 = [v21 componentsJoinedByString:{@", "}];
      [v19 raise:v20 format:{@"NSHealthShareUsageDescription must be set in the app's Info.plist in order to request read authorization for the following types: %@", v22}];
    }

    if (HKProgramSDKAtLeast() && ([v11 hk_isValidPurposeString] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The string %@ is an invalid value for NSHealthShareUsageDescription", v11}];
    }

LABEL_25:

LABEL_26:
    v8 = v12;
    v23 = v13;
  }

LABEL_27:
}

- (void)handleAuthorizationForExtensionWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 handleAuthorizationForExtensionWithCompletion:v4];
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

- (void)_throwIfAuthorizationDisallowedForSharing:(BOOL)a3 types:(id)a4
{
  v4 = a3;
  v5 = a4;
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v19 = 0;
    v7 = [_HKEntitlements entitlementsForCurrentTaskWithError:&v19];
    v8 = v19;
    if (!v7)
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D940];
      if (v4)
      {
        v11 = "share";
      }

      else
      {
        v11 = "read";
      }

      v12 = [v6 allObjects];
      v13 = [v12 componentsJoinedByString:{@", "}];
      [v9 raise:v10 format:{@"Failed to retrieve local task entitlements when determining authorization access for %s for %@ : %@", v11, v13, v8}];
    }

    if (v4)
    {
      if (![HKObjectType _allowAuthorizationForSharingWithTypes:v5 entitlements:v7 disallowedTypes:v6])
      {
        v14 = "share";
LABEL_12:
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = [v6 allObjects];
        v18 = [v17 componentsJoinedByString:{@", "}];
        [v15 raise:v16 format:{@"Authorization to %s the following types is disallowed: %@", v14, v18}];
      }
    }

    else if (![HKObjectType _allowAuthorizationForReadingWithTypes:v5 entitlements:v7 disallowedTypes:v6])
    {
      v14 = "read";
      goto LABEL_12;
    }
  }
}

- (void)_throwIfClinicalTypesRequestedToShare:(id)a3
{
  v7 = [HKObjectType _clinicalTypesFromTypes:a3];
  if ([v7 count])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    v5 = [v7 allObjects];
    v6 = [v5 componentsJoinedByString:{@", "}];
    [v3 raise:v4 format:{@"Authorization to share the following types is disallowed: %@", v6}];
  }
}

- (void)_throwIfParentTypeNotRequestedForSharing:(BOOL)a3 types:(id)a4
{
  v4 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = *MEMORY[0x1E695D940];
    if (v4)
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
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 parentType];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 parentType];
          v16 = [v5 containsObject:v15];

          if ((v16 & 1) == 0)
          {
            v17 = MEMORY[0x1E695DF30];
            v18 = [v12 parentType];
            [v17 raise:v9 format:{@"Authorization for %@ should also be requested when requesting authorization to %s %@", v18, v10, v12}];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_throwIfPerObjectReadAuthorizationNotSupportedForType:(id)a3
{
  v3 = a3;
  if (!HKDataTypeAllowsPerObjectAuthorizationAPI([v3 code]))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Per-Object authorization to read %@ is disallowed", v3}];
  }
}

- (void)_throwIfUsingIncorrectAuthorizationRequestType:(id)a3
{
  v6 = [a3 hk_filter:&__block_literal_global_471];
  if ([v6 count])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    v5 = [v6 allObjects];
    [v3 raise:v4 format:{@"Authorization to read the following type(s) using this API is disallowed: %@", v5}];
  }
}

BOOL __64__HKHealthStore__throwIfUsingIncorrectAuthorizationRequestType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 code];

  return HKDataTypeAllowsPerObjectAuthorizationAPI(v2);
}

- (void)beginAuthorizationDelegateTransactionWithSessionIdentifier:(id)a3 sourceHandler:(id)a4 errorHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (!v11)
  {
    if (v8)
    {
      if (v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sessionIdentifier"}];
      if (v9)
      {
LABEL_5:
        if (v10)
        {
LABEL_6:
          clientQueue = self->_clientQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __103__HKHealthStore_beginAuthorizationDelegateTransactionWithSessionIdentifier_sourceHandler_errorHandler___block_invoke;
          block[3] = &unk_1E7378B20;
          block[4] = self;
          v16 = v10;
          v17 = v9;
          v15 = v8;
          dispatch_async(clientQueue, block);

          goto LABEL_7;
        }

LABEL_10:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "errorHandler"}];
        goto LABEL_6;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "sourceHandler"}];
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  [v11 beginAuthorizationDelegateTransactionWithSessionIdentifier:v8 sourceHandler:v9 errorHandler:v10];
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

- (void)endAuthorizationDelegateTransactionWithSessionIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (v8)
  {
    [v8 endAuthorizationDelegateTransactionWithSessionIdentifier:v6 error:v7];
  }

  else
  {
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__HKHealthStore_endAuthorizationDelegateTransactionWithSessionIdentifier_error___block_invoke;
    block[3] = &unk_1E7376640;
    block[4] = self;
    v12 = v6;
    v13 = v7;
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

- (void)_clientQueue_invokeAuthorizationDelegateTransactionErrorHandlerWithError:(id)a3
{
  authorizationDelegateTransactionErrorHandler = self->_authorizationDelegateTransactionErrorHandler;
  if (authorizationDelegateTransactionErrorHandler)
  {
    authorizationDelegateTransactionErrorHandler[2](authorizationDelegateTransactionErrorHandler, a3);
    v5 = self->_authorizationDelegateTransactionErrorHandler;
    self->_authorizationDelegateTransactionErrorHandler = 0;
  }
}

- (id)_clinicalAuthorizationPresentationRequestForRecord:(id)a3
{
  v4 = [a3 typesRequiringReadAuthorization];
  v5 = [HKObjectType _clinicalTypesFromTypes:v4];

  if ([v5 count])
  {
    v6 = objc_alloc_init(HKAuthorizationPresentationRequest);
    [(HKAuthorizationPresentationRequest *)v6 setType:0];
    v7 = [(HKHealthStore *)self _clientClinicalReadAuthorizationUsageDescription];
    [(HKAuthorizationPresentationRequest *)v6 setReadUsageDescription:v7];

    v8 = [(HKHealthStore *)self _researchStudyUsageDescription];
    [(HKAuthorizationPresentationRequest *)v6 setResearchStudyUsageDescription:v8];

    [(HKAuthorizationPresentationRequest *)v6 setTypesRequiringReadAuthorization:v5];
    [(HKAuthorizationPresentationRequest *)v6 setDismissWhenBackgrounded:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_healthDataAuthorizationPresentationRequestForRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 typesRequiringReadAuthorization];
  v6 = [HKObjectType _nonClinicalTypesFromTypes:v5];

  v7 = [v4 typesRequiringShareAuthorization];

  v8 = [HKObjectType _nonClinicalTypesFromTypes:v7];

  if ([v6 count] || objc_msgSend(v8, "count"))
  {
    v9 = objc_alloc_init(HKAuthorizationPresentationRequest);
    [(HKAuthorizationPresentationRequest *)v9 setType:1];
    v10 = [(HKHealthStore *)self _clientReadAuthorizationUsageDescription];
    [(HKAuthorizationPresentationRequest *)v9 setReadUsageDescription:v10];

    v11 = [(HKHealthStore *)self _clientWriteAuthorizationUsageDescription];
    [(HKAuthorizationPresentationRequest *)v9 setShareUsageDescription:v11];

    v12 = [(HKHealthStore *)self _researchStudyUsageDescription];
    [(HKAuthorizationPresentationRequest *)v9 setResearchStudyUsageDescription:v12];

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

- (id)_perObjectAuthorizationPresentationRequestForSession:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKAuthorizationPresentationRequest);
  [(HKAuthorizationPresentationRequest *)v5 setType:2];
  v6 = [(HKHealthStore *)self _clientReadAuthorizationUsageDescription];
  [(HKAuthorizationPresentationRequest *)v5 setReadUsageDescription:v6];

  v7 = [v4 objectType];

  if (v7)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    [(HKAuthorizationPresentationRequest *)v5 setTypesRequiringReadAuthorization:v8];
  }

  [(HKAuthorizationPresentationRequest *)v5 setDismissWhenBackgrounded:0];

  return v5;
}

- (void)clientRemote_presentAuthorizationWithRequestRecord:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__HKHealthStore_clientRemote_presentAuthorizationWithRequestRecord_completion___block_invoke;
  aBlock[3] = &unk_1E7376910;
  v21 = v8;
  v9 = _Block_copy(aBlock);
  if (v7)
  {
    v10 = +[_HKBehavior sharedBehavior];
    v11 = [v10 isAppleWatch];

    if (!_HKCurrentTaskIsAppExtension() || (v11 & 1) != 0)
    {
      clientQueue = self->_clientQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__HKHealthStore_clientRemote_presentAuthorizationWithRequestRecord_completion___block_invoke_2;
      v17[3] = &unk_1E73766C8;
      v17[4] = self;
      v18 = v7;
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

- (void)clientRemote_presentAuthorizationWithSession:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  clientQueue = self->_clientQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__HKHealthStore_clientRemote_presentAuthorizationWithSession_completion___block_invoke;
  v12[3] = &unk_1E7378B70;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
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

- (void)set_hkui_authorizationViewControllerPresenter:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 set_hkui_authorizationViewControllerPresenter:v4];
  }

  else
  {
    objc_storeWeak(&self->__hkui_authorizationViewControllerPresenter, v4);
  }
}

- (void)setUnitTest_presentAuthorizationWithSessionHandler:(id)a3
{
  unitTest_presentAuthorizationWithSessionHandler = a3;
  v5 = [(HKHealthStore *)self implementation];
  v7 = v5;
  if (v5)
  {
    [v5 setUnitTest_presentAuthorizationWithSessionHandler:unitTest_presentAuthorizationWithSessionHandler];
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
  v8 = [(HKHealthStore *)self implementation];
  if (v8)
  {
    v13[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

    v10 = v8;
  }

  else
  {
    v12 = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];

    v10 = self;
  }

  [(HKHealthStore *)v10 saveObjects:v9 withCompletion:v6];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)saveObjects:(NSArray *)objects withCompletion:(void *)completion
{
  v9 = objects;
  v6 = completion;
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    [v7 saveObjects:v9 withCompletion:v6];
  }

  else
  {
    [(HKHealthStore *)self _saveObjects:v9 atomically:[(NSArray *)v9 count]< 0x5DC skipInsertionFilter:0 completion:v6];
  }
}

- (void)_saveObjects:(id)a3 atomically:(BOOL)a4 skipInsertionFilter:(BOOL)a5 completion:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  _HKInitializeLogging();
  v12 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    *buf = 134217984;
    v28 = [v10 count];
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "Saving %lu objects", buf, 0xCu);
  }

  v14 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v11];

  v26 = 0;
  v15 = [(HKHealthStore *)self _prepareObjectsForSaving:v10 errorOut:&v26];
  v16 = v26;
  if (v15)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__HKHealthStore__saveObjects_atomically_skipInsertionFilter_completion___block_invoke;
    v20[3] = &unk_1E7378B98;
    v24 = a4;
    v21 = v10;
    v25 = a5;
    v22 = self;
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

- (void)deleteObject:(id)a3 options:(unint64_t)a4 withCompletion:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a3;
  v11 = [v8 arrayWithObjects:&v13 count:1];

  [(HKHealthStore *)self _deleteObjects:v11 options:a4 completion:v9, v13, v14];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_deleteObjects:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(HKHealthStore *)self implementation];
  if (v10)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __51__HKHealthStore__deleteObjects_options_completion___block_invoke;
    v23[3] = &unk_1E7378BE8;
    v11 = &v24;
    v12 = v9;
    v23[4] = self;
    v24 = v12;
    [v10 _deleteObjects:v8 options:a4 completion:v23];
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      *buf = 134218240;
      v26 = [v8 count];
      v27 = 2048;
      v28 = a4;
      _os_log_impl(&dword_19197B000, v14, OS_LOG_TYPE_DEFAULT, "Deleting %lu objects, options %lu", buf, 0x16u);
    }

    v15 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v9];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__HKHealthStore__deleteObjects_options_completion___block_invoke_507;
    v19[3] = &unk_1E7378888;
    v11 = &v20;
    v20 = v8;
    v22 = a4;
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

- (void)deleteObjectsOfType:(id)a3 predicate:(id)a4 options:(unint64_t)a5 withCompletion:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(HKHealthStore *)self implementation];
  if (!v13)
  {
    _HKInitializeLogging();
    v15 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v30 = v10;
      v31 = 2048;
      v32 = a5;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_DEFAULT, "Deleting objects of type %@ with options %lu, predicate %@", buf, 0x20u);
    }

    if (!HKProgramSDKAtLeast())
    {
      goto LABEL_8;
    }

    if (v10)
    {
      if (v11)
      {
LABEL_8:
        v16 = [MEMORY[0x1E695DFD8] setWithObject:v10];
        v17 = [v11 hk_filterRepresentationForDataTypes:v16];

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __70__HKHealthStore_deleteObjectsOfType_predicate_options_withCompletion___block_invoke_512;
        v21[3] = &unk_1E7378C88;
        v22 = v10;
        v23 = v17;
        v26 = a5;
        v24 = self;
        v25 = v12;
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
      if (v11)
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
  v28 = v12;
  [v13 deleteObjectsOfType:v10 predicate:v11 options:a5 withCompletion:v27];
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

- (void)_addQuery:(id)a3
{
  v4 = a3;
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

  [(NSMutableSet *)queries addObject:v4];
  [(NSMutableSet *)self->_pendingActivationQueries addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeQuery:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_queries removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeQueryFromPendingActivationQueries:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_pendingActivationQueries removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)executeQuery:(id)a3 activationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (v8)
  {
    [v8 executeQuery:v6 queue:self->_clientQueue activationHandler:v7];
  }

  else
  {
    if (!v6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "query"}];
    }

    Current = CFAbsoluteTimeGetCurrent();
    unitTest_handleExecuteQuery = self->_unitTest_handleExecuteQuery;
    if (unitTest_handleExecuteQuery)
    {
      unitTest_handleExecuteQuery[2](unitTest_handleExecuteQuery, v6);
    }

    [(HKHealthStore *)self _addQuery:v6];
    clientQueue = self->_clientQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__HKHealthStore_executeQuery_activationHandler___block_invoke;
    v14[3] = &unk_1E7378928;
    v14[4] = self;
    v13 = v6;
    v15 = v13;
    v16 = v7;
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
  v4 = [(HKHealthStore *)self implementation];
  v5 = v4;
  if (v4)
  {
    [v4 stopQuery:v6];
  }

  else if (v6)
  {
    [(HKHealthStore *)self _removeQuery:v6];
    [(HKQuery *)v6 deactivate];
  }
}

- (NSSet)_queries
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _queries];
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

    v5 = v7;
  }

  return v5;
}

- (NSSet)_activeQueries
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _activeQueries];
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

    v5 = v8;
  }

  return v5;
}

- (void)_dateOfBirthWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 _dateOfBirthWithCompletion:v4];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__HKHealthStore__dateOfBirthWithCompletion___block_invoke;
    v8[3] = &unk_1E7378CB0;
    v9 = v4;
    [(HKHealthStore *)self _characteristicForDataType:v7 withCompletion:v8];
  }
}

- (NSDate)dateOfBirthWithError:(NSError *)error
{
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 dateOfBirthWithError:error];
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
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 dateOfBirthComponentsWithError:error];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:error];
  }

  return v7;
}

- (BOOL)_setDateOfBirthComponents:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setDateOfBirthComponents:v6 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
    v9 = [(HKHealthStore *)self _setCharacteristic:v6 forDataType:v10 error:a4];
  }

  return v9;
}

- (void)_biologicalSexWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 _biologicalSexWithCompletion:v4];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__HKHealthStore__biologicalSexWithCompletion___block_invoke;
    v8[3] = &unk_1E7378978;
    v9 = v4;
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
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 biologicalSexWithError:error];
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
        v13 = [v9 integerValue];
      }

      else
      {
        v13 = 0;
      }

      v7 = [[HKBiologicalSexObject alloc] _initWithBiologicalSex:v13];
    }
  }

  return v7;
}

- (BOOL)_setBiologicalSex:(int64_t)a3 error:(id *)a4
{
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setBiologicalSex:a3 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBiologicalSex"];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:a4];
  }

  return v9;
}

- (void)_bloodTypeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 _bloodTypeWithCompletion:v4];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBloodType"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__HKHealthStore__bloodTypeWithCompletion___block_invoke;
    v8[3] = &unk_1E7378978;
    v9 = v4;
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
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 bloodTypeWithError:error];
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
        v13 = [v9 integerValue];
      }

      else
      {
        v13 = 0;
      }

      v7 = [[HKBloodTypeObject alloc] _initWithBloodType:v13];
    }
  }

  return v7;
}

- (BOOL)_setBloodType:(int64_t)a3 error:(id *)a4
{
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setBloodType:a3 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBloodType"];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:a4];
  }

  return v9;
}

- (void)_fitzpatrickSkinTypeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 _fitzpatrickSkinTypeWithCompletion:v4];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierFitzpatrickSkinType"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__HKHealthStore__fitzpatrickSkinTypeWithCompletion___block_invoke;
    v8[3] = &unk_1E7378978;
    v9 = v4;
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
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 fitzpatrickSkinTypeWithError:error];
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
        v13 = [v9 integerValue];
      }

      else
      {
        v13 = 0;
      }

      v7 = [[HKFitzpatrickSkinTypeObject alloc] _initWithSkinType:v13];
    }
  }

  return v7;
}

- (BOOL)_setFitzpatrickSkinType:(int64_t)a3 error:(id *)a4
{
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setFitzpatrickSkinType:a3 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierFitzpatrickSkinType"];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:a4];
  }

  return v9;
}

- (void)_wheelchairUseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 _wheelchairUseWithCompletion:v4];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierWheelchairUse"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__HKHealthStore__wheelchairUseWithCompletion___block_invoke;
    v8[3] = &unk_1E7378978;
    v9 = v4;
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
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 wheelchairUseWithError:error];
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
        v13 = [v9 integerValue];
      }

      else
      {
        v13 = 0;
      }

      v7 = [[HKWheelchairUseObject alloc] _initWithWheelchairUse:v13];
    }
  }

  return v7;
}

- (BOOL)_setWheelchairUse:(int64_t)a3 error:(id *)a4
{
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setWheelchairUse:a3 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierWheelchairUse"];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:a4];
  }

  return v9;
}

- (id)_cardioFitnessMedicationsUseWithError:(id *)a3
{
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _cardioFitnessMedicationsUseWithError:a3];
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
      if (a3)
      {
        v7 = 0;
        *a3 = v12;
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
        v13 = [v9 unsignedIntValue];
      }

      else
      {
        v13 = 0;
      }

      v7 = [[HKCardioFitnessMedicationsUseObject alloc] _initWithCardioFitnessMedicationsUseOptions:v13];
    }
  }

  return v7;
}

- (BOOL)_setCardioFitnessMedicationsUse:(unint64_t)a3 error:(id *)a4
{
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setCardioFitnessMedicationsUse:a3 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierCardioFitnessMedicationsUse"];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:a4];
  }

  return v9;
}

- (id)_bodyMassCharacteristicQuantityWithError:(id *)a3
{
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _bodyMassCharacteristicQuantityWithError:a3];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBodyMass"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:a3];
  }

  return v7;
}

- (BOOL)_setBodyMassCharacteristicQuantity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setBodyMassCharacteristicQuantity:v6 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierBodyMass"];
    v9 = [(HKHealthStore *)self _setCharacteristic:v6 forDataType:v10 error:a4];
  }

  return v9;
}

- (id)_leanBodyMassCharacteristicQuantityWithError:(id *)a3
{
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _leanBodyMassCharacteristicQuantityWithError:a3];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierLeanBodyMass"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:a3];
  }

  return v7;
}

- (BOOL)_setLeanBodyMassCharacteristicQuantity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setLeanBodyMassCharacteristicQuantity:v6 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierLeanBodyMass"];
    v9 = [(HKHealthStore *)self _setCharacteristic:v6 forDataType:v10 error:a4];
  }

  return v9;
}

- (id)_heightCharacteristicQuantityWithError:(id *)a3
{
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _heightCharacteristicQuantityWithError:a3];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierHeight"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:a3];
  }

  return v7;
}

- (BOOL)_setHeightCharacteristicQuantity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setHeightCharacteristicQuantity:v6 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierHeight"];
    v9 = [(HKHealthStore *)self _setCharacteristic:v6 forDataType:v10 error:a4];
  }

  return v9;
}

- (id)_userEnteredMenstrualCycleLengthCharacteristicQuantityWithError:(id *)a3
{
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _userEnteredMenstrualCycleLengthCharacteristicQuantityWithError:a3];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualCycleLength"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:a3];
  }

  return v7;
}

- (BOOL)_setUserEnteredMenstrualCycleLengthCharacteristicQuantity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setUserEnteredMenstrualCycleLengthCharacteristicQuantity:v6 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualCycleLength"];
    v9 = [(HKHealthStore *)self _setCharacteristic:v6 forDataType:v10 error:a4];
  }

  return v9;
}

- (id)_userEnteredMenstrualPeriodLengthCharacteristicQuantityWithError:(id *)a3
{
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _userEnteredMenstrualPeriodLengthCharacteristicQuantityWithError:a3];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualPeriodLength"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:a3];
  }

  return v7;
}

- (BOOL)_setUserEnteredMenstrualPeriodLengthCharacteristicQuantity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setUserEnteredMenstrualPeriodLengthCharacteristicQuantity:v6 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierUserEnteredMenstrualPeriodLength"];
    v9 = [(HKHealthStore *)self _setCharacteristic:v6 forDataType:v10 error:a4];
  }

  return v9;
}

- (void)_activityMoveModeObjectWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 _activityMoveModeObjectWithCompletion:v4];
  }

  else
  {
    v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__HKHealthStore__activityMoveModeObjectWithCompletion___block_invoke;
    v8[3] = &unk_1E7378978;
    v9 = v4;
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
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 activityMoveModeWithError:error];
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
        v13 = [v9 integerValue];
      }

      else
      {
        v13 = 1;
      }

      v7 = [[HKActivityMoveModeObject alloc] _initWithActivityMoveMode:v13];
    }
  }

  return v7;
}

- (id)_activityMoveModeWithError:(id *)a3
{
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _activityMoveModeWithError:a3];
  }

  else
  {
    v8 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
    v7 = [(HKHealthStore *)self _characteristicForDataType:v8 error:a3];
  }

  return v7;
}

- (BOOL)_setActivityMoveMode:(int64_t)a3 error:(id *)a4
{
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _setActivityMoveMode:a3 error:a4];
  }

  else
  {
    v10 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierActivityMoveMode"];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [(HKHealthStore *)self _setCharacteristic:v11 forDataType:v10 error:a4];
  }

  return v9;
}

- (void)_characteristicForDataType:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    [v9 raise:v10 format:{@"%@: Invalid data type %@, expected data type of class %@ in %@", v11, v7, v12, v13}];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__HKHealthStore__characteristicForDataType_withCompletion___block_invoke;
  v18[3] = &unk_1E7378AF8;
  v19 = v7;
  v20 = v8;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__HKHealthStore__characteristicForDataType_withCompletion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v20;
  v14 = v20;
  v15 = v7;
  [(HKHealthStore *)self _serverProxyWithHandler:v18 errorHandler:v16];
}

- (id)_characteristicForDataType:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 _characteristicForDataType:v7 error:a4];
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
      [v11 raise:v12 format:{@"%@: Invalid data type %@, expected data type of class %@ in %@", v13, v7, v14, v15}];
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
    [v18 remote_fetchCharacteristicWithDataType:v7 handler:v17];
    v19 = v34[5];
    if (!v19)
    {
      v20 = v28[5];
      v21 = v20;
      if (v20)
      {
        if (a4)
        {
          v22 = v20;
          *a4 = v21;
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

- (BOOL)_setCharacteristic:(id)a3 forDataType:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 _setCharacteristic:v9 forDataType:v10 error:a5];
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
      [v14 raise:v15 format:{@"%@: Invalid data type %@, expected data type of class %@ in %@", v16, v10, v17, v18}];
    }

    if ([v10 _validateCharacteristic:v9 error:a5])
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
      [v19 remote_setCharacteristic:v9 forDataType:v10 handler:v24];
      v20 = v31[5];
      v21 = v20;
      if (v20)
      {
        if (a5)
        {
          v22 = v20;
          *a5 = v21;
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

- (id)_modificationDateForCharacteristicWithType:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 _modificationDateForCharacteristicWithType:v7 error:a4];
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
      [v11 raise:v12 format:{@"%@: Invalid data type %@, expected data type of class %@ in %@", v13, v7, v14, v15}];
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
    [v16 remote_fetchModificationDateForCharacteristicWithDataType:v7 handler:v21];
    v17 = v30[5];
    v18 = v17;
    if (v17)
    {
      if (a4)
      {
        v19 = v17;
        *a4 = v18;
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
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 supportsHealthRecords];
  }

  else
  {
    v5 = [(HKHealthStore *)self _supportsFeature:1];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_supportsFeature:(unint64_t)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__HKHealthStore__supportsFeature___block_invoke;
  v7[3] = &unk_1E7378D78;
  v7[4] = &v8;
  v7[5] = a3;
  v4 = [(HKHealthStore *)self _synchronousServerProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HKHealthStore__supportsFeature___block_invoke_533;
  v6[3] = &unk_1E7378DA0;
  v6[4] = &v8;
  v6[5] = v3;
  [v4 remote_getIsFeatureSetAvailable:v3 completion:v6];
  LOBYTE(v3) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return v3;
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
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (v11)
  {
    [v11 addSamples:v8 toWorkout:v9 completion:v10];
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(NSArray *)v8 count];
      v16 = [(HKObject *)v9 UUID];
      v17 = [v16 UUIDString];
      *buf = 134218242;
      v28 = v15;
      v29 = 2114;
      v30 = v17;
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

- (void)_replaceWorkout:(id)a3 withWorkout:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (v11)
  {
    [v11 _replaceWorkout:v8 withWorkout:v9 completion:v10];
  }

  else
  {
    v13 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v10];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__HKHealthStore__replaceWorkout_withWorkout_completion___block_invoke;
    v16[3] = &unk_1E73788D8;
    v17 = v8;
    v18 = v9;
    v19 = v13;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__HKHealthStore__replaceWorkout_withWorkout_completion___block_invoke_2;
    v14[3] = &unk_1E7376960;
    v15 = v19;
    v10 = v19;
    [(HKHealthStore *)self _serverProxyWithHandler:v16 errorHandler:v14];
  }
}

- (void)startWorkoutSession:(HKWorkoutSession *)workoutSession
{
  v7 = workoutSession;
  v4 = [(HKHealthStore *)self implementation];
  v5 = v4;
  if (v4)
  {
    [v4 startWorkoutSession:v7];
  }

  else
  {
    [(HKWorkoutSession *)v7 _setupWithHealthStore:self];
    v6 = [MEMORY[0x1E695DF00] date];
    [(HKWorkoutSession *)v7 startActivityWithDate:v6 completion:&__block_literal_global_535];
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
  v4 = [(HKHealthStore *)self implementation];
  v5 = v4;
  if (v4)
  {
    [v4 endWorkoutSession:v6];
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
  v4 = [(HKHealthStore *)self implementation];
  v5 = v4;
  if (v4)
  {
    [v4 pauseWorkoutSession:v6];
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
  v4 = [(HKHealthStore *)self implementation];
  v5 = v4;
  if (v4)
  {
    [v4 resumeWorkoutSession:v6];
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
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (v8)
  {
    [v8 startWatchAppWithWorkoutConfiguration:v6 completion:v7];
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
      v13 = [v12 isRealityDevice];

      if (!v13)
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

- (void)_startWatchAppWithWorkoutPlanData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v11 = [v10 isRealityDevice];

    if (!v11)
    {
      v13 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v7];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __62__HKHealthStore__startWatchAppWithWorkoutPlanData_completion___block_invoke;
      v16[3] = &unk_1E7378AF8;
      v17 = v6;
      v18 = v13;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __62__HKHealthStore__startWatchAppWithWorkoutPlanData_completion___block_invoke_2;
      v14[3] = &unk_1E7376960;
      v7 = v18;
      v15 = v7;
      [(HKHealthStore *)self _serverProxyWithHandler:v16 errorHandler:v14];

      v12 = v17;
      goto LABEL_8;
    }
  }

  v12 = [MEMORY[0x1E696ABC0] hk_error:2 description:@"Starting a workout from this device is not supported."];
  (*(v7 + 2))(v7, 0, v12);
LABEL_8:
}

- (void)_startWatchAppWithMirroredStartData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v11 = [v10 isRealityDevice];

    if (!v11)
    {
      v13 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v7];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64__HKHealthStore__startWatchAppWithMirroredStartData_completion___block_invoke;
      v16[3] = &unk_1E7378AF8;
      v17 = v6;
      v18 = v13;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __64__HKHealthStore__startWatchAppWithMirroredStartData_completion___block_invoke_2;
      v14[3] = &unk_1E7376960;
      v7 = v18;
      v15 = v7;
      [(HKHealthStore *)self _serverProxyWithHandler:v16 errorHandler:v14];

      v12 = v17;
      goto LABEL_8;
    }
  }

  v12 = [MEMORY[0x1E696ABC0] hk_error:2 description:@"Starting a workout from this device is not supported."];
  (*(v7 + 2))(v7, 0, v12);
LABEL_8:
}

- (void)recoverActiveWorkoutSessionWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 recoverActiveWorkoutSessionWithCompletion:v4];
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
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 setWorkoutSessionMirroringStartHandler:v4];
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

- (void)_setMirroredWorkoutSessionObserverStateToEnabled:(BOOL)a3 handler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__HKHealthStore__setMirroredWorkoutSessionObserverStateToEnabled_handler___block_invoke;
  v10[3] = &unk_1E7378E88;
  v12 = a3;
  v11 = v6;
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
  v2 = [objc_opt_class() _useHKHealthStoreImplementation];
  v3 = off_1E7375038;
  if (!v2)
  {
    v3 = off_1E73757E8;
  }

  v4 = *v3;

  return [(__objc2_class *)v4 _applicationHasRunningWorkout];
}

- (void)_ratingOfExertionSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (!v11)
  {
    v13 = [(HKHealthStore *)self _objectCompletionOnClientQueue:v10];
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

      v10[2](v10, 0, v15);
      goto LABEL_18;
    }

    if ([v14 hasEntitlement:@"com.apple.private.healthkit"])
    {
      if (v9)
      {
        v16 = [v8 workoutActivities];
        v17 = [v16 containsObject:v9];

        if (v17)
        {
          [v8 workoutActivityType];
LABEL_14:
          v22 = [v8 UUID];
          v23 = [HKQuery predicateForObjectWithUUID:v22];

          v24 = [HKWorkoutEffortRelationshipQuery alloc];
          v27 = MEMORY[0x1E69E9820];
          v28 = 3221225472;
          v29 = __79__HKHealthStore__ratingOfExertionSamplesForWorkout_workoutActivity_completion___block_invoke;
          v30 = &unk_1E7378EB0;
          v31 = self;
          v33 = v13;
          v32 = v9;
          v25 = [(HKWorkoutEffortRelationshipQuery *)v24 initWithPredicate:v23 anchor:0 options:0 resultsHandler:&v27];
          [(HKHealthStore *)self executeQuery:v25, v27, v28, v29, v30, v31];

LABEL_18:
          goto LABEL_19;
        }

        v20 = MEMORY[0x1E696ABC0];
        v21 = @"Activity must be inside workout activities.";
      }

      else
      {
        if ([v8 workoutActivityType] != 82)
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
    v10[2](v10, 0, v19);

    goto LABEL_18;
  }

  [v11 _ratingOfExertionSamplesForWorkout:v8 workoutActivity:v9 completion:v10];
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

- (void)_relateReplaceRatingOfExertionSample:(id)a3 toWorkout:(id)a4 forActivity:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HKHealthStore *)self implementation];
  v15 = v14;
  if (v14)
  {
    [v14 _relateReplaceRatingOfExertionSample:v10 toWorkout:v11 forActivity:v12 completion:v13];
  }

  else
  {
    v16 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v13];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __87__HKHealthStore__relateReplaceRatingOfExertionSample_toWorkout_forActivity_completion___block_invoke;
    v17[3] = &unk_1E7378F00;
    v21 = v16;
    v17[4] = self;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v13 = v16;
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

- (void)relateWorkoutEffortSample:(id)a3 withWorkout:(id)a4 activity:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HKHealthStore *)self implementation];
  v15 = v14;
  if (v14)
  {
    [v14 relateWorkoutEffortSample:v10 withWorkout:v11 activity:v12 completion:v13];
  }

  else if (v12 && ([v11 workoutActivities], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v12), v16, (v17 & 1) == 0))
  {
    v20 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Activity must be inside workout activities."];
    v13[2](v13, 0, v20);
  }

  else
  {
    v18 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v13];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __75__HKHealthStore_relateWorkoutEffortSample_withWorkout_activity_completion___block_invoke;
    v23[3] = &unk_1E7378900;
    v24 = v10;
    v25 = v11;
    v26 = v12;
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

- (void)unrelateWorkoutEffortSample:(id)a3 fromWorkout:(id)a4 activity:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HKHealthStore *)self implementation];
  v15 = v14;
  if (v14)
  {
    [v14 unrelateWorkoutEffortSample:v10 fromWorkout:v11 activity:v12 completion:v13];
  }

  else if (v12 && ([v11 workoutActivities], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v12), v16, (v17 & 1) == 0))
  {
    v20 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Activity must be inside workout activities."];
    v13[2](v13, 0, v20);
  }

  else
  {
    v18 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v13];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77__HKHealthStore_unrelateWorkoutEffortSample_fromWorkout_activity_completion___block_invoke;
    v23[3] = &unk_1E7378900;
    v24 = v10;
    v25 = v11;
    v26 = v12;
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

- (void)currentWorkoutZonesForType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (v8)
  {
    [v8 currentWorkoutZonesForType:v6 completion:v7];
  }

  else
  {
    v10 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
    if ([v6 isEqual:v10])
    {
    }

    else
    {
      v11 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierCyclingPower"];
      v12 = [v6 isEqual:v11];

      if ((v12 & 1) == 0)
      {
        v23 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Object type not supported"];
        v7[2](v7, 0, v23);

        goto LABEL_14;
      }
    }

    v13 = [[HKKeyValueDomain alloc] initWithCategory:0 domainName:@"WorkoutZones" healthStore:self];
    v14 = [v6 identifier];
    v25 = 0;
    v15 = [(HKKeyValueDomain *)v13 dataForKey:v14 error:&v25];
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
        (v7)[2](v7, v22, v21);

        v16 = v21;
      }

      else
      {
        v7[2](v7, MEMORY[0x1E695E0F0], 0);
      }
    }

    else
    {
      v7[2](v7, 0, v16);
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

- (void)saveWorkoutZones:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (!v8)
  {
    if (![v6 count])
    {
      v10 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Cannot save empty zones"];
      v7[2](v7, 0, v10);
LABEL_14:

      goto LABEL_15;
    }

    v10 = [v6 hk_mapToSet:&__block_literal_global_582];
    if ([v10 count] < 2)
    {
      v23 = 0;
      v12 = [HKWorkoutUtilities validateZones:v6 error:&v23];
      v11 = v23;
      if (v12)
      {
        v22 = 0;
        v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v22];
        v14 = v22;
        if (v13)
        {
          v19 = [[HKKeyValueDomain alloc] initWithCategory:0 domainName:@"WorkoutZones" healthStore:self];
          v20 = [v6 firstObject];
          v15 = [v20 type];
          v16 = [v15 identifier];
          v21 = v14;
          v18 = [(HKKeyValueDomain *)v19 setData:v13 forKey:v16 error:&v21];
          v17 = v21;

          (v7)[2](v7, v18, v17);
          v14 = v17;
        }

        else
        {
          v7[2](v7, 0, v14);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v11 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"All zones must have the same object type"];
    }

    v7[2](v7, 0, v11);
LABEL_13:

    goto LABEL_14;
  }

  [v8 saveWorkoutZones:v6 completion:v7];
LABEL_15:
}

- (void)takeWorkoutBackgroundStartAssertionForApplicationIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (v8)
  {
    [v8 takeWorkoutBackgroundStartAssertionForApplicationIdentifier:v6 completion:v7];
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
        v12 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v7];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __88__HKHealthStore_takeWorkoutBackgroundStartAssertionForApplicationIdentifier_completion___block_invoke;
        v19[3] = &unk_1E7378AF8;
        v20 = v6;
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
        v7[2](v7, 0, v16);
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

      v7[2](v7, 0, v11);
    }
  }
}

- (void)_setBackgroundDeliveryFrequencyDataType:(id)a3 frequency:(int64_t)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = [(HKHealthStore *)self _actionCompletionOnClientQueue:a5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__HKHealthStore__setBackgroundDeliveryFrequencyDataType_frequency_withCompletion___block_invoke;
  v14[3] = &unk_1E7378888;
  v17 = a4;
  v15 = v8;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__HKHealthStore__setBackgroundDeliveryFrequencyDataType_frequency_withCompletion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HKHealthStore *)self _serverProxyWithHandler:v14 errorHandler:v12];
}

- (void)enableBackgroundDeliveryForType:(HKObjectType *)type frequency:(HKUpdateFrequency)frequency withCompletion:(void *)completion
{
  v8 = completion;
  v9 = type;
  v10 = [(HKHealthStore *)self implementation];
  v11 = v10;
  if (v10)
  {
    [v10 enableBackgroundDeliveryForType:v9 frequency:frequency withCompletion:v8];
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
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (v8)
  {
    [v8 disableBackgroundDeliveryForType:v7 withCompletion:v6];
  }

  else
  {
    [(HKHealthStore *)self _setBackgroundDeliveryFrequencyDataType:v7 frequency:0 withCompletion:v6];
  }
}

- (void)disableAllBackgroundDeliveryWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 disableAllBackgroundDeliveryWithCompletion:v4];
  }

  else
  {
    [(HKHealthStore *)self _setBackgroundDeliveryFrequencyDataType:0 frequency:0 withCompletion:v4];
  }
}

- (void)_closeTransactionWithTypes:(id)a3 anchor:(id)a4 ackTime:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (v11)
  {
    [v11 _closeTransactionWithTypes:v8 anchor:v9 ackTime:v10];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__HKHealthStore__closeTransactionWithTypes_anchor_ackTime___block_invoke;
    v13[3] = &unk_1E7378F68;
    v14 = v8;
    v15 = v9;
    v16 = v10;
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
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    [v7 preferredUnitsForQuantityTypes:v9 completion:v6];
  }

  else
  {
    [(HKHealthStore *)self preferredUnitsForQuantityTypes:v9 version:HKSupportedUnitPreferencesVersion() completion:v6];
  }
}

- (void)preferredUnitsForQuantityTypes:(id)a3 version:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HKHealthStore *)self implementation];
  v11 = v10;
  if (v10)
  {
    [v10 preferredUnitsForQuantityTypes:v8 version:a4 completion:v9];
  }

  else
  {
    v12 = [(HKHealthStore *)self _objectCompletionOnClientQueue:v9];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__HKHealthStore_preferredUnitsForQuantityTypes_version_completion___block_invoke;
    v15[3] = &unk_1E7378888;
    v16 = v8;
    v18 = a4;
    v17 = v12;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__HKHealthStore_preferredUnitsForQuantityTypes_version_completion___block_invoke_2;
    v13[3] = &unk_1E7376960;
    v14 = v17;
    v9 = v17;
    [(HKHealthStore *)self _serverProxyWithHandler:v15 errorHandler:v13];
  }
}

- (void)_setPreferredUnit:(id)a3 forType:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (v11)
  {
    [v11 _setPreferredUnit:v8 forType:v9 completion:v10];
  }

  else
  {
    v13 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v10];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__HKHealthStore__setPreferredUnit_forType_completion___block_invoke;
    v16[3] = &unk_1E73788D8;
    v17 = v8;
    v18 = v9;
    v19 = v13;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__HKHealthStore__setPreferredUnit_forType_completion___block_invoke_2;
    v14[3] = &unk_1E7376960;
    v15 = v19;
    v10 = v19;
    [(HKHealthStore *)self _serverProxyWithHandler:v16 errorHandler:v14];
  }
}

- (void)_removePreferredUnitForType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (v8)
  {
    [v8 _removePreferredUnitForType:v6 completion:v7];
  }

  else
  {
    v10 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v7];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__HKHealthStore__removePreferredUnitForType_completion___block_invoke;
    v13[3] = &unk_1E7378AF8;
    v14 = v6;
    v15 = v10;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__HKHealthStore__removePreferredUnitForType_completion___block_invoke_2;
    v11[3] = &unk_1E7376960;
    v12 = v15;
    v7 = v15;
    [(HKHealthStore *)self _serverProxyWithHandler:v13 errorHandler:v11];
  }
}

- (void)splitTotalEnergy:(HKQuantity *)totalEnergy startDate:(NSDate *)startDate endDate:(NSDate *)endDate resultsHandler:(void *)resultsHandler
{
  v11 = totalEnergy;
  v12 = startDate;
  v13 = endDate;
  v14 = resultsHandler;
  v15 = [(HKHealthStore *)self implementation];
  if (v15)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __67__HKHealthStore_splitTotalEnergy_startDate_endDate_resultsHandler___block_invoke;
    v35[3] = &unk_1E7378FB8;
    v35[4] = self;
    v36 = v14;
    [v15 splitTotalEnergy:v11 startDate:v12 endDate:v13 resultsHandler:v35];
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

- (void)_applicationWillResignActive:(id)a3
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

- (void)_applicationDidBecomeActive:(id)a3
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

- (id)_actionCompletionOnClientQueue:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _actionCompletionOnClientQueue:v4];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__HKHealthStore__actionCompletionOnClientQueue___block_invoke;
    v9[3] = &unk_1E73766A0;
    v9[4] = self;
    v10 = v4;
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

- (id)_multiActionCompletionOnClientQueue:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__HKHealthStore__multiActionCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_1E7379078;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
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

- (id)_objectCompletionOnClientQueue:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _objectCompletionOnClientQueue:v4];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__HKHealthStore__objectCompletionOnClientQueue___block_invoke;
    v9[3] = &unk_1E73790A0;
    v9[4] = self;
    v10 = v4;
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

- (BOOL)_prepareObjectsForSaving:(id)a3 errorOut:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v13 + 1) + 8 * i) prepareForSaving:{a4, v13}])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)setAllHealthDataAccessForSiri:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    [v7 setAllHealthDataAccessForSiri:a3 completion:v6];
  }

  else
  {
    v9 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v6];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__HKHealthStore_setAllHealthDataAccessForSiri_completion___block_invoke;
    v12[3] = &unk_1E73790C8;
    v14 = a3;
    v13 = v9;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__HKHealthStore_setAllHealthDataAccessForSiri_completion___block_invoke_2;
    v10[3] = &unk_1E7376960;
    v6 = v13;
    v11 = v6;
    [(HKHealthStore *)self _serverProxyWithHandler:v12 errorHandler:v10];
  }
}

- (void)getAllHealthDataAccessForSiriWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 getAllHealthDataAccessForSiriWithCompletion:v4];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__HKHealthStore_getAllHealthDataAccessForSiriWithCompletion___block_invoke;
    v12[3] = &unk_1E73789F0;
    v12[4] = self;
    v13 = v4;
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
    v4 = v11;
    v9 = v4;
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

- (void)fetchServerURLForAssetType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKHealthStore *)self implementation];
  v9 = v8;
  if (v8)
  {
    [v8 fetchServerURLForAssetType:v6 completion:v7];
  }

  else
  {
    v10 = [(HKHealthStore *)self _objectCompletionOnClientQueue:v7];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__HKHealthStore_fetchServerURLForAssetType_completion___block_invoke;
    v13[3] = &unk_1E7378AF8;
    v14 = v6;
    v15 = v10;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__HKHealthStore_fetchServerURLForAssetType_completion___block_invoke_2;
    v11[3] = &unk_1E7376960;
    v7 = v15;
    v12 = v7;
    [(HKHealthStore *)self _serverProxyWithHandler:v13 errorHandler:v11];
  }
}

- (void)setServerURL:(id)a3 forAssetType:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKHealthStore *)self implementation];
  v12 = v11;
  if (v11)
  {
    [v11 setServerURL:v8 forAssetType:v9 completion:v10];
  }

  else
  {
    v13 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v10];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__HKHealthStore_setServerURL_forAssetType_completion___block_invoke;
    v16[3] = &unk_1E73788D8;
    v17 = v8;
    v18 = v9;
    v19 = v13;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__HKHealthStore_setServerURL_forAssetType_completion___block_invoke_2;
    v14[3] = &unk_1E7376960;
    v10 = v19;
    v15 = v10;
    [(HKHealthStore *)self _serverProxyWithHandler:v16 errorHandler:v14];
  }
}

- (void)clientRemote_unitPreferencesDidUpdate
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"HKUserPreferencesDidChangeNotification" object:self];
}

- (void)clientRemote_conceptIndexManagerDidBecomeQuiescentWithSamplesProcessedCount:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"processedSampleCount";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 postNotificationName:@"HKConceptIndexManagerDidBecomeQuiescentNotification" object:self userInfo:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_didCreateRemoteSessionWithConfiguration:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__HKHealthStore_clientRemote_didCreateRemoteSessionWithConfiguration___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)fetchMedicalIDDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 fetchMedicalIDDataWithCompletion:v4];
  }

  else
  {
    v7 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__HKHealthStore_fetchMedicalIDDataWithCompletion___block_invoke;
    v8[3] = &unk_1E73790F0;
    v9 = v4;
    [(HKMedicalIDStore *)v7 fetchMedicalIDDataWithCompletion:v8];
  }
}

- (void)fetchMedicalIDEmergencyContactsWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(HKHealthStore *)self implementation];
  v5 = v4;
  if (v4)
  {
    [v4 fetchMedicalIDEmergencyContactsWithCompletion:v7];
  }

  else
  {
    v6 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
    [(HKMedicalIDStore *)v6 fetchMedicalIDEmergencyContactsWithCompletion:v7];
  }
}

- (void)updateMedicalIDData:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 updateMedicalIDData:v4];
  }

  else
  {
    [(HKHealthStore *)self updateMedicalIDData:v4 completion:0];
  }
}

- (void)updateMedicalIDData:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(HKHealthStore *)self implementation];
  v8 = v7;
  if (v7)
  {
    [v7 updateMedicalIDData:v10 completion:v6];
  }

  else
  {
    v9 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
    [(HKMedicalIDStore *)v9 updateMedicalIDData:v10 completion:v6];
  }
}

- (void)deleteMedicalIDData
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    [v3 deleteMedicalIDData];
  }

  else
  {
    [(HKHealthStore *)self deleteMedicalIDDataWithCompletion:0];
  }
}

- (void)deleteMedicalIDDataWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(HKHealthStore *)self implementation];
  v5 = v4;
  if (v4)
  {
    [v4 deleteMedicalIDDataWithCompletion:v7];
  }

  else
  {
    v6 = [[HKMedicalIDStore alloc] initWithHealthStore:self];
    [(HKMedicalIDStore *)v6 deleteMedicalIDDataWithCompletion:v7];
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

- (void)requestDatabaseAccessibilityAssertion:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(HKHealthStore *)self implementation];
  v10 = v9;
  if (v9)
  {
    [v9 requestDatabaseAccessibilityAssertion:v12 timeout:v8 completion:a4];
  }

  else
  {
    v11 = [(HKHealthStore *)self _getDatabaseAccessibilityAssertionStoreKeeper];
    [v11 fetchDatabaseAccessibilityAssertionForOwnerIdentifier:v12 isRecovery:0 timeout:v8 completion:a4];
  }
}

- (void)requestDatabaseAccessibilityAssertionForOwnerIdentifier:(id)a3 contextType:(int64_t)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(HKHealthStore *)self implementation];
  v10 = v9;
  if (v9)
  {
    [v9 requestDatabaseAccessibilityAssertionForOwnerIdentifier:v12 contextType:a4 completion:v8];
  }

  else
  {
    v11 = [(HKHealthStore *)self _getDatabaseAccessibilityAssertionStoreKeeper];
    [v11 fetchDatabaseAccessibilityAssertionForOwnerIdentifier:v12 contextType:a4 isRecovery:0 timeout:v8 completion:1.79769313e308];
  }
}

- (void)invalidateDatabaseAccessibilityAssertion:(id)a3
{
  v7 = a3;
  v4 = [(HKHealthStore *)self implementation];
  v5 = v4;
  if (v4)
  {
    [v4 invalidateDatabaseAccessibilityAssertion:v7];
  }

  else
  {
    v6 = [(HKHealthStore *)self _getDatabaseAccessibilityAssertionStoreKeeper];
    [v6 invalidateDatabaseAccessibilityAssertionWithAssertion:v7];
  }
}

- (void)invalidateAllDatabaseAccessibilityAssertions
{
  v3 = [(HKHealthStore *)self implementation];
  v5 = v3;
  if (v3)
  {
    [v3 invalidateAllDatabaseAccessibilityAssertions];
  }

  else
  {
    v4 = [(HKHealthStore *)self _getDatabaseAccessibilityAssertionStoreKeeper];
    [v4 invalidateAllDatabaseAccessibilityAssertions];
  }
}

- (void)isProtectedDataAvailableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 isProtectedDataAvailableWithCompletion:v4];
  }

  else
  {
    v7 = [(HKHealthStore *)self _multiActionCompletionOnClientQueue:v4];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__HKHealthStore_isProtectedDataAvailableWithCompletion___block_invoke;
    v10[3] = &unk_1E73788B0;
    v11 = v7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__HKHealthStore_isProtectedDataAvailableWithCompletion___block_invoke_2;
    v8[3] = &unk_1E7376960;
    v4 = v11;
    v9 = v4;
    [(HKHealthStore *)self _serverProxyWithHandler:v10 errorHandler:v8];
  }
}

- (id)notifier
{
  v3 = [(HKHealthStore *)self implementation];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  return v6;
}

- (void)dropEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 dropEntitlement:v4];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__HKHealthStore_dropEntitlement___block_invoke;
    v11[3] = &unk_1E7376898;
    v7 = v4;
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

- (void)restoreEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self implementation];
  v6 = v5;
  if (v5)
  {
    [v5 restoreEntitlement:v4];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__HKHealthStore_restoreEntitlement___block_invoke;
    v11[3] = &unk_1E7376898;
    v7 = v4;
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
  v3 = [(HKProfileStore *)v2 synchronouslyFetchFirstName];

  return v3;
}

- (void)profileIdentifierForNRDeviceUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HKProfileStore alloc] initWithHealthStore:self];
  [(HKProfileStore *)v8 fetchProfileIdentifierForNRDeviceUUID:v7 completion:v6];
}

- (void)forceCloudSyncWithOptions:(unint64_t)a3 reason:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [[HKCloudSyncControl alloc] initWithHealthStore:self];
  [(HKCloudSyncControl *)v9 forceCloudSyncWithOptions:a3 reason:a4 completion:v8];
}

- (void)forceCloudSyncWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [[HKCloudSyncControl alloc] initWithHealthStore:self];
  [(HKCloudSyncControl *)v7 forceCloudSyncWithOptions:a3 completion:v6];
}

- (void)forceCloudSyncDataUploadForProfileWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[HKCloudSyncControl alloc] initWithHealthStore:self];
  [(HKCloudSyncControl *)v5 forceCloudSyncDataUploadForProfileWithCompletion:v4];
}

- (void)fetchCloudSyncRequiredWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[HKCloudSyncControl alloc] initWithHealthStore:self];
  [(HKCloudSyncControl *)v5 fetchCloudSyncRequiredWithCompletion:v4];
}

- (void)disableCloudSyncAndDeleteAllCloudDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[HKCloudSyncControl alloc] initWithHealthStore:self];
  [(HKCloudSyncControl *)v5 disableCloudSyncAndDeleteAllCloudDataWithCompletion:v4];
}

- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)a3
{
  v4 = a3;
  if (HKFeatureIdentifierIsProvidedBySleepDaemon(v4))
  {
    v5 = [(HKHealthStore *)self _sleepFeatureAvailabilityProvider:v4];
  }

  else
  {
    v5 = [[HKFeatureAvailabilityStore alloc] initWithFeatureIdentifier:v4 healthStore:self];
  }

  v6 = v5;

  return v6;
}

- (id)_sleepFeatureAvailabilityProvider:(id)a3
{
  v4 = a3;
  if (SleepLibraryCore() && getgetSleepFeatureAvailabilityProvidingSymbolLoc())
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKHealthStore<HKFeatureAvailabilityHealthDataSource> (%@)", v4];
    v6 = self;
    v7 = v4;
    v8 = getgetSleepFeatureAvailabilityProvidingSymbolLoc();
    if (!v8)
    {
      [HKHealthStore(HKFeatureAvailabilityHealthDataSource) _sleepFeatureAvailabilityProvider:];
    }

    v9 = v8(v5, v6, v7);
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

- (id)ageWithCurrentDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKHealthStore *)self dateOfBirthComponentsWithError:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "hk_ageWithCurrentDate:", v6)}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)featureStatusProviderForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[HKFeatureStatusManager alloc] initWithFeatureIdentifier:v4 healthStore:self countryCodeSource:0];

  return v5;
}

- (void)isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[HKHealthRecordsStore alloc] initWithHealthStore:self];
  [(HKHealthRecordsStore *)v5 fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion:v4];
}

- (void)generateFakeDataForActivityType:(int64_t)a3 minutes:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [[HKWorkoutControl alloc] initWithHealthStore:self];
  [(HKWorkoutControl *)v9 generateFakeDataForActivityType:a3 minutes:v8 completion:a4];
}

- (void)_activeWorkoutApplicationIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__HKHealthStore_Deprecated___activeWorkoutApplicationIdentifierWithCompletion___block_invoke;
  v6[3] = &unk_1E737DBF8;
  v7 = v4;
  v5 = v4;
  [(HKHealthStore *)self _currentWorkoutSnapshotWithCompletion:v6];
}

void __79__HKHealthStore_Deprecated___activeWorkoutApplicationIdentifierWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 applicationIdentifier];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)_currentWorkoutSnapshotWithCompletion:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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

- (void)_shouldGenerateDemoDataPreferenceIsSet:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__HKHealthStore__HKDaemonPreferences___shouldGenerateDemoDataPreferenceIsSet___block_invoke;
  v6[3] = &unk_1E7378BE8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)_fetchBoolDaemonPreferenceForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__HKHealthStore__HKDaemonPreferences___fetchBoolDaemonPreferenceForKey_completion___block_invoke;
  v10[3] = &unk_1E7378978;
  v11 = v6;
  v9 = v6;
  [(HKHealthStore *)self _safeFetchDaemonPreferenceForKey:v7 expectedReturnClass:v8 completion:v10];
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

- (void)_safeFetchDaemonPreferenceForKey:(id)a3 expectedReturnClass:(Class)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__HKHealthStore__HKDaemonPreferences___safeFetchDaemonPreferenceForKey_expectedReturnClass_completion___block_invoke;
  v10[3] = &unk_1E7385480;
  v11 = v8;
  v12 = a4;
  v9 = v8;
  [(HKHealthStore *)self _fetchDaemonPreferenceForKey:a3 completion:v10];
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

- (void)_fetchDaemonPreferenceForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "key"}];
    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [(HKHealthStore *)self _objectCompletionOnClientQueue:v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__HKHealthStore__HKDaemonPreferences___fetchDaemonPreferenceForKey_completion___block_invoke;
  v13[3] = &unk_1E7378AF8;
  v14 = v6;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__HKHealthStore__HKDaemonPreferences___fetchDaemonPreferenceForKey_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKHealthStore *)self _serverProxyWithHandler:v13 errorHandler:v11];
}

- (void)_setDaemonPreferenceValue:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "key"}];
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [(HKHealthStore *)self _actionCompletionOnClientQueue:v10];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__HKHealthStore__HKDaemonPreferences___setDaemonPreferenceValue_forKey_completion___block_invoke;
  v17[3] = &unk_1E73788D8;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__HKHealthStore__HKDaemonPreferences___setDaemonPreferenceValue_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
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