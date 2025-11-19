@interface HDMedicalDownloadableAttachmentManager
- (BOOL)_addAttachmentAndMarkAvailableForAttachmentWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_addAttachmentForMedicalDownloadableAttachmentWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_beginOrResumeDownloadingAttachmentsWithError:(id *)a3;
- (BOOL)_downloadAllowed;
- (BOOL)_indexDownloadableAttachmentWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_reconcileDownloadableAttachmentToHKAttachmentForMedicalRecordWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_reconcileHKAttachmentForDownloadableAttachmentWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_removeLocalFileForAttachmentWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_saveInlineDataIfNeededForDownloadableAttachment:(id)a3 error:(id *)a4;
- (BOOL)_saveInlineDataToTempFile:(id)a3 error:(id *)a4;
- (BOOL)_updateNextRetryDateForAttachmentWithIdentifier:(id)a3 nextRetryDate:(id)a4 error:(id *)a5;
- (BOOL)_updateNextRetryDateForFailedDownloadForAttachmentWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_updateNextRetryDateForFailedIndexingForAttachmentWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_updateNextRetryDateForFailedProcessingForAttachmentWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)insertDownloadableAttachment:(id)a3 error:(id *)a4;
- (BOOL)markDataAvailableForAttachmentWithIdentifier:(id)a3 attachmentContent:(id)a4 error:(id *)a5;
- (BOOL)markDownloadCompleteForAttachmentWithIdentifier:(id)a3 fileURL:(id)a4 error:(id *)a5;
- (BOOL)processDownloadableAttachmentWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)removeAllAttachmentsFromMedicalRecord:(id)a3 error:(id *)a4;
- (BOOL)removeDownloadableAttachmentWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)triggerAttachmentRetryForMedicalRecordWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)updateErrorStatusAndRetryCountForAttachmentWithIdentifier:(id)a3 errorStatus:(int64_t)a4 lastError:(id)a5 retryCount:(int64_t)a6 error:(id *)a7;
- (BOOL)updateRetryCountForAttachmentWithIdentifier:(id)a3 retryCount:(int64_t)a4 nextRetryDate:(id)a5 error:(id *)a6;
- (BOOL)updateStatusAndClearErrorForAttachmentWithIdentifier:(id)a3 status:(int64_t)a4 error:(id *)a5;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDMedicalDownloadableAttachmentManager)initWithProfileExtension:(id)a3;
- (id)_applyBackoffStrategyForRetryCount:(int64_t)a3 now:(id)a4;
- (id)_attachmentIdentifierForClinicalRecordWithUUID:(id)a3 profile:(id)a4 error:(id *)a5;
- (id)_attachmentIdentifierForMedicalRecordWithUUID:(id)a3 profile:(id)a4 error:(id *)a5;
- (id)_backOffPredicateWithCompareDate:(id)a3;
- (id)_backOffPredicateWithPredicate:(id)a3;
- (id)_clinicalRecordWithUUID:(id)a3 profile:(id)a4 error:(id *)a5;
- (id)_determineUTType:(id)a3 error:(id *)a4;
- (id)_downloadableAttachmentsAwaitingDownloadPredicate;
- (id)_downloadableAttachmentsFailedDownloadWithoutErrorPredicateWithCompareDate:(id)a3;
- (id)_downloadableAttachmentsForMedicalRecordWithIdentifier:(id)a3 error:(id *)a4;
- (id)_downloadableAttachmentsPredicateWithPredicate:(id)a3 downloadableAttachmentIdentifiers:(id)a4;
- (id)_downloadableAttachmentsReadyToIndexPredicate;
- (id)_downloadableAttachmentsReadyToIndexWithIdentifiers:(id)a3 backOff:(BOOL)a4 error:(id *)a5;
- (id)_downloadableAttachmentsReadyToProcessPredicate;
- (id)_downloadableAttachmentsReadyToProcessWithIdentifiers:(id)a3 backOff:(BOOL)a4 error:(id *)a5;
- (id)_fetchDownloadableAttachmentsAwaitingDownloadWithBatchSize:(id)a3 downloadableAttachmentIdentifiers:(id)a4 backOff:(BOOL)a5 error:(id *)a6;
- (id)_fetchDownloadableAttachmentsForPredicate:(id)a3 downloadableAttachmentIdentifiers:(id)a4 error:(id *)a5;
- (id)_indexingAttachmentsFailedWithoutErrorPredicateWithCompareDate:(id)a3;
- (id)_medicalRecordWithUUID:(id)a3 profile:(id)a4 error:(id *)a5;
- (id)_processingAttachmentsFailedWithoutErrorPredicateWithCompareDate:(id)a3;
- (id)extractionServiceClientCreateIfNecessary;
- (id)fetchAttachmentWithIdentifier:(id)a3 error:(id *)a4;
- (id)profileWithError:(id *)a3;
- (void)_downloadableAttachmentDidChange:(id)a3;
- (void)downloadableAttachmentDidChange:(id)a3;
- (void)notifyDownloadingCompleteAndRequestMoreWithIdentifiers:(id)a3 requestBatchSize:(id)a4 completion:(id)a5;
- (void)runMedicalDownloadableAttachmentPipelineWithCompletion:(id)a3;
@end

@implementation HDMedicalDownloadableAttachmentManager

- (HDMedicalDownloadableAttachmentManager)initWithProfileExtension:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDMedicalDownloadableAttachmentManager;
  v5 = [(HDMedicalDownloadableAttachmentManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, v4);
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

- (id)profileWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v5 = [WeakRetained profile];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    [NSError hk_assignError:a3 code:3 format:@"No profile found for %@", objc_opt_class()];
  }

  return v5;
}

