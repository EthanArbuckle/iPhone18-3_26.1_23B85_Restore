@interface HDSignedClinicalDataManager
- (BOOL)deleteSignedClinicalDataRecord:(id)a3 error:(id *)a4;
- (BOOL)isReextractingSignedClinicalDataRecordWithSyncIdentifier:(id)a3;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDSignedClinicalDataManager)initWithProfileExtension:(id)a3;
- (id)_groupRecordsByAccount:(id)a3 error:(id *)a4;
- (id)_storeDataFromClinicalItem:(id)a3 existingAccountIdentifier:(id)a4 insertOriginalRecords:(BOOL)a5 accountEntityMap:(id)a6 numOriginalRecordsInserted:(unint64_t *)a7 numDuplicateRecords:(unint64_t *)a8 transaction:(id)a9 error:(id *)a10;
- (id)resultWithUpdatedSignedClinicalDataRecordsInParsingResult:(id)a3;
- (id)signedClinicalDataGroupBackingMedicalRecord:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)signedClinicalRecordBackingMedicalRecord:(id)a3 error:(id *)a4;
- (id)storeDataFromParsingResult:(id)a3 existingAccountIdentifier:(id)a4 insertOriginalRecords:(BOOL)a5 allRecordsWereDuplicates:(BOOL *)a6 error:(id *)a7;
- (void)_scheduleExtractionWithReason:(id)a3 ignoreExtractionVersion:(BOOL)a4;
- (void)_serialQueue_didReceiveOriginalSyncEntities;
- (void)_serialQueue_performProtectedDataAvailableChecks;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)didReceiveOriginalSignedClinicalDataRecordSyncEntities;
- (void)ontologyShardImporter:(id)a3 didImportEntry:(id)a4;
- (void)parseSignedClinicalData:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)profileDidBecomeReady:(id)a3;
- (void)reextractOriginalSignedClinicalDataRecords:(id)a3 completion:(id)a4;
- (void)reextractSignedClinicalDataRecordsForAccountWithIdentifier:(id)a3 completion:(id)a4;
- (void)reverifySignatureForRecord:(id)a3 completion:(id)a4;
- (void)storeSignedClinicalData:(id)a3 completion:(id)a4;
- (void)triggerDownloadIssuerRegistryWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)triggerDownloadPublicKeysWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)updateIssuerTitlesUsingRegistry:(id)a3;
@end

@implementation HDSignedClinicalDataManager

- (void)_serialQueue_performProtectedDataAvailableChecks
{
  dispatch_assert_queue_V2(self->_serialQueue);
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A4A1C(v3);
  }

  if (self->_scheduleExtractionOnProtectedDataBecomingAvailable)
  {
    self->_scheduleExtractionOnProtectedDataBecomingAvailable = 0;
    v4 = @"protected data available after extraction was requested";
  }

  else
  {
    if (self->_didScheduleFirstExtractionAfterProfileReady)
    {
      return;
    }

    v4 = @"protected data available after profile ready";
  }

  self->_didScheduleFirstExtractionAfterProfileReady = 1;
  [(HDSignedClinicalDataManager *)self _scheduleExtractionWithReason:v4];
}

- (HDSignedClinicalDataManager)initWithProfileExtension:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HDSignedClinicalDataManager;
  v5 = [(HDSignedClinicalDataManager *)&v15 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v6;

    v5->_ivarLock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(NSMutableSet);
    originalSyncIdentifiersBeingStored = v5->_originalSyncIdentifiersBeingStored;
    v5->_originalSyncIdentifiersBeingStored = v8;

    objc_storeWeak(&v5->_profileExtension, v4);
    v10 = [v4 createHealthRecordsIngestionServiceClient];
    XPCServiceClient = v5->_XPCServiceClient;
    v5->_XPCServiceClient = v10;

    WeakRetained = objc_loadWeakRetained(&v5->_profileExtension);
    v13 = [WeakRetained profile];
    [v13 registerProfileReadyObserver:v5 queue:v5->_serialQueue];
  }

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v4 = [WeakRetained profile];
  v5 = [v4 daemon];
  v6 = [v5 ontologyUpdateCoordinator];
  v7 = [v6 importer];
  [v7 removeOntologyShardImporterObserver:self];

  v8.receiver = self;
  v8.super_class = HDSignedClinicalDataManager;
  [(HDSignedClinicalDataManager *)&v8 dealloc];
}

- (void)parseSignedClinicalData:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  _HKInitializeLogging();
  v10 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A38EC(v10, self);
  }

  XPCServiceClient = self->_XPCServiceClient;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_57334;
  v13[3] = &unk_1079F8;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [(HDHealthRecordsIngestionServiceClient *)XPCServiceClient parseSignedClinicalData:v8 options:a4 completion:v13];
}

- (void)storeSignedClinicalData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A3ADC(v8, self);
  }

  XPCServiceClient = self->_XPCServiceClient;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_5756C;
  v11[3] = &unk_1079F8;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [(HDHealthRecordsIngestionServiceClient *)XPCServiceClient parseSignedClinicalData:v6 options:2 completion:v11];
}

