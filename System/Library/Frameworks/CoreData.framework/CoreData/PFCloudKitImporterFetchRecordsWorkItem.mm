@interface PFCloudKitImporterFetchRecordsWorkItem
- (PFCloudKitImporterFetchRecordsWorkItem)initWithOptions:(id)a3 request:(id)a4;
- (id)description;
- (id)entityNameToAttributesToUpdate;
- (void)dealloc;
- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)a3 completion:(id)a4;
@end

@implementation PFCloudKitImporterFetchRecordsWorkItem

- (PFCloudKitImporterFetchRecordsWorkItem)initWithOptions:(id)a3 request:(id)a4
{
  v6.receiver = self;
  v6.super_class = PFCloudKitImporterFetchRecordsWorkItem;
  v4 = [(PFCloudKitImportRecordsWorkItem *)&v6 initWithOptions:a3 request:a4];
  if (v4)
  {
    v4->_updatedObjectIDs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_failedObjectIDsToError = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_recordIDToObjectID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_operationsToExecute = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

- (void)dealloc
{
  self->_updatedObjectIDs = 0;

  self->_failedObjectIDsToError = 0;
  self->_recordIDToObjectID = 0;

  self->_operationsToExecute = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImporterFetchRecordsWorkItem;
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
  recordIDToObjectID = self->_recordIDToObjectID;
  [v8 appendFormat:@" { %@ %@ %@ %@ }", self->_updatedObjectIDs, self->_failedObjectIDsToError, recordIDToObjectID, self->_operationsToExecute];
  objc_autoreleasePoolPop(v3);

  return v8;
}

- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)a3 completion:(id)a4
{
  v76 = *MEMORY[0x1E69E9840];
  if (self)
  {
    options = self->super.super._options;
  }

  else
  {
    options = 0;
  }

  v7 = options;
  v41 = v7;
  if (v7)
  {
    database = v7->_database;
  }

  else
  {
    database = 0;
  }

  v39 = database;
  if (self)
  {
    v9 = self->super.super._options;
    request = self->super.super._request;
    if (v9)
    {
      v9 = v9->_monitor;
    }
  }

  else
  {
    request = 0;
    v9 = 0;
  }

  v42 = v9;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 1;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3052000000;
  v61 = __Block_byref_object_copy__31;
  v62 = __Block_byref_object_dispose__31;
  v63 = 0;
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke;
  v57[3] = &unk_1E6EC4178;
  v57[4] = v42;
  v57[5] = request;
  v46 = v11;
  v57[6] = v11;
  v57[7] = a3;
  v57[8] = self;
  v57[9] = v43;
  v57[10] = &v58;
  v57[11] = &v64;
  [(PFCloudKitStoreMonitor *)v42 performBlock:v57];
  if (*(v65 + 24) == 1)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v12 = self;
    if (self)
    {
      v13 = self->super.super._request;
      if (v13)
      {
        requestCompletionBlock = v13[1].super._requestCompletionBlock;
      }

      else
      {
        requestCompletionBlock = 0;
      }

      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([v43 count] <= requestCompletionBlock)
      {
        if ([v43 count])
        {
          [v15 addObject:v43];
        }
      }

      else
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = [v43 count];
          v19 = v17 + requestCompletionBlock;
          v20 = requestCompletionBlock;
          if (v17 + requestCompletionBlock > v18)
          {
            v20 = v16 + [v43 count];
          }

          [v15 addObject:{objc_msgSend(v43, "subarrayWithRange:", v17, v20)}];
          v16 -= requestCompletionBlock;
          v17 += requestCompletionBlock;
        }

        while (v19 < [v43 count]);
      }

      obj = v15;
      v24 = [obj countByEnumeratingWithState:&v53 objects:v75 count:{16, v40}];
    }

    else
    {
      obj = 0;
      v24 = [0 countByEnumeratingWithState:&v53 objects:v75 count:{16, v39}];
    }

    v25 = v24;
    if (v24)
    {
      v45 = *v54;
      do
      {
        v26 = 0;
        do
        {
          if (*v54 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v53 + 1) + 8 * v26);
          v28 = objc_alloc_init(getCloudKitCKFetchRecordsOperationClass());
          v29 = [v28 operationID];
          if ([(NSCloudKitMirroringRequest *)request options])
          {
            [(NSCloudKitMirroringRequestOptions *)[(NSCloudKitMirroringRequest *)request options] applyToOperation:v28];
          }

          [v28 setRecordIDs:v27];
          [v28 setDesiredKeys:v46];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_5;
          v52[3] = &unk_1E6EC41A0;
          v52[4] = request;
          [v28 setPerRecordProgressBlock:v52];
          objc_initWeak(location, v12);
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_26;
          v50[3] = &unk_1E6EC41C8;
          objc_copyWeak(&v51, location);
          [v28 setPerRecordCompletionBlock:v50];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2_28;
          v48[3] = &unk_1E6EC41F0;
          objc_copyWeak(&v49, location);
          v48[4] = v29;
          v48[5] = a4;
          [v28 setFetchRecordsCompletionBlock:v48];
          [(NSMutableDictionary *)v12->_operationsToExecute setObject:v28 forKey:v29];

          objc_destroyWeak(&v49);
          objc_destroyWeak(&v51);
          objc_destroyWeak(location);
          ++v26;
        }

        while (v25 != v26);
        v25 = [obj countByEnumeratingWithState:&v53 objects:v75 count:16];
      }

      while (v25);
    }

    if ([(NSMutableDictionary *)v12->_operationsToExecute count])
    {
      if (v41)
      {
        v30 = v41->_database;
      }

      else
      {
        v30 = 0;
      }

      -[CKDatabase addOperation:](v30, "addOperation:", [-[NSMutableDictionary allValues](v12->_operationsToExecute "allValues")]);
      goto LABEL_52;
    }

    if (!a4)
    {
      goto LABEL_52;
    }

    v31 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v33 = Stream;
    v34 = OS_LOG_TYPE_DEBUG;
    if (__ckLoggingOverride > 0xFu)
    {
      if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
      {
        goto LABEL_47;
      }
    }

    else if (__ckLoggingOverride >= 2u)
    {
      goto LABEL_47;
    }

    v34 = __ckLoggingOverride;
