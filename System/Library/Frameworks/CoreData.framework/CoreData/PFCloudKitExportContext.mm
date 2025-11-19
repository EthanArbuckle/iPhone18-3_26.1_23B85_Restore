@interface PFCloudKitExportContext
- (BOOL)checkForObjectsNeedingExportInStore:(id)a3 andReturnCount:(unint64_t *)a4 withManagedObjectContext:(id)a5 error:(id *)a6;
- (BOOL)processAnalyzedHistoryInStore:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5;
- (PFCloudKitExportContext)initWithOptions:(id)a3;
- (uint64_t)currentBatchExceedsThresholds:(uint64_t)result;
- (uint64_t)insertRecordMetadataForObjectIDsInBatch:(void *)a3 inManagedObjectContext:(uint64_t)a4 withPendingTransactionNumber:(void *)a5 error:;
- (uint64_t)modifyRecordsOperationFinishedForStore:(uint64_t)a3 withSavedRecords:(uint64_t)a4 deletedRecordIDs:(uint64_t)a5 operationError:(void *)a6 managedObjectContext:(void *)a7 error:;
- (void)dealloc;
- (void)newOperationBySerializingDirtyObjectsInStore:(void *)a3 inManagedObjectContext:(void *)a4 error:;
@end

@implementation PFCloudKitExportContext

- (PFCloudKitExportContext)initWithOptions:(id)a3
{
  v6.receiver = self;
  v6.super_class = PFCloudKitExportContext;
  v4 = [(PFCloudKitExportContext *)&v6 init];
  if (v4)
  {
    v4->_options = a3;
    v4->_totalBytes = 0;
    v4->_totalRecords = 0;
    v4->_totalRecordIDs = 0;
    v4->_writtenAssetURLs = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v4;
}

- (void)dealloc
{
  self->_options = 0;

  self->_writtenAssetURLs = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitExportContext;
  [(PFCloudKitExportContext *)&v3 dealloc];
}

- (BOOL)processAnalyzedHistoryInStore:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__46;
  v17 = __Block_byref_object_dispose__46;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke;
  v12[3] = &unk_1E6EC2808;
  v12[4] = a3;
  v12[5] = a4;
  v12[7] = &v13;
  v12[8] = &v19;
  v12[6] = self;
  [a4 performBlockAndWait:v12];
  if ((v20[3] & 1) == 0)
  {
    v9 = v14[5];
    if (v9)
    {
      if (a5)
      {
        *a5 = v9;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
        v25 = 1024;
        v26 = 690;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
        v25 = 1024;
        v26 = 690;
        _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v14[5] = 0;
  v6 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v63 = 0;
  v64 = &v63;
  v65 = 0x3052000000;
  v66 = __Block_byref_object_copy__46;
  v67 = __Block_byref_object_dispose__46;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3052000000;
  v60 = __Block_byref_object_copy__46;
  v61 = __Block_byref_object_dispose__46;
  v62 = 0;
  v2 = [NSCKMetadataEntry entryForKey:*(a1 + 32) fromStore:*(a1 + 40) inManagedObjectContext:*(*(a1 + 56) + 8) + 40 error:?];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v3 = *(*(*(a1 + 56) + 8) + 40);
    v4 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v6 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v7 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v7 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v8 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 136315650;
      v70 = "[PFCloudKitExportContext processAnalyzedHistoryInStore:inManagedObjectContext:error:]_block_invoke";
      v71 = 1024;
      v72 = 77;
      v73 = 2112;
      v74 = v8;
      _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): Unable to read the last history token: %@", buf, 0x1Cu);
    }

    v9 = 0;
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v9 = [objc_msgSend(objc_msgSend(v2 "transformedValue")];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
    }
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v64[5] = v11;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v58[5] = v12;
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2020000000;
    v52[3] = 0;
    v15 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath]);
    [(NSFetchRequest *)v15 setReturnsObjectsAsFaults:0];
    [(NSFetchRequest *)v15 setPropertiesToFetch:&unk_1EF43D660];
    [(NSFetchRequest *)v15 setFetchBatchSize:200];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_16;
    v50[3] = &unk_1E6EC52C8;
    v16 = *(a1 + 40);
    v50[4] = *(a1 + 32);
    v50[5] = v13;
    v50[10] = &v57;
    v50[11] = v52;
    v50[12] = &v63;
    v50[13] = &v53;
    v50[6] = v14;
    v50[7] = v10;
    v51 = *(a1 + 56);
    v50[8] = v16;
    v50[9] = v9;
    [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v15 usingManagedObjectContext:v16 andApplyBlock:v50];
    v17 = *(a1 + 64);
    if (*(*(v17 + 8) + 24) == 1)
    {
      if (!v54[3])
      {
        goto LABEL_14;
      }

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_3;
      v43[3] = &unk_1E6EC52A0;
      v44 = *(a1 + 32);
      v18 = *(a1 + 56);
      v46 = &v63;
      v47 = v18;
      v43[4] = v9;
      v45 = v14;
      v48 = &v53;
      v49 = v17;
      [_PFRoutines wrapBlockInGuardedAutoreleasePool:v43];
      v17 = *(a1 + 64);
      if (*(*(v17 + 8) + 24))
      {
LABEL_14:
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_4;
        v36[3] = &unk_1E6EC52A0;
        v37 = *(a1 + 32);
        v19 = *(a1 + 56);
        v39 = &v57;
        v40 = v19;
        v36[4] = v9;
        v38 = v13;
        v41 = v52;
        v42 = v17;
        [_PFRoutines wrapBlockInGuardedAutoreleasePool:v36];
      }
    }

    v20 = objc_autoreleasePoolPush();
    v21 = __PFCloudKitLoggingGetStream();
    v22 = v21;
    v23 = __ckLoggingOverride;
    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
    {
      v23 = OS_LOG_TYPE_INFO;
    }

    if (os_log_type_enabled(v21, v23))
    {
      v24 = [v14 count];
      v25 = [v13 count];
      *buf = 136315906;
      v70 = "[PFCloudKitExportContext processAnalyzedHistoryInStore:inManagedObjectContext:error:]_block_invoke_5";
      v71 = 1024;
      v72 = 251;
      v73 = 2048;
      v74 = v24;
      v75 = 2048;
      v76 = v25;
      _os_log_impl(&dword_18565F000, v22, v23, "CoreData+CloudKit: %s(%d): Finished processing analyzed history with %lu metadata objects to create, %lu deleted rows without metadata.", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v20);
    v26 = *(a1 + 64);
    if (*(*(v26 + 8) + 24) == 1)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_33;
      v30[3] = &unk_1E6EC53E0;
      v30[4] = v14;
      v28 = *(a1 + 48);
      v27 = *(a1 + 56);
      v34 = v26;
      v35 = v27;
      v31 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      v32 = v28;
      v33 = v9;
      [_PFRoutines wrapBlockInGuardedAutoreleasePool:v30];
    }

    _Block_object_dispose(v52, 8);
    _Block_object_dispose(&v53, 8);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v10 = 0;
  }

  v64[5] = 0;
  v58[5] = 0;

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);
  v29 = *MEMORY[0x1E69E9840];
}

uint64_t __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_16(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v4 = a4;
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *(*(*(a1 + 120) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 112) + 8) + 40) = result;
    goto LABEL_41;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = v7;
  v9 = *v44;
  do
  {
    v10 = 0;
    do
    {
      if (*v44 != v9)
      {
        objc_enumerationMutation(a2);
      }

      v11 = *(*(&v43 + 1) + 8 * v10);
      v12 = [v11 analyzedObjectID];
      if (!v12)
      {
        [*(a1 + 64) deleteObject:v11];
        goto LABEL_22;
      }

      v13 = v12;
      v14 = MEMORY[0x1E696AD98];
      v15 = _sqlEntityForEntityDescription([*(a1 + 32) model], objc_msgSend(v12, "entity"));
      if (v15)
      {
        v16 = *(v15 + 184);
      }

      else
      {
        v16 = 0;
      }

      v17 = [v14 numberWithUnsignedInt:v16];
      v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "_referenceData64")}];
      if ([v11 finalChangeType] == 2)
      {
        v19 = [*(*(*(a1 + 80) + 8) + 40) objectForKey:v17];
        if (!v19)
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [*(*(*(a1 + 80) + 8) + 40) setObject:v19 forKey:v17];
        }

        [v19 addObject:v18];

        [*(a1 + 40) addObject:v13];
        v20 = *(a1 + 88);
      }

      else
      {
        if ([v11 finalChangeType] && objc_msgSend(v11, "finalChangeType") != 1)
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v48 = v11;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unhandled persistent history change type: %@\n", buf, 0xCu);
          }

          v23 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v48 = v11;
            _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Unhandled persistent history change type: %@", buf, 0xCu);
          }

          goto LABEL_21;
        }

        v21 = [*(*(*(a1 + 96) + 8) + 40) objectForKey:v17];
        if (!v21)
        {
          v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [*(*(*(a1 + 96) + 8) + 40) setObject:v21 forKey:v17];
        }

        [v21 addObject:v18];

        [*(a1 + 48) addObject:v13];
        v20 = *(a1 + 104);
      }

      ++*(*(v20 + 8) + 24);
LABEL_21:
      [*(a1 + 56) addObject:v13];
LABEL_22:
      ++v10;
    }

    while (v8 != v10);
    v24 = [a2 countByEnumeratingWithState:&v43 objects:v49 count:16];
    v8 = v24;
  }

  while (v24);
