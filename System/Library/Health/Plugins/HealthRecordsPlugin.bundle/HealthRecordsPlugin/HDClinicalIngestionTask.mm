@interface HDClinicalIngestionTask
+ (BOOL)_accumulatedErrorAllowsToProceedRunningStaleResourcesOperation:(id)a3;
- (BOOL)_handleStaleResourcesOfAccount:(id)a3 ingestStartDate:(id)a4 error:(id *)a5;
- (BOOL)_ingestionAllowed;
- (BOOL)_performResourceFetchWithAccount:(id)a3 batchingSemaphore:(id)a4 error:(id *)a5;
- (BOOL)_prepareAccounts:(id *)a3 userFetchEligibleAccounts:(id *)a4 withError:(id *)a5;
- (BOOL)_updateGatewayForAccount:(id)a3 error:(id *)a4;
- (HDClinicalIngestionTask)init;
- (HDClinicalIngestionTask)initWithContext:(id)a3 extension:(id)a4 accountIdentifiers:(id)a5 completion:(id)a6;
- (HDProfile)profile;
- (id)_analyticsStringAfterCollectingAndSubmittingIngestionAnalyticsOnQueue:(id)a3;
- (id)_fetchableAccountForAccount:(id)a3 error:(id *)a4;
- (id)_gatewayFeatureOperationsForAccount:(id)a3 queryMode:(int64_t)a4 error:(id *)a5;
- (id)_gatewaysOperationForAccount:(id)a3;
- (id)_runAndAwaitPreflightOperations:(id)a3 accountContext:(id)a4;
- (id)_serialIngestionDoneOperations;
- (id)description;
- (void)_accountWithIdentifier:(id)a3 addOutcomeInfo:(unint64_t)a4;
- (void)_cancelWithError:(id)a3;
- (void)_didFinishWithStartTimeInternal:(double)a3;
- (void)_didStart;
- (void)_markAccountsWithoutCredentialsAsReloginNeeded:(id)a3;
- (void)_markHadError:(id)a3;
- (void)_notifyIfWorkMayBeDoneForAccounts:(id)a3;
- (void)_performExtractionWithAccount:(id)a3;
- (void)_performFetchWithAccount:(id)a3 batchingSemaphore:(id)a4;
- (void)_performFileImportWithAccount:(id)a3;
- (void)_prepareUpdateGatewaysOperationsForAccounts:(id)a3;
- (void)_runIngestionDoneOperations;
- (void)accumulateIngestionAnalyticsFromTaskStates:(id)a3 gateway:(id)a4;
- (void)cancel;
- (void)main;
- (void)recordCountOfAllRecords:(unint64_t)a3 allLabs:(unint64_t)a4 pinnedLabs:(unint64_t)a5;
@end

@implementation HDClinicalIngestionTask

- (HDClinicalIngestionTask)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTask)initWithContext:(id)a3 extension:(id)a4 accountIdentifiers:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v34.receiver = self;
  v34.super_class = HDClinicalIngestionTask;
  v14 = [(HDClinicalIngestionTask *)&v34 init];
  if (v14)
  {
    v15 = +[NSUUID UUID];
    v16 = [v15 UUIDString];
    taskIdentifier = v14->_taskIdentifier;
    v14->_taskIdentifier = v16;

    v18 = [v10 copy];
    context = v14->_context;
    v14->_context = v18;

    v20 = [v13 copy];
    completion = v14->_completion;
    v14->_completion = v20;

    objc_storeStrong(&v14->_profileExtension, a4);
    v22 = [v11 profile];
    objc_storeWeak(&v14->_profile, v22);

    v23 = [v11 createHealthRecordsXPCServiceClient];
    healthRecordsServiceClient = v14->_healthRecordsServiceClient;
    v14->_healthRecordsServiceClient = v23;

    v25 = [v11 createHealthRecordsIngestionServiceClient];
    healthRecordsIngestionServiceClient = v14->_healthRecordsIngestionServiceClient;
    v14->_healthRecordsIngestionServiceClient = v25;

    v27 = [(HDHealthRecordsProfileExtension *)v14->_profileExtension createHealthRecordsLegacyIngestionServiceClient];
    legacyXPCIngestionServiceClient = v14->_legacyXPCIngestionServiceClient;
    v14->_legacyXPCIngestionServiceClient = v27;

    v29 = objc_alloc_init(HDClinicalIngestionAnalyticsAccumulator);
    analyticsAccumulator = v14->_analyticsAccumulator;
    v14->_analyticsAccumulator = v29;

    v14->_ivarLock._os_unfair_lock_opaque = 0;
    v31 = [v12 count];
    if (v31)
    {
      v32 = [[NSSet alloc] initWithArray:v12];
    }

    else
    {
      v32 = 0;
    }

    objc_storeStrong(&v14->_accountIdentifiers, v32);
    if (v31)
    {
    }
  }

  return v14;
}

- (void)main
{
  v3 = objc_alloc_init(NSDate);
  taskBeganDate = self->_taskBeganDate;
  self->_taskBeganDate = v3;

  [(HDClinicalIngestionTask *)self _didStart];
  v37 = self;
  obj = [(HDHealthRecordsProfileExtension *)self->_profileExtension accountManager];
  if (!obj)
  {
    v22 = [(HDClinicalIngestionTask *)self profile];
    v23 = [NSError hk_error:100 format:@"HDClinicalIngestionTask can only be used on profiles with account managers, but %@ doesn't have one", v22];

    [(HDClinicalIngestionTask *)self _cancelWithError:v23];
    v31 = 0;
    v32 = 0;
    v34 = 0;
    goto LABEL_31;
  }

  objc_storeStrong(&self->_accountManager, obj);
  if (![(HDClinicalIngestionTask *)self _ingestionAllowed])
  {
    v5 = [(HDClinicalIngestionTask *)self context];
    v6 = [v5 shouldSkipFetch];

    if ((v6 & 1) == 0)
    {
      _HKInitializeLogging();
      v25 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ will not perform ingestion because ingestion is not allowed in this context", buf, 0xCu);
      }

      v31 = 0;
      v32 = 0;
      v34 = 0;
      [(HDClinicalIngestionTask *)self _cancelWithError:0];
      goto LABEL_26;
    }
  }

  v49 = 0;
  v50 = 0;
  v48 = 0;
  v7 = [(HDClinicalIngestionTask *)self _prepareAccounts:&v50 userFetchEligibleAccounts:&v49 withError:&v48];
  v8 = v50;
  v31 = v49;
  v32 = v48;
  v34 = v8;
  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    v24 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9BE10(v37, v32, v24);
    }