- (void)reextractOriginalSignedClinicalDataRecords:(id)a3 completion:(id)a4
{
  v42 = a3;
  v43 = a4;
  v44 = [v42 hk_filter:&stru_107A38];
  _HKInitializeLogging();
  v6 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138543874;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = [v44 count];
    *&buf[22] = 2048;
    v66 = [v42 count];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: reextractOriginalSignedClinicalDataRecords is about to process %lu active out of %lu total records", buf, 0x20u);
  }

  if ([v44 count])
  {
    v55 = 0;
    v41 = [(HDSignedClinicalDataManager *)self _groupRecordsByAccount:v44 error:&v55];
    v40 = v55;
    if (v41)
    {
      group = dispatch_group_create();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2810000000;
      v66 = &unk_DF55D;
      v67 = 0;
      v45 = objc_alloc_init(NSMutableArray);
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v10 = v41;
      v11 = [v10 countByEnumeratingWithState:&v51 objects:v64 count:16];
      if (v11)
      {
        v12 = *v52;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v52 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v51 + 1) + 8 * i);
            v15 = [v10 objectForKeyedSubscript:v14];
            dispatch_group_enter(group);
            _HKInitializeLogging();
            v16 = HKLogHealthRecords;
            if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
            {
              v17 = v16;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v19 = self;
                v20 = objc_opt_class();
                v21 = NSStringFromClass(v20);
                XPCServiceClient = v19->_XPCServiceClient;
                *v58 = 138543874;
                v59 = v21;
                v60 = 2114;
                v61 = XPCServiceClient;
                v62 = 2114;
                v63 = v14;
                _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%{public}@: reextractOriginalSignedClinicalDataRecords calling out to XPC client %{public}@ for account %{public}@", v58, 0x20u);

                self = v19;
              }
            }

            v18 = self->_XPCServiceClient;
            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_57EBC;
            v47[3] = &unk_107A60;
            v47[4] = self;
            v47[5] = v14;
            v50 = buf;
            v48 = v45;
            v49 = group;
            [(HDHealthRecordsIngestionServiceClient *)v18 processOriginalSignedClinicalDataRecords:v15 options:0 completion:v47];
          }

          v11 = [v10 countByEnumeratingWithState:&v51 objects:v64 count:16];
        }

        while (v11);
      }

      dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
      os_unfair_lock_lock((*&buf[8] + 32));
      v23 = [v45 copy];
      os_unfair_lock_unlock((*&buf[8] + 32));
      if ([v23 count])
      {
        v24 = [v23 firstObject];
        if ([v23 count] >= 2)
        {
          v56 = NSMultipleUnderlyingErrorsKey;
          v57 = v23;
          v25 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v26 = [NSError errorWithDomain:HKErrorDomain code:100 userInfo:v25];

          v24 = v26;
        }

        _HKInitializeLogging();
        v27 = HKLogHealthRecords;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          HKSensitiveLogItem();
          objc_claimAutoreleasedReturnValue();
          sub_A3D68();
        }

        [(HDSignedClinicalDataManager *)self didCompleteReExtractionWithCompletion:v43 numExtracted:0 errorReturned:v24];
      }

      else
      {
        _HKInitializeLogging();
        v35 = HKLogHealthRecords;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = [v44 count];
          v39 = [v10 count];
          *v58 = 138543874;
          v59 = v37;
          v60 = 2048;
          v61 = v38;
          v62 = 2048;
          v63 = v39;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: reextractOriginalSignedClinicalDataRecords successfully processed %lu records for %lu accounts", v58, 0x20u);
        }

        v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 count]);
        [(HDSignedClinicalDataManager *)self didCompleteReExtractionWithCompletion:v43 numExtracted:v24 errorReturned:0];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      _HKInitializeLogging();
      v34 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A3DD0(v34);
      }

      [(HDSignedClinicalDataManager *)self didCompleteReExtractionWithCompletion:v43 numExtracted:0 errorReturned:v40];
    }
  }

  else
  {
    _HKInitializeLogging();
    v30 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138543362;
      *&buf[4] = v33;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: reextractOriginalSignedClinicalDataRecords got 0 records, I'm done", buf, 0xCu);
    }

    [(HDSignedClinicalDataManager *)self didCompleteReExtractionWithCompletion:v43 numExtracted:&off_1102B8 errorReturned:0];
  }
}

- (BOOL)isReextractingSignedClinicalDataRecordWithSyncIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_A401C();
  }

  os_unfair_lock_lock(&self->_ivarLock);
  v5 = [(NSMutableSet *)self->_originalSyncIdentifiersBeingStored containsObject:v4];
  os_unfair_lock_unlock(&self->_ivarLock);

  return v5;
}

- (id)signedClinicalRecordBackingMedicalRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v8 = [WeakRetained profile];

  v9 = [HDSignedClinicalDataRecordEntity signedClinicalRecordBackingMedicalRecord:v6 profile:v8 error:a4];

  return v9;
}

- (void)didReceiveOriginalSignedClinicalDataRecordSyncEntities
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_58320;
  block[3] = &unk_107A88;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (id)resultWithUpdatedSignedClinicalDataRecordsInParsingResult:(id)a3
{
  v4 = a3;
  v5 = [(HDSignedClinicalDataManager *)self profileExtension];
  v6 = [v5 createSignedClinicalDataRegistry];

  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [v4 items];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_5847C;
  v19 = &unk_107AB0;
  v20 = v7;
  v21 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 hk_map:&v16];

  v12 = [HKSignedClinicalDataParsingResult alloc];
  v13 = [v4 options];

  v14 = [v12 initWithItems:v11 options:v13];

  return v14;
}

