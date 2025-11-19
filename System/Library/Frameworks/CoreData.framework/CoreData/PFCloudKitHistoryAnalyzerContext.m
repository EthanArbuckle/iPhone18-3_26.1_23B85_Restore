@interface PFCloudKitHistoryAnalyzerContext
- (BOOL)finishProcessing:(id *)a3;
- (BOOL)processChange:(id)a3 error:(id *)a4;
- (BOOL)reset:(id *)a3;
- (BOOL)resetStateForObjectID:(id)a3 error:(id *)a4;
- (PFCloudKitHistoryAnalyzerContext)initWithOptions:(id)a3 managedObjectContext:(id)a4 store:(id)a5;
- (id)fetchSortedStates:(id *)a3;
- (id)newAnalyzerStateForChange:(id)a3 error:(id *)a4;
- (uint64_t)_flushPendingAnalyzerStates:(uint64_t)a1;
- (void)dealloc;
@end

@implementation PFCloudKitHistoryAnalyzerContext

- (PFCloudKitHistoryAnalyzerContext)initWithOptions:(id)a3 managedObjectContext:(id)a4 store:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = a3;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempt to initialize PFCloudKitHistoryAnalyzerContext with options that aren't PFCloudKitHistoryAnalyzerOptions: %@\n", buf, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v28 = a3;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Attempt to initialize PFCloudKitHistoryAnalyzerContext with options that aren't PFCloudKitHistoryAnalyzerOptions: %@", buf, 0xCu);
    }
  }

  v25.receiver = self;
  v25.super_class = PFCloudKitHistoryAnalyzerContext;
  v11 = [(PFHistoryAnalyzerContext *)&v25 initWithOptions:a3];
  if (v11)
  {
    v11->_managedObjectContext = a4;
    v11->_resetChangedObjectIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11->_entityIDToChangedPrimaryKeySet = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = [objc_msgSend(objc_msgSend(a4 "persistentStoreCoordinator")];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v13 addObject:{objc_msgSend(*(*(&v21 + 1) + 8 * v18++), "name")}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v16);
    }

    v11->_configuredEntityNames = [v13 copy];

    objc_autoreleasePoolPop(v12);
    v11->_store = a5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitHistoryAnalyzerContext;
  [(PFHistoryAnalyzerContext *)&v3 dealloc];
}