LABEL_24:
    v27 = v37;
    goto LABEL_25;
  }

  if ([v8 count])
  {
    [(HDClinicalIngestionTask *)v37 _prepareUpdateGatewaysOperationsForAccounts:v8];
    [(HDClinicalIngestionTask *)v37 _notifyIfWorkMayBeDoneForAccounts:v31];
    v35 = objc_alloc_init(NSOperationQueue);
    v9 = [NSString stringWithFormat:@"%@-Main-WorkQueue", objc_opt_class()];
    [v35 setName:v9];

    [v35 setQualityOfService:17];
    [v35 setMaxConcurrentOperationCount:2];
    v36 = objc_alloc_init(NSOperationQueue);
    v10 = [NSString stringWithFormat:@"%@-Main-ExtractionQueue", objc_opt_class()];
    [v36 setName:v10];

    [v36 setQualityOfService:17];
    [v36 setMaxConcurrentOperationCount:2];
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v8 count];
      *buf = 138543618;
      *&buf[4] = v37;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling ingestion & extraction operations for %ld accounts", buf, 0x16u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v34 = v8;
    v14 = [v34 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v14)
    {
      v15 = *v45;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v45 != v15)
          {
            objc_enumerationMutation(v34);
          }

          v17 = *(*(&v44 + 1) + 8 * i);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2810000000;
          v52 = &unk_DF55D;
          v53[0] = 0;
          atomic_exchange(v53, 1u);
          v18 = dispatch_semaphore_create(0);
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_3A48;
          v41[3] = &unk_1057B0;
          v41[4] = v37;
          v41[5] = v17;
          v19 = v18;
          v42 = v19;
          v43 = buf;
          [v35 addOperationWithBlock:v41];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_3C58;
          v38[3] = &unk_1057D8;
          v38[4] = v37;
          v38[5] = v17;
          v40 = buf;
          v20 = v19;
          v39 = v20;
          [v36 addOperationWithBlock:v38];

          _Block_object_dispose(buf, 8);
        }

        v14 = [v34 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v14);
    }

    [v35 waitUntilAllOperationsAreFinished];
    [v36 waitUntilAllOperationsAreFinished];
    v21 = [(HDClinicalIngestionTask *)v37 _analyticsStringAfterCollectingAndSubmittingIngestionAnalyticsOnQueue:v36];
    [(HDClinicalIngestionTask *)v37 setAnalyticsString:v21];

    [(HDClinicalIngestionTask *)v37 _runIngestionDoneOperations];
    goto LABEL_26;
  }

  _HKInitializeLogging();
  v26 = HKLogHealthRecords;
  if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_24;
  }

  *buf = 138543362;
  v27 = v37;
  *&buf[4] = v37;
  _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ will not perform ingestion since there are no CHR accounts", buf, 0xCu);
LABEL_25:
  [(HDClinicalIngestionTask *)v27 _cancelWithError:v32];
LABEL_26:
  if (([(HDClinicalIngestionTaskContext *)v37->_context options]& 0x80) != 0)
  {
    _HKInitializeLogging();
    v28 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v37;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ task has option never finish set, starting to spin", buf, 0xCu);
    }

    v29 = dispatch_semaphore_create(0);
    neverFinishSemaphore = v37->_neverFinishSemaphore;
    v37->_neverFinishSemaphore = v29;

    dispatch_semaphore_wait(v37->_neverFinishSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  [(NSDate *)v37->_taskBeganDate timeIntervalSinceReferenceDate];
  [(HDClinicalIngestionTask *)v37 _didFinishWithStartTimeInternal:?];
LABEL_31:
}

- (void)_notifyIfWorkMayBeDoneForAccounts:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  v5 = objc_retainBlock(self->_willBeginFetchingAndExtracting);
  willBeginFetchingAndExtracting = self->_willBeginFetchingAndExtracting;
  self->_willBeginFetchingAndExtracting = 0;

  os_unfair_lock_unlock(&self->_ivarLock);
  if (v5)
  {
    v7 = [(HDClinicalIngestionTaskContext *)self->_context shouldFetchImmediately];
    v8 = +[NSDate date];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (v7)
          {
            v7 = 1;
          }

          else
          {
            v7 = [*(*(&v14 + 1) + 8 * v13) shouldPerformFetchWithNowDate:{v8, v14}];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    if (v7)
    {
      v5[2](v5, self);
    }
  }
}

- (void)_performFileImportWithAccount:(id)a3
{
  v4 = a3;
  v5 = [HDClinicalIngestionFileImportOperation alloc];
  v6 = [(HDClinicalIngestionTaskContext *)self->_context inputFileHandle];
  v7 = [(HDClinicalIngestionFileImportOperation *)v5 initWithFileHandle:v6];

  [(HDClinicalIngestionFileImportOperation *)v7 start];
  v8 = [v4 identifier];
  [(HDClinicalIngestionTask *)self _accountWithIdentifier:v8 addOutcomeInfo:4];

  v9 = [(HDClinicalIngestionFileImportOperation *)v7 documentData];

  if (v9)
  {
    v10 = [v4 gateway];
    v11 = [v10 FHIRVersion];

    v12 = [HDFHIRResourceData alloc];
    v13 = [(HDClinicalIngestionFileImportOperation *)v7 documentData];
    v14 = [v12 initWithData:v13 sourceURL:0 FHIRVersion:v11];

    _HKInitializeLogging();
    v15 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_9BEDC(self, v15, v4);
    }

    v16 = [HDClinicalIngestionExtractReferencesOperation alloc];
    v51 = v14;
    v53 = v14;
    v17 = [NSArray arrayWithObjects:&v53 count:1];
    v18 = [(HDClinicalIngestionExtractReferencesOperation *)v16 initWithTask:self account:v4 resourceData:v17 sourceResourceObjects:0 nextOperation:0];

    [(HDClinicalIngestionExtractReferencesOperation *)v18 start];
    v19 = [(HDClinicalIngestionExtractReferencesOperation *)v18 extractionResult];
    v20 = [v19 completeResources];

    v21 = [(HDClinicalIngestionExtractReferencesOperation *)v18 extractionResult];
    v22 = [v21 incompleteResources];
    v23 = [v22 hk_map:&stru_105818];
    v24 = [v20 arrayByAddingObjectsFromArray:v23];

    v25 = [(HDClinicalIngestionExtractReferencesOperation *)v18 extractionResult];
    v26 = [v25 unresolvableReferences];
    v27 = [v26 hk_map:&stru_105838];
    v28 = [v24 arrayByAddingObjectsFromArray:v27];

    _HKInitializeLogging();
    v29 = HKLogHealthRecords;
    if (v28)
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        v31 = [v4 identifier];
        v32 = [v28 count];
        *buf = 138543874;
        v55 = self;
        v56 = 2114;
        v57 = v31;
        v58 = 2048;
        v59 = v32;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: extractReferencesOperation complete: %lu resources", buf, 0x20u);
      }

      v33 = [(HDClinicalIngestionTask *)self profile];
      v52 = 0;
      v34 = [HDOriginalFHIRResourceEntity insertNewResourceObjects:v28 account:v4 profile:v33 error:&v52];
      v35 = v52;

      _HKInitializeLogging();
      v36 = HKLogHealthRecords;
      if (!v35)
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v36;
          v41 = [v4 identifier];
          *buf = 138543618;
          v55 = self;
          v56 = 2114;
          v57 = v41;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: saveFetchedResources is complete", buf, 0x16u);
        }

        if (v34)
        {
          [(HDClinicalAccountManager *)self->_accountManager didCompleteFetchForAccount:v4 wasFullFetch:1];
        }

        _HKInitializeLogging();
        v42 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v43 = v42;
          v44 = [v4 identifier];
          *buf = 138543874;
          v55 = self;
          v56 = 2114;
          v57 = v44;
          v58 = 1024;
          LODWORD(v59) = v34;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: file Import is complete. Did add new resources? %{BOOL}d", buf, 0x1Cu);
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v37 = v36;
        v38 = [v4 identifier];
        *buf = 138543874;
        v55 = self;
        v56 = 2114;
        v57 = v38;
        v58 = 2112;
        v59 = v35;
        _os_log_error_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: saveFetchedResources failed with error: %@", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v48 = v29;
        v49 = [v4 identifier];
        v50 = [(HDClinicalIngestionExtractReferencesOperation *)v18 resolutionError];
        *buf = 138543874;
        v55 = self;
        v56 = 2114;
        v57 = v49;
        v58 = 2112;
        v59 = v50;
        _os_log_error_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: extractReferencesOperation failed with error: %@", buf, 0x20u);
      }

      v35 = [(HDClinicalIngestionExtractReferencesOperation *)v18 resolutionError];
    }

    [(HDClinicalIngestionTask *)self _markHadError:v35];