- (id)storeDataFromParsingResult:(id)a3 existingAccountIdentifier:(id)a4 insertOriginalRecords:(BOOL)a5 allRecordsWereDuplicates:(BOOL *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [v12 items];
  v15 = [v14 count];

  if (v15)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
    v39 = [WeakRetained profile];

    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v17 = objc_alloc_init(NSMutableArray);
    v18 = [v39 database];
    v48 = 0;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_58A54;
    v40[3] = &unk_107AD8;
    v19 = v12;
    v41 = v19;
    v42 = self;
    v47 = a5;
    v43 = v13;
    v45 = &v53;
    v46 = &v49;
    v20 = v17;
    v44 = v20;
    LOBYTE(v17) = [HDOriginalSignedClinicalDataRecordEntity performWriteTransactionWithHealthDatabase:v18 error:&v48 block:v40 inaccessibilityHandler:&stru_107AF8];
    v21 = v48;

    if (v17)
    {
      _HKInitializeLogging();
      v22 = HKLogHealthRecords;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromSelector(a2);
        v26 = v54[3];
        v27 = v50[3];
        *buf = 138544130;
        v58 = v24;
        v59 = 2114;
        v60 = v25;
        v61 = 2048;
        v62 = v26;
        v63 = 2048;
        v64 = v27;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ succeeded, %lu new records inserted, %lu records were already in the database (duplicates)", buf, 0x2Au);
      }

      if (a6)
      {
        v28 = v50[3];
        if (v28)
        {
          LOBYTE(v28) = v54[3] == 0;
        }

        *a6 = v28;
      }

      v29 = [v19 copyWithItems:{v20, a6}];
    }

    else
    {
      v34 = v21;
      v35 = v34;
      if (v34)
      {
        if (a7)
        {
          v36 = v34;
          *a7 = v35;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v29 = 0;
    }

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v53, 8);
  }

  else
  {
    _HKInitializeLogging();
    v30 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138543362;
      v58 = v33;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: storeDataFromParsingResult got 0 records, I'm done", buf, 0xCu);
    }

    v29 = v12;
  }

  return v29;
}

- (id)_storeDataFromClinicalItem:(id)a3 existingAccountIdentifier:(id)a4 insertOriginalRecords:(BOOL)a5 accountEntityMap:(id)a6 numOriginalRecordsInserted:(unint64_t *)a7 numDuplicateRecords:(unint64_t *)a8 transaction:(id)a9 error:(id *)a10
{
  v13 = a5;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a9;
  v143 = a7;
  if (a7)
  {
    if (a8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_A4094();
    if (a8)
    {
      goto LABEL_3;
    }
  }

  sub_A410C();
LABEL_3:
  v142 = a8;
  v154 = [v19 databaseForEntityClass:objc_opt_class()];
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v156 = [WeakRetained profile];

  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v22 = [v16 originalRecord];
    v21 = [v22 issuerIdentifier];
  }

  v153 = v19;
  v23 = [v16 originalRecord];
  v155 = [v23 syncIdentifier];

  _HKInitializeLogging();
  v24 = HKLogHealthRecords;
  v146 = v13;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(a2);
    *buf = 138543874;
    v170 = v27;
    v171 = 2114;
    v172 = v28;
    v173 = 2114;
    v174 = v155;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ storing parsing result for original record %{public}@", buf, 0x20u);
  }

  v151 = v21;
  v29 = [v18 objectForKeyedSubscript:v21];
  v150 = v18;
  if (!v29)
  {
    if (v17)
    {
      v168 = 0;
      v29 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:v17 database:v154 error:&v168];
      v30 = v168;
      if (v29)
      {
LABEL_11:
        [v18 setObject:v29 forKeyedSubscript:v151];

        goto LABEL_12;
      }
    }

    else
    {
      v93 = objc_loadWeakRetained(&self->_profileExtension);
      v94 = [v93 accountManager];
      v95 = [v16 originalRecord];
      v167 = 0;
      v29 = [v94 accountEntityForRecord:v95 createIfNecessary:1 error:&v167];
      v30 = v167;

      v18 = v150;
      if (v29)
      {
        goto LABEL_11;
      }
    }

    _HKInitializeLogging();
    v96 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A4238(v96);
    }

    v44 = v30;
    if (v44)
    {
      if (a10)
      {
        v97 = v44;
        v85 = 0;
        *a10 = v44;
LABEL_78:
        v29 = v44;
        goto LABEL_84;
      }

      _HKLogDroppedError();
    }

    v85 = 0;
    goto LABEL_78;
  }

