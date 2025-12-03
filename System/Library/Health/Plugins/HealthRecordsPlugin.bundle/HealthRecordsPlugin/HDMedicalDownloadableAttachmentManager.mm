@interface HDMedicalDownloadableAttachmentManager
- (BOOL)_addAttachmentAndMarkAvailableForAttachmentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_addAttachmentForMedicalDownloadableAttachmentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_beginOrResumeDownloadingAttachmentsWithError:(id *)error;
- (BOOL)_downloadAllowed;
- (BOOL)_indexDownloadableAttachmentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_reconcileDownloadableAttachmentToHKAttachmentForMedicalRecordWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_reconcileHKAttachmentForDownloadableAttachmentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_removeLocalFileForAttachmentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_saveInlineDataIfNeededForDownloadableAttachment:(id)attachment error:(id *)error;
- (BOOL)_saveInlineDataToTempFile:(id)file error:(id *)error;
- (BOOL)_updateNextRetryDateForAttachmentWithIdentifier:(id)identifier nextRetryDate:(id)date error:(id *)error;
- (BOOL)_updateNextRetryDateForFailedDownloadForAttachmentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_updateNextRetryDateForFailedIndexingForAttachmentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_updateNextRetryDateForFailedProcessingForAttachmentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)insertDownloadableAttachment:(id)attachment error:(id *)error;
- (BOOL)markDataAvailableForAttachmentWithIdentifier:(id)identifier attachmentContent:(id)content error:(id *)error;
- (BOOL)markDownloadCompleteForAttachmentWithIdentifier:(id)identifier fileURL:(id)l error:(id *)error;
- (BOOL)processDownloadableAttachmentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeAllAttachmentsFromMedicalRecord:(id)record error:(id *)error;
- (BOOL)removeDownloadableAttachmentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)triggerAttachmentRetryForMedicalRecordWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)updateErrorStatusAndRetryCountForAttachmentWithIdentifier:(id)identifier errorStatus:(int64_t)status lastError:(id)error retryCount:(int64_t)count error:(id *)a7;
- (BOOL)updateRetryCountForAttachmentWithIdentifier:(id)identifier retryCount:(int64_t)count nextRetryDate:(id)date error:(id *)error;
- (BOOL)updateStatusAndClearErrorForAttachmentWithIdentifier:(id)identifier status:(int64_t)status error:(id *)error;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDMedicalDownloadableAttachmentManager)initWithProfileExtension:(id)extension;
- (id)_applyBackoffStrategyForRetryCount:(int64_t)count now:(id)now;
- (id)_attachmentIdentifierForClinicalRecordWithUUID:(id)d profile:(id)profile error:(id *)error;
- (id)_attachmentIdentifierForMedicalRecordWithUUID:(id)d profile:(id)profile error:(id *)error;
- (id)_backOffPredicateWithCompareDate:(id)date;
- (id)_backOffPredicateWithPredicate:(id)predicate;
- (id)_clinicalRecordWithUUID:(id)d profile:(id)profile error:(id *)error;
- (id)_determineUTType:(id)type error:(id *)error;
- (id)_downloadableAttachmentsAwaitingDownloadPredicate;
- (id)_downloadableAttachmentsFailedDownloadWithoutErrorPredicateWithCompareDate:(id)date;
- (id)_downloadableAttachmentsForMedicalRecordWithIdentifier:(id)identifier error:(id *)error;
- (id)_downloadableAttachmentsPredicateWithPredicate:(id)predicate downloadableAttachmentIdentifiers:(id)identifiers;
- (id)_downloadableAttachmentsReadyToIndexPredicate;
- (id)_downloadableAttachmentsReadyToIndexWithIdentifiers:(id)identifiers backOff:(BOOL)off error:(id *)error;
- (id)_downloadableAttachmentsReadyToProcessPredicate;
- (id)_downloadableAttachmentsReadyToProcessWithIdentifiers:(id)identifiers backOff:(BOOL)off error:(id *)error;
- (id)_fetchDownloadableAttachmentsAwaitingDownloadWithBatchSize:(id)size downloadableAttachmentIdentifiers:(id)identifiers backOff:(BOOL)off error:(id *)error;
- (id)_fetchDownloadableAttachmentsForPredicate:(id)predicate downloadableAttachmentIdentifiers:(id)identifiers error:(id *)error;
- (id)_indexingAttachmentsFailedWithoutErrorPredicateWithCompareDate:(id)date;
- (id)_medicalRecordWithUUID:(id)d profile:(id)profile error:(id *)error;
- (id)_processingAttachmentsFailedWithoutErrorPredicateWithCompareDate:(id)date;
- (id)extractionServiceClientCreateIfNecessary;
- (id)fetchAttachmentWithIdentifier:(id)identifier error:(id *)error;
- (id)profileWithError:(id *)error;
- (void)_downloadableAttachmentDidChange:(id)change;
- (void)downloadableAttachmentDidChange:(id)change;
- (void)notifyDownloadingCompleteAndRequestMoreWithIdentifiers:(id)identifiers requestBatchSize:(id)size completion:(id)completion;
- (void)runMedicalDownloadableAttachmentPipelineWithCompletion:(id)completion;
@end

@implementation HDMedicalDownloadableAttachmentManager

- (HDMedicalDownloadableAttachmentManager)initWithProfileExtension:(id)extension
{
  extensionCopy = extension;
  v13.receiver = self;
  v13.super_class = HDMedicalDownloadableAttachmentManager;
  v5 = [(HDMedicalDownloadableAttachmentManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, extensionCopy);
    *&v6->_query_lock._os_unfair_lock_opaque = 0;
    v7 = [HKObserverSet alloc];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 initWithName:v9 loggingCategory:HKLogHealthRecords];
    stateChangeListeners = v6->_stateChangeListeners;
    v6->_stateChangeListeners = v10;
  }

  return v6;
}

- (id)profileWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];

  if (profile)
  {
    v6 = profile;
  }

  else
  {
    [NSError hk_assignError:error code:3 format:@"No profile found for %@", objc_opt_class()];
  }

  return profile;
}

- (id)extractionServiceClientCreateIfNecessary
{
  os_unfair_lock_lock(&self->_service_client_lock);
  extractionServiceClient = self->_extractionServiceClient;
  if (!extractionServiceClient)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
    createHealthRecordsXPCServiceClient = [WeakRetained createHealthRecordsXPCServiceClient];
    v6 = self->_extractionServiceClient;
    self->_extractionServiceClient = createHealthRecordsXPCServiceClient;

    extractionServiceClient = self->_extractionServiceClient;
  }

  v7 = extractionServiceClient;
  os_unfair_lock_unlock(&self->_service_client_lock);

  return v7;
}

- (BOOL)_downloadAllowed
{
  v8 = 0;
  v2 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:&v8];
  v3 = v8;
  if (v2)
  {
    daemon = [v2 daemon];
    behavior = [daemon behavior];
    v6 = [behavior healthAppNotInstalled] ^ 1;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A7194();
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_downloadableAttachmentsAwaitingDownloadPredicate
{
  v3 = HDMedicalDownloadAttachmentPredicateForErrorStatus(1);
  v11[0] = v3;
  v4 = HDMedicalDownloadAttachmentPredicateForStatus(1);
  v11[1] = v4;
  v5 = HDMedicalDownloadAttachmentPredicateForStatus(0);
  v11[2] = v5;
  v6 = +[NSDate now];
  v7 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsFailedDownloadWithoutErrorPredicateWithCompareDate:v6];
  v11[3] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:4];
  v9 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v8];

  return v9;
}