LABEL_17:

    goto LABEL_18;
  }

  _HKInitializeLogging();
  v39 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    v45 = v39;
    v46 = [v4 identifier];
    v47 = [(HDClinicalIngestionFileImportOperation *)v7 operationError];
    *buf = 138543874;
    v55 = self;
    v56 = 2114;
    v57 = v46;
    v58 = 2112;
    v59 = v47;
    _os_log_error_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: fileImportOperation failed with error: %@", buf, 0x20u);
  }

  v11 = [(HDClinicalIngestionFileImportOperation *)v7 operationError];
  [(HDClinicalIngestionTask *)self _markHadError:v11];
LABEL_18:
}

- (void)_performFetchWithAccount:(id)a3 batchingSemaphore:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(HDClinicalIngestionTask *)self isCancelled]& 1) == 0)
  {
    v8 = [v6 gateway];

    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    v10 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = v9;
        v12 = [v6 identifier];
        *buf = 138543618;
        v55 = self;
        v56 = 2114;
        v57 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: preparing ingestion", buf, 0x16u);
      }

      v53 = 0;
      v13 = [(HDClinicalIngestionTask *)self _updateGatewayForAccount:v6 error:&v53];
      v14 = v53;
      v15 = v14;
      if ((v13 & 1) == 0)
      {
        _HKInitializeLogging();
        v35 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v41 = v35;
          v42 = [v6 identifier];
          *buf = 138543874;
          v55 = self;
          v56 = 2114;
          v57 = v42;
          v58 = 2114;
          v59 = v15;
          _os_log_error_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: gateway operation failed: %{public}@.", buf, 0x20u);
        }

        [(HDClinicalIngestionTask *)self _markHadError:v15];
        goto LABEL_37;
      }

      v52 = v14;
      v16 = [(HDClinicalIngestionTask *)self _fetchableAccountForAccount:v6 error:&v52];
      v17 = v52;

      if (!v16)
      {
        _HKInitializeLogging();
        v36 = HKLogHealthRecords;
        if (v17)
        {
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v43 = v36;
            v44 = [v6 identifier];
            *buf = 138543874;
            v55 = self;
            v56 = 2114;
            v57 = v44;
            v58 = 2114;
            v59 = v17;
            _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: account fetchability determination failed: %{public}@.", buf, 0x20u);
          }

          [(HDClinicalIngestionTask *)self _markHadError:v17];
        }

        else
        {
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
          {
            v39 = v36;
            v40 = [v6 identifier];
            *buf = 138543618;
            v55 = self;
            v56 = 2114;
            v57 = v40;
            _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: not fetchable, not performing ingestion", buf, 0x16u);
          }

          v17 = 0;
        }

        goto LABEL_36;
      }

      if ([v16 currentCredentialHasOutdatedScopes])
      {
        v18 = [HKClinicalAccountEvent alloc];
        v19 = [v6 identifier];
        v20 = [NSString stringWithFormat:@"%s:%d (%s)", "[HDClinicalIngestionTask _performFetchWithAccount:batchingSemaphore:]", 345, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Ingestion/Pipeline/HDClinicalIngestionTask.m"];
        v21 = +[NSDate date];
        [v6 credentialState];
        v22 = HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState();
        v23 = [v18 initWithAccountIdentifier:v19 type:1 caller:v20 timestamp:v21 eventDescription:@"The current credential had outdated scopes during clinical ingestion task (fetchableAccount.currentCredentialHasOutdatedScopes was true)." credentialStateBefore:v22 credentialStateAfter:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];

        accountManager = self->_accountManager;
        v51 = v17;
        LOBYTE(v20) = [(HDClinicalAccountManager *)accountManager updateCredentialStateForAccount:v6 state:2 event:v23 error:&v51];
        v25 = v51;

        if ((v20 & 1) == 0)
        {
          _HKInitializeLogging();
          v38 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v45 = v38;
            v46 = [v6 identifier];
            *buf = 138543874;
            v55 = self;
            v56 = 2114;
            v57 = v46;
            v58 = 2114;
            v59 = v25;
            _os_log_error_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: attempt to mark account as needing upgrade failed with error: %{public}@", buf, 0x20u);
          }

          v17 = v25;
          goto LABEL_36;
        }

        v26 = [v6 identifier];
        [(HDClinicalIngestionTask *)self _accountWithIdentifier:v26 addOutcomeInfo:64];

        v17 = v25;
      }

      v50 = 0;
      v27 = [(HDClinicalIngestionTask *)self _performResourceFetchWithAccount:v16 batchingSemaphore:v7 error:&v50];
      v28 = v50;
      if (v27)
      {
        _HKInitializeLogging();
        v29 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
          v31 = [v6 identifier];
          *buf = 138543618;
          v55 = self;
          v56 = 2114;
          v57 = v31;
          v32 = "%{public}@ Account %{public}@: ingestion complete";
LABEL_34:
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, v32, buf, 0x16u);
        }
      }

      else
      {
        _HKInitializeLogging();
        v37 = HKLogHealthRecords;
        if (v28)
        {
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v47 = v37;
            v48 = [v6 identifier];
            v49 = [v28 hrs_safelyLoggableDescription];
            *buf = 138543874;
            v55 = self;
            v56 = 2114;
            v57 = v48;
            v58 = 2112;
            v59 = v49;
            _os_log_error_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: ingestion failed: %@", buf, 0x20u);
          }

          [(HDClinicalIngestionTask *)self _markHadError:v28];
          goto LABEL_35;
        }

        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v37;
          v31 = [v6 identifier];
          *buf = 138543618;
          v55 = self;
          v56 = 2114;
          v57 = v31;
          v32 = "%{public}@ Account %{public}@: ingestion not completed";
          goto LABEL_34;
        }
      }

LABEL_35:

LABEL_36:
      v15 = v17;
LABEL_37:

      goto LABEL_38;
    }

    if (v10)
    {
      v33 = v9;
      v34 = [v6 identifier];
      *buf = 138543618;
      v55 = self;
      v56 = 2114;
      v57 = v34;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: not gateway backed, not attempting to ingest", buf, 0x16u);
    }
  }

LABEL_38:
}