LABEL_12:
  v31 = [v156 syncIdentityManager];
  v32 = [v31 currentSyncIdentity];
  v33 = [v32 identity];

  _HKInitializeLogging();
  v34 = HKLogHealthRecords;
  v35 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
  v145 = v33;
  if (!v13)
  {
    if (v35)
    {
      v45 = v34;
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      *buf = 138543874;
      v170 = v47;
      v171 = 2114;
      v172 = v48;
      v173 = 2114;
      v174 = v155;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ retrieving original record %{public}@ by sync identifier", buf, 0x20u);
    }

    v165 = 0;
    v43 = [HDOriginalSignedClinicalDataRecordEntity entityWithSyncIdentifier:v155 database:v154 error:&v165];
    v44 = v165;
    v164 = 0;
    v49 = [v43 updateUniquenessChecksumIfNecessaryWithItem:v16 database:v154 error:&v164];
    v42 = v164;
    if (v49 == &dword_0 + 1)
    {
      _HKInitializeLogging();
      v55 = HKLogHealthRecords;
      if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v54 = v55;
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      NSStringFromSelector(a2);
      v58 = v135 = v17;
      v59 = [v43 persistentID];
      *buf = 138543874;
      v170 = v57;
      v171 = 2114;
      v172 = v58;
      v173 = 2048;
      v174 = v59;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ updated uniqueness checksum during re-extraction, original SCD record ROWID %llu", buf, 0x20u);

      v17 = v135;
    }

    else
    {
      if (v49)
      {
        goto LABEL_25;
      }

      _HKInitializeLogging();
      v50 = HKLogHealthRecords;
      if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      loga = v50;
      v51 = objc_opt_class();
      v134 = NSStringFromClass(v51);
      v133 = NSStringFromSelector(a2);
      v52 = [v42 localizedDescription];
      *buf = 138543874;
      v170 = v134;
      v171 = 2114;
      v172 = v133;
      v173 = 2114;
      v174 = v52;
      v53 = v52;
      v54 = loga;
      _os_log_error_impl(&dword_0, loga, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to update uniqueness checksum, ignoring and continuing. Error: %{public}@", buf, 0x20u);
    }

    goto LABEL_25;
  }

  if (v35)
  {
    v36 = v34;
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = NSStringFromSelector(a2);
    *buf = 138543874;
    v170 = v38;
    v171 = 2114;
    v172 = v39;
    v173 = 2114;
    v174 = v155;
    _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ inserting original record %{public}@", buf, 0x20u);
  }

  v40 = [v16 originalRecord];
  v41 = [v16 uniquenessChecksum];
  v42 = [v40 asNewCodableRecordWithUniquenessChecksum:v41 syncIdentity:v33];

  v166 = 0;
  v43 = +[HDOriginalSignedClinicalDataRecordEntity insertCodableRecord:shouldReplace:accountPersistentID:syncProvenance:profile:transaction:error:](HDOriginalSignedClinicalDataRecordEntity, "insertCodableRecord:shouldReplace:accountPersistentID:syncProvenance:profile:transaction:error:", v42, 0, [v29 persistentID], 0, v156, v153, &v166);
  v44 = v166;
LABEL_25:

  if (v43)
  {
    v160 = v44;
    v60 = [v29 accountInDatabase:v154 error:&v160];
    v61 = v160;

    if (v60)
    {
      v158[1] = _NSConcreteStackBlock;
      v158[2] = 3221225472;
      v158[3] = sub_59E18;
      v158[4] = &unk_106B68;
      v158[5] = self;
      v62 = v155;
      v159 = v62;
      HKWithUnfairLock();
      v158[0] = 0;
      log = v43;
      v63 = [v43 storeSignedClinicalDataItem:v16 account:v60 profile:v156 error:v158];
      v64 = v158[0];
      v65 = v62;
      v157 = v65;
      HKWithUnfairLock();
      if (v63)
      {
        if (v146)
        {
          v147 = v64;
          v136 = v17;
          _HKInitializeLogging();
          v66 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
          {
            v67 = v66;
            v68 = objc_opt_class();
            v69 = NSStringFromClass(v68);
            v70 = NSStringFromSelector(a2);
            *buf = 138544130;
            v170 = v69;
            v171 = 2114;
            v172 = v70;
            v173 = 2114;
            v174 = @"com.apple.health.records.added-verifiable-record";
            v175 = 2114;
            v176 = v65;
            _os_log_impl(&dword_0, v67, OS_LOG_TYPE_INFO, "%{public}@  %{public}@ donating %{public}@ event to Biome for record with sync identifier %{public}@", buf, 0x2Au);
          }

          v71 = [v16 originalRecord];
          [v71 sourceType];
          v72 = NSStringForSignedClinicalDataSourceType();
          [HDClinicalBiomeSignalsManager lazilySendEvent:@"com.apple.health.records.added-verifiable-record" context:v72];

          v17 = v136;
          v64 = v147;
        }

        else
        {
          XPCServiceClient = self->_XPCServiceClient;
          v71 = [v16 mainRecord];
          [(HDHealthRecordsIngestionServiceClient *)XPCServiceClient didUpdateSignedClinicalDataRecord:v71];
        }

        ++*v143;
        _HKInitializeLogging();
        v99 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v100 = v99;
          v101 = objc_opt_class();
          v102 = NSStringFromClass(v101);
          NSStringFromSelector(a2);
          v103 = v64;
          v105 = v104 = v17;
          *buf = 138543874;
          v170 = v102;
          v171 = 2114;
          v172 = v105;
          v173 = 2114;
          v174 = v65;
          _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "%{public}@  %{public}@ did store parsing result for original record %{public}@", buf, 0x20u);

          v17 = v104;
          v64 = v103;
        }

        v85 = v16;
      }

      else
      {
        _HKInitializeLogging();
        v88 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          v118 = v88;
          v119 = objc_opt_class();
          v120 = NSStringFromClass(v119);
          v121 = NSStringFromSelector(a2);
          HKSensitiveLogItem();
          v122 = v64;
          v124 = v123 = v17;
          *buf = 138543874;
          v170 = v120;
          v171 = 2114;
          v172 = v121;
          v173 = 2114;
          v174 = v124;
          _os_log_error_impl(&dword_0, v118, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to insert signed clinical data records with error: %{public}@", buf, 0x20u);

          v17 = v123;
          v64 = v122;
        }

        v89 = v64;
        v90 = v89;
        if (v89)
        {
          if (a10)
          {
            v91 = v89;
            *a10 = v90;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v85 = 0;
      }

      v43 = log;

      v44 = v61;
    }

    else
    {
      _HKInitializeLogging();
      v86 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A4184(v86);
      }

      v44 = v61;
      if (v44)
      {
        if (a10)
        {
          v87 = v44;
          *a10 = v44;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v85 = 0;
    }

    goto LABEL_83;
  }

  v73 = [(__CFString *)v44 hk_isHealthKitErrorWithCode:115];
  _HKInitializeLogging();
  v74 = HKLogHealthRecords;
  if (v73)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v75 = v74;
      v76 = objc_opt_class();
      v77 = NSStringFromClass(v76);
      v78 = NSStringFromSelector(a2);
      [v16 uniquenessChecksum];
      v79 = v137 = v17;
      v80 = [v79 hk_hexString];
      v81 = [(__CFString *)v44 localizedDescription];
      *buf = 138544130;
      v170 = v77;
      v171 = 2114;
      v172 = v78;
      v173 = 2114;
      v174 = v80;
      v175 = 2114;
      v176 = v81;
      _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ did not insert original SCD record with checksum %{public}@ because it's already there: %{public}@", buf, 0x2Au);

      v17 = v137;
    }

    ++*v142;
    v82 = [v16 uniquenessChecksum];
    v163 = 0;
    v83 = [HDSignedClinicalDataRecordEntity signedClinicalDataRecordBackedByRecordWithUniquenessChecksum:v82 account:v29 database:v154 profile:v156 error:&v163];
    v60 = v163;

    if (v83)
    {
      v84 = [v16 originalRecord];
      v85 = [v16 copyWithOriginalRecord:v84 mainRecord:v83];
      v43 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v106 = HKLogHealthRecords;
      v43 = 0;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v149 = v106;
        v129 = objc_opt_class();
        v144 = NSStringFromClass(v129);
        v130 = NSStringFromSelector(a2);
        [v16 uniquenessChecksum];
        v131 = v139 = v17;
        v132 = [v131 hk_hexString];
        *buf = 138544130;
        v170 = v144;
        v171 = 2114;
        v172 = v130;
        v173 = 2114;
        v174 = v132;
        v175 = 2114;
        v176 = v60;
        _os_log_error_impl(&dword_0, v149, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to retrieve HKSignedClinicalDataRecord given its uniqueness checksum (%{public}@) with error: %{public}@", buf, 0x2Au);

        v17 = v139;
        v43 = 0;
      }

      v148 = [v29 UUIDForProperty:HDClinicalAccountEntityPropertyIdentifier database:v154];
      _HKInitializeLogging();
      v107 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v108 = v107;
        v109 = objc_opt_class();
        NSStringFromClass(v109);
        v110 = v138 = v17;
        v111 = NSStringFromSelector(a2);
        v112 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v29 persistentID]);
        *buf = 138543874;
        v170 = v110;
        v171 = 2114;
        v172 = v111;
        v173 = 2114;
        v174 = v112;
        _os_log_impl(&dword_0, v108, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ triggering SCD re-extraction for account entity %{public}@ and returning in error", buf, 0x20u);

        v43 = 0;
        v17 = v138;
      }

      v113 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_59E00;
      block[3] = &unk_106B68;
      block[4] = self;
      v84 = v148;
      v162 = v84;
      dispatch_async(v113, block);

      v114 = v60;
      v115 = v114;
      if (v114)
      {
        if (a10)
        {
          v116 = v114;
          *a10 = v115;
        }

        else
        {
          _HKLogDroppedError();
        }

        v43 = 0;
      }

      v85 = 0;
    }

    goto LABEL_83;
  }

  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
  {
    if (v13)
    {
      v125 = @"insert";
    }

    else
    {
      v125 = @"find";
    }

    v126 = v74;
    v127 = [v16 uniquenessChecksum];
    v128 = [v127 hk_hexString];
    *buf = 138544130;
    v170 = v125;
    v171 = 2114;
    v172 = v155;
    v173 = 2114;
    v174 = v128;
    v175 = 2114;
    v176 = v44;
    _os_log_fault_impl(&dword_0, v126, OS_LOG_TYPE_FAULT, "HDSignedClinicalDataManager._storeDataFromClinicalItem failed to %{public}@ original signed clinical data record with sync identifier %{public}@ and checksum %{public}@, error: %{public}@", buf, 0x2Au);
  }

  v60 = v44;
  if (!v60)
  {
    goto LABEL_74;
  }

  if (!a10)
  {
    _HKLogDroppedError();
LABEL_74:
    v85 = 0;
    goto LABEL_75;
  }

  v92 = v60;
  v85 = 0;
  *a10 = v60;