LABEL_30:
  result = [*(a1 + 64) hasChanges];
  if (result)
  {
    result = [*(a1 + 64) save:*(*(a1 + 112) + 8) + 40];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 120) + 8) + 24) = 0;
      result = *(*(*(a1 + 112) + 8) + 40);
    }
  }

  v26 = *(a1 + 120);
  if (*(*(v26 + 8) + 24) == 1)
  {
    v27 = *(a1 + 104);
    if (*(*(v27 + 8) + 24) >= 0x1F4uLL)
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_17;
      v42[3] = &unk_1E6EC52A0;
      v28 = *(a1 + 96);
      v29 = *(a1 + 32);
      v30 = *(a1 + 64);
      v42[4] = *(a1 + 72);
      v42[5] = v29;
      v31 = *(a1 + 112);
      v42[8] = v28;
      v42[9] = v31;
      v32 = *(a1 + 48);
      v42[6] = v30;
      v42[7] = v32;
      v42[10] = v27;
      v42[11] = v26;
      result = [_PFRoutines wrapBlockInGuardedAutoreleasePool:v42];
      v26 = *(a1 + 120);
    }

    v33 = *(a1 + 88);
    if (*(*(v33 + 8) + 24) >= 0x1F4uLL)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2;
      v41[3] = &unk_1E6EC52A0;
      v34 = *(a1 + 80);
      v35 = *(a1 + 64);
      v36 = *(a1 + 32);
      v37 = *(a1 + 40);
      v41[4] = *(a1 + 72);
      v41[5] = v36;
      v38 = *(a1 + 112);
      v41[8] = v34;
      v41[9] = v38;
      v41[6] = v35;
      v41[7] = v37;
      v41[10] = v33;
      v41[11] = v26;
      result = [_PFRoutines wrapBlockInGuardedAutoreleasePool:v41];
      v26 = *(a1 + 120);
    }
  }

  v4 = a4;
  if (!*(*(v26 + 8) + 24))
  {
LABEL_41:
    *v4 = 1;
  }

  v39 = *MEMORY[0x1E69E9840];
  return result;
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_17(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"needsUpload";
  v6[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v5[1] = @"needsCloudDelete";
  v6[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E110]];
  v5[2] = @"pendingExportTransactionNumber";
  v6[2] = [MEMORY[0x1E696ABC8] expressionForConstantValue:*(a1 + 32)];
  v2 = +[NSCKRecordMetadata batchUpdateMetadataMatchingEntityIdsAndPKs:withUpdates:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, *(*(*(a1 + 64) + 8) + 40), [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3], *(a1 + 40), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
  if (v2)
  {
    [*(a1 + 56) minusSet:v2];

    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 64) + 8) + 40) = result;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    result = *(*(*(a1 + 72) + 8) + 40);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"needsUpload";
  v2 = MEMORY[0x1E695E118];
  v7[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v6[1] = @"needsCloudDelete";
  v7[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v2];
  v6[2] = @"pendingExportTransactionNumber";
  v7[2] = [MEMORY[0x1E696ABC8] expressionForConstantValue:*(a1 + 32)];
  v3 = +[NSCKRecordMetadata batchUpdateMetadataMatchingEntityIdsAndPKs:withUpdates:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, *(*(*(a1 + 64) + 8) + 40), [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3], *(a1 + 40), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
  if (v3)
  {
    [*(a1 + 56) minusSet:v3];

    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 64) + 8) + 40) = result;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    result = *(*(*(a1 + 72) + 8) + 40);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_3(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"needsUpload";
  v6[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v5[1] = @"needsCloudDelete";
  v6[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E110]];
  v5[2] = @"pendingExportTransactionNumber";
  v6[2] = [MEMORY[0x1E696ABC8] expressionForConstantValue:*(a1 + 32)];
  v2 = +[NSCKRecordMetadata batchUpdateMetadataMatchingEntityIdsAndPKs:withUpdates:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, *(*(*(a1 + 64) + 8) + 40), [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3], *(a1 + 40), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
  if (v2)
  {
    [*(a1 + 56) minusSet:v2];

    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 64) + 8) + 40) = result;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    result = *(*(*(a1 + 72) + 8) + 40);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_4(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"needsUpload";
  v2 = MEMORY[0x1E695E118];
  v7[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v6[1] = @"needsCloudDelete";
  v7[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v2];
  v6[2] = @"pendingExportTransactionNumber";
  v7[2] = [MEMORY[0x1E696ABC8] expressionForConstantValue:*(a1 + 32)];
  v3 = +[NSCKRecordMetadata batchUpdateMetadataMatchingEntityIdsAndPKs:withUpdates:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, *(*(*(a1 + 64) + 8) + 40), [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3], *(a1 + 40), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
  if (v3)
  {
    [*(a1 + 56) minusSet:v3];

    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 64) + 8) + 40) = result;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    result = *(*(*(a1 + 72) + 8) + 40);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_33(uint64_t a1)
{
  v130 = *MEMORY[0x1E69E9840];
  v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v78 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  obj = objc_alloc_init(MEMORY[0x1E695DF90]);
  while (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if (![*(a1 + 32) count])
    {
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v4 = [obj countByEnumeratingWithState:&v111 objects:v129 count:16];
        if (v4)
        {
          v72 = *v112;
LABEL_8:
          v5 = 0;
          v74 = v4;
          while (1)
          {
            if (*v112 != v72)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v111 + 1) + 8 * v5);
            v7 = [obj objectForKey:v6];
            v76 = v5;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v8 = [v7 countByEnumeratingWithState:&v107 objects:v128 count:16];
            if (v8)
            {
              v9 = *v108;
LABEL_13:
              v10 = 0;
              while (1)
              {
                if (*v108 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v107 + 1) + 8 * v10);
                v12 = objc_autoreleasePoolPush();
                v13 = [v7 objectForKey:v11];
                v14 = [NSFetchRequest fetchRequestWithEntityName:v11];
                -[NSFetchRequest setPredicate:](v14, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v13]);
                [(NSFetchRequest *)v14 setFetchBatchSize:500];
                v15 = *(*(a1 + 56) + 8);
                if (v15)
                {
                  v16 = *(v15 + 16);
                }

                else
                {
                  v16 = 0;
                }

                v17 = [v16 preserveLegacyRecordMetadataBehavior];
                v18 = v17;
                if (v17 && [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 40) "persistentStoreCoordinator")])
                {
                  v127 = @"ckRecordID";
                  -[NSFetchRequest setPropertiesToFetch:](v14, "setPropertiesToFetch:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1]);
                }

                v19 = *(a1 + 40);
                v104[0] = MEMORY[0x1E69E9820];
                v104[1] = 3221225472;
                v104[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_53;
                v104[3] = &unk_1E6EC5318;
                v106 = v18;
                v20 = *(a1 + 64);
                v104[4] = v6;
                v104[5] = v20;
                v105 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
                v104[6] = v19;
                [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v14 usingManagedObjectContext:v19 andApplyBlock:v104];
                v21 = *(*(*(a1 + 72) + 8) + 24);
                objc_autoreleasePoolPop(v12);
                if (!v21)
                {
                  break;
                }

                if (v8 == ++v10)
                {
                  v22 = [v7 countByEnumeratingWithState:&v107 objects:v128 count:16];
                  v8 = v22;
                  if (v22)
                  {
                    goto LABEL_13;
                  }

                  break;
                }
              }
            }

            if (!*(*(*(a1 + 72) + 8) + 24))
            {
              break;
            }

            v5 = v76 + 1;
            if (v76 + 1 == v74)
            {
              v4 = [obj countByEnumeratingWithState:&v111 objects:v129 count:16];
              if (v4)
              {
                goto LABEL_8;
              }

              goto LABEL_29;
            }
          }
        }
      }

      break;
    }

    v2 = [*(a1 + 32) anyObject];
    [*(a1 + 32) removeObject:v2];
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2_34;
    v115[3] = &unk_1E6EC52F0;
    v3 = *(a1 + 32);
    v115[4] = *(a1 + 40);
    v115[5] = v2;
    v116 = *(a1 + 48);
    v121 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v117 = obj;
    v118 = v3;
    v119 = v78;
    v120 = v80;
    [_PFRoutines wrapBlockInGuardedAutoreleasePool:v115];
  }