- (id)extractionServiceClientCreateIfNecessary
{
  os_unfair_lock_lock(&self->_service_client_lock);
  extractionServiceClient = self->_extractionServiceClient;
  if (!extractionServiceClient)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
    v5 = [WeakRetained createHealthRecordsXPCServiceClient];
    v6 = self->_extractionServiceClient;
    self->_extractionServiceClient = v5;

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
    v4 = [v2 daemon];
    v5 = [v4 behavior];
    v6 = [v5 healthAppNotInstalled] ^ 1;
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

- (id)_downloadableAttachmentsFailedDownloadWithoutErrorPredicateWithCompareDate:(id)a3
{
  v3 = a3;
  v4 = HDMedicalDownloadAttachmentPredicateForStatus(2);
  v11[0] = v4;
  v5 = HDMedicalDownloadableAttachmentEntityPropertyLastUpdatedDate;
  v6 = [v3 dateByAddingTimeInterval:-600.0];

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

- (id)_processingAttachmentsFailedWithoutErrorPredicateWithCompareDate:(id)a3
{
  v3 = a3;
  v4 = HDMedicalDownloadAttachmentPredicateForStatus(10);
  v20[0] = v4;
  v5 = HDMedicalDownloadableAttachmentEntityPropertyLastUpdatedDate;
  v6 = [v3 dateByAddingTimeInterval:-600.0];
  v7 = [HDSQLiteComparisonPredicate predicateWithProperty:v5 lessThanValue:v6];
  v20[1] = v7;
  v8 = [NSArray arrayWithObjects:v20 count:2];
  v9 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  v10 = HDMedicalDownloadAttachmentPredicateForStatus(8);
  v19[0] = v10;
  v11 = [v3 dateByAddingTimeInterval:-600.0];

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

- (id)_indexingAttachmentsFailedWithoutErrorPredicateWithCompareDate:(id)a3
{
  v3 = a3;
  v4 = HDMedicalDownloadAttachmentPredicateForStatus(5);
  v11[0] = v4;
  v5 = HDMedicalDownloadableAttachmentEntityPropertyLastUpdatedDate;
  v6 = [v3 dateByAddingTimeInterval:-600.0];

  v7 = [HDSQLiteComparisonPredicate predicateWithProperty:v5 lessThanValue:v6];
  v11[1] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v9;
}

- (id)_backOffPredicateWithCompareDate:(id)a3
{
  v3 = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
  v4 = a3;
  v5 = [HDSQLiteNullPredicate isNullPredicateWithProperty:v3];
  v10[0] = v5;
  v6 = [HDSQLiteComparisonPredicate predicateWithProperty:v3 lessThanValue:v4];

  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [HDSQLiteCompoundPredicate predicateMatchingAnyPredicates:v7];

  return v8;
}

- (id)_backOffPredicateWithPredicate:(id)a3
{
  v4 = a3;
  v5 = +[NSDate now];
  v6 = [(HDMedicalDownloadableAttachmentManager *)self _backOffPredicateWithCompareDate:v5];
  v7 = [HDSQLiteCompoundPredicate compoundPredicateWithPredicate:v4 otherPredicate:v6];

  return v7;
}

- (id)_downloadableAttachmentsPredicateWithPredicate:(id)a3 downloadableAttachmentIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = v6;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  if (v7 && [v7 count])
  {
    v9 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentBatchPredicateWithIdentifiers:v7];
    v10 = [v8 arrayByAddingObject:v9];

    v8 = v10;
  }

  v11 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  return v11;
}

- (id)_fetchDownloadableAttachmentsForPredicate:(id)a3 downloadableAttachmentIdentifiers:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a5];
  if (v10)
  {
    v11 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsPredicateWithPredicate:v8 downloadableAttachmentIdentifiers:v9];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_7D610;
    v15[3] = &unk_1084A0;
    v12 = objc_alloc_init(NSMutableArray);
    v16 = v12;
    if ([HDMedicalDownloadableAttachmentEntity enumerateAttachmentsWithPredicate:v11 profile:v10 error:a5 enumerationHandler:v15])
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

- (id)_downloadableAttachmentsForMedicalRecordWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a4];
  if (v7)
  {
    v8 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsForMedicalRecordPredicateWithIdentifier:v6];
    v9 = objc_alloc_init(NSMutableArray);
    v18 = HDMedicalDownloadableAttachmentEntityPropertyIdentifier;
    v10 = [NSArray arrayWithObjects:&v18 count:1];
    v11 = [v7 database];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_7D7F4;
    v16[3] = &unk_108780;
    v12 = v9;
    v17 = v12;
    v13 = [HDMedicalDownloadableAttachmentEntity enumerateProperties:v10 withPredicate:v8 healthDatabase:v11 error:a4 enumerationHandler:v16];

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

