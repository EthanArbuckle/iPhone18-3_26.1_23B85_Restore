@interface HDClinicalIngestionComparePatientResourcesOperation
- (HDClinicalIngestionComparePatientResourcesOperation)initWithTask:(id)a3 account:(id)a4 existingResourceData:(id)a5 incomingResourceData:(id)a6;
- (void)_cancelWithError:(id)a3;
- (void)main;
@end

@implementation HDClinicalIngestionComparePatientResourcesOperation

- (HDClinicalIngestionComparePatientResourcesOperation)initWithTask:(id)a3 account:(id)a4 existingResourceData:(id)a5 incomingResourceData:(id)a6
{
  v10 = a5;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = HDClinicalIngestionComparePatientResourcesOperation;
  v12 = [(HDClinicalIngestionPerAccountOperation *)&v18 initWithTask:a3 account:a4 nextOperation:0];
  if (v12)
  {
    v13 = [v10 copy];
    existingResourceData = v12->_existingResourceData;
    v12->_existingResourceData = v13;

    v15 = [v11 copy];
    incomingResourceData = v12->_incomingResourceData;
    v12->_incomingResourceData = v15;
  }

  return v12;
}

- (void)main
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A9C78(v3, self);
  }

  v4 = [(HDClinicalIngestionOperation *)self profile];
  v5 = [v4 database];
  v6 = [v5 isProtectedDataAvailable];

  if (v6)
  {
    v7 = [(HDClinicalIngestionOperation *)self task];
    v8 = [v7 healthRecordsServiceClient];

    v9 = dispatch_semaphore_create(0);
    existingResourceData = self->_existingResourceData;
    incomingResourceData = self->_incomingResourceData;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_99D98;
    v14[3] = &unk_108D38;
    v14[4] = self;
    v12 = v9;
    v15 = v12;
    [v8 compareExistingPatientResourceData:existingResourceData incomingPatientResourceData:incomingResourceData completion:v14];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    _HKInitializeLogging();
    v13 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A9D10(v13, self);
    }
  }

  else
  {
    v8 = +[NSError hk_protectedDataInaccessibilityError];
    [(HDClinicalIngestionComparePatientResourcesOperation *)self _cancelWithError:v8];
  }
}

- (void)_cancelWithError:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A9E58(v5, self);
  }

  [(HDClinicalIngestionOperation *)self setOperationError:v4];
  [(HDClinicalIngestionComparePatientResourcesOperation *)self cancel];
}

@end