- (BOOL)_performResourceFetchWithAccount:(id)a3 batchingSemaphore:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v98 = v6;
  v8 = [v6 currentCredentialScopeSet];
  v91 = +[NSDate date];
  if ([v98 canDetectUnmergeFromPatientResource])
  {
    if ([v98 shouldPerformFullFetchWithNowDate:v91])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = [(HDClinicalIngestionTask *)self context];
    v11 = [v10 queryModeFromOptionsGivenQueryMode:v9];

    v89 = v11;
    v95 = v11 == &dword_0 + 2;
  }

  else
  {
    v12 = [(HDClinicalIngestionTask *)self context];
    if ([v12 isBackgroundTask])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    if ([v98 shouldPerformFullFetchWithNowDate:v91])
    {
      v13 = 1;
    }

    v14 = [(HDClinicalIngestionTask *)self context];
    v89 = [v14 queryModeFromOptionsGivenQueryMode:v13];

    v95 = 0;
  }

  _HKInitializeLogging();
  v15 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v98 identifier];
    v18 = NSStringFromHKFHIRResourceQueryMode();
    *buf = 138543874;
    v114 = self;
    v115 = 2114;
    v116 = v17;
    v117 = 2114;
    v118 = v18;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: %{public}@ fetch beginning", buf, 0x20u);
  }

  v111[0] = 0;
  v111[1] = v111;
  v111[2] = 0x2810000000;
  v111[3] = &unk_DF55D;
  v112 = 0;
  v110[0] = 0;
  v110[1] = v110;
  v110[2] = 0x2020000000;
  v110[3] = 0;
  v19 = [HDClinicalIngestionTaskAccountContext alloc];
  v106[0] = _NSConcreteStackBlock;
  v106[1] = 3221225472;
  v106[2] = sub_5A64;
  v106[3] = &unk_105860;
  v108 = v111;
  v109 = v110;
  v20 = v7;
  v107 = v20;
  v21 = [(HDClinicalIngestionTaskAccountContext *)v19 initWithIngestionTask:self account:v98 queryMode:v89 ingestStartDate:v91 didSaveResourcesHandler:v106];
  v93 = objc_alloc_init(NSMutableArray);
  v99 = objc_alloc_init(NSMutableArray);
  v92 = objc_alloc_init(NSMutableArray);
  v96 = v21;
  v85 = v20;
  v22 = [HKClinicalGateway alloc];
  v23 = [v98 gateway];
  v90 = [v22 initWithDaemonClinicalGateway:v23];

  v24 = [v90 resourceSchemas];
  v88 = [v24 hk_filter:&stru_1058A0];

  v94 = [v88 count];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v25 = [v90 resourceSchemas];
  v26 = [v25 countByEnumeratingWithState:&v102 objects:v121 count:16];
  if (v26)
  {
    v27 = *v103;
    do
    {
      v28 = 0;
      do
      {
        if (*v103 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v102 + 1) + 8 * v28);
        if (v8 && [v8 hasAtLeastOneResourceTypeScope] && (objc_msgSend(v29, "name"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v8, "canReadResourceType:", v30), v30, (v31 & 1) == 0))
        {
          _HKInitializeLogging();
          v32 = HKLogHealthRecords;
          if (os_log_type_enabled(&v32->super.super, OS_LOG_TYPE_DEFAULT))
          {
            v47 = [v98 identifier];
            v48 = [v29 name];
            v49 = [v8 originalScopes];
            *buf = 138544130;
            v114 = self;
            v115 = 2114;
            v116 = v47;
            v117 = 2114;
            v118 = v48;
            v119 = 2114;
            v120 = v49;
            _os_log_impl(&dword_0, &v32->super.super, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: Skipping ingest for resource type %{public}@ because a valid scope wasn't found in %{public}@", buf, 0x2Au);
          }
        }

        else
        {
          [v29 minCompatibleAPIVersion];
          if (HKProviderServiceIsMinCompatibleAPIVersionSupported())
          {
            v32 = [[HDClinicalIngestionTaskResourceSchemaOperation alloc] initWithResourceSchema:v29 accountContext:v96];
            if (v95)
            {
              v33 = [v29 name];
              v34 = [v33 isEqualToString:@"Patient"];

              if (v34)
              {
                _HKInitializeLogging();
                v35 = HKLogHealthRecords;
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  v36 = [v98 identifier];
                  v37 = [v29 name];
                  *buf = 138543874;
                  v114 = self;
                  v115 = 2114;
                  v116 = v36;
                  v117 = 2114;
                  v118 = v37;
                  _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: Preflighting ingest for %{public}@", buf, 0x20u);
                }

                v38 = v93;
LABEL_35:
                [v38 addObject:v32];
                goto LABEL_36;
              }
            }

            v38 = v99;
            if (!v94)
            {
              goto LABEL_35;
            }

            v41 = [v29 name];
            v42 = [v41 isEqualToString:@"DiagnosticReport"];

            v38 = v99;
            if (!v42)
            {
              goto LABEL_35;
            }

            _HKInitializeLogging();
            v43 = HKLogHealthRecords;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [v98 identifier];
              v45 = [v29 name];
              *buf = 138543874;
              v114 = self;
              v115 = 2114;
              v116 = v44;
              v117 = 2114;
              v118 = v45;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: Postponing ingest for %{public}@ until all other resources have been ingested", buf, 0x20u);
            }

            [v92 addObject:v32];
            v46 = [v98 identifier];
            [(HDClinicalIngestionTask *)self _accountWithIdentifier:v46 addOutcomeInfo:1024];
          }

          else
          {
            _HKInitializeLogging();
            v32 = HKLogHealthRecords;
            if (os_log_type_enabled(&v32->super.super, OS_LOG_TYPE_DEFAULT))
            {
              v39 = [v98 identifier];
              v40 = [v29 minCompatibleAPIVersion];
              *buf = 138543874;
              v114 = self;
              v115 = 2114;
              v116 = v39;
              v117 = 2050;
              v118 = v40;
              _os_log_impl(&dword_0, &v32->super.super, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: Detected a resource schema with MCAV %{public}ld, which is greater than our version, skipping this schema", buf, 0x20u);
            }
          }
        }

LABEL_36:

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v50 = [v25 countByEnumeratingWithState:&v102 objects:v121 count:16];
      v26 = v50;
    }

    while (v50);
  }

  v51 = [(HDClinicalIngestionTask *)self _runAndAwaitPreflightOperations:v93 accountContext:v96];
  v52 = [(HDClinicalIngestionTaskAccountContext *)v96 runAndAwaitSchemaOperations:v99];
  if ([v51 atLeastOneFetchSucceeded])
  {
    v53 = 1;
  }

  else
  {
    v53 = [v52 atLeastOneFetchSucceeded];
  }

  if ([v51 accountMustLimitRequests])
  {
    v54 = &dword_0 + 1;
  }

  else
  {
    v54 = [v52 accountMustLimitRequests];
  }

  if ([v92 count])
  {
    _HKInitializeLogging();
    v55 = HKLogHealthRecords;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = [v98 identifier];
      v57 = [v92 count];
      v58 = [v92 count];
      v59 = @"s";
      *buf = 138544130;
      v114 = self;
      v115 = 2114;
      if (v58 == &dword_0 + 1)
      {
        v59 = &stru_1090E8;
      }

      v116 = v56;
      v117 = 2048;
      v118 = v57;
      v119 = 2114;
      v120 = v59;
      _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: Running %ld postponed ingest operation%{public}@", buf, 0x2Au);
    }

    v60 = [(HDClinicalIngestionTaskAccountContext *)v96 runAndAwaitSchemaOperations:v92];
    v61 = v60;
    if (v53)
    {
      v53 = 1;
    }

    else
    {
      v53 = [v60 atLeastOneFetchSucceeded];
    }
  }

  v62 = [v98 identifier];
  [(HDClinicalIngestionTask *)self _accountWithIdentifier:v62 addOutcomeInfo:8];

  [(HDClinicalIngestionTaskAccountContext *)v96 queryMode];
  if (HKFHIRResourceQueryModeIncludesFullMode())
  {
    v63 = [v98 identifier];
    [(HDClinicalIngestionTask *)self _accountWithIdentifier:v63 addOutcomeInfo:16];
  }

  if (v54)
  {
    v64 = [v98 identifier];
    [(HDClinicalIngestionTask *)self _accountWithIdentifier:v64 addOutcomeInfo:4096];
  }

  else
  {
    v101 = 0;
    v65 = [(HDClinicalIngestionTask *)self _gatewayFeatureOperationsForAccount:v98 queryMode:v89 error:&v101];
    v64 = v101;
    if (v65)
    {
      if ([v65 count])
      {
        [(HDClinicalIngestionTaskAccountContext *)v96 runAndAwaitFeatureOperations:v65];
        v66 = [v98 identifier];
        [(HDClinicalIngestionTask *)self _accountWithIdentifier:v66 addOutcomeInfo:512];
      }
    }

    else
    {
      _HKInitializeLogging();
      v67 = HKLogHealthRecords;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v84 = [v98 identifier];
        *buf = 138543874;
        v114 = self;
        v115 = 2114;
        v116 = v84;
        v117 = 2114;
        v118 = v64;
        _os_log_error_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: gateway feature operations error: %{public}@", buf, 0x20u);
      }

      [(HDClinicalIngestionTaskAccountContext *)v96 didEncounterError:v64];
    }
  }

  v68 = [(HDClinicalIngestionTaskAccountContext *)v96 accumulatedErrors];
  v69 = [v68 count];
  v70 = v69;
  if (v53)
  {
    ModeIncludesFullMode = HKFHIRResourceQueryModeIncludesFullMode();
    if (!v70)
    {
      goto LABEL_69;
    }
  }

  else
  {
    ModeIncludesFullMode = 0;
    if (!v69)
    {
LABEL_69:
      v72 = 0;
      if (ModeIncludesFullMode)
      {
LABEL_70:
        v100 = 0;
        v73 = [(HDClinicalIngestionTask *)self _handleStaleResourcesOfAccount:v98 ingestStartDate:v91 error:&v100];
        v74 = v100;
        if (v73)
        {
          v75 = v68;
        }

        else
        {
          v75 = [v68 arrayByAddingObject:v74];

          v77 = [NSError hrs_errorWithAccumulatedErrors:v75];

          v72 = v77;
        }

        v76 = 0;
        v68 = v75;
        goto LABEL_79;
      }

      goto LABEL_76;
    }
  }

  v72 = [NSError hrs_errorWithAccumulatedErrors:v68];
  v76 = [v72 hrs_hasAuthorizationFailure] | v53 ^ 1;
  if (ModeIncludesFullMode && (v76 & 1) == 0)
  {
    if ([objc_opt_class() _accumulatedErrorAllowsToProceedRunningStaleResourcesOperation:v72])
    {
      goto LABEL_70;
    }

LABEL_76:
    v76 = 0;
  }