LABEL_75:
  v44 = v60;
  v43 = 0;
LABEL_83:

LABEL_84:

  return v85;
}

- (id)signedClinicalDataGroupBackingMedicalRecord:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v11 = [WeakRetained profile];

  if ((a4 & 1) == 0)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_4;
  }

  v106 = 0;
  v12 = [HDSignedClinicalDataRecordEntity signedClinicalRecordBackingMedicalRecord:v9 profile:v11 error:&v106];
  v13 = v106;
  if (!v12)
  {
    _HKInitializeLogging();
    v21 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v54 = v21;
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = NSStringFromSelector(a2);
      v58 = HKSensitiveLogItem();
      *buf = 138543874;
      v108 = v56;
      v109 = 2114;
      v110 = v57;
      v111 = 2114;
      v112 = v58;
      _os_log_error_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to fetch main record backing medical record with error: %{public}@", buf, 0x20u);
    }

    v17 = v13;
    if (v17)
    {
      if (a5)
      {
        v22 = v17;
        v23 = 0;
        *a5 = v17;
LABEL_55:
        v13 = v17;
        goto LABEL_84;
      }

      _HKLogDroppedError();
    }

    v23 = 0;
    goto LABEL_55;
  }

LABEL_4:
  if ((a4 & 2) != 0)
  {
    aSelector = a2;
    v105 = v13;
    v17 = [HDOriginalSignedClinicalDataRecordEntity existingEntityBackingMedicalRecord:v9 profile:v11 error:&v105];
    v18 = v105;

    if (!v17)
    {
      _HKInitializeLogging();
      v24 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v59 = v24;
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        v62 = NSStringFromSelector(aSelector);
        v63 = HKSensitiveLogItem();
        *buf = 138543874;
        v108 = v61;
        v109 = 2114;
        v110 = v62;
        v111 = 2114;
        v112 = v63;
        _os_log_error_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to fetch original record entity backing medical record with error: %{public}@", buf, 0x20u);
      }

      v25 = v18;
      goto LABEL_58;
    }

    v104 = v18;
    v19 = [v17 existingDerivedMedicalRecordsOnProfile:v11 excludeMainRecord:1 error:&v104];
    v13 = v104;

    if (!v19)
    {
      _HKInitializeLogging();
      v26 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v64 = v26;
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        v67 = NSStringFromSelector(aSelector);
        v68 = HKSensitiveLogItem();
        *buf = 138543874;
        v108 = v66;
        v109 = 2114;
        v110 = v67;
        v111 = 2114;
        v112 = v68;
        _os_log_error_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to fetch medical records backed by medical record with error: %{public}@", buf, 0x20u);
      }

      v13 = v13;
      if (v13)
      {
        if (a5)
        {
          v27 = v13;
          *a5 = v13;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_82;
    }

    v15 = v19;
    v96 = a5;
    if ((a4 & 4) == 0)
    {
      v14 = 0;
LABEL_31:
      if ((a4 & 8) == 0)
      {
        v16 = 0;
        goto LABEL_48;
      }

      v20 = v13;
      goto LABEL_34;
    }

    v20 = v13;
LABEL_30:
    v102 = v20;
    v14 = [v17 existingDerivedClinicalRecordsOnProfile:v11 error:&v102];
    v13 = v102;

    if (v14)
    {
      goto LABEL_31;
    }

    _HKInitializeLogging();
    v28 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v69 = v28;
      v70 = objc_opt_class();
      NSStringFromClass(v70);
      v72 = v71 = v15;
      v73 = NSStringFromSelector(aSelector);
      v74 = HKSensitiveLogItem();
      *buf = 138543874;
      v108 = v72;
      v109 = 2114;
      v110 = v73;
      v111 = 2114;
      v112 = v74;
      _os_log_error_impl(&dword_0, v69, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to fetch clinical records backed by medical record with error: %{public}@", buf, 0x20u);

      v15 = v71;
    }

    v13 = v13;
    if (v13)
    {
      if (v96)
      {
        v29 = v13;
        *v96 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_82:
LABEL_83:
    v23 = 0;
    goto LABEL_84;
  }

  if ((a4 & 4) == 0)
  {
    if ((a4 & 8) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
LABEL_48:
      v23 = [[HKSignedClinicalDataGroup alloc] initWithOptions:a4 mainRecord:v12 medicalRecords:v15 clinicalRecords:v14 QRRepresentation:v16];

      goto LABEL_84;
    }

    v101 = v13;
    v17 = [HDOriginalSignedClinicalDataRecordEntity existingEntityBackingMedicalRecord:v9 profile:v11 error:&v101];
    v20 = v101;

    if (v17)
    {
      v96 = a5;
      aSelector = a2;
      v15 = 0;
      v14 = 0;
LABEL_34:
      v94 = v9;
      if (v12)
      {
        v93 = v15;
        v95 = v12;
        goto LABEL_45;
      }

      v100 = v20;
      v36 = [v17 signedClinicalDataRecordWithProfile:v11 error:&v100];
      v37 = v100;

      v95 = v36;
      if (v36)
      {
        v93 = v15;
        v20 = v37;
LABEL_45:
        v99 = v20;
        v38 = [v17 rawContentOnProfile:v11 error:&v99];
        v39 = v99;

        v40 = v38;
        if (v38)
        {
          v92 = v14;
          v98 = v39;
          +[HKSignedClinicalDataQRRepresentation representationForRawContent:sourceType:error:](HKSignedClinicalDataQRRepresentation, "representationForRawContent:sourceType:error:", v38, [v95 sourceType], &v98);
          v16 = v41 = v38;
          v13 = v98;

          if (v16)
          {

            v15 = v93;
            v9 = v94;
            v14 = v92;
            goto LABEL_48;
          }

          v40 = v41;
          _HKInitializeLogging();
          v47 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v81 = v47;
            v82 = objc_opt_class();
            v83 = NSStringFromClass(v82);
            v84 = NSStringFromSelector(aSelector);
            v85 = HKSensitiveLogItem();
            *buf = 138543874;
            v108 = v83;
            v109 = 2114;
            v110 = v84;
            v111 = 2114;
            v112 = v85;
            _os_log_error_impl(&dword_0, v81, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to create QR code representation from JWS data with error: %{public}@", buf, 0x20u);
          }

          v13 = v13;
          v14 = v92;
          v44 = v93;
          if (v13)
          {
            v43 = v96;
LABEL_67:
            v48 = v95;
            if (v43)
            {
              v49 = v13;
              *v43 = v13;
            }

            else
            {
              _HKLogDroppedError();
            }

            goto LABEL_79;
          }
        }

        else
        {
          _HKInitializeLogging();
          v42 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v75 = v42;
            v76 = objc_opt_class();
            v77 = NSStringFromClass(v76);
            v78 = NSStringFromSelector(aSelector);
            v79 = HKSensitiveLogItem();
            *buf = 138543874;
            v108 = v77;
            v109 = 2114;
            v110 = v78;
            v111 = 2114;
            v112 = v79;
            _os_log_error_impl(&dword_0, v75, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to fetch raw content with error: %{public}@", buf, 0x20u);

            v40 = 0;
          }

          v13 = v39;
          if (v13)
          {
            v43 = v96;
            v44 = v93;
            goto LABEL_67;
          }

          v44 = v93;
        }

        v48 = v95;
LABEL_79:

        v23 = 0;
        v9 = v94;
        goto LABEL_84;
      }

      _HKInitializeLogging();
      v50 = HKLogHealthRecords;
      v9 = v94;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        v86 = v50;
        v87 = objc_opt_class();
        v88 = NSStringFromClass(v87);
        NSStringFromSelector(aSelector);
        v90 = v89 = v15;
        v91 = HKSensitiveLogItem();
        *buf = 138543874;
        v108 = v88;
        v109 = 2114;
        v110 = v90;
        v111 = 2114;
        v112 = v91;
        _os_log_error_impl(&dword_0, v86, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to fetch SCD record backing medical record with error: %{public}@", buf, 0x20u);

        v15 = v89;
      }

      v51 = v37;
      v13 = v51;
      if (v51)
      {
        if (v96)
        {
          v52 = v51;
          *v96 = v13;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_83;
    }

    _HKInitializeLogging();
    v45 = HKLogHealthRecords;
    if (!os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    v31 = v45;
    v80 = objc_opt_class();
    v33 = NSStringFromClass(v80);
    v34 = NSStringFromSelector(a2);
    v35 = HKSensitiveLogItem();
    *buf = 138543874;
    v108 = v33;
    v109 = 2114;
    v110 = v34;
    v111 = 2114;
    v112 = v35;
    goto LABEL_90;
  }

  v103 = v13;
  v17 = [HDOriginalSignedClinicalDataRecordEntity existingEntityBackingMedicalRecord:v9 profile:v11 error:&v103];
  v20 = v103;

  if (v17)
  {
    v96 = a5;
    aSelector = a2;
    v15 = 0;
    goto LABEL_30;
  }

  _HKInitializeLogging();
  v30 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    v31 = v30;
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = NSStringFromSelector(a2);
    v35 = HKSensitiveLogItem();
    *buf = 138543874;
    v108 = v33;
    v109 = 2114;
    v110 = v34;
    v111 = 2114;
    v112 = v35;
LABEL_90:
    _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to fetch original record entity backing medical record with error: %{public}@", buf, 0x20u);
  }

LABEL_57:
  v25 = v20;
LABEL_58:
  v13 = v25;
  if (v25)
  {
    if (a5)
    {
      v46 = v25;
      *a5 = v13;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v23 = 0;
  v17 = v12;
LABEL_84:

  return v23;
}

- (BOOL)deleteSignedClinicalDataRecord:(id)a3 error:(id *)a4
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v9 = [WeakRetained profile];

  v10 = [v7 originIdentifier];
  v11 = [v10 signedClinicalDataRecordIdentifier];

  if (v11)
  {
    v28 = 0;
    v12 = [HDOriginalSignedClinicalDataRecordEntity existingEntityWithSyncIdentifier:v11 profile:v9 error:&v28];
    v13 = v28;
    if (v12)
    {
      v27 = 0;
      v14 = [v12 deleteOriginalAndDerivedRecordsOnProfile:v9 error:&v27];
      v15 = v27;
      v16 = v15;
      if ((v14 & 1) == 0)
      {
        v16 = v15;
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

      goto LABEL_19;
    }

    _HKInitializeLogging();
    v19 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v22 = v19;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      v26 = HKSensitiveLogItem();
      *buf = 138543874;
      v30 = v24;
      v31 = 2114;
      v32 = v25;
      v33 = 2114;
      v34 = v26;
      _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to retrieve original signed clinical data record: %{public}@", buf, 0x20u);
    }

    v16 = v13;
    if (v16)
    {
      if (a4)
      {
        v20 = v16;
        v14 = 0;
        *a4 = v16;
LABEL_19:

        goto LABEL_20;
      }

      _HKLogDroppedError();
    }

    v14 = 0;
    goto LABEL_19;
  }

  _HKInitializeLogging();
  v18 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
  {
    sub_A42C8(v18);
  }

  v13 = HKSensitiveLogItem();
  [NSError hk_assignError:a4 code:3 format:@"cannot delete record %@ because it doesn't have a sync identifier", v13];
  v14 = 0;
LABEL_20:

  return v14;
}

- (void)reverifySignatureForRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 signatureStatus] == &dword_0 + 2)
  {
    v7[2](v7, 1, 2, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
    v9 = [WeakRetained profile];

    v28 = 0;
    v10 = [HDOriginalSignedClinicalDataRecordEntity codableOriginalRecordForHKRecord:v6 profile:v9 error:&v28];
    v11 = v28;
    _HKInitializeLogging();
    v12 = HKLogHealthRecords;
    if (v10)
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        XPCServiceClient = self->_XPCServiceClient;
        *buf = 138543618;
        v30 = v15;
        v31 = 2114;
        v32 = XPCServiceClient;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: reverifySignatureForRecord calling out to XPC client %{public}@", buf, 0x16u);
      }

      v17 = [v10 asOriginalSignedClinicalDataRecord];
      v18 = self->_XPCServiceClient;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_5AF88;
      v23[3] = &unk_107B60;
      v23[4] = self;
      v27 = v7;
      v24 = v6;
      v25 = v10;
      v26 = v9;
      [(HDHealthRecordsIngestionServiceClient *)v18 reverifySignatureForRecord:v17 options:0 completion:v23];
    }

    else
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        v19 = v12;
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = HKSensitiveLogItem();
        *buf = 138543874;
        v30 = v21;
        v31 = 2114;
        v32 = v22;
        v33 = 2114;
        v34 = v11;
        _os_log_fault_impl(&dword_0, v19, OS_LOG_TYPE_FAULT, "%{public}@: reverifySignatureForRecord cannot verify signature for record %{public}@ because the original record couldn't be retrieved: %{public}@", buf, 0x20u);
      }

      (v7)[2](v7, 0, 1, v11);
    }
  }
}

