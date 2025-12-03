@interface HDClinicalIngestionTask
+ (BOOL)_accumulatedErrorAllowsToProceedRunningStaleResourcesOperation:(id)operation;
- (BOOL)_handleStaleResourcesOfAccount:(id)account ingestStartDate:(id)date error:(id *)error;
- (BOOL)_ingestionAllowed;
- (BOOL)_performResourceFetchWithAccount:(id)account batchingSemaphore:(id)semaphore error:(id *)error;
- (BOOL)_prepareAccounts:(id *)accounts userFetchEligibleAccounts:(id *)eligibleAccounts withError:(id *)error;
- (BOOL)_updateGatewayForAccount:(id)account error:(id *)error;
- (HDClinicalIngestionTask)init;
- (HDClinicalIngestionTask)initWithContext:(id)context extension:(id)extension accountIdentifiers:(id)identifiers completion:(id)completion;
- (HDProfile)profile;
- (id)_analyticsStringAfterCollectingAndSubmittingIngestionAnalyticsOnQueue:(id)queue;
- (id)_fetchableAccountForAccount:(id)account error:(id *)error;
- (id)_gatewayFeatureOperationsForAccount:(id)account queryMode:(int64_t)mode error:(id *)error;
- (id)_gatewaysOperationForAccount:(id)account;
- (id)_runAndAwaitPreflightOperations:(id)operations accountContext:(id)context;
- (id)_serialIngestionDoneOperations;
- (id)description;
- (void)_accountWithIdentifier:(id)identifier addOutcomeInfo:(unint64_t)info;
- (void)_cancelWithError:(id)error;
- (void)_didFinishWithStartTimeInternal:(double)internal;
- (void)_didStart;
- (void)_markAccountsWithoutCredentialsAsReloginNeeded:(id)needed;
- (void)_markHadError:(id)error;
- (void)_notifyIfWorkMayBeDoneForAccounts:(id)accounts;
- (void)_performExtractionWithAccount:(id)account;
- (void)_performFetchWithAccount:(id)account batchingSemaphore:(id)semaphore;
- (void)_performFileImportWithAccount:(id)account;
- (void)_prepareUpdateGatewaysOperationsForAccounts:(id)accounts;
- (void)_runIngestionDoneOperations;
- (void)accumulateIngestionAnalyticsFromTaskStates:(id)states gateway:(id)gateway;
- (void)cancel;
- (void)main;
- (void)recordCountOfAllRecords:(unint64_t)records allLabs:(unint64_t)labs pinnedLabs:(unint64_t)pinnedLabs;
@end

@implementation HDClinicalIngestionTask