LABEL_79:
  if ((v76 | v54))
  {
    [(HDClinicalAccountManager *)self->_accountManager failedToCompleteFetchForAccount:v98 mustLimitFutureRequests:v54];
  }

  else
  {
    v78 = HKFHIRResourceQueryModeIncludesFullMode();
    if (v70)
    {
      v79 = 0;
    }

    else
    {
      v79 = v78;
    }

    [(HDClinicalAccountManager *)self->_accountManager didCompleteFetchForAccount:v98 wasFullFetch:v79];
  }

  if (v72)
  {
    v80 = v72;
    v81 = v80;
    if (a5)
    {
      v82 = v80;
      *a5 = v81;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(v110, 8);
  _Block_object_dispose(v111, 8);

  return v72 == 0;
}

- (id)_runAndAwaitPreflightOperations:(id)a3 accountContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 count] || (-[HDClinicalIngestionTask isCancelled](self, "isCancelled") & 1) != 0)
  {
    v8 = 0;
    goto LABEL_29;
  }

  _HKInitializeLogging();
  v9 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9BF7C(self, v9, v7);
  }

  v10 = [v7 account];
  v11 = [v10 identifier];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v51 = 0;
  v13 = [HDOriginalFHIRResourceEntity resourceDataForPatientResourceForAccountWithIdentifier:v11 profile:WeakRetained error:&v51];
  v14 = v51;

  if (v13 || !v14)
  {
    v8 = [v7 runAndAwaitSchemaOperations:v6];
    if (!v13)
    {
      goto LABEL_28;
    }

    v15 = [v7 account];
    v16 = [v15 identifier];
    v17 = objc_loadWeakRetained(&self->_profile);
    v50 = 0;
    v18 = [HDOriginalFHIRResourceEntity resourceDataForPatientResourceForAccountWithIdentifier:v16 profile:v17 error:&v50];
    v14 = v50;

    if (!v18)
    {
      _HKInitializeLogging();
      v29 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v30 = v29;
        v31 = [v7 account];
        v32 = [v31 identifier];
        *buf = 138543874;
        v53 = self;
        v54 = 2114;
        v55 = v32;
        v56 = 2114;
        v57 = v14;
        _os_log_error_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: failed to retrieve incoming Patient resource: %{public}@", buf, 0x20u);
      }

      goto LABEL_28;
    }

    v19 = [HDClinicalIngestionComparePatientResourcesOperation alloc];
    v20 = [v7 account];
    v21 = [(HDClinicalIngestionComparePatientResourcesOperation *)v19 initWithTask:self account:v20 existingResourceData:v13 incomingResourceData:v18];

    [(HDClinicalIngestionComparePatientResourcesOperation *)v21 start];
    v22 = [(HDClinicalIngestionComparePatientResourcesOperation *)v21 result];
    v23 = [v22 outcome];

    if ((v23 & 8) == 0)
    {
      v24 = [(HDClinicalIngestionOperation *)v21 operationError];

      _HKInitializeLogging();
      v25 = HKLogHealthRecords;
      if (v24)
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          log = v25;
          v47 = [v7 account];
          v26 = [v47 identifier];
          v27 = [(HDClinicalIngestionOperation *)v21 operationError];
          *buf = 138543874;
          v53 = self;
          v54 = 2114;
          v55 = v26;
          v56 = 2114;
          v57 = v27;
          _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: failed to compare Patient resources: %{public}@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v25;
        v41 = [v7 account];
        v42 = [v41 identifier];
        *buf = 138543618;
        v53 = self;
        v54 = 2114;
        v55 = v42;
        _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: no unmerge detected", buf, 0x16u);
      }

      goto LABEL_27;
    }

    _HKInitializeLogging();
    v33 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      v48 = [v7 account];
      v35 = [v48 identifier];
      *buf = 138543618;
      v53 = self;
      v54 = 2114;
      v55 = v35;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: unmerge detected!!", buf, 0x16u);
    }

LABEL_24:
    _HKInitializeLogging();
    v36 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      v38 = [v7 account];
      v39 = [v38 identifier];
      *buf = 138543618;
      v53 = self;
      v54 = 2114;
      v55 = v39;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: upgrading ingest to full query mode", buf, 0x16u);
    }

    [v7 changeQueryMode:1];
    v18 = [v7 account];
    v21 = [v18 identifier];
    [(HDClinicalIngestionTask *)self _accountWithIdentifier:v21 addOutcomeInfo:2048];
