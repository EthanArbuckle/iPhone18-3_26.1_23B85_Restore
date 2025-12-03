@interface HDClinicalProviderServiceManager
- (BOOL)_insertOrUpdateGatewayIfSupported:(id)supported error:(id *)error;
- (BOOL)_isCountryCodeSupported:(id)supported;
- (HDClinicalProviderServiceManager)init;
- (HDClinicalProviderServiceManager)initWithProfileExtension:(id)extension;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDProfile)profile;
- (id)_allSupportedCountryCodes;
- (id)_createURLForSearchQuery:(id)query error:(id *)error;
- (id)_searchResultsPageWithOnlySupportedSearchResultsInSearchResultsPage:(id)page;
- (id)_supportedGatewaysFromFetchedJSONObject:(id)object externalIDs:(id)ds error:(id *)error;
- (id)createUpdateGatewaysOperationsForAccounts:(id)accounts;
- (id)remoteGatewaysWithBatchID:(id)d externalIDs:(id)ds error:(id *)error;
- (void)_addOperationWithBlock:(id)block;
- (void)_createSessionIDIfNeeded;
- (void)_fetchRemoteGatewayWithExternalID:(id)d batchID:(id)iD completion:(id)completion;
- (void)addOperationUnlessAlreadyEnqueued:(id)enqueued;
- (void)cancelInFlightSearchQueriesWithCompletion:(id)completion;
- (void)fetchLogoDataForBrand:(id)brand scaleKey:(id)key completion:(id)completion;
- (void)fetchRemoteGatewayWithExternalID:(id)d batchID:(id)iD completion:(id)completion;
- (void)fetchRemoteGatewayWithExternalID:(id)d completion:(id)completion;
- (void)fetchRemoteProviderWithExternalID:(id)d batchID:(id)iD completion:(id)completion;
- (void)fetchRemoteSearchResultsPageForQuery:(id)query completion:(id)completion;
- (void)unitTesting_markSessionIDExpired;
@end

@implementation HDClinicalProviderServiceManager

- (HDClinicalProviderServiceManager)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalProviderServiceManager)initWithProfileExtension:(id)extension
{
  extensionCopy = extension;
  v21.receiver = self;
  v21.super_class = HDClinicalProviderServiceManager;
  v5 = [(HDClinicalProviderServiceManager *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, extensionCopy);
    profile = [extensionCopy profile];
    objc_storeWeak(&v6->_profile, profile);

    v8 = objc_alloc_init(NSOperationQueue);
    taskScheduleQueue = v6->_taskScheduleQueue;
    v6->_taskScheduleQueue = v8;

    [(NSOperationQueue *)v6->_taskScheduleQueue setMaxConcurrentOperationCount:5];
    v10 = objc_alloc_init(NSOperationQueue);
    searchQueue = v6->_searchQueue;
    v6->_searchQueue = v10;

    [(NSOperationQueue *)v6->_searchQueue setQualityOfService:25];
    v12 = +[HDProviderServiceSpecification defaultSessionConfiguration];
    v13 = [NSURLSession sessionWithConfiguration:v12];
    URLSession = v6->_URLSession;
    v6->_URLSession = v13;

    _HKInitializeLogging();
    v15 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      +[HDProviderServiceSpecification currentServiceEnvironment];
      v17 = HKHealthRecordsNameForEnvironment();
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Health Records using %{public}@ environment", buf, 0xCu);
    }

    v18 = objc_alloc_init(NSOperationQueue);
    [(NSOperationQueue *)v18 setQualityOfService:17];
    [(NSOperationQueue *)v18 setMaxConcurrentOperationCount:3];
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v18;

    v6->_addOperationLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)fetchRemoteSearchResultsPageForQuery:(id)query completion:(id)completion
{
  completionCopy = completion;
  v20 = 0;
  v7 = [(HDClinicalProviderServiceManager *)self _createURLForSearchQuery:query error:&v20];
  v8 = v20;
  if (v7)
  {
    v9 = [[NSURLRequest alloc] initWithURL:v7];
    v10 = [[HDCPSSearchOperation alloc] initWithRequest:v9 session:self->_URLSession];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_38C94;
    v16 = &unk_1070C8;
    v17 = v10;
    selfCopy = self;
    v19 = completionCopy;
    v11 = v10;
    v12 = objc_retainBlock(&v13);
    [(HDCPSSearchOperation *)v11 setCompletionBlock:v12, v13, v14, v15, v16];
    [(NSOperationQueue *)self->_searchQueue addOperation:v11];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

- (void)cancelInFlightSearchQueriesWithCompletion:(id)completion
{
  searchQueue = self->_searchQueue;
  completionCopy = completion;
  [(NSOperationQueue *)searchQueue cancelAllOperations];
  completionCopy[2](completionCopy, 1, 0);
}

- (id)_createURLForSearchQuery:(id)query error:(id *)error
{
  queryCopy = query;
  _allSupportedCountryCodes = [(HDClinicalProviderServiceManager *)self _allSupportedCountryCodes];
  [(HDClinicalProviderServiceManager *)self _createSessionIDIfNeeded];
  v8 = [HDProviderServiceSpecification URLForSearchQuery:queryCopy supportedCountryCodes:_allSupportedCountryCodes searchSessionID:self->_currentSearchSessionID error:error];

  return v8;
}

- (void)fetchRemoteProviderWithExternalID:(id)d batchID:(id)iD completion:(id)completion
{
  dCopy = d;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_38F54;
  v12[3] = &unk_107118;
  iDCopy = iD;
  selfCopy = self;
  v15 = dCopy;
  completionCopy = completion;
  v9 = dCopy;
  v10 = completionCopy;
  v11 = iDCopy;
  [(HDClinicalProviderServiceManager *)self _addOperationWithBlock:v12];
}

- (void)fetchRemoteGatewayWithExternalID:(id)d batchID:(id)iD completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_393C0;
  v10[3] = &unk_107168;
  selfCopy = self;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = iDCopy;
  v9 = dCopy;
  [(HDClinicalProviderServiceManager *)selfCopy _addOperationWithBlock:v10];
}

- (void)fetchRemoteGatewayWithExternalID:(id)d completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_395B8;
  v7[3] = &unk_107190;
  selfCopy = self;
  dCopy = d;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = dCopy;
  [(HDClinicalProviderServiceManager *)selfCopy _addOperationWithBlock:v7];
}