- (HDClinicalIngestionTask)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTask)initWithContext:(id)context extension:(id)extension accountIdentifiers:(id)identifiers completion:(id)completion
{
  contextCopy = context;
  extensionCopy = extension;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v34.receiver = self;
  v34.super_class = HDClinicalIngestionTask;
  v14 = [(HDClinicalIngestionTask *)&v34 init];
  if (v14)
  {
    v15 = +[NSUUID UUID];
    uUIDString = [v15 UUIDString];
    taskIdentifier = v14->_taskIdentifier;
    v14->_taskIdentifier = uUIDString;

    v18 = [contextCopy copy];
    context = v14->_context;
    v14->_context = v18;

    v20 = [completionCopy copy];
    completion = v14->_completion;
    v14->_completion = v20;

    objc_storeStrong(&v14->_profileExtension, extension);
    profile = [extensionCopy profile];
    objc_storeWeak(&v14->_profile, profile);

    createHealthRecordsXPCServiceClient = [extensionCopy createHealthRecordsXPCServiceClient];
    healthRecordsServiceClient = v14->_healthRecordsServiceClient;
    v14->_healthRecordsServiceClient = createHealthRecordsXPCServiceClient;

    createHealthRecordsIngestionServiceClient = [extensionCopy createHealthRecordsIngestionServiceClient];
    healthRecordsIngestionServiceClient = v14->_healthRecordsIngestionServiceClient;
    v14->_healthRecordsIngestionServiceClient = createHealthRecordsIngestionServiceClient;

    createHealthRecordsLegacyIngestionServiceClient = [(HDHealthRecordsProfileExtension *)v14->_profileExtension createHealthRecordsLegacyIngestionServiceClient];
    legacyXPCIngestionServiceClient = v14->_legacyXPCIngestionServiceClient;
    v14->_legacyXPCIngestionServiceClient = createHealthRecordsLegacyIngestionServiceClient;

    v29 = objc_alloc_init(HDClinicalIngestionAnalyticsAccumulator);
    analyticsAccumulator = v14->_analyticsAccumulator;
    v14->_analyticsAccumulator = v29;

    v14->_ivarLock._os_unfair_lock_opaque = 0;
    v31 = [identifiersCopy count];
    if (v31)
    {
      v32 = [[NSSet alloc] initWithArray:identifiersCopy];
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
  selfCopy = self;
  obj = [(HDHealthRecordsProfileExtension *)self->_profileExtension accountManager];
  if (!obj)
  {
    profile = [(HDClinicalIngestionTask *)self profile];
    v23 = [NSError hk_error:100 format:@"HDClinicalIngestionTask can only be used on profiles with account managers, but %@ doesn't have one", profile];

    [(HDClinicalIngestionTask *)self _cancelWithError:v23];
    v31 = 0;
    v32 = 0;
    v34 = 0;
    goto LABEL_31;
  }

  objc_storeStrong(&self->_accountManager, obj);
  if (![(HDClinicalIngestionTask *)self _ingestionAllowed])
  {
    context = [(HDClinicalIngestionTask *)self context];
    shouldSkipFetch = [context shouldSkipFetch];

    if ((shouldSkipFetch & 1) == 0)
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
      sub_9BE10(selfCopy, v32, v24);
    }

LABEL_24:
    v27 = selfCopy;
    goto LABEL_25;
  }

  if ([v8 count])
  {
    [(HDClinicalIngestionTask *)selfCopy _prepareUpdateGatewaysOperationsForAccounts:v8];
    [(HDClinicalIngestionTask *)selfCopy _notifyIfWorkMayBeDoneForAccounts:v31];
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
      *&buf[4] = selfCopy;
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
          v41[4] = selfCopy;
          v41[5] = v17;
          v19 = v18;
          v42 = v19;
          v43 = buf;
          [v35 addOperationWithBlock:v41];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_3C58;
          v38[3] = &unk_1057D8;
          v38[4] = selfCopy;
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
    v21 = [(HDClinicalIngestionTask *)selfCopy _analyticsStringAfterCollectingAndSubmittingIngestionAnalyticsOnQueue:v36];
    [(HDClinicalIngestionTask *)selfCopy setAnalyticsString:v21];

    [(HDClinicalIngestionTask *)selfCopy _runIngestionDoneOperations];
    goto LABEL_26;
  }

  _HKInitializeLogging();
  v26 = HKLogHealthRecords;
  if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_24;
  }

  *buf = 138543362;
  v27 = selfCopy;
  *&buf[4] = selfCopy;
  _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ will not perform ingestion since there are no CHR accounts", buf, 0xCu);
LABEL_25:
  [(HDClinicalIngestionTask *)v27 _cancelWithError:v32];
LABEL_26:
  if (([(HDClinicalIngestionTaskContext *)selfCopy->_context options]& 0x80) != 0)
  {
    _HKInitializeLogging();
    v28 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = selfCopy;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ task has option never finish set, starting to spin", buf, 0xCu);
    }

    v29 = dispatch_semaphore_create(0);
    neverFinishSemaphore = selfCopy->_neverFinishSemaphore;
    selfCopy->_neverFinishSemaphore = v29;

    dispatch_semaphore_wait(selfCopy->_neverFinishSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  [(NSDate *)selfCopy->_taskBeganDate timeIntervalSinceReferenceDate];
  [(HDClinicalIngestionTask *)selfCopy _didFinishWithStartTimeInternal:?];
LABEL_31:
}

- (void)_notifyIfWorkMayBeDoneForAccounts:(id)accounts
{
  accountsCopy = accounts;
  os_unfair_lock_lock(&self->_ivarLock);
  v5 = objc_retainBlock(self->_willBeginFetchingAndExtracting);
  willBeginFetchingAndExtracting = self->_willBeginFetchingAndExtracting;
  self->_willBeginFetchingAndExtracting = 0;

  os_unfair_lock_unlock(&self->_ivarLock);
  if (v5)
  {
    shouldFetchImmediately = [(HDClinicalIngestionTaskContext *)self->_context shouldFetchImmediately];
    v8 = +[NSDate date];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = accountsCopy;
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

          if (shouldFetchImmediately)
          {
            shouldFetchImmediately = 1;
          }

          else
          {
            shouldFetchImmediately = [*(*(&v14 + 1) + 8 * v13) shouldPerformFetchWithNowDate:{v8, v14}];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    if (shouldFetchImmediately)
    {
      v5[2](v5, self);
    }
  }
}

- (void)_performFileImportWithAccount:(id)account
{
  accountCopy = account;
  v5 = [HDClinicalIngestionFileImportOperation alloc];
  inputFileHandle = [(HDClinicalIngestionTaskContext *)self->_context inputFileHandle];
  v7 = [(HDClinicalIngestionFileImportOperation *)v5 initWithFileHandle:inputFileHandle];

  [(HDClinicalIngestionFileImportOperation *)v7 start];
  identifier = [accountCopy identifier];
  [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier addOutcomeInfo:4];

  documentData = [(HDClinicalIngestionFileImportOperation *)v7 documentData];

  if (documentData)
  {
    gateway = [accountCopy gateway];
    fHIRVersion = [gateway FHIRVersion];

    v12 = [HDFHIRResourceData alloc];
    documentData2 = [(HDClinicalIngestionFileImportOperation *)v7 documentData];
    v14 = [v12 initWithData:documentData2 sourceURL:0 FHIRVersion:fHIRVersion];

    _HKInitializeLogging();
    v15 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_9BEDC(self, v15, accountCopy);
    }

    v16 = [HDClinicalIngestionExtractReferencesOperation alloc];
    v51 = v14;
    v53 = v14;
    v17 = [NSArray arrayWithObjects:&v53 count:1];
    v18 = [(HDClinicalIngestionExtractReferencesOperation *)v16 initWithTask:self account:accountCopy resourceData:v17 sourceResourceObjects:0 nextOperation:0];

    [(HDClinicalIngestionExtractReferencesOperation *)v18 start];
    extractionResult = [(HDClinicalIngestionExtractReferencesOperation *)v18 extractionResult];
    completeResources = [extractionResult completeResources];

    extractionResult2 = [(HDClinicalIngestionExtractReferencesOperation *)v18 extractionResult];
    incompleteResources = [extractionResult2 incompleteResources];
    v23 = [incompleteResources hk_map:&stru_105818];
    v24 = [completeResources arrayByAddingObjectsFromArray:v23];

    extractionResult3 = [(HDClinicalIngestionExtractReferencesOperation *)v18 extractionResult];
    unresolvableReferences = [extractionResult3 unresolvableReferences];
    v27 = [unresolvableReferences hk_map:&stru_105838];
    v28 = [v24 arrayByAddingObjectsFromArray:v27];

    _HKInitializeLogging();
    v29 = HKLogHealthRecords;
    if (v28)
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        identifier2 = [accountCopy identifier];
        v32 = [v28 count];
        *buf = 138543874;
        selfCopy6 = self;
        v56 = 2114;
        v57 = identifier2;
        v58 = 2048;
        v59 = v32;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: extractReferencesOperation complete: %lu resources", buf, 0x20u);
      }

      profile = [(HDClinicalIngestionTask *)self profile];
      v52 = 0;
      v34 = [HDOriginalFHIRResourceEntity insertNewResourceObjects:v28 account:accountCopy profile:profile error:&v52];
      resolutionError2 = v52;

      _HKInitializeLogging();
      v36 = HKLogHealthRecords;
      if (!resolutionError2)
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v36;
          identifier3 = [accountCopy identifier];
          *buf = 138543618;
          selfCopy6 = self;
          v56 = 2114;
          v57 = identifier3;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: saveFetchedResources is complete", buf, 0x16u);
        }

        if (v34)
        {
          [(HDClinicalAccountManager *)self->_accountManager didCompleteFetchForAccount:accountCopy wasFullFetch:1];
        }

        _HKInitializeLogging();
        v42 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v43 = v42;
          identifier4 = [accountCopy identifier];
          *buf = 138543874;
          selfCopy6 = self;
          v56 = 2114;
          v57 = identifier4;
          v58 = 1024;
          LODWORD(v59) = v34;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: file Import is complete. Did add new resources? %{BOOL}d", buf, 0x1Cu);
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v37 = v36;
        identifier5 = [accountCopy identifier];
        *buf = 138543874;
        selfCopy6 = self;
        v56 = 2114;
        v57 = identifier5;
        v58 = 2112;
        v59 = resolutionError2;
        _os_log_error_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: saveFetchedResources failed with error: %@", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v48 = v29;
        identifier6 = [accountCopy identifier];
        resolutionError = [(HDClinicalIngestionExtractReferencesOperation *)v18 resolutionError];
        *buf = 138543874;
        selfCopy6 = self;
        v56 = 2114;
        v57 = identifier6;
        v58 = 2112;
        v59 = resolutionError;
        _os_log_error_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: extractReferencesOperation failed with error: %@", buf, 0x20u);
      }

      resolutionError2 = [(HDClinicalIngestionExtractReferencesOperation *)v18 resolutionError];
    }

    [(HDClinicalIngestionTask *)self _markHadError:resolutionError2];
