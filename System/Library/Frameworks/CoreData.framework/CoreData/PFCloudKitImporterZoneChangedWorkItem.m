@interface PFCloudKitImporterZoneChangedWorkItem
- (BOOL)commitMetadataChangesWithContext:(id)a3 forStore:(id)a4 error:(id *)a5;
- (BOOL)updateMetadataForAccumulatedChangesInContext:(id)a3 inStore:(id)a4 error:(id *)a5;
- (PFCloudKitImporterZoneChangedWorkItem)initWithChangedRecordZoneIDs:(id)a3 options:(id)a4 request:(id)a5;
- (id)description;
- (void)dealloc;
- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)a3 completion:(id)a4;
@end

@implementation PFCloudKitImporterZoneChangedWorkItem

- (PFCloudKitImporterZoneChangedWorkItem)initWithChangedRecordZoneIDs:(id)a3 options:(id)a4 request:(id)a5
{
  v8.receiver = self;
  v8.super_class = PFCloudKitImporterZoneChangedWorkItem;
  v6 = [(PFCloudKitImportRecordsWorkItem *)&v8 initWithOptions:a4 request:a5];
  if (v6)
  {
    v6->_changedRecordZoneIDs = a3;
    v6->_fetchedZoneIDToChangeToken = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_fetchedZoneIDToMoreComing = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v6;
}

- (void)dealloc
{
  self->_changedRecordZoneIDs = 0;

  self->_fetchedZoneIDToChangeToken = 0;
  self->_fetchedZoneIDToMoreComing = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImporterZoneChangedWorkItem;
  [(PFCloudKitImportRecordsWorkItem *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (self)
  {
    request = self->super.super._request;
  }

  else
  {
    request = 0;
  }

  v8 = [v4 initWithFormat:@"<%@: %p - %@>", v6, self, request];
  [v8 appendFormat:@" {\n%@\n}", self->_changedRecordZoneIDs];
  objc_autoreleasePoolPop(v3);

  return v8;
}

- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)a3 completion:(id)a4
{
  v90 = *MEMORY[0x1E69E9840];
  if (self)
  {
    options = self->super.super._options;
  }

  else
  {
    options = 0;
  }

  v8 = options;
  v9 = v8;
  if (v8)
  {
    v49 = v8->_database;
    v10 = v9[2];
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained((v10 + 32));
      v11 = v9[2];
      goto LABEL_6;
    }
  }

  else
  {
    v49 = 0;
  }

  WeakRetained = 0;
  v11 = 0;
LABEL_6:
  v46 = v9;
  v50 = [(PFCloudKitStoreMonitor *)v11 retainedMonitoredStore];
  if (v50)
  {
    v43 = a4;
    v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 1;
    v76 = 0;
    v77 = &v76;
    v78 = 0x3052000000;
    v79 = __Block_byref_object_copy__40;
    v80 = __Block_byref_object_dispose__40;
    v81 = 0;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v42 = self;
    obj = self->_changedRecordZoneIDs;
    v12 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v89 count:16];
    if (v12)
    {
      v45 = *v73;
      do
      {
        v13 = 0;
        do
        {
          if (*v73 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v72 + 1) + 8 * v13);
          location = 0;
          p_location = &location;
          v68 = 0x3052000000;
          v69 = __Block_byref_object_copy__40;
          v70 = __Block_byref_object_dispose__40;
          v71 = 0;
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke;
          v65[3] = &unk_1E6EC4908;
          v65[4] = v14;
          v65[5] = v49;
          v65[6] = v50;
          v65[7] = a3;
          v65[8] = &location;
          v65[9] = &v82;
          v65[10] = &v76;
          [a3 performBlockAndWait:v65];
          if (*(v83 + 24) != 1)
          {
            _Block_object_dispose(&location, 8);
            goto LABEL_37;
          }

          v15 = objc_alloc_init(getCloudKitCKFetchRecordZoneChangesConfigurationClass());
          [v15 setPreviousServerChangeToken:p_location[5]];

          p_location[5] = 0;
          v16 = [v50 configurationName];
          v17 = [WeakRetained managedObjectModel];
          if (v9)
          {
            v18 = v9[3];
          }

          else
          {
            v18 = 0;
          }

          v19 = +[PFCloudKitSerializer newSetOfRecordKeysForEntitiesInConfiguration:inManagedObjectModel:includeCKAssetsForFileBackedFutures:](PFCloudKitSerializer, v16, v17, [v18 automaticallyDownloadFileBackedFutures]);
          v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v21 = [v19 countByEnumeratingWithState:&v61 objects:v88 count:16];
          if (v21)
          {
            v22 = *v62;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v62 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                [v20 addObject:*(*(&v61 + 1) + 8 * i)];
              }

              v21 = [v19 countByEnumeratingWithState:&v61 objects:v88 count:16];
            }

            while (v21);
          }

          v9 = v46;
          [v15 setDesiredKeys:v20];
          [v48 setObject:v15 forKey:v14];

          _Block_object_dispose(&location, 8);
          ++v13;
        }

        while (v13 != v12);
        v24 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v89 count:16];
        v12 = v24;
      }

      while (v24);
    }

