@interface HDClinicalProviderServiceManager
- (BOOL)_insertOrUpdateGatewayIfSupported:(id)a3 error:(id *)a4;
- (BOOL)_isCountryCodeSupported:(id)a3;
- (HDClinicalProviderServiceManager)init;
- (HDClinicalProviderServiceManager)initWithProfileExtension:(id)a3;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDProfile)profile;
- (id)_allSupportedCountryCodes;
- (id)_createURLForSearchQuery:(id)a3 error:(id *)a4;
- (id)_searchResultsPageWithOnlySupportedSearchResultsInSearchResultsPage:(id)a3;
- (id)_supportedGatewaysFromFetchedJSONObject:(id)a3 externalIDs:(id)a4 error:(id *)a5;
- (id)createUpdateGatewaysOperationsForAccounts:(id)a3;
- (id)remoteGatewaysWithBatchID:(id)a3 externalIDs:(id)a4 error:(id *)a5;
- (void)_addOperationWithBlock:(id)a3;
- (void)_createSessionIDIfNeeded;
- (void)_fetchRemoteGatewayWithExternalID:(id)a3 batchID:(id)a4 completion:(id)a5;
- (void)addOperationUnlessAlreadyEnqueued:(id)a3;
- (void)cancelInFlightSearchQueriesWithCompletion:(id)a3;
- (void)fetchLogoDataForBrand:(id)a3 scaleKey:(id)a4 completion:(id)a5;
- (void)fetchRemoteGatewayWithExternalID:(id)a3 batchID:(id)a4 completion:(id)a5;
- (void)fetchRemoteGatewayWithExternalID:(id)a3 completion:(id)a4;
- (void)fetchRemoteProviderWithExternalID:(id)a3 batchID:(id)a4 completion:(id)a5;
- (void)fetchRemoteSearchResultsPageForQuery:(id)a3 completion:(id)a4;
- (void)unitTesting_markSessionIDExpired;
@end

@implementation HDClinicalProviderServiceManager

- (HDClinicalProviderServiceManager)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalProviderServiceManager)initWithProfileExtension:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HDClinicalProviderServiceManager;
  v5 = [(HDClinicalProviderServiceManager *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, v4);
    v7 = [v4 profile];
    objc_storeWeak(&v6->_profile, v7);

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

- (void)fetchRemoteSearchResultsPageForQuery:(id)a3 completion:(id)a4
{
  v6 = a4;
  v20 = 0;
  v7 = [(HDClinicalProviderServiceManager *)self _createURLForSearchQuery:a3 error:&v20];
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
    v18 = self;
    v19 = v6;
    v11 = v10;
    v12 = objc_retainBlock(&v13);
    [(HDCPSSearchOperation *)v11 setCompletionBlock:v12, v13, v14, v15, v16];
    [(NSOperationQueue *)self->_searchQueue addOperation:v11];
  }

  else
  {
    (*(v6 + 2))(v6, 0, v8);
  }
}

- (void)cancelInFlightSearchQueriesWithCompletion:(id)a3
{
  searchQueue = self->_searchQueue;
  v4 = a3;
  [(NSOperationQueue *)searchQueue cancelAllOperations];
  v4[2](v4, 1, 0);
}

- (id)_createURLForSearchQuery:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalProviderServiceManager *)self _allSupportedCountryCodes];
  [(HDClinicalProviderServiceManager *)self _createSessionIDIfNeeded];
  v8 = [HDProviderServiceSpecification URLForSearchQuery:v6 supportedCountryCodes:v7 searchSessionID:self->_currentSearchSessionID error:a4];

  return v8;
}

- (void)fetchRemoteProviderWithExternalID:(id)a3 batchID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_38F54;
  v12[3] = &unk_107118;
  v13 = a4;
  v14 = self;
  v15 = v8;
  v16 = a5;
  v9 = v8;
  v10 = v16;
  v11 = v13;
  [(HDClinicalProviderServiceManager *)self _addOperationWithBlock:v12];
}

- (void)fetchRemoteGatewayWithExternalID:(id)a3 batchID:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_393C0;
  v10[3] = &unk_107168;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  [(HDClinicalProviderServiceManager *)v11 _addOperationWithBlock:v10];
}

- (void)fetchRemoteGatewayWithExternalID:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_395B8;
  v7[3] = &unk_107190;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(HDClinicalProviderServiceManager *)v8 _addOperationWithBlock:v7];
}

- (void)_fetchRemoteGatewayWithExternalID:(id)a3 batchID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_39800;
  v12[3] = &unk_1071B8;
  v13 = a4;
  v14 = self;
  v15 = v8;
  v16 = a5;
  v9 = v8;
  v10 = v16;
  v11 = v13;
  [(HDClinicalProviderServiceManager *)self _addOperationWithBlock:v12];
}