- (id)_downloadableAttachmentsFailedDownloadWithoutErrorPredicateWithCompareDate:(id)date
{
  dateCopy = date;
  v4 = HDMedicalDownloadAttachmentPredicateForStatus(2);
  v11[0] = v4;
  v5 = HDMedicalDownloadableAttachmentEntityPropertyLastUpdatedDate;
  v6 = [dateCopy dateByAddingTimeInterval:-600.0];

  v7 = [HDSQLiteComparisonPredicate predicateWithProperty:v5 lessThanValue:v6];
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

- (id)_downloadableAttachmentsReadyToProcessPredicate
{
  v3 = HDMedicalDownloadAttachmentPredicateForErrorStatus(3);
  v4 = HDMedicalDownloadAttachmentPredicateForErrorStatus(2);
  v5 = HDMedicalDownloadAttachmentPredicateForStatus(3);
  v6 = HDMedicalDownloadAttachmentPredicateForStatus(7);
  v7 = [NSDate now:v3];
  v8 = [(HDMedicalDownloadableAttachmentManager *)self _processingAttachmentsFailedWithoutErrorPredicateWithCompareDate:v7];
  v12[4] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:5];
  v10 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v9];

  return v10;
}

- (id)_processingAttachmentsFailedWithoutErrorPredicateWithCompareDate:(id)date
{
  dateCopy = date;
  v4 = HDMedicalDownloadAttachmentPredicateForStatus(10);
  v20[0] = v4;
  v5 = HDMedicalDownloadableAttachmentEntityPropertyLastUpdatedDate;
  v6 = [dateCopy dateByAddingTimeInterval:-600.0];
  v7 = [HDSQLiteComparisonPredicate predicateWithProperty:v5 lessThanValue:v6];
  v20[1] = v7;
  v8 = [NSArray arrayWithObjects:v20 count:2];
  v9 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  v10 = HDMedicalDownloadAttachmentPredicateForStatus(8);
  v19[0] = v10;
  v11 = [dateCopy dateByAddingTimeInterval:-600.0];

  v12 = [HDSQLiteComparisonPredicate predicateWithProperty:v5 lessThanValue:v11];
  v19[1] = v12;
  v13 = [NSArray arrayWithObjects:v19 count:2];
  v14 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

  v18[0] = v9;
  v18[1] = v14;
  v15 = [NSArray arrayWithObjects:v18 count:2];
  v16 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v15];

  return v16;
}

- (id)_downloadableAttachmentsReadyToIndexPredicate
{
  v3 = HDMedicalDownloadAttachmentPredicateForErrorStatus(4);
  v4 = HDMedicalDownloadAttachmentPredicateForStatus(9);
  v5 = [NSDate now:v3];
  v6 = [(HDMedicalDownloadableAttachmentManager *)self _indexingAttachmentsFailedWithoutErrorPredicateWithCompareDate:v5];
  v10[2] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:3];
  v8 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v7];

  return v8;
}

- (id)_indexingAttachmentsFailedWithoutErrorPredicateWithCompareDate:(id)date
{
  dateCopy = date;
  v4 = HDMedicalDownloadAttachmentPredicateForStatus(5);
  v11[0] = v4;
  v5 = HDMedicalDownloadableAttachmentEntityPropertyLastUpdatedDate;
  v6 = [dateCopy dateByAddingTimeInterval:-600.0];

  v7 = [HDSQLiteComparisonPredicate predicateWithProperty:v5 lessThanValue:v6];
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

- (id)_backOffPredicateWithCompareDate:(id)date
{
  v3 = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
  dateCopy = date;
  v5 = [HDSQLiteNullPredicate isNullPredicateWithProperty:v3];
  v10[0] = v5;
  v6 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 lessThanValue:dateCopy];

  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v7];

  return v8;
}

- (id)_backOffPredicateWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = +[NSDate now];
  v6 = [(HDMedicalDownloadableAttachmentManager *)self _backOffPredicateWithCompareDate:v5];
  v7 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:predicateCopy otherPredicate:v6];

  return v7;
}

- (id)_downloadableAttachmentsPredicateWithPredicate:(id)predicate downloadableAttachmentIdentifiers:(id)identifiers
{
  predicateCopy = predicate;
  identifiersCopy = identifiers;
  v13 = predicateCopy;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  if (identifiersCopy && [identifiersCopy count])
  {
    v9 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentBatchPredicateWithIdentifiers:identifiersCopy];
    v10 = [v8 arrayByAddingObject:v9];

    v8 = v10;
  }

  v11 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v11;
}

- (id)_fetchDownloadableAttachmentsForPredicate:(id)predicate downloadableAttachmentIdentifiers:(id)identifiers error:(id *)error
{
  predicateCopy = predicate;
  identifiersCopy = identifiers;
  v10 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (v10)
  {
    v11 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsPredicateWithPredicate:predicateCopy downloadableAttachmentIdentifiers:identifiersCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_7D610;
    v15[3] = &unk_1084A0;
    v12 = objc_alloc_init(NSMutableArray);
    v16 = v12;
    if ([HDMedicalDownloadableAttachmentEntity enumerateAttachmentsWithPredicate:v11 profile:v10 error:error enumerationHandler:v15])
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_downloadableAttachmentsForMedicalRecordWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (v7)
  {
    v8 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsForMedicalRecordPredicateWithIdentifier:identifierCopy];
    v9 = objc_alloc_init(NSMutableArray);
    v18 = HDMedicalDownloadableAttachmentEntityPropertyIdentifier;
    v10 = [NSArray arrayWithObjects:&v18 count:1];
    database = [v7 database];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_7D7F4;
    v16[3] = &unk_108780;
    v12 = v9;
    v17 = v12;
    v13 = [HDMedicalDownloadableAttachmentEntity enumerateProperties:v10 withPredicate:v8 healthDatabase:database error:error enumerationHandler:v16];

    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_fetchDownloadableAttachmentsAwaitingDownloadWithBatchSize:(id)size downloadableAttachmentIdentifiers:(id)identifiers backOff:(BOOL)off error:(id *)error
{
  offCopy = off;
  sizeCopy = size;
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_query_lock);
  _downloadableAttachmentsAwaitingDownloadPredicate = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsAwaitingDownloadPredicate];
  if (offCopy)
  {
    v13 = [(HDMedicalDownloadableAttachmentManager *)self _backOffPredicateWithPredicate:_downloadableAttachmentsAwaitingDownloadPredicate];

    _downloadableAttachmentsAwaitingDownloadPredicate = v13;
  }

  v14 = [(HDMedicalDownloadableAttachmentManager *)self _fetchDownloadableAttachmentsForPredicate:_downloadableAttachmentsAwaitingDownloadPredicate downloadableAttachmentIdentifiers:identifiersCopy error:error];
  if (v14)
  {
    v36 = _downloadableAttachmentsAwaitingDownloadPredicate;
    intValue = [sizeCopy intValue];
    if (intValue <= [&off_1103C0 intValue])
    {
      v16 = sizeCopy;
    }

    else
    {
      v16 = &off_1103C0;
    }

    v17 = v16;
    v18 = objc_alloc_init(NSMutableArray);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = v14;
    obj = v14;
    v19 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      v33 = identifiersCopy;
      v34 = sizeCopy;
LABEL_9:
      v22 = 0;
      while (1)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v38 + 1) + 8 * v22);
        if ([v23 status] == &dword_0 + 1 || !objc_msgSend(v23, "status"))
        {
          identifier = [v23 identifier];
          v25 = [(HDMedicalDownloadableAttachmentManager *)self updateStatusAndClearErrorForAttachmentWithIdentifier:identifier status:2 error:error];

          if ((v25 & 1) == 0)
          {
            break;
          }
        }

        if ([v23 errorStatus] == &dword_0 + 1)
        {
          identifier2 = [v23 identifier];
          v27 = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForFailedDownloadForAttachmentWithIdentifier:identifier2 error:error];

          if ((v27 & 1) == 0)
          {
            break;
          }
        }

        identifier3 = [v23 identifier];
        v29 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:identifier3 error:error];

        if (!v29)
        {
          os_unfair_lock_unlock(&self->_query_lock);
          v31 = 0;
          goto LABEL_26;
        }

        [v18 addObject:v29];
        v30 = [v18 count];
        if (v30 == [v17 intValue])
        {
          os_unfair_lock_unlock(&self->_query_lock);
          v31 = v18;
LABEL_26:

LABEL_27:
          identifiersCopy = v33;
          sizeCopy = v34;
          v14 = v35;
          _downloadableAttachmentsAwaitingDownloadPredicate = v36;

          goto LABEL_28;
        }

        if (v20 == ++v22)
        {
          v20 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
          identifiersCopy = v33;
          sizeCopy = v34;
          if (v20)
          {
            goto LABEL_9;
          }

          goto LABEL_21;
        }
      }

      os_unfair_lock_unlock(&self->_query_lock);
      v31 = 0;
      goto LABEL_27;
    }