- (id)_fetchDownloadableAttachmentsAwaitingDownloadWithBatchSize:(id)a3 downloadableAttachmentIdentifiers:(id)a4 backOff:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  os_unfair_lock_lock(&self->_query_lock);
  v12 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsAwaitingDownloadPredicate];
  if (v7)
  {
    v13 = [(HDMedicalDownloadableAttachmentManager *)self _backOffPredicateWithPredicate:v12];

    v12 = v13;
  }

  v14 = [(HDMedicalDownloadableAttachmentManager *)self _fetchDownloadableAttachmentsForPredicate:v12 downloadableAttachmentIdentifiers:v11 error:a6];
  if (v14)
  {
    v36 = v12;
    v15 = [v10 intValue];
    if (v15 <= [&off_1103C0 intValue])
    {
      v16 = v10;
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
      v33 = v11;
      v34 = v10;
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
          v24 = [v23 identifier];
          v25 = [(HDMedicalDownloadableAttachmentManager *)self updateStatusAndClearErrorForAttachmentWithIdentifier:v24 status:2 error:a6];

          if ((v25 & 1) == 0)
          {
            break;
          }
        }

        if ([v23 errorStatus] == &dword_0 + 1)
        {
          v26 = [v23 identifier];
          v27 = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForFailedDownloadForAttachmentWithIdentifier:v26 error:a6];

          if ((v27 & 1) == 0)
          {
            break;
          }
        }

        v28 = [v23 identifier];
        v29 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:v28 error:a6];

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
          v11 = v33;
          v10 = v34;
          v14 = v35;
          v12 = v36;

          goto LABEL_28;
        }

        if (v20 == ++v22)
        {
          v20 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
          v11 = v33;
          v10 = v34;
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
    v12 = v36;
LABEL_28:
  }

  else
  {
    os_unfair_lock_unlock(&self->_query_lock);
    v31 = 0;
  }

  return v31;
}

- (id)_downloadableAttachmentsReadyToProcessWithIdentifiers:(id)a3 backOff:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  os_unfair_lock_lock(&self->_query_lock);
  v9 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsReadyToProcessPredicate];
  if (v6)
  {
    v10 = [(HDMedicalDownloadableAttachmentManager *)self _backOffPredicateWithPredicate:v9];

    v9 = v10;
  }

  v11 = [(HDMedicalDownloadableAttachmentManager *)self _fetchDownloadableAttachmentsForPredicate:v9 downloadableAttachmentIdentifiers:v8 error:a5];
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
      v29 = v9;
      v30 = v8;
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
            v19 = [v18 identifier];
            v20 = [(HDMedicalDownloadableAttachmentManager *)self updateStatusAndClearErrorForAttachmentWithIdentifier:v19 status:10 error:a5];

            if (!v20)
            {
              goto LABEL_19;
            }
          }

          if ([v18 status] == &dword_0 + 3)
          {
            v21 = [v18 identifier];
            v22 = [(HDMedicalDownloadableAttachmentManager *)self updateStatusAndClearErrorForAttachmentWithIdentifier:v21 status:8 error:a5];

            if (!v22)
            {
              goto LABEL_19;
            }
          }

          if ([v18 errorStatus] == &dword_0 + 2 || objc_msgSend(v18, "errorStatus") == &dword_0 + 3)
          {
            v23 = [v18 identifier];
            v24 = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForFailedProcessingForAttachmentWithIdentifier:v23 error:a5];

            if (!v24)
            {
LABEL_19:
              os_unfair_lock_unlock(&self->_query_lock);

              v26 = 0;
              v9 = v29;
              v8 = v30;
              v11 = v28;
              goto LABEL_20;
            }
          }

          v25 = [v18 identifier];
          [v12 addObject:v25];
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
        v9 = v29;
        v8 = v30;
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

- (id)_downloadableAttachmentsReadyToIndexWithIdentifiers:(id)a3 backOff:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  os_unfair_lock_lock(&self->_query_lock);
  v9 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsReadyToIndexPredicate];
  if (v6)
  {
    v10 = [(HDMedicalDownloadableAttachmentManager *)self _backOffPredicateWithPredicate:v9];

    v9 = v10;
  }

  v11 = [(HDMedicalDownloadableAttachmentManager *)self _fetchDownloadableAttachmentsForPredicate:v9 downloadableAttachmentIdentifiers:v8 error:a5];
  if (v11)
  {
    v27 = v9;
    v28 = v8;
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
            v19 = [v18 identifier];
            v20 = [(HDMedicalDownloadableAttachmentManager *)self updateStatusAndClearErrorForAttachmentWithIdentifier:v19 status:5 error:a5];

            if (!v20)
            {
              goto LABEL_16;
            }
          }

          if ([v18 errorStatus] == &dword_4)
          {
            v21 = [v18 identifier];
            v22 = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForFailedIndexingForAttachmentWithIdentifier:v21 error:a5];

            if (!v22)
            {
LABEL_16:
              os_unfair_lock_unlock(&self->_query_lock);

              v24 = 0;
              goto LABEL_17;
            }
          }

          v23 = [v18 identifier];
          [v12 addObject:v23];
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

    v9 = v27;
    v8 = v28;
    v11 = v26;
  }

  else
  {
    os_unfair_lock_unlock(&self->_query_lock);
    v24 = 0;
  }

  return v24;
}

