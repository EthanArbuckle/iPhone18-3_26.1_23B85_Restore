@interface HDClinicalIngestionComparePatientResourcesOperation
- (HDClinicalIngestionComparePatientResourcesOperation)initWithTask:(id)task account:(id)account existingResourceData:(id)data incomingResourceData:(id)resourceData;
- (void)_cancelWithError:(id)error;
- (void)main;
@end

@implementation HDClinicalIngestionComparePatientResourcesOperation

- (HDClinicalIngestionComparePatientResourcesOperation)initWithTask:(id)task account:(id)account existingResourceData:(id)data incomingResourceData:(id)resourceData
{
  dataCopy = data;
  resourceDataCopy = resourceData;
  v18.receiver = self;
  v18.super_class = HDClinicalIngestionComparePatientResourcesOperation;
  v12 = [(HDClinicalIngestionPerAccountOperation *)&v18 initWithTask:task account:account nextOperation:0];
  if (v12)
  {
    v13 = [dataCopy copy];
    existingResourceData = v12->_existingResourceData;
    v12->_existingResourceData = v13;

    v15 = [resourceDataCopy copy];
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

  profile = [(HDClinicalIngestionOperation *)self profile];
  database = [profile database];
  isProtectedDataAvailable = [database isProtectedDataAvailable];

  if (isProtectedDataAvailable)
  {
    task = [(HDClinicalIngestionOperation *)self task];
    healthRecordsServiceClient = [task healthRecordsServiceClient];

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
    [healthRecordsServiceClient compareExistingPatientResourceData:existingResourceData incomingPatientResourceData:incomingResourceData completion:v14];
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
    healthRecordsServiceClient = +[NSError hk_protectedDataInaccessibilityError];
    [(HDClinicalIngestionComparePatientResourcesOperation *)self _cancelWithError:healthRecordsServiceClient];
  }
}

- (void)_cancelWithError:(id)error
{
  errorCopy = error;
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A9E58(v5, self);
  }

  [(HDClinicalIngestionOperation *)self setOperationError:errorCopy];
  [(HDClinicalIngestionComparePatientResourcesOperation *)self cancel];
}

@end