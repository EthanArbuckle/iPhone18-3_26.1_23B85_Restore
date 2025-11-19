@interface PFCloudKitImporter
- (PFCloudKitImporter)initWithOptions:(id)a3 request:(id)a4;
- (void)dealloc;
- (void)importIfNecessaryWithCompletion:(uint64_t)a1;
- (void)processWorkItemsWithCompletion:(uint64_t)a1;
@end

@implementation PFCloudKitImporter

- (PFCloudKitImporter)initWithOptions:(id)a3 request:(id)a4
{
  v8.receiver = self;
  v8.super_class = PFCloudKitImporter;
  v6 = [(PFCloudKitImporter *)&v8 init];
  if (v6)
  {
    v6->_options = [a3 copy];
    v6->_request = a4;
    v6->_workItemResults = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_totalImportedBytes = 0;
  }

  return v6;
}

- (void)dealloc
{
  self->_options = 0;

  self->_request = 0;
  self->_workItems = 0;

  self->_workItemResults = 0;
  self->_updatedDatabaseChangeToken = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImporter;
  [(PFCloudKitImporter *)&v3 dealloc];
}

- (void)importIfNecessaryWithCompletion:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v2 = *(v2 + 16);
    }

    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke;
    v3[3] = &unk_1E6EC34A0;
    v3[4] = v2;
    v3[5] = a1;
    v3[6] = a2;
    [(PFCloudKitStoreMonitor *)v2 performBlock:v3];
  }
}

