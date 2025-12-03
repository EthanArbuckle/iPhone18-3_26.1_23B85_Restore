@interface HDFHIRIngestionResourceFetchOperation
- (HDFHIRIngestionResourceFetchOperation)initWithTask:(id)task account:(id)account nextOperation:(id)operation queryMode:(int64_t)mode resourceSchema:(id)schema;
- (id)_assembleDownloadRequestWithError:(id *)error;
- (void)_accumulateMetricsFromTaskStates:(id)states;
- (void)_handleTaskCompletedWithData:(id)data;
- (void)_handleTaskError:(id)error;
- (void)_handleTokenRefreshResult:(id)result;
- (void)main;
@end

@implementation HDFHIRIngestionResourceFetchOperation

- (HDFHIRIngestionResourceFetchOperation)initWithTask:(id)task account:(id)account nextOperation:(id)operation queryMode:(int64_t)mode resourceSchema:(id)schema
{
  schemaCopy = schema;
  v18.receiver = self;
  v18.super_class = HDFHIRIngestionResourceFetchOperation;
  v13 = [(HDClinicalIngestionPerAccountOperation *)&v18 initWithTask:task account:account nextOperation:operation];
  v14 = v13;
  if (v13)
  {
    v13->_queryMode = mode;
    v15 = [schemaCopy copy];
    resourceSchema = v14->_resourceSchema;
    v14->_resourceSchema = v15;
  }

  return v14;
}

- (void)main
{
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
    name = [(HKClinicalGatewayEndpointSchema *)self->_resourceSchema name];
    *buf = 138543618;
    v26 = v6;
    v27 = 2114;
    v28 = name;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ starting to fetch %{public}@ resources", buf, 0x16u);
  }

  v24 = 0;
  v8 = [(HDFHIRIngestionResourceFetchOperation *)self _assembleDownloadRequestWithError:&v24];
  v9 = v24;
  if (v8)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_27FD0;
    v23[3] = &unk_106A48;
    v23[4] = self;
    v10 = objc_retainBlock(v23);
    task = [(HDClinicalIngestionOperation *)self task];
    legacyXPCIngestionServiceClient = [task legacyXPCIngestionServiceClient];

    if (!legacyXPCIngestionServiceClient)
    {
      sub_9F698(a2, self);
    }

    v13 = dispatch_semaphore_create(0);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_28100;
    v20[3] = &unk_106A70;
    v20[4] = self;
    v14 = v10;
    v22 = v14;
    v15 = v13;
    v21 = v15;
    [legacyXPCIngestionServiceClient performDownloadRequest:v8 completion:v20];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    _HKInitializeLogging();
    v16 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
      name2 = [(HKClinicalGatewayEndpointSchema *)self->_resourceSchema name];
      *buf = 138543618;
      v26 = v18;
      v27 = 2114;
      v28 = name2;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ finished fetching %{public}@ resources", buf, 0x16u);
    }
  }

  else
  {
    [(HDFHIRIngestionResourceFetchOperation *)self _handleTaskError:v9];
  }
}

- (void)_handleTaskError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    sub_9F6FC(a2, self);
  }

  if ([errorCopy hk_isHealthKitError] && objc_msgSend(errorCopy, "code") == &stru_68.segname[5])
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
      name = [(HKClinicalGatewayEndpointSchema *)self->_resourceSchema name];
      v11 = HKSensitiveLogItem();
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = name;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching %{public}@ resources was not performed. %@", &v13, 0x20u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9F778(v12, &self->super.super.super.super.isa);
    }

    objc_storeStrong(&self->_fetchError, error);
  }
}

- (void)_handleTaskCompletedWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [HDFHIRResourceData alloc];
    effectiveRequestURL = self->_effectiveRequestURL;
    account = [(HDClinicalIngestionPerAccountOperation *)self account];
    gateway = [account gateway];
    fHIRVersion = [gateway FHIRVersion];
    v9 = [v5 initWithData:dataCopy sourceURL:effectiveRequestURL FHIRVersion:fHIRVersion];

    fetchedData = self->_fetchedData;
    self->_fetchedData = v9;
  }
}

- (id)_assembleDownloadRequestWithError:(id *)error
{
  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  v6 = [account connectionInformationWithError:error];

  if (v6)
  {
    v7 = [HKClinicalIngestionContext alloc];
    queryMode = self->_queryMode;
    account2 = [(HDClinicalIngestionPerAccountOperation *)self account];
    lastFetchDate = [account2 lastFetchDate];
    v11 = [v7 initWithAccountConnectionInformation:v6 queryMode:queryMode options:1 lastFetchDate:lastFetchDate];

    v12 = [HKFHIRResourceDownloadRequest alloc];
    name = [(HKClinicalGatewayEndpointSchema *)self->_resourceSchema name];
    definition = [(HKClinicalGatewayEndpointSchema *)self->_resourceSchema definition];
    v15 = [v12 initWithResourceType:name resourceSchemaDefinition:definition fullRequestURL:self->_fullRequestURL context:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_handleTokenRefreshResult:(id)result
{
  resultCopy = result;
  profileExtension = [(HDClinicalIngestionOperation *)self profileExtension];
  accountManager = [profileExtension accountManager];
  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  [accountManager didRefreshCredentialForAccount:account refreshResult:resultCopy];
}

- (void)_accumulateMetricsFromTaskStates:(id)states
{
  statesCopy = states;
  task = [(HDClinicalIngestionOperation *)self task];
  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  gateway = [account gateway];
  [task accumulateIngestionAnalyticsFromTaskStates:statesCopy gateway:gateway];
}

@end