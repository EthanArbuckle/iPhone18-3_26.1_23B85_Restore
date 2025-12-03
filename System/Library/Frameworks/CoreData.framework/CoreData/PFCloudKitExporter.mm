@interface PFCloudKitExporter
- (PFCloudKitExporter)initWithOptions:(id)options request:(id)request monitor:(id)monitor workQueue:(id)queue;
- (uint64_t)updateMetadataForSavedZones:(void *)zones error:;
- (void)checkForZonesNeedingExport;
- (void)dealloc;
- (void)exportIfNecessary;
- (void)exportIfNecessaryWithCompletion:(void *)completion;
- (void)finishExportWithResult:(void *)result;
@end

@implementation PFCloudKitExporter

- (PFCloudKitExporter)initWithOptions:(id)options request:(id)request monitor:(id)monitor workQueue:(id)queue
{
  v12.receiver = self;
  v12.super_class = PFCloudKitExporter;
  v10 = [(PFCloudKitExporter *)&v12 init];
  if (v10)
  {
    v10->_monitor = monitor;
    v10->_options = [options copy];
    v10->_workQueue = queue;
    if (queue)
    {
      dispatch_retain(queue);
    }

    v10->_request = request;
    objc_storeWeak(&v10->_delegate, 0);
    v10->_exportContext = [[PFCloudKitExportContext alloc] initWithOptions:v10->_options];
    v10->_operationIDToResult = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v10;
}

- (void)dealloc
{
  workQueue = self->_workQueue;
  if (workQueue)
  {
    dispatch_release(workQueue);
  }

  self->_exportCompletionBlock = 0;
  v4.receiver = self;
  v4.super_class = PFCloudKitExporter;
  [(PFCloudKitExporter *)&v4 dealloc];
}

- (void)exportIfNecessaryWithCompletion:(void *)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (completion)
  {
    if (completion[2])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: exportIfNecessaryWithCompletion invoked multiple times.\n", v13, 2u);
      }

      v5 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *v13 = 0;
        _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: exportIfNecessaryWithCompletion invoked multiple times.", v13, 2u);
      }

      v6 = [NSCloudKitMirroringResult alloc];
      v7 = completion[5];
      v8 = completion[8];
      if (v8)
      {
        v9 = *(v8 + 48);
      }

      else
      {
        v9 = 0;
      }

      v10 = *MEMORY[0x1E696A250];
      v14 = *MEMORY[0x1E696A588];
      v15[0] = @"exportIfNecessaryWithCompletion called re-entrantly, this is a serious bug. Please file a feedback report.";
      v11 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v6, "initWithRequest:storeIdentifier:success:madeChanges:error:", v7, v9, 0, 0, [MEMORY[0x1E696ABC0] errorWithDomain:v10 code:134410 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v15, &v14, 1)}]);
      (a2)[2](a2, v11);
    }

    else
    {
      completion[2] = [a2 copy];
    }

    [(PFCloudKitExporter *)completion checkForZonesNeedingExport];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)checkForZonesNeedingExport
{
  location[1] = *MEMORY[0x1E69E9840];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3052000000;
  v49 = __Block_byref_object_copy__34;
  v50 = __Block_byref_object_dispose__34;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3052000000;
  v43 = __Block_byref_object_copy__34;
  v44 = __Block_byref_object_dispose__34;
  v45 = 0;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(self + 64);
  v4 = *(self + 40);
  if (v4 && (([*(v4 + 64) shouldDefer] & 1) != 0 || (*(v4 + 40) & 1) != 0))
  {
    *(v53 + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v62 = *MEMORY[0x1E696A588];
    v63 = @"The request was aborted because it was deferred by the system.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v7 = [v5 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v6];
    v47[5] = v7;
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke;
    v39[3] = &unk_1E6EC3D50;
    v39[4] = v3;
    v39[5] = self;
    v39[6] = v2;
    v39[7] = &v46;
    v39[8] = &v52;
    v39[9] = &v40;
    [(PFCloudKitStoreMonitor *)v3 performBlock:v39];
  }

  if (*(v53 + 24) != 1)
  {
    v18 = [NSCloudKitMirroringResult alloc];
    v19 = *(self + 64);
    if (v19)
    {
      v20 = *(v19 + 48);
    }

    else
    {
      v20 = 0;
    }

    v21 = [(NSCloudKitMirroringResult *)v18 initWithRequest:*(self + 40) storeIdentifier:v20 success:*(v53 + 24) madeChanges:0 error:v47[5]];
    [(PFCloudKitExporter *)self finishExportWithResult:v21];

    goto LABEL_19;
  }

  if (!v41[5])
  {
    if (![v2 count])
    {
      [(PFCloudKitExporter *)self exportIfNecessary];
      goto LABEL_19;
    }

    v24 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v26 = Stream;
    v27 = __ckLoggingOverride;
    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
    {
      v27 = OS_LOG_TYPE_INFO;
    }

    if (os_log_type_enabled(Stream, v27))
    {
      *buf = 136315906;
      *&buf[4] = "[PFCloudKitExporter fetchRecordZones:]";
      *&buf[12] = 1024;
      *&buf[14] = 1010;
      *&buf[18] = 2112;
      *&buf[20] = self;
      *&buf[28] = 2112;
      *&buf[30] = v2;
      _os_log_impl(&dword_18565F000, v26, v27, "CoreData+CloudKit: %s(%d): %@: Fetching record zones: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = *(self + 40);
    if (v28 && (([*(v28 + 64) shouldDefer] & 1) != 0 || (*(v28 + 40) & 1) != 0))
    {
      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      location[0] = *MEMORY[0x1E696A588];
      *buf = @"The request was aborted because it was deferred by the system.";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:location count:1];
      v31 = [v29 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v30];
    }

    else
    {
      objc_initWeak(location, self);
      v36 = [objc_alloc(getCloudKitCKFetchRecordZonesOperationClass()) initWithRecordZoneIDs:v2];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __39__PFCloudKitExporter_fetchRecordZones___block_invoke;
      *&buf[24] = &unk_1E6EC4510;
      objc_copyWeak(&v57, location);
      *&buf[32] = self;
      [v36 setFetchRecordZonesCompletionBlock:buf];
      objc_destroyWeak(&v57);
      objc_destroyWeak(location);
      if (v36)
      {
        v37 = *(self + 24);
        if (v37)
        {
          v38 = *(v37 + 8);
        }

        else
        {
          v38 = 0;
        }

        [v38 addOperation:v36];
        v31 = 0;
        goto LABEL_34;
      }

      v31 = 0;
    }

    v32 = [NSCloudKitMirroringResult alloc];
    v33 = *(self + 64);
    if (v33)
    {
      v34 = *(v33 + 48);
    }

    else
    {
      v34 = 0;
    }

    v35 = [(NSCloudKitMirroringResult *)v32 initWithRequest:*(self + 40) storeIdentifier:v34 success:0 madeChanges:0 error:v31];
    [(PFCloudKitExporter *)self finishExportWithResult:v35];

    v36 = 0;
LABEL_34:

    goto LABEL_19;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = __PFCloudKitLoggingGetStream();
  v10 = v9;
  if (__ckLoggingOverride == 17)
  {
    v11 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v11 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(v9, v11))
  {
    v12 = *(self + 40);
    v13 = v41[5];
    recordZonesToSave = [v13 recordZonesToSave];
    recordZoneIDsToDelete = [v41[5] recordZoneIDsToDelete];
    *buf = 136316674;
    *&buf[4] = "[PFCloudKitExporter checkForZonesNeedingExport]";
    *&buf[12] = 1024;
    *&buf[14] = 251;
    *&buf[18] = 2112;
    *&buf[20] = self;
    *&buf[28] = 2112;
    *&buf[30] = v12;
    *&buf[38] = 2112;
    v57 = v13;
    v58 = 2112;
    v59 = recordZonesToSave;
    v60 = 2112;
    v61 = recordZoneIDsToDelete;
    _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): %@: Scheduling modifyRecordZonesOperation in response to request: %@ operation: %@\n%@\n%@", buf, 0x44u);
  }

  objc_autoreleasePoolPop(v8);
  v16 = *(self + 24);
  if (v16)
  {
    v17 = *(v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  [v17 addOperation:v41[5]];
LABEL_19:
  v22 = v47[5];
  v47[5] = 0;

  v41[5] = 0;
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);
  v23 = *MEMORY[0x1E69E9840];
}

void __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 32));
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
      WeakRetained = 0;
    }

    v7 = [(PFCloudKitStoreMonitor *)v6 newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v7 setTransactionAuthor:@"NSCloudKitMirroringDelegate.export"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_2;
    v12[3] = &unk_1E6EC43F8;
    v12[4] = v3;
    v12[5] = v7;
    v8 = *(a1 + 56);
    v13 = *(a1 + 40);
    v14 = v8;
    v15 = *(a1 + 72);
    [(NSManagedObjectContext *)v7 performBlockAndWait:v12];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v9 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(*(*(a1 + 40) + 40), "requestIdentifier")];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *(*(*(a1 + 56) + 8) + 40) = [v9 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v50 = *MEMORY[0x1E69E9840];
  if (![_PFRoutines _isInMemoryStore:?])
  {
    v39[0] = 0;
    if (([*(v1 + 40) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), v39}] & 1) == 0)
    {
      v2 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v4 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v5 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v5 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v5))
      {
        v6 = *(a1 + 48);
        *buf = 136315906;
        v43 = "[PFCloudKitExporter checkForZonesNeedingExport]_block_invoke_2";
        v44 = 1024;
        v45 = 124;
        v46 = 2112;
        v47 = v6;
        v48 = 2112;
        v49 = v39[0];
        _os_log_impl(&dword_18565F000, v4, v5, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v2);
    }

    v1 = a1;
  }

  v7 = *(v1 + 48);
  if (v7 && (v8 = *(v7 + 24)) != 0)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 databaseScope];
  if ((v10 - 1) <= 1)
  {
    v11 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:v10];
    if (![NSCKRecordZoneMetadata zoneMetadataForZoneID:v11 inDatabaseWithScope:v10 forStore:*(a1 + 32) inContext:*(a1 + 40) error:*(*(a1 + 64) + 8) + 40])
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v12 = *(*(*(a1 + 64) + 8) + 40);
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v13 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
    -[NSFetchRequest setPredicate:](v13, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"hasRecordZoneNum = NO AND database.databaseScopeNum = %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v10)]);
    v14 = *(*(a1 + 48) + 24);
    if (v14)
    {
      v15 = *(v14 + 32);
    }

    else
    {
      v15 = 0;
    }

    [(NSFetchRequest *)v13 setFetchLimit:v15];
    [(NSFetchRequest *)v13 setReturnsObjectsAsFaults:0];
    v41 = *(a1 + 32);
    -[NSFetchRequest setAffectedStores:](v13, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1]);
    v16 = [*(a1 + 40) executeFetchRequest:v13 error:*(*(a1 + 64) + 8) + 40];
    v17 = v16;
    if (v16)
    {
      if ([v16 count])
      {
        v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v18)
        {
          v19 = *v36;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v36 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v35 + 1) + 8 * i);
              v22 = objc_autoreleasePoolPush();
              v23 = [(NSCKRecordZoneMetadata *)v21 createRecordZoneID];
              v24 = [v23 ownerName];
              if ([v24 isEqualToString:getCloudKitCKCurrentUserDefaultName()] && (v25 = objc_msgSend(v23, "zoneName"), objc_msgSend(v25, "isEqualToString:", getCloudKitCKRecordZoneDefaultName[0]())))
              {
                [v21 setHasRecordZone:1];
                [v21 setSupportsAtomicChanges:1];
              }

              else
              {
                v26 = [v21 ckOwnerName];
                if ([v26 isEqualToString:getCloudKitCKCurrentUserDefaultName()])
                {
                  v27 = [objc_alloc(getCloudKitCKRecordZoneClass[0]()) initWithZoneID:v23];
                  [v31 addObject:v27];
                }

                else
                {
                  [*(a1 + 56) addObject:v23];
                }
              }

              objc_autoreleasePoolPop(v22);
            }

            v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v18);
        }

        if ([v31 count])
        {
          *(*(*(a1 + 80) + 8) + 40) = [objc_alloc(getCloudKitCKModifyRecordZonesOperationClass()) initWithRecordZonesToSave:v31 recordZoneIDsToDelete:0];
          if ([*(*(a1 + 48) + 40) options])
          {
            -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(*(a1 + 48) + 40) options], *(*(*(a1 + 80) + 8) + 40));
          }

          objc_initWeak(buf, *(a1 + 48));
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_19;
          v33[3] = &unk_1E6EC43D0;
          objc_copyWeak(&v34, buf);
          [*(*(*(a1 + 80) + 8) + 40) setModifyRecordZonesCompletionBlock:v33];
          objc_destroyWeak(&v34);
          objc_destroyWeak(buf);
        }

        if ([*(a1 + 40) hasChanges] && (objc_msgSend(*(a1 + 40), "save:", *(*(a1 + 64) + 8) + 40) & 1) == 0)
        {
          *(*(*(a1 + 72) + 8) + 24) = 0;
          v28 = *(*(*(a1 + 64) + 8) + 40);
        }
      }
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v29 = *(*(*(a1 + 64) + 8) + 40);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[4];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_2_20;
    v10[3] = &unk_1E6EC2920;
    v10[4] = v8;
    v10[5] = a2;
    v10[6] = a3;
    v10[7] = a4;
    dispatch_async(v9, v10);
  }
}