LABEL_27:

    goto LABEL_28;
  }

  if (([v14 hk_isObjectNotFoundError] & 1) == 0)
  {
    _HKInitializeLogging();
    v28 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v43 = v28;
      v44 = [v7 account];
      v45 = [v44 identifier];
      *buf = 138543874;
      v53 = self;
      v54 = 2114;
      v55 = v45;
      v56 = 2114;
      v57 = v14;
      _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: failed to retrieve existing Patient resource: %{public}@", buf, 0x20u);
    }

    v8 = [v7 runAndAwaitSchemaOperations:v6];
    goto LABEL_24;
  }

  v8 = [v7 runAndAwaitSchemaOperations:v6];
LABEL_28:

LABEL_29:

  return v8;
}

- (BOOL)_handleStaleResourcesOfAccount:(id)a3 ingestStartDate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(NSOperationQueue);
  v11 = [NSString stringWithFormat:@"%@-ResourceFetch-StaleResourcesQueue", objc_opt_class()];
  [v10 setName:v11];

  [v10 setQualityOfService:17];
  _HKInitializeLogging();
  v12 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v8 identifier];
    *buf = 138543618;
    v26 = self;
    v27 = 2114;
    v28 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: running stale resources operation", buf, 0x16u);
  }

  v15 = [[HDClinicalIngestionHandleStaleResourcesOperation alloc] initWithTask:self account:v8 ingestStartDate:v9 nextOperation:0];

  [v10 addOperation:v15];
  [v10 waitUntilAllOperationsAreFinished];
  v16 = [v8 identifier];
  [(HDClinicalIngestionTask *)self _accountWithIdentifier:v16 addOutcomeInfo:256];

  v17 = [(HDClinicalIngestionOperation *)v15 operationError];

  if (v17)
  {
    _HKInitializeLogging();
    v18 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v22 = v18;
      v23 = [v8 identifier];
      v24 = [(HDClinicalIngestionOperation *)v15 operationError];
      *buf = 138543874;
      v26 = self;
      v27 = 2114;
      v28 = v23;
      v29 = 2114;
      v30 = v24;
      _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: stale resources operation failed: %{public}@", buf, 0x20u);
    }

    v19 = [(HDClinicalIngestionOperation *)v15 operationError];
    if (v19)
    {
      if (a5)
      {
        v20 = v19;
        *a5 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v17 == 0;
}

- (void)_performExtractionWithAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  [(HDClinicalIngestionTask *)self _accountWithIdentifier:v5 addOutcomeInfo:32];

  p_vtable = &OBJC_METACLASS___HDClinicalIngestionTaskContext.vtable;
  v7 = &off_110000;
  v8 = &HKLogHealthRecords;
  v25 = v4;
  while (1)
  {
    v9 = [objc_alloc((p_vtable + 381)) initWithTask:self account:v4 nextOperation:0];
    [v9 setBatchSize:v7];
    [v9 start];
    if ([v9 isCancelled])
    {
      break;
    }

    v10 = [v9 countOfExtractedResources];
    _HKInitializeLogging();
    v11 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      [v4 identifier];
      v13 = v7;
      v14 = p_vtable;
      v16 = v15 = v8;
      v17 = [v9 countOfExtractedResources];
      v18 = [v9 countOfExtractedMedicalRecords];
      v19 = [v9 countOfExtractedClinicalRecords];
      *buf = 138544386;
      v27 = self;
      v28 = 2114;
      v29 = v16;
      v30 = 2048;
      v31 = v17;
      v32 = 2048;
      v33 = v18;
      v34 = 2048;
      v35 = v19;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: extraction of %ld resources produced %ld medical and %ld clinical records", buf, 0x34u);

      v8 = v15;
      p_vtable = v14;
      v7 = v13;
      v4 = v25;
    }

    if (!v10)
    {
      goto LABEL_10;
    }

    v20 = [(HDClinicalIngestionTask *)self isCancelled];

    if (v20)
    {
      goto LABEL_11;
    }
  }

  _HKInitializeLogging();
  v21 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    v22 = v21;
    v23 = [v4 identifier];
    v24 = [v9 extractionError];
    *buf = 138543874;
    v27 = self;
    v28 = 2114;
    v29 = v23;
    v30 = 2112;
    v31 = v24;
    _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: extraction failed: %@", buf, 0x20u);
  }

LABEL_10:

LABEL_11:
}

- (void)_didStart
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "START ingestion task %{public}@", &v6, 0xCu);
  }

  v4 = [HDDaemonTransaction transactionWithOwner:self activityName:self->_taskIdentifier];
  transaction = self->_transaction;
  self->_transaction = v4;
}

- (void)_didFinishWithStartTimeInternal:(double)a3
{
  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  os_unfair_lock_lock(&self->_ivarLock);
  v7 = v6 - a3;
  v8 = objc_retainBlock(self->_willFinishFetchingAndExtracting);
  willFinishFetchingAndExtracting = self->_willFinishFetchingAndExtracting;
  self->_willFinishFetchingAndExtracting = 0;

  v10 = objc_retainBlock(self->_didFinishFetchingAndExtracting);
  didFinishFetchingAndExtracting = self->_didFinishFetchingAndExtracting;
  self->_didFinishFetchingAndExtracting = 0;

  v12 = objc_retainBlock(self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  if ([(HDClinicalIngestionTask *)self isCancelled])
  {
    v14 = self->_ingestionError == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = [(HDClinicalIngestionTask *)self _ivarLock_synthesizeTaskOutcomeWithSuccess:v14 runTime:v7];
  objc_storeStrong(&self->_outcome, v15);
  os_unfair_lock_unlock(&self->_ivarLock);
  if (v8)
  {
    v8[2](v8, self);
  }

  _HKInitializeLogging();
  v16 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "FINISH ingestion task %{public}@. Runtime: %.2f sec", buf, 0x16u);
  }

  if (v10)
  {
    v10[2](v10, self);
  }

  v19 = v12;
  v17 = v15;
  v18 = v12;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)_markHadError:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_ivarLock);
  ingestionError = self->_ingestionError;
  self->_ingestionError = v4;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)_cancelWithError:(id)a3
{
  if (a3)
  {
    [(HDClinicalIngestionTask *)self _markHadError:?];
  }

  [(HDClinicalIngestionTask *)self cancel];
}

- (void)cancel
{
  if (self->_neverFinishSemaphore)
  {
    _HKInitializeLogging();
    v3 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9C02C(self, v3);
    }

    dispatch_semaphore_signal(self->_neverFinishSemaphore);
    neverFinishSemaphore = self->_neverFinishSemaphore;
    self->_neverFinishSemaphore = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = HDClinicalIngestionTask;
    [(HDClinicalIngestionTask *)&v5 cancel];
  }
}

- (id)_gatewaysOperationForAccount:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(HDClinicalIngestionTask *)self updateGatewayOperationsByAccountIdentifier];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: no update gateways operation created", &v9, 0x16u);
    }
  }

  return v6;
}