- (id)_groupRecordsByAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = objc_alloc_init(NSMutableDictionary);
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v12 = [WeakRetained profile];

  v13 = [v12 database];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_5B54C;
  v21[3] = &unk_107B88;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v25 = self;
  v26 = v9;
  v14 = v10;
  v27 = v14;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  v18 = v6;
  LODWORD(a4) = [HDOriginalSignedClinicalDataRecordEntity performReadTransactionWithHealthDatabase:v13 error:a4 block:v21];

  if (a4)
  {
    v19 = v14;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)reextractSignedClinicalDataRecordsForAccountWithIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  _HKInitializeLogging();
  v9 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    *buf = 138543874;
    v28 = v12;
    v29 = 2114;
    v30 = v13;
    v31 = 2114;
    v32 = v7;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@.%{public}@ starting to re-extract SCD records for account %{public}@", buf, 0x20u);
  }

  v14 = objc_alloc_init(NSMutableArray);
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v16 = [WeakRetained profile];
  v26 = 0;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_5BD08;
  v24 = &unk_107BD8;
  v17 = v14;
  v25 = v17;
  v18 = [HDOriginalSignedClinicalDataRecordEntity enumerateActiveCodableRecordsForAccountIdentifier:v7 profile:v16 error:&v26 block:&v21];
  v19 = v26;

  if (v18)
  {
    [(HDSignedClinicalDataManager *)self reextractOriginalSignedClinicalDataRecords:v17 completion:v8, v21, v22, v23, v24];
  }

  else
  {
    v20 = [v19 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    if (v20)
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A47AC();
      }
    }

    else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A4734();
    }

    v8[2](v8, 0, v19);
  }
}

- (void)triggerDownloadIssuerRegistryWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543362;
    v16 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@.triggerDownloadIssuerRegistryWithOptions starting", buf, 0xCu);
  }

  XPCServiceClient = self->_XPCServiceClient;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5BE6C;
  v13[3] = &unk_107C00;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [(HDHealthRecordsIngestionServiceClient *)XPCServiceClient triggerDownloadIssuerRegistryWithOptions:a3 completion:v13];
}

- (void)triggerDownloadPublicKeysWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543362;
    v16 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@.triggerDownloadPublicKeysWithOptions starting", buf, 0xCu);
  }

  XPCServiceClient = self->_XPCServiceClient;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5C12C;
  v13[3] = &unk_107C00;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [(HDHealthRecordsIngestionServiceClient *)XPCServiceClient triggerDownloadPublicKeysWithOptions:a3 completion:v13];
}

- (void)updateIssuerTitlesUsingRegistry:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v6 = [WeakRetained profile];

  v9 = 0;
  LOBYTE(WeakRetained) = [HDSignedClinicalDataIssuerEntity updateIssuerTitlesUsingRegistry:v4 profile:v6 error:&v9];

  v7 = v9;
  if ((WeakRetained & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A496C(v8, self);
    }
  }
}

- (void)_serialQueue_didReceiveOriginalSyncEntities
{
  dispatch_assert_queue_V2(self->_serialQueue);
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v4 = [WeakRetained profile];
  v5 = [v4 daemon];
  v6 = [v5 contentProtectionManager];
  v7 = [v6 isProtectedDataAvailable];

  if (v7)
  {

    [(HDSignedClinicalDataManager *)self _scheduleExtractionWithReason:@"SCD sync entities inserted"];
  }

  else
  {
    self->_scheduleExtractionOnProtectedDataBecomingAvailable = 1;
  }
}