void *__48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_2_20(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[7];
    if (v4)
    {
      v5 = [NSCloudKitMirroringResult alloc];
      v6 = v3[8];
      if (v6)
      {
        v7 = *(v6 + 48);
      }

      else
      {
        v7 = 0;
      }

      v8 = [(NSCloudKitMirroringResult *)v5 initWithRequest:v3[5] storeIdentifier:v7 success:0 madeChanges:0 error:v4];
      [(PFCloudKitExporter *)v3 finishExportWithResult:v8];
    }

    else
    {
      v9 = a1[5];
      v15 = 0;
      if ([(PFCloudKitExporter *)v3 updateMetadataForSavedZones:v9 error:&v15])
      {
        [(PFCloudKitExporter *)v3 checkForZonesNeedingExport];
      }

      else
      {
        v10 = [NSCloudKitMirroringResult alloc];
        v11 = v3[8];
        if (v11)
        {
          v12 = *(v11 + 48);
        }

        else
        {
          v12 = 0;
        }

        v13 = [(NSCloudKitMirroringResult *)v10 initWithRequest:v3[5] storeIdentifier:v12 success:0 madeChanges:0 error:v15];
        [(PFCloudKitExporter *)v3 finishExportWithResult:v13];
      }
    }

    v3 = 0;
  }

  [v2 drain];
  return v3;
}

