@interface HDClinicalIngestionHandleStaleResourcesOperation
- (BOOL)_addExtractionHintToStaleResources;
- (BOOL)_ensureHasIngestStartDate;
- (BOOL)_ensureProtectedDataAvailable;
- (HDClinicalIngestionHandleStaleResourcesOperation)initWithTask:(id)a3 account:(id)a4 ingestStartDate:(id)a5 nextOperation:(id)a6;
- (void)_cancelWithError:(id)a3;
- (void)main;
@end

@implementation HDClinicalIngestionHandleStaleResourcesOperation

- (HDClinicalIngestionHandleStaleResourcesOperation)initWithTask:(id)a3 account:(id)a4 ingestStartDate:(id)a5 nextOperation:(id)a6
{
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HDClinicalIngestionHandleStaleResourcesOperation;
  v11 = [(HDClinicalIngestionPerAccountOperation *)&v15 initWithTask:a3 account:a4 nextOperation:a6];
  if (v11)
  {
    v12 = [v10 copy];
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

- (void)_cancelWithError:(id)a3
{
  [(HDClinicalIngestionOperation *)self setOperationError:a3];

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
  v3 = [(HDClinicalIngestionOperation *)self profile];
  v4 = [v3 database];
  v5 = [v4 isProtectedDataAvailable];

  if ((v5 & 1) == 0)
  {
    v6 = +[NSError hk_protectedDataInaccessibilityError];
    [(HDClinicalIngestionHandleStaleResourcesOperation *)self _cancelWithError:v6];
  }

  return v5;
}

- (BOOL)_addExtractionHintToStaleResources
{
  ingestStartDate = self->_ingestStartDate;
  v4 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v5 = [v4 identifier];
  v6 = [(HDClinicalIngestionOperation *)self profile];
  v18 = 0;
  v7 = [HDOriginalFHIRResourceLastSeenEntity resourceEntitiesNotSeenSince:ingestStartDate accountIdentifier:v5 profile:v6 error:&v18];
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

  v10 = [(HDClinicalIngestionOperation *)self profile];
  v17 = v8;
  v11 = [HDOriginalFHIRResourceEntity addExtractionHints:4 toResourceEntities:v7 profile:v10 error:&v17];
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