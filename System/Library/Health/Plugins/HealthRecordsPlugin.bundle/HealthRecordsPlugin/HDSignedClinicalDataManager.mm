@interface HDSignedClinicalDataManager
- (BOOL)deleteSignedClinicalDataRecord:(id)record error:(id *)error;
- (BOOL)isReextractingSignedClinicalDataRecordWithSyncIdentifier:(id)identifier;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDSignedClinicalDataManager)initWithProfileExtension:(id)extension;
- (id)_groupRecordsByAccount:(id)account error:(id *)error;
- (id)_storeDataFromClinicalItem:(id)item existingAccountIdentifier:(id)identifier insertOriginalRecords:(BOOL)records accountEntityMap:(id)map numOriginalRecordsInserted:(unint64_t *)inserted numDuplicateRecords:(unint64_t *)duplicateRecords transaction:(id)transaction error:(id *)self0;
- (id)resultWithUpdatedSignedClinicalDataRecordsInParsingResult:(id)result;
- (id)signedClinicalDataGroupBackingMedicalRecord:(id)record options:(unint64_t)options error:(id *)error;
- (id)signedClinicalRecordBackingMedicalRecord:(id)record error:(id *)error;
- (id)storeDataFromParsingResult:(id)result existingAccountIdentifier:(id)identifier insertOriginalRecords:(BOOL)records allRecordsWereDuplicates:(BOOL *)duplicates error:(id *)error;
- (void)_scheduleExtractionWithReason:(id)reason ignoreExtractionVersion:(BOOL)version;
- (void)_serialQueue_didReceiveOriginalSyncEntities;
- (void)_serialQueue_performProtectedDataAvailableChecks;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)didReceiveOriginalSignedClinicalDataRecordSyncEntities;
- (void)ontologyShardImporter:(id)importer didImportEntry:(id)entry;
- (void)parseSignedClinicalData:(id)data options:(unint64_t)options completion:(id)completion;
- (void)profileDidBecomeReady:(id)ready;
- (void)reextractOriginalSignedClinicalDataRecords:(id)records completion:(id)completion;
- (void)reextractSignedClinicalDataRecordsForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)reverifySignatureForRecord:(id)record completion:(id)completion;
- (void)storeSignedClinicalData:(id)data completion:(id)completion;
- (void)triggerDownloadIssuerRegistryWithOptions:(unint64_t)options completion:(id)completion;
- (void)triggerDownloadPublicKeysWithOptions:(unint64_t)options completion:(id)completion;
- (void)updateIssuerTitlesUsingRegistry:(id)registry;
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

- (HDSignedClinicalDataManager)initWithProfileExtension:(id)extension
{
  extensionCopy = extension;
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

    objc_storeWeak(&v5->_profileExtension, extensionCopy);
    createHealthRecordsIngestionServiceClient = [extensionCopy createHealthRecordsIngestionServiceClient];
    XPCServiceClient = v5->_XPCServiceClient;
    v5->_XPCServiceClient = createHealthRecordsIngestionServiceClient;

    WeakRetained = objc_loadWeakRetained(&v5->_profileExtension);
    profile = [WeakRetained profile];
    [profile registerProfileReadyObserver:v5 queue:v5->_serialQueue];
  }

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];
  daemon = [profile daemon];
  ontologyUpdateCoordinator = [daemon ontologyUpdateCoordinator];
  importer = [ontologyUpdateCoordinator importer];
  [importer removeOntologyShardImporterObserver:self];

  v8.receiver = self;
  v8.super_class = HDSignedClinicalDataManager;
  [(HDSignedClinicalDataManager *)&v8 dealloc];
}

- (void)parseSignedClinicalData:(id)data options:(unint64_t)options completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
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
  v14 = completionCopy;
  v12 = completionCopy;
  [(HDHealthRecordsIngestionServiceClient *)XPCServiceClient parseSignedClinicalData:dataCopy options:options completion:v13];
}

- (void)storeSignedClinicalData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
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
  v12 = completionCopy;
  v10 = completionCopy;
  [(HDHealthRecordsIngestionServiceClient *)XPCServiceClient parseSignedClinicalData:dataCopy options:2 completion:v11];
}