- (void)exportIfNecessary
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 1;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3052000000;
    v17 = __Block_byref_object_copy__34;
    v18 = __Block_byref_object_dispose__34;
    v19 = 0;
    v2 = *(self + 64);
    v3 = *(self + 40);
    if (v3 && (([*(v3 + 64) shouldDefer] & 1) != 0 || (*(v3 + 40) & 1) != 0))
    {
      *(v21 + 24) = 0;
      v4 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = *MEMORY[0x1E696A588];
      v25[0] = @"The request was aborted because it was deferred by the system.";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v6 = [v4 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v5];
      v15[5] = v6;
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __39__PFCloudKitExporter_exportIfNecessary__block_invoke;
      v13[3] = &unk_1E6EC1A00;
      v13[4] = v2;
      v13[5] = self;
      v13[6] = &v20;
      v13[7] = &v14;
      [(PFCloudKitStoreMonitor *)v2 performBlock:v13];
    }

    if ((v21[3] & 1) == 0)
    {
      v7 = [NSCloudKitMirroringResult alloc];
      v8 = *(self + 64);
      if (v8)
      {
        v9 = *(v8 + 48);
      }

      else
      {
        v9 = 0;
      }

      v10 = [(NSCloudKitMirroringResult *)v7 initWithRequest:*(self + 40) storeIdentifier:v9 success:0 madeChanges:0 error:v15[5]];
      [(PFCloudKitExporter *)self finishExportWithResult:v10];
    }

    v11 = v15[5];
    v15[5] = 0;

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v20, 8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)finishExportWithResult:(void *)result
{
  v46 = *MEMORY[0x1E69E9840];
  if (result)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v36 = 0;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    resultCopy = result;
    v4 = result[7];
    if (v4)
    {
      v5 = *(v4 + 40);
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 countByEnumeratingWithState:&v32 objects:v45 count:{16, a2}];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      v9 = *MEMORY[0x1E696A250];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          if (([defaultManager removeItemAtURL:v11 error:&v36] & 1) == 0 && (!objc_msgSend(objc_msgSend(v36, "domain"), "isEqualToString:", v9) || objc_msgSend(v36, "code") != 4))
          {
            v12 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v14 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v15 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v15 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(Stream, v15))
            {
              *buf = 136315906;
              v38 = "[PFCloudKitExporter purgeWrittenAssetURLs]";
              v39 = 1024;
              v40 = 896;
              v41 = 2112;
              v42 = v11;
              v43 = 2112;
              v44 = v36;
              _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Failed to delete asset file: %@\n%@", buf, 0x26u);
            }

            objc_autoreleasePoolPop(v12);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v32 objects:v45 count:16];
      }

      while (v7);
    }

    v16 = [PFCloudKitExportedRecordBytesMetric alloc];
    v17 = resultCopy[3];
    if (v17)
    {
      v18 = *(v17 + 16);
    }

    else
    {
      v18 = 0;
    }

    v19 = -[PFCloudKitSizeMetric initWithContainerIdentifier:](v16, "initWithContainerIdentifier:", [v18 containerIdentifier]);
    v20 = v19;
    v21 = resultCopy[7];
    if (v21)
    {
      v22 = *(v21 + 16);
    }

    else
    {
      v22 = 0;
    }

    [(PFCloudKitSizeMetric *)v19 addByteSize:v22];
    v23 = resultCopy[3];
    if (v23 && (v24 = *(v23 + 16)) != 0)
    {
      v25 = *(v24 + 72);
    }

    else
    {
      v25 = 0;
    }

    [(PFMetricsClient *)v25 logMetric:v20];

    v26 = resultCopy[2];
    if (v26)
    {
      (*(v26 + 16))(v26, v30);
      v27 = resultCopy[2];
    }

    else
    {
      v27 = 0;
    }

    resultCopy[2] = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __39__PFCloudKitExporter_exportIfNecessary__block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 32));
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
      WeakRetained = 0;
    }

    v7 = [(PFCloudKitStoreMonitor *)v6 newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v7 setTransactionAuthor:@"NSCloudKitMirroringDelegate.export"];
    [(NSManagedObjectContext *)v7 _setAllowAncillaryEntities:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__PFCloudKitExporter_exportIfNecessary__block_invoke_2;
    v11[3] = &unk_1E6EC1900;
    v11[4] = *(a1 + 40);
    v11[5] = v3;
    v11[6] = v7;
    v12 = *(a1 + 48);
    [(NSManagedObjectContext *)v7 performBlockAndWait:v11];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = *MEMORY[0x1E696A588];
    v14[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(*(*(a1 + 40) + 40), "requestIdentifier")];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *(*(*(a1 + 56) + 8) + 40) = [v8 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __39__PFCloudKitExporter_exportIfNecessary__block_invoke_2(uint64_t a1)
{
  v123 = *MEMORY[0x1E69E9840];
  v104 = 0;
  v2 = *(a1 + 32);
  v101 = v2;
  if (!v2)
  {
    goto LABEL_88;
  }

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v106[0] = 0;
  v102 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (![_PFRoutines _isInMemoryStore:v4])
  {
    v105 = 0;
    if (([v3 setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), &v105}] & 1) == 0)
    {
      v5 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v7 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v8 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v8 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v8))
      {
        *buf = 136315906;
        *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
        v117 = 1024;
        v118 = 477;
        v119 = 2112;
        v120 = v101;
        v121 = 2112;
        *v122 = v105;
        _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  v99 = @"NSCloudKitMirroringDelegateLastHistoryTokenKey";
  v9 = [NSCKMetadataEntry entryForKey:v4 fromStore:v3 inManagedObjectContext:v106 error:?];
  if (v106[0])
  {
    v10 = v106[0];
    v11 = objc_autoreleasePoolPush();
    v12 = __PFCloudKitLoggingGetStream();
    v13 = v12;
    if (__ckLoggingOverride == 17)
    {
      v14 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v14 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v12, v14))
    {
      *buf = 136315650;
      *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
      v117 = 1024;
      v118 = 489;
      v119 = 2112;
      v120 = v106[0];
      _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): Unable to read the last history token: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = [v9 transformedValue];
    v17 = 1;
    v18 = [NSCKMetadataEntry entryForKey:v4 fromStore:v3 inManagedObjectContext:v106 error:?];
    if (v106[0])
    {
      v19 = v106[0];
      v20 = objc_autoreleasePoolPush();
      v21 = __PFCloudKitLoggingGetStream();
      v22 = v21;
      if (__ckLoggingOverride == 17)
      {
        v23 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v23 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v21, v23))
      {
        *buf = 136315650;
        *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
        v117 = 1024;
        v118 = 503;
        v119 = 2112;
        v120 = v106[0];
        _os_log_impl(&dword_18565F000, v22, v23, "CoreData+CloudKit: %s(%d): Unable to read the bypass entry: %@", buf, 0x1Cu);
      }

      v17 = 0;
      objc_autoreleasePoolPop(v20);
      v15 = 0;
    }

    else
    {
      v15 = [v18 BOOLValue];
      if ((v16 == 0) | v15 & 1)
      {
        if (![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:1 BOOLValue:v4 forStore:v3 intoManagedObjectContext:v106 error:?])
        {
          v17 = 0;
          v24 = v106[0];
        }
      }

      else
      {
        v15 = 0;
      }
    }
  }

  if ([v3 hasChanges] && (objc_msgSend(v3, "save:", v106) & 1) == 0)
  {
    v30 = 0;
    v27 = 0;
    v35 = v106[0];
    v34 = 0;
    goto LABEL_67;
  }

  if (v17)
  {
    v25 = objc_alloc_init(PFCloudKitHistoryAnalyzerOptions);
    v27 = v25;
    if (v25)
    {
      *(&v25->_includePrivateTransactions + 1) = v15;
      objc_setProperty_nonatomic(v25, v26, v101[5], 40);
    }

    v28 = [[PFCloudKitHistoryAnalyzer alloc] initWithOptions:v27 managedObjectContext:v3];
    v29 = objc_autoreleasePoolPush();
    v30 = v28;
    v31 = __PFCloudKitLoggingGetStream();
    v32 = v31;
    v33 = __ckLoggingOverride;
    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
    {
      v33 = OS_LOG_TYPE_INFO;
    }

    if (os_log_type_enabled(v31, v33))
    {
      *buf = 136316162;
      *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
      v117 = 1024;
      v118 = 534;
      v119 = 2112;
      v120 = v101;
      v121 = 1024;
      *v122 = v15;
      *&v122[4] = 2112;
      *&v122[6] = v16;
      _os_log_impl(&dword_18565F000, v32, v33, "CoreData+CloudKit: %s(%d): %@: Exporting changes since (%d): %@", buf, 0x2Cu);
    }

    objc_autoreleasePoolPop(v29);
    *v113 = MEMORY[0x1E69E9820];
    *&v113[8] = 3221225472;
    *&v113[16] = __75__PFCloudKitExporter_analyzeHistoryInStore_withManagedObjectContext_error___block_invoke;
    *&v113[24] = &unk_1E6EC4448;
    *&v113[32] = v4;
    v114 = v3;
    v115 = 1;
    if (([(PFHistoryAnalyzer *)v30 streamProcessedChangesForStore:v4 inContext:v3 sinceLastHistoryToken:v16 contextHandler:v113 error:v106]& 1) != 0)
    {
      v34 = 1;
      goto LABEL_67;
    }

    if (!v106[0])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: History analyzer should have set an error if the analyzer context is nil.\n", buf, 2u);
      }

      v37 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v37, OS_LOG_TYPE_FAULT, "CoreData: History analyzer should have set an error if the analyzer context is nil.", buf, 2u);
      }
    }

    v38 = v106[0];
    v39 = [v106[0] domain];
    if (![v39 isEqualToString:*MEMORY[0x1E696A250]] || objc_msgSend(v106[0], "code") != 134419 || !v30 || !v30[3])
    {
      goto LABEL_66;
    }

    v105 = 0;
    if (![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v100 transformedValue:v30[3] forStore:v4 intoManagedObjectContext:v3 error:&v105])
    {
      v40 = objc_autoreleasePoolPush();
      v45 = __PFCloudKitLoggingGetStream();
      v42 = v45;
      if (__ckLoggingOverride == 17)
      {
        v43 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v43 = OS_LOG_TYPE_ERROR;
      }

      if (!os_log_type_enabled(v45, v43))
      {
        goto LABEL_65;
      }

      *buf = 136315906;
      *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
      v117 = 1024;
      v118 = 601;
      v119 = 2112;
      v120 = v101;
      v121 = 2112;
      *v122 = v105;
      v44 = "CoreData+CloudKit: %s(%d): %@: Failed to update exporter history token after deferral: %@";
      goto LABEL_64;
    }

    if (([v3 save:&v105] & 1) == 0)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = __PFCloudKitLoggingGetStream();
      v42 = v41;
      if (__ckLoggingOverride == 17)
      {
        v43 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v43 = OS_LOG_TYPE_ERROR;
      }

      if (!os_log_type_enabled(v41, v43))
      {
        goto LABEL_65;
      }

      *buf = 136315906;
      *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
      v117 = 1024;
      v118 = 598;
      v119 = 2112;
      v120 = v101;
      v121 = 2112;
      *v122 = v105;
      v44 = "CoreData+CloudKit: %s(%d): %@: Failed to save exporter history token after deferral: %@";