LABEL_29:
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if ([v80 count])
    {
      v125[0] = @"needsUpload";
      v126[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
      v125[1] = @"needsCloudDelete";
      v126[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
      v23 = +[NSCKRecordMetadata batchUpdateMetadataMatchingEntityIdsAndPKs:withUpdates:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, v80, [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:2], *(a1 + 48), *(a1 + 40), (*(*(a1 + 80) + 8) + 40));
      if (v23)
      {
        [v78 minusSet:v23];
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v24 = *(*(*(a1 + 80) + 8) + 40);
      }
    }

    if ([*(a1 + 40) hasChanges] && (objc_msgSend(*(a1 + 40), "save:", *(*(a1 + 80) + 8) + 40) & 1) == 0)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v25 = *(*(*(a1 + 80) + 8) + 40);
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1 && ([NSCKHistoryAnalyzerState purgeAnalyzedHistoryFromStore:*(a1 + 40) withManagedObjectContext:(*(*(a1 + 80) + 8) + 40) error:?]& 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v26 = *(*(*(a1 + 80) + 8) + 40);
  }

  [*(a1 + 40) reset];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if ([+[NSCKMetadataEntry entryForKey:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry @"NSCloudKitMirroringDelegateScanForRowsMissingFromHistoryKey"] && ((v27 = *(*(a1 + 56) + 8)) == 0 ? (v28 = 0) : (v28 = *(v27 + 8)), objc_msgSend(v28, "databaseScope") == 2 || ((v29 = *(*(a1 + 56) + 8)) == 0 ? (v30 = 0) : (v30 = *(v29 + 8)), objc_msgSend(v30, "databaseScope") == 1)))
    {
      v31 = *(*(a1 + 56) + 8);
      if (v31)
      {
        v32 = *(v31 + 8);
      }

      else
      {
        v32 = 0;
      }

      v69 = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [v32 databaseScope]);
      v33 = *(*(a1 + 56) + 8);
      if (v33)
      {
        v34 = *(v33 + 8);
      }

      else
      {
        v34 = 0;
      }

      if (+[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v69, [v34 databaseScope], *(a1 + 48), *(a1 + 40), *(*(a1 + 80) + 8) + 40))
      {
        v98 = 0;
        v99 = &v98;
        v100 = 0x3052000000;
        v101 = __Block_byref_object_copy__46;
        v102 = __Block_byref_object_dispose__46;
        v103 = 0;
        v81 = [*(a1 + 48) model];
        v70 = [objc_msgSend(objc_msgSend(*(a1 + 48) "ancillarySQLModels")];
        v35 = [objc_msgSend(objc_msgSend(*(a1 + 40) "persistentStoreCoordinator")];
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v71 = v35;
        v79 = [v35 countByEnumeratingWithState:&v94 objects:v124 count:16];
        if (v79)
        {
          v77 = *v95;
LABEL_55:
          v36 = 0;
          while (1)
          {
            if (*v95 != v77)
            {
              objc_enumerationMutation(v71);
            }

            v84 = v36;
            v37 = *(*(&v94 + 1) + 8 * v36);
            obja = objc_autoreleasePoolPush();
            v38 = [v81 entityNamed:{objc_msgSend(v37, "name")}];
            if (!v38 || *(v38 + 160))
            {
              goto LABEL_87;
            }

            v93[0] = MEMORY[0x1E69E9820];
            v93[1] = 3221225472;
            v93[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2_57;
            v93[3] = &unk_1E6EC5340;
            v93[6] = &v98;
            v93[4] = v38;
            v93[5] = v70;
            v39 = [[NSSQLBlockRequestContext alloc] initWithBlock:v93 context:*(a1 + 40) sqlCore:*(a1 + 48)];
            [(NSSQLCore *)*(a1 + 48) dispatchRequest:v39 withRetries:0];
            v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v85 = v99[5];
            v41 = [v85 countByEnumeratingWithState:&v89 objects:v123 count:16];
            v75 = v39;
            if (v41)
            {
              v42 = 0;
              v43 = *v90;
              v44 = v40;
LABEL_62:
              v45 = 0;
              v46 = v42 + 1;
              v73 = v41 + v42;
              while (1)
              {
                if (*v90 != v43)
                {
                  objc_enumerationMutation(v85);
                }

                v47 = *(*(&v89 + 1) + 8 * v45);
                v48 = objc_autoreleasePoolPush();
                if ([v47 count] != 2)
                {

                  v67 = MEMORY[0x1E695DF30];
                  v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected number of items in the pk / ent array: %@", v47, @"NSCloudKitMirroringDelegateScanForRowsMissingFromHistoryKey"];
                  objc_exception_throw([v67 exceptionWithName:*MEMORY[0x1E695D930] reason:v68 userInfo:0]);
                }

                v49 = [*(a1 + 48) newObjectIDForEntity:_sqlCoreLookupSQLEntityForEntityID(*(a1 + 48) pk:{objc_msgSend(objc_msgSend(v47, "objectAtIndexedSubscript:", 1), "unsignedLongValue")), objc_msgSend(objc_msgSend(v47, "objectAtIndexedSubscript:", 0), "integerValue")}];
                [v44 addObject:v49];

                if (!(v46 % 0x64))
                {
                  if ([(PFCloudKitExportContext *)*(a1 + 56) insertRecordMetadataForObjectIDsInBatch:v44 inManagedObjectContext:*(a1 + 40) withPendingTransactionNumber:*(a1 + 64) error:(*(*(a1 + 80) + 8) + 40)])
                  {
                    if (([*(a1 + 40) save:*(*(a1 + 80) + 8) + 40] & 1) == 0)
                    {
                      *(*(*(a1 + 72) + 8) + 24) = 0;
                      v50 = *(*(*(a1 + 80) + 8) + 40);
                    }

                    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  else
                  {
                    *(*(*(a1 + 72) + 8) + 24) = 0;
                    v51 = *(*(*(a1 + 80) + 8) + 40);
                  }

                  [*(a1 + 40) reset];
                }

                v52 = *(*(*(a1 + 72) + 8) + 24);
                objc_autoreleasePoolPop(v48);
                if (!v52)
                {
                  break;
                }

                ++v45;
                ++v46;
                if (v41 == v45)
                {
                  v41 = [v85 countByEnumeratingWithState:&v89 objects:v123 count:16];
                  v42 = v73;
                  if (v41)
                  {
                    goto LABEL_62;
                  }

                  break;
                }
              }
            }

            else
            {
              v44 = v40;
            }

            if ([v44 count] && (-[PFCloudKitExportContext insertRecordMetadataForObjectIDsInBatch:inManagedObjectContext:withPendingTransactionNumber:error:](*(a1 + 56), v44, *(a1 + 40), *(a1 + 64), (*(*(a1 + 80) + 8) + 40)) & 1) == 0)
            {
              *(*(*(a1 + 72) + 8) + 24) = 0;
              v53 = *(*(*(a1 + 80) + 8) + 40);
            }

            if (*(*(*(a1 + 72) + 8) + 24) == 1 && [*(a1 + 40) hasChanges])
            {
              if (([*(a1 + 40) save:*(*(a1 + 80) + 8) + 40] & 1) == 0)
              {
                *(*(*(a1 + 72) + 8) + 24) = 0;
                v54 = *(*(*(a1 + 80) + 8) + 40);
              }

              [*(a1 + 40) reset];
            }

            if (*(*(*(a1 + 72) + 8) + 24))
            {
LABEL_87:

              v99[5] = 0;
              v55 = 1;
            }

            else
            {
              v55 = 0;
            }

            objc_autoreleasePoolPop(obja);
            if (!v55)
            {
              break;
            }

            v36 = v84 + 1;
            if (v84 + 1 == v79)
            {
              v56 = [v71 countByEnumeratingWithState:&v94 objects:v124 count:16];
              v79 = v56;
              if (v56)
              {
                goto LABEL_55;
              }

              break;
            }
          }
        }

        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          v57 = [NSCKMetadataEntry entryForKey:*(a1 + 48) fromStore:*(a1 + 40) inManagedObjectContext:*(*(a1 + 80) + 8) + 40 error:?];
          if (v57)
          {
            [*(a1 + 40) deleteObject:v57];
          }

          else
          {
            v60 = *(*(*(a1 + 80) + 8) + 40);
            if (v60)
            {
              v61 = v60;
              *(*(*(a1 + 72) + 8) + 24) = 0;
            }
          }

          if (*(*(*(a1 + 72) + 8) + 24) == 1 && ([*(a1 + 40) save:*(*(a1 + 80) + 8) + 40] & 1) == 0)
          {
            *(*(*(a1 + 72) + 8) + 24) = 0;
            v62 = *(*(*(a1 + 80) + 8) + 40);
          }
        }

        v99[5] = 0;
        _Block_object_dispose(&v98, 8);
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v59 = *(*(*(a1 + 80) + 8) + 40);
      }
    }

    else if (*(*(*(a1 + 80) + 8) + 40))
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v58 = *(*(*(a1 + 80) + 8) + 40);
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v63 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMoveReceipt entityPath]);
    -[NSFetchRequest setPredicate:](v63, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsCloudDelete == 1"]);
    [(NSFetchRequest *)v63 setFetchBatchSize:500];
    [(NSFetchRequest *)v63 setReturnsObjectsAsFaults:0];
    v122 = *(a1 + 48);
    -[NSFetchRequest setAffectedStores:](v63, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1]);
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_3_68;
    v86[3] = &unk_1E6EC5368;
    v64 = *(a1 + 40);
    v65 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v87 = vextq_s8(v64, v64, 8uLL);
    v88 = v65;
    [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v63 usingManagedObjectContext:v64.i64[0] andApplyBlock:v86];
  }

  v66 = *MEMORY[0x1E69E9840];
}

void __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2_34(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) existingObjectWithID:*(a1 + 40) error:*(*(a1 + 96) + 8) + 40];
  if (v2)
  {
    v3 = v2;
    v4 = [PFCloudKitSerializer createSetOfObjectIDsRelatedToObject:v2];
    if (![v4 count])
    {
LABEL_53:
      [*(a1 + 32) refreshObject:v3 mergeChanges:{objc_msgSend(v3, "hasChanges")}];
      goto LABEL_54;
    }

    v5 = [NSCKRecordZoneMetadata fetchZoneIDsAssignedToObjectsWithIDs:v4 fromStore:*(a1 + 48) inContext:*(a1 + 32) error:*(*(a1 + 96) + 8) + 40];
    v6 = v5;
    if (!v5)
    {
      *(*(*(a1 + 104) + 8) + 24) = 0;
      v16 = *(*(*(a1 + 96) + 8) + 40);
LABEL_52:

      goto LABEL_53;
    }

    v52 = v5;
    if ([v5 count])
    {
      if ([v6 count] == 1)
      {
        v7 = [v6 anyObject];
LABEL_29:
        v33 = v7;
LABEL_33:
        if (*(*(*(a1 + 104) + 8) + 24) == 1)
        {
          v40 = [*(a1 + 64) objectForKey:v33];
          if (!v40)
          {
            v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [*(a1 + 64) setObject:v40 forKey:v33];
          }

          v41 = [v40 objectForKey:{objc_msgSend(*(a1 + 40), "entityName")}];
          if (!v41)
          {
            v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            [v40 setObject:v41 forKey:{objc_msgSend(*(a1 + 40), "entityName")}];
          }

          [v41 addObject:*(a1 + 40)];

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v42 = [v4 countByEnumeratingWithState:&v53 objects:v57 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v54;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v54 != v44)
                {
                  objc_enumerationMutation(v4);
                }

                v46 = *(*(&v53 + 1) + 8 * i);
                if ([*(a1 + 72) containsObject:v46])
                {
                  [*(a1 + 72) removeObject:v46];
                  v47 = [*(a1 + 64) objectForKey:v33];
                  if (!v47)
                  {
                    v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    [*(a1 + 64) setObject:v47 forKey:v33];
                  }

                  v48 = [v47 objectForKey:{objc_msgSend(v46, "entityName")}];
                  if (!v48)
                  {
                    v48 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                    [v47 setObject:v48 forKey:{objc_msgSend(v46, "entityName")}];
                  }

                  [v48 addObject:v46];
                }
              }

              v43 = [v4 countByEnumeratingWithState:&v53 objects:v57 count:16];
            }

            while (v43);
          }
        }

        v6 = v52;
        goto LABEL_52;
      }

      if ([v6 count] < 2)
      {
        v33 = 0;
        goto LABEL_33;
      }

      *(*(*(a1 + 104) + 8) + 24) = 0;
      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = *MEMORY[0x1E696A250];
      v58 = *MEMORY[0x1E696A588];
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Object graph corruption detected. Objects related to '%@' are assigned to multiple zones: %@", *(a1 + 40), v6];
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v29 = v26;
      v30 = v27;
    }

    else
    {
      v17 = *(*(a1 + 56) + 8);
      if (v17)
      {
        v18 = *(v17 + 8);
      }

      else
      {
        v18 = 0;
      }

      if ([v18 databaseScope] != 3)
      {
        v31 = *(*(a1 + 56) + 8);
        if (v31)
        {
          v32 = *(v31 + 8);
        }

        else
        {
          v32 = 0;
        }

        v7 = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [v32 databaseScope]);
        goto LABEL_29;
      }

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

      v23 = 0x1E6EC0000uLL;
      if (os_log_type_enabled(Stream, v22))
      {
        v24 = *(a1 + 56);
        v51 = *(a1 + 48);
        v25 = objc_opt_class();
        *buf = 136316674;
        v63 = "[PFCloudKitExportContext processAnalyzedHistoryInStore:inManagedObjectContext:error:]_block_invoke_2";
        v64 = 1024;
        v65 = 276;
        v66 = 2112;
        v67 = v24;
        v68 = 2112;
        v69 = v51;
        v70 = 2112;
        v71 = NSStringFromClass(v25);
        v23 = 0x1E6EC0000;
        v72 = 2112;
        v73 = NSStringFromSelector(sel_shareManagedObjects_toShare_completion_);
        v74 = 2112;
        v75 = v3;
        _os_log_impl(&dword_18565F000, v21, v22, "CoreData+CloudKit: %s(%d): %@: %@ - Failed to assign an object to a record zone. This usually means the object exists in a shared database and must be assigned to a zone using [%@ %@]: %@", buf, 0x44u);
      }

      objc_autoreleasePoolPop(v19);
      *(*(*(a1 + 104) + 8) + 24) = 0;
      v34 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = *MEMORY[0x1E696A250];
      v60 = *MEMORY[0x1E696A588];
      v36 = MEMORY[0x1E696AEC0];
      v37 = *(v23 + 2760);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v61 = [v36 stringWithFormat:@"Failed to assign an object to a record zone. This usually means the object exists in a shared database and must be assigned to a zone using -[%@ %@]: %@", v39, NSStringFromSelector(sel_shareManagedObjects_toShare_completion_), objc_msgSend(v3, "objectID")];
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v29 = v34;
      v30 = v35;
    }

    v33 = 0;
    *(*(*(a1 + 96) + 8) + 40) = [v29 initWithDomain:v30 code:134060 userInfo:v28];
    goto LABEL_33;
  }

  if ([*(*(*(a1 + 96) + 8) + 40) code] == 133000 && (v8 = objc_msgSend(*(*(*(a1 + 96) + 8) + 40), "domain"), objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E696A250])))
  {
    *(*(*(a1 + 96) + 8) + 40) = 0;
    [*(a1 + 80) addObject:*(a1 + 40)];
    v9 = MEMORY[0x1E696AD98];
    v10 = _sqlEntityForEntityDescription([*(a1 + 48) model], objc_msgSend(*(a1 + 40), "entity"));
    if (v10)
    {
      v11 = *(v10 + 184);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v9 numberWithUnsignedInt:v11];
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "_referenceData64")}];
    v14 = [*(a1 + 88) objectForKey:v12];
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [*(a1 + 88) setObject:v14 forKey:v12];
    }

    [v14 addObject:v13];
  }

  else
  {
    v15 = *(*(*(a1 + 96) + 8) + 40);
    *(*(*(a1 + 104) + 8) + 24) = 0;
  }