LABEL_37:
    if (*(v83 + 24) == 1)
    {
      v35 = [objc_alloc(getCloudKitCKFetchRecordZoneChangesOperationClass()) initWithRecordZoneIDs:v42->_changedRecordZoneIDs configurationsByRecordZoneID:v48];
      if ([(NSCloudKitMirroringRequest *)v42->super.super._request options])
      {
        [(NSCloudKitMirroringRequestOptions *)[(NSCloudKitMirroringRequest *)v42->super.super._request options] applyToOperation:v35];
      }

      objc_initWeak(&location, v42);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2;
      v59[3] = &unk_1E6EC1A50;
      objc_copyWeak(&v60, &location);
      [v35 setRecordWasChangedBlock:v59];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_3;
      v57[3] = &unk_1E6EC4930;
      objc_copyWeak(&v58, &location);
      [v35 setRecordWithIDWasDeletedBlock:v57];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_4;
      v55[3] = &unk_1E6EC4958;
      objc_copyWeak(&v56, &location);
      [v35 setRecordZoneChangeTokensUpdatedBlock:v55];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_5;
      v53[3] = &unk_1E6EC4980;
      objc_copyWeak(&v54, &location);
      [v35 setRecordZoneFetchCompletionBlock:v53];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_6;
      v51[3] = &unk_1E6EC49A8;
      objc_copyWeak(&v52, &location);
      v51[4] = v43;
      [v35 setFetchRecordZoneChangesCompletionBlock:v51];
      [(CKDatabase *)v49 addOperation:v35];
      objc_destroyWeak(&v52);
      objc_destroyWeak(&v54);
      objc_destroyWeak(&v56);
      objc_destroyWeak(&v58);
      objc_destroyWeak(&v60);
      objc_destroyWeak(&location);
      v34 = v35;
      goto LABEL_48;
    }

    if (!v43)
    {
LABEL_47:
      v34 = 0;
LABEL_48:

      v77[5] = 0;
      _Block_object_dispose(&v76, 8);
      _Block_object_dispose(&v82, 8);
      goto LABEL_49;
    }

    v36 = [NSCloudKitMirroringResult alloc];
    if (v42)
    {
      request = v42->super.super._request;
      if (!v9)
      {
        goto LABEL_57;
      }
    }

    else
    {
      request = 0;
      if (!v9)
      {
        goto LABEL_57;
      }
    }

    v38 = v9[2];
    if (v38)
    {
      v39 = *(v38 + 48);
LABEL_46:
      v40 = [(NSCloudKitMirroringResult *)v36 initWithRequest:request storeIdentifier:v39 success:0 madeChanges:0 error:v77[5]];
      v43[2](v43, v40);

      goto LABEL_47;
    }