void __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke(uint64_t *a1)
{
  v100 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  v55 = a1;
  if (v2)
  {
    v3 = a1[5];
    v4 = *(v3 + 16);
    if (v4)
    {
      if ([*(v4 + 64) shouldDefer] & 1) != 0 || (*(v4 + 40))
      {
        v5 = MEMORY[0x1E696ABC0];
        v95 = *MEMORY[0x1E696A588];
        v96 = @"The request was aborted because it was deferred by the system.";
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
        v7 = [v5 errorWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v6];
        v8 = [NSCloudKitMirroringResult alloc];
        v9 = a1[4];
        if (v9)
        {
          v10 = *(v9 + 48);
        }

        else
        {
          v10 = 0;
        }

        v11 = [(NSCloudKitMirroringResult *)v8 initWithRequest:*(a1[5] + 16) storeIdentifier:v10 success:0 madeChanges:0 error:v7];
        (*(a1[6] + 16))();

        goto LABEL_26;
      }

      v3 = a1[5];
    }

    v50 = v2;
    v19 = *(v3 + 8);
    if (v19)
    {
      v20 = *(v19 + 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v3 + 16);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PFCloudKitImporterFetchRecordsWorkItem alloc] initWithOptions:*(a1[5] + 8) request:*(a1[5] + 16)];
      *(a1[5] + 24) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v22, 0}];
      [(PFCloudKitImporter *)a1[5] processWorkItemsWithCompletion:?];
    }

    else if ([v20 databaseScope] == 2 || objc_msgSend(v20, "databaseScope") == 3)
    {
      v89 = 0;
      v90 = &v89;
      v91 = 0x2020000000;
      v92 = 1;
      v83 = 0;
      v84 = &v83;
      v85 = 0x3052000000;
      v86 = __Block_byref_object_copy__25;
      v87 = __Block_byref_object_dispose__25;
      v88 = 0;
      v77 = 0;
      v78 = &v77;
      v79 = 0x3052000000;
      v80 = __Block_byref_object_copy__25;
      v81 = __Block_byref_object_dispose__25;
      v82 = 0;
      v23 = [(PFCloudKitStoreMonitor *)a1[4] newBackgroundContextForMonitoredCoordinator];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_6;
      v76[3] = &unk_1E6EC1678;
      v76[4] = a1[5];
      v76[5] = v2;
      v76[7] = &v77;
      v76[6] = v23;
      v76[8] = &v83;
      v76[9] = &v89;
      [(NSManagedObjectContext *)v23 performBlockAndWait:v76];
      if (*(v90 + 24) == 1)
      {
        v24 = objc_alloc_init(PFCloudKitImportDatabaseContext);
        v25 = objc_alloc_init(getCloudKitCKFetchDatabaseChangesOperationClass());
        [v25 setPreviousServerChangeToken:v78[5]];
        -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v55[5] + 16) options], v25);
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_15;
        v75[3] = &unk_1E6EC3900;
        v75[4] = v24;
        [v25 setRecordZoneWithIDChangedBlock:v75];
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_2;
        v74[3] = &unk_1E6EC3900;
        v74[4] = v24;
        [v25 setRecordZoneWithIDWasDeletedBlock:v74];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_3;
        v73[3] = &unk_1E6EC3900;
        v73[4] = v24;
        [v25 setRecordZoneWithIDWasPurgedBlock:v73];
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_4;
        v72[3] = &unk_1E6EC3928;
        v72[4] = v24;
        [v25 setChangeTokenUpdatedBlock:v72];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_5;
        v71[3] = &unk_1E6EC3900;
        v71[4] = v24;
        [v25 setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:v71];
        objc_initWeak(&location, v55[5]);
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_6;
        v68[3] = &unk_1E6EC3950;
        objc_copyWeak(&v69, &location);
        v26 = v55[6];
        v68[4] = v24;
        v68[5] = v26;
        [v25 setFetchDatabaseChangesCompletionBlock:v68];
        [v20 addOperation:v25];

        objc_destroyWeak(&v69);
        objc_destroyWeak(&location);
      }

      else
      {
        v27 = [NSCloudKitMirroringResult alloc];
        v28 = a1[4];
        if (v28)
        {
          v29 = *(v28 + 48);
        }

        else
        {
          v29 = 0;
        }

        v30 = [(NSCloudKitMirroringResult *)v27 initWithRequest:*(a1[5] + 16) storeIdentifier:v29 success:0 madeChanges:0 error:v84[5]];
        (*(a1[6] + 16))();
      }

      v84[5] = 0;
      v78[5] = 0;
      _Block_object_dispose(&v77, 8);
      _Block_object_dispose(&v83, 8);
      _Block_object_dispose(&v89, 8);
    }

    else
    {
      if ([v20 databaseScope] != 1)
      {
        goto LABEL_26;
      }

      v32 = a1[4];
      if (v32)
      {
        WeakRetained = objc_loadWeakRetained((v32 + 32));
      }

      else
      {
        WeakRetained = 0;
      }

      v34 = [v2 configurationName];
      if (v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = @"PF_DEFAULT_CONFIGURATION_NAME";
      }

      v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v49 = WeakRetained;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = [objc_msgSend(WeakRetained "managedObjectModel")];
      v53 = [obj countByEnumeratingWithState:&v64 objects:v99 count:16];
      if (v53)
      {
        v37 = 0;
        v52 = *v65;
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v65 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v39 = *(*(&v64 + 1) + 8 * i);
            [v36 addObject:{+[PFCloudKitSerializer recordTypeForEntity:](PFCloudKitSerializer, v39)}];
            if (v37)
            {
              v37 = 1;
            }

            else
            {
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v40 = [v39 relationshipsByName];
              v37 = 0;
              v41 = [v40 countByEnumeratingWithState:&v60 objects:v98 count:16];
              if (v41)
              {
                v42 = *v61;
                do
                {
                  for (j = 0; j != v41; ++j)
                  {
                    if (*v61 != v42)
                    {
                      objc_enumerationMutation(v40);
                    }

                    v44 = [objc_msgSend(v39 "relationshipsByName")];
                    if ([v44 isToMany] && objc_msgSend(objc_msgSend(v44, "inverseRelationship"), "isToMany"))
                    {
                      [v36 addObject:@"CDMR"];
                      v37 = 1;
                    }
                  }

                  v41 = [v40 countByEnumeratingWithState:&v60 objects:v98 count:16];
                }

                while (v41);
              }
            }
          }

          v53 = [obj countByEnumeratingWithState:&v64 objects:v99 count:16];
        }

        while (v53);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v45 = [v36 countByEnumeratingWithState:&v56 objects:v97 count:16];
      if (v45)
      {
        v46 = *v57;
        do
        {
          for (k = 0; k != v45; ++k)
          {
            if (*v57 != v46)
            {
              objc_enumerationMutation(v36);
            }

            v48 = [[PFCloudKitCKQueryBackedImportWorkItem alloc] initForRecordType:*(*(&v56 + 1) + 8 * k) withOptions:*(v55[5] + 8) request:*(v55[5] + 16)];
            [v54 addObject:v48];
          }

          v45 = [v36 countByEnumeratingWithState:&v56 objects:v97 count:16];
        }

        while (v45);
      }

      *(v55[5] + 24) = [v54 copy];
      [(PFCloudKitImporter *)v55[5] processWorkItemsWithCompletion:?];
    }

    v2 = v50;
  }

  else if (a1[6])
  {
    v12 = MEMORY[0x1E696ABC0];
    v93 = *MEMORY[0x1E696A588];
    v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(*(a1[5] + 16), "requestIdentifier")];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    v14 = [v12 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v13];
    v15 = [NSCloudKitMirroringResult alloc];
    v16 = a1[4];
    if (v16)
    {
      v17 = *(v16 + 48);
    }

    else
    {
      v17 = 0;
    }

    v18 = [(NSCloudKitMirroringResult *)v15 initWithRequest:*(a1[5] + 16) storeIdentifier:v17 success:0 madeChanges:0 error:v14];
    (*(a1[6] + 16))();
  }