LABEL_47:
    if (os_log_type_enabled(Stream, v34))
    {
      v35 = [(NSCloudKitMirroringImportRequest *)request objectIDsToFetch];
      *location = 136315906;
      *&location[4] = "[PFCloudKitImporterFetchRecordsWorkItem executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:completion:]";
      v69 = 1024;
      v70 = 195;
      v71 = 2112;
      v72 = request;
      v73 = 2112;
      v74 = v35;
      _os_log_impl(&dword_18565F000, v33, v34, "CoreData+CloudKit: %s(%d): Fetch records request did not match any records in the store: %@\n%@", location, 0x26u);
    }

    objc_autoreleasePoolPop(v31);
    if (v42)
    {
      isa = v42[1].super.isa;
    }

    else
    {
      isa = 0;
    }

    v37 = [(PFCloudKitImporterFetchRecordsWorkItem *)v12 createMirroringResultForRequest:v12->super.super._request storeIdentifier:isa success:1 madeChanges:0 error:0];
    (*(a4 + 2))(a4, v37);

    goto LABEL_52;
  }

  if (a4)
  {
    if (self)
    {
      v21 = self->super.super._request;
    }

    else
    {
      v21 = 0;
    }

    if (v42)
    {
      v22 = v42[1].super.isa;
    }

    else
    {
      v22 = 0;
    }

    v23 = [(PFCloudKitImporterFetchRecordsWorkItem *)self createMirroringResultForRequest:v21 storeIdentifier:v22 success:0 madeChanges:0 error:v59[5], v39];
    (*(a4 + 2))(a4, v23);
  }

LABEL_52:

  v59[5] = 0;
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);
  v38 = *MEMORY[0x1E69E9840];
}

