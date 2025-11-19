@interface HKHealthRecordsStore
- (HKHealthRecordsStore)initWithHealthStore:(id)a3;
- (NSString)description;
- (id)_actionCompletionWithObjectOnClientQueue:(id)a3;
- (void)_executeCheapCallOnPluginServerProxy:(id)a3;
- (void)_reestablishProxyConnectionIfObserversArePresentWithPluginServerProxy:(id)a3;
- (void)_withLock_notifyAccountsEventsListenerOfEvent:(unint64_t)a3;
- (void)clientRemote_healthRecordsAccountsEventObserved:(unint64_t)a3;
- (void)clientRemote_healthRecordsSupportedDidChangeTo:(BOOL)a3;
- (void)deregisterAppSourceFromClinicalUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4;
- (void)fetchClinicalConnectedAccountsWithCompletion:(id)a3;
- (void)fetchClinicalOptInDataCollectionFilePathsWithCompletion:(id)a3;
- (void)fetchCurrentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithCompletion:(id)a3;
- (void)fetchCurrentIngestionStatusWithCompletion:(id)a3;
- (void)fetchExportedPropertiesForHealthRecord:(id)a3 completion:(id)a4;
- (void)fetchFHIRJSONDocumentWithAccountIdentifier:(id)a3 completion:(id)a4;
- (void)fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion:(id)a3;
- (void)fetchLogoForBrand:(id)a3 scale:(id)a4 completion:(id)a5;
- (void)fetchRawSourceStringForHealthRecord:(id)a3 completion:(id)a4;
- (void)fetchShouldPromptForImproveHealthRecordsDataSubmissionWithCompletion:(id)a3;
- (void)fetchUserHasAgreedToHealthRecordsDataSubmissionWithCompletion:(id)a3;
- (void)pingWithCompletion:(id)a3;
- (void)registerAccountsEventListener:(id)a3;
- (void)registerAppSourceForClinicalUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4;
- (void)resetClinicalContentAnalyticsAnchorsWithCompletion:(id)a3;
- (void)resetClinicalOptInDataCollectionAnchorsWithCompletion:(id)a3;
- (void)stringifyExtractionFailureReasonsForRecord:(id)a3 completion:(id)a4;
- (void)triggerClinicalContentAnalyticsForReason:(int64_t)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)triggerClinicalOptInDataCollectionForReason:(int64_t)a3 completion:(id)a4;
- (void)triggerHealthCloudUploadWithCompletion:(id)a3;
@end

@implementation HKHealthRecordsStore

- (HKHealthRecordsStore)initWithHealthStore:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(HKHealthRecordsStore *)a2 initWithHealthStore:?];
  }

  v26.receiver = self;
  v26.super_class = HKHealthRecordsStore;
  v7 = [(HKHealthRecordsStore *)&v26 init];
  v8 = v7;
  if (v7)
  {
    v7->_ivarLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v7->_healthStore, a3);
    v9 = [HKTaskServerProxyProvider alloc];
    v10 = [objc_opt_class() taskIdentifier];
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [(HKTaskServerProxyProvider *)v9 initWithHealthStore:v6 taskIdentifier:v10 exportedObject:v8 taskUUID:v11];
    proxyProvider = v8->_proxyProvider;
    v8->_proxyProvider = v12;

    [(HKProxyProvider *)v8->_proxyProvider setShouldRetryOnInterruption:0];
    v8->_lastKnownIngestionStatus = 0;
    objc_initWeak(&location, v8);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __44__HKHealthRecordsStore_initWithHealthStore___block_invoke;
    v23[3] = &unk_1E737D638;
    objc_copyWeak(&v24, &location);
    [(HKProxyProvider *)v8->_proxyProvider setAutomaticProxyReconnectionHandler:v23];
    v14 = [HKObserverSet alloc];
    v15 = [(HKObserverSet *)v14 initWithName:@"HKHealthRecordsStore-healthRecordsSupportedStateChangeObservers" loggingCategory:HKLogHealthRecords];
    chrSupportedStateChangeObservers = v8->_chrSupportedStateChangeObservers;
    v8->_chrSupportedStateChangeObservers = v15;

    v17 = [HKObserverSet alloc];
    v18 = [(HKObserverSet *)v17 initWithName:@"HKHealthRecordsStore-accountsEventObservers" loggingCategory:HKLogHealthRecords];
    accountsEventObservers = v8->_accountsEventObservers;
    v8->_accountsEventObservers = v18;

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __44__HKHealthRecordsStore_initWithHealthStore___block_invoke_2;
    v21[3] = &unk_1E737D660;
    v22 = v8;
    [(HKHealthRecordsStore *)v22 fetchCurrentIngestionStatusWithCompletion:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __44__HKHealthRecordsStore_initWithHealthStore___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reestablishProxyConnectionIfObserversArePresentWithPluginServerProxy:v4];
}