LABEL_26:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)processWorkItemsWithCompletion:(uint64_t)a1
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v6 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v7 = 17;
    }

    else
    {
      v7 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v7 = 16;
    }

    if (__ckLoggingOverride)
    {
      v8 = v7;
    }

    else
    {
      v8 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v8))
    {
      v9 = *(a1 + 24);
      *buf = 136315906;
      v22 = "[PFCloudKitImporter processWorkItemsWithCompletion:]";
      v23 = 1024;
      v24 = 445;
      v25 = 2112;
      v26 = a1;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_18565F000, v6, v8, "CoreData+CloudKit: %s(%d): %@: Processing work items: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 8);
    if (v10)
    {
      v10 = v10[2];
    }

    v11 = v10;
    if ([*(a1 + 24) count] && (v12 = objc_msgSend(*(a1 + 24), "objectAtIndex:", 0), v13 = objc_msgSend(*(a1 + 24), "mutableCopy"), objc_msgSend(v13, "removeObjectAtIndex:", 0), *(a1 + 24), *(a1 + 24) = objc_msgSend(v13, "copy"), v13, v12))
    {
      v14 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke;
      v19[3] = &unk_1E6EC1E90;
      v19[4] = v11;
      v19[5] = a1;
      v19[6] = v12;
      v15 = &v20;
    }

    else
    {
      v12 = 0;
      v14 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_4;
      v17[3] = &unk_1E6EC34A0;
      v17[4] = v11;
      v17[5] = a1;
      v15 = &v18;
    }

    *v15 = a2;
    [(PFCloudKitStoreMonitor *)v11 performBlock:v14];
  }

  v16 = *MEMORY[0x1E69E9840];
}

id __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_6(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  result = -[NSManagedObject currentChangeToken](+[NSCKDatabaseMetadata databaseMetadataForScope:forStore:inContext:error:](NSCKDatabaseMetadata, [v3 databaseScope], *(a1 + 40), *(a1 + 48), *(*(a1 + 64) + 8) + 40), "currentChangeToken");
  *(*(*(a1 + 56) + 8) + 40) = result;
  if (*(*(*(a1 + 64) + 8) + 40))
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
      v9 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 136315650;
      v12 = "[PFCloudKitImporter importIfNecessaryWithCompletion:]_block_invoke";
      v13 = 1024;
      v14 = 104;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): Failed to fetch metadata for database: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
    result = *(*(*(a1 + 64) + 8) + 40);
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_15(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [*(v2 + 8) addObject:a2];
  }

  return result;
}

uint64_t __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [*(v2 + 16) addObject:a2];
  }

  return result;
}

uint64_t __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_3(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [*(v2 + 24) addObject:a2];
  }

  return result;
}

void __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_4(uint64_t a1, char *newValue)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_setProperty_nonatomic(v2, newValue, newValue, 40);
  }
}

uint64_t __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [*(v2 + 32) addObject:a2];
  }

  return result;
}

void __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *(a1 + 32);
  v10 = v8;
  if (WeakRetained)
  {
    if (v8)
    {
      objc_setProperty_nonatomic(v8, v9, a2, 40);
    }

    v11 = WeakRetained[1];
    if (v11)
    {
      v12 = *(v11 + 32);
    }

    else
    {
      v12 = 0;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_7;
    v14[3] = &unk_1E6EC1E90;
    v14[4] = WeakRetained;
    v14[5] = v10;
    v13 = *(a1 + 40);
    v14[6] = a4;
    v14[7] = v13;
    dispatch_async(v12, v14);
  }
}

