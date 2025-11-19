@interface PFCloudKitCKQueryBackedImportWorkItem
- (BOOL)applyAccumulatedChangesToStore:(id)a3 inManagedObjectContext:(id)a4 withStoreMonitor:(id)a5 madeChanges:(BOOL *)a6 error:(id *)a7;
- (BOOL)commitMetadataChangesWithContext:(id)a3 forStore:(id)a4 error:(id *)a5;
- (BOOL)updateMetadataForAccumulatedChangesInContext:(id)a3 inStore:(id)a4 error:(id *)a5;
- (id)description;
- (id)initForRecordType:(id)a3 withOptions:(id)a4 request:(id)a5;
- (void)addUpdatedRecord:(id)a3;
- (void)dealloc;
- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)a3 completion:(id)a4;
@end

@implementation PFCloudKitCKQueryBackedImportWorkItem

- (id)initForRecordType:(id)a3 withOptions:(id)a4 request:(id)a5
{
  v10.receiver = self;
  v10.super_class = PFCloudKitCKQueryBackedImportWorkItem;
  v7 = [(PFCloudKitImportRecordsWorkItem *)&v10 initWithOptions:a4 request:a5];
  if (v7)
  {
    v7->_recordType = a3;
    if (a4)
    {
      v8 = *(a4 + 3);
    }

    else
    {
      v8 = 0;
    }

    v7->_zoneIDToQuery = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [v8 databaseScope]);
  }

  return v7;
}

- (void)dealloc
{
  self->_maxModificationDate = 0;

  self->_queryCursor = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitCKQueryBackedImportWorkItem;
  [(PFCloudKitImportRecordsWorkItem *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v8.receiver = self;
  v8.super_class = PFCloudKitCKQueryBackedImportWorkItem;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:{-[PFCloudKitImportRecordsWorkItem description](&v8, sel_description)}];
  v5 = v4;
  maxModificationDate = self->_maxModificationDate;
  if (!maxModificationDate)
  {
    maxModificationDate = @"nil";
  }

  [v4 appendFormat:@" { %@:%@:%@ }", self->_zoneIDToQuery, self->_recordType, maxModificationDate];
  objc_autoreleasePoolPop(v3);
  return v5;
}

- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)a3 completion:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v14 = [NSCloudKitMirroringResult alloc];
    request = 0;
    v8 = 0;
    goto LABEL_24;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3052000000;
  v39 = __Block_byref_object_copy__7;
  v40 = __Block_byref_object_dispose__7;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  options = self->super.super._options;
  if (options)
  {
    monitor = options->_monitor;
  }

  else
  {
    monitor = 0;
  }

  location[0] = MEMORY[0x1E69E9820];
  location[1] = 3221225472;
  location[2] = __101__PFCloudKitCKQueryBackedImportWorkItem_newCKQueryOperationFromMetadataInManagedObjectContext_error___block_invoke;
  location[3] = &unk_1E6EC1AA0;
  location[4] = monitor;
  location[5] = a3;
  location[6] = self;
  location[7] = &v26;
  location[8] = &v32;
  location[9] = &v36;
  [(PFCloudKitStoreMonitor *)monitor performBlock:?];
  if (v33[3])
  {
    v8 = 0;
  }

  else
  {
    v8 = v37[5];
    if (!v8)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v43 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
        v44 = 1024;
        v45 = 193;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v43 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
        v44 = 1024;
        v45 = 193;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v27[5] = 0;
  }

  v37[5] = 0;
  v11 = v27[5];
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  if (!v11)
  {
    v14 = [NSCloudKitMirroringResult alloc];
    v16 = self->super.super._options;
    request = self->super.super._request;
    if (v16)
    {
      v17 = v16->_monitor;
      if (v17)
      {
        storeIdentifier = v17->_storeIdentifier;
LABEL_21:
        v19 = [(NSCloudKitMirroringResult *)v14 initWithRequest:request storeIdentifier:storeIdentifier success:0 madeChanges:0 error:v8];
        (*(a4 + 2))(a4, v19);

        v11 = 0;
        goto LABEL_22;
      }
    }

LABEL_24:
    storeIdentifier = 0;
    goto LABEL_21;
  }

  objc_initWeak(location, self);
  if ([(NSCloudKitMirroringRequest *)self->super.super._request options])
  {
    [(NSCloudKitMirroringRequestOptions *)[(NSCloudKitMirroringRequest *)self->super.super._request options] applyToOperation:v11];
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __120__PFCloudKitCKQueryBackedImportWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke;
  v23[3] = &unk_1E6EC1A50;
  objc_copyWeak(&v24, location);
  [v11 setRecordMatchedBlock:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __120__PFCloudKitCKQueryBackedImportWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2;
  v21[3] = &unk_1E6EC1A78;
  objc_copyWeak(&v22, location);
  v21[4] = a4;
  [v11 setQueryCompletionBlock:v21];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(location);
  v12 = self->super.super._options;
  if (v12)
  {
    database = v12->_database;
  }

  else
  {
    database = 0;
  }

  [(CKDatabase *)database addOperation:v11];
LABEL_22:

  v20 = *MEMORY[0x1E69E9840];
}

void __120__PFCloudKitCKQueryBackedImportWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      [WeakRetained addUpdatedRecord:a3];
      WeakRetained = v5;
    }
  }
}