LABEL_54:
  if (*(*(*(a1 + 104) + 8) + 24) == 1 && [objc_msgSend(*(a1 + 32) "insertedObjects")] >= 0x1F4)
  {
    if ([*(a1 + 32) save:*(*(a1 + 96) + 8) + 40])
    {
      [*(a1 + 32) reset];
    }

    else
    {
      *(*(*(a1 + 104) + 8) + 24) = 0;
      v49 = *(*(*(a1 + 96) + 8) + 40);
    }
  }

  v50 = *MEMORY[0x1E69E9840];
}

uint64_t __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_53(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(a2);
          }

          v11 = [NSCKRecordMetadata insertMetadataForObject:*(*(&v16 + 1) + 8 * v10) setRecordName:*(a1 + 72) inZoneWithID:*(a1 + 32) recordNamePrefix:0 error:*(*(a1 + 56) + 8) + 40];
          if (v11)
          {
            v12 = v11;
            [v11 setNeedsUpload:1];
            [v12 setNeedsCloudDelete:0];
            [v12 setPendingExportTransactionNumber:*(a1 + 40)];
          }

          else
          {
            v13 = *(*(*(a1 + 56) + 8) + 40);
            *(*(*(a1 + 64) + 8) + 24) = 0;
            *a4 = 1;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    result = [*(a1 + 48) save:*(*(a1 + 56) + 8) + 40];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      result = *(*(*(a1 + 56) + 8) + 40);
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 56) + 8) + 40) = result;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2_57(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  result = [(NSSQLiteConnection *)v3 createArrayOfPrimaryKeysAndEntityIDsForRowsWithoutRecordMetadataWithEntity:*(a1 + 40) metadataEntity:?];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (uint64_t)insertRecordMetadataForObjectIDsInBatch:(void *)a3 inManagedObjectContext:(uint64_t)a4 withPendingTransactionNumber:(void *)a5 error:
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v30 = 0;
    goto LABEL_36;
  }

  v44 = 0;
  v9 = [objc_msgSend(a2 "lastObject")];
  if (v9)
  {
    if (atomic_load((v9 + 124)))
    {
      v11 = *(v9 + 72);
    }

    else
    {
      do
      {
        v11 = v9;
        v9 = [v9 superentity];
      }

      while (v9);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", [v11 name]);
  -[NSFetchRequest setPredicate:](v12, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", a2]);
  v13 = [a3 executeFetchRequest:v12 error:&v44];
  if (!v13)
  {
    v31 = v44;
    goto LABEL_27;
  }

  v14 = v13;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v15)
  {
    v16 = v15;
    v37 = a5;
    v17 = *v41;
    v38 = 1;
    do
    {
      v18 = 0;
      do
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v40 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = *(a1 + 8);
        if (v21)
        {
          v22 = *(v21 + 8);
        }

        else
        {
          v22 = 0;
        }

        v23 = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [v22 databaseScope]);
        v24 = *(a1 + 8);
        if (v24)
        {
          v25 = *(v24 + 16);
        }

        else
        {
          v25 = 0;
        }

        v26 = +[NSCKRecordMetadata insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:](NSCKRecordMetadata, "insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:", v19, [v25 preserveLegacyRecordMetadataBehavior], v23, 0, &v44);
        if (v26)
        {
          v27 = v26;
          [v26 setNeedsUpload:1];
          [v27 setPendingExportTransactionNumber:a4];
          [v27 setPendingExportChangeTypeNumber:&unk_1EF435ED8];
        }

        else
        {
          v28 = v44;
          v38 = 0;
        }

        objc_autoreleasePoolPop(v20);
        ++v18;
      }

      while (v16 != v18);
      v29 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
      v16 = v29;
    }

    while (v29);
    a5 = v37;
    if ((v38 & 1) == 0)
    {
LABEL_27:
      v32 = v44;
      if (v32)
      {
        if (a5)
        {
          v30 = 0;
          *a5 = v32;
          goto LABEL_35;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v46 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
          v47 = 1024;
          v48 = 1366;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v34 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v46 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
          v47 = 1024;
          v48 = 1366;
          _os_log_fault_impl(&dword_18565F000, v34, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v30 = 0;
      goto LABEL_35;
    }
  }

  v30 = 1;
LABEL_35:

LABEL_36:
  v35 = *MEMORY[0x1E69E9840];
  return v30;
}

void __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_3_68(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [a2 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = [*(*(&v26 + 1) + 8 * i) createRecordIDForMovedRecord];
          [v7 addObject:v12];
        }

        v9 = [a2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    v13 = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingRelatingRecords:v7 andRelatingRecordIDs:*(a1 + 32) fromStore:*(a1 + 40) inManagedObjectContext:(*(*(a1 + 48) + 8) + 40) error:?];
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = v13;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * j);
          [v19 setIsUploadedBool:0];
          [v19 setNeedsDeleteBool:1];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    if (([*(a1 + 40) save:*(*(a1 + 48) + 8) + 40] & 1) == 0)
    {
LABEL_18:
      v20 = *(*(*(a1 + 48) + 8) + 40);
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = a3;
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)newOperationBySerializingDirtyObjectsInStore:(void *)a3 inManagedObjectContext:(void *)a4 error:
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 1;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3052000000;
    v30 = __Block_byref_object_copy__46;
    v31 = __Block_byref_object_dispose__46;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3052000000;
    v24 = __Block_byref_object_copy__46;
    v25 = __Block_byref_object_dispose__46;
    v26 = 0;
    v8 = objc_alloc_init(PFCloudKitOperationBatch);
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __101__PFCloudKitExportContext_newOperationBySerializingDirtyObjectsInStore_inManagedObjectContext_error___block_invoke;
    v20[3] = &unk_1E6EC5390;
    v20[4] = a2;
    v20[5] = a1;
    v20[10] = &v33;
    v20[11] = &v21;
    v20[6] = a3;
    v20[7] = v8;
    v20[8] = v9;
    v20[9] = &v27;
    [a3 performBlockAndWait:v20];
    v10 = a1[5];
    v11 = v22[5];
    if (v11)
    {
      v12 = [*(v11 + 40) copy];
    }

    else
    {
      v12 = 0;
    }

    [v10 addObjectsFromArray:v12];
    v13 = 0;
    if (*(v34 + 24) == 1 && v8)
    {
      v14 = [(NSMutableArray *)v8->_records count];
      if ([(NSMutableSet *)v8->_deletedRecordIDs count]+ v14)
      {
        v13 = [objc_alloc(getCloudKitCKModifyRecordsOperationClass()) initWithRecordsToSave:v8->_records recordIDsToDelete:{-[NSMutableSet allObjects](v8->_deletedRecordIDs, "allObjects")}];
        a1[2] += v8->_sizeInBytes;
        a1[3] += [(NSMutableArray *)v8->_records count];
        a1[4] += [(NSMutableSet *)v8->_deletedRecordIDs count];
      }

      else
      {
        v13 = 0;
      }
    }

    v22[5] = 0;
    if ((v34[3] & 1) == 0)
    {
      v15 = v28[5];
      if (v15)
      {
        if (a4)
        {
          *a4 = v15;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v38 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
          v39 = 1024;
          v40 = 1039;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v17 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v38 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
          v39 = 1024;
          v40 = 1039;
          _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v13 = 0;
    }

    v28[5] = 0;
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v13 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

void __101__PFCloudKitExportContext_newOperationBySerializingDirtyObjectsInStore_inManagedObjectContext_error___block_invoke(uint64_t a1)
{
  v192[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
  [(NSFetchRequest *)v3 setReturnsObjectsAsFaults:0];
  v192[0] = *(a1 + 32);
  -[NSFetchRequest setAffectedStores:](v3, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v192 count:1]);
  v4 = *(*(a1 + 40) + 8);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  [(NSFetchRequest *)v3 setFetchLimit:v5];
  [(NSFetchRequest *)v3 setPropertiesToFetch:&unk_1EF43D678];
  -[NSFetchRequest setPredicate:](v3, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsUpload = YES"]);
  v6 = [*(a1 + 48) executeFetchRequest:v3 error:*(*(a1 + 72) + 8) + 40];
  v7 = v6;
  if (v6)
  {
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v173 objects:v191 count:16];
    if (v8)
    {
      v9 = *v174;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v174 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v173 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [(NSCKRecordMetadata *)v11 createObjectIDForLinkedRow];
          [v2 addObject:v13];

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v7 countByEnumeratingWithState:&v173 objects:v191 count:16];
      }

      while (v8);
    }
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    v14 = *(*(*(a1 + 72) + 8) + 40);
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v144 = objc_alloc_init(PFCloudKitMetadataCache);
    v15 = *(*(a1 + 40) + 8);
    if (v15)
    {
      v16 = *(v15 + 16);
    }

    else
    {
      v16 = 0;
    }

    if ([(PFCloudKitMetadataCache *)&v144->super.isa cacheMetadataForObjectsWithIDs:v2 andRecordsWithIDs:MEMORY[0x1E695E0F0] inStore:*(a1 + 32) withManagedObjectContext:*(a1 + 48) mirroringOptions:v16 error:(*(*(a1 + 72) + 8) + 40)])
    {
      v17 = [PFCloudKitSerializer alloc];
      v18 = *(*(a1 + 40) + 8);
      if (v18)
      {
        v19 = *(v18 + 16);
      }

      else
      {
        v19 = 0;
      }

      *(*(*(a1 + 88) + 8) + 40) = [(PFCloudKitSerializer *)v17 initWithMirroringOptions:v19 metadataCache:v144 recordNamePrefix:0];
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v135 = [v7 countByEnumeratingWithState:&v169 objects:v190 count:16];
      if (v135)
      {
        v134 = *v170;
        v131 = *MEMORY[0x1E696A250];
LABEL_21:
        v140 = 0;
        while (1)
        {
          if (*v170 != v134)
          {
            objc_enumerationMutation(v7);
          }

          v20 = *(*(&v169 + 1) + 8 * v140);
          context = objc_autoreleasePoolPush();
          v21 = [(NSCKRecordMetadata *)v20 createObjectIDForLinkedRow];
          v137 = v21;
          v141 = +[PFCloudKitSerializer recordTypeForEntity:](PFCloudKitSerializer, [v21 entity]);
          v22 = [(NSCKRecordMetadata *)v20 createRecordID];
          v23 = [v22 zoneID];
          v138 = v22;
          if (!v144)
          {
            goto LABEL_28;
          }

          if ([(NSMutableSet *)v144->_mutableZoneIDs containsObject:v23])
          {
            if ([v20 needsCloudDelete])
            {
              [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v22 forRecordOfType:v141];
            }

            else
            {
              v33 = [*(a1 + 48) existingObjectWithID:v21 error:*(*(a1 + 72) + 8) + 40];
              v34 = v33;
              if (v33)
              {
                if ([objc_msgSend(objc_msgSend(objc_msgSend(v33 "objectID")])
                {
                  v132 = objc_alloc_init(MEMORY[0x1E696AAC8]);
                  v35 = *(*(*(a1 + 88) + 8) + 40);
                  if (v35)
                  {
                    obj = [(PFCloudKitSerializer *)v35 newCKRecordsFromObject:v34 fullyMaterializeRecords:0 includeRelationships:1 error:(*(*(a1 + 72) + 8) + 40)];
                  }

                  else
                  {
                    obj = 0;
                  }

                  [*(a1 + 48) refreshObject:v34 mergeChanges:{objc_msgSend(v34, "hasChanges")}];
                  if (obj)
                  {
                    v167 = 0u;
                    v168 = 0u;
                    v165 = 0u;
                    v166 = 0u;
                    v36 = [obj countByEnumeratingWithState:&v165 objects:v189 count:16];
                    if (v36)
                    {
                      v37 = *v166;
LABEL_51:
                      v38 = 0;
                      while (1)
                      {
                        if (*v166 != v37)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v39 = *(a1 + 56);
                        v40 = v39 ? *(v39 + 8) : 0;
                        v41 = *(*(&v165 + 1) + 8 * v38);
                        if ([v40 containsObject:{objc_msgSend(v41, "recordID")}])
                        {
                          -[PFCloudKitOperationBatch addDeletedRecordID:forRecordOfType:](*(a1 + 56), [v41 recordID], v141);
                        }

                        else
                        {
                          [(PFCloudKitOperationBatch *)*(a1 + 56) addRecord:v41];
                        }

                        if (([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?]& 1) != 0)
                        {
                          break;
                        }

                        if (v36 == ++v38)
                        {
                          v42 = [obj countByEnumeratingWithState:&v165 objects:v189 count:16];
                          v36 = v42;
                          if (v42)
                          {
                            goto LABEL_51;
                          }

                          break;
                        }
                      }
                    }
                  }

                  else
                  {
                    *(*(*(a1 + 80) + 8) + 24) = 0;
                    v45 = *(*(*(a1 + 72) + 8) + 40);
                  }

                  v163 = 0u;
                  v164 = 0u;
                  v161 = 0u;
                  v162 = 0u;
                  v46 = [v20 moveReceipts];
                  v47 = [v46 countByEnumeratingWithState:&v161 objects:v188 count:16];
                  if (v47)
                  {
                    v48 = *v162;
                    do
                    {
                      for (j = 0; j != v47; ++j)
                      {
                        if (*v162 != v48)
                        {
                          objc_enumerationMutation(v46);
                        }

                        v50 = *(*(&v161 + 1) + 8 * j);
                        if ([v50 needsCloudDelete])
                        {
                          if (([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?]& 1) != 0)
                          {
                            goto LABEL_81;
                          }

                          v51 = [v50 createRecordIDForMovedRecord];
                          [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v51 forRecordOfType:v141];
                          [*(a1 + 64) addObject:{objc_msgSend(v50, "objectID")}];
                        }
                      }

                      v47 = [v46 countByEnumeratingWithState:&v161 objects:v188 count:16];
                    }

                    while (v47);
                  }

LABEL_81:
                }
              }

              else
              {
                v43 = *(*(*(a1 + 72) + 8) + 40);
                if (v43)
                {
                  if ([objc_msgSend(v43 "domain")] && objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "code") == 133000)
                  {
                    [v20 setNeedsCloudDelete:1];
                    [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v22 forRecordOfType:v141];
                    *(*(*(a1 + 72) + 8) + 40) = 0;
                  }

                  else
                  {
                    *(*(*(a1 + 80) + 8) + 24) = 0;
                    v44 = *(*(*(a1 + 72) + 8) + 40);
                  }
                }
              }
            }
          }

          else
          {
LABEL_28:
            v24 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v26 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v27 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v27 = 16 * (__ckLoggingOverride == 16);
            }

            if (os_log_type_enabled(Stream, v27))
            {
              v28 = *(a1 + 40);
              *buf = 136315906;
              v183 = "[PFCloudKitExportContext newOperationBySerializingDirtyObjectsInStore:inManagedObjectContext:error:]_block_invoke";
              v184 = 1024;
              *v185 = 816;
              *&v185[4] = 2112;
              *&v185[6] = v28;
              v186 = 2112;
              v187 = v22;
              _os_log_impl(&dword_18565F000, v26, v27, "CoreData+CloudKit: %s(%d): %@: Ignoring dirty metadata for record in immutable zone: %@", buf, 0x26u);
            }

            objc_autoreleasePoolPop(v24);
            [v20 setNeedsUpload:0];
            [v20 setNeedsCloudDelete:0];
          }

          if ([*(a1 + 48) hasChanges])
          {
            v29 = [objc_msgSend(*(a1 + 48) "insertedObjects")];
            v30 = [objc_msgSend(*(a1 + 48) "updatedObjects")];
            if ((v30 + v29 + [objc_msgSend(*(a1 + 48) "deletedObjects")]) >= 0xC9 && (objc_msgSend(*(a1 + 48), "save:", *(*(a1 + 72) + 8) + 40) & 1) == 0)
            {
              *(*(*(a1 + 80) + 8) + 24) = 0;
              v31 = *(*(*(a1 + 72) + 8) + 40);
            }
          }

          v32 = *(*(*(a1 + 80) + 8) + 24) ? [(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?]^ 1 : 0;
          objc_autoreleasePoolPop(context);
          if (!v32)
          {
            break;
          }

          if (++v140 == v135)
          {
            v52 = [v7 countByEnumeratingWithState:&v169 objects:v190 count:16];
            v135 = v52;
            if (v52)
            {
              goto LABEL_21;
            }

            break;
          }
        }
      }

      if (*(*(*(a1 + 80) + 8) + 24) == 1)
      {
        if (([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?]& 1) == 0)
        {
          v142 = +[NSCKMirroredRelationship fetchMirroredRelationshipsMatchingPredicate:fromStore:inManagedObjectContext:error:](NSCKMirroredRelationship, [MEMORY[0x1E696AE18] predicateWithFormat:@"isUploaded = NO"], *(a1 + 32), *(a1 + 48), *(*(a1 + 72) + 8) + 40);
          if (v142)
          {
            v139 = [objc_msgSend(*(a1 + 48) "persistentStoreCoordinator")];
            v159 = 0u;
            v160 = 0u;
            v157 = 0u;
            v158 = 0u;
            v53 = [v142 countByEnumeratingWithState:&v157 objects:v181 count:16];
            if (v53)
            {
              v54 = *v158;
LABEL_89:
              v55 = 0;
              while (1)
              {
                if (*v158 != v54)
                {
                  objc_enumerationMutation(v142);
                }

                v56 = *(*(&v157 + 1) + 8 * v55);
                if (([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?]& 1) != 0)
                {
                  break;
                }

                v57 = [(NSCKMirroredRelationship *)v56 createRecordID];
                v58 = [v57 zoneID];
                if (v144 && ([(NSMutableSet *)v144->_mutableZoneIDs containsObject:v58]& 1) != 0)
                {
                  v59 = *(a1 + 56);
                  if (v59)
                  {
                    v60 = *(v59 + 32);
                  }

                  else
                  {
                    v60 = 0;
                  }

                  if (([v60 containsObject:v57] & 1) == 0)
                  {
                    v61 = *(a1 + 56);
                    v62 = v61 ? *(v61 + 8) : 0;
                    if (([v62 containsObject:v57] & 1) == 0)
                    {
                      if ([v56 needsDeleteBool])
                      {
                        [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v57 forRecordOfType:@"CDMR"];
                      }

                      else
                      {
                        v68 = [(NSCKMirroredRelationship *)v56 createRecordIDForRecord];
                        v69 = [(NSCKMirroredRelationship *)v56 createRecordIDForRelatedRecord];
                        v70 = [objc_msgSend(objc_msgSend(objc_msgSend(v139 "entitiesByName")];
                        v71 = -[PFMirroredManyToManyRelationshipV2 initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:]([PFMirroredManyToManyRelationshipV2 alloc], "initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:", v57, v68, v69, v70, [v70 inverseRelationship], 0);
                        v72 = [objc_alloc(getCloudKitCKRecordClass[0]()) initWithRecordType:@"CDMR" recordID:v57];
                        v73 = *(*(a1 + 40) + 8);
                        if (v73)
                        {
                          v74 = *(v73 + 16);
                        }

                        else
                        {
                          v74 = 0;
                        }

                        v75 = [v74 useDeviceToDeviceEncryption];
                        v76 = v72;
                        if (v75)
                        {
                          v76 = [v72 encryptedValueStore];
                        }

                        [(PFMirroredManyToManyRelationshipV2 *)v71 populateRecordValues:v76];
                        [(PFCloudKitOperationBatch *)*(a1 + 56) addRecord:v72];
                      }
                    }
                  }
                }

                else
                {
                  v63 = objc_autoreleasePoolPush();
                  v64 = __PFCloudKitLoggingGetStream();
                  v65 = v64;
                  if (__ckLoggingOverride == 17)
                  {
                    v66 = OS_LOG_TYPE_FAULT;
                  }

                  else
                  {
                    v66 = OS_LOG_TYPE_ERROR;
                  }

                  if (os_log_type_enabled(v64, v66))
                  {
                    v67 = *(a1 + 40);
                    *buf = 136315906;
                    v183 = "[PFCloudKitExportContext newOperationBySerializingDirtyObjectsInStore:inManagedObjectContext:error:]_block_invoke";
                    v184 = 1024;
                    *v185 = 854;
                    *&v185[4] = 2112;
                    *&v185[6] = v67;
                    v186 = 2112;
                    v187 = v57;
                    _os_log_impl(&dword_18565F000, v65, v66, "CoreData+CloudKit: %s(%d): %@: Ignoring update to dirty mirrored relationship because the zone is not mutable: %@", buf, 0x26u);
                  }

                  objc_autoreleasePoolPop(v63);
                  [v56 setIsUploadedBool:1];
                }

                if (v53 == ++v55)
                {
                  v77 = [v142 countByEnumeratingWithState:&v157 objects:v181 count:16];
                  v53 = v77;
                  if (v77)
                  {
                    goto LABEL_89;
                  }

                  break;
                }
              }
            }
          }

          else
          {
            *(*(*(a1 + 80) + 8) + 24) = 0;
            v118 = *(*(*(a1 + 72) + 8) + 40);
          }
        }

        v119 = *(a1 + 56);
        if (v119)
        {
          v120 = *(v119 + 8);
        }

        else
        {
          v120 = 0;
        }

        v121 = +[NSCKMirroredRelationship markRelationshipsForDeletedRecordIDs:inStore:withManagedObjectContext:error:](NSCKMirroredRelationship, [v120 allObjects], *(a1 + 32), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
        v122 = v121;
        if (v121)
        {
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v123 = [v121 countByEnumeratingWithState:&v153 objects:v180 count:16];
          if (v123)
          {
            v124 = *v154;
LABEL_191:
            v125 = 0;
            while (1)
            {
              if (*v154 != v124)
              {
                objc_enumerationMutation(v122);
              }

              v126 = *(*(&v153 + 1) + 8 * v125);
              if (([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?]& 1) != 0)
              {
                break;
              }

              v127 = *(a1 + 56);
              if (v127)
              {
                v128 = *(v127 + 8);
              }

              else
              {
                v128 = 0;
              }

              if (([v128 containsObject:v126] & 1) == 0)
              {
                [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v126 forRecordOfType:@"CDMR"];
              }

              if (v123 == ++v125)
              {
                v129 = [v122 countByEnumeratingWithState:&v153 objects:v180 count:16];
                v123 = v129;
                if (v129)
                {
                  goto LABEL_191;
                }

                break;
              }
            }
          }
        }

        else
        {
          *(*(*(a1 + 80) + 8) + 24) = 0;
          v130 = *(*(*(a1 + 72) + 8) + 40);
        }
      }
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      v78 = *(*(*(a1 + 72) + 8) + 40);
    }
  }

  else
  {
    v144 = 0;
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1 && ([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?]& 1) == 0)
  {
    v79 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
    -[NSFetchRequest setPredicate:](v79, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsShareUpdate = YES OR needsShareDelete = YES"]);
    [(NSFetchRequest *)v79 setRelationshipKeyPathsForPrefetching:&unk_1EF43D690];
    v80 = [*(a1 + 48) executeFetchRequest:v79 error:*(*(a1 + 72) + 8) + 40];
    v81 = v80;
    if (v80)
    {
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v82 = [v80 countByEnumeratingWithState:&v149 objects:v179 count:16];
      if (v82)
      {
        v83 = *v150;
        do
        {
          v84 = 0;
          do
          {
            if (*v150 != v83)
            {
              objc_enumerationMutation(v81);
            }

            v85 = *(*(&v149 + 1) + 8 * v84);
            v86 = [(NSCKRecordZoneMetadata *)v85 createRecordZoneID];
            if (![v85 encodedShareAsset])
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v183 = v86;
                v184 = 2112;
                *v185 = v85;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Zone metadata is missing it's encoded share data but is marked for a mutation: %@ - %@\n", buf, 0x16u);
              }

              v88 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v183 = v86;
                v184 = 2112;
                *v185 = v85;
                _os_log_fault_impl(&dword_18565F000, v88, OS_LOG_TYPE_FAULT, "CoreData: Zone metadata is missing it's encoded share data but is marked for a mutation: %@ - %@", buf, 0x16u);
              }
            }

            v89 = *(*(a1 + 40) + 8);
            if (v89 && (v90 = *(v89 + 16)) != 0)
            {
              v91 = *(v90 + 136);
            }

            else
            {
              v91 = 0;
            }

            v92 = [v85 encodedShareAsset];
            v93 = v92;
            if (v92)
            {
              if ([objc_msgSend(v92 "binaryData")])
              {
                v94 = [v93 binaryData];
              }

              else
              {
                v94 = [v93 externalBinaryData];
              }
            }

            else
            {
              v94 = 0;
            }

            v95 = [(PFCloudKitArchivingUtilities *)v91 shareFromEncodedData:v94 inZoneWithID:v86 error:(*(*(a1 + 72) + 8) + 40)];
            if (!v95)
            {
              *(*(*(a1 + 80) + 8) + 24) = 0;
              v100 = *(*(*(a1 + 72) + 8) + 40);

              goto LABEL_163;
            }

            if ([v85 needsShareUpdate])
            {
              [(PFCloudKitOperationBatch *)*(a1 + 56) addRecord:v95];
              if (([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?]& 1) != 0)
              {
                goto LABEL_162;
              }
            }

            else if ([v85 needsShareDelete])
            {
              -[PFCloudKitOperationBatch addDeletedRecordID:forRecordOfType:](*(a1 + 56), [v95 recordID], objc_msgSend(v95, "recordType"));
              if ([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?])
              {
LABEL_162:

                goto LABEL_163;
              }
            }

            else
            {
              v96 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v183 = v85;
                _os_log_error_impl(&dword_18565F000, v96, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetched dirty zone that didn't need a share update or delete: %@\n", buf, 0xCu);
              }

              v97 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v183 = v85;
                _os_log_fault_impl(&dword_18565F000, v97, OS_LOG_TYPE_FAULT, "CoreData: Fetched dirty zone that didn't need a share update or delete: %@", buf, 0xCu);
              }
            }

            ++v84;
          }

          while (v82 != v84);
          v98 = [v81 countByEnumeratingWithState:&v149 objects:v179 count:16];
          v82 = v98;
        }

        while (v98);
      }
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      v99 = *(*(*(a1 + 72) + 8) + 40);
    }
  }

LABEL_163:
  if (*(*(*(a1 + 80) + 8) + 24) == 1 && ([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?]& 1) == 0)
  {
    v101 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMoveReceipt entityPath]);
    v178 = *(a1 + 32);
    -[NSFetchRequest setAffectedStores:](v101, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1]);
    v102 = *(*(a1 + 40) + 8);
    if (v102)
    {
      v103 = *(v102 + 32);
    }

    else
    {
      v103 = 0;
    }

    [(NSFetchRequest *)v101 setFetchLimit:v103];
    [(NSFetchRequest *)v101 setRelationshipKeyPathsForPrefetching:&unk_1EF43D6A8];
    -[NSFetchRequest setPredicate:](v101, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"(needsCloudDelete == 1) AND !(SELF IN %@)", *(a1 + 64)]);
    [(NSFetchRequest *)v101 setReturnsObjectsAsFaults:0];
    v104 = [*(a1 + 48) executeFetchRequest:v101 error:*(*(a1 + 72) + 8) + 40];
    v143 = v104;
    if (v104)
    {
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v105 = [v104 countByEnumeratingWithState:&v145 objects:v177 count:16];
      if (v105)
      {
        v106 = *v146;
LABEL_170:
        v107 = 0;
        while (1)
        {
          if (*v146 != v106)
          {
            objc_enumerationMutation(v143);
          }

          v108 = *(*(&v145 + 1) + 8 * v107);
          v109 = objc_autoreleasePoolPush();
          v110 = [(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?];
          if ((v110 & 1) == 0)
          {
            v111 = [v108 createRecordIDForMovedRecord];
            v112 = -[NSCKRecordMetadata createObjectIDForLinkedRow]([v108 recordMetadata]);
            v113 = +[PFCloudKitSerializer recordTypeForEntity:](PFCloudKitSerializer, [v112 entity]);
            [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v111 forRecordOfType:v113];
          }

          objc_autoreleasePoolPop(v109);
          if (v110)
          {
            break;
          }

          if (v105 == ++v107)
          {
            v105 = [v143 countByEnumeratingWithState:&v145 objects:v177 count:16];
            if (v105)
            {
              goto LABEL_170;
            }

            break;
          }
        }
      }
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      v114 = *(*(*(a1 + 72) + 8) + 40);
    }
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    if ([*(a1 + 48) hasChanges])
    {
      *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 48) save:*(*(a1 + 72) + 8) + 40];
      v115 = *(*(*(a1 + 72) + 8) + 40);
      if (v115)
      {
        v116 = v115;
      }
    }
  }

  v117 = *MEMORY[0x1E69E9840];
}