LABEL_17:

    goto LABEL_18;
  }

  _HKInitializeLogging();
  v39 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    v45 = v39;
    identifier7 = [accountCopy identifier];
    operationError = [(HDClinicalIngestionFileImportOperation *)v7 operationError];
    *buf = 138543874;
    selfCopy6 = self;
    v56 = 2114;
    v57 = identifier7;
    v58 = 2112;
    v59 = operationError;
    _os_log_error_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: fileImportOperation failed with error: %@", buf, 0x20u);
  }

  fHIRVersion = [(HDClinicalIngestionFileImportOperation *)v7 operationError];
  [(HDClinicalIngestionTask *)self _markHadError:fHIRVersion];
LABEL_18:
}

- (void)_performFetchWithAccount:(id)account batchingSemaphore:(id)semaphore
{
  accountCopy = account;
  semaphoreCopy = semaphore;
  if (([(HDClinicalIngestionTask *)self isCancelled]& 1) == 0)
  {
    gateway = [accountCopy gateway];

    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    v10 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
    if (gateway)
    {
      if (v10)
      {
        v11 = v9;
        identifier = [accountCopy identifier];
        *buf = 138543618;
        selfCopy9 = self;
        v56 = 2114;
        v57 = identifier;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: preparing ingestion", buf, 0x16u);
      }

      v53 = 0;
      v13 = [(HDClinicalIngestionTask *)self _updateGatewayForAccount:accountCopy error:&v53];
      v14 = v53;
      v15 = v14;
      if ((v13 & 1) == 0)
      {
        _HKInitializeLogging();
        v35 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v41 = v35;
          identifier2 = [accountCopy identifier];
          *buf = 138543874;
          selfCopy9 = self;
          v56 = 2114;
          v57 = identifier2;
          v58 = 2114;
          v59 = v15;
          _os_log_error_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: gateway operation failed: %{public}@.", buf, 0x20u);
        }

        [(HDClinicalIngestionTask *)self _markHadError:v15];
        goto LABEL_37;
      }

      v52 = v14;
      v16 = [(HDClinicalIngestionTask *)self _fetchableAccountForAccount:accountCopy error:&v52];
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
            identifier3 = [accountCopy identifier];
            *buf = 138543874;
            selfCopy9 = self;
            v56 = 2114;
            v57 = identifier3;
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
            identifier4 = [accountCopy identifier];
            *buf = 138543618;
            selfCopy9 = self;
            v56 = 2114;
            v57 = identifier4;
            _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: not fetchable, not performing ingestion", buf, 0x16u);
          }

          v17 = 0;
        }

        goto LABEL_36;
      }

      if ([v16 currentCredentialHasOutdatedScopes])
      {
        v18 = [HKClinicalAccountEvent alloc];
        identifier5 = [accountCopy identifier];
        v20 = [NSString stringWithFormat:@"%s:%d (%s)", "[HDClinicalIngestionTask _performFetchWithAccount:batchingSemaphore:]", 345, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Ingestion/Pipeline/HDClinicalIngestionTask.m"];
        v21 = +[NSDate date];
        [accountCopy credentialState];
        v22 = HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState();
        v23 = [v18 initWithAccountIdentifier:identifier5 type:1 caller:v20 timestamp:v21 eventDescription:@"The current credential had outdated scopes during clinical ingestion task (fetchableAccount.currentCredentialHasOutdatedScopes was true)." credentialStateBefore:v22 credentialStateAfter:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];

        accountManager = self->_accountManager;
        v51 = v17;
        LOBYTE(v20) = [(HDClinicalAccountManager *)accountManager updateCredentialStateForAccount:accountCopy state:2 event:v23 error:&v51];
        v25 = v51;

        if ((v20 & 1) == 0)
        {
          _HKInitializeLogging();
          v38 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v45 = v38;
            identifier6 = [accountCopy identifier];
            *buf = 138543874;
            selfCopy9 = self;
            v56 = 2114;
            v57 = identifier6;
            v58 = 2114;
            v59 = v25;
            _os_log_error_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: attempt to mark account as needing upgrade failed with error: %{public}@", buf, 0x20u);
          }

          v17 = v25;
          goto LABEL_36;
        }

        identifier7 = [accountCopy identifier];
        [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier7 addOutcomeInfo:64];

        v17 = v25;
      }

      v50 = 0;
      v27 = [(HDClinicalIngestionTask *)self _performResourceFetchWithAccount:v16 batchingSemaphore:semaphoreCopy error:&v50];
      v28 = v50;
      if (v27)
      {
        _HKInitializeLogging();
        v29 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
          identifier8 = [accountCopy identifier];
          *buf = 138543618;
          selfCopy9 = self;
          v56 = 2114;
          v57 = identifier8;
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
            identifier9 = [accountCopy identifier];
            hrs_safelyLoggableDescription = [v28 hrs_safelyLoggableDescription];
            *buf = 138543874;
            selfCopy9 = self;
            v56 = 2114;
            v57 = identifier9;
            v58 = 2112;
            v59 = hrs_safelyLoggableDescription;
            _os_log_error_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: ingestion failed: %@", buf, 0x20u);
          }

          [(HDClinicalIngestionTask *)self _markHadError:v28];
          goto LABEL_35;
        }

        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v37;
          identifier8 = [accountCopy identifier];
          *buf = 138543618;
          selfCopy9 = self;
          v56 = 2114;
          v57 = identifier8;
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
      identifier10 = [accountCopy identifier];
      *buf = 138543618;
      selfCopy9 = self;
      v56 = 2114;
      v57 = identifier10;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: not gateway backed, not attempting to ingest", buf, 0x16u);
    }
  }

LABEL_38:
}