void __44__HKHealthRecordsStore_initWithHealthStore___block_invoke_2(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = *(a1 + 32);
  if (!*(v4 + 24))
  {
    *(v4 + 24) = a2;
    [*(a1 + 32) _withLock_notifyAccountsEventsListenerOfEvent:a2];
    v4 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v4 + 8));
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  return v6;
}

- (void)pingWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__HKHealthRecordsStore_pingWithCompletion___block_invoke;
  v8[3] = &unk_1E737D688;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__HKHealthRecordsStore_pingWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)fetchClinicalConnectedAccountsWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__HKHealthRecordsStore_fetchClinicalConnectedAccountsWithCompletion___block_invoke;
  v8[3] = &unk_1E737D688;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__HKHealthRecordsStore_fetchClinicalConnectedAccountsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)fetchLogoForBrand:(id)a3 scale:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__HKHealthRecordsStore_fetchLogoForBrand_scale_completion___block_invoke;
  v16[3] = &unk_1E737D6B0;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__HKHealthRecordsStore_fetchLogoForBrand_scale_completion___block_invoke_2;
  v14[3] = &unk_1E7376960;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)registerAccountsEventListener:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  [v4 healthRecordsStore:self observedAccountsEvent:self->_lastKnownIngestionStatus];
  [(HKObserverSet *)self->_accountsEventObservers registerObserver:v4 queue:0];

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)_withLock_notifyAccountsEventsListenerOfEvent:(unint64_t)a3
{
  os_unfair_lock_assert_owner(&self->_ivarLock);
  accountsEventObservers = self->_accountsEventObservers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__HKHealthRecordsStore__withLock_notifyAccountsEventsListenerOfEvent___block_invoke;
  v6[3] = &unk_1E737D6D8;
  v6[4] = self;
  v6[5] = a3;
  [(HKObserverSet *)accountsEventObservers notifyObservers:v6];
}

- (void)fetchCurrentIngestionStatusWithCompletion:(id)a3
{
  v4 = a3;
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__HKHealthRecordsStore_fetchCurrentIngestionStatusWithCompletion___block_invoke;
  v14[3] = &unk_1E7378978;
  v6 = v4;
  v15 = v6;
  v7 = [(HKProxyProvider *)proxyProvider clientQueueObjectHandlerWithCompletion:v14];
  v11 = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__HKHealthRecordsStore_fetchCurrentIngestionStatusWithCompletion___block_invoke_2;
  v12[3] = &unk_1E737D688;
  v13 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__HKHealthRecordsStore_fetchCurrentIngestionStatusWithCompletion___block_invoke_3;
  v10[3] = &unk_1E7376820;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v12 errorHandler:v10];
}

uint64_t __66__HKHealthRecordsStore_fetchCurrentIngestionStatusWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [a2 integerValue];
    if ((v4 - 1) >= 5)
    {
      a2 = 0;
    }

    else
    {
      a2 = v4;
    }

    v5 = *(v3 + 16);
    v6 = v3;
    a3 = 0;
  }

  else
  {
    v5 = *(v3 + 16);
    v6 = *(a1 + 32);
  }

  return v5(v6, a2, a3);
}

void __66__HKHealthRecordsStore_fetchCurrentIngestionStatusWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    __66__HKHealthRecordsStore_fetchCurrentIngestionStatusWithCompletion___block_invoke_3_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)clientRemote_healthRecordsAccountsEventObserved:(unint64_t)a3
{
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    [(HKHealthRecordsStore *)self clientRemote_healthRecordsAccountsEventObserved:a3, v5];
  }

  os_unfair_lock_lock(&self->_ivarLock);
  if (a3 - 1 <= 1)
  {
    self->_lastKnownIngestionStatus = a3;
  }

  [(HKHealthRecordsStore *)self _withLock_notifyAccountsEventsListenerOfEvent:a3];
  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)fetchRawSourceStringForHealthRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__HKHealthRecordsStore_fetchRawSourceStringForHealthRecord_completion___block_invoke;
  v12[3] = &unk_1E737D700;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__HKHealthRecordsStore_fetchRawSourceStringForHealthRecord_completion___block_invoke_2;
  v10[3] = &unk_1E7376960;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)fetchExportedPropertiesForHealthRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__HKHealthRecordsStore_fetchExportedPropertiesForHealthRecord_completion___block_invoke;
  v12[3] = &unk_1E737D700;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__HKHealthRecordsStore_fetchExportedPropertiesForHealthRecord_completion___block_invoke_2;
  v10[3] = &unk_1E7376960;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)fetchFHIRJSONDocumentWithAccountIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__HKHealthRecordsStore_fetchFHIRJSONDocumentWithAccountIdentifier_completion___block_invoke;
  v12[3] = &unk_1E737D700;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__HKHealthRecordsStore_fetchFHIRJSONDocumentWithAccountIdentifier_completion___block_invoke_2;
  v10[3] = &unk_1E7376960;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)stringifyExtractionFailureReasonsForRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  if (+[_HKBehavior isAppleInternalInstall])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__HKHealthRecordsStore_stringifyExtractionFailureReasonsForRecord_completion___block_invoke;
    v10[3] = &unk_1E737D700;
    v11 = v6;
    v12 = v7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__HKHealthRecordsStore_stringifyExtractionFailureReasonsForRecord_completion___block_invoke_2;
    v8[3] = &unk_1E7376960;
    v9 = v12;
    [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v10 errorHandler:v8];
  }

  else
  {
    v7[2](v7, MEMORY[0x1E695E0F0], 0);
  }
}