- (uint64_t)currentBatchExceedsThresholds:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      v4 = [*(a2 + 24) count];
      v5 = [*(a2 + 8) count] + v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v3 + 8);
    if (v6)
    {
      v7 = *(v6 + 32);
    }

    else
    {
      v7 = 0;
    }

    if (v5 == v7)
    {
      return 1;
    }

    if (a2)
    {
      v8 = *(a2 + 40);
      if (!v6)
      {
        return v8 >= v6;
      }
    }

    else
    {
      v8 = 0;
      if (!v6)
      {
        return v8 >= v6;
      }
    }

    v6 = *(v6 + 24);
    return v8 >= v6;
  }

  return result;
}

- (BOOL)checkForObjectsNeedingExportInStore:(id)a3 andReturnCount:(unint64_t *)a4 withManagedObjectContext:(id)a5 error:(id *)a6
{
  v28[1] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v10 = +[NSCKRecordMetadata countRecordMetadataInStore:matchingPredicate:withManagedObjectContext:error:](NSCKRecordMetadata, a3, [MEMORY[0x1E696AE18] predicateWithFormat:@"needsUpload = YES"], a5, &v22);
  if (v10)
  {
    v11 = [v10 unsignedIntegerValue];
    v12 = +[NSCKMirroredRelationship countMirroredRelationshipsInStore:matchingPredicate:withManagedObjectContext:error:](NSCKMirroredRelationship, a3, [MEMORY[0x1E696AE18] predicateWithFormat:@"isUploaded = NO"], a5, &v22);
    if (v12)
    {
      v13 = [v12 unsignedIntegerValue];
      v14 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
      -[NSFetchRequest setPredicate:](v14, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsShareUpdate = YES OR needsShareDelete = YES"]);
      [(NSFetchRequest *)v14 setResultType:4];
      v28[0] = a3;
      -[NSFetchRequest setAffectedStores:](v14, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1]);
      if (a5)
      {
        v15 = [(NSManagedObjectContext *)a5 _countForFetchRequest_:v14 error:&v22];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMoveReceipt entityPath]);
      -[NSFetchRequest setPredicate:](v16, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsCloudDelete = YES"]);
      [(NSFetchRequest *)v16 setResultType:4];
      v27 = a3;
      -[NSFetchRequest setAffectedStores:](v16, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1]);
      if (a5)
      {
        v17 = [(NSManagedObjectContext *)a5 _countForFetchRequest_:v16 error:&v22];
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v17 = 0;
      }

      *a4 = v13 + v11 + v15 + v17;
      LOBYTE(v17) = 1;
      goto LABEL_18;
    }
  }