- (BOOL)_performResourceFetchWithAccount:(id)account batchingSemaphore:(id)semaphore error:(id *)error
{
  accountCopy = account;
  semaphoreCopy = semaphore;
  v98 = accountCopy;
  currentCredentialScopeSet = [accountCopy currentCredentialScopeSet];
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

    context = [(HDClinicalIngestionTask *)self context];
    v11 = [context queryModeFromOptionsGivenQueryMode:v9];

    v89 = v11;
    v95 = v11 == &dword_0 + 2;
  }

  else
  {
    context2 = [(HDClinicalIngestionTask *)self context];
    if ([context2 isBackgroundTask])
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

    context3 = [(HDClinicalIngestionTask *)self context];
    v89 = [context3 queryModeFromOptionsGivenQueryMode:v13];

    v95 = 0;
  }

  _HKInitializeLogging();
  v15 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    identifier = [v98 identifier];
    v18 = NSStringFromHKFHIRResourceQueryMode();
    *buf = 138543874;
    selfCopy7 = self;
    v115 = 2114;
    v116 = identifier;
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
  v20 = semaphoreCopy;
  v107 = v20;
  v21 = [(HDClinicalIngestionTaskAccountContext *)v19 initWithIngestionTask:self account:v98 queryMode:v89 ingestStartDate:v91 didSaveResourcesHandler:v106];
  v93 = objc_alloc_init(NSMutableArray);
  v99 = objc_alloc_init(NSMutableArray);
  v92 = objc_alloc_init(NSMutableArray);
  v96 = v21;
  v85 = v20;
  v22 = [HKClinicalGateway alloc];
  gateway = [v98 gateway];
  v90 = [v22 initWithDaemonClinicalGateway:gateway];

  resourceSchemas = [v90 resourceSchemas];
  v88 = [resourceSchemas hk_filter:&stru_1058A0];

  v94 = [v88 count];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  resourceSchemas2 = [v90 resourceSchemas];
  v26 = [resourceSchemas2 countByEnumeratingWithState:&v102 objects:v121 count:16];
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
          objc_enumerationMutation(resourceSchemas2);
        }

        v29 = *(*(&v102 + 1) + 8 * v28);
        if (currentCredentialScopeSet && [currentCredentialScopeSet hasAtLeastOneResourceTypeScope] && (objc_msgSend(v29, "name"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(currentCredentialScopeSet, "canReadResourceType:", v30), v30, (v31 & 1) == 0))
        {
          _HKInitializeLogging();
          v32 = HKLogHealthRecords;
          if (os_log_type_enabled(&v32->super.super, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [v98 identifier];
            name = [v29 name];
            originalScopes = [currentCredentialScopeSet originalScopes];
            *buf = 138544130;
            selfCopy7 = self;
            v115 = 2114;
            v116 = identifier2;
            v117 = 2114;
            v118 = name;
            v119 = 2114;
            v120 = originalScopes;
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
              name2 = [v29 name];
              v34 = [name2 isEqualToString:@"Patient"];

              if (v34)
              {
                _HKInitializeLogging();
                v35 = HKLogHealthRecords;
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  identifier3 = [v98 identifier];
                  name3 = [v29 name];
                  *buf = 138543874;
                  selfCopy7 = self;
                  v115 = 2114;
                  v116 = identifier3;
                  v117 = 2114;
                  v118 = name3;
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

            name4 = [v29 name];
            v42 = [name4 isEqualToString:@"DiagnosticReport"];

            v38 = v99;
            if (!v42)
            {
              goto LABEL_35;
            }

            _HKInitializeLogging();
            v43 = HKLogHealthRecords;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              identifier4 = [v98 identifier];
              name5 = [v29 name];
              *buf = 138543874;
              selfCopy7 = self;
              v115 = 2114;
              v116 = identifier4;
              v117 = 2114;
              v118 = name5;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: Postponing ingest for %{public}@ until all other resources have been ingested", buf, 0x20u);
            }

            [v92 addObject:v32];
            identifier5 = [v98 identifier];
            [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier5 addOutcomeInfo:1024];
          }

          else
          {
            _HKInitializeLogging();
            v32 = HKLogHealthRecords;
            if (os_log_type_enabled(&v32->super.super, OS_LOG_TYPE_DEFAULT))
            {
              identifier6 = [v98 identifier];
              minCompatibleAPIVersion = [v29 minCompatibleAPIVersion];
              *buf = 138543874;
              selfCopy7 = self;
              v115 = 2114;
              v116 = identifier6;
              v117 = 2050;
              v118 = minCompatibleAPIVersion;
              _os_log_impl(&dword_0, &v32->super.super, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: Detected a resource schema with MCAV %{public}ld, which is greater than our version, skipping this schema", buf, 0x20u);
            }
          }
        }

LABEL_36:

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v50 = [resourceSchemas2 countByEnumeratingWithState:&v102 objects:v121 count:16];
      v26 = v50;
    }

    while (v50);
  }

  v51 = [(HDClinicalIngestionTask *)self _runAndAwaitPreflightOperations:v93 accountContext:v96];
  v52 = [(HDClinicalIngestionTaskAccountContext *)v96 runAndAwaitSchemaOperations:v99];
  if ([v51 atLeastOneFetchSucceeded])
  {
    atLeastOneFetchSucceeded = 1;
  }

  else
  {
    atLeastOneFetchSucceeded = [v52 atLeastOneFetchSucceeded];
  }

  if ([v51 accountMustLimitRequests])
  {
    accountMustLimitRequests = &dword_0 + 1;
  }

  else
  {
    accountMustLimitRequests = [v52 accountMustLimitRequests];
  }

  if ([v92 count])
  {
    _HKInitializeLogging();
    v55 = HKLogHealthRecords;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      identifier7 = [v98 identifier];
      v57 = [v92 count];
      v58 = [v92 count];
      v59 = @"s";
      *buf = 138544130;
      selfCopy7 = self;
      v115 = 2114;
      if (v58 == &dword_0 + 1)
      {
        v59 = &stru_1090E8;
      }

      v116 = identifier7;
      v117 = 2048;
      v118 = v57;
      v119 = 2114;
      v120 = v59;
      _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: Running %ld postponed ingest operation%{public}@", buf, 0x2Au);
    }

    v60 = [(HDClinicalIngestionTaskAccountContext *)v96 runAndAwaitSchemaOperations:v92];
    v61 = v60;
    if (atLeastOneFetchSucceeded)
    {
      atLeastOneFetchSucceeded = 1;
    }

    else
    {
      atLeastOneFetchSucceeded = [v60 atLeastOneFetchSucceeded];
    }
  }

  identifier8 = [v98 identifier];
  [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier8 addOutcomeInfo:8];

  [(HDClinicalIngestionTaskAccountContext *)v96 queryMode];
  if (HKFHIRResourceQueryModeIncludesFullMode())
  {
    identifier9 = [v98 identifier];
    [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier9 addOutcomeInfo:16];
  }

  if (accountMustLimitRequests)
  {
    identifier10 = [v98 identifier];
    [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier10 addOutcomeInfo:4096];
  }

  else
  {
    v101 = 0;
    v65 = [(HDClinicalIngestionTask *)self _gatewayFeatureOperationsForAccount:v98 queryMode:v89 error:&v101];
    identifier10 = v101;
    if (v65)
    {
      if ([v65 count])
      {
        [(HDClinicalIngestionTaskAccountContext *)v96 runAndAwaitFeatureOperations:v65];
        identifier11 = [v98 identifier];
        [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier11 addOutcomeInfo:512];
      }
    }

    else
    {
      _HKInitializeLogging();
      v67 = HKLogHealthRecords;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        identifier12 = [v98 identifier];
        *buf = 138543874;
        selfCopy7 = self;
        v115 = 2114;
        v116 = identifier12;
        v117 = 2114;
        v118 = identifier10;
        _os_log_error_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: gateway feature operations error: %{public}@", buf, 0x20u);
      }

      [(HDClinicalIngestionTaskAccountContext *)v96 didEncounterError:identifier10];
    }
  }

  accumulatedErrors = [(HDClinicalIngestionTaskAccountContext *)v96 accumulatedErrors];
  v69 = [accumulatedErrors count];
  v70 = v69;
  if (atLeastOneFetchSucceeded)
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
          v75 = accumulatedErrors;
        }

        else
        {
          v75 = [accumulatedErrors arrayByAddingObject:v74];

          v77 = [NSError hrs_errorWithAccumulatedErrors:v75];

          v72 = v77;
        }

        v76 = 0;
        accumulatedErrors = v75;
        goto LABEL_79;
      }

      goto LABEL_76;
    }
  }

  v72 = [NSError hrs_errorWithAccumulatedErrors:accumulatedErrors];
  v76 = [v72 hrs_hasAuthorizationFailure] | atLeastOneFetchSucceeded ^ 1;
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
  if ((v76 | accountMustLimitRequests))
  {
    [(HDClinicalAccountManager *)self->_accountManager failedToCompleteFetchForAccount:v98 mustLimitFutureRequests:accountMustLimitRequests];
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
    if (error)
    {
      v82 = v80;
      *error = v81;
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

- (id)_runAndAwaitPreflightOperations:(id)operations accountContext:(id)context
{
  operationsCopy = operations;
  contextCopy = context;
  if (![operationsCopy count] || (-[HDClinicalIngestionTask isCancelled](self, "isCancelled") & 1) != 0)
  {
    v8 = 0;
    goto LABEL_29;
  }

  _HKInitializeLogging();
  v9 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9BF7C(self, v9, contextCopy);
  }

  account = [contextCopy account];
  identifier = [account identifier];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v51 = 0;
  v13 = [HDOriginalFHIRResourceEntity resourceDataForPatientResourceForAccountWithIdentifier:identifier profile:WeakRetained error:&v51];
  v14 = v51;

  if (v13 || !v14)
  {
    v8 = [contextCopy runAndAwaitSchemaOperations:operationsCopy];
    if (!v13)
    {
      goto LABEL_28;
    }

    account2 = [contextCopy account];
    identifier2 = [account2 identifier];
    v17 = objc_loadWeakRetained(&self->_profile);
    v50 = 0;
    account9 = [HDOriginalFHIRResourceEntity resourceDataForPatientResourceForAccountWithIdentifier:identifier2 profile:v17 error:&v50];
    v14 = v50;

    if (!account9)
    {
      _HKInitializeLogging();
      v29 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v30 = v29;
        account3 = [contextCopy account];
        identifier3 = [account3 identifier];
        *buf = 138543874;
        selfCopy6 = self;
        v54 = 2114;
        v55 = identifier3;
        v56 = 2114;
        v57 = v14;
        _os_log_error_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: failed to retrieve incoming Patient resource: %{public}@", buf, 0x20u);
      }

      goto LABEL_28;
    }

    v19 = [HDClinicalIngestionComparePatientResourcesOperation alloc];
    account4 = [contextCopy account];
    identifier8 = [(HDClinicalIngestionComparePatientResourcesOperation *)v19 initWithTask:self account:account4 existingResourceData:v13 incomingResourceData:account9];

    [(HDClinicalIngestionComparePatientResourcesOperation *)identifier8 start];
    result = [(HDClinicalIngestionComparePatientResourcesOperation *)identifier8 result];
    outcome = [result outcome];

    if ((outcome & 8) == 0)
    {
      operationError = [(HDClinicalIngestionOperation *)identifier8 operationError];

      _HKInitializeLogging();
      v25 = HKLogHealthRecords;
      if (operationError)
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          log = v25;
          account5 = [contextCopy account];
          identifier4 = [account5 identifier];
          operationError2 = [(HDClinicalIngestionOperation *)identifier8 operationError];
          *buf = 138543874;
          selfCopy6 = self;
          v54 = 2114;
          v55 = identifier4;
          v56 = 2114;
          v57 = operationError2;
          _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: failed to compare Patient resources: %{public}@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v25;
        account6 = [contextCopy account];
        identifier5 = [account6 identifier];
        *buf = 138543618;
        selfCopy6 = self;
        v54 = 2114;
        v55 = identifier5;
        _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: no unmerge detected", buf, 0x16u);
      }

      goto LABEL_27;
    }

    _HKInitializeLogging();
    v33 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      account7 = [contextCopy account];
      identifier6 = [account7 identifier];
      *buf = 138543618;
      selfCopy6 = self;
      v54 = 2114;
      v55 = identifier6;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: unmerge detected!!", buf, 0x16u);
    }