- (void)fetchUserHasAgreedToHealthRecordsDataSubmissionWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__HKHealthRecordsStore_fetchUserHasAgreedToHealthRecordsDataSubmissionWithCompletion___block_invoke;
  v8[3] = &unk_1E737D688;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__HKHealthRecordsStore_fetchUserHasAgreedToHealthRecordsDataSubmissionWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__HKHealthRecordsStore_fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion___block_invoke;
  v8[3] = &unk_1E737D688;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__HKHealthRecordsStore_fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)fetchShouldPromptForImproveHealthRecordsDataSubmissionWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__HKHealthRecordsStore_fetchShouldPromptForImproveHealthRecordsDataSubmissionWithCompletion___block_invoke;
  v8[3] = &unk_1E737D688;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93__HKHealthRecordsStore_fetchShouldPromptForImproveHealthRecordsDataSubmissionWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)fetchCurrentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __105__HKHealthRecordsStore_fetchCurrentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithCompletion___block_invoke;
  v8[3] = &unk_1E737D688;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __105__HKHealthRecordsStore_fetchCurrentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)triggerClinicalOptInDataCollectionForReason:(int64_t)a3 completion:(id)a4
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__HKHealthRecordsStore_triggerClinicalOptInDataCollectionForReason_completion___block_invoke;
  v10[3] = &unk_1E737D728;
  v12 = a3;
  v11 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__HKHealthRecordsStore_triggerClinicalOptInDataCollectionForReason_completion___block_invoke_2;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v10 errorHandler:v8];
}

- (void)resetClinicalOptInDataCollectionAnchorsWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__HKHealthRecordsStore_resetClinicalOptInDataCollectionAnchorsWithCompletion___block_invoke;
  v8[3] = &unk_1E737D688;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__HKHealthRecordsStore_resetClinicalOptInDataCollectionAnchorsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)fetchClinicalOptInDataCollectionFilePathsWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__HKHealthRecordsStore_fetchClinicalOptInDataCollectionFilePathsWithCompletion___block_invoke;
  v8[3] = &unk_1E737D688;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__HKHealthRecordsStore_fetchClinicalOptInDataCollectionFilePathsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)triggerClinicalContentAnalyticsForReason:(int64_t)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__HKHealthRecordsStore_triggerClinicalContentAnalyticsForReason_options_completion___block_invoke;
  v12[3] = &unk_1E737D750;
  v14 = a3;
  v15 = a4;
  v13 = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__HKHealthRecordsStore_triggerClinicalContentAnalyticsForReason_options_completion___block_invoke_2;
  v10[3] = &unk_1E7376960;
  v11 = v13;
  v9 = v13;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)triggerHealthCloudUploadWithCompletion:(id)a3
{
  v4 = [(HKHealthRecordsStore *)self _actionCompletionWithObjectOnClientQueue:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__HKHealthRecordsStore_triggerHealthCloudUploadWithCompletion___block_invoke;
  v8[3] = &unk_1E737D688;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__HKHealthRecordsStore_triggerHealthCloudUploadWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)resetClinicalContentAnalyticsAnchorsWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__HKHealthRecordsStore_resetClinicalContentAnalyticsAnchorsWithCompletion___block_invoke;
  v8[3] = &unk_1E737D688;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__HKHealthRecordsStore_resetClinicalContentAnalyticsAnchorsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)clientRemote_healthRecordsSupportedDidChangeTo:(BOOL)a3
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    [HKHealthRecordsStore clientRemote_healthRecordsSupportedDidChangeTo:];
  }

  chrSupportedStateChangeObservers = self->_chrSupportedStateChangeObservers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__HKHealthRecordsStore_clientRemote_healthRecordsSupportedDidChangeTo___block_invoke;
  v6[3] = &unk_1E737D778;
  v6[4] = self;
  v7 = a3;
  [(HKObserverSet *)chrSupportedStateChangeObservers notifyObservers:v6];
}

- (void)registerAppSourceForClinicalUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([v7 _isApplication] & 1) == 0)
  {
    [HKHealthRecordsStore registerAppSourceForClinicalUnlimitedAuthorizationModeConfirmation:a2 completion:self];
  }

  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__HKHealthRecordsStore_registerAppSourceForClinicalUnlimitedAuthorizationModeConfirmation_completion___block_invoke;
  v14[3] = &unk_1E737D700;
  v15 = v7;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__HKHealthRecordsStore_registerAppSourceForClinicalUnlimitedAuthorizationModeConfirmation_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = v7;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v14 errorHandler:v12];
}

- (void)deregisterAppSourceFromClinicalUnlimitedAuthorizationModeConfirmation:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([v7 _isApplication] & 1) == 0)
  {
    [HKHealthRecordsStore deregisterAppSourceFromClinicalUnlimitedAuthorizationModeConfirmation:a2 completion:self];
  }

  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __105__HKHealthRecordsStore_deregisterAppSourceFromClinicalUnlimitedAuthorizationModeConfirmation_completion___block_invoke;
  v14[3] = &unk_1E737D700;
  v15 = v7;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __105__HKHealthRecordsStore_deregisterAppSourceFromClinicalUnlimitedAuthorizationModeConfirmation_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = v7;
  [(HKHealthRecordsStore *)self _fetchHealthRecordsPluginServerProxyWithHandler:v14 errorHandler:v12];
}

- (id)_actionCompletionWithObjectOnClientQueue:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__HKHealthRecordsStore__actionCompletionWithObjectOnClientQueue___block_invoke;
  v8[3] = &unk_1E737D7C8;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [v8 copy];

  return v6;
}

void __65__HKHealthRecordsStore__actionCompletionWithObjectOnClientQueue___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) healthStore];
  v10 = [v9 clientQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__HKHealthRecordsStore__actionCompletionWithObjectOnClientQueue___block_invoke_2;
  v14[3] = &unk_1E737D7A0;
  v11 = *(a1 + 40);
  v16 = v8;
  v17 = v11;
  v18 = a2;
  v15 = v7;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, v14);
}

uint64_t __65__HKHealthRecordsStore__actionCompletionWithObjectOnClientQueue___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32), *(a1 + 40));
  }

  return result;
}

- (void)_reestablishProxyConnectionIfObserversArePresentWithPluginServerProxy:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  v4 = [(HKObserverSet *)self->_chrSupportedStateChangeObservers count];
  v5 = [(HKObserverSet *)self->_accountsEventObservers count];
  os_unfair_lock_unlock(&self->_ivarLock);
  if (v4 + v5)
  {
    [(HKHealthRecordsStore *)self _executeCheapCallOnPluginServerProxy:v7];
    unitTesting_didCallReestablishProxyConnectionIfObserversArePresent = self->_unitTesting_didCallReestablishProxyConnectionIfObserversArePresent;
    if (unitTesting_didCallReestablishProxyConnectionIfObserversArePresent)
    {
      unitTesting_didCallReestablishProxyConnectionIfObserversArePresent[2]();
    }
  }
}

- (void)_executeCheapCallOnPluginServerProxy:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    [HKHealthRecordsStore _executeCheapCallOnPluginServerProxy:];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__HKHealthRecordsStore__executeCheapCallOnPluginServerProxy___block_invoke;
  v5[3] = &unk_1E7376A00;
  v5[4] = self;
  [v4 remote_pingWithCompletion:v5];
}

void __61__HKHealthRecordsStore__executeCheapCallOnPluginServerProxy___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      __61__HKHealthRecordsStore__executeCheapCallOnPluginServerProxy___block_invoke_cold_1(a1);
    }
  }
}

- (void)initWithHealthStore:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKHealthRecordsStore.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"healthStore != nil"}];
}

void __66__HKHealthRecordsStore_fetchCurrentIngestionStatusWithCompletion___block_invoke_3_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_healthRecordsAccountsEventObserved:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((a2 - 1) > 4)
  {
    v3 = @"unknown";
  }

  else
  {
    v3 = off_1E737D7E8[a2 - 1];
  }

  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v3;
  v4 = a3;
  _os_log_debug_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: health records accounts event observed: %{public}@", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_healthRecordsSupportedDidChangeTo:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)registerAppSourceForClinicalUnlimitedAuthorizationModeConfirmation:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKHealthRecordsStore.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"[source _isApplication]"}];
}

- (void)deregisterAppSourceFromClinicalUnlimitedAuthorizationModeConfirmation:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKHealthRecordsStore.m" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"[source _isApplication]"}];
}

- (void)_executeCheapCallOnPluginServerProxy:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __61__HKHealthRecordsStore__executeCheapCallOnPluginServerProxy___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end