void __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_7(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = *(a1 + 32);
  if (v17)
  {
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
    if (!v3)
    {
      v14 = *(a1 + 40);
      v15 = v17[1];
      if (v15)
      {
        v15 = v15[2];
      }

      v13 = v15;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke;
      *&buf[24] = &unk_1E6EC1E90;
      *&buf[32] = v13;
      v19 = v17;
      v20 = v14;
      v21 = v2;
      [(PFCloudKitStoreMonitor *)v13 performBlock:buf];
      goto LABEL_16;
    }

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
      v8 = v17[2];
      *buf = 136316162;
      *&buf[4] = "[PFCloudKitImporter databaseFetchFinishWithContext:error:completion:]";
      *&buf[12] = 1024;
      *&buf[14] = 253;
      *&buf[18] = 2112;
      *&buf[20] = v17;
      *&buf[28] = 2112;
      *&buf[30] = v8;
      *&buf[38] = 2112;
      v19 = v3;
      _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): %@: Database fetch for request: %@ failed with error: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v4);
    if (v2)
    {
      v9 = [NSCloudKitMirroringResult alloc];
      v10 = v17[1];
      if (v10 && (v11 = *(v10 + 16)) != 0)
      {
        v12 = *(v11 + 48);
      }

      else
      {
        v12 = 0;
      }

      v13 = [(NSCloudKitMirroringResult *)v9 initWithRequest:v17[2] storeIdentifier:v12 success:0 madeChanges:0 error:v3];
      (*(v2 + 16))(v2, v13);
LABEL_16:
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke(void *a1)
{
  v114 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)a1[4] newBackgroundContextForMonitoredCoordinator];
    v4 = *(a1[5] + 8);
    if (v4)
    {
      v5 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 databaseScope];
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 1;
    v73 = 0;
    v74 = &v73;
    v75 = 0x3052000000;
    v76 = __Block_byref_object_copy__25;
    v77 = __Block_byref_object_dispose__25;
    v78 = 0;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke_2;
    v72[3] = &unk_1E6EC3978;
    v72[4] = v2;
    v72[5] = v3;
    v72[6] = a1[6];
    v72[7] = &v79;
    v72[8] = &v73;
    v72[9] = v6;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v72];
    if (*(v80 + 24) == 1)
    {
      v7 = [(PFCloudKitImportDatabaseContext *)a1[6] hasWorkToDo];
      v8 = objc_autoreleasePoolPush();
      if (!v7)
      {
        Stream = __PFCloudKitLoggingGetStream();
        v40 = Stream;
        if (__ckLoggingOverride == 17)
        {
          v41 = 17;
        }

        else
        {
          v41 = 1;
        }

        if (__ckLoggingOverride == 16)
        {
          v41 = 16;
        }

        if (__ckLoggingOverride)
        {
          v42 = v41;
        }

        else
        {
          v42 = OS_LOG_TYPE_DEFAULT;
        }

        if (os_log_type_enabled(Stream, v42))
        {
          v43 = a1[5];
          v44 = *(v43 + 16);
          *buf = 136315906;
          v105 = "[PFCloudKitImporter databaseFetchFinishWithContext:error:completion:]_block_invoke";
          v106 = 1024;
          v107 = 310;
          v108 = 2112;
          v109 = v43;
          v110 = 2112;
          v111 = v44;
          _os_log_impl(&dword_18565F000, v40, v42, "CoreData+CloudKit: %s(%d): %@: Import request finished with no work to do: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v8);
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke_46;
        v71[3] = &unk_1E6EC3180;
        v45 = a1[6];
        v71[4] = a1[5];
        v71[5] = v2;
        v71[6] = v3;
        v71[7] = v45;
        v71[8] = &v79;
        v71[9] = &v73;
        [(NSManagedObjectContext *)v3 performBlockAndWait:v71];
        if (a1[7])
        {
          v46 = [NSCloudKitMirroringResult alloc];
          v47 = a1[4];
          if (v47)
          {
            v48 = *(v47 + 48);
          }

          else
          {
            v48 = 0;
          }

          v49 = [(NSCloudKitMirroringResult *)v46 initWithRequest:*(a1[5] + 16) storeIdentifier:v48 success:1 madeChanges:0 error:0];
          (*(a1[7] + 16))();
        }

        goto LABEL_88;
      }

      v9 = __PFCloudKitLoggingGetStream();
      v10 = v9;
      if (__ckLoggingOverride == 17)
      {
        v11 = 17;
      }

      else
      {
        v11 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v11 = 16;
      }

      if (__ckLoggingOverride)
      {
        v12 = v11;
      }

      else
      {
        v12 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(v9, v12))
      {
        v13 = a1[5];
        v14 = a1[6];
        v15 = *(v13 + 16);
        *buf = 136316162;
        v105 = "[PFCloudKitImporter databaseFetchFinishWithContext:error:completion:]_block_invoke";
        v106 = 1024;
        v107 = 305;
        v108 = 2112;
        v109 = v13;
        v110 = 2112;
        v111 = v15;
        v112 = 2112;
        v113 = v14;
        _os_log_impl(&dword_18565F000, v10, v12, "CoreData+CloudKit: %s(%d): %@: Import request finished: %@ - %@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v8);
      v16 = a1[6];
      if (v16)
      {
        v16 = v16[5];
      }

      *(a1[5] + 40) = v16;
      v17 = a1[5];
      if (v17)
      {
        v18 = a1[6];
        v68 = a1[7];
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v69 = v3;
        v70 = v18;
        if (v18)
        {
          if (![*(v18 + 8) count])
          {
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            goto LABEL_61;
          }

          v20 = *(v18 + 8);
        }

        else
        {
          if (![0 count])
          {
            v52 = 0;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            goto LABEL_62;
          }

          v20 = 0;
          v18 = 0;
        }

        if ([v20 count] < 0x191)
        {
          v50 = [PFCloudKitImporterZoneChangedWorkItem alloc];
          if (v18)
          {
            v51 = *(v18 + 8);
          }

          else
          {
            v51 = 0;
          }

          v21 = -[PFCloudKitImporterZoneChangedWorkItem initWithChangedRecordZoneIDs:options:request:](v50, "initWithChangedRecordZoneIDs:options:request:", [v51 allObjects], v17[1], v17[2]);
          [v19 addObject:v21];
        }

        else
        {
          v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          if (v18)
          {
            v22 = *(v18 + 8);
          }

          else
          {
            v22 = 0;
          }

          v23 = [v22 countByEnumeratingWithState:&v95 objects:buf count:16];
          if (v23)
          {
            v24 = *v96;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v96 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                [(PFCloudKitImporterZoneChangedWorkItem *)v21 addObject:*(*(&v95 + 1) + 8 * i)];
                if ([(PFCloudKitImporterZoneChangedWorkItem *)v21 count]== 400)
                {
                  v26 = [[PFCloudKitImporterZoneChangedWorkItem alloc] initWithChangedRecordZoneIDs:v21 options:v17[1] request:v17[2]];
                  [v19 addObject:v26];

                  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v95 objects:buf count:16];
            }

            while (v23);
          }

          v18 = v70;
          if ([(PFCloudKitImporterZoneChangedWorkItem *)v21 count])
          {
            v27 = [[PFCloudKitImporterZoneChangedWorkItem alloc] initWithChangedRecordZoneIDs:v21 options:v17[1] request:v17[2]];
            [v19 addObject:v27];
          }
        }

        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        if (!v18)
        {
          v52 = 0;
          goto LABEL_62;
        }

LABEL_61:
        v52 = *(v18 + 16);
LABEL_62:
        v53 = [v52 countByEnumeratingWithState:&v91 objects:v103 count:16];
        if (v53)
        {
          v54 = *v92;
          do
          {
            for (j = 0; j != v53; ++j)
            {
              if (*v92 != v54)
              {
                objc_enumerationMutation(v52);
              }

              v56 = [[PFCloudKitImporterZoneDeletedWorkItem alloc] initWithDeletedRecordZoneID:*(*(&v91 + 1) + 8 * j) options:v17[1] request:v17[2]];
              [v19 addObject:v56];
            }

            v53 = [v52 countByEnumeratingWithState:&v91 objects:v103 count:16];
          }

          while (v53);
        }

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        if (v70)
        {
          v57 = *(v70 + 24);
        }

        else
        {
          v57 = 0;
        }

        v58 = [v57 countByEnumeratingWithState:&v87 objects:v102 count:16];
        if (v58)
        {
          v59 = *v88;
          do
          {
            for (k = 0; k != v58; ++k)
            {
              if (*v88 != v59)
              {
                objc_enumerationMutation(v57);
              }

              v61 = [[PFCloudKitImporterZonePurgedWorkItem alloc] initWithPurgedRecordZoneID:*(*(&v87 + 1) + 8 * k) options:v17[1] request:v17[2]];
              [v19 addObject:v61];
            }

            v58 = [v57 countByEnumeratingWithState:&v87 objects:v102 count:16];
          }

          while (v58);
        }

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        if (v70)
        {
          v62 = *(v70 + 32);
        }

        else
        {
          v62 = 0;
        }

        v63 = [v62 countByEnumeratingWithState:&v83 objects:v101 count:16];
        if (v63)
        {
          v64 = *v84;
          do
          {
            for (m = 0; m != v63; ++m)
            {
              if (*v84 != v64)
              {
                objc_enumerationMutation(v62);
              }

              v66 = [[PFCloudKitImporterZoneDeletedWorkItem alloc] initWithDeletedRecordZoneID:*(*(&v83 + 1) + 8 * m) options:v17[1] request:v17[2]];
              [v19 addObject:v66];
            }

            v63 = [v62 countByEnumeratingWithState:&v83 objects:v101 count:16];
          }

          while (v63);
        }

        v3 = v69;
        v17[3] = [v19 copy];
        [(PFCloudKitImporter *)v17 processWorkItemsWithCompletion:v68];
      }
    }

    else
    {
      v35 = [NSCloudKitMirroringResult alloc];
      v36 = a1[4];
      if (v36)
      {
        v37 = *(v36 + 48);
      }

      else
      {
        v37 = 0;
      }

      v38 = [(NSCloudKitMirroringResult *)v35 initWithRequest:*(a1[5] + 16) storeIdentifier:v37 success:0 madeChanges:0 error:v74[5]];
      (*(a1[7] + 16))();
    }

LABEL_88:

    v74[5] = 0;
    _Block_object_dispose(&v73, 8);
    _Block_object_dispose(&v79, 8);
    goto LABEL_89;
  }

  v28 = MEMORY[0x1E696ABC0];
  v99 = *MEMORY[0x1E696A588];
  v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(*(a1[5] + 16), "requestIdentifier")];
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
  v30 = [v28 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v29];
  v31 = [NSCloudKitMirroringResult alloc];
  v32 = a1[4];
  if (v32)
  {
    v33 = *(v32 + 48);
  }

  else
  {
    v33 = 0;
  }

  v34 = [(NSCloudKitMirroringResult *)v31 initWithRequest:*(a1[5] + 16) storeIdentifier:v33 success:0 madeChanges:0 error:v30];
  (*(a1[7] + 16))();

LABEL_89:
  v67 = *MEMORY[0x1E69E9840];
}