LABEL_64:
      _os_log_impl(&dword_18565F000, v42, v43, v44, buf, 0x26u);
LABEL_65:
      objc_autoreleasePoolPop(v40);
    }
  }

  else
  {
    v30 = 0;
    v27 = 0;
  }

LABEL_66:
  v34 = 0;
LABEL_67:

  if ((v34 & 1) == 0)
  {
    v46 = v106[0];
    if (v46)
    {
      v104 = v46;
    }

    else
    {
      v47 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
        v117 = 1024;
        v118 = 629;
        _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v48 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
        v117 = 1024;
        v118 = 629;
        _os_log_fault_impl(&dword_18565F000, v48, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  if ((v34 & 1) == 0)
  {
    v2 = v104;
LABEL_88:
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v58 = v2;
    goto LABEL_89;
  }

  v49 = *(a1 + 32);
  if (v49)
  {
    v50 = *(v49 + 40);
    if (v50)
    {
      if ([*(v50 + 64) shouldDefer] & 1) != 0 || (*(v50 + 40))
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v110 = *MEMORY[0x1E696A588];
        v111 = @"The request was aborted because it was deferred by the system.";
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
        v53 = [v51 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v52];
LABEL_80:
        *(*(*(a1 + 64) + 8) + 40) = v53;
        goto LABEL_81;
      }
    }
  }

  v60 = [NSCKHistoryAnalyzerState countAnalyzerStatesInStore:*(a1 + 48) withManagedObjectContext:&v104 error:?];
  if (v60)
  {
    if ([v60 integerValue] >= 1)
    {
      v61 = a1 + 56;
      v62 = 1;
      goto LABEL_130;
    }

    v84 = [NSCKMetadataEntry entryForKey:*(a1 + 40) fromStore:*(a1 + 48) inManagedObjectContext:&v104 error:?];
    if (v84)
    {
      v62 = [v84 BOOLValue];
      goto LABEL_126;
    }

    v92 = v104;
    if (!v104)
    {
      v62 = 0;
      goto LABEL_126;
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v82 = v92;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v82 = v104;
  }

  v83 = v82;
  v62 = 0;
  *(*(*(a1 + 64) + 8) + 40) = v83;
LABEL_126:
  v61 = a1 + 56;
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && (v62 & 1) == 0)
  {
    v85 = +[NSCKRecordZoneMoveReceipt countMoveReceiptsInStore:matchingPredicate:withManagedObjectContext:error:](NSCKRecordZoneMoveReceipt, "countMoveReceiptsInStore:matchingPredicate:withManagedObjectContext:error:", *(a1 + 40), [MEMORY[0x1E696AE18] predicateWithFormat:@"needsCloudDelete == 1"], *(a1 + 48), &v104);
    if (!v85)
    {
LABEL_133:
      *(*(*v61 + 8) + 24) = 0;
      v53 = v104;
      goto LABEL_80;
    }

    v62 = [v85 integerValue] > 0;
  }

LABEL_130:
  if (*(*(*v61 + 8) + 24) == 1 && v62 && ([*(*(a1 + 32) + 56) processAnalyzedHistoryInStore:*(a1 + 40) inManagedObjectContext:*(a1 + 48) error:&v104] & 1) == 0)
  {
    goto LABEL_133;
  }

LABEL_81:
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v54 = *(a1 + 32);
    if (v54)
    {
      v55 = *(v54 + 40);
      if (v55)
      {
        if ([*(v55 + 64) shouldDefer] & 1) != 0 || (*(v55 + 40))
        {
          *(*(*(a1 + 56) + 8) + 24) = 0;
          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v107 = *MEMORY[0x1E696A588];
          v108 = @"The request was aborted because it was deferred by the system.";
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
          v58 = [v56 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v57];
LABEL_89:
          *(*(*(a1 + 64) + 8) + 40) = v58;
          goto LABEL_90;
        }
      }
    }

    if (![_PFRoutines _isInMemoryStore:?])
    {
      *buf = 0;
      if (([*(a1 + 48) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), buf}] & 1) == 0)
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
          v67 = *(a1 + 32);
          *v113 = 136315906;
          *&v113[4] = "[PFCloudKitExporter exportIfNecessary]_block_invoke_2";
          *&v113[12] = 1024;
          *&v113[14] = 355;
          *&v113[18] = 2112;
          *&v113[20] = v67;
          *&v113[28] = 2112;
          *&v113[30] = *buf;
          _os_log_impl(&dword_18565F000, v65, v66, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", v113, 0x26u);
        }

        objc_autoreleasePoolPop(v63);
      }
    }

    v112 = 0;
    if (![*(*(a1 + 32) + 56) checkForObjectsNeedingExportInStore:*(a1 + 40) andReturnCount:&v112 withManagedObjectContext:*(a1 + 48) error:&v104])
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v58 = v104;
      goto LABEL_89;
    }

    v68 = objc_autoreleasePoolPush();
    v69 = __PFCloudKitLoggingGetStream();
    v70 = v69;
    v71 = __ckLoggingOverride;
    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
    {
      v71 = OS_LOG_TYPE_INFO;
    }

    if (os_log_type_enabled(v69, v71))
    {
      v72 = *(a1 + 32);
      *v113 = 136315906;
      *&v113[4] = "[PFCloudKitExporter exportIfNecessary]_block_invoke";
      *&v113[12] = 1024;
      *&v113[14] = 364;
      *&v113[18] = 2112;
      *&v113[20] = v72;
      *&v113[28] = 2048;
      *&v113[30] = v112;
      _os_log_impl(&dword_18565F000, v70, v71, "CoreData+CloudKit: %s(%d): %@: Found %lu objects needing export.", v113, 0x26u);
    }

    objc_autoreleasePoolPop(v68);
    if (v112)
    {
      v73 = [(PFCloudKitExportContext *)*(*(a1 + 32) + 56) newOperationBySerializingDirtyObjectsInStore:*(a1 + 48) inManagedObjectContext:&v104 error:?];
      if (v73)
      {
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
        v75 = *(a1 + 32);
        v109 = v73;
        [WeakRetained exporter:v75 willScheduleOperations:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v109, 1)}];

        v76 = *(a1 + 32);
        if (v76)
        {
          objc_initWeak(buf, *(a1 + 32));
          if ([*(v76 + 40) options])
          {
            -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v76 + 40) options], v73);
          }

          [v73 setSavePolicy:1];
          v77 = *(v76 + 24);
          if (!v77 || (v78 = *(v77 + 16)) == 0 || (*(v78 + 18) & 1) == 0)
          {
            [v73 setSavePolicy:0];
          }

          v79 = [v73 operationID];
          *v113 = MEMORY[0x1E69E9820];
          *&v113[8] = 3221225472;
          *&v113[16] = __39__PFCloudKitExporter_executeOperation___block_invoke;
          *&v113[24] = &unk_1E6EC4498;
          objc_copyWeak(&v114, buf);
          *&v113[32] = v79;
          [v73 setModifyRecordsCompletionBlock:v113];
          v80 = *(v76 + 24);
          if (v80)
          {
            v81 = *(v80 + 8);
          }

          else
          {
            v81 = 0;
          }

          [v81 addOperation:v73];
          objc_destroyWeak(&v114);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        v93 = v104;
        if (v104)
        {
          *(*(*(a1 + 56) + 8) + 24) = 0;
          *(*(*(a1 + 64) + 8) + 40) = v93;
        }

        else
        {
          v94 = [NSCloudKitMirroringResult alloc];
          v95 = *(a1 + 32);
          v96 = *(v95 + 64);
          if (v96)
          {
            v97 = *(v96 + 48);
          }

          else
          {
            v97 = 0;
          }

          v98 = [(NSCloudKitMirroringResult *)v94 initWithRequest:*(v95 + 40) storeIdentifier:v97 success:1 madeChanges:0 error:0];
          [(PFCloudKitExporter *)*(a1 + 32) finishExportWithResult:v98];
        }
      }
    }

    else
    {
      *v113 = 0;
      *&v113[8] = v113;
      *&v113[16] = 0x2020000000;
      v113[24] = 0;
      v86 = *(*(a1 + 32) + 8);
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __39__PFCloudKitExporter_exportIfNecessary__block_invoke_44;
      v103[3] = &unk_1E6EC4420;
      v103[4] = v113;
      [v86 enumerateKeysAndObjectsUsingBlock:v103];
      v87 = [NSCloudKitMirroringResult alloc];
      v88 = *(a1 + 32);
      v89 = *(v88 + 64);
      if (v89)
      {
        v90 = *(v89 + 48);
      }

      else
      {
        v90 = 0;
      }

      v91 = [(NSCloudKitMirroringResult *)v87 initWithRequest:*(v88 + 40) storeIdentifier:v90 success:1 madeChanges:*(*&v113[8] + 24) error:0];
      [(PFCloudKitExporter *)*(a1 + 32) finishExportWithResult:v91];

      _Block_object_dispose(v113, 8);
    }
  }

