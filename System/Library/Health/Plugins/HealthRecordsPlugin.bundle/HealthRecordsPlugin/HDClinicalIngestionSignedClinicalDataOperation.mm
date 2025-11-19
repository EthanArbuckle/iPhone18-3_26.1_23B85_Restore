@interface HDClinicalIngestionSignedClinicalDataOperation
- (id)_askForAccessCredentialsWithError:(id *)a3;
- (id)runFeatureWithCredential:(id)a3 error:(id *)a4;
- (void)cancelWithError:(id)a3;
- (void)main;
- (void)storeDataFromParsingResult:(id)a3 existingAccountIdentifier:(id)a4;
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
      v12 = [(HDClinicalIngestionPerAccountOperation *)self account];
      v13 = [v12 identifier];
      [(HDClinicalIngestionSignedClinicalDataOperation *)self storeDataFromParsingResult:v10 existingAccountIdentifier:v13];

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

- (void)cancelWithError:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_9FD7C(a2, self);
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9FDF8();
  }

  [(HDClinicalIngestionOperation *)self setOperationError:v5];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(HDClinicalIngestionSignedClinicalDataOperation *)self cancel];
}

- (id)_askForAccessCredentialsWithError:(id *)a3
{
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9FEA8(v5, self);
  }

  v6 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v7 = [v6 connectionInformationWithError:a3];

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
    v8 = [(HDClinicalIngestionOperation *)self profileExtension];
    v9 = [v8 createHealthRecordsLegacyIngestionServiceClient];

    v10 = [HKAsynchronousOperation alloc];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_2B4FC;
    v20[3] = &unk_106BE0;
    v11 = v9;
    v21 = v11;
    v22 = v7;
    v23 = self;
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
        if (a3)
        {
          v16 = v14;
          *a3 = v15;
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

- (id)runFeatureWithCredential:(id)a3 error:(id *)a4
{
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A0080(v7);
  }

  v8 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v9 = [v8 connectionInformationWithCredential:v6 error:a4];

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

  v11 = [(HDClinicalIngestionOperation *)self profileExtension];
  v12 = [v11 isImproveHealthRecordsDataSubmissionAllowed];

  _HKInitializeLogging();
  v13 = HKLogHealthRecords;
  v14 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
  if (!v12)
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

  v42 = a4;
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

  v18 = [(HDClinicalIngestionOperation *)self profileExtension];
  v19 = [v18 profile];
  v20 = [v19 daemon];
  v21 = [v20 ontologyConfigurationProvider];
  v22 = [v21 improveHealthRecordsGatedAnalyticsEnabledCountryCodes];
  v23 = [(HDClinicalIngestionGatewayFeatureOperation *)self gateway];
  v24 = [v23 country];
  v25 = [v22 containsObject:v24];

  if ((v25 & 1) == 0)
  {
    _HKInitializeLogging();
    v31 = HKLogHealthRecords;
    a4 = v42;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A01D8(v31, self);
    }

LABEL_16:
    v26 = 0;
    goto LABEL_17;
  }

  v26 = 1;
  a4 = v42;
LABEL_17:
  v32 = [HKClinicalIngestionContext alloc];
  v33 = [(HDClinicalIngestionGatewayFeatureOperation *)self queryMode];
  v34 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v35 = [v34 lastFetchDate];
  v36 = [v32 initWithAccountConnectionInformation:v9 queryMode:v33 options:v26 lastFetchDate:v35];

  v37 = [(HDClinicalIngestionOperation *)self task];
  v38 = [v37 healthRecordsIngestionServiceClient];
  v39 = [(HDClinicalIngestionGatewayFeatureOperation *)self feature];
  v27 = [v38 handleSignedClinicalDataFeature:v39 context:v36 error:a4];

  _HKInitializeLogging();
  v40 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A02A4(v40);
  }

LABEL_20:

  return v27;
}

- (void)storeDataFromParsingResult:(id)a3 existingAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A0364();
  }

  v8 = [(HDClinicalIngestionOperation *)self profileExtension];
  v9 = [v8 signedClinicalDataManager];

  if (!v9)
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A0418(v10);
    }
  }

  v15 = 0;
  v11 = [v9 storeDataFromParsingResult:v6 existingAccountIdentifier:v7 insertOriginalRecords:1 allRecordsWereDuplicates:0 error:&v15];
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