- (void)_fetchRemoteGatewayWithExternalID:(id)d batchID:(id)iD completion:(id)completion
{
  dCopy = d;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_39800;
  v12[3] = &unk_1071B8;
  iDCopy = iD;
  selfCopy = self;
  v15 = dCopy;
  completionCopy = completion;
  v9 = dCopy;
  v10 = completionCopy;
  v11 = iDCopy;
  [(HDClinicalProviderServiceManager *)self _addOperationWithBlock:v12];
}

- (id)remoteGatewaysWithBatchID:(id)d externalIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v9 = [HDProviderServiceSpecification URLForGatewaysWithBatchID:d error:error];
  if (v9)
  {
    v10 = [[NSURLRequest alloc] initWithURL:v9];
    v11 = [[HDCPSFetchJSONTask alloc] initWithSession:self->_URLSession request:v10];
    [(HDCPSFetchJSONTask *)v11 resume];
    [(HDCPSFetchJSONTask *)v11 waitUntilFinished];
    jSONObject = [(HDCPSFetchJSONTask *)v11 JSONObject];
    if (jSONObject)
    {
      v13 = [(HDClinicalProviderServiceManager *)self _supportedGatewaysFromFetchedJSONObject:jSONObject externalIDs:dsCopy error:error];
    }

    else
    {
      error = [(HDCPSFetchJSONTask *)v11 error];
      if (error)
      {
        if (error)
        {
          v15 = error;
          *error = error;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_searchResultsPageWithOnlySupportedSearchResultsInSearchResultsPage:(id)page
{
  pageCopy = page;
  searchResults = [pageCopy searchResults];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_39BF8;
  v9[3] = &unk_1071E0;
  v9[4] = self;
  v6 = [searchResults hk_filter:v9];

  v7 = [pageCopy copyWithSearchResults:v6];

  return v7;
}

- (id)_supportedGatewaysFromFetchedJSONObject:(id)object externalIDs:(id)ds error:(id *)error
{
  v6 = [HDProviderServiceSpecification gatewaysFromFetchedJSONObject:object matchingExternalIDs:ds error:error];
  v7 = v6;
  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_39D28;
    v10[3] = &unk_107208;
    v10[4] = self;
    v8 = [v6 hk_filter:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_allSupportedCountryCodes
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  ontologyConfigurationProvider = [daemon ontologyConfigurationProvider];

  if (!ontologyConfigurationProvider)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A1A54(v6, self, &self->_profile);
    }
  }

  allSupportedCountryCodes = [ontologyConfigurationProvider allSupportedCountryCodes];
  v8 = allSupportedCountryCodes;
  if (allSupportedCountryCodes)
  {
    v9 = allSupportedCountryCodes;
  }

  else
  {
    v9 = +[NSSet set];
  }

  v10 = v9;

  return v10;
}

- (BOOL)_isCountryCodeSupported:(id)supported
{
  supportedCopy = supported;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  ontologyConfigurationProvider = [daemon ontologyConfigurationProvider];

  if (!ontologyConfigurationProvider)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A1A54(v8, self, &self->_profile);
    }
  }

  v9 = [ontologyConfigurationProvider isCountryCodeSupported:supportedCopy];

  return v9;
}

- (BOOL)_insertOrUpdateGatewayIfSupported:(id)supported error:(id *)error
{
  supportedCopy = supported;
  country = [supportedCopy country];
  v8 = [(HDClinicalProviderServiceManager *)self _isCountryCodeSupported:country];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v10 = [HDClinicalGatewayEntity insertOrUpdateGateway:supportedCopy profile:WeakRetained error:error];
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A1B54(v11, self, supportedCopy);
    }

    v10 = 1;
  }

  return v10;
}

