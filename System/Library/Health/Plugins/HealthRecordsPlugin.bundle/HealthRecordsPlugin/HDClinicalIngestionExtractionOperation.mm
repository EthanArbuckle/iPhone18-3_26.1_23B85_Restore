@interface HDClinicalIngestionExtractionOperation
- (BOOL)_processClinicalRecordsInExtractionResult:(id)a3 error:(id *)a4;
- (BOOL)_processMedicalDownloadableAttachmentsInExtractionResult:(id)a3 error:(id *)a4;
- (BOOL)_processMedicalRecordsInExtractionResult:(id)a3 error:(id *)a4;
- (BOOL)_updateAccountLastExtractedRowID:(id)a3 extractionRulesVersion:(id)a4 profile:(id)a5 error:(id *)a6;
- (HDClinicalIngestionExtractionOperation)initWithTask:(id)a3 account:(id)a4 nextOperation:(id)a5;
- (id)_extractionBatchWithRulesVersion:(id)a3 error:(id *)a4;
- (id)_lookupDisplayNameForExtractedItemUnit:(id)a3;
- (id)_processFHIRResourcesInExtractionResult:(id)a3 error:(id *)a4;
- (void)_cancelWithError:(id)a3;
- (void)_didCompleteExtractionWithRequest:(id)a3 result:(id)a4 highestRowID:(id)a5 extractionRulesVersion:(id)a6 profile:(id)a7 error:(id)a8;
- (void)main;
@end

@implementation HDClinicalIngestionExtractionOperation

- (HDClinicalIngestionExtractionOperation)initWithTask:(id)a3 account:(id)a4 nextOperation:(id)a5
{
  v8.receiver = self;
  v8.super_class = HDClinicalIngestionExtractionOperation;
  v5 = [(HDClinicalIngestionPerAccountOperation *)&v8 initWithTask:a3 account:a4 nextOperation:a5];
  v6 = v5;
  if (v5)
  {
    [(HDClinicalIngestionExtractionOperation *)v5 setBatchSize:&off_110048];
  }

  return v6;
}

- (void)main
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9D0E4(v3, self);
  }

  v4 = [(HDClinicalIngestionOperation *)self profile];
  v5 = [v4 database];
  v6 = [v5 isProtectedDataAvailable];

  if (v6)
  {
    v7 = [(HDClinicalIngestionOperation *)self task];
    v8 = [v7 healthRecordsServiceClient];

    v44 = 0;
    v9 = [v8 rulesVersionForFHIRDocumentExtractionWithError:&v44];
    v10 = v44;
    v11 = v10;
    if (v9)
    {
      v43 = 0;
      v12 = [(HDClinicalIngestionExtractionOperation *)self _extractionBatchWithRulesVersion:v9 error:&v43];
      v13 = v43;
      v14 = [v12 document];

      if (v14)
      {
        v15 = [v12 highestRowID];

        if (v15)
        {
          v35 = v11;
          v16 = [v12 document];
          v17 = [v16 resourceObjects];
          v18 = [v17 count];

          if (v18)
          {
            v19 = [HDExtractionRequest alloc];
            v20 = [v12 document];
            v21 = [v20 resourceObjects];
            v22 = [v19 initWithResources:v21];

            v23 = HDCreateSerialUtilityDispatchQueue();
            extractionResponseQueue = self->_extractionResponseQueue;
            self->_extractionResponseQueue = v23;

            +[NSDate timeIntervalSinceReferenceDate];
            v26 = v25;
            v27 = dispatch_semaphore_create(0);
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_15374;
            v36[3] = &unk_1061C0;
            v41 = v26;
            v36[4] = self;
            v37 = v22;
            v38 = v12;
            v39 = v4;
            v40 = v27;
            v28 = v27;
            v29 = v22;
            [v8 executeFHIRExtractionRequest:v29 completion:v36];
            dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
          }

          else
          {
            _HKInitializeLogging();
            v32 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
            {
              sub_9D17C(v32, self);
            }

            v33 = [v12 highestRowID];
            v42 = 0;
            v34 = [(HDClinicalIngestionExtractionOperation *)self _updateAccountLastExtractedRowID:v33 extractionRulesVersion:v9 profile:v4 error:&v42];
            v29 = v42;

            if ((v34 & 1) == 0)
            {
              [(HDClinicalIngestionExtractionOperation *)self _cancelWithError:v13];
            }
          }

          v11 = v35;
        }

        else
        {
          v31 = [NSError hk_error:100 description:@"Failed to receive highest ROWID for documents to extract, will be unable to set anchor"];
          [(HDClinicalIngestionExtractionOperation *)self _cancelWithError:v31];
        }
      }

      else
      {
        [(HDClinicalIngestionExtractionOperation *)self _cancelWithError:v13];
      }
    }

    else
    {
      if (v10)
      {
        v30 = v10;
      }

      else
      {
        v30 = [NSError hk_error:100 description:@"Failed to retrieve extraction rules version"];
      }

      v13 = v30;
      [(HDClinicalIngestionExtractionOperation *)self _cancelWithError:v30];
    }
  }

  else
  {
    v8 = +[NSError hk_protectedDataInaccessibilityError];
    [(HDClinicalIngestionExtractionOperation *)self _cancelWithError:v8];
  }
}