LABEL_7:
  if (v22)
  {
    if (a6)
    {
      LOBYTE(v17) = 0;
      *a6 = v22;
      goto LABEL_18;
    }

LABEL_14:
    LOBYTE(v17) = 0;
    goto LABEL_18;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
    v25 = 1024;
    v26 = 1092;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v19 = _PFLogGetLogStream(17);
  LODWORD(v17) = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
  if (v17)
  {
    *buf = 136315394;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
    v25 = 1024;
    v26 = 1092;
    _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_14;
  }

LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (uint64_t)modifyRecordsOperationFinishedForStore:(uint64_t)a3 withSavedRecords:(uint64_t)a4 deletedRecordIDs:(uint64_t)a5 operationError:(void *)a6 managedObjectContext:(void *)a7 error:
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__46;
    v20 = __Block_byref_object_dispose__46;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __142__PFCloudKitExportContext_modifyRecordsOperationFinishedForStore_withSavedRecords_deletedRecordIDs_operationError_managedObjectContext_error___block_invoke;
    v15[3] = &unk_1E6EC53E0;
    v15[4] = a3;
    v15[5] = a2;
    v15[9] = &v22;
    v15[10] = &v16;
    v15[6] = a6;
    v15[7] = a1;
    v15[8] = a4;
    [a6 performBlockAndWait:v15];
    if ((v23[3] & 1) == 0)
    {
      v11 = v17[5];
      v12 = v17[5];
      if (v12)
      {
        if (a7)
        {
          *a7 = v12;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
          v28 = 1024;
          v29 = 1312;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v14 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
          v28 = 1024;
          v29 = 1312;
          _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v17[5] = 0;
    v8 = *(v23 + 24);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

void __142__PFCloudKitExportContext_modifyRecordsOperationFinishedForStore_withSavedRecords_deletedRecordIDs_operationError_managedObjectContext_error___block_invoke(uint64_t a1)
{
  v146 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v100 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v101 = objc_alloc_init(MEMORY[0x1E695DF70]);
    obj = objc_alloc_init(MEMORY[0x1E695DF70]);
    v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v123 objects:v145 count:16];
    if (v3)
    {
      v4 = *v124;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v124 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v123 + 1) + 8 * i);
          v7 = +[PFCloudKitSerializer isMirroredRelationshipRecordType:](PFCloudKitSerializer, [v6 recordType]);
          v8 = v101;
          if ((v7 & 1) != 0 || (v9 = [v6 recordType], v10 = objc_msgSend(v9, "isEqualToString:", getCloudKitCKRecordTypeShare()), v8 = obj, v10))
          {
            [v8 addObject:v6];
          }

          else
          {
            [v100 setObject:v6 forKey:{objc_msgSend(v6, "recordID")}];
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v123 objects:v145 count:16];
      }

      while (v3);
    }

    v98 = [NSCKRecordMetadata createMapOfMetadataMatchingRecords:MEMORY[0x1E695E0F0] andRecordIDs:*(a1 + 40) inStore:*(a1 + 48) withManagedObjectContext:(*(*(a1 + 80) + 8) + 40) error:?];
    if (!v98)
    {
      v40 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v42 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v43 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v43 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v43))
      {
        v44 = *(*(*(a1 + 80) + 8) + 40);
        v45 = *(a1 + 32);
        *buf = 136315906;
        v135 = "[PFCloudKitExportContext modifyRecordsOperationFinishedForStore:withSavedRecords:deletedRecordIDs:operationError:managedObjectContext:error:]_block_invoke";
        v136 = 1024;
        v137 = 1169;
        v138 = 2112;
        v139 = v44;
        v140 = 2112;
        v141 = v45;
        _os_log_impl(&dword_18565F000, v42, v43, "CoreData+CloudKit: %s(%d): Failed to fetch record metadata for saved records: %@\n%@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v40);
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v46 = *(*(*(a1 + 80) + 8) + 40);
      goto LABEL_52;
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v11 = [v100 allKeys];
    v12 = [v11 countByEnumeratingWithState:&v119 objects:v144 count:16];
    if (v12)
    {
      v13 = *v120;
      do
      {
        v14 = 0;
        do
        {
          if (*v120 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v119 + 1) + 8 * v14);
          v16 = [v100 objectForKey:v15];
          v17 = [v98 objectForKey:v15];
          if (!v16)
          {
            v23 = objc_autoreleasePoolPush();
            v24 = __PFCloudKitLoggingGetStream();
            v25 = v24;
            if (__ckLoggingOverride == 17)
            {
              v26 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v26 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(v24, v26))
            {
              v27 = *(a1 + 56);
              v28 = *(a1 + 32);
              *buf = 136316162;
              v135 = "[PFCloudKitExportContext modifyRecordsOperationFinishedForStore:withSavedRecords:deletedRecordIDs:operationError:managedObjectContext:error:]_block_invoke";
              v136 = 1024;
              v137 = 1164;
              v138 = 2112;
              v139 = v27;
              v140 = 2112;
              v141 = v15;
              v142 = 2112;
              v143 = v28;
              v29 = v26;
              v30 = v25;
              v31 = "CoreData+CloudKit: %s(%d): %@: Can't find record for recordID '%@' even though it was supposedly saved in these records: %@";
              goto LABEL_36;
            }

LABEL_37:
            objc_autoreleasePoolPop(v23);
            goto LABEL_40;
          }

          v18 = v17;
          if (!v17)
          {
            v23 = objc_autoreleasePoolPush();
            v32 = __PFCloudKitLoggingGetStream();
            v33 = v32;
            if (__ckLoggingOverride == 17)
            {
              v34 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v34 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(v32, v34))
            {
              v35 = *(a1 + 56);
              v36 = *(a1 + 32);
              *buf = 136316162;
              v135 = "[PFCloudKitExportContext modifyRecordsOperationFinishedForStore:withSavedRecords:deletedRecordIDs:operationError:managedObjectContext:error:]_block_invoke";
              v136 = 1024;
              v137 = 1161;
              v138 = 2112;
              v139 = v35;
              v140 = 2112;
              v141 = v15;
              v142 = 2112;
              v143 = v36;
              v29 = v34;
              v30 = v33;
              v31 = "CoreData+CloudKit: %s(%d): %@: Can't find metadata for recordID '%@' even though it was supposedly saved in these records: %@";
LABEL_36:
              _os_log_impl(&dword_18565F000, v30, v29, v31, buf, 0x30u);
            }

            goto LABEL_37;
          }

          [v17 setNeedsUpload:0];
          v19 = *(*(a1 + 56) + 8);
          if (v19 && (v20 = *(v19 + 16)) != 0)
          {
            v21 = *(v20 + 136);
          }

          else
          {
            v21 = 0;
          }

          v22 = [(PFCloudKitArchivingUtilities *)v21 encodeRecord:v16 error:(*(*(a1 + 80) + 8) + 40)];
          if (v22)
          {
            [v18 updateEncodedRecordWithData:v22];
          }

          else
          {
            *(*(*(a1 + 72) + 8) + 24) = 0;
            v37 = *(*(*(a1 + 80) + 8) + 40);
          }

LABEL_40:
          ++v14;
        }

        while (v12 != v14);
        v38 = [v11 countByEnumeratingWithState:&v119 objects:v144 count:16];
        v12 = v38;
      }

      while (v38);
    }

LABEL_52:
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v47 = [obj countByEnumeratingWithState:&v115 objects:v133 count:16];
      if (v47)
      {
        v48 = *v116;
        do
        {
          v49 = 0;
          do
          {
            if (*v116 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v50 = *(*(&v115 + 1) + 8 * v49);
            v51 = [objc_msgSend(v50 "recordID")];
            v52 = *(*(a1 + 56) + 8);
            if (v52)
            {
              v53 = *(v52 + 16);
            }

            else
            {
              v53 = 0;
            }

            v54 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v51, [v53 databaseScope], *(a1 + 40), *(a1 + 48), *(*(a1 + 80) + 8) + 40);
            if (v54)
            {
              v55 = *(*(a1 + 56) + 8);
              if (v55 && (v56 = *(v55 + 16)) != 0 && (v57 = *(v56 + 136)) != 0 && (v58 = [(PFCloudKitArchivingUtilities *)v57 encodeRecord:v50 error:(*(*(a1 + 80) + 8) + 40)]) != 0)
              {
                [(NSManagedObject *)v54 updateEncodedShareWithData:v58];
                [(NSManagedObject *)v54 setNeedsShareUpdate:0];
              }

              else
              {
                *(*(*(a1 + 72) + 8) + 24) = 0;
                v60 = *(*(*(a1 + 80) + 8) + 40);
                v58 = 0;
              }
            }

            else
            {
              *(*(*(a1 + 72) + 8) + 24) = 0;
              v59 = *(*(*(a1 + 80) + 8) + 40);
            }

            ++v49;
          }

          while (v47 != v49);
          v61 = [obj countByEnumeratingWithState:&v115 objects:v133 count:16];
          v47 = v61;
        }

        while (v61);
      }
    }

    v62 = *(a1 + 72);
    v63 = v101;
    if (*(*(v62 + 8) + 24) == 1)
    {
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = __142__PFCloudKitExportContext_modifyRecordsOperationFinishedForStore_withSavedRecords_deletedRecordIDs_operationError_managedObjectContext_error___block_invoke_111;
      v114[3] = &unk_1E6EC53B8;
      v64 = *(a1 + 48);
      v114[4] = *(a1 + 56);
      v65 = [NSCKMirroredRelationship updateMirroredRelationshipsMatchingRecords:v101 forStore:*(a1 + 40) withManagedObjectContext:v64 usingBlock:v114 error:(*(*(a1 + 80) + 8) + 40)];
      v62 = *(a1 + 72);
      if (!v65)
      {
        *(*(v62 + 8) + 24) = 0;
        v66 = *(*(*(a1 + 80) + 8) + 40);
        v62 = *(a1 + 72);
      }
    }

    if (*(*(v62 + 8) + 24) == 1)
    {
      if (([NSCKMirroredRelationship purgeMirroredRelationshipsWithRecordIDs:*(a1 + 40) fromStore:*(a1 + 48) withManagedObjectContext:(*(*(a1 + 80) + 8) + 40) error:?]& 1) == 0)
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v67 = *(*(*(a1 + 80) + 8) + 40);
      }

      v62 = *(a1 + 72);
      v63 = v101;
      if (*(*(v62 + 8) + 24) == 1)
      {
        v68 = [NSCKRecordMetadata purgeRecordMetadataWithRecordIDs:*(a1 + 40) inStore:*(a1 + 48) withManagedObjectContext:(*(*(a1 + 80) + 8) + 40) error:?];
        v62 = *(a1 + 72);
        if ((v68 & 1) == 0)
        {
          *(*(v62 + 8) + 24) = 0;
          v69 = *(*(*(a1 + 80) + 8) + 40);
          v62 = *(a1 + 72);
        }

        v63 = v101;
      }
    }

    if (*(*(v62 + 8) + 24) == 1)
    {
      v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v71 = *(a1 + 64);
      v72 = [v71 countByEnumeratingWithState:&v110 objects:v132 count:16];
      if (v72)
      {
        v73 = *v111;
        do
        {
          for (j = 0; j != v72; ++j)
          {
            if (*v111 != v73)
            {
              objc_enumerationMutation(v71);
            }

            v75 = *(*(&v110 + 1) + 8 * j);
            v76 = [v70 objectForKey:{objc_msgSend(v75, "zoneID")}];
            if (!v76)
            {
              v76 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              [v70 setObject:v76 forKey:{objc_msgSend(v75, "zoneID")}];
            }

            [v76 addObject:{objc_msgSend(v75, "recordName")}];

            v77 = [v75 recordName];
            if ([v77 isEqualToString:getCloudKitCKRecordNameZoneWideShare()])
            {
              [v97 addObject:v75];
            }
          }

          v72 = [v71 countByEnumeratingWithState:&v110 objects:v132 count:16];
        }

        while (v72);
      }

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v78 = [v70 countByEnumeratingWithState:&v106 objects:v131 count:16];
      if (v78)
      {
        v96 = *v107;
        while (2)
        {
          v95 = v78;
          for (k = 0; k != v95; ++k)
          {
            if (*v107 != v96)
            {
              objc_enumerationMutation(v70);
            }

            v80 = *(*(&v106 + 1) + 8 * k);
            v81 = [v70 objectForKey:v80];
            v82 = [[NSBatchUpdateRequest alloc] initWithEntityName:+[NSCKRecordZoneMoveReceipt entityPath]];
            -[NSBatchUpdateRequest setPredicate:](v82, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"zoneName = %@ AND ownerName = %@ AND recordName in %@", objc_msgSend(v80, "zoneName"), objc_msgSend(v80, "ownerName"), v81]);
            v130 = *(a1 + 40);
            -[NSPersistentStoreRequest setAffectedStores:](v82, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1]);
            v128 = @"needsCloudDelete";
            v129 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E110]];
            -[NSBatchUpdateRequest setPropertiesToUpdate:](v82, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1]);
            [(NSBatchUpdateRequest *)v82 setResultType:0];
            if (([objc_msgSend(objc_msgSend(*(a1 + 48) executeRequest:v82 error:{*(*(a1 + 80) + 8) + 40), "result"), "BOOLValue"}] & 1) == 0)
            {
              *(*(*(a1 + 72) + 8) + 24) = 0;
              v83 = *(*(*(a1 + 80) + 8) + 40);
              goto LABEL_106;
            }
          }

          v78 = [v70 countByEnumeratingWithState:&v106 objects:v131 count:16];
          if (v78)
          {
            continue;
          }

          break;
        }
      }

      v81 = 0;
      v82 = 0;
