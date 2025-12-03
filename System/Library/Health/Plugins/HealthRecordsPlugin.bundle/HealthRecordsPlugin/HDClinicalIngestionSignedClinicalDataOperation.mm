@interface HDClinicalIngestionSignedClinicalDataOperation
- (id)_askForAccessCredentialsWithError:(id *)error;
- (id)runFeatureWithCredential:(id)credential error:(id *)error;
- (void)cancelWithError:(id)error;
- (void)main;
- (void)storeDataFromParsingResult:(id)result existingAccountIdentifier:(id)identifier;
@end

@implementation HDClinicalIngestionSignedClinicalDataOperation

- (void)main
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HDClinicalIngestionGatewayFeatureOperation *)self debugDescription];
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ starting", buf, 0xCu);
  }

  v6 = objc_alloc_init(NSOperationQueue);
  operationQueue = self->_operationQueue;
  self->_operationQueue = v6;

  v19 = 0;
  v8 = [(HDClinicalIngestionSignedClinicalDataOperation *)self _askForAccessCredentialsWithError:&v19];
  v9 = v19;
  if (v8)
  {
    v18 = 0;
    v10 = [(HDClinicalIngestionSignedClinicalDataOperation *)self runFeatureWithCredential:v8 error:&v18];
    v11 = v18;
    if (v10)
    {
      account = [(HDClinicalIngestionPerAccountOperation *)self account];
      identifier = [account identifier];
      [(HDClinicalIngestionSignedClinicalDataOperation *)self storeDataFromParsingResult:v10 existingAccountIdentifier:identifier];

      _HKInitializeLogging();
      v14 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = [(HDClinicalIngestionGatewayFeatureOperation *)self debugDescription];
        *buf = 138543362;
        v21 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ complete", buf, 0xCu);

LABEL_17:
      }

LABEL_18:

      goto LABEL_19;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9FC1C();
      if (v11)
      {
        goto LABEL_12;
      }
    }

    else if (v11)
    {
LABEL_12:
      [(HDClinicalIngestionSignedClinicalDataOperation *)self cancelWithError:v11];
      goto LABEL_18;
    }

    v15 = [NSError hk_error:122 description:0];
    [(HDClinicalIngestionSignedClinicalDataOperation *)self cancelWithError:v15];
    goto LABEL_17;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9FCCC();
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_14:
    v17 = [NSError hk_error:122 description:0];
    [(HDClinicalIngestionSignedClinicalDataOperation *)self cancelWithError:v17];

    goto LABEL_19;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_9:
  [(HDClinicalIngestionSignedClinicalDataOperation *)self cancelWithError:v9];
LABEL_19:
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    sub_9FD7C(a2, self);
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9FDF8();
  }

  [(HDClinicalIngestionOperation *)self setOperationError:errorCopy];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(HDClinicalIngestionSignedClinicalDataOperation *)self cancel];
}

- (id)_askForAccessCredentialsWithError:(id *)error
{
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9FEA8(v5, self);
  }

  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  v7 = [account connectionInformationWithError:error];

  if (v7)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_2B4E4;
    v36 = sub_2B4F4;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_2B4E4;
    v30 = sub_2B4F4;
    v31 = 0;
    profileExtension = [(HDClinicalIngestionOperation *)self profileExtension];
    createHealthRecordsLegacyIngestionServiceClient = [profileExtension createHealthRecordsLegacyIngestionServiceClient];

    v10 = [HKAsynchronousOperation alloc];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_2B4FC;
    v20[3] = &unk_106BE0;
    v11 = createHealthRecordsLegacyIngestionServiceClient;
    v21 = v11;
    v22 = v7;
    selfCopy = self;
    v24 = &v32;
    v25 = &v26;
    v12 = [v10 initWithName:@"foo" operationBlock:v20];
    [(NSOperationQueue *)self->_operationQueue addOperation:v12];
    [(NSOperationQueue *)self->_operationQueue waitUntilAllOperationsAreFinished];
    v13 = v33[5];
    if (!v13)
    {
      v14 = v27[5];
      v15 = v14;
      if (v14)
      {
        if (error)
        {
          v16 = v14;
          *error = v15;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v13 = v33[5];
    }

    v18 = v13;

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_9FF48(v17, self);
    }

    v18 = 0;
  }

  return v18;
}