- (BOOL)processChange:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  if (!-[NSSet containsObject:](self->_configuredEntityNames, "containsObject:", [objc_msgSend(objc_msgSend(a3 "changedObjectID")]))
  {
    v10 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v12 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v13 = 17;
    }

    else
    {
      v13 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v13 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v14 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if (os_log_type_enabled(Stream, v15))
    {
      *buf = 136315906;
      v28 = "[PFCloudKitHistoryAnalyzerContext processChange:error:]";
      v29 = 1024;
      v30 = 97;
      v31 = 2112;
      v32 = self;
      v33 = 2112;
      v34 = [a3 changedObjectID];
      _os_log_impl(&dword_18565F000, v12, v15, "CoreData+CloudKit: %s(%d): %@: Skipping change because its entity is not in the configured set of entities for this store: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_26;
  }

  if (([objc_msgSend(objc_msgSend(a3 "transaction")] & 1) != 0 || (objc_msgSend(objc_msgSend(objc_msgSend(a3, "transaction"), "contextName"), "isEqualToString:", @"NSCloudKitMirroringDelegate.import") & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(a3, "transaction"), "author"), "isEqualToString:", @"NSCloudKitMirroringDelegate.reset"))
  {
    options = self->super._options;
    if (!options || (BYTE1(options[1].super.isa) & 1) == 0)
    {
      if ([a3 changeType] == 2 && !-[PFCloudKitHistoryAnalyzerContext resetStateForObjectID:error:](self, "resetStateForObjectID:error:", objc_msgSend(a3, "changedObjectID"), a4))
      {
LABEL_32:
        result = 0;
        goto LABEL_29;
      }

      goto LABEL_26;
    }
  }

  else if ([a3 changeType] != 2 && objc_msgSend(objc_msgSend(a3, "updatedProperties"), "count"))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = [a3 updatedProperties];
    v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (!v18)
    {
LABEL_26:
      if ([(NSMutableDictionary *)self->super._objectIDToState count]< 0x3E8)
      {
        result = 1;
      }

      else
      {
        result = [(PFCloudKitHistoryAnalyzerContext *)self _flushPendingAnalyzerStates:a4];
      }

      goto LABEL_29;
    }

    v19 = v18;
    v20 = *v24;
LABEL_37:
    v21 = 0;
    while (1)
    {
      if (*v24 != v20)
      {
        objc_enumerationMutation(v17);
      }

      if (![objc_msgSend(objc_msgSend(*(*(&v23 + 1) + 8 * v21) "userInfo")])
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (v19)
        {
          goto LABEL_37;
        }

        if (self)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }
  }

  v22.receiver = self;
  v22.super_class = PFCloudKitHistoryAnalyzerContext;
  v8 = [(PFHistoryAnalyzerContext *)&v22 processChange:a3 error:a4];
  result = 0;
  if (self && (v8 & 1) != 0)
  {
    goto LABEL_26;
  }

LABEL_29:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_flushPendingAnalyzerStates:(uint64_t)a1
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3052000000;
    v20 = __Block_byref_object_copy__49;
    v21 = __Block_byref_object_dispose__49;
    v22 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v4 = *(a1 + 64);
    v16 = 1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__PFCloudKitHistoryAnalyzerContext__flushPendingAnalyzerStates___block_invoke;
    v12[3] = &unk_1E6EC2F08;
    v12[4] = a1;
    v12[5] = &v13;
    v12[6] = &v17;
    [v4 performBlockAndWait:v12];
    v5 = *(v14 + 24);
    if (v5 == 1)
    {
      [*(a1 + 24) removeAllObjects];
      [*(a1 + 40) removeAllObjects];
      [*(a1 + 80) removeAllObjects];
      [*(a1 + 88) removeAllObjects];
      v5 = *(v14 + 24);
    }

    if (!v5)
    {
      v9 = v18[5];
      if (v9)
      {
        if (a2)
        {
          *a2 = v9;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
          v25 = 1024;
          v26 = 198;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v11 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
          v25 = 1024;
          v26 = 198;
          _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v18[5] = 0;
    v6 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

uint64_t __64__PFCloudKitHistoryAnalyzerContext__flushPendingAnalyzerStates___block_invoke(uint64_t result)
{
  v1 = result;
  v62 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    v2 = *(result + 32);
    v3 = v2 ? *(v2 + 24) : 0;
    result = [v3 count];
    if (result)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = *(v1[4] + 88);
      result = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      v42 = result;
      if (result)
      {
        v41 = *v54;
        while (2)
        {
          v4 = 0;
          do
          {
            if (*v54 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v5 = *(*(&v53 + 1) + 8 * v4);
            v6 = [*(v1[4] + 88) objectForKey:v5];
            v7 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath]);
            -[NSFetchRequest setPredicate:](v7, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"entityId = %@ AND entityPK in %@", v5, v6]);
            v8 = [*(v1[4] + 64) executeFetchRequest:v7 error:*(v1[6] + 8) + 40];
            if (!v8)
            {
              *(*(v1[5] + 8) + 24) = 0;
              result = *(*(v1[6] + 8) + 40);
              goto LABEL_37;
            }

            v9 = v8;
            v43 = v4;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v10 = [v8 countByEnumeratingWithState:&v49 objects:v60 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v50;
              do
              {
                v13 = 0;
                do
                {
                  if (*v50 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v49 + 1) + 8 * v13);
                  v15 = [v14 analyzedObjectID];
                  v16 = v1[4];
                  if (v16)
                  {
                    v17 = *(v16 + 24);
                  }

                  else
                  {
                    v17 = 0;
                  }

                  v18 = [v17 objectForKey:v15];
                  if (v18)
                  {
                    [v14 mergeWithState:v18];
                    v19 = v1[4];
                    if (v19)
                    {
                      v20 = *(v19 + 24);
                    }

                    else
                    {
                      v20 = 0;
                    }

                    [v20 removeObjectForKey:v15];
                  }

                  else if ([*(v1[4] + 80) containsObject:v15])
                  {
                    [*(v1[4] + 64) deleteObject:v14];
                  }

                  else
                  {
                    LogStream = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v59 = v15;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: History parsing corruption detected. An existing analyzer state was fetched from the database for '%@' but it's corresponding in-memory copy is no longer present in the in-memory cache.\n", buf, 0xCu);
                    }

                    v22 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412290;
                      v59 = v15;
                      _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: History parsing corruption detected. An existing analyzer state was fetched from the database for '%@' but it's corresponding in-memory copy is no longer present in the in-memory cache.", buf, 0xCu);
                    }
                  }

                  ++v13;
                }

                while (v11 != v13);
                v23 = [v9 countByEnumeratingWithState:&v49 objects:v60 count:16];
                v11 = v23;
              }

              while (v23);
            }

            v4 = v43 + 1;
          }

          while (v43 + 1 != v42);
          result = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
          v42 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_37:
  if (*(*(v1[5] + 8) + 24) == 1)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = v1[4];
    v25 = v24 ? *(v24 + 24) : 0;
    result = [v25 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (result)
    {
      v26 = result;
      v27 = *v46;
      v44 = v25;
      do
      {
        v28 = 0;
        do
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(v44);
          }

          v29 = *(*(&v45 + 1) + 8 * v28);
          v30 = v1[4];
          if (v30)
          {
            v31 = *(v30 + 24);
          }

          else
          {
            v31 = 0;
          }

          v32 = [v31 objectForKey:*(*(&v45 + 1) + 8 * v28)];
          v33 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKHistoryAnalyzerState entityPath], *(v1[4] + 64));
          -[NSManagedObject setValue:forKey:](v33, "setValue:forKey:", [v32 originalTransactionNumber], @"originalTransactionNumber");
          -[NSManagedObject setOriginalChangeTypeNum:](v33, "setOriginalChangeTypeNum:", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v32, "originalChangeType")}]);
          -[NSManagedObject setValue:forKey:](v33, "setValue:forKey:", [v32 finalTransactionNumber], @"finalTransactionNumber");
          -[NSManagedObject setValue:forKey:](v33, "setValue:forKey:", [v32 finalChangeAuthor], @"finalChangeAuthor");
          -[NSManagedObject setFinalChangeTypeNum:](v33, "setFinalChangeTypeNum:", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v32, "finalChangeType")}]);
          v34 = _sqlEntityForEntityDescription([*(v1[4] + 96) model], objc_msgSend(v29, "entity"));
          if (v34)
          {
            v35 = *(v34 + 184);
          }

          else
          {
            v35 = 0;
          }

          -[NSManagedObject setEntityId:](v33, "setEntityId:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v35]);
          -[NSManagedObject setEntityPK:](v33, "setEntityPK:", [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v29, "_referenceData64")}]);
          [*(v1[4] + 64) assignObject:v33 toPersistentStore:*(v1[4] + 96)];

          ++v28;
        }

        while (v26 != v28);
        result = [v44 countByEnumeratingWithState:&v45 objects:v57 count:16];
        v26 = result;
      }

      while (result);
    }
  }

  v36 = v1[5];
  if (*(*(v36 + 8) + 24) == 1)
  {
    v37 = v1[4];
    if (v37)
    {
      v38 = *(v37 + 48);
      if (v38)
      {
        result = [NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v38 transformedValue:*(v37 + 96) forStore:*(v37 + 64) intoManagedObjectContext:(*(v1[6] + 8) + 40) error:?];
        v36 = v1[5];
        if (!result)
        {
          *(*(v36 + 8) + 24) = 0;
          result = *(*(v1[6] + 8) + 40);
          v36 = v1[5];
        }
      }
    }
  }

  if (*(*(v36 + 8) + 24) == 1)
  {
    result = [*(v1[4] + 64) save:*(v1[6] + 8) + 40];
    if ((result & 1) == 0)
    {
      result = *(*(v1[6] + 8) + 40);
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)resetStateForObjectID:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PFCloudKitHistoryAnalyzerContext;
  v13 = 0;
  v7 = [(PFHistoryAnalyzerContext *)&v12 resetStateForObjectID:a3 error:&v13];
  if (v7)
  {
    [(NSMutableSet *)self->_resetChangedObjectIDs addObject:a3];
  }

  else if (v13)
  {
    if (a4)
    {
      *a4 = v13;
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
      v16 = 1024;
      v17 = 220;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
      v16 = 1024;
      v17 = 220;
      _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)reset:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PFCloudKitHistoryAnalyzerContext;
  v13 = 0;
  if ([(PFHistoryAnalyzerContext *)&v12 reset:&v13])
  {
    [(NSMutableDictionary *)self->_entityIDToChangedPrimaryKeySet removeAllObjects];
    [(NSMutableSet *)self->_resetChangedObjectIDs removeAllObjects];
    v5 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath])];
    [(NSBatchDeleteRequest *)v5 setResultType:0];
    v6 = [-[NSPersistentStoreResult result](-[NSManagedObjectContext executeRequest:error:](self->_managedObjectContext executeRequest:v5 error:{&v13), "result"), "BOOLValue"}];

    if (v6)
    {
      [(NSManagedObjectContext *)self->_managedObjectContext reset];
      LOBYTE(v7) = 1;
      goto LABEL_12;
    }
  }

  if (v13)
  {
    if (a3)
    {
      LOBYTE(v7) = 0;
      *a3 = v13;
      goto LABEL_12;
    }

LABEL_11:
    LOBYTE(v7) = 0;
    goto LABEL_12;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
    v16 = 1024;
    v17 = 243;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v9 = _PFLogGetLogStream(17);
  v7 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
  if (v7)
  {
    *buf = 136315394;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
    v16 = 1024;
    v17 = 243;
    _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_11;
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)finishProcessing:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PFCloudKitHistoryAnalyzerContext;
  v15 = 0;
  if ([(PFHistoryAnalyzerContext *)&v14 finishProcessing:&v15])
  {
    if ([(PFCloudKitHistoryAnalyzerContext *)self _flushPendingAnalyzerStates:?])
    {
      if (!self || (options = self->super._options) == 0 || !options->_automaticallyPruneTransientRecords || (v6 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath](NSCKHistoryAnalyzerState, "entityPath")), -[NSFetchRequest setPredicate:](v6, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"originalChangeTypeNum = %@ AND finalChangeTypeNum = %@", &unk_1EF435F08, &unk_1EF435F20]), v7 = -[NSBatchDeleteRequest initWithFetchRequest:]([NSBatchDeleteRequest alloc], "initWithFetchRequest:", v6), -[NSBatchDeleteRequest setResultType:](v7, "setResultType:", 0), v8 = objc_msgSend(-[NSPersistentStoreResult result](-[NSManagedObjectContext executeRequest:error:](self->_managedObjectContext, "executeRequest:error:", v7, &v15), "result"), "BOOLValue"), v7, (v8 & 1) != 0))
      {
        LOBYTE(v9) = 1;
        goto LABEL_16;
      }
    }
  }

  if (v15)
  {
    if (a3)
    {
      LOBYTE(v9) = 0;
      *a3 = v15;
      goto LABEL_16;
    }

LABEL_15:
    LOBYTE(v9) = 0;
    goto LABEL_16;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
    v18 = 1024;
    v19 = 268;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v11 = _PFLogGetLogStream(17);
  v9 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
  if (v9)
  {
    *buf = 136315394;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
    v18 = 1024;
    v19 = 268;
    _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_15;
  }

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)fetchSortedStates:(id *)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath]);
  v8[0] = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"finalTransactionNumber" ascending:1];
  -[NSFetchRequest setSortDescriptors:](v5, "setSortDescriptors:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1]);
  [(NSFetchRequest *)v5 setFetchBatchSize:200];
  result = [(NSManagedObjectContext *)self->_managedObjectContext executeFetchRequest:v5 error:a3];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)newAnalyzerStateForChange:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = PFCloudKitHistoryAnalyzerContext;
  v5 = [(PFHistoryAnalyzerContext *)&v12 newAnalyzerStateForChange:a3 error:a4];
  if (v5)
  {
    v6 = _sqlEntityForEntityDescription(-[NSSQLCore model](self->_store, "model"), [objc_msgSend(v5 "analyzedObjectID")]);
    if (v6)
    {
      v7 = *(v6 + 184);
    }

    else
    {
      v7 = 0;
    }

    v8 = -[NSMutableDictionary objectForKey:](self->_entityIDToChangedPrimaryKeySet, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7]);
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      entityIDToChangedPrimaryKeySet = self->_entityIDToChangedPrimaryKeySet;
      if (v6)
      {
        v10 = *(v6 + 184);
      }

      else
      {
        v10 = 0;
      }

      -[NSMutableDictionary setObject:forKey:](entityIDToChangedPrimaryKeySet, "setObject:forKey:", v8, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10]);
    }

    [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(objc_msgSend(v5, "analyzedObjectID"), "_referenceData64"))}];
  }

  return v5;
}

@end