LABEL_106:
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v84 = [v97 countByEnumeratingWithState:&v102 objects:v127 count:16];
      if (v84)
      {
        v85 = *v103;
        do
        {
          v86 = 0;
          do
          {
            if (*v103 != v85)
            {
              objc_enumerationMutation(v97);
            }

            v87 = [*(*(&v102 + 1) + 8 * v86) zoneID];
            v88 = *(*(a1 + 56) + 8);
            if (v88)
            {
              v89 = *(v88 + 16);
            }

            else
            {
              v89 = 0;
            }

            v90 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v87, [v89 databaseScope], *(a1 + 40), *(a1 + 48), *(*(a1 + 80) + 8) + 40);
            if (!v90)
            {
              *(*(*(a1 + 72) + 8) + 24) = 0;
              v92 = *(*(*(a1 + 80) + 8) + 40);
              goto LABEL_120;
            }

            [(NSManagedObject *)v90 setNeedsShareDelete:0];
            ++v86;
          }

          while (v84 != v86);
          v91 = [v97 countByEnumeratingWithState:&v102 objects:v127 count:16];
          v84 = v91;
        }

        while (v91);
      }

LABEL_120:
      if (([*(a1 + 48) save:*(*(a1 + 80) + 8) + 40] & 1) == 0)
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v93 = *(*(*(a1 + 80) + 8) + 40);
      }

      v39 = v101;
    }

    else
    {
      v39 = v63;
    }
  }

  else
  {
    v97 = 0;
    v98 = 0;
    obj = 0;
    v100 = 0;
    v39 = 0;
  }

  v94 = *MEMORY[0x1E69E9840];
}

uint64_t __142__PFCloudKitExportContext_modifyRecordsOperationFinishedForStore_withSavedRecords_deletedRecordIDs_operationError_managedObjectContext_error___block_invoke_111(uint64_t a1, void *a2, void *a3)
{
  [a2 setIsUploadedBool:1];
  v6 = *(*(a1 + 32) + 8);
  if (v6 && (v7 = *(v6 + 16)) != 0)
  {
    v8 = *(v7 + 136);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PFCloudKitArchivingUtilities *)v8 newArchivedDataForSystemFieldsOfRecord:a3];
  [a2 updateSystemFieldsWithData:v9];

  return 1;
}

@end