- (void)_scheduleExtractionWithReason:(id)a3 ignoreExtractionVersion:(BOOL)a4
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5C560;
  v13[3] = &unk_107C28;
  v13[4] = self;
  v6 = a3;
  v14 = v6;
  v15 = a4;
  v7 = [HDMaintenanceOperation maintenanceOperationWithName:v6 asynchronousBlock:v13];
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A4AB8(v8);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v10 = [WeakRetained profile];
  v11 = [v10 daemon];
  v12 = [v11 maintenanceWorkCoordinator];
  [v12 enqueueMaintenanceOperation:v7];
}

- (void)profileDidBecomeReady:(id)a3
{
  v10 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v4 = [v10 database];
  [v4 addProtectedDataObserver:self queue:self->_serialQueue];

  v5 = [v10 database];
  v6 = [v5 isProtectedDataAvailable];

  if (v6)
  {
    [(HDSignedClinicalDataManager *)self _serialQueue_performProtectedDataAvailableChecks];
  }

  v7 = [v10 daemon];
  v8 = [v7 ontologyUpdateCoordinator];
  v9 = [v8 importer];
  [v9 addOntologyShardImporterObserver:self queue:self->_serialQueue];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (v4)
  {

    [(HDSignedClinicalDataManager *)self _serialQueue_performProtectedDataAvailableChecks];
  }
}

- (void)ontologyShardImporter:(id)a3 didImportEntry:(id)a4
{
  v5 = [a4 identifier];
  v6 = [v5 isEqualToString:HKOntologyShardIdentifierUniversal];

  if (v6)
  {

    [(HDSignedClinicalDataManager *)self _scheduleExtractionWithReason:@"universal ontology shard updated" ignoreExtractionVersion:1];
  }
}

- (HDHealthRecordsProfileExtension)profileExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);

  return WeakRetained;
}

@end