LABEL_24:
    _HKInitializeLogging();
    v36 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      account8 = [contextCopy account];
      identifier7 = [account8 identifier];
      *buf = 138543618;
      selfCopy6 = self;
      v54 = 2114;
      v55 = identifier7;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: upgrading ingest to full query mode", buf, 0x16u);
    }

    [contextCopy changeQueryMode:1];
    account9 = [contextCopy account];
    identifier8 = [account9 identifier];
    [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier8 addOutcomeInfo:2048];
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
      account10 = [contextCopy account];
      identifier9 = [account10 identifier];
      *buf = 138543874;
      selfCopy6 = self;
      v54 = 2114;
      v55 = identifier9;
      v56 = 2114;
      v57 = v14;
      _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: failed to retrieve existing Patient resource: %{public}@", buf, 0x20u);
    }

    v8 = [contextCopy runAndAwaitSchemaOperations:operationsCopy];
    goto LABEL_24;
  }

  v8 = [contextCopy runAndAwaitSchemaOperations:operationsCopy];
LABEL_28:

LABEL_29:

  return v8;
}

- (BOOL)_handleStaleResourcesOfAccount:(id)account ingestStartDate:(id)date error:(id *)error
{
  accountCopy = account;
  dateCopy = date;
  v10 = objc_alloc_init(NSOperationQueue);
  v11 = [NSString stringWithFormat:@"%@-ResourceFetch-StaleResourcesQueue", objc_opt_class()];
  [v10 setName:v11];

  [v10 setQualityOfService:17];
  _HKInitializeLogging();
  v12 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    identifier = [accountCopy identifier];
    *buf = 138543618;
    selfCopy2 = self;
    v27 = 2114;
    v28 = identifier;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: running stale resources operation", buf, 0x16u);
  }

  v15 = [[HDClinicalIngestionHandleStaleResourcesOperation alloc] initWithTask:self account:accountCopy ingestStartDate:dateCopy nextOperation:0];

  [v10 addOperation:v15];
  [v10 waitUntilAllOperationsAreFinished];
  identifier2 = [accountCopy identifier];
  [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier2 addOutcomeInfo:256];

  operationError = [(HDClinicalIngestionOperation *)v15 operationError];

  if (operationError)
  {
    _HKInitializeLogging();
    v18 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v22 = v18;
      identifier3 = [accountCopy identifier];
      operationError2 = [(HDClinicalIngestionOperation *)v15 operationError];
      *buf = 138543874;
      selfCopy2 = self;
      v27 = 2114;
      v28 = identifier3;
      v29 = 2114;
      v30 = operationError2;
      _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: stale resources operation failed: %{public}@", buf, 0x20u);
    }

    operationError3 = [(HDClinicalIngestionOperation *)v15 operationError];
    if (operationError3)
    {
      if (error)
      {
        v20 = operationError3;
        *error = operationError3;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return operationError == 0;
}

- (void)_performExtractionWithAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier addOutcomeInfo:32];

  p_vtable = &OBJC_METACLASS___HDClinicalIngestionTaskContext.vtable;
  v7 = &off_110000;
  v8 = &HKLogHealthRecords;
  v25 = accountCopy;
  while (1)
  {
    v9 = [objc_alloc((p_vtable + 381)) initWithTask:self account:accountCopy nextOperation:0];
    [v9 setBatchSize:v7];
    [v9 start];
    if ([v9 isCancelled])
    {
      break;
    }

    countOfExtractedResources = [v9 countOfExtractedResources];
    _HKInitializeLogging();
    v11 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      [accountCopy identifier];
      v13 = v7;
      v14 = p_vtable;
      v16 = v15 = v8;
      countOfExtractedResources2 = [v9 countOfExtractedResources];
      countOfExtractedMedicalRecords = [v9 countOfExtractedMedicalRecords];
      countOfExtractedClinicalRecords = [v9 countOfExtractedClinicalRecords];
      *buf = 138544386;
      selfCopy2 = self;
      v28 = 2114;
      v29 = v16;
      v30 = 2048;
      v31 = countOfExtractedResources2;
      v32 = 2048;
      v33 = countOfExtractedMedicalRecords;
      v34 = 2048;
      v35 = countOfExtractedClinicalRecords;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: extraction of %ld resources produced %ld medical and %ld clinical records", buf, 0x34u);

      v8 = v15;
      p_vtable = v14;
      v7 = v13;
      accountCopy = v25;
    }

    if (!countOfExtractedResources)
    {
      goto LABEL_10;
    }

    isCancelled = [(HDClinicalIngestionTask *)self isCancelled];

    if (isCancelled)
    {
      goto LABEL_11;
    }
  }

  _HKInitializeLogging();
  v21 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    v22 = v21;
    identifier2 = [accountCopy identifier];
    extractionError = [v9 extractionError];
    *buf = 138543874;
    selfCopy2 = self;
    v28 = 2114;
    v29 = identifier2;
    v30 = 2112;
    v31 = extractionError;
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
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "START ingestion task %{public}@", &v6, 0xCu);
  }

  v4 = [HDDaemonTransaction transactionWithOwner:self activityName:self->_taskIdentifier];
  transaction = self->_transaction;
  self->_transaction = v4;
}