- (id)_applyBackoffStrategyForRetryCount:(int64_t)a3 now:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 > 10)
  {
    v7 = 604800.0;
LABEL_7:
    v8 = [v5 dateByAddingTimeInterval:v7];
    goto LABEL_8;
  }

  if (a3 > 5)
  {
    v7 = 302400.0;
    goto LABEL_7;
  }

  if (a3 >= 4)
  {
    v7 = 86400.0;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)updateRetryCountForAttachmentWithIdentifier:(id)a3 retryCount:(int64_t)a4 nextRetryDate:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a6];
  if (v12)
  {
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v15 = +[NSDate now];
      v13 = [(HDMedicalDownloadableAttachmentManager *)self _applyBackoffStrategyForRetryCount:a4 now:v15];
    }

    v22[0] = HDMedicalDownloadableAttachmentEntityPropertyRetryCount;
    v22[1] = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
    v16 = [NSArray arrayWithObjects:v22 count:2];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_7E318;
    v19[3] = &unk_1073D8;
    v20 = v13;
    v21 = a4;
    v17 = v13;
    v14 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:v10 properties:v16 profile:v12 error:a6 bindingHandler:v19];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)markDownloadCompleteForAttachmentWithIdentifier:(id)a3 fileURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a5];
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
    v15 = v9;
    v12 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:v8 properties:v11 profile:v10 error:a5 bindingHandler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)markDataAvailableForAttachmentWithIdentifier:(id)a3 attachmentContent:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a5];
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
    v15 = v9;
    v12 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:v8 properties:v11 profile:v10 error:a5 bindingHandler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)updateStatusAndClearErrorForAttachmentWithIdentifier:(id)a3 status:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a5];
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
    v13[4] = a4;
    v11 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:v8 properties:v10 profile:v9 error:a5 bindingHandler:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)updateErrorStatusAndRetryCountForAttachmentWithIdentifier:(id)a3 errorStatus:(int64_t)a4 lastError:(id)a5 retryCount:(int64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = v13;
  if ((!a4 || v13) && (a4 || !v13))
  {
    v16 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a7];
    if (v16)
    {
      v17 = +[NSDate now];
      v18 = [(HDMedicalDownloadableAttachmentManager *)self _applyBackoffStrategyForRetryCount:a6 now:v17];

      v27[0] = HDMedicalDownloadableAttachmentEntityPropertyErrorStatus;
      v27[1] = HDMedicalDownloadableAttachmentEntityPropertyLastError;
      v27[2] = HDMedicalDownloadableAttachmentEntityPropertyRetryCount;
      v27[3] = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
      v19 = [NSArray arrayWithObjects:v27 count:4];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_7ECC4;
      v22[3] = &unk_107878;
      v25 = a4;
      v26 = a6;
      v23 = v14;
      v24 = v18;
      v20 = v18;
      v15 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:v12 properties:v19 profile:v16 error:a7 bindingHandler:v22];
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

- (BOOL)_updateNextRetryDateForAttachmentWithIdentifier:(id)a3 nextRetryDate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a5];
  if (v10)
  {
    v16 = HDMedicalDownloadableAttachmentEntityPropertyNextRetryDate;
    v11 = [NSArray arrayWithObjects:&v16 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_7EEAC;
    v14[3] = &unk_105B80;
    v15 = v9;
    v12 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:v8 properties:v11 profile:v10 error:a5 bindingHandler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_updateNextRetryDateForFailedDownloadForAttachmentWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSDate now];
  v8 = [v7 dateByAddingTimeInterval:600.0];

  LOBYTE(a4) = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForAttachmentWithIdentifier:v6 nextRetryDate:v8 error:a4];
  return a4;
}

- (BOOL)_updateNextRetryDateForFailedProcessingForAttachmentWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSDate now];
  v8 = [v7 dateByAddingTimeInterval:600.0];

  LOBYTE(a4) = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForAttachmentWithIdentifier:v6 nextRetryDate:v8 error:a4];
  return a4;
}

- (BOOL)_updateNextRetryDateForFailedIndexingForAttachmentWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSDate now];
  v8 = [v7 dateByAddingTimeInterval:600.0];

  LOBYTE(a4) = [(HDMedicalDownloadableAttachmentManager *)self _updateNextRetryDateForAttachmentWithIdentifier:v6 nextRetryDate:v8 error:a4];
  return a4;
}

- (BOOL)insertDownloadableAttachment:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a4];
  if (v7)
  {
    v8 = [HDMedicalDownloadableAttachmentEntity insertAttachment:v6 profile:v7 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fetchAttachmentWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a4];
  if (v7)
  {
    v8 = [HDMedicalDownloadableAttachmentEntity attachmentWithIdentifier:v6 profile:v7 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeDownloadableAttachmentWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a4];
  if (v7)
  {
    v8 = [HDMedicalDownloadableAttachmentEntity deleteAttachmentWithIdentifier:v6 profile:v7 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)runMedicalDownloadableAttachmentPipelineWithCompletion:(id)a3
{
  v4 = a3;
  [(HDMedicalDownloadableAttachmentManager *)self set_unitTesting_skippedAttachmentDownload:0];
  v5 = [(HDMedicalDownloadableAttachmentManager *)self _downloadAllowed];
  _HKInitializeLogging();
  v6 = HKLogHealthRecords;
  v7 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138543362;
      v22 = self;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Start HKMedicalDownloadableAttachments Pipeline", buf, 0xCu);
    }

    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = self;
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
      v22 = self;
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
        v22 = self;
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
          v22 = self;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Completed initiating _beginOrResumeDownloadingAttachmentsWithError", buf, 0xCu);
        }

        v4[2](v4, 1, 0);
      }

      else
      {
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_A735C();
        }

        (v4)[2](v4, 0, v16);
      }
    }

    else
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A72AC();
      }

      (v4)[2](v4, 0, v13);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 138543362;
      v22 = self;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Download is not allowed. HKMedicalDownloadableAttachments Pipeline will not run.", buf, 0xCu);
    }

    [(HDMedicalDownloadableAttachmentManager *)self set_unitTesting_skippedAttachmentDownload:1];
    v4[2](v4, 1, 0);
  }
}

- (void)notifyDownloadingCompleteAndRequestMoreWithIdentifiers:(id)a3 requestBatchSize:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v21 = 0;
    v11 = [(HDMedicalDownloadableAttachmentManager *)self _processAndIndexDownloadableAttachmentsWithIdentifiers:v8 backOff:0 error:&v21];
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
      v23 = self;
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

  if ([v9 isEqualToNumber:&off_1103D8])
  {
    _HKInitializeLogging();
    v14 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = self;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: no more attachments requested by the downloader", buf, 0xCu);
    }

    v10[2](v10, &__NSArray0__struct, 0);
  }

  else
  {
    v20 = 0;
    v15 = [(HDMedicalDownloadableAttachmentManager *)self _fetchDownloadableAttachmentsAwaitingDownloadWithBatchSize:v9 error:&v20];
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
        v23 = self;
        v24 = 2048;
        v25 = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: sending %lu attachments to the downloader", buf, 0x16u);
      }

      v10[2](v10, v15, 0);
    }

    else
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A7530();
      }

      (v10)[2](v10, 0, v16);
    }
  }
}