- (id)_extractionBatchWithRulesVersion:(id)a3 error:(id *)a4
{
  if (self->_document)
  {
    v5 = a3;
    v6 = [[HDFHIRResourceExtractionBatch alloc] initWithDocument:self->_document rulesVersion:v5];
  }

  else
  {
    v8 = a3;
    v9 = [(HDClinicalIngestionExtractionOperation *)self batchSize];
    if (v9)
    {
      v10 = [(HDClinicalIngestionExtractionOperation *)self batchSize];
      v11 = [v10 integerValue];
    }

    else
    {
      v11 = kHDSQLiteQueryNoLimit;
    }

    v5 = [(HDClinicalIngestionPerAccountOperation *)self account];
    v12 = [v5 identifier];
    v13 = [(HDClinicalIngestionOperation *)self profile];
    v6 = [HDOriginalFHIRResourceEntity resourceExtractionBatchForAccountIdentifier:v12 extractionRulesVersion:v8 batchSize:v11 profile:v13 error:a4];
  }

  return v6;
}

- (void)_didCompleteExtractionWithRequest:(id)a3 result:(id)a4 highestRowID:(id)a5 extractionRulesVersion:(id)a6 profile:(id)a7 error:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  _HKInitializeLogging();
  v20 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9D2D8(v20, self, v14);
  }

  v21 = objc_retainBlock(self->_unitTest_didCompleteExtractionFromResource);
  v22 = v21;
  if (v21)
  {
    (*(v21 + 2))(v21);
  }

  if (v15)
  {
    v54 = v19;
    v55 = v22;
    v56 = v18;
    v57 = v17;
    v58 = v16;
    v59 = v14;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v60 = v15;
    v23 = [v15 allUnits];
    v24 = [v23 countByEnumeratingWithState:&v66 objects:v76 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v67;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v67 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v66 + 1) + 8 * i);
          v29 = [(__CFString *)v28 clinicalRecord];
          if (v29)
          {
            v30 = [(HDClinicalIngestionExtractionOperation *)self _lookupDisplayNameForExtractedItemUnit:v28];
            if (v30)
            {
              [v29 _setDisplayName:v30];
            }

            else
            {
              _HKInitializeLogging();
              v31 = HKLogHealthRecords;
              if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
              {
                v32 = v31;
                v33 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
                *buf = 138543618;
                v71 = v33;
                v72 = 2114;
                v73 = v28;
                _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%{public}@ did not receive a display name for item %{public}@", buf, 0x16u);
              }
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v66 objects:v76 count:16];
      }

      while (v25);
    }

    v34 = objc_alloc_init(NSMutableArray);
    v35 = [(HDClinicalPostExtractionOperation *)[HDClinicalPostExtractionReferenceRangeStatusOperation alloc] initWithExtractionResult:v60];
    [v34 addObject:v35];
    v14 = v59;
    v18 = v56;
    v17 = v57;
    if ([v34 count])
    {
      _HKInitializeLogging();
      v36 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = [v34 count];
        v39 = [v34 count];
        *buf = 138543874;
        if (v39 == &dword_0 + 1)
        {
          v40 = &stru_1090E8;
        }

        else
        {
          v40 = @"s";
        }

        v71 = self;
        v72 = 2048;
        v73 = v38;
        v74 = 2114;
        v75 = v40;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ running %lu post extraction operation%{public}@", buf, 0x20u);
      }

      v41 = objc_alloc_init(NSOperationQueue);
      [v41 addOperations:v34 waitUntilFinished:1];
      _HKInitializeLogging();
      v42 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        if ([v34 count] == &dword_0 + 1)
        {
          v44 = &stru_1090E8;
        }

        else
        {
          v44 = @"s";
        }

        *buf = 138543618;
        v71 = self;
        v72 = 2114;
        v73 = v44;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ finished running post extraction operation%{public}@", buf, 0x16u);
      }
    }

    v45 = [v59 resources];
    -[HDClinicalIngestionExtractionOperation setCountOfExtractedResources:](self, "setCountOfExtractedResources:", [v45 count]);

    v65 = v54;
    v46 = [(HDClinicalIngestionExtractionOperation *)self _processFHIRResourcesInExtractionResult:v60 error:&v65];
    v19 = v65;

    if (v46)
    {

      v64 = 0;
      v47 = [(HDClinicalIngestionExtractionOperation *)self _processMedicalRecordsInExtractionResult:v46 error:&v64];
      v48 = v64;
      v19 = v48;
      v16 = v58;
      if (v47)
      {

        v63 = 0;
        v49 = [(HDClinicalIngestionExtractionOperation *)self _processClinicalRecordsInExtractionResult:v46 error:&v63];
        v50 = v63;
        v19 = v50;
        if (v49)
        {

          v62 = 0;
          v51 = [(HDClinicalIngestionExtractionOperation *)self _processMedicalDownloadableAttachmentsInExtractionResult:v46 error:&v62];
          v52 = v62;
          v19 = v52;
          if (v51)
          {

            v61 = 0;
            v53 = [(HDClinicalIngestionExtractionOperation *)self _updateAccountLastExtractedRowID:v58 extractionRulesVersion:v57 profile:v56 error:&v61];
            v19 = v61;
            if (v53)
            {
              goto LABEL_40;
            }
          }
        }
      }
    }

    else
    {
      v16 = v58;
    }

    [(HDClinicalIngestionExtractionOperation *)self _cancelWithError:v19];