- (void)reextractOriginalSignedClinicalDataRecords:(id)records completion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  v44 = [recordsCopy hk_filter:&stru_107A38];
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
    v66 = [recordsCopy count];
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
                selfCopy = self;
                v20 = objc_opt_class();
                v21 = NSStringFromClass(v20);
                XPCServiceClient = selfCopy->_XPCServiceClient;
                *v58 = 138543874;
                v59 = v21;
                v60 = 2114;
                v61 = XPCServiceClient;
                v62 = 2114;
                v63 = v14;
                _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%{public}@: reextractOriginalSignedClinicalDataRecords calling out to XPC client %{public}@ for account %{public}@", v58, 0x20u);

                self = selfCopy;
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
        firstObject = [v23 firstObject];
        if ([v23 count] >= 2)
        {
          v56 = NSMultipleUnderlyingErrorsKey;
          v57 = v23;
          v25 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v26 = [NSError errorWithDomain:HKErrorDomain code:100 userInfo:v25];

          firstObject = v26;
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

        [(HDSignedClinicalDataManager *)self didCompleteReExtractionWithCompletion:completionCopy numExtracted:0 errorReturned:firstObject];
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

        firstObject = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v44 count]);
        [(HDSignedClinicalDataManager *)self didCompleteReExtractionWithCompletion:completionCopy numExtracted:firstObject errorReturned:0];
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

      [(HDSignedClinicalDataManager *)self didCompleteReExtractionWithCompletion:completionCopy numExtracted:0 errorReturned:v40];
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

    [(HDSignedClinicalDataManager *)self didCompleteReExtractionWithCompletion:completionCopy numExtracted:&off_1102B8 errorReturned:0];
  }
}

- (BOOL)isReextractingSignedClinicalDataRecordWithSyncIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    sub_A401C();
  }

  os_unfair_lock_lock(&self->_ivarLock);
  v5 = [(NSMutableSet *)self->_originalSyncIdentifiersBeingStored containsObject:identifierCopy];
  os_unfair_lock_unlock(&self->_ivarLock);

  return v5;
}

- (id)signedClinicalRecordBackingMedicalRecord:(id)record error:(id *)error
{
  recordCopy = record;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];

  v9 = [HDSignedClinicalDataRecordEntity signedClinicalRecordBackingMedicalRecord:recordCopy profile:profile error:error];

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

- (id)resultWithUpdatedSignedClinicalDataRecordsInParsingResult:(id)result
{
  resultCopy = result;
  profileExtension = [(HDSignedClinicalDataManager *)self profileExtension];
  createSignedClinicalDataRegistry = [profileExtension createSignedClinicalDataRegistry];

  v7 = objc_alloc_init(NSMutableDictionary);
  items = [resultCopy items];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_5847C;
  v19 = &unk_107AB0;
  v20 = v7;
  v21 = createSignedClinicalDataRegistry;
  v9 = createSignedClinicalDataRegistry;
  v10 = v7;
  v11 = [items hk_map:&v16];

  v12 = [HKSignedClinicalDataParsingResult alloc];
  options = [resultCopy options];

  v14 = [v12 initWithItems:v11 options:options];

  return v14;
}