id __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke_2(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsImport = YES AND database.databaseScopeNum = %@ AND (needsNewShareInvitation = NO OR needsNewShareInvitation = NULL)", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 72))]);
  v23[0] = *(a1 + 32);
  -[NSFetchRequest setAffectedStores:](v2, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1]);
  [(NSFetchRequest *)v2 setReturnsObjectsAsFaults:0];
  v3 = [*(a1 + 40) executeFetchRequest:v2 error:v21];
  v4 = v3;
  if (v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    result = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    v6 = result;
    if (result)
    {
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * v8);
          v10 = [(NSCKRecordZoneMetadata *)v9 createRecordZoneID];
          if ([v9 needsImport])
          {
            v11 = *(a1 + 48);
            v12 = v11 ? *(v11 + 16) : 0;
            if (([v12 containsObject:v10] & 1) == 0)
            {
              v13 = *(a1 + 48);
              if (v13)
              {
                v14 = *(v13 + 24);
              }

              else
              {
                v14 = 0;
              }

              if (([v14 containsObject:v10] & 1) == 0)
              {
                v15 = *(a1 + 48);
                if (v15)
                {
                  [*(v15 + 8) addObject:v10];
                }
              }
            }
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        result = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    result = v21[0];
    *(*(*(a1 + 64) + 8) + 40) = result;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke_46(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = +[NSCKDatabaseMetadata databaseMetadataForScope:forStore:inContext:error:](NSCKDatabaseMetadata, [v3 databaseScope], *(a1 + 40), *(a1 + 48), v18);
  v5 = v4;
  if (!v4)
  {
    v8 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v10 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v11 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v11 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(Stream, v11))
    {
      goto LABEL_18;
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    *buf = 136316162;
    v20 = "[PFCloudKitImporter databaseFetchFinishWithContext:error:completion:]_block_invoke";
    v21 = 1024;
    v22 = 326;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v18[0];
    goto LABEL_17;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
  }

  [(NSManagedObject *)v4 setCurrentChangeToken:v7];
  -[NSManagedObject setLastFetchDate:](v5, "setLastFetchDate:", [MEMORY[0x1E695DF00] date]);
  if (([*(a1 + 48) save:v18] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = __PFCloudKitLoggingGetStream();
    v10 = v9;
    if (__ckLoggingOverride == 17)
    {
      v11 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v11 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v9, v11))
    {
      goto LABEL_18;
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    *buf = 136316162;
    v20 = "[PFCloudKitImporter databaseFetchFinishWithContext:error:completion:]_block_invoke";
    v21 = 1024;
    v22 = 323;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v18[0];
LABEL_17:
    _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): %@: Error fetching database metadata update for request: %@\n%@", buf, 0x30u);
LABEL_18:
    objc_autoreleasePoolPop(v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke(void *a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 32));
    v4 = a1[4];
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v5 = [(PFCloudKitStoreMonitor *)v4 retainedMonitoredStore];
  if (v5)
  {
    v6 = a1[5];
    if (v6)
    {
      v7 = v6[2];
      if (v7)
      {
        if ([*(v7 + 64) shouldDefer] & 1) != 0 || (*(v7 + 40))
        {
          v8 = MEMORY[0x1E696ABC0];
          v32 = *MEMORY[0x1E696A588];
          v33[0] = @"The request was aborted because it was deferred by the system.";
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
          v10 = [v8 errorWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v9];
          v11 = [NSCloudKitMirroringResult alloc];
          v12 = a1[4];
          if (v12)
          {
            v13 = *(v12 + 48);
          }

          else
          {
            v13 = 0;
          }

          v14 = [(NSCloudKitMirroringResult *)v11 initWithRequest:*(a1[5] + 16) storeIdentifier:v13 success:0 madeChanges:0 error:v10];
          (*(a1[7] + 16))();

          goto LABEL_16;
        }

        v6 = a1[5];
      }
    }

    objc_initWeak(&location, v6);
    v23 = a1[6];
    v22 = a1 + 6;
    v24 = *(v22 - 2);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_2;
    v26[3] = &unk_1E6EC39A0;
    objc_copyWeak(&v28, &location);
    v27 = *v22;
    [v23 doWorkForStore:v5 inMonitor:v24 completion:v26];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696ABC0];
  v30 = *MEMORY[0x1E696A588];
  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(*(a1[5] + 16), "requestIdentifier")];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v17 = [v15 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v16];
  v18 = [NSCloudKitMirroringResult alloc];
  v19 = a1[4];
  if (v19)
  {
    v20 = *(v19 + 48);
  }

  else
  {
    v20 = 0;
  }

  v21 = [(NSCloudKitMirroringResult *)v18 initWithRequest:*(a1[5] + 16) storeIdentifier:v20 success:0 madeChanges:0 error:v17];
  (*(a1[7] + 16))();

LABEL_16:
  v25 = *MEMORY[0x1E69E9840];
}

void __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    if (v6)
    {
      v7 = *(v6 + 32);
    }

    else
    {
      v7 = 0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_3;
    v10[3] = &unk_1E6EC1E90;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10[4] = v5;
    v10[5] = v8;
    v10[6] = a2;
    v10[7] = v9;
    dispatch_async(v7, v10);
  }
}

void __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__PFCloudKitImporter_workItemFinished_withResult_completion___block_invoke;
    v6[3] = &unk_1E6EC1E90;
    v6[4] = v3;
    v7 = vextq_s8(v4, v4, 8uLL);
    v8 = v5;
    [_PFRoutines wrapBlockInGuardedAutoreleasePool:v6];
  }

  objc_autoreleasePoolPop(v2);
}

