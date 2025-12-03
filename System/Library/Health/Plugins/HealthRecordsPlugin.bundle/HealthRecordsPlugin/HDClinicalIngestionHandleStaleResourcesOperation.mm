@interface HDClinicalIngestionHandleStaleResourcesOperation
- (BOOL)_addExtractionHintToStaleResources;
- (BOOL)_ensureHasIngestStartDate;
- (BOOL)_ensureProtectedDataAvailable;
- (HDClinicalIngestionHandleStaleResourcesOperation)initWithTask:(id)task account:(id)account ingestStartDate:(id)date nextOperation:(id)operation;
- (void)_cancelWithError:(id)error;
- (void)main;
@end

@implementation HDClinicalIngestionHandleStaleResourcesOperation

- (HDClinicalIngestionHandleStaleResourcesOperation)initWithTask:(id)task account:(id)account ingestStartDate:(id)date nextOperation:(id)operation
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = HDClinicalIngestionHandleStaleResourcesOperation;
  v11 = [(HDClinicalIngestionPerAccountOperation *)&v15 initWithTask:task account:account nextOperation:operation];
  if (v11)
  {
    v12 = [dateCopy copy];
    ingestStartDate = v11->_ingestStartDate;
    v11->_ingestStartDate = v12;
  }

  return v11;
}

- (void)main
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A169C(v3, self);
  }

  if ([(HDClinicalIngestionHandleStaleResourcesOperation *)self _ensureHasIngestStartDate]&& [(HDClinicalIngestionHandleStaleResourcesOperation *)self _ensureProtectedDataAvailable]&& [(HDClinicalIngestionHandleStaleResourcesOperation *)self _addExtractionHintToStaleResources])
  {
    _HKInitializeLogging();
    v4 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A182C(v4);
    }
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A1760(v5, self);
    }
  }
}

- (void)_cancelWithError:(id)error
{
  [(HDClinicalIngestionOperation *)self setOperationError:error];

  [(HDClinicalIngestionHandleStaleResourcesOperation *)self cancel];
}

- (BOOL)_ensureHasIngestStartDate
{
  ingestStartDate = self->_ingestStartDate;
  if (!ingestStartDate)
  {
    v4 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
    v5 = [NSError hk_error:100 format:@"cannot run %@ without an ingest start date", v4];
    [(HDClinicalIngestionHandleStaleResourcesOperation *)self _cancelWithError:v5];
  }

  return ingestStartDate != 0;
}

- (BOOL)_ensureProtectedDataAvailable
{
  profile = [(HDClinicalIngestionOperation *)self profile];
  database = [profile database];
  isProtectedDataAvailable = [database isProtectedDataAvailable];

  if ((isProtectedDataAvailable & 1) == 0)
  {
    v6 = +[NSError hk_protectedDataInaccessibilityError];
    [(HDClinicalIngestionHandleStaleResourcesOperation *)self _cancelWithError:v6];
  }

  return isProtectedDataAvailable;
}

- (BOOL)_addExtractionHintToStaleResources
{
  ingestStartDate = self->_ingestStartDate;
  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  identifier = [account identifier];
  profile = [(HDClinicalIngestionOperation *)self profile];
  v18 = 0;
  v7 = [HDOriginalFHIRResourceLastSeenEntity resourceEntitiesNotSeenSince:ingestStartDate accountIdentifier:identifier profile:profile error:&v18];
  v8 = v18;

  if (!v7)
  {
    [(HDClinicalIngestionHandleStaleResourcesOperation *)self _cancelWithError:v8];
    v13 = 0;
LABEL_9:
    v12 = v8;
    goto LABEL_12;
  }

  _HKInitializeLogging();
  v9 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A18D0(v9, self);
  }

  if (![v7 count])
  {
    v13 = 1;
    goto LABEL_9;
  }

  profile2 = [(HDClinicalIngestionOperation *)self profile];
  v17 = v8;
  v11 = [HDOriginalFHIRResourceEntity addExtractionHints:4 toResourceEntities:v7 profile:profile2 error:&v17];
  v12 = v17;

  v13 = v11 != 0;
  if (v11)
  {
    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 count]);
    numberOfAffectedResources = self->_numberOfAffectedResources;
    self->_numberOfAffectedResources = v14;
  }

  else
  {
    [(HDClinicalIngestionHandleStaleResourcesOperation *)self _cancelWithError:v12];
  }

LABEL_12:
  return v13;
}

@end