- (id)remoteGatewaysWithBatchID:(id)a3 externalIDs:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [HDProviderServiceSpecification URLForGatewaysWithBatchID:a3 error:a5];
  if (v9)
  {
    v10 = [[NSURLRequest alloc] initWithURL:v9];
    v11 = [[HDCPSFetchJSONTask alloc] initWithSession:self->_URLSession request:v10];
    [(HDCPSFetchJSONTask *)v11 resume];
    [(HDCPSFetchJSONTask *)v11 waitUntilFinished];
    v12 = [(HDCPSFetchJSONTask *)v11 JSONObject];
    if (v12)
    {
      v13 = [(HDClinicalProviderServiceManager *)self _supportedGatewaysFromFetchedJSONObject:v12 externalIDs:v8 error:a5];
    }

    else
    {
      v14 = [(HDCPSFetchJSONTask *)v11 error];
      if (v14)
      {
        if (a5)
        {
          v15 = v14;
          *a5 = v14;
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

- (id)_searchResultsPageWithOnlySupportedSearchResultsInSearchResultsPage:(id)a3
{
  v4 = a3;
  v5 = [v4 searchResults];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_39BF8;
  v9[3] = &unk_1071E0;
  v9[4] = self;
  v6 = [v5 hk_filter:v9];

  v7 = [v4 copyWithSearchResults:v6];

  return v7;
}

- (id)_supportedGatewaysFromFetchedJSONObject:(id)a3 externalIDs:(id)a4 error:(id *)a5
{
  v6 = [HDProviderServiceSpecification gatewaysFromFetchedJSONObject:a3 matchingExternalIDs:a4 error:a5];
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
  v4 = [WeakRetained daemon];
  v5 = [v4 ontologyConfigurationProvider];

  if (!v5)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A1A54(v6, self, &self->_profile);
    }
  }

  v7 = [v5 allSupportedCountryCodes];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSSet set];
  }

  v10 = v9;

  return v10;
}

- (BOOL)_isCountryCodeSupported:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained daemon];
  v7 = [v6 ontologyConfigurationProvider];

  if (!v7)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A1A54(v8, self, &self->_profile);
    }
  }

  v9 = [v7 isCountryCodeSupported:v4];

  return v9;
}

- (BOOL)_insertOrUpdateGatewayIfSupported:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 country];
  v8 = [(HDClinicalProviderServiceManager *)self _isCountryCodeSupported:v7];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v10 = [HDClinicalGatewayEntity insertOrUpdateGateway:v6 profile:WeakRetained error:a4];
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A1B54(v11, self, v6);
    }

    v10 = 1;
  }

  return v10;
}

- (void)fetchLogoDataForBrand:(id)a3 scaleKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isFakeBrandForTestAccounts])
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A1C40(v11, self, v8);
    }

    (*(v10 + 2))(v10, 0, 0);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_3A148;
    v12[3] = &unk_107118;
    v13 = v8;
    v14 = v9;
    v15 = self;
    v16 = v10;
    [(HDClinicalProviderServiceManager *)self _addOperationWithBlock:v12];
  }
}

- (id)createUpdateGatewaysOperationsForAccounts:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v3;
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

        v9 = [*(*(&v53 + 1) + 8 * i) gateway];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 batchID];
          v12 = [v10 externalID];
          v13 = v4;
          v14 = [v4 objectForKeyedSubscript:v11];
          v15 = [v14 arrayByAddingObject:v12];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v59 = v12;
            v17 = [NSArray arrayWithObjects:&v59 count:1];
          }

          v18 = v17;

          v4 = v13;
          [v13 setObject:v18 forKeyedSubscript:v11];
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
        v28 = [(HDClinicalProviderServiceManager *)self profile];
        v29 = [(HDCPSUpdateGatewaysOperation *)v27 initWithManager:self profile:v28 batchID:v25 externalIDs:v26];

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
        v36 = [v35 gateway];
        v37 = v36;
        if (v36)
        {
          v38 = [v36 batchID];
          v39 = [v19 objectForKeyedSubscript:v38];

          v40 = [v35 identifier];
          [v44 setObject:v39 forKeyedSubscript:v40];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v32);
  }

  return v44;
}

- (void)addOperationUnlessAlreadyEnqueued:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    sub_A1D2C(a2, self);
  }

  os_unfair_lock_lock(&self->_addOperationLock);
  v5 = [(HDClinicalProviderServiceManager *)self operationQueue];
  v6 = [v5 operations];
  if ([v6 containsObject:v8])
  {
  }

  else
  {
    v7 = [v8 isFinished];

    if (v7)
    {
      goto LABEL_8;
    }

    v5 = [(HDClinicalProviderServiceManager *)self operationQueue];
    [v5 addOperation:v8];
  }

LABEL_8:
  os_unfair_lock_unlock(&self->_addOperationLock);
}

- (void)_addOperationWithBlock:(id)a3
{
  [(NSOperationQueue *)self->_taskScheduleQueue addOperationWithBlock:a3];
  if (_HDIsUnitTesting)
  {
    v4 = [(HDClinicalProviderServiceManager *)self unitTesting_didAddOperationToTaskScheduleQueue];

    if (v4)
    {
      v5 = [(HDClinicalProviderServiceManager *)self unitTesting_didAddOperationToTaskScheduleQueue];
      v5[2]();
    }
  }
}

- (void)_createSessionIDIfNeeded
{
  if (!self->_currentSearchSessionID || (v3 = self->_currentSearchSessionIDMaxLifetime) != 0 && (+[NSDate date], v4 = objc_claimAutoreleasedReturnValue(), v5 = [(NSDate *)v3 hk_isBeforeDate:v4], v4, v5))
  {
    v6 = +[NSUUID UUID];
    v7 = [v6 UUIDString];
    v8 = [v7 substringFromIndex:24];
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