void __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_4(uint64_t *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (!v2)
  {
    v20 = MEMORY[0x1E696ABC0];
    v68 = *MEMORY[0x1E696A588];
    v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(*(a1[5] + 16), "requestIdentifier")];
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v21];
    v23 = [NSCloudKitMirroringResult alloc];
    v24 = a1[4];
    if (v24)
    {
      v25 = *(v24 + 48);
    }

    else
    {
      v25 = 0;
    }

    v26 = [(NSCloudKitMirroringResult *)v23 initWithRequest:*(a1[5] + 16) storeIdentifier:v25 success:0 madeChanges:0 error:v22];
    (*(a1[6] + 16))();

    goto LABEL_50;
  }

  v3 = [(PFCloudKitStoreMonitor *)a1[4] newBackgroundContextForMonitoredCoordinator];
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 1;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3052000000;
  v61 = __Block_byref_object_copy__25;
  v62 = __Block_byref_object_dispose__25;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3052000000;
  v55 = __Block_byref_object_copy__25;
  v56 = __Block_byref_object_dispose__25;
  v57 = 0;
  if ([*(a1[5] + 32) count] < 2)
  {
    if ([*(a1[5] + 32) count] == 1)
    {
      v27 = [objc_msgSend(*(a1[5] + 32) "lastObject")];
      *(v65 + 24) = v27;
      v7 = [objc_msgSend(*(a1[5] + 32) "lastObject")];
      v28 = [objc_msgSend(*(a1[5] + 32) "lastObject")];
      v59[5] = v28;
      v29 = [*(a1[5] + 32) lastObject];
      v53[5] = v29;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_34;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = *(a1[5] + 32);
  v6 = [v5 countByEnumeratingWithState:&v48 objects:v74 count:16];
  v45 = v3;
  v46 = v2;
  v7 = 0;
  if (v6)
  {
    v8 = *v49;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        if (([v10 success] & 1) == 0)
        {
          *(v65 + 24) = 0;
          if ([v10 error])
          {
            [v4 addObject:{objc_msgSend(v10, "error")}];
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v73 = v10;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Work item result failed but did not include an error: %@\n", buf, 0xCu);
            }

            v12 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v73 = v10;
              _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Work item result failed but did not include an error: %@", buf, 0xCu);
            }
          }
        }

        v13 = [v10 madeChanges];
        v14 = objc_opt_class();
        if (v14 != objc_opt_class())
        {
          v15 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v73 = v10;
            _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: fault: The importer needs to be taught how to merge results of different types when dealing with multiple work items: %@\n", buf, 0xCu);
          }

          v16 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v73 = v10;
            _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: The importer needs to be taught how to merge results of different types when dealing with multiple work items: %@", buf, 0xCu);
          }
        }

        v7 |= v13;
      }

      v6 = [v5 countByEnumeratingWithState:&v48 objects:v74 count:16];
    }

    while (v6);
  }

  v2 = v46;
  v3 = v45;
  if ([v4 count] >= 2)
  {
    *(v65 + 24) = 0;
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v70 = @"NSDetailedErrors";
    v71 = v4;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v19 = [v17 initWithDomain:*MEMORY[0x1E696A250] code:134404 userInfo:v18];
LABEL_32:
    v59[5] = v19;
    goto LABEL_33;
  }

  if ([v4 count] == 1)
  {
    *(v65 + 24) = 0;
    v19 = [v4 lastObject];
    goto LABEL_32;
  }