void __120__PFCloudKitCKQueryBackedImportWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = 17;
    }

    else
    {
      v10 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v10 = 16;
    }

    if (__ckLoggingOverride)
    {
      v11 = v10;
    }

    else
    {
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v11))
    {
      *buf = 136316162;
      v20 = "[PFCloudKitCKQueryBackedImportWorkItem queryOperationFinishedWithCursor:error:completion:]";
      v21 = 1024;
      v22 = 119;
      v23 = 2112;
      v24 = WeakRetained;
      v25 = 2112;
      v26 = a2;
      v27 = 2112;
      v28 = a3;
      _os_log_impl(&dword_18565F000, v9, v11, "CoreData+CloudKit: %s(%d): %@: Finished with cursor: %@\n%@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v7);
    if (a3)
    {
      v12 = [a3 domain];
      if (![v12 isEqualToString:getCloudKitCKErrorDomain()] || objc_msgSend(a3, "code") != 11)
      {
        goto LABEL_24;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = __PFCloudKitLoggingGetStream();
      v15 = v14;
      if (__ckLoggingOverride == 17)
      {
        v16 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v16 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v14, v16))
      {
        *buf = 136315906;
        v20 = "[PFCloudKitCKQueryBackedImportWorkItem queryOperationFinishedWithCursor:error:completion:]";
        v21 = 1024;
        v22 = 124;
        v23 = 2112;
        v24 = WeakRetained;
        v25 = 2112;
        v26 = a3;
        _os_log_impl(&dword_18565F000, v15, v16, "CoreData+CloudKit: %s(%d): %@: Failed due to querying for an unknown record type (not fatal, schema needs to be initialized): %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v13);
    }

    else if (a2)
    {
      a3 = 0;
      WeakRetained[21] = a2;
LABEL_24:
      [(PFCloudKitImportRecordsWorkItem *)WeakRetained fetchOperationFinishedWithError:a3 completion:v6];
      goto LABEL_25;
    }

    a3 = 0;
    goto LABEL_24;
  }

LABEL_25:
  v17 = *MEMORY[0x1E69E9840];
}

void __101__PFCloudKitCKQueryBackedImportWorkItem_newCKQueryOperationFromMetadataInManagedObjectContext_error___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((v3 + 32));
    }

    else
    {
      WeakRetained = 0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __101__PFCloudKitCKQueryBackedImportWorkItem_newCKQueryOperationFromMetadataInManagedObjectContext_error___block_invoke_2;
    v11[3] = &unk_1E6EC1AA0;
    v5 = *(a1 + 40);
    v11[4] = *(a1 + 48);
    v11[5] = v2;
    v11[6] = v5;
    v12 = *(a1 + 56);
    v13 = *(a1 + 72);
    [v5 performBlockAndWait:v11];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = *MEMORY[0x1E696A250];
    v14 = *MEMORY[0x1E696A588];
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(v8 + 16);
    }

    else
    {
      v9 = 0;
    }

    v15[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(v9, "requestIdentifier")];
    *(*(*(a1 + 72) + 8) + 40) = [v6 initWithDomain:v7 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __101__PFCloudKitCKQueryBackedImportWorkItem_newCKQueryOperationFromMetadataInManagedObjectContext_error___block_invoke_2(uint64_t a1)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, *(v2 + 176), [v4 databaseScope], *(a1 + 40), *(a1 + 48), v12);
  if (v5 && ((v6 = *(a1 + 32)) == 0 ? (v7 = 0) : (v7 = *(v6 + 152)), v8 = [NSCKRecordZoneQuery zoneQueryForRecordType:v7 inZone:v5 inStore:*(a1 + 40) managedObjectContext:*(a1 + 48) error:v12], (v9 = v8) != 0))
  {
    v10 = [(NSCKRecordZoneQuery *)v8 createQueryForUpdatingRecords];
    *(*(*(a1 + 56) + 8) + 40) = [objc_alloc(getCloudKitCKQueryOperationClass()) initWithQuery:v10];
    [*(*(*(a1 + 56) + 8) + 40) setZoneID:*(*(a1 + 32) + 176)];
    [*(*(*(a1 + 56) + 8) + 40) setCursor:{-[NSManagedObject queryCursor](v9, "queryCursor")}];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 40) = v12[0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addUpdatedRecord:(id)a3
{
  v4 = self;
  if (self)
  {
    self = self->super._encounteredErrors;
  }

  if (![(PFCloudKitCKQueryBackedImportWorkItem *)self count])
  {
    maxModificationDate = v4->_maxModificationDate;
    if (!maxModificationDate)
    {
      v6 = 0;
      goto LABEL_8;
    }

    if (-[NSDate compare:](maxModificationDate, "compare:", [a3 modificationDate]) == NSOrderedAscending)
    {
      v6 = v4->_maxModificationDate;
LABEL_8:

      v4->_maxModificationDate = [a3 modificationDate];
    }
  }

  v7.receiver = v4;
  v7.super_class = PFCloudKitCKQueryBackedImportWorkItem;
  [(PFCloudKitImportRecordsWorkItem *)&v7 addUpdatedRecord:a3];
}

- (BOOL)applyAccumulatedChangesToStore:(id)a3 inManagedObjectContext:(id)a4 withStoreMonitor:(id)a5 madeChanges:(BOOL *)a6 error:(id *)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v20.receiver = self;
  v20.super_class = PFCloudKitCKQueryBackedImportWorkItem;
  v24 = [(PFCloudKitImportRecordsWorkItem *)&v20 applyAccumulatedChangesToStore:a3 inManagedObjectContext:a4 withStoreMonitor:a5 madeChanges:a6 error:&v30];
  if (*(v22 + 24) == 1)
  {
    if (!a5 || (*(a5 + 21) & 1) == 0)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __130__PFCloudKitCKQueryBackedImportWorkItem_applyAccumulatedChangesToStore_inManagedObjectContext_withStoreMonitor_madeChanges_error___block_invoke;
      v19[3] = &unk_1E6EC1900;
      v19[4] = self;
      v19[5] = a3;
      v19[6] = a4;
      v19[7] = &v25;
      v19[8] = &v21;
      [a4 performBlockAndWait:v19];
    }
  }

  else
  {
    v12 = v26[5];
  }

  if ((v22[3] & 1) == 0)
  {
    v16 = v26[5];
    if (v16)
    {
      if (a7)
      {
        *a7 = v16;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
        v33 = 1024;
        v34 = 271;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v18 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
        v33 = 1024;
        v34 = 271;
        _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v26[5] = 0;
  v13 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

id __130__PFCloudKitCKQueryBackedImportWorkItem_applyAccumulatedChangesToStore_inManagedObjectContext_withStoreMonitor_madeChanges_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, *(v2 + 176), [v4 databaseScope], *(a1 + 40), *(a1 + 48), *(*(a1 + 56) + 8) + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 152);
    }

    else
    {
      v7 = 0;
    }

    v8 = [NSCKRecordZoneQuery zoneQueryForRecordType:v7 inZone:v5 inStore:*(a1 + 40) managedObjectContext:*(a1 + 48) error:*(*(a1 + 56) + 8) + 40];
    if (!v8)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_13:
      result = *(*(*(a1 + 56) + 8) + 40);
      goto LABEL_14;
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 160);
    }

    else
    {
      v10 = 0;
    }

    [(NSManagedObject *)v8 setMostRecentRecordModificationDate:v10];
    result = [*(a1 + 48) save:*(*(a1 + 56) + 8) + 40];
    *(*(*(a1 + 64) + 8) + 24) = result;
    if (!*(*(*(a1 + 64) + 8) + 24))
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = *(*(*(a1 + 56) + 8) + 40);
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)updateMetadataForAccumulatedChangesInContext:(id)a3 inStore:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0;
  zoneIDToQuery = self->_zoneIDToQuery;
  options = self->super.super._options;
  if (options)
  {
    database = options->_database;
  }

  else
  {
    database = 0;
  }

  v12 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:[(CKDatabase *)database databaseScope] inDatabaseWithScope:a4 forStore:a3 inContext:&v22 error:?];
  if (v12)
  {
    v13 = v12;
    v14 = [NSCKRecordZoneQuery zoneQueryForRecordType:v12 inZone:a4 inStore:a3 managedObjectContext:&v22 error:?];
    if (v14)
    {
      v15 = v14;
      [(NSManagedObject *)v14 setQueryCursor:self->_queryCursor];
      [(NSManagedObject *)v15 setLastFetchDate:[(NSManagedObject *)v13 lastFetchDate]];
      v21.receiver = self;
      v21.super_class = PFCloudKitCKQueryBackedImportWorkItem;
      if ([(PFCloudKitImportRecordsWorkItem *)&v21 updateMetadataForAccumulatedChangesInContext:a3 inStore:a4 error:a5])
      {
        LOBYTE(v16) = 1;
        goto LABEL_15;
      }
    }
  }

  if (v22)
  {
    if (a5)
    {
      LOBYTE(v16) = 0;
      *a5 = v22;
      goto LABEL_15;
    }

LABEL_14:
    LOBYTE(v16) = 0;
    goto LABEL_15;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
    v25 = 1024;
    v26 = 310;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v18 = _PFLogGetLogStream(17);
  v16 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);
  if (v16)
  {
    *buf = 136315394;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
    v25 = 1024;
    v26 = 310;
    _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_14;
  }