- (BOOL)_beginOrResumeDownloadingAttachmentsWithError:(id *)a3
{
  v4 = [(HDMedicalDownloadableAttachmentManager *)self _fetchDownloadableAttachmentsAwaitingDownloadWithBatchSize:&off_1103C0 error:a3];
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
        v9 = self;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: no attachments awaiting download at this time", &v8, 0xCu);
      }
    }
  }

  return v5 != 0;
}

- (BOOL)processDownloadableAttachmentWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:v6 error:a4];
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
      v11 = [(HDMedicalDownloadableAttachmentManager *)self updateStatusAndClearErrorForAttachmentWithIdentifier:v6 status:8 error:&v27];
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
        v25 = [v13 localizedDescription];
        v26 = HKSensitiveLogItem();
        *buf = 138543874;
        v30 = self;
        v31 = 2114;
        v32 = v6;
        v33 = 2114;
        v34 = v26;
        _os_log_error_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed update status for attachment %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v18 = v13;
      if (v18)
      {
        if (a4)
        {
          v19 = v18;
          *a4 = v18;
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
        v22 = [v10 localizedDescription];
        v23 = HKSensitiveLogItem();
        *buf = 138543874;
        v30 = self;
        v31 = 2114;
        v32 = v6;
        v33 = 2114;
        v34 = v23;
        _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save inlineData to file for attachment %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v10 = v10;
      if (v10)
      {
        if (a4)
        {
          v16 = v10;
          *a4 = v10;
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
  v14 = [(HDMedicalDownloadableAttachmentManager *)self _addAttachmentAndMarkAvailableForAttachmentWithIdentifier:v6 error:a4];
LABEL_23:

  return v14;
}

- (BOOL)_saveInlineDataIfNeededForDownloadableAttachment:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 status] == &dword_8 + 2)
  {
    v7 = [v6 inlineData];

    if (!v7)
    {
      [NSError hk_assignError:a4 code:3 format:@"HKMedicalDownloadableAttachment status is 'InlineDataAvailable' but 'inlineData' field is nil"];
LABEL_17:
      v12 = 0;
      goto LABEL_18;
    }
  }

  if ([v6 status] != &dword_8 + 2)
  {
    goto LABEL_7;
  }

  v8 = [v6 inlineData];

  if (!v8)
  {
    goto LABEL_7;
  }

  v25 = 0;
  v9 = [(HDMedicalDownloadableAttachmentManager *)self _saveInlineDataToTempFile:v6 error:&v25];
  v10 = v25;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    v13 = [v6 identifier];
    v24 = 0;
    v14 = -[HDMedicalDownloadableAttachmentManager updateErrorStatusAndRetryCountForAttachmentWithIdentifier:errorStatus:lastError:retryCount:error:](self, "updateErrorStatusAndRetryCountForAttachmentWithIdentifier:errorStatus:lastError:retryCount:error:", v13, 2, v11, [v6 retryCount] + 1, &v24);
    v15 = v24;

    if ((v14 & 1) == 0)
    {
      _HKInitializeLogging();
      v16 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v20 = v16;
        v21 = [v6 identifier];
        v22 = [v15 localizedDescription];
        v23 = HKSensitiveLogItem();
        *buf = 138543874;
        v27 = self;
        v28 = 2114;
        v29 = v21;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@: Failed update error status for attachment %{public}@. Error: %{public}@", buf, 0x20u);
      }
    }

    v17 = v11;
    if (v17)
    {
      if (a4)
      {
        v18 = v17;
        *a4 = v17;
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

- (BOOL)_saveInlineDataToTempFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 contentType];
  v8 = [UTType typeWithMIMEType:v7];

  v9 = [v8 preferredFilenameExtension];
  if (v9)
  {
    v10 = [v6 identifier];
    v11 = [v10 UUIDString];
    v12 = [v11 stringByAppendingPathExtension:v9];

    v13 = +[HKClinicalStorageLocations downloadableAttachmentsDirectory];
    v26 = v12;
    v14 = [v13 URLByAppendingPathComponent:v12];
    v15 = [v6 inlineData];
    v29 = 0;
    v16 = [HKClinicalStorageLocations storeData:v15 inLocalFileAtURL:v14 error:&v29];
    v17 = v29;

    if (v16)
    {
      v18 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a4];
      if (v18)
      {
        v30 = HDMedicalDownloadableAttachmentEntityPropertyFileURL;
        v19 = [NSArray arrayWithObjects:&v30 count:1];
        [v6 identifier];
        v20 = v25 = v13;
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_80C9C;
        v27[3] = &unk_105B80;
        v28 = v14;
        v21 = [HDMedicalDownloadableAttachmentEntity updateAttachmentWithIdentifier:v20 properties:v19 profile:v18 error:a4 bindingHandler:v27];

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
        if (a4)
        {
          v23 = v18;
          v21 = 0;
          *a4 = v18;
          goto LABEL_11;
        }

        _HKLogDroppedError();
      }
    }

    v21 = 0;
    goto LABEL_11;
  }

  v22 = [v6 contentType];
  [NSError hk_assignError:a4 code:125 format:@"ContentType not supported: %@", v22];

  v21 = 0;
LABEL_12:

  return v21;
}

- (BOOL)_removeLocalFileForAttachmentWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:a3 error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 fileURL];
    v8 = [HKClinicalStorageLocations removeLocalFileAtURL:v7 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_addAttachmentAndMarkAvailableForAttachmentWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self _addAttachmentForMedicalDownloadableAttachmentWithIdentifier:v6 error:&v24];
  v8 = v24;
  if (v7)
  {
    [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentDidChange:v6];
    v22 = 0;
    v9 = [(HDMedicalDownloadableAttachmentManager *)self _removeLocalFileForAttachmentWithIdentifier:v6 error:&v22];
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
    v12 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:v6 error:a4];
    v11 = v12;
    if (v12)
    {
      v23 = 0;
      v13 = -[HDMedicalDownloadableAttachmentManager updateErrorStatusAndRetryCountForAttachmentWithIdentifier:errorStatus:lastError:retryCount:error:](self, "updateErrorStatusAndRetryCountForAttachmentWithIdentifier:errorStatus:lastError:retryCount:error:", v6, 3, v8, [v12 retryCount] + 1, &v23);
      v14 = v23;
      if ((v13 & 1) == 0)
      {
        _HKInitializeLogging();
        v15 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v19 = v15;
          v20 = [v14 localizedDescription];
          v21 = HKSensitiveLogItem();
          *buf = 138543874;
          v26 = self;
          v27 = 2114;
          v28 = v6;
          v29 = 2114;
          v30 = v21;
          _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed update error status for attachment %{public}@. Error: %{public}@", buf, 0x20u);
        }
      }

      v16 = v8;
      if (v16)
      {
        if (a4)
        {
          v17 = v16;
          *a4 = v16;
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

- (BOOL)_addAttachmentForMedicalDownloadableAttachmentWithIdentifier:(id)a3 error:(id *)a4
{
  v7 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:a3 error:?];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_16;
  }

  if ([v7 status] == &dword_8)
  {
    v9 = [v8 fileURL];
    if (!v9)
    {
      [NSError hk_assignError:a4 code:3 format:@"HKMedicalDownloadableAttachment fileURL cannot be nil when creating an HKAttachment"];
      v21 = 0;
LABEL_59:

      goto LABEL_60;
    }

    v10 = [NSFileHandle fileHandleForReadingFromURL:v9 error:a4];
    if (!v10)
    {
      v21 = 0;
LABEL_58:

      goto LABEL_59;
    }

    v11 = [(HDMedicalDownloadableAttachmentManager *)self _determineUTType:v8 error:a4];
    v12 = v11;
    if (!v11)
    {
      v21 = 0;
LABEL_57:

      goto LABEL_58;
    }

    v66 = v11;
    v13 = [v8 medicalRecordIdentifier];
    WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
    v15 = [WeakRetained profile];
    v16 = [(HDMedicalDownloadableAttachmentManager *)self _attachmentIdentifierForMedicalRecordWithUUID:v13 profile:v15 error:a4];

    v67 = v16;
    if (!v16)
    {
      v21 = 0;
      v12 = v66;
LABEL_56:

      goto LABEL_57;
    }

    v17 = objc_alloc_init(NSMutableDictionary);
    v18 = [v8 webURL];

    if (v18)
    {
      v19 = [v8 webURL];
      v20 = [v19 absoluteString];
      [v17 setObject:v20 forKeyedSubscript:HKMedicalDownloadableAttachmentMetadataWebURLKey];
    }

    else
    {
      v22 = [v8 inlineDataChecksum];

      if (!v22)
      {
        goto LABEL_23;
      }

      v19 = [v8 inlineDataChecksum];
      [v17 setObject:v19 forKeyedSubscript:HKMedicalDownloadableAttachmentMetadataInlineDataChecksumKey];
    }

LABEL_23:
    if ([v17 count] != &dword_0 + 1)
    {
      sub_A77CC(v8, a2, self);
    }

    v23 = [v8 metadata];
    v24 = HKMedicalDownloadableAttachmentMetadataOriginalCreationDateKey;
    v25 = [v23 objectForKeyedSubscript:HKMedicalDownloadableAttachmentMetadataOriginalCreationDateKey];

    if (v25)
    {
      v26 = [v8 metadata];
      v27 = [v26 objectForKeyedSubscript:v24];
      [v17 setObject:v27 forKeyedSubscript:v24];
    }

    v28 = objc_loadWeakRetained(&self->_profileExtension);
    v29 = [v28 profile];
    [v29 attachmentManager];
    v31 = v30 = v17;

    v32 = [v8 title];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = &stru_1090E8;
    }

    v35 = [v66 identifier];
    v69 = 0;
    v62 = HKAttachmentClinicalRecordSchemaIdentifier;
    v64 = v31;
    v36 = v31;
    v37 = v30;
    v38 = [v36 addAttachmentWithName:v34 contentTypeIdentifier:v35 fileHandle:v10 toObjectWithIdentifier:v67 schemaIdentifier:0 attachmentMetadata:&v69 referenceMetadata:? error:?];
    v39 = v69;

    v65 = v38;
    if (v38)
    {
      v40 = [v8 clinicalRecordIdentifier];

      if (!v40)
      {
        _HKInitializeLogging();
        v52 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v53 = v52;
          v54 = [v8 identifier];
          *buf = 138543618;
          v71 = self;
          v72 = 2114;
          v73 = v54;
          _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: downloadable attachment with identifier %{public}@ has no clinicalRecordIdentifier", buf, 0x16u);
        }

        v21 = 1;
        v12 = v66;
        v45 = v64;
        goto LABEL_55;
      }

      v61 = v37;
      v41 = [v8 clinicalRecordIdentifier];
      v42 = objc_loadWeakRetained(&self->_profileExtension);
      v43 = [v42 profile];
      v44 = [(HDMedicalDownloadableAttachmentManager *)self _attachmentIdentifierForClinicalRecordWithUUID:v41 profile:v43 error:a4];

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

      v58 = [v65 attachment];
      v68 = v39;
      v45 = v64;
      v46 = [v64 addReferenceWithAttachment:v58 toObjectWithIdentifier:v44 schemaIdentifier:v62 metadata:0 error:&v68];
      v47 = v68;

      v59 = v46;
      v63 = v47;
      if (v46)
      {
        v48 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a4];
        if (v48)
        {
          v49 = [v8 identifier];
          v50 = [v65 attachment];
          v51 = [v50 identifier];
          v21 = [HDMedicalDownloadableAttachmentEntity _markAvailableAndClearInlineDataForAttachmentWithIdentifier:v49 attachmentIdentifier:v51 profile:v48 error:a4];

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
          if (a4)
          {
            v56 = v48;
            v21 = 0;
            *a4 = v48;
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

    if (a4)
    {
      v55 = v39;
      *a4 = v39;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_47;
  }

  if ([v8 status] != &dword_8 + 1 && objc_msgSend(v8, "status") != &dword_4 + 2)
  {
    [NSError hk_assignError:a4 code:3 format:@"HKMedicalDownloadableAttachment must have status 'ProcessingComplete' to create an HKAttachment"];
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

- (id)_attachmentIdentifierForMedicalRecordWithUUID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v5 = [(HDMedicalDownloadableAttachmentManager *)self _medicalRecordWithUUID:a3 profile:a4 error:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 attachmentObjectIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_medicalRecordWithUUID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v13 = HDMedicalRecordEntityEncodingOptionSkipApplyingConceptIndex;
  v14 = &__kCFBooleanTrue;
  v8 = a4;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [HDClinicalNoteRecordEntity objectWithUUID:v7 encodingOptions:v9 profile:v8 error:a5];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    [NSError hk_assignError:a5 code:118 format:@"Medical Record with UUID: %@ not found in database.", v7, v13, v14];
  }

  return v10;
}

- (id)_clinicalRecordWithUUID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [HDClinicalRecordEntity objectWithUUID:v7 encodingOptions:0 profile:a4 error:a5];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    [NSError hk_assignError:a5 code:118 format:@"Clinical Record with UUID: %@ not found in database.", v7];
  }

  return v9;
}

- (id)_attachmentIdentifierForClinicalRecordWithUUID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [HDClinicalRecordEntity objectWithUUID:v7 encodingOptions:0 profile:a4 error:a5];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 attachmentObjectIdentifier];
  }

  else
  {
    [NSError hk_assignError:a5 code:118 format:@"Clinical Record with UUID: %@ not found in database.", v7];
    v10 = 0;
  }

  return v10;
}