LABEL_21:

    os_unfair_lock_unlock(&self->_query_lock);
    v31 = v18;
    v14 = v35;
    _downloadableAttachmentsAwaitingDownloadPredicate = v36;
LABEL_28:
  }

  else
  {
    os_unfair_lock_unlock(&self->_query_lock);
    v31 = 0;
  }

  return v31;
}

- (id)_downloadableAttachmentsReadyToProcessWithIdentifiers:(id)identifiers backOff:(BOOL)off error:(id *)error
{
  offCopy = off;
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_query_lock);
  _downloadableAttachmentsReadyToProcessPredicate = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsReadyToProcessPredicate];
  if (offCopy)
  {
    v10 = [(HDMedicalDownloadableAttachmentManager *)self _backOffPredicateWithPredicate:_downloadableAttachmentsReadyToProcessPredicate];

    _downloadableAttachmentsReadyToProcessPredicate = v10;
  }

  v11 = [(HDMedicalDownloadableAttachmentManager *)self _fetchDownloadableAttachmentsForPredicate:_downloadableAttachmentsReadyToProcessPredicate downloadableAttachmentIdentifiers:identifiersCopy error:error];
  if (v11)
  {
    v12 = objc_alloc_init(NSMutableArray);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      v29 = _downloadableAttachmentsReadyToProcessPredicate;
      v30 = identifiersCopy;
      v28 = v11;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          if ([v18 status] == &dword_4 + 3)
          {
            identifier = [v18 identifier];
            v20 = [(HDMedicalDownloadableAttachmentManager *)self updateStatusAndClearErrorForAttachmentWithIdentifier:identifier status:10 error:error];

            if (!v20)
            {
              goto LABEL_19;
            }
          }

          if ([v18 status] == &dword_0 + 3)
          {
            identifier2 = [v18 identifier];
            v22 = [(HDMedicalDownloadableAttachmentManager *)self updateStatusAndClearErrorForAttachmentWithIdentifier:identifier2 status:8 error:error];

            if (!v22)
            {
              goto LABEL_19;
            }
          }

          if ([v18 errorStatus] == &dword_0 + 2 || objc_msgSend(v18, "errorStatus") == &dword_0 + 3)
          {
            identifier3 = [v18 identifier];
            v24 = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForFailedProcessingForAttachmentWithIdentifier:identifier3 error:error];

            if (!v24)
            {
LABEL_19:
              os_unfair_lock_unlock(&self->_query_lock);

              v26 = 0;
              _downloadableAttachmentsReadyToProcessPredicate = v29;
              identifiersCopy = v30;
              v11 = v28;
              goto LABEL_20;
            }
          }

          identifier4 = [v18 identifier];
          [v12 addObject:identifier4];
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
        _downloadableAttachmentsReadyToProcessPredicate = v29;
        identifiersCopy = v30;
        v11 = v28;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_unlock(&self->_query_lock);
    v26 = v12;
LABEL_20:
  }

  else
  {
    os_unfair_lock_unlock(&self->_query_lock);
    v26 = 0;
  }

  return v26;
}

- (id)_downloadableAttachmentsReadyToIndexWithIdentifiers:(id)identifiers backOff:(BOOL)off error:(id *)error
{
  offCopy = off;
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_query_lock);
  _downloadableAttachmentsReadyToIndexPredicate = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsReadyToIndexPredicate];
  if (offCopy)
  {
    v10 = [(HDMedicalDownloadableAttachmentManager *)self _backOffPredicateWithPredicate:_downloadableAttachmentsReadyToIndexPredicate];

    _downloadableAttachmentsReadyToIndexPredicate = v10;
  }

  v11 = [(HDMedicalDownloadableAttachmentManager *)self _fetchDownloadableAttachmentsForPredicate:_downloadableAttachmentsReadyToIndexPredicate downloadableAttachmentIdentifiers:identifiersCopy error:error];
  if (v11)
  {
    v27 = _downloadableAttachmentsReadyToIndexPredicate;
    v28 = identifiersCopy;
    v12 = objc_alloc_init(NSMutableArray);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v11;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          if ([v18 status] == &dword_8 + 1)
          {
            identifier = [v18 identifier];
            v20 = [(HDMedicalDownloadableAttachmentManager *)self updateStatusAndClearErrorForAttachmentWithIdentifier:identifier status:5 error:error];

            if (!v20)
            {
              goto LABEL_16;
            }
          }

          if ([v18 errorStatus] == &dword_4)
          {
            identifier2 = [v18 identifier];
            v22 = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForFailedIndexingForAttachmentWithIdentifier:identifier2 error:error];

            if (!v22)
            {
LABEL_16:
              os_unfair_lock_unlock(&self->_query_lock);

              v24 = 0;
              goto LABEL_17;
            }
          }

          identifier3 = [v18 identifier];
          [v12 addObject:identifier3];
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_unlock(&self->_query_lock);
    v24 = v12;
LABEL_17:

    _downloadableAttachmentsReadyToIndexPredicate = v27;
    identifiersCopy = v28;
    v11 = v26;
  }

  else
  {
    os_unfair_lock_unlock(&self->_query_lock);
    v24 = 0;
  }

  return v24;
}