LABEL_15:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)commitMetadataChangesWithContext:(id)a3 forStore:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = 0;
  zoneIDToQuery = self->_zoneIDToQuery;
  options = self->super.super._options;
  if (options)
  {
    database = options->_database;
  }

  else
  {
    database = 0;
  }

  v12 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:[(CKDatabase *)database databaseScope] inDatabaseWithScope:a4 forStore:a3 inContext:&v31 error:?];
  if (v12)
  {
    v13 = v12;
    -[NSManagedObject setLastFetchDate:](v12, "setLastFetchDate:", [MEMORY[0x1E695DF00] date]);
    v14 = [NSCKRecordZoneQuery zoneQueryForRecordType:v13 inZone:a4 inStore:a3 managedObjectContext:&v31 error:?];
    if (v14)
    {
      v15 = v14;
      [(NSManagedObject *)v14 setQueryCursor:self->_queryCursor];
      -[NSManagedObject setLastFetchDate:](v15, "setLastFetchDate:", [MEMORY[0x1E695DF00] date]);
      [(NSManagedObject *)v13 setNeedsImport:0];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = [(NSManagedObject *)v13 queries];
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            if ([*(*(&v27 + 1) + 8 * i) queryCursor])
            {
              [(NSManagedObject *)v13 setNeedsImport:1];
              goto LABEL_15;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
      v26.receiver = self;
      v26.super_class = PFCloudKitCKQueryBackedImportWorkItem;
      if ([(PFCloudKitImportRecordsWorkItem *)&v26 commitMetadataChangesWithContext:a3 forStore:a4 error:&v31])
      {
        LOBYTE(v21) = 1;
        goto LABEL_25;
      }
    }
  }

  if (v31)
  {
    if (a5)
    {
      LOBYTE(v21) = 0;
      *a5 = v31;
      goto LABEL_25;
    }

LABEL_24:
    LOBYTE(v21) = 0;
    goto LABEL_25;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v33 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
    v34 = 1024;
    v35 = 358;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v23 = _PFLogGetLogStream(17);
  v21 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);
  if (v21)
  {
    *buf = 136315394;
    v33 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
    v34 = 1024;
    v35 = 358;
    _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_24;
  }

LABEL_25:
  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

@end