LABEL_57:
    v39 = 0;
    goto LABEL_46;
  }

  if (a4)
  {
    v25 = MEMORY[0x1E696ABC0];
    v86 = *MEMORY[0x1E696A588];
    if (self)
    {
      v26 = self->super.super._request;
    }

    else
    {
      v26 = 0;
    }

    v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", -[NSCloudKitMirroringRequest requestIdentifier](v26, "requestIdentifier")];
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v28 = [v25 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v27];
    v29 = [NSCloudKitMirroringResult alloc];
    if (self)
    {
      v30 = self->super.super._request;
      if (!v9)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v30 = 0;
      if (!v9)
      {
        goto LABEL_55;
      }
    }

    v31 = v9[2];
    if (v31)
    {
      v32 = *(v31 + 48);
LABEL_34:
      v33 = [(NSCloudKitMirroringResult *)v29 initWithRequest:v30 storeIdentifier:v32 success:0 madeChanges:0 error:v28];
      (*(a4 + 2))(a4, v33);

      goto LABEL_35;
    }

LABEL_55:
    v32 = 0;
    goto LABEL_34;
  }

LABEL_35:
  v34 = 0;
  v48 = 0;
LABEL_49:

  v41 = *MEMORY[0x1E69E9840];
}

id __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke(uint64_t a1)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, *(a1 + 32), [*(a1 + 40) databaseScope], *(a1 + 48), *(a1 + 56), v6);
  if (v2)
  {
    result = [(NSManagedObject *)v2 currentChangeToken];
    v4 = 64;
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    result = v6[0];
    v4 = 80;
  }

  *(*(*(a1 + v4) + 8) + 40) = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2(uint64_t result, uint64_t a2, void *a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((result + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = WeakRetained;
      WeakRetained = [objc_msgSend(objc_msgSend(a3 "recordID")];
      v5 = v6;
      if ((WeakRetained & 1) == 0)
      {
        WeakRetained = [v6 addUpdatedRecord:a3];
        v5 = v6;
      }
    }

    return MEMORY[0x1EEE66BB8](WeakRetained, v5);
  }

  return result;
}

void __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [(PFCloudKitImportRecordsWorkItem *)WeakRetained addDeletedRecordID:a2 ofType:a3];
    WeakRetained = v6;
  }
}

void __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a3 && WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained[20] setObject:a3 forKey:a2];
    [(PFCloudKitImportRecordsWorkItem *)v6 checkAndApplyChangesIfNeeded:a3];
    WeakRetained = v6;
  }
}

void __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    if (a6)
    {
      [WeakRetained[11] addObject:a6];
    }

    else
    {
      if (a3)
      {
        [WeakRetained[20] setObject:a3 forKey:a2];
        WeakRetained = v11;
      }

      [WeakRetained[21] setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", a5), a2}];
    }

    WeakRetained = v11;
  }
}

void __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [(PFCloudKitImportRecordsWorkItem *)WeakRetained fetchOperationFinishedWithError:a2 completion:*(a1 + 32)];
    WeakRetained = v5;
  }
}