- (id)_applyBackoffStrategyForRetryCount:(int64_t)count now:(id)now
{
  nowCopy = now;
  v6 = nowCopy;
  if (count > 10)
  {
    v7 = 604800.0;
LABEL_7:
    v8 = [nowCopy dateByAddingTimeInterval:v7];
    goto LABEL_8;
  }

  if (count > 5)
  {
    v7 = 302400.0;
    goto LABEL_7;
  }

  if (count >= 4)
  {
    v7 = 86400.0;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)updateRetryCountForAttachmentWithIdentifier:(id)identifier retryCount:(int64_t)count nextRetryDate:(id)date error:(id *)error
{
  identifierCopy = identifier;
  dateCopy = date;
  v12 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (v12)
  {
    if (dateCopy)
    {
      v13 = dateCopy;
    }

    else
    {
      v15 = +[NSDate now];
      v13 = [(HDMedicalDownloadableAttachmentManager *)self _applyBackoffStrategyForRetryCount:count now:v15];
    }

    v22[0] = HDMedicalDownloadableAttachmentEntityPropertyRetryCount;
    v22[1] = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
    v16 = [NSArray arrayWithObjects:v22 count:2];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_7E318;
    v19[3] = &unk_1073D8;
    v20 = v13;
    countCopy = count;
    v17 = v13;
    v14 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:identifierCopy properties:v16 profile:v12 error:error bindingHandler:v19];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)markDownloadCompleteForAttachmentWithIdentifier:(id)identifier fileURL:(id)l error:(id *)error
{
  identifierCopy = identifier;
  lCopy = l;
  v10 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (v10)
  {
    v16[0] = HDMedicalDownloadableAttachmentEntityPropertyFileURL;
    v16[1] = HDMedicalDownloadableAttachmentEntityPropertyStatus;
    v16[2] = HDMedicalDownloadableAttachmentEntityPropertyErrorStatus;
    v16[3] = HDMedicalDownloadableAttachmentEntityPropertyLastError;
    v16[4] = HDMedicalDownloadableAttachmentEntityPropertyRetryCount;
    v16[5] = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
    v11 = [NSArray arrayWithObjects:v16 count:6];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_7E514;
    v14[3] = &unk_105B80;
    v15 = lCopy;
    v12 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:identifierCopy properties:v11 profile:v10 error:error bindingHandler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)markDataAvailableForAttachmentWithIdentifier:(id)identifier attachmentContent:(id)content error:(id *)error
{
  identifierCopy = identifier;
  contentCopy = content;
  v10 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (v10)
  {
    v16[0] = HDMedicalDownloadableAttachmentEntityPropertyInlineData;
    v16[1] = HDMedicalDownloadableAttachmentEntityPropertyContentType;
    v16[2] = HDMedicalDownloadableAttachmentEntityPropertyStatus;
    v16[3] = HDMedicalDownloadableAttachmentEntityPropertyErrorStatus;
    v16[4] = HDMedicalDownloadableAttachmentEntityPropertyLastError;
    v16[5] = HDMedicalDownloadableAttachmentEntityPropertyRetryCount;
    v16[6] = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
    v11 = [NSArray arrayWithObjects:v16 count:7];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_7E794;
    v14[3] = &unk_105B80;
    v15 = contentCopy;
    v12 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:identifierCopy properties:v11 profile:v10 error:error bindingHandler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)updateStatusAndClearErrorForAttachmentWithIdentifier:(id)identifier status:(int64_t)status error:(id *)error
{
  identifierCopy = identifier;
  v9 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (v9)
  {
    v14[0] = HDMedicalDownloadableAttachmentEntityPropertyStatus;
    v14[1] = HDMedicalDownloadableAttachmentEntityPropertyErrorStatus;
    v14[2] = HDMedicalDownloadableAttachmentEntityPropertyLastError;
    v14[3] = HDMedicalDownloadableAttachmentEntityPropertyRetryCount;
    v14[4] = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
    v10 = [NSArray arrayWithObjects:v14 count:5];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_7EA10;
    v13[3] = &unk_1087A0;
    v13[4] = status;
    v11 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:identifierCopy properties:v10 profile:v9 error:error bindingHandler:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)updateErrorStatusAndRetryCountForAttachmentWithIdentifier:(id)identifier errorStatus:(int64_t)status lastError:(id)error retryCount:(int64_t)count error:(id *)a7
{
  identifierCopy = identifier;
  errorCopy = error;
  v14 = errorCopy;
  if ((!status || errorCopy) && (status || !errorCopy))
  {
    v16 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a7];
    if (v16)
    {
      v17 = +[NSDate now];
      v18 = [(HDMedicalDownloadableAttachmentManager *)self _applyBackoffStrategyForRetryCount:count now:v17];

      v27[0] = HDMedicalDownloadableAttachmentEntityPropertyErrorStatus;
      v27[1] = HDMedicalDownloadableAttachmentEntityPropertyLastError;
      v27[2] = HDMedicalDownloadableAttachmentEntityPropertyRetryCount;
      v27[3] = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
      v19 = [NSArray arrayWithObjects:v27 count:4];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_7ECC4;
      v22[3] = &unk_107878;
      statusCopy = status;
      countCopy = count;
      v23 = v14;
      v24 = v18;
      v20 = v18;
      v15 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:identifierCopy properties:v19 profile:v16 error:a7 bindingHandler:v22];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    [NSError hk_assignError:a7 code:3 format:@"Incompatible status and lastError"];
    v15 = 0;
  }

  return v15;
}

- (BOOL)_updateNextRetryDateForAttachmentWithIdentifier:(id)identifier nextRetryDate:(id)date error:(id *)error
{
  identifierCopy = identifier;
  dateCopy = date;
  v10 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (v10)
  {
    v16 = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
    v11 = [NSArray arrayWithObjects:&v16 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_7EEAC;
    v14[3] = &unk_105B80;
    v15 = dateCopy;
    v12 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:identifierCopy properties:v11 profile:v10 error:error bindingHandler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_updateNextRetryDateForFailedDownloadForAttachmentWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[NSDate now];
  v8 = [v7 dateByAddingTimeInterval:600.0];

  LOBYTE(error) = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForAttachmentWithIdentifier:identifierCopy nextRetryDate:v8 error:error];
  return error;
}

- (BOOL)_updateNextRetryDateForFailedProcessingForAttachmentWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[NSDate now];
  v8 = [v7 dateByAddingTimeInterval:600.0];

  LOBYTE(error) = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForAttachmentWithIdentifier:identifierCopy nextRetryDate:v8 error:error];
  return error;
}

- (BOOL)_updateNextRetryDateForFailedIndexingForAttachmentWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[NSDate now];
  v8 = [v7 dateByAddingTimeInterval:600.0];

  LOBYTE(error) = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForAttachmentWithIdentifier:identifierCopy nextRetryDate:v8 error:error];
  return error;
}

- (BOOL)insertDownloadableAttachment:(id)attachment error:(id *)error
{
  attachmentCopy = attachment;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (v7)
  {
    v8 = [HDMedicalDownloadableAttachmentEntity insertAttachment:attachmentCopy profile:v7 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fetchAttachmentWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (v7)
  {
    v8 = [HDMedicalDownloadableAttachmentEntity attachmentWithIdentifier:identifierCopy profile:v7 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeDownloadableAttachmentWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (v7)
  {
    v8 = [HDMedicalDownloadableAttachmentEntity deleteAttachmentWithIdentifier:identifierCopy profile:v7 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)runMedicalDownloadableAttachmentPipelineWithCompletion:(id)completion
{
  completionCopy = completion;
  [(HDMedicalDownloadableAttachmentManager *)self set_unitTesting_skippedAttachmentDownload:0];
  _downloadAllowed = [(HDMedicalDownloadableAttachmentManager *)self _downloadAllowed];
  _HKInitializeLogging();
  v6 = HKLogHealthRecords;
  v7 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
  if (_downloadAllowed)
  {
    if (v7)
    {
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Start HKMedicalDownloadableAttachments Pipeline", buf, 0xCu);
    }

    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: reconcile HKMedicalDownloadableAttachments", buf, 0xCu);
    }

    v20 = 0;
    v9 = [(HDMedicalDownloadableAttachmentManager *)self _reconcileDownloadableAttachmentToHKAttachmentForMedicalRecordWithIdentifier:0 error:&v20];
    v10 = v20;
    if ((v9 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A71FC();
      }
    }

    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Begin with processing / indexing for HKMedicalDownloadableAttachments already downloaded", buf, 0xCu);
    }

    v19 = 0;
    v12 = [(HDMedicalDownloadableAttachmentManager *)self _processAndIndexDownloadableAttachmentsWithIdentifiers:0 backOff:1 error:&v19];
    v13 = v19;
    _HKInitializeLogging();
    v14 = HKLogHealthRecords;
    if (v12)
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy6 = self;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Completed processing / indexing for HKMedicalDownloadableAttachments. Continue to Downloading.", buf, 0xCu);
      }

      v18 = 0;
      v15 = [(HDMedicalDownloadableAttachmentManager *)self _beginOrResumeDownloadingAttachmentsWithError:&v18];
      v16 = v18;
      _HKInitializeLogging();
      v17 = HKLogHealthRecords;
      if (v15)
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy6 = self;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Completed initiating _beginOrResumeDownloadingAttachmentsWithError", buf, 0xCu);
        }

        completionCopy[2](completionCopy, 1, 0);
      }

      else
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A735C();
        }

        (completionCopy)[2](completionCopy, 0, v16);
      }
    }

    else
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A72AC();
      }

      (completionCopy)[2](completionCopy, 0, v13);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Download is not allowed. HKMedicalDownloadableAttachments Pipeline will not run.", buf, 0xCu);
    }

    [(HDMedicalDownloadableAttachmentManager *)self set_unitTesting_skippedAttachmentDownload:1];
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)notifyDownloadingCompleteAndRequestMoreWithIdentifiers:(id)identifiers requestBatchSize:(id)size completion:(id)completion
{
  identifiersCopy = identifiers;
  sizeCopy = size;
  completionCopy = completion;
  if ([identifiersCopy count])
  {
    v21 = 0;
    v11 = [(HDMedicalDownloadableAttachmentManager *)self _processAndIndexDownloadableAttachmentsWithIdentifiers:identifiersCopy backOff:0 error:&v21];
    v12 = v21;
    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A740C();
      }
    }

    _HKInitializeLogging();
    v13 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: processing / indexing attempt completed for batch", buf, 0xCu);
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A74BC();
    }
  }

  if ([sizeCopy isEqualToNumber:&off_1103D8])
  {
    _HKInitializeLogging();
    v14 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: no more attachments requested by the downloader", buf, 0xCu);
    }

    completionCopy[2](completionCopy, &__NSArray0__struct, 0);
  }

  else
  {
    v20 = 0;
    v15 = [(HDMedicalDownloadableAttachmentManager *)self _fetchDownloadableAttachmentsAwaitingDownloadWithBatchSize:sizeCopy error:&v20];
    v16 = v20;
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (v15)
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [v15 count];
        *buf = 138543618;
        selfCopy3 = self;
        v24 = 2048;
        v25 = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: sending %lu attachments to the downloader", buf, 0x16u);
      }

      completionCopy[2](completionCopy, v15, 0);
    }

    else
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A7530();
      }

      (completionCopy)[2](completionCopy, 0, v16);
    }
  }
}

