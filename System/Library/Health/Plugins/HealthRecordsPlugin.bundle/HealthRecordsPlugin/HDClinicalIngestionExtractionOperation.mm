@interface HDClinicalIngestionExtractionOperation
- (BOOL)_processClinicalRecordsInExtractionResult:(id)result error:(id *)error;
- (BOOL)_processMedicalDownloadableAttachmentsInExtractionResult:(id)result error:(id *)error;
- (BOOL)_processMedicalRecordsInExtractionResult:(id)result error:(id *)error;
- (BOOL)_updateAccountLastExtractedRowID:(id)d extractionRulesVersion:(id)version profile:(id)profile error:(id *)error;
- (HDClinicalIngestionExtractionOperation)initWithTask:(id)task account:(id)account nextOperation:(id)operation;
- (id)_extractionBatchWithRulesVersion:(id)version error:(id *)error;
- (id)_lookupDisplayNameForExtractedItemUnit:(id)unit;
- (id)_processFHIRResourcesInExtractionResult:(id)result error:(id *)error;
- (void)_cancelWithError:(id)error;
- (void)_didCompleteExtractionWithRequest:(id)request result:(id)result highestRowID:(id)d extractionRulesVersion:(id)version profile:(id)profile error:(id)error;
- (void)main;
@end

@implementation HDClinicalIngestionExtractionOperation