LABEL_40:

    v22 = v55;
    goto LABEL_41;
  }

  [(HDClinicalIngestionExtractionOperation *)self _cancelWithError:v19];
LABEL_41:
}

- (id)_lookupDisplayNameForExtractedItemUnit:(id)a3
{
  v4 = a3;
  v5 = [v4 medicalRecord];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 medicalRecordCodings];
    v8 = [HKMedicalCodingCollection collectionWithCodings:v7];

    v9 = [HKConceptSynthesizer bestDisplayNameForCodingCollection:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v6 fallbackDisplayString];
    }

    v16 = v11;
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
      v15 = HKSensitiveLogItem();
      v18 = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ no medical record available to look up display string for item %{public}@", &v18, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

- (id)_processFHIRResourcesInExtractionResult:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 items];
  v7 = [v6 hk_map:&stru_106200];

  v42 = 0;
  v8 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v9 = [(HDClinicalIngestionOperation *)self profile];
  v10 = [v9 currentSyncIdentityPersistentID];
  v11 = [(HDClinicalIngestionOperation *)self profile];
  v41 = 0;
  v12 = [HDOriginalFHIRResourceEntity insertOrUpdateResourceObjects:v7 upsertedResourceObjectPairs:&v42 account:v8 syncProvenance:0 syncIdentity:v10 profile:v11 error:&v41 inaccessibilityHandler:0];
  v35 = v42;
  v13 = v41;

  if (v12)
  {
    v32 = v7;
    v14 = objc_alloc_init(NSMutableArray);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = v5;
    obj = [v5 items];
    v15 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_161A4;
          v36[3] = &unk_106228;
          v36[4] = v19;
          v20 = [v35 hk_firstObjectPassingTest:v36];
          if (!v20)
          {
            _HKInitializeLogging();
            v28 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
            {
              sub_9D3BC(v28, v19, v35);
            }

            v26 = 0;
            goto LABEL_17;
          }

          v21 = v20;
          v22 = [HDExtractionResultItem alloc];
          v23 = [v21 databaseResource];
          v24 = [v19 units];
          v25 = [v22 initWithOriginalFHIRResource:v23 units:v24 flags:{objc_msgSend(v19, "flags")}];

          [v14 addObject:v25];
        }

        v16 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v26 = [[HDExtractionResult alloc] initWithItems:v14];