- (BOOL)_ingestionAllowed
{
  v3 = [(HDClinicalIngestionTask *)self context];
  v4 = [v3 isBackgroundTask];

  if (v4 && (+[MCProfileConnection sharedConnection](MCProfileConnection, "sharedConnection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isAutomaticAppUpdatesAllowed], v5, !v6))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v7 = [(HDClinicalIngestionTask *)self profile];
    v8 = [v7 daemon];
    v9 = [v8 behavior];
    v10 = [v9 healthAppNotInstalled] ^ 1;
  }

  return v10;
}

- (void)_prepareUpdateGatewaysOperationsForAccounts:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalIngestionTask *)self context];
  v6 = [v5 shouldSkipGatewaysUpdate];

  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v4 hk_map:&stru_105948];
      v10 = [v9 componentsJoinedByString:{@", "}];
      v13 = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ skipping _prepareUpdateGatewaysOperationsForAccounts %{public}@", &v13, 0x16u);

LABEL_6:
    }
  }

  else if (!self->_updateGatewayOperationsByAccountIdentifier)
  {
    v8 = [(HDHealthRecordsProfileExtension *)self->_profileExtension providerServiceManager];
    v11 = [v8 createUpdateGatewaysOperationsForAccounts:v4];
    updateGatewayOperationsByAccountIdentifier = self->_updateGatewayOperationsByAccountIdentifier;
    self->_updateGatewayOperationsByAccountIdentifier = v11;

    goto LABEL_6;
  }
}

- (BOOL)_prepareAccounts:(id *)a3 userFetchEligibleAccounts:(id *)a4 withError:(id *)a5
{
  accountManager = self->_accountManager;
  v10 = [(NSSet *)self->_accountIdentifiers allObjects];
  v23 = 0;
  v11 = [(HDClinicalAccountManager *)accountManager accountsWithIdentifiers:v10 error:&v23];
  v12 = v23;

  if (!v11)
  {
LABEL_5:
    v15 = v12;
    if (v15)
    {
      if (a5)
      {
        v20 = v15;
        v19 = 0;
        *a5 = v15;
LABEL_10:
        v16 = v15;
        goto LABEL_11;
      }

      _HKLogDroppedError();
    }

    v19 = 0;
    goto LABEL_10;
  }

  v13 = self->_accountManager;
  v14 = [(NSSet *)self->_accountIdentifiers allObjects];
  v22 = v12;
  v15 = [(HDClinicalAccountManager *)v13 userFetchEligibleAccountsWithIdentifiers:v14 error:&v22];
  v16 = v22;

  [(HDClinicalIngestionTask *)self _markAccountsWithoutCredentialsAsReloginNeeded:v11];
  if (!v15)
  {
    v12 = v16;
    goto LABEL_5;
  }

  *a3 = [v11 copy];
  *a4 = [v15 copy];
  v17 = [v11 hk_mapToDictionary:&stru_105988];
  perAccountInfo = self->_perAccountInfo;
  self->_perAccountInfo = v17;

  v19 = 1;
LABEL_11:

  return v19;
}

- (void)_markAccountsWithoutCredentialsAsReloginNeeded:(id)a3
{
  v3 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 credential];
        if (!v9)
        {
          if ([v8 needsRelogin])
          {
            continue;
          }

          v10 = [HKClinicalAccountEvent alloc];
          v11 = [v8 identifier];
          v12 = [NSString stringWithFormat:@"%s:%d (%s)", "[HDClinicalIngestionTask _markAccountsWithoutCredentialsAsReloginNeeded:]", 830, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Ingestion/Pipeline/HDClinicalIngestionTask.m"];
          v13 = +[NSDate date];
          [v8 credentialState];
          v14 = HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState();
          v15 = [v10 initWithAccountIdentifier:v11 type:1 caller:v12 timestamp:v13 eventDescription:@"No credentials were found for the account during clinical ingestion task." credentialStateBefore:v14 credentialStateAfter:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];

          accountManager = self->_accountManager;
          v21 = 0;
          [(HDClinicalAccountManager *)accountManager updateCredentialStateForAccount:v8 state:1 event:v15 error:&v21];
          v9 = v21;
          if (v9)
          {
            _HKInitializeLogging();
            v17 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
            {
              v18 = v17;
              v19 = [v8 identifier];
              *buf = 138543874;
              v27 = self;
              v28 = 2114;
              v29 = v19;
              v30 = 2114;
              v31 = v9;
              _os_log_fault_impl(&dword_0, v18, OS_LOG_TYPE_FAULT, "%{public}@ Error marking account: %{public}@ as needs relogin %{public}@", buf, 0x20u);
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);
  }
}

- (BOOL)_updateGatewayForAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalIngestionTask *)self _gatewaysOperationForAccount:v6];
  if (v7)
  {
    v8 = [(HDClinicalIngestionTask *)self profileExtension];
    v9 = [v8 providerServiceManager];
    [v9 addOperationUnlessAlreadyEnqueued:v7];

    [v7 waitUntilFinished];
    v10 = [v6 identifier];
    [(HDClinicalIngestionTask *)self _accountWithIdentifier:v10 addOutcomeInfo:1];
  }

  v11 = [v7 isCancelled];
  if (v11)
  {
    v12 = [v7 error];
    if (v12)
    {
      if (a4)
      {
        v13 = v12;
        *a4 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v11 ^ 1;
}

- (id)_fetchableAccountForAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  accountManager = self->_accountManager;
  v8 = [v6 identifier];
  v9 = [(HDClinicalAccountManager *)accountManager accountWithIdentifier:v8 error:a4];

  if (v9)
  {
    v10 = [(HDClinicalIngestionPerAccountOperation *)[HDClinicalIngestionIsAccountFetchableOperation alloc] initWithTask:self account:v9 nextOperation:0];
    [(HDClinicalIngestionIsAccountFetchableOperation *)v10 start];
    v11 = 0;
    if ([(HDClinicalIngestionIsAccountFetchableOperation *)v10 accountFetchable])
    {
      v12 = [v6 identifier];
      [(HDClinicalIngestionTask *)self _accountWithIdentifier:v12 addOutcomeInfo:2];

      v11 = v9;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_gatewayFeatureOperationsForAccount:(id)a3 queryMode:(int64_t)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [v6 gateway];

  if (v7)
  {
    v8 = [v6 gateway];
    v9 = [v8 hkGateway];

    *buf = objc_opt_class();
    v42 = [NSArray arrayWithObjects:buf count:1];
    v46 = v9;
    v47 = objc_alloc_init(NSMutableArray);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [v9 features];
    v43 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (!v43)
    {
      goto LABEL_32;
    }

    v41 = *v55;
    *&v10 = 138544130;
    v38 = v10;
    v48 = v6;
    while (1)
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v55 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v54 + 1) + 8 * i);
        _HKInitializeLogging();
        v13 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
        {
          v34 = v13;
          v35 = [v6 identifier];
          v36 = [v12 name];
          *buf = 138543874;
          *&buf[4] = self;
          v59 = 2114;
          v60 = v35;
          v61 = 2114;
          v62 = v36;
          _os_log_debug_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%{public}@ Account %{public}@: checking for gateway feature %{public}@ handlers", buf, 0x20u);
        }

        [v12 minCompatibleAPIVersion];
        if ((HKProviderServiceIsMinCompatibleAPIVersionSupported() & 1) == 0)
        {
          _HKInitializeLogging();
          v14 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
          {
            v15 = v14;
            v16 = [v6 identifier];
            v17 = [v12 name];
            *buf = 138543874;
            *&buf[4] = self;
            v59 = 2114;
            v60 = v16;
            v61 = 2114;
            v62 = v17;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%{public}@ Account %{public}@: gateway feature %{public}@ is not supported by this device, skipping", buf, 0x20u);
          }
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v18 = v42;
        v19 = [v18 countByEnumeratingWithState:&v50 objects:v65 count:16];
        if (v19)
        {
          v20 = v19;
          v44 = i;
          v21 = 0;
          v22 = *v51;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v51 != v22)
              {
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v50 + 1) + 8 * j);
              if (([v24 isSubclassOfClass:objc_opt_class()] & 1) == 0)
              {
                sub_9C0A4(a2, self, v24);
              }

              v25 = [v12 name];
              v26 = [v24 featureName];
              v27 = [v25 isEqualToString:v26];

              if (v27)
              {
                ++v21;
                v28 = [[v24 alloc] initWithTask:self account:v48 gateway:v46 feature:v12 queryMode:a4];
                [v47 addObject:v28];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v50 objects:v65 count:16];
          }

          while (v20);

          v6 = v48;
          i = v44;
          if (v21)
          {
            _HKInitializeLogging();
            v29 = HKLogHealthRecords;
            if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
            {
              continue;
            }

            v30 = v29;
            v31 = [v48 identifier];
            v32 = [v12 name];
            *buf = v38;
            *&buf[4] = self;
            v59 = 2114;
            v60 = v31;
            v61 = 2114;
            v62 = v32;
            v63 = 2050;
            v64 = v21;
            _os_log_debug_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%{public}@ Account %{public}@: gateway feature %{public}@ is handled by %{public}lld", buf, 0x2Au);
            goto LABEL_29;
          }
        }

        else
        {
        }

        _HKInitializeLogging();
        v33 = HKLogHealthRecords;
        if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          continue;
        }

        v30 = v33;
        v31 = [v6 identifier];
        v32 = [v12 name];
        *buf = 138543874;
        *&buf[4] = self;
        v59 = 2114;
        v60 = v31;
        v61 = 2114;
        v62 = v32;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: gateway feature %{public}@ NOT handled, no handler is registered", buf, 0x20u);