- (HDClinicalIngestionExtractionOperation)initWithTask:(id)task account:(id)account nextOperation:(id)operation
{
  v8.receiver = self;
  v8.super_class = HDClinicalIngestionExtractionOperation;
  v5 = [(HDClinicalIngestionPerAccountOperation *)&v8 initWithTask:task account:account nextOperation:operation];
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

  profile = [(HDClinicalIngestionOperation *)self profile];
  database = [profile database];
  isProtectedDataAvailable = [database isProtectedDataAvailable];

  if (isProtectedDataAvailable)
  {
    task = [(HDClinicalIngestionOperation *)self task];
    healthRecordsServiceClient = [task healthRecordsServiceClient];

    v44 = 0;
    v9 = [healthRecordsServiceClient rulesVersionForFHIRDocumentExtractionWithError:&v44];
    v10 = v44;
    v11 = v10;
    if (v9)
    {
      v43 = 0;
      v12 = [(HDClinicalIngestionExtractionOperation *)self _extractionBatchWithRulesVersion:v9 error:&v43];
      v13 = v43;
      document = [v12 document];

      if (document)
      {
        highestRowID = [v12 highestRowID];

        if (highestRowID)
        {
          v35 = v11;
          document2 = [v12 document];
          resourceObjects = [document2 resourceObjects];
          v18 = [resourceObjects count];

          if (v18)
          {
            v19 = [HDExtractionRequest alloc];
            document3 = [v12 document];
            resourceObjects2 = [document3 resourceObjects];
            v22 = [v19 initWithResources:resourceObjects2];

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
            v39 = profile;
            v40 = v27;
            v28 = v27;
            v29 = v22;
            [healthRecordsServiceClient executeFHIRExtractionRequest:v29 completion:v36];
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

            highestRowID2 = [v12 highestRowID];
            v42 = 0;
            v34 = [(HDClinicalIngestionExtractionOperation *)self _updateAccountLastExtractedRowID:highestRowID2 extractionRulesVersion:v9 profile:profile error:&v42];
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
    healthRecordsServiceClient = +[NSError hk_protectedDataInaccessibilityError];
    [(HDClinicalIngestionExtractionOperation *)self _cancelWithError:healthRecordsServiceClient];
  }
}

- (id)_extractionBatchWithRulesVersion:(id)version error:(id *)error
{
  if (self->_document)
  {
    versionCopy = version;
    v6 = [[HDFHIRResourceExtractionBatch alloc] initWithDocument:self->_document rulesVersion:versionCopy];
  }

  else
  {
    versionCopy2 = version;
    batchSize = [(HDClinicalIngestionExtractionOperation *)self batchSize];
    if (batchSize)
    {
      batchSize2 = [(HDClinicalIngestionExtractionOperation *)self batchSize];
      integerValue = [batchSize2 integerValue];
    }

    else
    {
      integerValue = kHDSQLiteQueryNoLimit;
    }

    versionCopy = [(HDClinicalIngestionPerAccountOperation *)self account];
    identifier = [versionCopy identifier];
    profile = [(HDClinicalIngestionOperation *)self profile];
    v6 = [HDOriginalFHIRResourceEntity resourceExtractionBatchForAccountIdentifier:identifier extractionRulesVersion:versionCopy2 batchSize:integerValue profile:profile error:error];
  }

  return v6;
}

- (void)_didCompleteExtractionWithRequest:(id)request result:(id)result highestRowID:(id)d extractionRulesVersion:(id)version profile:(id)profile error:(id)error
{
  requestCopy = request;
  resultCopy = result;
  dCopy = d;
  versionCopy = version;
  profileCopy = profile;
  errorCopy = error;
  _HKInitializeLogging();
  v20 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_9D2D8(v20, self, requestCopy);
  }

  v21 = objc_retainBlock(self->_unitTest_didCompleteExtractionFromResource);
  v22 = v21;
  if (v21)
  {
    (*(v21 + 2))(v21);
  }

  if (resultCopy)
  {
    v54 = errorCopy;
    v55 = v22;
    v56 = profileCopy;
    v57 = versionCopy;
    v58 = dCopy;
    v59 = requestCopy;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v60 = resultCopy;
    allUnits = [resultCopy allUnits];
    v24 = [allUnits countByEnumeratingWithState:&v66 objects:v76 count:16];
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
            objc_enumerationMutation(allUnits);
          }

          v28 = *(*(&v66 + 1) + 8 * i);
          clinicalRecord = [(__CFString *)v28 clinicalRecord];
          if (clinicalRecord)
          {
            v30 = [(HDClinicalIngestionExtractionOperation *)self _lookupDisplayNameForExtractedItemUnit:v28];
            if (v30)
            {
              [clinicalRecord _setDisplayName:v30];
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
                selfCopy2 = v33;
                v72 = 2114;
                v73 = v28;
                _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%{public}@ did not receive a display name for item %{public}@", buf, 0x16u);
              }
            }
          }
        }

        v25 = [allUnits countByEnumeratingWithState:&v66 objects:v76 count:16];
      }

      while (v25);
    }

    v34 = objc_alloc_init(NSMutableArray);
    v35 = [(HDClinicalPostExtractionOperation *)[HDClinicalPostExtractionReferenceRangeStatusOperation alloc] initWithExtractionResult:v60];
    [v34 addObject:v35];
    requestCopy = v59;
    profileCopy = v56;
    versionCopy = v57;
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

        selfCopy2 = self;
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
        selfCopy2 = self;
        v72 = 2114;
        v73 = v44;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ finished running post extraction operation%{public}@", buf, 0x16u);
      }
    }

    resources = [v59 resources];
    -[HDClinicalIngestionExtractionOperation setCountOfExtractedResources:](self, "setCountOfExtractedResources:", [resources count]);

    v65 = v54;
    v46 = [(HDClinicalIngestionExtractionOperation *)self _processFHIRResourcesInExtractionResult:v60 error:&v65];
    errorCopy = v65;

    if (v46)
    {

      v64 = 0;
      v47 = [(HDClinicalIngestionExtractionOperation *)self _processMedicalRecordsInExtractionResult:v46 error:&v64];
      v48 = v64;
      errorCopy = v48;
      dCopy = v58;
      if (v47)
      {

        v63 = 0;
        v49 = [(HDClinicalIngestionExtractionOperation *)self _processClinicalRecordsInExtractionResult:v46 error:&v63];
        v50 = v63;
        errorCopy = v50;
        if (v49)
        {

          v62 = 0;
          v51 = [(HDClinicalIngestionExtractionOperation *)self _processMedicalDownloadableAttachmentsInExtractionResult:v46 error:&v62];
          v52 = v62;
          errorCopy = v52;
          if (v51)
          {

            v61 = 0;
            v53 = [(HDClinicalIngestionExtractionOperation *)self _updateAccountLastExtractedRowID:v58 extractionRulesVersion:v57 profile:v56 error:&v61];
            errorCopy = v61;
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
      dCopy = v58;
    }

    [(HDClinicalIngestionExtractionOperation *)self _cancelWithError:errorCopy];
LABEL_40:

    v22 = v55;
    goto LABEL_41;
  }

  [(HDClinicalIngestionExtractionOperation *)self _cancelWithError:errorCopy];
LABEL_41:
}

- (id)_lookupDisplayNameForExtractedItemUnit:(id)unit
{
  unitCopy = unit;
  medicalRecord = [unitCopy medicalRecord];
  v6 = medicalRecord;
  if (medicalRecord)
  {
    medicalRecordCodings = [medicalRecord medicalRecordCodings];
    v8 = [HKMedicalCodingCollection collectionWithCodings:medicalRecordCodings];

    v9 = [HKConceptSynthesizer bestDisplayNameForCodingCollection:v8];
    v10 = v9;
    if (v9)
    {
      fallbackDisplayString = v9;
    }

    else
    {
      fallbackDisplayString = [v6 fallbackDisplayString];
    }

    v16 = fallbackDisplayString;
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

- (id)_processFHIRResourcesInExtractionResult:(id)result error:(id *)error
{
  resultCopy = result;
  items = [resultCopy items];
  v7 = [items hk_map:&stru_106200];

  v42 = 0;
  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  profile = [(HDClinicalIngestionOperation *)self profile];
  currentSyncIdentityPersistentID = [profile currentSyncIdentityPersistentID];
  profile2 = [(HDClinicalIngestionOperation *)self profile];
  v41 = 0;
  v12 = [HDOriginalFHIRResourceEntity insertOrUpdateResourceObjects:v7 upsertedResourceObjectPairs:&v42 account:account syncProvenance:0 syncIdentity:currentSyncIdentityPersistentID profile:profile2 error:&v41 inaccessibilityHandler:0];
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
    v33 = resultCopy;
    obj = [resultCopy items];
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
          databaseResource = [v21 databaseResource];
          units = [v19 units];
          v25 = [v22 initWithOriginalFHIRResource:databaseResource units:units flags:{objc_msgSend(v19, "flags")}];

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
    resultCopy = v33;
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
      v47 = resultCopy;
      v48 = 2114;
      v49 = v13;
      _os_log_error_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert or update result %{public}@: %{public}@", buf, 0x20u);
    }

    v26 = 0;
  }

  return v26;
}

- (BOOL)_processClinicalRecordsInExtractionResult:(id)result error:(id *)error
{
  resultCopy = result;
  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  gateway = [account gateway];
  externalID = [gateway externalID];
  profile = [(HDClinicalIngestionOperation *)self profile];
  v11 = [HDClinicalRecordEntity processClinicalRecordsInExtractionResult:resultCopy clinicalExternalID:externalID profile:profile error:error];

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

- (BOOL)_processMedicalRecordsInExtractionResult:(id)result error:(id *)error
{
  resultCopy = result;
  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  identifier = [account identifier];
  profile = [(HDClinicalIngestionOperation *)self profile];
  v10 = [HDMedicalRecordEntity processMedicalRecordsInExtractionResult:resultCopy accountIdentifier:identifier profile:profile error:error];

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

- (BOOL)_updateAccountLastExtractedRowID:(id)d extractionRulesVersion:(id)version profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  versionCopy = version;
  dCopy = d;
  profile = [(HDClinicalIngestionOperation *)self profile];
  database = [profile database];

  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  identifier = [account identifier];

  LOBYTE(error) = [HDClinicalAccountEntity updateAccountLastExtractedRowID:dCopy rulesVersion:versionCopy identifier:identifier profile:profileCopy healthDatabase:database error:error];
  return error;
}

- (BOOL)_processMedicalDownloadableAttachmentsInExtractionResult:(id)result error:(id *)error
{
  resultCopy = result;
  account = [(HDClinicalIngestionPerAccountOperation *)self account];
  identifier = [account identifier];
  profile = [(HDClinicalIngestionOperation *)self profile];
  v10 = [HDMedicalDownloadableAttachmentEntity processMedicalDownloadableAttachmentsInExtractionResult:resultCopy accountIdentifier:identifier profile:profile error:error];

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

- (void)_cancelWithError:(id)error
{
  [(HDClinicalIngestionExtractionOperation *)self setExtractionError:error];

  [(HDClinicalIngestionExtractionOperation *)self cancel];
}

@end