void __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 32));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v5 = [(PFCloudKitStoreMonitor *)v4 retainedMonitoredStore];
  if (v5)
  {
    if ([objc_msgSend(*(a1 + 40) "entityNameToAttributesToFetch")])
    {
      v6 = [*(a1 + 40) entityNameToAttributesToFetch];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2;
      v16[3] = &unk_1E6EC28F8;
      v16[4] = *(a1 + 48);
      [v6 enumerateKeysAndObjectsUsingBlock:v16];
    }

    else
    {
      v9 = +[PFCloudKitSerializer newSetOfRecordKeysForEntitiesInConfiguration:inManagedObjectModel:includeCKAssetsForFileBackedFutures:](PFCloudKitSerializer, [v5 configurationName], objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectModel"), 1);
      [*(a1 + 48) addObjectsFromArray:{objc_msgSend(v9, "allObjects")}];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_4;
    v12[3] = &unk_1E6EC4150;
    v12[4] = *(a1 + 40);
    v12[5] = v5;
    v10 = *(a1 + 72);
    v13 = *(a1 + 56);
    v14 = v10;
    v15 = *(a1 + 88);
    [v13 performBlockAndWait:v12];
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    v18[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(*(a1 + 40), "requestIdentifier")];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *(*(*(a1 + 80) + 8) + 40) = [v7 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v8];
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_3;
  v4[3] = &unk_1E6EC4128;
  v4[4] = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

void __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [PFCloudKitSerializer newSetOfRecordKeysForAttribute:a2 includeCKAssetsForFileBackedFutures:1];
  [*(a1 + 32) addObjectsFromArray:{objc_msgSend(v3, "allObjects")}];
}

id __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[NSCKRecordMetadata metadataForObjectIDs:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, [*(a1 + 32) objectIDsToFetch], *(a1 + 40), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
  v3 = v2;
  if (v2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    result = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    v5 = result;
    if (result)
    {
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v9 = [(NSCKRecordMetadata *)v8 createRecordID];
          v10 = [(NSCKRecordMetadata *)v8 createObjectIDForLinkedRow];
          [*(*(a1 + 56) + 168) setObject:v10 forKey:v9];
          [*(a1 + 64) addObject:v9];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    result = *(*(*(a1 + 72) + 8) + 40);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_5(uint64_t a1, uint64_t a2, double a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v8 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v9 = 17;
  }

  else
  {
    v9 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v9 = 16;
  }

  if (__ckLoggingOverride)
  {
    v10 = v9;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v10))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [*(a1 + 32) requestIdentifier];
    v16 = 136316418;
    v17 = "[PFCloudKitImporterFetchRecordsWorkItem executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:completion:]_block_invoke_5";
    v18 = 1024;
    v19 = 159;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = a2;
    v26 = 2048;
    v27 = a3;
    _os_log_impl(&dword_18565F000, v8, v10, "CoreData+CloudKit: %s(%d): %@ '%@': %@ %f", &v16, 0x3Au);
  }

  objc_autoreleasePoolPop(v6);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_26(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_24;
  }

  v24 = WeakRetained;
  if (!a4)
  {
    WeakRetained = [objc_msgSend(objc_msgSend(a2 "recordID")];
    v8 = v24;
    if (WeakRetained)
    {
      goto LABEL_24;
    }

    v15 = [*(v24 + 168) objectForKey:a3];
    if (v15)
    {
      [*(v24 + 152) addObject:v15];
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = a3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetch operation was notified about an updated recordID that finished that doesn't have an objectID: %@\n", buf, 0xCu);
      }

      v20 = _PFLogGetLogStream(17);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);
      v16 = v24;
      if (!v21)
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v26 = a3;
      _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Fetch operation was notified about an updated recordID that finished that doesn't have an objectID: %@", buf, 0xCu);
    }

    v16 = v24;
LABEL_22:
    WeakRetained = [v16 addUpdatedRecord:a2];
    goto LABEL_23;
  }

  v9 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v11 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v12 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v12 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(Stream, v12))
  {
    v13 = *(v24 + 16);
    *buf = 136316162;
    v26 = "[PFCloudKitImporterFetchRecordsWorkItem fetchFinishedForRecord:withID:error:]";
    v27 = 1024;
    *v28 = 248;
    *&v28[4] = 2112;
    *&v28[6] = v13;
    v29 = 2112;
    v30 = a3;
    v31 = 2112;
    v32 = a4;
    _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): %@ encountered error while fetching record %@\n%@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v9);
  v8 = v24;
  if (a3)
  {
    v14 = [*(v24 + 168) objectForKey:a3];
    if (v14)
    {
      WeakRetained = [*(v24 + 160) setObject:a4 forKey:v14];
LABEL_23:
      v8 = v24;
      goto LABEL_24;
    }

    v17 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = a3;
      v27 = 2112;
      *v28 = a4;
      _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetch operation was notified about a recordID that finished with an error that doesn't have an objectID: %@ - %@\n", buf, 0x16u);
    }

    v18 = _PFLogGetLogStream(17);
    WeakRetained = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);
    v8 = v24;
    if (WeakRetained)
    {
      *buf = 138412546;
      v26 = a3;
      v27 = 2112;
      *v28 = a4;
      _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Fetch operation was notified about a recordID that finished with an error that doesn't have an objectID: %@ - %@", buf, 0x16u);
      goto LABEL_23;
    }
  }