- (id)runFeatureWithCredential:(id)credential error:(id *)error
{
  credentialCopy = credential;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A0080(v7);
  }

  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  v9 = [account connectionInformationWithCredential:credentialCopy error:error];

  if (!v9)
  {
    v27 = 0;
    goto LABEL_20;
  }

  _HKInitializeLogging();
  v10 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A0118(v10);
  }

  profileExtension = [(HDClinicalIngestionOperation *)self profileExtension];
  isImproveHealthRecordsDataSubmissionAllowed = [profileExtension isImproveHealthRecordsDataSubmissionAllowed];

  _HKInitializeLogging();
  v13 = HKLogHealthRecords;
  v14 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
  if (!isImproveHealthRecordsDataSubmissionAllowed)
  {
    if (v14)
    {
      v28 = v13;
      v29 = [(HDClinicalIngestionGatewayFeatureOperation *)self debugDescription];
      v30 = HKSensitiveLogItem();
      *buf = 138543618;
      v44 = v29;
      v45 = 2114;
      v46 = v30;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ ingestion analytics collection %{public}@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  errorCopy = error;
  if (v14)
  {
    v15 = v13;
    v16 = [(HDClinicalIngestionGatewayFeatureOperation *)self debugDescription];
    v17 = HKSensitiveLogItem();
    *buf = 138543618;
    v44 = v16;
    v45 = 2114;
    v46 = v17;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ ingestion analytics collection %{public}@", buf, 0x16u);
  }

  profileExtension2 = [(HDClinicalIngestionOperation *)self profileExtension];
  profile = [profileExtension2 profile];
  daemon = [profile daemon];
  ontologyConfigurationProvider = [daemon ontologyConfigurationProvider];
  improveHealthRecordsGatedAnalyticsEnabledCountryCodes = [ontologyConfigurationProvider improveHealthRecordsGatedAnalyticsEnabledCountryCodes];
  gateway = [(HDClinicalIngestionGatewayFeatureOperation *)self gateway];
  country = [gateway country];
  v25 = [improveHealthRecordsGatedAnalyticsEnabledCountryCodes containsObject:country];

  if ((v25 & 1) == 0)
  {
    _HKInitializeLogging();
    v31 = HKLogHealthRecords;
    error = errorCopy;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A01D8(v31, self);
    }

LABEL_16:
    v26 = 0;
    goto LABEL_17;
  }

  v26 = 1;
  error = errorCopy;
LABEL_17:
  v32 = [HKClinicalIngestionContext alloc];
  queryMode = [(HDClinicalIngestionGatewayFeatureOperation *)self queryMode];
  account2 = [(HDClinicalIngestionPerAccountOperation *)self account];
  lastFetchDate = [account2 lastFetchDate];
  v36 = [v32 initWithAccountConnectionInformation:v9 queryMode:queryMode options:v26 lastFetchDate:lastFetchDate];

  task = [(HDClinicalIngestionOperation *)self task];
  healthRecordsIngestionServiceClient = [task healthRecordsIngestionServiceClient];
  feature = [(HDClinicalIngestionGatewayFeatureOperation *)self feature];
  v27 = [healthRecordsIngestionServiceClient handleSignedClinicalDataFeature:feature context:v36 error:error];

  _HKInitializeLogging();
  v40 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A02A4(v40);
  }

LABEL_20:

  return v27;
}

- (void)storeDataFromParsingResult:(id)result existingAccountIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A0364();
  }

  profileExtension = [(HDClinicalIngestionOperation *)self profileExtension];
  signedClinicalDataManager = [profileExtension signedClinicalDataManager];

  if (!signedClinicalDataManager)
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A0418(v10);
    }
  }

  v15 = 0;
  v11 = [signedClinicalDataManager storeDataFromParsingResult:resultCopy existingAccountIdentifier:identifierCopy insertOriginalRecords:1 allRecordsWereDuplicates:0 error:&v15];
  v12 = v15;
  _HKInitializeLogging();
  v13 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A04B8(v13);
    if (v11)
    {
      goto LABEL_12;
    }
  }

  else if (v11)
  {
    goto LABEL_12;
  }

  if (v12)
  {
    [(HDClinicalIngestionSignedClinicalDataOperation *)self cancelWithError:v12];
  }

  else
  {
    v14 = [NSError hk_error:122 description:@"A failure but no error was returned from manager.storeDataFromParsingResult"];
    [(HDClinicalIngestionSignedClinicalDataOperation *)self cancelWithError:v14];
  }

LABEL_12:
}

@end