- (BOOL)_beginOrResumeDownloadingAttachmentsWithError:(id *)error
{
  v4 = [(HDMedicalDownloadableAttachmentManager *)self _fetchDownloadableAttachmentsAwaitingDownloadWithBatchSize:&off_1103C0 error:error];
  v5 = v4;
  if (v4)
  {
    if ([v4 count])
    {
      [(HDMedicalDownloadableAttachmentManager *)self _callDownloaderWithDownloadableAttachments:v5 shouldRequestMore:1];
    }

    else
    {
      _HKInitializeLogging();
      v6 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: no attachments awaiting download at this time", &v8, 0xCu);
      }
    }
  }

  return v5 != 0;
}

- (BOOL)processDownloadableAttachmentWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:identifierCopy error:error];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_22;
  }

  if ([v7 status] == &dword_8 + 2)
  {
    v28 = 0;
    v9 = [(HDMedicalDownloadableAttachmentManager *)self _saveInlineDataIfNeededForDownloadableAttachment:v8 error:&v28];
    v10 = v28;
    if (v9)
    {
      v27 = 0;
      v11 = [(HDMedicalDownloadableAttachmentManager *)self updateStatusAndClearErrorForAttachmentWithIdentifier:identifierCopy status:8 error:&v27];
      v12 = v27;
      v13 = v12;
      if (v11)
      {

        goto LABEL_6;
      }

      _HKInitializeLogging();
      v17 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v24 = v17;
        localizedDescription = [v13 localizedDescription];
        v26 = HKSensitiveLogItem();
        *buf = 138543874;
        selfCopy2 = self;
        v31 = 2114;
        v32 = identifierCopy;
        v33 = 2114;
        v34 = v26;
        _os_log_error_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed update status for attachment %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v18 = v13;
      if (v18)
      {
        if (error)
        {
          v19 = v18;
          *error = v18;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v15 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v21 = v15;
        localizedDescription2 = [v10 localizedDescription];
        v23 = HKSensitiveLogItem();
        *buf = 138543874;
        selfCopy2 = self;
        v31 = 2114;
        v32 = identifierCopy;
        v33 = 2114;
        v34 = v23;
        _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save inlineData to file for attachment %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v10 = v10;
      if (v10)
      {
        if (error)
        {
          v16 = v10;
          *error = v10;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

LABEL_6:
  v14 = [(HDMedicalDownloadableAttachmentManager *)self _addAttachmentAndMarkAvailableForAttachmentWithIdentifier:identifierCopy error:error];
LABEL_23:

  return v14;
}

- (BOOL)_saveInlineDataIfNeededForDownloadableAttachment:(id)attachment error:(id *)error
{
  attachmentCopy = attachment;
  if ([attachmentCopy status] == &dword_8 + 2)
  {
    inlineData = [attachmentCopy inlineData];

    if (!inlineData)
    {
      [NSError hk_assignError:error code:3 format:@"HKMedicalDownloadableAttachment status is 'InlineDataAvailable' but 'inlineData' field is nil"];
LABEL_17:
      v12 = 0;
      goto LABEL_18;
    }
  }

  if ([attachmentCopy status] != &dword_8 + 2)
  {
    goto LABEL_7;
  }

  inlineData2 = [attachmentCopy inlineData];

  if (!inlineData2)
  {
    goto LABEL_7;
  }

  v25 = 0;
  v9 = [(HDMedicalDownloadableAttachmentManager *)self _saveInlineDataToTempFile:attachmentCopy error:&v25];
  v10 = v25;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    identifier = [attachmentCopy identifier];
    v24 = 0;
    v14 = -[HDMedicalDownloadableAttachmentManager updateErrorStatusAndRetryCountForAttachmentWithIdentifier:errorStatus:lastError:retryCount:error:](self, "updateErrorStatusAndRetryCountForAttachmentWithIdentifier:errorStatus:lastError:retryCount:error:", identifier, 2, v11, [attachmentCopy retryCount] + 1, &v24);
    v15 = v24;

    if ((v14 & 1) == 0)
    {
      _HKInitializeLogging();
      v16 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v20 = v16;
        identifier2 = [attachmentCopy identifier];
        localizedDescription = [v15 localizedDescription];
        v23 = HKSensitiveLogItem();
        *buf = 138543874;
        selfCopy = self;
        v28 = 2114;
        v29 = identifier2;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@: Failed update error status for attachment %{public}@. Error: %{public}@", buf, 0x20u);
      }
    }

    v17 = v11;
    if (v17)
    {
      if (error)
      {
        v18 = v17;
        *error = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_17;
  }

LABEL_7:
  v12 = 1;
LABEL_18:

  return v12;
}

- (BOOL)_saveInlineDataToTempFile:(id)file error:(id *)error
{
  fileCopy = file;
  contentType = [fileCopy contentType];
  v8 = [UTType typeWithMIMEType:contentType];

  preferredFilenameExtension = [v8 preferredFilenameExtension];
  if (preferredFilenameExtension)
  {
    identifier = [fileCopy identifier];
    uUIDString = [identifier UUIDString];
    v12 = [uUIDString stringByAppendingPathExtension:preferredFilenameExtension];

    v13 = +[HKClinicalStorageLocations downloadableAttachmentsDirectory];
    v26 = v12;
    v14 = [v13 URLByAppendingPathComponent:v12];
    inlineData = [fileCopy inlineData];
    v29 = 0;
    v16 = [HKClinicalStorageLocations storeData:inlineData inLocalFileAtURL:v14 error:&v29];
    v17 = v29;

    if (v16)
    {
      v18 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
      if (v18)
      {
        v30 = HDMedicalDownloadableAttachmentEntityPropertyFileURL;
        v19 = [NSArray arrayWithObjects:&v30 count:1];
        [fileCopy identifier];
        v20 = v25 = v13;
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_80C9C;
        v27[3] = &unk_105B80;
        v28 = v14;
        v21 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:v20 properties:v19 profile:v18 error:error bindingHandler:v27];

        v13 = v25;
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v18 = v17;
      if (v18)
      {
        if (error)
        {
          v23 = v18;
          v21 = 0;
          *error = v18;
          goto LABEL_11;
        }

        _HKLogDroppedError();
      }
    }

    v21 = 0;
    goto LABEL_11;
  }

  contentType2 = [fileCopy contentType];
  [NSError hk_assignError:error code:125 format:@"ContentType not supported: %@", contentType2];

  v21 = 0;
LABEL_12:

  return v21;
}

- (BOOL)_removeLocalFileForAttachmentWithIdentifier:(id)identifier error:(id *)error
{
  v5 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:identifier error:?];
  v6 = v5;
  if (v5)
  {
    fileURL = [v5 fileURL];
    v8 = [HKClinicalStorageLocations removeLocalFileAtURL:fileURL error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_addAttachmentAndMarkAvailableForAttachmentWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v24 = 0;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self _addAttachmentForMedicalDownloadableAttachmentWithIdentifier:identifierCopy error:&v24];
  v8 = v24;
  if (v7)
  {
    [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentDidChange:identifierCopy];
    v22 = 0;
    v9 = [(HDMedicalDownloadableAttachmentManager *)self _removeLocalFileForAttachmentWithIdentifier:identifierCopy error:&v22];
    v10 = v22;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      if (v10)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
        {
          sub_A76B0();
        }
      }
    }
  }

  else
  {
    v12 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:identifierCopy error:error];
    v11 = v12;
    if (v12)
    {
      v23 = 0;
      v13 = -[HDMedicalDownloadableAttachmentManager updateErrorStatusAndRetryCountForAttachmentWithIdentifier:errorStatus:lastError:retryCount:error:](self, "updateErrorStatusAndRetryCountForAttachmentWithIdentifier:errorStatus:lastError:retryCount:error:", identifierCopy, 3, v8, [v12 retryCount] + 1, &v23);
      v14 = v23;
      if ((v13 & 1) == 0)
      {
        _HKInitializeLogging();
        v15 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v19 = v15;
          localizedDescription = [v14 localizedDescription];
          v21 = HKSensitiveLogItem();
          *buf = 138543874;
          selfCopy = self;
          v27 = 2114;
          v28 = identifierCopy;
          v29 = 2114;
          v30 = v21;
          _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed update error status for attachment %{public}@. Error: %{public}@", buf, 0x20u);
        }
      }

      v16 = v8;
      if (v16)
      {
        if (error)
        {
          v17 = v16;
          *error = v16;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  return v7;
}

- (BOOL)_addAttachmentForMedicalDownloadableAttachmentWithIdentifier:(id)identifier error:(id *)error
{
  v7 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:identifier error:?];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_16;
  }

  if ([v7 status] == &dword_8)
  {
    fileURL = [v8 fileURL];
    if (!fileURL)
    {
      [NSError hk_assignError:error code:3 format:@"HKMedicalDownloadableAttachment fileURL cannot be nil when creating an HKAttachment"];
      v21 = 0;
LABEL_59:

      goto LABEL_60;
    }

    v10 = [NSFileHandle fileHandleForReadingFromURL:fileURL error:error];
    if (!v10)
    {
      v21 = 0;
LABEL_58:

      goto LABEL_59;
    }

    v11 = [(HDMedicalDownloadableAttachmentManager *)self _determineUTType:v8 error:error];
    v12 = v11;
    if (!v11)
    {
      v21 = 0;
LABEL_57:

      goto LABEL_58;
    }

    v66 = v11;
    medicalRecordIdentifier = [v8 medicalRecordIdentifier];
    WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
    profile = [WeakRetained profile];
    v16 = [(HDMedicalDownloadableAttachmentManager *)self _attachmentIdentifierForMedicalRecordWithUUID:medicalRecordIdentifier profile:profile error:error];

    v67 = v16;
    if (!v16)
    {
      v21 = 0;
      v12 = v66;
LABEL_56:

      goto LABEL_57;
    }

    v17 = objc_alloc_init(NSMutableDictionary);
    webURL = [v8 webURL];

    if (webURL)
    {
      webURL2 = [v8 webURL];
      absoluteString = [webURL2 absoluteString];
      [v17 setObject:absoluteString forKeyedSubscript:HKMedicalDownloadableAttachmentMetadataWebURLKey];
    }

    else
    {
      inlineDataChecksum = [v8 inlineDataChecksum];

      if (!inlineDataChecksum)
      {
        goto LABEL_23;
      }

      webURL2 = [v8 inlineDataChecksum];
      [v17 setObject:webURL2 forKeyedSubscript:HKMedicalDownloadableAttachmentMetadataInlineDataChecksumKey];
    }

LABEL_23:
    if ([v17 count] != &dword_0 + 1)
    {
      sub_A77CC(v8, a2, self);
    }

    metadata = [v8 metadata];
    v24 = HKMedicalDownloadableAttachmentMetadataOriginalCreationDateKey;
    v25 = [metadata objectForKeyedSubscript:HKMedicalDownloadableAttachmentMetadataOriginalCreationDateKey];

    if (v25)
    {
      metadata2 = [v8 metadata];
      v27 = [metadata2 objectForKeyedSubscript:v24];
      [v17 setObject:v27 forKeyedSubscript:v24];
    }

    v28 = objc_loadWeakRetained(&self->_profileExtension);
    profile2 = [v28 profile];
    [profile2 attachmentManager];
    v31 = v30 = v17;

    title = [v8 title];
    v33 = title;
    if (title)
    {
      v34 = title;
    }

    else
    {
      v34 = &stru_1090E8;
    }

    identifier = [v66 identifier];
    v69 = 0;
    v62 = HKAttachmentClinicalRecordSchemaIdentifier;
    v64 = v31;
    v36 = v31;
    v37 = v30;
    v38 = [v36 addAttachmentWithName:v34 contentTypeIdentifier:identifier fileHandle:v10 toObjectWithIdentifier:v67 schemaIdentifier:0 attachmentMetadata:&v69 referenceMetadata:? error:?];
    v39 = v69;

    v65 = v38;
    if (v38)
    {
      clinicalRecordIdentifier = [v8 clinicalRecordIdentifier];

      if (!clinicalRecordIdentifier)
      {
        _HKInitializeLogging();
        v52 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v53 = v52;
          identifier2 = [v8 identifier];
          *buf = 138543618;
          selfCopy = self;
          v72 = 2114;
          v73 = identifier2;
          _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: downloadable attachment with identifier %{public}@ has no clinicalRecordIdentifier", buf, 0x16u);
        }

        v21 = 1;
        v12 = v66;
        v45 = v64;
        goto LABEL_55;
      }

      v61 = v37;
      clinicalRecordIdentifier2 = [v8 clinicalRecordIdentifier];
      v42 = objc_loadWeakRetained(&self->_profileExtension);
      profile3 = [v42 profile];
      v44 = [(HDMedicalDownloadableAttachmentManager *)self _attachmentIdentifierForClinicalRecordWithUUID:clinicalRecordIdentifier2 profile:profile3 error:error];

      v60 = v44;
      if (!v44)
      {
        v21 = 0;
        v12 = v66;
        v37 = v61;
        v45 = v64;
LABEL_54:

        goto LABEL_55;
      }

      attachment = [v65 attachment];
      v68 = v39;
      v45 = v64;
      v46 = [v64 addReferenceWithAttachment:attachment toObjectWithIdentifier:v44 schemaIdentifier:v62 metadata:0 error:&v68];
      v47 = v68;

      v59 = v46;
      v63 = v47;
      if (v46)
      {
        v48 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
        if (v48)
        {
          identifier3 = [v8 identifier];
          attachment2 = [v65 attachment];
          identifier4 = [attachment2 identifier];
          v21 = [HDMedicalDownloadableAttachmentEntity _markAvailableAndClearInlineDataForAttachmentWithIdentifier:identifier3 attachmentIdentifier:identifier4 profile:v48 error:error];

          v45 = v64;
LABEL_52:
          v12 = v66;
          v37 = v61;
LABEL_53:

          v39 = v63;
          goto LABEL_54;
        }
      }

      else
      {
        v48 = v47;
        if (v48)
        {
          v12 = v66;
          v37 = v61;
          if (error)
          {
            v56 = v48;
            v21 = 0;
            *error = v48;
          }

          else
          {
            _HKLogDroppedError();
            v21 = 0;
          }

          goto LABEL_53;
        }
      }

      v21 = 0;
      goto LABEL_52;
    }

    if (v39)
    {
      v39 = v39;
      v12 = v66;
      v45 = v64;
    }

    else
    {
      v39 = [NSError hk_error:2000 format:@"HKMedicalDownloadableAttachment failed to add HKAttachment for unknown reason"];
      v12 = v66;
      v45 = v64;
      if (!v39)
      {
LABEL_47:
        v21 = 0;
LABEL_55:

        goto LABEL_56;
      }
    }

    if (error)
    {
      v55 = v39;
      *error = v39;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_47;
  }

  if ([v8 status] != &dword_8 + 1 && objc_msgSend(v8, "status") != &dword_4 + 2)
  {
    [NSError hk_assignError:error code:3 format:@"HKMedicalDownloadableAttachment must have status 'ProcessingComplete' to create an HKAttachment"];
LABEL_16:
    v21 = 0;
    goto LABEL_60;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A7758();
  }

  v21 = 1;
LABEL_60:

  return v21;
}

- (id)_attachmentIdentifierForMedicalRecordWithUUID:(id)d profile:(id)profile error:(id *)error
{
  v5 = [(HDMedicalDownloadableAttachmentManager *)self _medicalRecordWithUUID:d profile:profile error:error];
  v6 = v5;
  if (v5)
  {
    attachmentObjectIdentifier = [v5 attachmentObjectIdentifier];
  }

  else
  {
    attachmentObjectIdentifier = 0;
  }

  return attachmentObjectIdentifier;
}

- (id)_medicalRecordWithUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  v13 = HDMedicalRecordEntityEncodingOptionSkipApplyingConceptIndex;
  v14 = &__kCFBooleanTrue;
  profileCopy = profile;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [HDClinicalNoteRecordEntity objectWithUUID:dCopy encodingOptions:v9 profile:profileCopy error:error];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    [NSError hk_assignError:error code:118 format:@"Medical Record with UUID: %@ not found in database.", dCopy, v13, v14];
  }

  return v10;
}

- (id)_clinicalRecordWithUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  v8 = [HDClinicalRecordEntity objectWithUUID:dCopy encodingOptions:0 profile:profile error:error];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    [NSError hk_assignError:error code:118 format:@"Clinical Record with UUID: %@ not found in database.", dCopy];
  }

  return v9;
}