LABEL_29:
      }

      v43 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
      if (!v43)
      {
LABEL_32:

        goto LABEL_34;
      }
    }
  }

  [NSError hk_assignError:a5 code:3 description:@"account does not have a gateway"];
  v47 = 0;
LABEL_34:

  return v47;
}

- (id)_serialIngestionDoneOperations
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(HDClinicalIngestionOperation *)[HDClinicalIngestionNotifyHealthRecordsDaemonOperation alloc] initWithTask:self nextOperation:0];
  [v3 addObject:v4];
  v5 = [(HDClinicalIngestionTask *)self context];
  v6 = [v5 _unitTesting_shouldSkipAttachmentDownload];

  if ((v6 & 1) == 0)
  {
    v7 = [(HDClinicalIngestionOperation *)[HDClinicalIngestionDownloadAttachmentsOperation alloc] initWithTask:self nextOperation:0];
    [v3 addObject:v7];
  }

  v8 = [[HDClinicalIngestionNewRecordsCheckOperation alloc] initWithTask:self startTime:self->_taskBeganDate];
  [v3 addObject:v8];

  return v3;
}

- (void)_runIngestionDoneOperations
{
  v3 = [(HDClinicalIngestionTask *)self _serialIngestionDoneOperations];
  if ([v3 count])
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = [NSString stringWithFormat:@"%@-Main-IngestDoneQueue", objc_opt_class()];
    [v4 setName:v5];

    [v4 setQualityOfService:17];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          _HKInitializeLogging();
          v12 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v24 = self;
            v25 = 2114;
            v26 = v11;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Running ingest done operation %{public}@", buf, 0x16u);
          }

          [v4 addOperation:v11];
          [v11 waitUntilFinished];
          v13 = [v11 operationError];

          if (v13)
          {
            _HKInitializeLogging();
            v14 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              v16 = v14;
              v17 = [v11 operationError];
              *buf = 138543874;
              v24 = self;
              v25 = 2114;
              v26 = v11;
              v27 = 2112;
              v28 = v17;
              _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%{public}@: Ingest done operation %{public}@ failed with error: %@", buf, 0x20u);
            }

            v15 = [v11 operationError];
            [(HDClinicalIngestionTask *)self _markHadError:v15];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v8);
    }

    v3 = v18;
  }
}

- (void)accumulateIngestionAnalyticsFromTaskStates:(id)a3 gateway:(id)a4
{
  analyticsAccumulator = self->_analyticsAccumulator;
  v6 = a3;
  v7 = [a4 hkGateway];
  [(HDClinicalIngestionAnalyticsAccumulator *)analyticsAccumulator accumulateIngestionAnalyticsFromTaskStates:v6 gateway:v7 completion:0];
}

- (id)_analyticsStringAfterCollectingAndSubmittingIngestionAnalyticsOnQueue:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalIngestionTaskContext *)self->_context shouldSkipIngestionMetricsSubmission];
  v6 = [(HDClinicalAccountManager *)self->_accountManager currentAnalyticsAccumulator];
  v7 = self->_analyticsAccumulator;
  v8 = [(HDHealthRecordsProfileExtension *)self->_profileExtension analyticsManager];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_83BC;
  v26 = sub_83CC;
  v27 = &stru_1090E8;
  v9 = [HKAsynchronousOperation alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_83D4;
  v16[3] = &unk_105A00;
  v10 = v7;
  v17 = v10;
  v11 = v6;
  v18 = v11;
  v20 = &v22;
  v21 = v5 ^ 1;
  v12 = v8;
  v19 = v12;
  v13 = [v9 initWithName:@"ingestion-analytics-submission" operationBlock:v16];
  [v4 addOperation:v13];
  [v4 waitUntilAllOperationsAreFinished];
  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

- (void)_accountWithIdentifier:(id)a3 addOutcomeInfo:(unint64_t)a4
{
  v8 = a3;
  v7 = [(NSDictionary *)self->_perAccountInfo objectForKeyedSubscript:?];
  if (!v7)
  {
    sub_9C118(a2, self, v8);
  }

  [v7 addOutcomeInfo:a4];
}

- (void)recordCountOfAllRecords:(unint64_t)a3 allLabs:(unint64_t)a4 pinnedLabs:(unint64_t)a5
{
  self->_countOfAllRecords = a3;
  self->_countOfAllLabs = a4;
  self->_countOfPinnedLabs = a5;
}

+ (BOOL)_accumulatedErrorAllowsToProceedRunningStaleResourcesOperation:(id)a3
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:HRSAccumulatedIngestionErrorDomain];

  if ((v7 & 1) == 0)
  {
    sub_9C19C(a2, a1);
  }

  if ([v5 hrs_hasAuthorizationFailure])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v5 hrs_accumulatedResourceFetchFailures];
    if ([v9 count])
    {
      v10 = [v9 hk_filter:&stru_105A40];
      v8 = [v10 count] == 0;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(HDClinicalIngestionTask *)self taskIdentifier];
  v6 = [(HDClinicalIngestionTask *)self context];
  v7 = [v3 initWithFormat:@"<%@ %@; context: %@;>", v4, v5, v6, 0];

  return v7;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end