- (id)storeDataFromParsingResult:(id)result existingAccountIdentifier:(id)identifier insertOriginalRecords:(BOOL)records allRecordsWereDuplicates:(BOOL *)duplicates error:(id *)error
{
  resultCopy = result;
  identifierCopy = identifier;
  items = [resultCopy items];
  v15 = [items count];

  if (v15)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
    profile = [WeakRetained profile];

    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v17 = objc_alloc_init(NSMutableArray);
    database = [profile database];
    v48 = 0;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_58A54;
    v40[3] = &unk_107AD8;
    v19 = resultCopy;
    v41 = v19;
    selfCopy = self;
    recordsCopy = records;
    v43 = identifierCopy;
    v45 = &v53;
    v46 = &v49;
    v20 = v17;
    v44 = v20;
    LOBYTE(v17) = [HDOriginalSignedClinicalDataRecordEntity performWriteTransactionWithHealthDatabase:database error:&v48 block:v40 inaccessibilityHandler:&stru_107AF8];
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

      if (duplicates)
      {
        v28 = v50[3];
        if (v28)
        {
          LOBYTE(v28) = v54[3] == 0;
        }

        *duplicates = v28;
      }

      v29 = [v19 copyWithItems:{v20, duplicates}];
    }

    else
    {
      v34 = v21;
      v35 = v34;
      if (v34)
      {
        if (error)
        {
          v36 = v34;
          *error = v35;
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

    v29 = resultCopy;
  }

  return v29;
}

- (id)_storeDataFromClinicalItem:(id)item existingAccountIdentifier:(id)identifier insertOriginalRecords:(BOOL)records accountEntityMap:(id)map numOriginalRecordsInserted:(unint64_t *)inserted numDuplicateRecords:(unint64_t *)duplicateRecords transaction:(id)transaction error:(id *)self0
{
  recordsCopy = records;
  itemCopy = item;
  identifierCopy = identifier;
  mapCopy = map;
  transactionCopy = transaction;
  insertedCopy = inserted;
  if (inserted)
  {
    if (duplicateRecords)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_A4094();
    if (duplicateRecords)
    {
      goto LABEL_3;
    }
  }

  sub_A410C();
LABEL_3:
  duplicateRecordsCopy = duplicateRecords;
  v154 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];

  if (identifierCopy)
  {
    issuerIdentifier = identifierCopy;
  }

  else
  {
    originalRecord = [itemCopy originalRecord];
    issuerIdentifier = [originalRecord issuerIdentifier];
  }

  v153 = transactionCopy;
  originalRecord2 = [itemCopy originalRecord];
  syncIdentifier = [originalRecord2 syncIdentifier];

  _HKInitializeLogging();
  v24 = HKLogHealthRecords;
  v146 = recordsCopy;
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
    v174 = syncIdentifier;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ storing parsing result for original record %{public}@", buf, 0x20u);
  }

  v151 = issuerIdentifier;
  v29 = [mapCopy objectForKeyedSubscript:issuerIdentifier];
  v150 = mapCopy;
  if (!v29)
  {
    if (identifierCopy)
    {
      v168 = 0;
      v29 = [HDClinicalAccountEntity existingAccountEntityWithIdentifier:identifierCopy database:v154 error:&v168];
      v30 = v168;
      if (v29)
      {
LABEL_11:
        [mapCopy setObject:v29 forKeyedSubscript:v151];

        goto LABEL_12;
      }
    }

    else
    {
      v93 = objc_loadWeakRetained(&self->_profileExtension);
      accountManager = [v93 accountManager];
      originalRecord3 = [itemCopy originalRecord];
      v167 = 0;
      v29 = [accountManager accountEntityForRecord:originalRecord3 createIfNecessary:1 error:&v167];
      v30 = v167;

      mapCopy = v150;
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
      if (error)
      {
        v97 = v44;
        v85 = 0;
        *error = v44;
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
  syncIdentityManager = [profile syncIdentityManager];
  currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
  identity = [currentSyncIdentity identity];

  _HKInitializeLogging();
  v34 = HKLogHealthRecords;
  v35 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
  v145 = identity;
  if (!recordsCopy)
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
      v174 = syncIdentifier;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ retrieving original record %{public}@ by sync identifier", buf, 0x20u);
    }

    v165 = 0;
    v43 = [HDOriginalSignedClinicalDataRecordEntity entityWithSyncIdentifier:syncIdentifier database:v154 error:&v165];
    v44 = v165;
    v164 = 0;
    v49 = [v43 updateUniquenessChecksumIfNecessaryWithItem:itemCopy database:v154 error:&v164];
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
      v58 = v135 = identifierCopy;
      persistentID = [v43 persistentID];
      *buf = 138543874;
      v170 = v57;
      v171 = 2114;
      v172 = v58;
      v173 = 2048;
      v174 = persistentID;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ updated uniqueness checksum during re-extraction, original SCD record ROWID %llu", buf, 0x20u);

      identifierCopy = v135;
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
      localizedDescription = [v42 localizedDescription];
      *buf = 138543874;
      v170 = v134;
      v171 = 2114;
      v172 = v133;
      v173 = 2114;
      v174 = localizedDescription;
      v53 = localizedDescription;
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
    v174 = syncIdentifier;
    _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ inserting original record %{public}@", buf, 0x20u);
  }

  originalRecord4 = [itemCopy originalRecord];
  uniquenessChecksum = [itemCopy uniquenessChecksum];
  v42 = [originalRecord4 asNewCodableRecordWithUniquenessChecksum:uniquenessChecksum syncIdentity:identity];

  v166 = 0;
  v43 = +[HDOriginalSignedClinicalDataRecordEntity insertCodableRecord:shouldReplace:accountPersistentID:syncProvenance:profile:transaction:error:](HDOriginalSignedClinicalDataRecordEntity, "insertCodableRecord:shouldReplace:accountPersistentID:syncProvenance:profile:transaction:error:", v42, 0, [v29 persistentID], 0, profile, v153, &v166);
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
      v62 = syncIdentifier;
      v159 = v62;
      HKWithUnfairLock();
      v158[0] = 0;
      log = v43;
      v63 = [v43 storeSignedClinicalDataItem:itemCopy account:v60 profile:profile error:v158];
      v64 = v158[0];
      v65 = v62;
      v157 = v65;
      HKWithUnfairLock();
      if (v63)
      {
        if (v146)
        {
          v147 = v64;
          v136 = identifierCopy;
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

          originalRecord5 = [itemCopy originalRecord];
          [originalRecord5 sourceType];
          v72 = NSStringForSignedClinicalDataSourceType();
          [HDClinicalBiomeSignalsManager lazilySendEvent:@"com.apple.health.records.added-verifiable-record" context:v72];

          identifierCopy = v136;
          v64 = v147;
        }

        else
        {
          XPCServiceClient = self->_XPCServiceClient;
          originalRecord5 = [itemCopy mainRecord];
          [(HDHealthRecordsIngestionServiceClient *)XPCServiceClient didUpdateSignedClinicalDataRecord:originalRecord5];
        }

        ++*insertedCopy;
        _HKInitializeLogging();
        v99 = HKLogHealthRecords;
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
        {
          v100 = v99;
          v101 = objc_opt_class();
          v102 = NSStringFromClass(v101);
          NSStringFromSelector(a2);
          v103 = v64;
          v105 = v104 = identifierCopy;
          *buf = 138543874;
          v170 = v102;
          v171 = 2114;
          v172 = v105;
          v173 = 2114;
          v174 = v65;
          _os_log_impl(&dword_0, v100, OS_LOG_TYPE_DEFAULT, "%{public}@  %{public}@ did store parsing result for original record %{public}@", buf, 0x20u);

          identifierCopy = v104;
          v64 = v103;
        }

        v85 = itemCopy;
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
          v124 = v123 = identifierCopy;
          *buf = 138543874;
          v170 = v120;
          v171 = 2114;
          v172 = v121;
          v173 = 2114;
          v174 = v124;
          _os_log_error_impl(&dword_0, v118, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to insert signed clinical data records with error: %{public}@", buf, 0x20u);

          identifierCopy = v123;
          v64 = v122;
        }

        v89 = v64;
        v90 = v89;
        if (v89)
        {
          if (error)
          {
            v91 = v89;
            *error = v90;
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
        if (error)
        {
          v87 = v44;
          *error = v44;
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
      [itemCopy uniquenessChecksum];
      v79 = v137 = identifierCopy;
      hk_hexString = [v79 hk_hexString];
      localizedDescription2 = [(__CFString *)v44 localizedDescription];
      *buf = 138544130;
      v170 = v77;
      v171 = 2114;
      v172 = v78;
      v173 = 2114;
      v174 = hk_hexString;
      v175 = 2114;
      v176 = localizedDescription2;
      _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ did not insert original SCD record with checksum %{public}@ because it's already there: %{public}@", buf, 0x2Au);

      identifierCopy = v137;
    }

    ++*duplicateRecordsCopy;
    uniquenessChecksum2 = [itemCopy uniquenessChecksum];
    v163 = 0;
    v83 = [HDSignedClinicalDataRecordEntity signedClinicalDataRecordBackedByRecordWithUniquenessChecksum:uniquenessChecksum2 account:v29 database:v154 profile:profile error:&v163];
    v60 = v163;

    if (v83)
    {
      originalRecord6 = [itemCopy originalRecord];
      v85 = [itemCopy copyWithOriginalRecord:originalRecord6 mainRecord:v83];
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
        [itemCopy uniquenessChecksum];
        v131 = v139 = identifierCopy;
        hk_hexString2 = [v131 hk_hexString];
        *buf = 138544130;
        v170 = v144;
        v171 = 2114;
        v172 = v130;
        v173 = 2114;
        v174 = hk_hexString2;
        v175 = 2114;
        v176 = v60;
        _os_log_error_impl(&dword_0, v149, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed to retrieve HKSignedClinicalDataRecord given its uniqueness checksum (%{public}@) with error: %{public}@", buf, 0x2Au);

        identifierCopy = v139;
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
        v110 = v138 = identifierCopy;
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
        identifierCopy = v138;
      }

      v113 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_59E00;
      block[3] = &unk_106B68;
      block[4] = self;
      originalRecord6 = v148;
      v162 = originalRecord6;
      dispatch_async(v113, block);

      v114 = v60;
      v115 = v114;
      if (v114)
      {
        if (error)
        {
          v116 = v114;
          *error = v115;
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
    if (recordsCopy)
    {
      v125 = @"insert";
    }

    else
    {
      v125 = @"find";
    }

    v126 = v74;
    uniquenessChecksum3 = [itemCopy uniquenessChecksum];
    hk_hexString3 = [uniquenessChecksum3 hk_hexString];
    *buf = 138544130;
    v170 = v125;
    v171 = 2114;
    v172 = syncIdentifier;
    v173 = 2114;
    v174 = hk_hexString3;
    v175 = 2114;
    v176 = v44;
    _os_log_fault_impl(&dword_0, v126, OS_LOG_TYPE_FAULT, "HDSignedClinicalDataManager._storeDataFromClinicalItem failed to %{public}@ original signed clinical data record with sync identifier %{public}@ and checksum %{public}@, error: %{public}@", buf, 0x2Au);
  }

  v60 = v44;
  if (!v60)
  {
    goto LABEL_74;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_74:
    v85 = 0;
    goto LABEL_75;
  }

  v92 = v60;
  v85 = 0;
  *error = v60;
LABEL_75:
  v44 = v60;
  v43 = 0;
LABEL_83:

LABEL_84:

  return v85;
}

- (id)signedClinicalDataGroupBackingMedicalRecord:(id)record options:(unint64_t)options error:(id *)error
{
  recordCopy = record;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];

  if ((options & 1) == 0)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_4;
  }

  v106 = 0;
  v12 = [HDSignedClinicalDataRecordEntity signedClinicalRecordBackingMedicalRecord:recordCopy profile:profile error:&v106];
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
      if (error)
      {
        v22 = v17;
        v23 = 0;
        *error = v17;
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
  if ((options & 2) != 0)
  {
    aSelector = a2;
    v105 = v13;
    v17 = [HDOriginalSignedClinicalDataRecordEntity existingEntityBackingMedicalRecord:recordCopy profile:profile error:&v105];
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
    v19 = [v17 existingDerivedMedicalRecordsOnProfile:profile excludeMainRecord:1 error:&v104];
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
        if (error)
        {
          v27 = v13;
          *error = v13;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_82;
    }

    v15 = v19;
    errorCopy3 = error;
    if ((options & 4) == 0)
    {
      v14 = 0;
LABEL_31:
      if ((options & 8) == 0)
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
    v14 = [v17 existingDerivedClinicalRecordsOnProfile:profile error:&v102];
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
      if (errorCopy3)
      {
        v29 = v13;
        *errorCopy3 = v13;
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

  if ((options & 4) == 0)
  {
    if ((options & 8) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
LABEL_48:
      v23 = [[HKSignedClinicalDataGroup alloc] initWithOptions:options mainRecord:v12 medicalRecords:v15 clinicalRecords:v14 QRRepresentation:v16];

      goto LABEL_84;
    }

    v101 = v13;
    v17 = [HDOriginalSignedClinicalDataRecordEntity existingEntityBackingMedicalRecord:recordCopy profile:profile error:&v101];
    v20 = v101;

    if (v17)
    {
      errorCopy3 = error;
      aSelector = a2;
      v15 = 0;
      v14 = 0;
LABEL_34:
      v94 = recordCopy;
      if (v12)
      {
        v93 = v15;
        v95 = v12;
        goto LABEL_45;
      }

      v100 = v20;
      v36 = [v17 signedClinicalDataRecordWithProfile:profile error:&v100];
      v37 = v100;

      v95 = v36;
      if (v36)
      {
        v93 = v15;
        v20 = v37;
LABEL_45:
        v99 = v20;
        v38 = [v17 rawContentOnProfile:profile error:&v99];
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
            recordCopy = v94;
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
            v43 = errorCopy3;
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
            v43 = errorCopy3;
            v44 = v93;
            goto LABEL_67;
          }

          v44 = v93;
        }

        v48 = v95;
LABEL_79:

        v23 = 0;
        recordCopy = v94;
        goto LABEL_84;
      }

      _HKInitializeLogging();
      v50 = HKLogHealthRecords;
      recordCopy = v94;
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
        if (errorCopy3)
        {
          v52 = v51;
          *errorCopy3 = v13;
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
  v17 = [HDOriginalSignedClinicalDataRecordEntity existingEntityBackingMedicalRecord:recordCopy profile:profile error:&v103];
  v20 = v103;

  if (v17)
  {
    errorCopy3 = error;
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
    if (error)
    {
      v46 = v25;
      *error = v13;
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

- (BOOL)deleteSignedClinicalDataRecord:(id)record error:(id *)error
{
  recordCopy = record;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];

  originIdentifier = [recordCopy originIdentifier];
  signedClinicalDataRecordIdentifier = [originIdentifier signedClinicalDataRecordIdentifier];

  if (signedClinicalDataRecordIdentifier)
  {
    v28 = 0;
    v12 = [HDOriginalSignedClinicalDataRecordEntity existingEntityWithSyncIdentifier:signedClinicalDataRecordIdentifier profile:profile error:&v28];
    v13 = v28;
    if (v12)
    {
      v27 = 0;
      v14 = [v12 deleteOriginalAndDerivedRecordsOnProfile:profile error:&v27];
      v15 = v27;
      v16 = v15;
      if ((v14 & 1) == 0)
      {
        v16 = v15;
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
      if (error)
      {
        v20 = v16;
        v14 = 0;
        *error = v16;
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
  [NSError hk_assignError:error code:3 format:@"cannot delete record %@ because it doesn't have a sync identifier", v13];
  v14 = 0;
LABEL_20:

  return v14;
}

- (void)reverifySignatureForRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if ([recordCopy signatureStatus] == &dword_0 + 2)
  {
    completionCopy[2](completionCopy, 1, 2, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
    profile = [WeakRetained profile];

    v28 = 0;
    v10 = [HDOriginalSignedClinicalDataRecordEntity codableOriginalRecordForHKRecord:recordCopy profile:profile error:&v28];
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

      asOriginalSignedClinicalDataRecord = [v10 asOriginalSignedClinicalDataRecord];
      v18 = self->_XPCServiceClient;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_5AF88;
      v23[3] = &unk_107B60;
      v23[4] = self;
      v27 = completionCopy;
      v24 = recordCopy;
      v25 = v10;
      v26 = profile;
      [(HDHealthRecordsIngestionServiceClient *)v18 reverifySignatureForRecord:asOriginalSignedClinicalDataRecord options:0 completion:v23];
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

      (completionCopy)[2](completionCopy, 0, 1, v11);
    }
  }
}

- (id)_groupRecordsByAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = objc_alloc_init(NSMutableDictionary);
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];

  database = [profile database];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_5B54C;
  v21[3] = &unk_107B88;
  v22 = accountCopy;
  v23 = v7;
  v24 = v8;
  selfCopy = self;
  v26 = v9;
  v14 = v10;
  v27 = v14;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  v18 = accountCopy;
  LODWORD(error) = [HDOriginalSignedClinicalDataRecordEntity performReadTransactionWithHealthDatabase:database error:error block:v21];

  if (error)
  {
    v19 = v14;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)reextractSignedClinicalDataRecordsForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
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
    v32 = identifierCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@.%{public}@ starting to re-extract SCD records for account %{public}@", buf, 0x20u);
  }

  v14 = objc_alloc_init(NSMutableArray);
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];
  v26 = 0;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_5BD08;
  v24 = &unk_107BD8;
  v17 = v14;
  v25 = v17;
  v18 = [HDOriginalSignedClinicalDataRecordEntity enumerateActiveCodableRecordsForAccountIdentifier:identifierCopy profile:profile error:&v26 block:&v21];
  v19 = v26;

  if (v18)
  {
    [(HDSignedClinicalDataManager *)self reextractOriginalSignedClinicalDataRecords:v17 completion:completionCopy, v21, v22, v23, v24];
  }

  else
  {
    hk_isDatabaseAccessibilityError = [v19 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    if (hk_isDatabaseAccessibilityError)
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

    completionCopy[2](completionCopy, 0, v19);
  }
}

- (void)triggerDownloadIssuerRegistryWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
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
  v14 = completionCopy;
  v12 = completionCopy;
  [(HDHealthRecordsIngestionServiceClient *)XPCServiceClient triggerDownloadIssuerRegistryWithOptions:options completion:v13];
}

- (void)triggerDownloadPublicKeysWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
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
  v14 = completionCopy;
  v12 = completionCopy;
  [(HDHealthRecordsIngestionServiceClient *)XPCServiceClient triggerDownloadPublicKeysWithOptions:options completion:v13];
}

- (void)updateIssuerTitlesUsingRegistry:(id)registry
{
  registryCopy = registry;
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];

  v9 = 0;
  LOBYTE(WeakRetained) = [HDSignedClinicalDataIssuerEntity updateIssuerTitlesUsingRegistry:registryCopy profile:profile error:&v9];

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
  profile = [WeakRetained profile];
  daemon = [profile daemon];
  contentProtectionManager = [daemon contentProtectionManager];
  isProtectedDataAvailable = [contentProtectionManager isProtectedDataAvailable];

  if (isProtectedDataAvailable)
  {

    [(HDSignedClinicalDataManager *)self _scheduleExtractionWithReason:@"SCD sync entities inserted"];
  }

  else
  {
    self->_scheduleExtractionOnProtectedDataBecomingAvailable = 1;
  }
}

- (void)_scheduleExtractionWithReason:(id)reason ignoreExtractionVersion:(BOOL)version
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5C560;
  v13[3] = &unk_107C28;
  v13[4] = self;
  reasonCopy = reason;
  v14 = reasonCopy;
  versionCopy = version;
  v7 = [HDMaintenanceOperation maintenanceOperationWithName:reasonCopy asynchronousBlock:v13];
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A4AB8(v8);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];
  daemon = [profile daemon];
  maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
  [maintenanceWorkCoordinator enqueueMaintenanceOperation:v7];
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  dispatch_assert_queue_V2(self->_serialQueue);
  database = [readyCopy database];
  [database addProtectedDataObserver:self queue:self->_serialQueue];

  database2 = [readyCopy database];
  isProtectedDataAvailable = [database2 isProtectedDataAvailable];

  if (isProtectedDataAvailable)
  {
    [(HDSignedClinicalDataManager *)self _serialQueue_performProtectedDataAvailableChecks];
  }

  daemon = [readyCopy daemon];
  ontologyUpdateCoordinator = [daemon ontologyUpdateCoordinator];
  importer = [ontologyUpdateCoordinator importer];
  [importer addOntologyShardImporterObserver:self queue:self->_serialQueue];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (availableCopy)
  {

    [(HDSignedClinicalDataManager *)self _serialQueue_performProtectedDataAvailableChecks];
  }
}

- (void)ontologyShardImporter:(id)importer didImportEntry:(id)entry
{
  identifier = [entry identifier];
  v6 = [identifier isEqualToString:HKOntologyShardIdentifierUniversal];

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