LABEL_17:
    v7 = v32;
    v5 = v33;
  }

  else
  {
    _HKInitializeLogging();
    v27 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v30 = v27;
      v31 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
      *buf = 138543874;
      v45 = v31;
      v46 = 2114;
      v47 = v5;
      v48 = 2114;
      v49 = v13;
      _os_log_error_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert or update result %{public}@: %{public}@", buf, 0x20u);
    }

    v26 = 0;
  }

  return v26;
}

- (BOOL)_processClinicalRecordsInExtractionResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v8 = [v7 gateway];
  v9 = [v8 externalID];
  v10 = [(HDClinicalIngestionOperation *)self profile];
  v11 = [HDClinicalRecordEntity processClinicalRecordsInExtractionResult:v6 clinicalExternalID:v9 profile:v10 error:a4];

  if (v11)
  {
    _HKInitializeLogging();
    v12 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ extraction produced %@ clinical record samples that were saved", &v16, 0x16u);
    }

    -[HDClinicalIngestionExtractionOperation setCountOfExtractedClinicalRecords:](self, "setCountOfExtractedClinicalRecords:", [v11 unsignedIntegerValue]);
  }

  return v11 != 0;
}

- (BOOL)_processMedicalRecordsInExtractionResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v8 = [v7 identifier];
  v9 = [(HDClinicalIngestionOperation *)self profile];
  v10 = [HDMedicalRecordEntity processMedicalRecordsInExtractionResult:v6 accountIdentifier:v8 profile:v9 error:a4];

  if (v10)
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ extraction produced %@ medical record samples that were saved", &v15, 0x16u);
    }

    -[HDClinicalIngestionExtractionOperation setCountOfExtractedMedicalRecords:](self, "setCountOfExtractedMedicalRecords:", [v10 unsignedIntegerValue]);
  }

  return v10 != 0;
}

- (BOOL)_updateAccountLastExtractedRowID:(id)a3 extractionRulesVersion:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(HDClinicalIngestionOperation *)self profile];
  v14 = [v13 database];

  v15 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v16 = [v15 identifier];

  LOBYTE(a6) = [HDClinicalAccountEntity updateAccountLastExtractedRowID:v12 rulesVersion:v11 identifier:v16 profile:v10 healthDatabase:v14 error:a6];
  return a6;
}

- (BOOL)_processMedicalDownloadableAttachmentsInExtractionResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDClinicalIngestionPerAccountOperation *)self account];
  v8 = [v7 identifier];
  v9 = [(HDClinicalIngestionOperation *)self profile];
  v10 = [HDMedicalDownloadableAttachmentEntity processMedicalDownloadableAttachmentsInExtractionResult:v6 accountIdentifier:v8 profile:v9 error:a4];

  if (v10)
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_9D4C8(v11, self);
    }
  }

  return 1;
}

- (void)_cancelWithError:(id)a3
{
  [(HDClinicalIngestionExtractionOperation *)self setExtractionError:a3];

  [(HDClinicalIngestionExtractionOperation *)self cancel];
}

@end