- (id)_determineUTType:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 contentType];

  if (v6)
  {
    v7 = [v5 contentType];
    v8 = [UTType typeWithMIMEType:v7];

    if (v8)
    {
      v8 = v8;
      v9 = v8;
    }

    else
    {
      v14 = objc_opt_class();
      v15 = [v5 contentType];
      [NSError hk_assignError:a4 code:3 format:@"%@ Failed to create UTType from contentType '%@'", v14, v15];

      v9 = 0;
    }
  }

  else
  {
    v10 = [v5 webURL];
    v11 = [v10 lastPathComponent];
    v8 = [v11 pathExtension];

    v12 = [UTType typeWithFilenameExtension:v8];
    v9 = v12;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v16 = objc_opt_class();
      v17 = [v5 identifier];
      [NSError hk_assignError:a4 code:3 format:@"%@ contentType not found for HKMedicalDownloadableAttachment identifier %@", v16, v17];
    }
  }

  return v9;
}

- (BOOL)_indexDownloadableAttachmentWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:v6 error:a4];
  if (v7)
  {
    v8 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a4];
    if (!v8)
    {
      v14 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v9 = [v7 medicalRecordIdentifier];
    v10 = [(HDMedicalDownloadableAttachmentManager *)self _medicalRecordWithUUID:v9 profile:v8 error:a4];

    if (v10)
    {
      v11 = [v7 attachmentIdentifier];

      if (v11)
      {
        v12 = [HKClinicalDocumentIndexingRequest alloc];
        v13 = [v7 attachmentIdentifier];
        v22 = v13;
        v14 = 1;
        v15 = [NSArray arrayWithObjects:&v22 count:1];
        v16 = [v12 initWithMedicalRecord:v10 attachmentIdentifiers:v15];

        v17 = [(HDMedicalDownloadableAttachmentManager *)self extractionServiceClientCreateIfNecessary];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_81D68;
        v19[3] = &unk_1087C8;
        v19[4] = self;
        v20 = v6;
        v21 = v7;
        [v17 indexClinicalDocumentsWithRequest:v16 completion:v19];

LABEL_10:
        goto LABEL_11;
      }

      [NSError hk_assignError:a4 code:3 format:@"HKMedicalDownloadableAttachment is missing attachmentIdentifier"];
    }

    v14 = 0;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)_reconcileDownloadableAttachmentToHKAttachmentForMedicalRecordWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a4];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_31;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A790C();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = [HDSQLiteComparisonPredicate predicateWithProperty:HDMedicalDownloadableAttachmentEntityPropertyMedicalRecordUUID equalToValue:v6];