- (id)_attachmentIdentifierForClinicalRecordWithUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  v8 = [HDClinicalRecordEntity objectWithUUID:dCopy encodingOptions:0 profile:profile error:error];
  v9 = v8;
  if (v8)
  {
    attachmentObjectIdentifier = [v8 attachmentObjectIdentifier];
  }

  else
  {
    [NSError hk_assignError:error code:118 format:@"Clinical Record with UUID: %@ not found in database.", dCopy];
    attachmentObjectIdentifier = 0;
  }

  return attachmentObjectIdentifier;
}

- (id)_determineUTType:(id)type error:(id *)error
{
  typeCopy = type;
  contentType = [typeCopy contentType];

  if (contentType)
  {
    contentType2 = [typeCopy contentType];
    pathExtension = [UTType typeWithMIMEType:contentType2];

    if (pathExtension)
    {
      pathExtension = pathExtension;
      v9 = pathExtension;
    }

    else
    {
      v14 = objc_opt_class();
      contentType3 = [typeCopy contentType];
      [NSError hk_assignError:error code:3 format:@"%@ Failed to create UTType from contentType '%@'", v14, contentType3];

      v9 = 0;
    }
  }

  else
  {
    webURL = [typeCopy webURL];
    lastPathComponent = [webURL lastPathComponent];
    pathExtension = [lastPathComponent pathExtension];

    v12 = [UTType typeWithFilenameExtension:pathExtension];
    v9 = v12;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v16 = objc_opt_class();
      identifier = [typeCopy identifier];
      [NSError hk_assignError:error code:3 format:@"%@ contentType not found for HKMedicalDownloadableAttachment identifier %@", v16, identifier];
    }
  }

  return v9;
}

- (BOOL)_indexDownloadableAttachmentWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:identifierCopy error:error];
  if (v7)
  {
    v8 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
    if (!v8)
    {
      v14 = 0;
LABEL_11:

      goto LABEL_12;
    }

    medicalRecordIdentifier = [v7 medicalRecordIdentifier];
    v10 = [(HDMedicalDownloadableAttachmentManager *)self _medicalRecordWithUUID:medicalRecordIdentifier profile:v8 error:error];

    if (v10)
    {
      attachmentIdentifier = [v7 attachmentIdentifier];

      if (attachmentIdentifier)
      {
        v12 = [HKClinicalDocumentIndexingRequest alloc];
        attachmentIdentifier2 = [v7 attachmentIdentifier];
        v22 = attachmentIdentifier2;
        v14 = 1;
        v15 = [NSArray arrayWithObjects:&v22 count:1];
        v16 = [v12 initWithMedicalRecord:v10 attachmentIdentifiers:v15];

        extractionServiceClientCreateIfNecessary = [(HDMedicalDownloadableAttachmentManager *)self extractionServiceClientCreateIfNecessary];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_81D68;
        v19[3] = &unk_1087C8;
        v19[4] = self;
        v20 = identifierCopy;
        v21 = v7;
        [extractionServiceClientCreateIfNecessary indexClinicalDocumentsWithRequest:v16 completion:v19];

LABEL_10:
        goto LABEL_11;
      }

      [NSError hk_assignError:error code:3 format:@"HKMedicalDownloadableAttachment is missing attachmentIdentifier"];
    }

    v14 = 0;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)_reconcileDownloadableAttachmentToHKAttachmentForMedicalRecordWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_31;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A790C();
    if (identifierCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (!identifierCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = [HDSQLiteComparisonPredicate predicateWithProperty:HDMedicalDownloadableAttachmentEntityPropertyMedicalRecordUUID equalToValue:identifierCopy];
LABEL_8:
  os_unfair_lock_lock(&self->_query_lock);
  v10 = objc_alloc_init(NSMutableArray);
  v57 = HDMedicalDownloadableAttachmentEntityPropertyIdentifier;
  v11 = [NSArray arrayWithObjects:&v57 count:1];
  database = [v7 database];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_82544;
  v46[3] = &unk_108780;
  v13 = v10;
  v47 = v13;
  v9 = [HDMedicalDownloadableAttachmentEntity enumerateProperties:v11 withPredicate:v8 healthDatabase:database error:error enumerationHandler:v46];

  if (v9)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A7980();
    }

    v38 = v9;
    v39 = v8;
    v40 = v13;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (v15)
    {
      v16 = v15;
      v36 = v7;
      v37 = identifierCopy;
      v17 = 0;
      v18 = 0;
      v19 = *v43;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          v41 = 0;
          v22 = [(HDMedicalDownloadableAttachmentManager *)self _reconcileHKAttachmentForDownloadableAttachmentWithIdentifier:v21 error:&v41];
          v23 = v41;
          if ((v22 & 1) == 0)
          {
            _HKInitializeLogging();
            v24 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              selfCopy = self;
              v50 = 2114;
              v51 = v21;
              v52 = 2114;
              v53 = v23;
              _os_log_error_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%{public}@: reconcileDownloadableAttachmentToHKAttachmentWithError for HKMedicalDownloadableAttachment with 'identifier': %{public}@ failed with error %{public}@", buf, 0x20u);
            }

            ++v17;
          }
        }

        v18 += v16;
        v16 = [v14 countByEnumeratingWithState:&v42 objects:v56 count:16];
      }

      while (v16);
      v25 = v18;
      v7 = v36;
      identifierCopy = v37;
    }

    else
    {
      v17 = 0;
      v25 = 0;
    }

    os_unfair_lock_unlock(&self->_query_lock);
    v13 = v40;
    if (v17 >= 1)
    {
      _HKInitializeLogging();
      v26 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = [v14 count];
        *buf = 138544130;
        selfCopy = v29;
        v50 = 2048;
        v51 = v30;
        v52 = 2048;
        v53 = v25;
        v54 = 2048;
        v55 = v17;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: reconcileDownloadableAttachmentToHKAttachmentWithError with %lu records reconciled %lu records and encountered %lu errors", buf, 0x2Au);

        v13 = v40;
      }
    }

    _HKInitializeLogging();
    v31 = HKLogHealthRecords;
    v8 = v39;
    v9 = v38;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138543362;
      selfCopy = v34;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: reconcileDownloadableAttachmentToHKAttachmentWithError completed", buf, 0xCu);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_query_lock);
  }