LABEL_90:
  v59 = *MEMORY[0x1E69E9840];
}

uint64_t __39__PFCloudKitExporter_exportIfNecessary__block_invoke_44(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 madeChanges];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

BOOL __75__PFCloudKitExporter_analyzeHistoryInStore_withManagedObjectContext_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0;
  if (!a2 || (v5 = *(a2 + 48)) == 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal invocation of the context handler block with an analyzer context without a final history token: %@\n", buf, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v24 = a2;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal invocation of the context handler block with an analyzer context without a final history token: %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  [NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v5 transformedValue:*(a1 + 32) forStore:*(a1 + 40) intoManagedObjectContext:&v22 error:?];
  v7 = v22;
  if (v22)
  {
    goto LABEL_4;
  }

  v11 = [NSCKMetadataEntry entryForKey:*(a1 + 32) fromStore:*(a1 + 40) inManagedObjectContext:&v22 error:?];
  v12 = v22;
  if (v22)
  {
    v13 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v15 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v16 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v16 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v16))
    {
      *buf = 136315650;
      v24 = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]_block_invoke";
      v25 = 1024;
      v26 = 553;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_18565F000, v15, v16, "CoreData+CloudKit: %s(%d): Unable to read the bypass entry: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v17 = v11;
    if (v11)
    {
      [*(a1 + 40) deleteObject:v11];
    }
  }

  if (*(a1 + 48) != 1 || ![*(a1 + 40) hasChanges])
  {
    if (v12)
    {
      goto LABEL_26;
    }

LABEL_10:
    result = 1;
    goto LABEL_32;
  }

  v18 = [*(a1 + 40) save:&v22];
  [*(a1 + 40) reset];
  if (!v12 && (v18 & 1) != 0)
  {
    goto LABEL_10;
  }