- (BOOL)updateMetadataForAccumulatedChangesInContext:(id)a3 inStore:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  fetchedZoneIDToChangeToken = self->_fetchedZoneIDToChangeToken;
  v9 = [(NSMutableDictionary *)fetchedZoneIDToChangeToken countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(fetchedZoneIDToChangeToken);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        options = self->super.super._options;
        if (options)
        {
          database = options->_database;
        }

        else
        {
          database = 0;
        }

        v16 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v13 inDatabaseWithScope:[(CKDatabase *)database databaseScope] forStore:a4 inContext:a3 error:&v33];
        if (v33)
        {
          v19 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v21 = Stream;
          if (__ckLoggingOverride == 17)
          {
            v22 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v22 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(Stream, v22))
          {
            *buf = 136315906;
            v35 = "[PFCloudKitImporterZoneChangedWorkItem updateMetadataForAccumulatedChangesInContext:inStore:error:]";
            v36 = 1024;
            v37 = 273;
            v38 = 2112;
            v39 = v13;
            v40 = 2112;
            v41 = v33;
            _os_log_impl(&dword_18565F000, v21, v22, "CoreData+CloudKit: %s(%d): Unable to fetch zone metadata for zone: %@\n%@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v19);
          goto LABEL_21;
        }

        [(NSManagedObject *)v16 setCurrentChangeToken:[(NSMutableDictionary *)self->_fetchedZoneIDToChangeToken objectForKey:v13]];
        ++v12;
      }

      while (v10 != v12);
      v17 = [(NSMutableDictionary *)fetchedZoneIDToChangeToken countByEnumeratingWithState:&v29 objects:v42 count:16];
      v10 = v17;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v28.receiver = self;
  v28.super_class = PFCloudKitImporterZoneChangedWorkItem;
  if ([(PFCloudKitImportRecordsWorkItem *)&v28 updateMetadataForAccumulatedChangesInContext:a3 inStore:a4 error:&v33])
  {
    LOBYTE(v18) = 1;
    goto LABEL_29;
  }

LABEL_21:
  if (v33)
  {
    if (a5)
    {
      LOBYTE(v18) = 0;
      *a5 = v33;
      goto LABEL_29;
    }

LABEL_28:
    LOBYTE(v18) = 0;
    goto LABEL_29;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v35 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImporterZoneChangedWorkItem.m";
    v36 = 1024;
    v37 = 287;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v24 = _PFLogGetLogStream(17);
  v18 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
  if (v18)
  {
    *buf = 136315394;
    v35 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImporterZoneChangedWorkItem.m";
    v36 = 1024;
    v37 = 287;
    _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_28;
  }

LABEL_29:
  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)commitMetadataChangesWithContext:(id)a3 forStore:(id)a4 error:(id *)a5
{
  v27 = a5;
  v44 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{-[NSMutableDictionary allKeys](self->_fetchedZoneIDToChangeToken, "allKeys")}];
  obj = v8;
  [v8 addObjectsFromArray:{-[NSMutableDictionary allKeys](self->_fetchedZoneIDToMoreComing, "allKeys")}];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v9)
  {
    v10 = *v31;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        options = self->super.super._options;
        if (options)
        {
          database = options->_database;
        }

        else
        {
          database = 0;
        }

        v14 = *(*(&v30 + 1) + 8 * v11);
        v15 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v14 inDatabaseWithScope:[(CKDatabase *)database databaseScope] forStore:a4 inContext:a3 error:&v34];
        if (v34)
        {
          v19 = objc_autoreleasePoolPush();
          v8 = obj;
          Stream = __PFCloudKitLoggingGetStream();
          v21 = Stream;
          if (__ckLoggingOverride == 17)
          {
            v22 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v22 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(Stream, v22))
          {
            *buf = 136315906;
            v36 = "[PFCloudKitImporterZoneChangedWorkItem commitMetadataChangesWithContext:forStore:error:]";
            v37 = 1024;
            v38 = 309;
            v39 = 2112;
            v40 = v14;
            v41 = 2112;
            v42 = v34;
            _os_log_impl(&dword_18565F000, v21, v22, "CoreData+CloudKit: %s(%d): Unable to fetch zone metadata for zone: %@\n%@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v19);
          v18 = 0;
          goto LABEL_20;
        }

        v16 = v15;
        [(NSManagedObject *)v15 setCurrentChangeToken:[(NSMutableDictionary *)self->_fetchedZoneIDToChangeToken objectForKey:v14]];
        -[NSManagedObject setNeedsImport:](v16, "setNeedsImport:", [-[NSMutableDictionary objectForKey:](self->_fetchedZoneIDToMoreComing objectForKey:{v14), "BOOLValue"}]);
        -[NSManagedObject setLastFetchDate:](v16, "setLastFetchDate:", [MEMORY[0x1E695DF00] date]);
        ++v11;
      }

      while (v9 != v11);
      v8 = obj;
      v17 = [obj countByEnumeratingWithState:&v30 objects:v43 count:16];
      v9 = v17;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v29.receiver = self;
  v29.super_class = PFCloudKitImporterZoneChangedWorkItem;
  v18 = [(PFCloudKitImportRecordsWorkItem *)&v29 commitMetadataChangesWithContext:a3 forStore:a4 error:&v34, v27];
LABEL_20:

  if (!v18)
  {
    if (v34)
    {
      if (v27)
      {
        *v27 = v34;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImporterZoneChangedWorkItem.m";
        v37 = 1024;
        v38 = 332;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v24 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImporterZoneChangedWorkItem.m";
        v37 = 1024;
        v38 = 332;
        _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

@end