LABEL_24:
  v22 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8](WeakRetained, v8);
}

void __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2_28(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v25 = WeakRetained;
    v8 = objc_autoreleasePoolPush();
    v9 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
    [v25[22] removeObjectForKey:v7];
    if (a3)
    {
      v10 = [a3 domain];
      if ([v10 isEqualToString:getCloudKitCKErrorDomain()] && objc_msgSend(a3, "code") == 2)
      {
        v24 = v8;
        v11 = [a3 userInfo];
        v12 = [v11 objectForKey:getCloudKitCKPartialErrorsByItemIDKey()];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v27;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v27 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v26 + 1) + 8 * i);
              v18 = [v25[21] objectForKey:v17];
              if (v18)
              {
                [v25[20] setObject:objc_msgSend(v12 forKey:{"objectForKey:", v17), v18}];
              }

              else
              {
                LogStream = _PFLogGetLogStream(17);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v31 = v17;
                  v32 = 2112;
                  v33 = a3;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetch operation was notified via partial failure about a recordID that doesn't have an objectID: %@ - %@\n", buf, 0x16u);
                }

                v20 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v31 = v17;
                  v32 = 2112;
                  v33 = a3;
                  _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Fetch operation was notified via partial failure about a recordID that doesn't have an objectID: %@ - %@", buf, 0x16u);
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v14);
        }

        [(PFCloudKitImportRecordsWorkItem *)v25 checkAndApplyChangesIfNeeded:?];
        v8 = v24;
        v9 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
      }

      else
      {
        [v25[11] addObject:a3];
      }
    }

    else
    {
      [(PFCloudKitImportRecordsWorkItem *)v25 checkAndApplyChangesIfNeeded:?];
    }

    if ([*(v25 + v9[193]) count])
    {
      v21 = v25[1];
      if (v21)
      {
        v22 = v21[1];
      }

      else
      {
        v22 = 0;
      }

      [v22 addOperation:{objc_msgSend(objc_msgSend(*(v25 + v9[193]), "allValues"), "objectAtIndexedSubscript:", 0)}];
    }

    else
    {
      [(PFCloudKitImportRecordsWorkItem *)v25 fetchOperationFinishedWithError:v6 completion:?];
    }

    objc_autoreleasePoolPop(v8);
    WeakRetained = v25;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)entityNameToAttributesToUpdate
{
  v2 = self;
  if (self)
  {
    self = self->super.super._request;
  }

  result = [-[PFCloudKitImporterFetchRecordsWorkItem entityNameToAttributesToFetch](self "entityNameToAttributesToFetch")];
  if (result)
  {
    if (v2)
    {
      request = v2->super.super._request;
    }

    else
    {
      request = 0;
    }

    return [(NSCloudKitMirroringImportRequest *)request entityNameToAttributesToFetch];
  }

  return result;
}

@end