LABEL_33:

LABEL_34:
  if (*(v65 + 24) == 1)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_52;
    v47[3] = &unk_1E6EC1AA0;
    v47[4] = a1[5];
    v47[5] = v2;
    v47[6] = v3;
    v47[7] = &v64;
    v47[8] = &v58;
    v47[9] = &v52;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v47];

    v3 = 0;
  }

  if (!v53[5])
  {
    v30 = [NSCloudKitMirroringResult alloc];
    v31 = a1[4];
    if (v31)
    {
      v32 = *(v31 + 48);
    }

    else
    {
      v32 = 0;
    }

    v33 = [(NSCloudKitMirroringResult *)v30 initWithRequest:*(a1[5] + 16) storeIdentifier:v32 success:*(v65 + 24) madeChanges:v7 & 1 error:v59[5]];
    v53[5] = v33;
  }

  v34 = [PFCloudKitImportedRecordBytesMetric alloc];
  v35 = a1[5];
  if (v35 && (v36 = *(v35 + 8)) != 0)
  {
    v37 = *(v36 + 24);
  }

  else
  {
    v37 = 0;
  }

  v38 = -[PFCloudKitSizeMetric initWithContainerIdentifier:](v34, "initWithContainerIdentifier:", [v37 containerIdentifier]);
  [(PFCloudKitSizeMetric *)v38 addByteSize:?];
  v39 = a1[5];
  if (v39 && (v40 = *(v39 + 8)) != 0 && (v41 = *(v40 + 24)) != 0)
  {
    v42 = *(v41 + 72);
  }

  else
  {
    v42 = 0;
  }

  [(PFMetricsClient *)v42 logMetric:v38];

  v43 = a1[6];
  if (v43)
  {
    (*(v43 + 16))(v43, v53[5]);
  }

  v53[5] = 0;
  v59[5] = 0;
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);
LABEL_50:

  v44 = *MEMORY[0x1E69E9840];
}