LABEL_31:
  return v9;
}

- (BOOL)_reconcileHKAttachmentForDownloadableAttachmentWithIdentifier:(id)identifier error:(id *)error
{
  v6 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:identifier error:?];
  medicalRecordIdentifier = [v6 medicalRecordIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];
  v10 = [(HDMedicalDownloadableAttachmentManager *)self _medicalRecordWithUUID:medicalRecordIdentifier profile:profile error:error];

  if (v10)
  {
    clinicalRecordIdentifier = [v6 clinicalRecordIdentifier];

    if (clinicalRecordIdentifier)
    {
      clinicalRecordIdentifier2 = [v6 clinicalRecordIdentifier];
      v13 = objc_loadWeakRetained(&self->_profileExtension);
      profile2 = [v13 profile];
      clinicalRecordIdentifier = [(HDMedicalDownloadableAttachmentManager *)self _clinicalRecordWithUUID:clinicalRecordIdentifier2 profile:profile2 error:error];

      if (!clinicalRecordIdentifier)
      {
        goto LABEL_6;
      }
    }

    v15 = objc_loadWeakRetained(&self->_profileExtension);
    profile3 = [v15 profile];
    v17 = [HDMedicalDownloadableAttachmentEntity _updateWithExistingAttachmentIfFoundForDownloadableAttachment:v6 medicalRecord:v10 clinicalRecord:clinicalRecordIdentifier profile:profile3 error:error];

    if (v17)
    {
      identifier = [v6 identifier];
      [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentDidChange:identifier];

      v19 = 1;
    }

    else
    {
LABEL_6:
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)triggerAttachmentRetryForMedicalRecordWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy8 = self;
    v45 = 2112;
    v46 = identifierCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Retry HKMedicalDownloadableAttachments for medical record identifier %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  ingestionManager = [WeakRetained ingestionManager];
  currentIngestionState = [ingestionManager currentIngestionState];

  if (currentIngestionState == &dword_0 + 1)
  {
    if (![(HDMedicalDownloadableAttachmentManager *)self _reconcileDownloadableAttachmentToHKAttachmentForMedicalRecordWithIdentifier:identifierCopy error:error])
    {
      _HKInitializeLogging();
      v11 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A7A2C(self, identifierCopy, v11);
      }
    }

    v42 = 0;
    v12 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsForMedicalRecordWithIdentifier:identifierCopy error:&v42];
    v13 = v42;
    if (v12)
    {
      if (![v12 count])
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A7B08();
        }

        [NSError hk_assignError:error code:3 format:@"%@ Retry for medical record identifier %@ failed. No HKMedicalDownloadableAttachments found.", objc_opt_class(), identifierCopy];
        goto LABEL_35;
      }

      v41 = v13;
      v14 = [(HDMedicalDownloadableAttachmentManager *)self _processAndIndexDownloadableAttachmentsWithIdentifiers:v12 backOff:0 error:&v41];
      v15 = v41;

      if (v14)
      {
        v40 = v15;
        v16 = [(HDMedicalDownloadableAttachmentManager *)self _fetchDownloadableAttachmentsAwaitingDownloadWithBatchSize:&off_1103C0 downloadableAttachmentIdentifiers:v12 backOff:0 error:&v40];
        v13 = v40;

        v17 = v16 != 0;
        _HKInitializeLogging();
        v18 = HKLogHealthRecords;
        if (v16)
        {
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
            v20 = [v16 count];
            *buf = 138543618;
            selfCopy8 = self;
            v45 = 2048;
            v46 = v20;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Retry downloading %lu HKMedicalDownloadableAttachments", buf, 0x16u);
          }

          if ([v16 count])
          {
            [(HDMedicalDownloadableAttachmentManager *)self _callDownloaderWithDownloadableAttachments:v16 shouldRequestMore:0];
            _HKInitializeLogging();
            v21 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              selfCopy8 = self;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Retry downloading initiated for HKMedicalDownloadableAttachments", buf, 0xCu);
            }
          }

          _HKInitializeLogging();
          v22 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy8 = self;
            v45 = 2112;
            v46 = identifierCopy;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Completed initiating retry HKMedicalDownloadableAttachments for medical record identifier %@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v37 = v18;
            localizedDescription = [v13 localizedDescription];
            v39 = HKSensitiveLogItem();
            *buf = 138543874;
            selfCopy8 = self;
            v45 = 2114;
            v46 = identifierCopy;
            v47 = 2114;
            v48 = v39;
            _os_log_error_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%{public}@: Retry downloading failed for medical record identifier %{public}@. Error: %{public}@", buf, 0x20u);
          }

          v29 = v13;
          if (v29)
          {
            if (error)
            {
              v30 = v29;
              *error = v29;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }

        goto LABEL_36;
      }

      _HKInitializeLogging();
      v26 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v34 = v26;
        localizedDescription2 = [v15 localizedDescription];
        v36 = HKSensitiveLogItem();
        *buf = 138543874;
        selfCopy8 = self;
        v45 = 2114;
        v46 = identifierCopy;
        v47 = 2114;
        v48 = v36;
        _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%{public}@: Retry processing / indexing failed for medical record identifier %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v25 = v15;
    }

    else
    {
      _HKInitializeLogging();
      v24 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v31 = v24;
        localizedDescription3 = [v13 localizedDescription];
        v33 = HKSensitiveLogItem();
        *buf = 138543874;
        selfCopy8 = self;
        v45 = 2114;
        v46 = identifierCopy;
        v47 = 2114;
        v48 = v33;
        _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%{public}@: Retry retrieving HKMedicalDownloadableAttachments for medical record identifier %{public}@ failed. Error: %{public}@", buf, 0x20u);
      }

      v25 = v13;
    }

    v13 = v25;
    if (v25)
    {
      if (error)
      {
        v27 = v25;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_35:
    v17 = 0;
LABEL_36:

    goto LABEL_37;
  }

  _HKInitializeLogging();
  v23 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy8 = self;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Health Records ingestion in progress. Cannot retry at this time.", buf, 0xCu);
  }

  v17 = 1;
LABEL_37:

  return v17;
}

- (BOOL)removeAllAttachmentsFromMedicalRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:error];
  if (v7)
  {
    v8 = [(HDMedicalDownloadableAttachmentManager *)self _attachmentIdentifierForMedicalRecordWithUUID:recordCopy profile:v7 error:error];
    if (v8)
    {
      attachmentManager = [v7 attachmentManager];
      v10 = [attachmentManager removeAttachmentReferencesWithObjectIdentifier:v8 schemaIdentifier:HKAttachmentClinicalRecordSchemaIdentifier error:error];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_downloadableAttachmentDidChange:(id)change
{
  changeCopy = change;
  v5 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:changeCopy error:0];
  if (v5)
  {
    [(HDMedicalDownloadableAttachmentManager *)self downloadableAttachmentDidChange:v5];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A7B70();
    }
  }
}

- (void)downloadableAttachmentDidChange:(id)change
{
  changeCopy = change;
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A31AC(self, v5, changeCopy);
  }

  stateChangeListeners = self->_stateChangeListeners;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_82F8C;
  v8[3] = &unk_1087F0;
  v9 = changeCopy;
  v7 = changeCopy;
  [(HKObserverSet *)stateChangeListeners notifyObservers:v8];
}

- (HDHealthRecordsProfileExtension)profileExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);

  return WeakRetained;
}

@end