- (void)_didFinishWithStartTimeInternal:(double)internal
{
  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  os_unfair_lock_lock(&self->_ivarLock);
  v7 = v6 - internal;
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
    selfCopy = self;
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

- (void)_markHadError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_ivarLock);
  ingestionError = self->_ingestionError;
  self->_ingestionError = errorCopy;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)_cancelWithError:(id)error
{
  if (error)
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

- (id)_gatewaysOperationForAccount:(id)account
{
  identifier = [account identifier];
  updateGatewayOperationsByAccountIdentifier = [(HDClinicalIngestionTask *)self updateGatewayOperationsByAccountIdentifier];
  v6 = [updateGatewayOperationsByAccountIdentifier objectForKey:identifier];

  if (!v6)
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = identifier;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: no update gateways operation created", &v9, 0x16u);
    }
  }

  return v6;
}

- (BOOL)_ingestionAllowed
{
  context = [(HDClinicalIngestionTask *)self context];
  isBackgroundTask = [context isBackgroundTask];

  if (isBackgroundTask && (+[MCProfileConnection sharedConnection](MCProfileConnection, "sharedConnection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isAutomaticAppUpdatesAllowed], v5, !v6))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    profile = [(HDClinicalIngestionTask *)self profile];
    daemon = [profile daemon];
    behavior = [daemon behavior];
    v10 = [behavior healthAppNotInstalled] ^ 1;
  }

  return v10;
}

- (void)_prepareUpdateGatewaysOperationsForAccounts:(id)accounts
{
  accountsCopy = accounts;
  context = [(HDClinicalIngestionTask *)self context];
  shouldSkipGatewaysUpdate = [context shouldSkipGatewaysUpdate];

  if (shouldSkipGatewaysUpdate)
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      providerServiceManager = v7;
      v9 = [accountsCopy hk_map:&stru_105948];
      v10 = [v9 componentsJoinedByString:{@", "}];
      v13 = 138543618;
      selfCopy = self;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_0, providerServiceManager, OS_LOG_TYPE_DEFAULT, "%{public}@ skipping _prepareUpdateGatewaysOperationsForAccounts %{public}@", &v13, 0x16u);

LABEL_6:
    }
  }

  else if (!self->_updateGatewayOperationsByAccountIdentifier)
  {
    providerServiceManager = [(HDHealthRecordsProfileExtension *)self->_profileExtension providerServiceManager];
    v11 = [providerServiceManager createUpdateGatewaysOperationsForAccounts:accountsCopy];
    updateGatewayOperationsByAccountIdentifier = self->_updateGatewayOperationsByAccountIdentifier;
    self->_updateGatewayOperationsByAccountIdentifier = v11;

    goto LABEL_6;
  }
}