void __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_52(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = +[NSCKDatabaseMetadata databaseMetadataForScope:forStore:inContext:error:](NSCKDatabaseMetadata, [v3 databaseScope], *(a1 + 40), *(a1 + 48), v18);
  v5 = v4;
  if (!v4)
  {
    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v13 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v14 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v14 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v14))
    {
      v15 = *(a1 + 32);
      v16 = *(v15 + 16);
      *buf = 136316162;
      v20 = "[PFCloudKitImporter processWorkItemsWithCompletion:]_block_invoke";
      v21 = 1024;
      v22 = 569;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v18[0];
      _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): %@: Error fetching database metadata update for request: %@\n%@", buf, 0x30u);
    }

    goto LABEL_16;
  }

  [(NSManagedObject *)v4 setCurrentChangeToken:*(*(a1 + 32) + 40)];
  -[NSManagedObject setLastFetchDate:](v5, "setLastFetchDate:", [MEMORY[0x1E695DF00] date]);
  if (([*(a1 + 48) save:v18] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = __PFCloudKitLoggingGetStream();
    v8 = v7;
    if (__ckLoggingOverride == 17)
    {
      v9 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v7, v9))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 16);
      *buf = 136316162;
      v20 = "[PFCloudKitImporter processWorkItemsWithCompletion:]_block_invoke";
      v21 = 1024;
      v22 = 563;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v18[0];
      _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@: Error fetching database metadata update for request: %@\n%@", buf, 0x30u);
    }

LABEL_16:
    objc_autoreleasePoolPop(v6);
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *(*(*(a1 + 64) + 8) + 40) = v18[0];

    *(*(*(a1 + 72) + 8) + 40) = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __61__PFCloudKitImporter_workItemFinished_withResult_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  if ([*(a1 + 40) success])
  {
    v2 = *(a1 + 48);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        v4 = *(v3 + 64);
        if (v4)
        {
          v5 = *(v4 + 24);
        }

        else
        {
          v5 = 0;
        }

        v6 = [v5 unsignedIntegerValue];
      }

      else
      {
        v6 = 0;
      }

      *(*(a1 + 32) + 48) += v6;
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 56);

    return [(PFCloudKitImporter *)v7 processWorkItemsWithCompletion:v8];
  }

  else
  {
    result = *(a1 + 56);
    if (result)
    {
      v10 = *(a1 + 40);
      v11 = *(result + 16);

      return v11();
    }
  }

  return result;
}

@end