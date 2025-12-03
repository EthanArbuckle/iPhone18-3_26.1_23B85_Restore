@interface HDClinicalIngestionTaskAccountContext
+ (HDClinicalIngestionTaskAccountContext)new;
- (HDClinicalIngestionTaskAccountContext)init;
- (HDClinicalIngestionTaskAccountContext)initWithIngestionTask:(id)task account:(id)account queryMode:(int64_t)mode ingestStartDate:(id)date didSaveResourcesHandler:(id)handler;
- (NSArray)accumulatedErrors;
- (id)runAndAwaitSchemaOperations:(id)operations;
- (void)_withLock_evaluateNewErrors:(id)errors;
- (void)didEncounterError:(id)error;
- (void)didEncounterErrors:(id)errors;
- (void)runAndAwaitFeatureOperations:(id)operations;
- (void)saveResourceObjects:(id)objects;
@end

@implementation HDClinicalIngestionTaskAccountContext

+ (HDClinicalIngestionTaskAccountContext)new
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v2, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTaskAccountContext)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTaskAccountContext)initWithIngestionTask:(id)task account:(id)account queryMode:(int64_t)mode ingestStartDate:(id)date didSaveResourcesHandler:(id)handler
{
  taskCopy = task;
  accountCopy = account;
  dateCopy = date;
  handlerCopy = handler;
  v32.receiver = self;
  v32.super_class = HDClinicalIngestionTaskAccountContext;
  v17 = [(HDClinicalIngestionTaskAccountContext *)&v32 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_task, task);
    v19 = [accountCopy copy];
    account = v18->_account;
    v18->_account = v19;

    v18->_queryMode = mode;
    v21 = [dateCopy copy];
    ingestStartDate = v18->_ingestStartDate;
    v18->_ingestStartDate = v21;

    v23 = [handlerCopy copy];
    didSaveResourcesHandler = v18->_didSaveResourcesHandler;
    v18->_didSaveResourcesHandler = v23;

    v18->_accumulatedErrorLock._os_unfair_lock_opaque = 0;
    v25 = objc_alloc_init(NSMutableArray);
    mutableAccumulatedErrors = v18->_mutableAccumulatedErrors;
    v18->_mutableAccumulatedErrors = v25;

    v18->_mayMakeRequests = 1;
    v27 = objc_alloc_init(NSOperationQueue);
    producerQueue = v18->_producerQueue;
    v18->_producerQueue = v27;

    identifier = [accountCopy identifier];
    v30 = [NSString stringWithFormat:@"IngestionQueue-%@", identifier];
    [(NSOperationQueue *)v18->_producerQueue setName:v30];

    [(NSOperationQueue *)v18->_producerQueue setQualityOfService:17];
    [(NSOperationQueue *)v18->_producerQueue setMaxConcurrentOperationCount:3];
  }

  return v18;
}

- (id)runAndAwaitSchemaOperations:(id)operations
{
  operationsCopy = operations;
  mayMakeRequests = self->_mayMakeRequests;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (mayMakeRequests)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_9E640();
    }

    [(NSOperationQueue *)self->_producerQueue addOperations:operationsCopy waitUntilFinished:1];
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_9E6D4();
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = operationsCopy;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v9)
    {
      bOOLValue = 0;
      goto LABEL_23;
    }

    v10 = v9;
    LOBYTE(bOOLValue) = 0;
    v12 = *v25;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ([v14 isFinished])
        {
          if (bOOLValue)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_9E768(a2, self);
          if (bOOLValue)
          {
LABEL_13:
            bOOLValue = 1;
            continue;
          }
        }

        atLeastOneFetchSucceeded = [v14 atLeastOneFetchSucceeded];
        bOOLValue = [atLeastOneFetchSucceeded BOOLValue];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v10)
      {
LABEL_23:

        v19 = [HDClinicalIngestionTaskAccountContextOutcome alloc];
        v21 = !self->_mayMakeRequests;
        v20 = bOOLValue;
        goto LABEL_24;
      }
    }
  }

  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    v17 = v7;
    identifier = [(HDClinicalAccount *)account identifier];
    *buf = 138543874;
    selfCopy = self;
    v31 = 2114;
    v32 = identifier;
    v33 = 2048;
    v34 = [operationsCopy count];
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: context may not make requests, will not run %lu schema operations", buf, 0x20u);
  }

  v19 = [HDClinicalIngestionTaskAccountContextOutcome alloc];
  v20 = 0;
  v21 = 1;