- (void)fetchLogoDataForBrand:(id)brand scaleKey:(id)key completion:(id)completion
{
  brandCopy = brand;
  keyCopy = key;
  completionCopy = completion;
  if ([brandCopy isFakeBrandForTestAccounts])
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A1C40(v11, self, brandCopy);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_3A148;
    v12[3] = &unk_107118;
    v13 = brandCopy;
    v14 = keyCopy;
    selfCopy = self;
    v16 = completionCopy;
    [(HDClinicalProviderServiceManager *)self _addOperationWithBlock:v12];
  }
}

- (id)createUpdateGatewaysOperationsForAccounts:(id)accounts
{
  accountsCopy = accounts;
  v4 = objc_alloc_init(NSMutableDictionary);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = accountsCopy;
  v5 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v54;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v54 != v7)
        {
          objc_enumerationMutation(obj);
        }

        gateway = [*(*(&v53 + 1) + 8 * i) gateway];
        v10 = gateway;
        if (gateway)
        {
          batchID = [gateway batchID];
          externalID = [v10 externalID];
          v13 = v4;
          v14 = [v4 objectForKeyedSubscript:batchID];
          v15 = [v14 arrayByAddingObject:externalID];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v59 = externalID;
            v17 = [NSArray arrayWithObjects:&v59 count:1];
          }

          v18 = v17;

          v4 = v13;
          [v13 setObject:v18 forKeyedSubscript:batchID];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v6);
  }

  v19 = objc_alloc_init(NSMutableDictionary);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v20 = v4;
  v21 = [v20 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v50;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v50 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v49 + 1) + 8 * j);
        v26 = [v20 objectForKeyedSubscript:v25];
        v27 = [HDCPSUpdateGatewaysOperation alloc];
        profile = [(HDClinicalProviderServiceManager *)self profile];
        v29 = [(HDCPSUpdateGatewaysOperation *)v27 initWithManager:self profile:profile batchID:v25 externalIDs:v26];

        [v19 setObject:v29 forKeyedSubscript:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v22);
  }

  v44 = objc_alloc_init(NSMutableDictionary);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v30 = obj;
  v31 = [v30 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v46;
    do
    {
      for (k = 0; k != v32; k = k + 1)
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v45 + 1) + 8 * k);
        gateway2 = [v35 gateway];
        v37 = gateway2;
        if (gateway2)
        {
          batchID2 = [gateway2 batchID];
          v39 = [v19 objectForKeyedSubscript:batchID2];

          identifier = [v35 identifier];
          [v44 setObject:v39 forKeyedSubscript:identifier];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v32);
  }

  return v44;
}

- (void)addOperationUnlessAlreadyEnqueued:(id)enqueued
{
  enqueuedCopy = enqueued;
  if (!enqueuedCopy)
  {
    sub_A1D2C(a2, self);
  }

  os_unfair_lock_lock(&self->_addOperationLock);
  operationQueue = [(HDClinicalProviderServiceManager *)self operationQueue];
  operations = [operationQueue operations];
  if ([operations containsObject:enqueuedCopy])
  {
  }

  else
  {
    isFinished = [enqueuedCopy isFinished];

    if (isFinished)
    {
      goto LABEL_8;
    }

    operationQueue = [(HDClinicalProviderServiceManager *)self operationQueue];
    [operationQueue addOperation:enqueuedCopy];
  }

LABEL_8:
  os_unfair_lock_unlock(&self->_addOperationLock);
}

- (void)_addOperationWithBlock:(id)block
{
  [(NSOperationQueue *)self->_taskScheduleQueue addOperationWithBlock:block];
  if (_HDIsUnitTesting)
  {
    unitTesting_didAddOperationToTaskScheduleQueue = [(HDClinicalProviderServiceManager *)self unitTesting_didAddOperationToTaskScheduleQueue];

    if (unitTesting_didAddOperationToTaskScheduleQueue)
    {
      unitTesting_didAddOperationToTaskScheduleQueue2 = [(HDClinicalProviderServiceManager *)self unitTesting_didAddOperationToTaskScheduleQueue];
      unitTesting_didAddOperationToTaskScheduleQueue2[2]();
    }
  }
}

- (void)_createSessionIDIfNeeded
{
  if (!self->_currentSearchSessionID || (v3 = self->_currentSearchSessionIDMaxLifetime) != 0 && (+[NSDate date], v4 = objc_claimAutoreleasedReturnValue(), v5 = [(NSDate *)v3 hk_isBeforeDate:v4], v4, v5))
  {
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];
    v8 = [uUIDString substringFromIndex:24];
    currentSearchSessionID = self->_currentSearchSessionID;
    self->_currentSearchSessionID = v8;

    v10 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
    currentSearchSessionIDMaxLifetime = self->_currentSearchSessionIDMaxLifetime;
    self->_currentSearchSessionIDMaxLifetime = v10;

    _objc_release_x1();
  }
}

- (void)unitTesting_markSessionIDExpired
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:-300.0];
  currentSearchSessionIDMaxLifetime = self->_currentSearchSessionIDMaxLifetime;
  self->_currentSearchSessionIDMaxLifetime = v3;

  _objc_release_x1();
}

- (HDHealthRecordsProfileExtension)profileExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);

  return WeakRetained;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end