LABEL_26:
  v7 = v22;
  if (v22)
  {
LABEL_4:
    if (a3)
    {
      result = 0;
      *a3 = v7;
      goto LABEL_32;
    }

LABEL_31:
    result = 0;
    goto LABEL_32;
  }

  v19 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
    v25 = 1024;
    v26 = 571;
    _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v20 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
    v25 = 1024;
    v26 = 571;
    _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_31;
  }

LABEL_32:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void __39__PFCloudKitExporter_executeOperation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PFCloudKitExporter_executeOperation___block_invoke_2;
    block[3] = &unk_1E6EC4470;
    v11 = *(a1 + 32);
    block[4] = v9;
    block[5] = v11;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_async(v10, block);
  }
}

id __39__PFCloudKitExporter_executeOperation___block_invoke_2(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[5];
    v5 = a1[6];
    v7 = a1[7];
    v6 = a1[8];
    v8 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v10 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v11 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v11 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v11))
    {
      *v18 = 136316162;
      *&v18[4] = "[PFCloudKitExporter exportOperationFinished:withSavedRecords:deletedRecordIDs:operationError:]";
      *&v18[12] = 1024;
      *&v18[14] = 677;
      *&v18[18] = 2112;
      *&v18[20] = v5;
      *&v18[28] = 2112;
      *&v18[30] = v7;
      *&v18[38] = 2112;
      v19 = v6;
      _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): Modify records finished: %@\n%@\n%@", v18, 0x30u);
    }

    objc_autoreleasePoolPop(v8);
    if (v6)
    {
      v12 = [NSCloudKitMirroringResult alloc];
      v13 = *(v3 + 64);
      if (v13)
      {
        v14 = *(v13 + 48);
      }

      else
      {
        v14 = 0;
      }

      v15 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v12, "initWithRequest:storeIdentifier:success:madeChanges:error:", *(v3 + 40), v14, 0, [*(v3 + 8) count] != 0, v6);
      [(PFCloudKitExporter *)v3 finishExportWithResult:v15];
    }

    else
    {
      v15 = *(v3 + 64);
      *v18 = MEMORY[0x1E69E9820];
      *&v18[8] = 3221225472;
      *&v18[16] = __95__PFCloudKitExporter_exportOperationFinished_withSavedRecords_deletedRecordIDs_operationError___block_invoke;
      *&v18[24] = &unk_1E6EC44E8;
      *&v18[32] = v15;
      v19 = v3;
      v20 = v5;
      v21 = v7;
      v22 = 0;
      v23 = v4;
      [(PFCloudKitStoreMonitor *)v15 performBlock:v18];
    }
  }

  [v2 drain];
  result = 0;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void __95__PFCloudKitExporter_exportOperationFinished_withSavedRecords_deletedRecordIDs_operationError___block_invoke(uint64_t a1)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 32));
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
      WeakRetained = 0;
    }

    v7 = [(PFCloudKitStoreMonitor *)v6 newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    [(NSManagedObjectContext *)v7 setTransactionAuthor:@"NSCloudKitMirroringDelegate.export"];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 1;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3052000000;
    v34 = __Block_byref_object_copy__34;
    v35 = __Block_byref_object_dispose__34;
    v36 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __95__PFCloudKitExporter_exportOperationFinished_withSavedRecords_deletedRecordIDs_operationError___block_invoke_2;
    v24[3] = &unk_1E6EC44C0;
    v24[4] = *(a1 + 40);
    v24[5] = v3;
    v25 = *(a1 + 48);
    v8 = *(a1 + 72);
    v26 = *(a1 + 64);
    v27 = v7;
    v29 = &v31;
    v30 = &v37;
    v28 = v8;
    [(NSManagedObjectContext *)v7 performBlockAndWait:v24];
    v9 = [NSCloudKitMirroringResult alloc];
    v10 = *(a1 + 40);
    v11 = *(v10 + 64);
    if (v11)
    {
      v12 = *(v11 + 48);
    }

    else
    {
      v12 = 0;
    }

    v13 = [(NSCloudKitMirroringResult *)v9 initWithRequest:*(v10 + 40) storeIdentifier:v12 success:*(v38 + 24) madeChanges:*(v38 + 24) error:v32[5]];
    [*(*(a1 + 40) + 8) setObject:v13 forKey:*(a1 + 72)];
    v14 = *(a1 + 40);
    if (*(v38 + 24) == 1)
    {
      [(PFCloudKitExporter *)v14 exportIfNecessary];
    }

    else
    {
      [(PFCloudKitExporter *)v14 finishExportWithResult:v13];
    }

    v32[5] = 0;
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v15 = [NSCloudKitMirroringResult alloc];
    v16 = *(a1 + 40);
    v17 = *(v16 + 40);
    v18 = *(v16 + 64);
    if (v18)
    {
      v19 = *(v18 + 48);
    }

    else
    {
      v19 = 0;
    }

    v20 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A588];
    v42[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(v17, "requestIdentifier")];
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v22 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v15, "initWithRequest:storeIdentifier:success:madeChanges:error:", v17, v19, 0, 0, [v20 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v21]);
    [(PFCloudKitExporter *)*(a1 + 40) finishExportWithResult:v22];
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __95__PFCloudKitExporter_exportOperationFinished_withSavedRecords_deletedRecordIDs_operationError___block_invoke_2(uint64_t a1)
{
  v95 = *MEMORY[0x1E69E9840];
  if (![(PFCloudKitExportContext *)*(*(a1 + 32) + 56) modifyRecordsOperationFinishedForStore:*(a1 + 48) withSavedRecords:*(a1 + 56) deletedRecordIDs:*(a1 + 64) operationError:*(a1 + 72) managedObjectContext:(*(*(a1 + 88) + 8) + 40) error:?])
  {
    v28 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v30 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v31 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v31 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(Stream, v31))
    {
      goto LABEL_53;
    }

    v32 = *(a1 + 32);
    v33 = *(a1 + 80);
    v34 = *(*(*(a1 + 88) + 8) + 40);
    *v85 = 136316162;
    v86 = "[PFCloudKitExporter exportOperationFinished:withSavedRecords:deletedRecordIDs:operationError:]_block_invoke";
    v87 = 1024;
    v88 = 722;
    v89 = 2112;
    v90 = v32;
    v91 = 2112;
    v92 = v33;
    v93 = 2112;
    v94 = v34;
    v35 = "CoreData+CloudKit: %s(%d): %@ - Failed to update metadadata after operation finished (%@): %@";
    v36 = v31;
    v37 = v30;
    v38 = 48;
LABEL_52:
    _os_log_impl(&dword_18565F000, v37, v36, v35, v85, v38);
LABEL_53:
    objc_autoreleasePoolPop(v28);
    goto LABEL_54;
  }

  v56 = *(a1 + 32);
  if (v56)
  {
    v1 = *(a1 + 56);
    obj = *(a1 + 48);
    v2 = *(a1 + 40);
    v3 = *(a1 + 72);
    v52 = *(*(a1 + 88) + 8);
    v70[0] = 0;
    v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v53 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [NSCKRecordMetadata createMapOfMetadataMatchingRecords:v1 andRecordIDs:v2 inStore:v3 withManagedObjectContext:v70 error:?];
    if (v4)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v5 = [obj countByEnumeratingWithState:&v66 objects:v85 count:16];
      v51 = v2;
      if (v5)
      {
        v6 = *v67;
        do
        {
          v7 = 0;
          do
          {
            if (*v67 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v66 + 1) + 8 * v7);
            if ((+[PFCloudKitSerializer isMirroredRelationshipRecordType:](PFCloudKitSerializer, [v8 recordType]) & 1) == 0)
            {
              v9 = [v8 recordType];
              if (([v9 isEqualToString:getCloudKitCKRecordTypeShare()] & 1) == 0)
              {
                v10 = [v4 objectForKey:{objc_msgSend(v8, "recordID")}];
                if (v10)
                {
                  v11 = *(v56 + 24);
                  if (v11 && (v12 = *(v11 + 16)) != 0)
                  {
                    v13 = *(v12 + 136);
                  }

                  else
                  {
                    v13 = 0;
                  }

                  v14 = [(PFCloudKitArchivingUtilities *)v13 encodeRecord:v8 error:v70];
                  if (v14)
                  {
                    [v10 updateEncodedRecordWithData:v14];
                    [v10 destroySystemFields];
                  }

                  if ([v10 pendingExportTransactionNumber])
                  {
                    [v10 setLastExportedTransactionNumber:{objc_msgSend(v10, "pendingExportTransactionNumber")}];
                    [v10 setPendingExportTransactionNumber:0];
                  }

                  if (!v14)
                  {
                    goto LABEL_63;
                  }
                }

                else
                {
                  LogStream = _PFLogGetLogStream(17);
                  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v73 = v8;
                    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Metadata Inconsistency: Missing metadata for record: %@\n", buf, 0xCu);
                  }

                  v16 = _PFLogGetLogStream(17);
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412290;
                    v73 = v8;
                    _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Metadata Inconsistency: Missing metadata for record: %@", buf, 0xCu);
                  }
                }
              }
            }

            ++v7;
          }

          while (v5 != v7);
          v17 = [obj countByEnumeratingWithState:&v66 objects:v85 count:16];
          v5 = v17;
        }

        while (v17);
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v18 = [v1 countByEnumeratingWithState:&v62 objects:v84 count:16];
      if (v18)
      {
        v19 = *v63;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v63 != v19)
            {
              objc_enumerationMutation(v1);
            }

            v21 = [v4 objectForKey:*(*(&v62 + 1) + 8 * i)];
            if (v21)
            {
              [v3 deleteObject:v21];
            }
          }

          v18 = [v1 countByEnumeratingWithState:&v62 objects:v84 count:16];
        }

        while (v18);
      }

      v22 = [NSCKRecordZoneMoveReceipt moveReceiptsMatchingRecordIDs:v1 inManagedObjectContext:v3 persistentStore:v51 error:v70];
      v23 = v22;
      if (v22)
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v24 = [v22 countByEnumeratingWithState:&v58 objects:v71 count:16];
        if (v24)
        {
          v25 = *v59;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v59 != v25)
              {
                objc_enumerationMutation(v23);
              }

              [*(*(&v58 + 1) + 8 * j) setNeedsCloudDelete:0];
            }

            v24 = [v23 countByEnumeratingWithState:&v58 objects:v71 count:16];
          }

          while (v24);
        }

        v27 = 1;
        goto LABEL_64;
      }
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      v42 = __PFCloudKitLoggingGetStream();
      v43 = v42;
      if (__ckLoggingOverride == 17)
      {
        v44 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v44 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v42, v44))
      {
        *buf = 136316418;
        v73 = "[PFCloudKitExporter updateMetadataForSavedRecords:deletedRecordIDs:inStore:withManagedObjectContext:error:]";
        v74 = 1024;
        v75 = 841;
        v76 = 2112;
        v77 = v56;
        v78 = 2112;
        v79 = v70[0];
        v80 = 2112;
        v81 = obj;
        v82 = 2112;
        v83 = v1;
        _os_log_impl(&dword_18565F000, v43, v44, "CoreData+CloudKit: %s(%d): %@ - Failed to fetch metadata for post-export update: %@\n%@\n%@", buf, 0x3Au);
      }

      objc_autoreleasePoolPop(v41);
      v4 = 0;
    }