LABEL_24:
  v22 = [(HDClinicalIngestionTaskAccountContextOutcome *)v19 initWithOneFetchSucceeded:v20 accountMustLimitRequests:v21, v24];

  return v22;
}

- (void)saveResourceObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    account = self->_account;
    profile = [(HDClinicalIngestionTask *)self->_task profile];
    v12 = 0;
    LOBYTE(account) = [HDOriginalFHIRResourceEntity insertNewResourceObjects:objectsCopy account:account profile:profile error:&v12];
    v7 = v12;

    if (account)
    {
      (*(self->_didSaveResourcesHandler + 2))(self->_didSaveResourcesHandler, [objectsCopy count]);
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v9 = self->_account;
        v10 = v8;
        identifier = [(HDClinicalAccount *)v9 identifier];
        *buf = 138543874;
        selfCopy = self;
        v15 = 2114;
        v16 = identifier;
        v17 = 2114;
        v18 = v7;
        _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@ Account %{public}@: saveResourcesObjects error: %{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)runAndAwaitFeatureOperations:(id)operations
{
  operationsCopy = operations;
  mayMakeRequests = self->_mayMakeRequests;
  _HKInitializeLogging();
  v6 = HKLogHealthRecords;
  if (mayMakeRequests)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_9E7CC();
    }

    [(NSOperationQueue *)self->_producerQueue addOperations:operationsCopy waitUntilFinished:1];
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_9E860();
    }

    v7 = [operationsCopy hk_map:&stru_106760];
    [(HDClinicalIngestionTaskAccountContext *)self didEncounterErrors:v7];
    goto LABEL_9;
  }

  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    v7 = v6;
    identifier = [(HDClinicalAccount *)account identifier];
    v10 = 138543874;
    selfCopy = self;
    v12 = 2114;
    v13 = identifier;
    v14 = 2048;
    v15 = [operationsCopy count];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Account %{public}@: context may not make requests, will not run %lu feature operations", &v10, 0x20u);

LABEL_9:
  }
}

- (void)didEncounterError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    sub_9E8F4(a2, self);
  }

  os_unfair_lock_lock(&self->_accumulatedErrorLock);
  [(NSMutableArray *)self->_mutableAccumulatedErrors hk_addNonNilObject:errorCopy];
  v7 = errorCopy;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(HDClinicalIngestionTaskAccountContext *)self _withLock_evaluateNewErrors:v6];

  os_unfair_lock_unlock(&self->_accumulatedErrorLock);
}

- (void)didEncounterErrors:(id)errors
{
  errorsCopy = errors;
  os_unfair_lock_lock(&self->_accumulatedErrorLock);
  [(NSMutableArray *)self->_mutableAccumulatedErrors addObjectsFromArray:errorsCopy];
  [(HDClinicalIngestionTaskAccountContext *)self _withLock_evaluateNewErrors:errorsCopy];

  os_unfair_lock_unlock(&self->_accumulatedErrorLock);
}

- (NSArray)accumulatedErrors
{
  os_unfair_lock_lock(&self->_accumulatedErrorLock);
  v3 = [(NSMutableArray *)self->_mutableAccumulatedErrors copy];
  os_unfair_lock_unlock(&self->_accumulatedErrorLock);

  return v3;
}

- (void)_withLock_evaluateNewErrors:(id)errors
{
  errorsCopy = errors;
  os_unfair_lock_assert_owner(&self->_accumulatedErrorLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = errorsCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * v9) hrs_hasResourceFetchErrorsIndicatingRateLimitation])
        {
          self->_mayMakeRequests = 0;
          [(NSOperationQueue *)self->_producerQueue cancelAllOperations];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end