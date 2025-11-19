@interface HDFHIRIngestionResourceFetchOperation
- (HDFHIRIngestionResourceFetchOperation)initWithTask:(id)a3 account:(id)a4 nextOperation:(id)a5 queryMode:(int64_t)a6 resourceSchema:(id)a7;
- (id)_assembleDownloadRequestWithError:(id *)a3;
- (void)_accumulateMetricsFromTaskStates:(id)a3;
- (void)_handleTaskCompletedWithData:(id)a3;
- (void)_handleTaskError:(id)a3;
- (void)_handleTokenRefreshResult:(id)a3;
- (void)main;
@end

@implementation HDFHIRIngestionResourceFetchOperation

- (HDFHIRIngestionResourceFetchOperation)initWithTask:(id)a3 account:(id)a4 nextOperation:(id)a5 queryMode:(int64_t)a6 resourceSchema:(id)a7
{
  v12 = a7;
  v18.receiver = self;
  v18.super_class = HDFHIRIngestionResourceFetchOperation;
  v13 = [(HDClinicalIngestionPerAccountOperation *)&v18 initWithTask:a3 account:a4 nextOperation:a5];
  v14 = v13;
  if (v13)
  {
    v13->_queryMode = a6;
    v15 = [v12 copy];
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
    v7 = [(HKClinicalGatewayEndpointSchema *)self->_resourceSchema name];
    *buf = 138543618;
    v26 = v6;
    v27 = 2114;
    v28 = v7;
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
    v11 = [(HDClinicalIngestionOperation *)self task];
    v12 = [v11 legacyXPCIngestionServiceClient];

    if (!v12)
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
    [v12 performDownloadRequest:v8 completion:v20];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    _HKInitializeLogging();
    v16 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
      v19 = [(HKClinicalGatewayEndpointSchema *)self->_resourceSchema name];
      *buf = 138543618;
      v26 = v18;
      v27 = 2114;
      v28 = v19;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ finished fetching %{public}@ resources", buf, 0x16u);
    }
  }

  else
  {
    [(HDFHIRIngestionResourceFetchOperation *)self _handleTaskError:v9];
  }
}

- (void)_handleTaskError:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    sub_9F6FC(a2, self);
  }

  if ([v6 hk_isHealthKitError] && objc_msgSend(v6, "code") == &stru_68.segname[5])
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
      v10 = [(HKClinicalGatewayEndpointSchema *)self->_resourceSchema name];
      v11 = HKSensitiveLogItem();
      v13 = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
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

    objc_storeStrong(&self->_fetchError, a3);
  }
}

- (void)_handleTaskCompletedWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [HDFHIRResourceData alloc];
    effectiveRequestURL = self->_effectiveRequestURL;
    v11 = [(HDClinicalIngestionPerAccountOperation *)self account];
    v7 = [v11 gateway];
    v8 = [v7 FHIRVersion];
    v9 = [v5 initWithData:v4 sourceURL:effectiveRequestURL FHIRVersion:v8];

    fetchedData = self->_fetchedData;
    self->_fetchedData = v9;
  }
}

- (id)_assembleDownloadRequestWithError:(id *)a3
{
  v5 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v6 = [v5 connectionInformationWithError:a3];

  if (v6)
  {
    v7 = [HKClinicalIngestionContext alloc];
    queryMode = self->_queryMode;
    v9 = [(HDClinicalIngestionPerAccountOperation *)self account];
    v10 = [v9 lastFetchDate];
    v11 = [v7 initWithAccountConnectionInformation:v6 queryMode:queryMode options:1 lastFetchDate:v10];

    v12 = [HKFHIRResourceDownloadRequest alloc];
    v13 = [(HKClinicalGatewayEndpointSchema *)self->_resourceSchema name];
    v14 = [(HKClinicalGatewayEndpointSchema *)self->_resourceSchema definition];
    v15 = [v12 initWithResourceType:v13 resourceSchemaDefinition:v14 fullRequestURL:self->_fullRequestURL context:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_handleTokenRefreshResult:(id)a3
{
  v4 = a3;
  v7 = [(HDClinicalIngestionOperation *)self profileExtension];
  v5 = [v7 accountManager];
  v6 = [(HDClinicalIngestionPerAccountOperation *)self account];
  [v5 didRefreshCredentialForAccount:v6 refreshResult:v4];
}

- (void)_accumulateMetricsFromTaskStates:(id)a3
{
  v4 = a3;
  v7 = [(HDClinicalIngestionOperation *)self task];
  v5 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v6 = [v5 gateway];
  [v7 accumulateIngestionAnalyticsFromTaskStates:v4 gateway:v6];
}

@end