LABEL_63:
    v27 = 0;
LABEL_64:

    if ((v27 & 1) == 0)
    {
      if (v70[0])
      {
        *(v52 + 40) = v70[0];
      }

      else
      {
        v49 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
          v74 = 1024;
          v75 = 865;
          _os_log_error_impl(&dword_18565F000, v49, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v50 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v73 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
          v74 = 1024;
          v75 = 865;
          _os_log_fault_impl(&dword_18565F000, v50, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      goto LABEL_54;
    }

    result = [*(a1 + 72) save:*(*(a1 + 88) + 8) + 40];
    if (result)
    {
      goto LABEL_55;
    }

    v28 = objc_autoreleasePoolPush();
    v45 = __PFCloudKitLoggingGetStream();
    v46 = v45;
    if (__ckLoggingOverride == 17)
    {
      v47 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v47 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v45, v47))
    {
      goto LABEL_53;
    }

    v48 = *(*(*(a1 + 88) + 8) + 40);
    *v85 = 136315650;
    v86 = "[PFCloudKitExporter exportOperationFinished:withSavedRecords:deletedRecordIDs:operationError:]_block_invoke_2";
    v87 = 1024;
    v88 = 713;
    v89 = 2112;
    v90 = v48;
    v35 = "CoreData+CloudKit: %s(%d): Failed to save record name updates: %@";
    v36 = v47;
    v37 = v46;
    v38 = 28;
    goto LABEL_52;
  }

LABEL_54:
  *(*(*(a1 + 96) + 8) + 24) = 0;
  result = *(*(*(a1 + 88) + 8) + 40);
LABEL_55:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)updateMetadataForSavedZones:(void *)zones error:
{
  v33[1] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__34;
  v22 = __Block_byref_object_dispose__34;
  v23 = 0;
  v6 = *(self + 64);
  v7 = *(self + 40);
  if (v7 && (([*(v7 + 64) shouldDefer] & 1) != 0 || (*(v7 + 40) & 1) != 0))
  {
    *(v25 + 24) = 0;
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v32 = *MEMORY[0x1E696A588];
    v33[0] = @"The request was aborted because it was deferred by the system.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v10 = [v8 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v9];
    v19[5] = v10;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__PFCloudKitExporter_updateMetadataForSavedZones_error___block_invoke;
    v17[3] = &unk_1E6EC1900;
    v17[4] = v6;
    v17[5] = a2;
    v17[6] = self;
    v17[7] = &v18;
    v17[8] = &v24;
    [(PFCloudKitStoreMonitor *)v6 performBlock:v17];
  }

  if ((v25[3] & 1) == 0)
  {
    v14 = v19[5];
    if (v14)
    {
      if (zones)
      {
        *zones = v14;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
        v30 = 1024;
        v31 = 1002;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
        v30 = 1024;
        v31 = 1002;
        _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v19[5] = 0;
  v11 = *(v25 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __56__PFCloudKitExporter_updateMetadataForSavedZones_error___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 32));
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
      WeakRetained = 0;
    }

    v7 = [(PFCloudKitStoreMonitor *)v6 newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v7 setTransactionAuthor:@"NSCloudKitMirroringDelegate.export"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PFCloudKitExporter_updateMetadataForSavedZones_error___block_invoke_2;
    v11[3] = &unk_1E6EC3180;
    v12 = *(a1 + 40);
    v13 = v3;
    v14 = v7;
    v15 = *(a1 + 56);
    [(NSManagedObjectContext *)v7 performBlockAndWait:v11];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(*(*(a1 + 48) + 40), "requestIdentifier")];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *(*(*(a1 + 56) + 8) + 40) = [v8 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __56__PFCloudKitExporter_updateMetadataForSavedZones_error___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  v4 = result;
  if (result)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [v7 zoneID];
        v9 = *(a1 + 40);
        if (v9 && (v10 = *(v9 + 24)) != 0)
        {
          v11 = *(v10 + 16);
        }

        else
        {
          v11 = 0;
        }

        v12 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v8, [v11 databaseScope], *(a1 + 48), *(a1 + 56), *(*(a1 + 64) + 8) + 40);
        if (!v12 || (v13 = [v7 capabilities], -[NSManagedObject setSupportsFetchChanges:](v12, "setSupportsFetchChanges:", v13 & 1), -[NSManagedObject setSupportsRecordSharing:](v12, "setSupportsRecordSharing:", (v13 >> 2) & 1), -[NSManagedObject setSupportsAtomicChanges:](v12, "setSupportsAtomicChanges:", (v13 >> 1) & 1), -[NSManagedObject setSupportsZoneSharing:](v12, "setSupportsZoneSharing:", (v13 >> 3) & 1), -[NSManagedObject setHasRecordZone:](v12, "setHasRecordZone:", 1), (objc_msgSend(*(a1 + 56), "save:", *(*(a1 + 64) + 8) + 40) & 1) == 0))
        {
          *(*(*(a1 + 72) + 8) + 24) = 0;
          v14 = *(*(*(a1 + 64) + 8) + 40);
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v4 = result;
    }

    while (result);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void __39__PFCloudKitExporter_fetchRecordZones___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PFCloudKitExporter_fetchRecordZones___block_invoke_2;
    block[3] = &unk_1E6EC19D8;
    block[4] = *(a1 + 32);
    block[5] = a2;
    block[6] = a3;
    dispatch_async(v8, block);
  }
}