LABEL_8:
  os_unfair_lock_lock(&self->_query_lock);
  v10 = objc_alloc_init(NSMutableArray);
  v57 = HDMedicalDownloadableAttachmentEntityPropertyIdentifier;
  v11 = [NSArray arrayWithObjects:&v57 count:1];
  v12 = [v7 database];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_82544;
  v46[3] = &unk_108780;
  v13 = v10;
  v47 = v13;
  v9 = [HDMedicalDownloadableAttachmentEntity enumerateProperties:v11 withPredicate:v8 healthDatabase:v12 error:a4 enumerationHandler:v46];

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
      v37 = v6;
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
              v49 = self;
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
      v6 = v37;
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
        v49 = v29;
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
      v49 = v34;
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

- (BOOL)_reconcileHKAttachmentForDownloadableAttachmentWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:a3 error:?];
  v7 = [v6 medicalRecordIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v9 = [WeakRetained profile];
  v10 = [(HDMedicalDownloadableAttachmentManager *)self _medicalRecordWithUUID:v7 profile:v9 error:a4];

  if (v10)
  {
    v11 = [v6 clinicalRecordIdentifier];

    if (v11)
    {
      v12 = [v6 clinicalRecordIdentifier];
      v13 = objc_loadWeakRetained(&self->_profileExtension);
      v14 = [v13 profile];
      v11 = [(HDMedicalDownloadableAttachmentManager *)self _clinicalRecordWithUUID:v12 profile:v14 error:a4];

      if (!v11)
      {
        goto LABEL_6;
      }
    }

    v15 = objc_loadWeakRetained(&self->_profileExtension);
    v16 = [v15 profile];
    v17 = [HDMedicalDownloadableAttachmentEntity _updateWithExistingAttachmentIfFoundForDownloadableAttachment:v6 medicalRecord:v10 clinicalRecord:v11 profile:v16 error:a4];

    if (v17)
    {
      v18 = [v6 identifier];
      [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentDidChange:v18];

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

- (BOOL)triggerAttachmentRetryForMedicalRecordWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v44 = self;
    v45 = 2112;
    v46 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Retry HKMedicalDownloadableAttachments for medical record identifier %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v9 = [WeakRetained ingestionManager];
  v10 = [v9 currentIngestionState];

  if (v10 == &dword_0 + 1)
  {
    if (![(HDMedicalDownloadableAttachmentManager *)self _reconcileDownloadableAttachmentToHKAttachmentForMedicalRecordWithIdentifier:v6 error:a4])
    {
      _HKInitializeLogging();
      v11 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A7A2C(self, v6, v11);
      }
    }

    v42 = 0;
    v12 = [(HDMedicalDownloadableAttachmentManager *)self _downloadableAttachmentsForMedicalRecordWithIdentifier:v6 error:&v42];
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

        [NSError hk_assignError:a4 code:3 format:@"%@ Retry for medical record identifier %@ failed. No HKMedicalDownloadableAttachments found.", objc_opt_class(), v6];
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
            v44 = self;
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
              v44 = self;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Retry downloading initiated for HKMedicalDownloadableAttachments", buf, 0xCu);
            }
          }

          _HKInitializeLogging();
          v22 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v44 = self;
            v45 = 2112;
            v46 = v6;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Completed initiating retry HKMedicalDownloadableAttachments for medical record identifier %@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v37 = v18;
            v38 = [v13 localizedDescription];
            v39 = HKSensitiveLogItem();
            *buf = 138543874;
            v44 = self;
            v45 = 2114;
            v46 = v6;
            v47 = 2114;
            v48 = v39;
            _os_log_error_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%{public}@: Retry downloading failed for medical record identifier %{public}@. Error: %{public}@", buf, 0x20u);
          }

          v29 = v13;
          if (v29)
          {
            if (a4)
            {
              v30 = v29;
              *a4 = v29;
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
        v35 = [v15 localizedDescription];
        v36 = HKSensitiveLogItem();
        *buf = 138543874;
        v44 = self;
        v45 = 2114;
        v46 = v6;
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
        v32 = [v13 localizedDescription];
        v33 = HKSensitiveLogItem();
        *buf = 138543874;
        v44 = self;
        v45 = 2114;
        v46 = v6;
        v47 = 2114;
        v48 = v33;
        _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%{public}@: Retry retrieving HKMedicalDownloadableAttachments for medical record identifier %{public}@ failed. Error: %{public}@", buf, 0x20u);
      }

      v25 = v13;
    }

    v13 = v25;
    if (v25)
    {
      if (a4)
      {
        v27 = v25;
        *a4 = v13;
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
    v44 = self;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Health Records ingestion in progress. Cannot retry at this time.", buf, 0xCu);
  }

  v17 = 1;
LABEL_37:

  return v17;
}

- (BOOL)removeAllAttachmentsFromMedicalRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDMedicalDownloadableAttachmentManager *)self profileWithError:a4];
  if (v7)
  {
    v8 = [(HDMedicalDownloadableAttachmentManager *)self _attachmentIdentifierForMedicalRecordWithUUID:v6 profile:v7 error:a4];
    if (v8)
    {
      v9 = [v7 attachmentManager];
      v10 = [v9 removeAttachmentReferencesWithObjectIdentifier:v8 schemaIdentifier:HKAttachmentClinicalRecordSchemaIdentifier error:a4];
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

- (void)_downloadableAttachmentDidChange:(id)a3
{
  v4 = a3;
  v5 = [(HDMedicalDownloadableAttachmentManager *)self fetchAttachmentWithIdentifier:v4 error:0];
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

- (void)downloadableAttachmentDidChange:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A31AC(self, v5, v4);
  }

  stateChangeListeners = self->_stateChangeListeners;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_82F8C;
  v8[3] = &unk_1087F0;
  v9 = v4;
  v7 = v4;
  [(HKObserverSet *)stateChangeListeners notifyObservers:v8];
}

- (HDHealthRecordsProfileExtension)profileExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);

  return WeakRetained;
}

@end