- (BOOL)_prepareAccounts:(id *)accounts userFetchEligibleAccounts:(id *)eligibleAccounts withError:(id *)error
{
  accountManager = self->_accountManager;
  allObjects = [(NSSet *)self->_accountIdentifiers allObjects];
  v23 = 0;
  v11 = [(HDClinicalAccountManager *)accountManager accountsWithIdentifiers:allObjects error:&v23];
  v12 = v23;

  if (!v11)
  {
LABEL_5:
    v15 = v12;
    if (v15)
    {
      if (error)
      {
        v20 = v15;
        v19 = 0;
        *error = v15;
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
  allObjects2 = [(NSSet *)self->_accountIdentifiers allObjects];
  v22 = v12;
  v15 = [(HDClinicalAccountManager *)v13 userFetchEligibleAccountsWithIdentifiers:allObjects2 error:&v22];
  v16 = v22;

  [(HDClinicalIngestionTask *)self _markAccountsWithoutCredentialsAsReloginNeeded:v11];
  if (!v15)
  {
    v12 = v16;
    goto LABEL_5;
  }

  *accounts = [v11 copy];
  *eligibleAccounts = [v15 copy];
  v17 = [v11 hk_mapToDictionary:&stru_105988];
  perAccountInfo = self->_perAccountInfo;
  self->_perAccountInfo = v17;

  v19 = 1;
LABEL_11:

  return v19;
}

- (void)_markAccountsWithoutCredentialsAsReloginNeeded:(id)needed
{
  neededCopy = needed;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [neededCopy countByEnumeratingWithState:&v22 objects:v32 count:16];
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
          objc_enumerationMutation(neededCopy);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        credential = [v8 credential];
        if (!credential)
        {
          if ([v8 needsRelogin])
          {
            continue;
          }

          v10 = [HKClinicalAccountEvent alloc];
          identifier = [v8 identifier];
          v12 = [NSString stringWithFormat:@"%s:%d (%s)", "[HDClinicalIngestionTask _markAccountsWithoutCredentialsAsReloginNeeded:]", 830, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthRecords/HealthRecordsPlugin/Ingestion/Pipeline/HDClinicalIngestionTask.m"];
          v13 = +[NSDate date];
          [v8 credentialState];
          v14 = HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState();
          v15 = [v10 initWithAccountIdentifier:identifier type:1 caller:v12 timestamp:v13 eventDescription:@"No credentials were found for the account during clinical ingestion task." credentialStateBefore:v14 credentialStateAfter:HKOptionalClinicalAccountCredentialStateFromHKClinicalAccountCredentialState()];

          accountManager = self->_accountManager;
          v21 = 0;
          [(HDClinicalAccountManager *)accountManager updateCredentialStateForAccount:v8 state:1 event:v15 error:&v21];
          credential = v21;
          if (credential)
          {
            _HKInitializeLogging();
            v17 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
            {
              v18 = v17;
              identifier2 = [v8 identifier];
              *buf = 138543874;
              selfCopy = self;
              v28 = 2114;
              v29 = identifier2;
              v30 = 2114;
              v31 = credential;
              _os_log_fault_impl(&dword_0, v18, OS_LOG_TYPE_FAULT, "%{public}@ Error marking account: %{public}@ as needs relogin %{public}@", buf, 0x20u);
            }
          }
        }
      }

      v5 = [neededCopy countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);
  }
}

- (BOOL)_updateGatewayForAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v7 = [(HDClinicalIngestionTask *)self _gatewaysOperationForAccount:accountCopy];
  if (v7)
  {
    profileExtension = [(HDClinicalIngestionTask *)self profileExtension];
    providerServiceManager = [profileExtension providerServiceManager];
    [providerServiceManager addOperationUnlessAlreadyEnqueued:v7];

    [v7 waitUntilFinished];
    identifier = [accountCopy identifier];
    [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier addOutcomeInfo:1];
  }

  isCancelled = [v7 isCancelled];
  if (isCancelled)
  {
    error = [v7 error];
    if (error)
    {
      if (error)
      {
        v13 = error;
        *error = error;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return isCancelled ^ 1;
}

- (id)_fetchableAccountForAccount:(id)account error:(id *)error
{
  accountCopy = account;
  accountManager = self->_accountManager;
  identifier = [accountCopy identifier];
  v9 = [(HDClinicalAccountManager *)accountManager accountWithIdentifier:identifier error:error];

  if (v9)
  {
    v10 = [(HDClinicalIngestionPerAccountOperation *)[HDClinicalIngestionIsAccountFetchableOperation alloc] initWithTask:self account:v9 nextOperation:0];
    [(HDClinicalIngestionIsAccountFetchableOperation *)v10 start];
    v11 = 0;
    if ([(HDClinicalIngestionIsAccountFetchableOperation *)v10 accountFetchable])
    {
      identifier2 = [accountCopy identifier];
      [(HDClinicalIngestionTask *)self _accountWithIdentifier:identifier2 addOutcomeInfo:2];

      v11 = v9;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_gatewayFeatureOperationsForAccount:(id)account queryMode:(int64_t)mode error:(id *)error
{
  accountCopy = account;
  gateway = [accountCopy gateway];

  if (gateway)
  {
    gateway2 = [accountCopy gateway];
    hkGateway = [gateway2 hkGateway];

    *buf = objc_opt_class();
    v42 = [NSArray arrayWithObjects:buf count:1];
    v46 = hkGateway;
    v47 = objc_alloc_init(NSMutableArray);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [hkGateway features];
    v43 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (!v43)
    {
      goto LABEL_32;
    }

    v41 = *v55;
    *&v10 = 138544130;
    v38 = v10;
    v48 = accountCopy;
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
          identifier = [accountCopy identifier];
          name = [v12 name];
          *buf = 138543874;
          *&buf[4] = self;
          v59 = 2114;
          v60 = identifier;
          v61 = 2114;
          v62 = name;
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
            identifier2 = [accountCopy identifier];
            name2 = [v12 name];
            *buf = 138543874;
            *&buf[4] = self;
            v59 = 2114;
            v60 = identifier2;
            v61 = 2114;
            v62 = name2;
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

              name3 = [v12 name];
              featureName = [v24 featureName];
              v27 = [name3 isEqualToString:featureName];

              if (v27)
              {
                ++v21;
                v28 = [[v24 alloc] initWithTask:self account:v48 gateway:v46 feature:v12 queryMode:mode];
                [v47 addObject:v28];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v50 objects:v65 count:16];
          }

          while (v20);

          accountCopy = v48;
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
            identifier3 = [v48 identifier];
            name4 = [v12 name];
            *buf = v38;
            *&buf[4] = self;
            v59 = 2114;
            v60 = identifier3;
            v61 = 2114;
            v62 = name4;
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
        identifier3 = [accountCopy identifier];
        name4 = [v12 name];
        *buf = 138543874;
        *&buf[4] = self;
        v59 = 2114;
        v60 = identifier3;
        v61 = 2114;
        v62 = name4;
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

  [NSError hk_assignError:error code:3 description:@"account does not have a gateway"];
  v47 = 0;
LABEL_34:

  return v47;
}

- (id)_serialIngestionDoneOperations
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(HDClinicalIngestionOperation *)[HDClinicalIngestionNotifyHealthRecordsDaemonOperation alloc] initWithTask:self nextOperation:0];
  [v3 addObject:v4];
  context = [(HDClinicalIngestionTask *)self context];
  _unitTesting_shouldSkipAttachmentDownload = [context _unitTesting_shouldSkipAttachmentDownload];

  if ((_unitTesting_shouldSkipAttachmentDownload & 1) == 0)
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
  _serialIngestionDoneOperations = [(HDClinicalIngestionTask *)self _serialIngestionDoneOperations];
  if ([_serialIngestionDoneOperations count])
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = [NSString stringWithFormat:@"%@-Main-IngestDoneQueue", objc_opt_class()];
    [v4 setName:v5];

    [v4 setQualityOfService:17];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = _serialIngestionDoneOperations;
    v6 = _serialIngestionDoneOperations;
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
            selfCopy2 = self;
            v25 = 2114;
            v26 = v11;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Running ingest done operation %{public}@", buf, 0x16u);
          }

          [v4 addOperation:v11];
          [v11 waitUntilFinished];
          operationError = [v11 operationError];

          if (operationError)
          {
            _HKInitializeLogging();
            v14 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              v16 = v14;
              operationError2 = [v11 operationError];
              *buf = 138543874;
              selfCopy2 = self;
              v25 = 2114;
              v26 = v11;
              v27 = 2112;
              v28 = operationError2;
              _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%{public}@: Ingest done operation %{public}@ failed with error: %@", buf, 0x20u);
            }

            operationError3 = [v11 operationError];
            [(HDClinicalIngestionTask *)self _markHadError:operationError3];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v8);
    }

    _serialIngestionDoneOperations = v18;
  }
}

- (void)accumulateIngestionAnalyticsFromTaskStates:(id)states gateway:(id)gateway
{
  analyticsAccumulator = self->_analyticsAccumulator;
  statesCopy = states;
  hkGateway = [gateway hkGateway];
  [(HDClinicalIngestionAnalyticsAccumulator *)analyticsAccumulator accumulateIngestionAnalyticsFromTaskStates:statesCopy gateway:hkGateway completion:0];
}

- (id)_analyticsStringAfterCollectingAndSubmittingIngestionAnalyticsOnQueue:(id)queue
{
  queueCopy = queue;
  shouldSkipIngestionMetricsSubmission = [(HDClinicalIngestionTaskContext *)self->_context shouldSkipIngestionMetricsSubmission];
  currentAnalyticsAccumulator = [(HDClinicalAccountManager *)self->_accountManager currentAnalyticsAccumulator];
  v7 = self->_analyticsAccumulator;
  analyticsManager = [(HDHealthRecordsProfileExtension *)self->_profileExtension analyticsManager];
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
  v11 = currentAnalyticsAccumulator;
  v18 = v11;
  v20 = &v22;
  v21 = shouldSkipIngestionMetricsSubmission ^ 1;
  v12 = analyticsManager;
  v19 = v12;
  v13 = [v9 initWithName:@"ingestion-analytics-submission" operationBlock:v16];
  [queueCopy addOperation:v13];
  [queueCopy waitUntilAllOperationsAreFinished];
  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

- (void)_accountWithIdentifier:(id)identifier addOutcomeInfo:(unint64_t)info
{
  identifierCopy = identifier;
  v7 = [(NSDictionary *)self->_perAccountInfo objectForKeyedSubscript:?];
  if (!v7)
  {
    sub_9C118(a2, self, identifierCopy);
  }

  [v7 addOutcomeInfo:info];
}

- (void)recordCountOfAllRecords:(unint64_t)records allLabs:(unint64_t)labs pinnedLabs:(unint64_t)pinnedLabs
{
  self->_countOfAllRecords = records;
  self->_countOfAllLabs = labs;
  self->_countOfPinnedLabs = pinnedLabs;
}

+ (BOOL)_accumulatedErrorAllowsToProceedRunningStaleResourcesOperation:(id)operation
{
  operationCopy = operation;
  domain = [operationCopy domain];
  v7 = [domain isEqualToString:HRSAccumulatedIngestionErrorDomain];

  if ((v7 & 1) == 0)
  {
    sub_9C19C(a2, self);
  }

  if ([operationCopy hrs_hasAuthorizationFailure])
  {
    v8 = 0;
  }

  else
  {
    hrs_accumulatedResourceFetchFailures = [operationCopy hrs_accumulatedResourceFetchFailures];
    if ([hrs_accumulatedResourceFetchFailures count])
    {
      v10 = [hrs_accumulatedResourceFetchFailures hk_filter:&stru_105A40];
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
  taskIdentifier = [(HDClinicalIngestionTask *)self taskIdentifier];
  context = [(HDClinicalIngestionTask *)self context];
  v7 = [v3 initWithFormat:@"<%@ %@; context: %@;>", v4, taskIdentifier, context, 0];

  return v7;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end