id __39__PFCloudKitExporter_fetchRecordZones___block_invoke_2(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = a1[4];
  if (v3)
  {
    v5 = a1[5];
    v4 = a1[6];
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
      *v21 = 136316162;
      *&v21[4] = "[PFCloudKitExporter fetchRecordZonesOperationFinished:operationError:]";
      v22 = 1024;
      v23 = 1059;
      v24 = 2112;
      v25 = v3;
      v26 = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_18565F000, v8, v10, "CoreData+CloudKit: %s(%d): %@: Finished fetching record zones: %@ - %@", v21, 0x30u);
    }

    objc_autoreleasePoolPop(v6);
    if (v4)
    {
      v11 = [NSCloudKitMirroringResult alloc];
      v12 = v3[8];
      if (v12)
      {
        v13 = *(v12 + 48);
      }

      else
      {
        v13 = 0;
      }

      v14 = [(NSCloudKitMirroringResult *)v11 initWithRequest:v3[5] storeIdentifier:v13 success:0 madeChanges:0 error:v4];
      [(PFCloudKitExporter *)v3 finishExportWithResult:v14];
    }

    else
    {
      *v21 = 0;
      if (-[PFCloudKitExporter updateMetadataForSavedZones:error:](v3, [v5 allValues], v21))
      {
        [(PFCloudKitExporter *)v3 exportIfNecessary];
      }

      else
      {
        v15 = [NSCloudKitMirroringResult alloc];
        v16 = v3[8];
        if (v16)
        {
          v17 = *(v16 + 48);
        }

        else
        {
          v17 = 0;
        }

        v18 = [(NSCloudKitMirroringResult *)v15 initWithRequest:v3[5] storeIdentifier:v17 success:0 madeChanges:0 error:*v21];
        [(PFCloudKitExporter *)v3 finishExportWithResult:v18];
      }
    }
  }

  [v2 drain];
  result = 0;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

@end