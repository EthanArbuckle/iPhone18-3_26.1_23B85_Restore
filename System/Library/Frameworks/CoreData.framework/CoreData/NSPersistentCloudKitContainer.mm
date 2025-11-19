@interface NSPersistentCloudKitContainer
+ (id)discoverDefaultContainerIdentifier;
- (BOOL)assignManagedObjects:(id)a3 toCloudKitRecordZone:(id)a4 inPersistentStore:(id)a5 error:(id *)a6;
- (BOOL)canDeleteRecordForManagedObjectWithID:(NSManagedObjectID *)objectID;
- (BOOL)canModifyManagedObjectsInStore:(NSPersistentStore *)store;
- (BOOL)canUpdateRecordForManagedObjectWithID:(NSManagedObjectID *)objectID;
- (BOOL)hasFinishedExportingCurrentData:(id *)a3;
- (BOOL)initializeCloudKitSchemaWithOptions:(NSPersistentCloudKitContainerSchemaInitializationOptions)options error:(NSError *)error;
- (CKRecord)recordForManagedObjectID:(NSManagedObjectID *)managedObjectID;
- (CKRecordID)recordIDForManagedObjectID:(NSManagedObjectID *)managedObjectID;
- (NSArray)fetchSharesInPersistentStore:(NSPersistentStore *)persistentStore error:(NSError *)error;
- (NSDictionary)fetchSharesMatchingObjectIDs:(NSArray *)objectIDs error:(NSError *)error;
- (NSDictionary)recordIDsForManagedObjectIDs:(NSArray *)managedObjectIDs;
- (NSDictionary)recordsForManagedObjectIDs:(NSArray *)managedObjectIDs;
- (NSPersistentCloudKitContainer)initWithName:(id)a3 managedObjectModel:(id)a4;
- (uint64_t)createTimeoutErrorForRequest:(uint64_t)a3 withLabel:;
- (uint64_t)hasMetadataMarkedForExportInStore:(void *)a3 error:;
- (uint64_t)mostRecentExportedHistoryToken:(uint64_t)a1;
- (void)_acceptShareInvitationsWithURLs:(void *)a3 shareMetadatas:(void *)a4 forPersistentStore:(uint64_t)a5 completion:;
- (void)_loadStoreDescriptions:(id)a3 withCompletionHandler:(id)a4;
- (void)applyActivityVoucher:(id)a3 toStores:(id)a4;
- (void)dealloc;
- (void)doWorkOnMetadataContext:(uint64_t)a3 withBlock:;
- (void)eventUpdated:(id)a3;
- (void)expireActivityVoucher:(id)a3;
- (void)fetchParticipantsMatchingLookupInfos:(NSArray *)lookupInfos intoPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion;
- (void)persistUpdatedShare:(CKShare *)share inPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion;
- (void)publishActivity:(id)a3;
- (void)purgeObjectsAndRecordsInZoneWithID:(CKRecordZoneID *)zoneID inPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion;
- (void)setPersistentStoreDescriptions:(id)a3;
- (void)shareManagedObjects:(NSArray *)managedObjects toShare:(CKShare *)share completion:(void *)completion;
@end

@implementation NSPersistentCloudKitContainer

+ (id)discoverDefaultContainerIdentifier
{
  [@"com.apple.developer.icloud-container-identifiers" UTF8String];
  v2 = xpc_copy_entitlement_for_self();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  xpc_release(v3);
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSPersistentCloudKitContainer;
  [(NSPersistentContainer *)&v3 dealloc];
}

- (NSPersistentCloudKitContainer)initWithName:(id)a3 managedObjectModel:(id)a4
{
  v10.receiver = self;
  v10.super_class = NSPersistentCloudKitContainer;
  v4 = [(NSPersistentContainer *)&v10 initWithName:a3 managedObjectModel:a4];
  v5 = v4;
  if (v4)
  {
    v4->_operationTimeout = 30;
    v6 = objc_autoreleasePoolPush();
    v7 = +[NSPersistentCloudKitContainer discoverDefaultContainerIdentifier];
    if (v7)
    {
      v8 = [[NSPersistentCloudKitContainerOptions alloc] initWithContainerIdentifier:v7];
      [-[NSArray lastObject](-[NSPersistentContainer persistentStoreDescriptions](v5 "persistentStoreDescriptions")];
    }

    v5->_metadataContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    [(NSManagedObjectContext *)v5->_metadataContext setPersistentStoreCoordinator:[(NSPersistentContainer *)v5 persistentStoreCoordinator]];
    [(NSManagedObjectContext *)v5->_metadataContext _setAllowAncillaryEntities:1];
    [(NSManagedObjectContext *)v5->_metadataContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)setPersistentStoreDescriptions:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [objc_msgSend(v9 "cloudKitContainerOptions")];
        v11 = v10;
        if (v10 && [v10 length])
        {
          v12 = [v5 objectForKey:v11];
          if (v12)
          {
            v13 = [objc_msgSend(v12 "cloudKitContainerOptions")];
            if (v13 == [objc_msgSend(v9 "cloudKitContainerOptions")])
            {
              v15 = MEMORY[0x1E695DF30];
              v22 = @"storeURL";
              v23 = [v9 URL];
              v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
              objc_exception_throw([v15 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot assign the same iCloud Container Identifier to multiple persistent stores with the same database scope." userInfo:v16]);
            }
          }

          else
          {
            [v5 setObject:v9 forKey:v11];
          }
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  v17.receiver = self;
  v17.super_class = NSPersistentCloudKitContainer;
  [(NSPersistentContainer *)&v17 setPersistentStoreDescriptions:a3];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_loadStoreDescriptions:(id)a3 withCompletionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 cloudKitContainerOptions])
        {
          [v10 cloudKitContainerOptions];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v12 = [v10 cloudKitContainerOptions];
          if ((isKindOfClass & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v16 = MEMORY[0x1E695DF30];
              v17 = *MEMORY[0x1E695D940];
              v18 = MEMORY[0x1E696AEC0];
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              v21 = NSStringFromSelector(sel_cloudKitContainerOptions);
              v22 = objc_opt_class();
              v23 = [v18 stringWithFormat:@"%@.%@ must be of type '%@'", v20, v21, NSStringFromClass(v22)];
              v30 = @"offendingObject";
              v31 = [v10 cloudKitContainerOptions];
              objc_exception_throw([v16 exceptionWithName:v17 reason:v23 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v31, &v30, 1)}]);
            }

            v12 = [v10 cloudKitContainerOptions];
          }

          [v12 setProgressProvider:self];
          v13 = -[NSCloudKitMirroringDelegate initWithCloudKitContainerOptions:]([NSCloudKitMirroringDelegate alloc], "initWithCloudKitContainerOptions:", [v10 cloudKitContainerOptions]);
          [v10 setMirroringDelegate:v13];
          if (![objc_msgSend(v10 "options")])
          {
            [v10 setOption:MEMORY[0x1E695E118] forKey:@"NSPersistentHistoryTrackingKey"];
          }

LABEL_17:

          continue;
        }

        if ([v10 mirroringDelegate])
        {
          [v10 mirroringDelegate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v10 mirroringDelegate];
            v13 = v14;
            if (v14)
            {
              v14 = v14->_options;
            }

            [(NSCloudKitMirroringDelegate *)v14 setProgressProvider:self];
            goto LABEL_17;
          }
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v7);
  }

  v25.receiver = self;
  v25.super_class = NSPersistentCloudKitContainer;
  [(NSPersistentContainer *)&v25 _loadStoreDescriptions:a3 withCompletionHandler:a4];
  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)initializeCloudKitSchemaWithOptions:(NSPersistentCloudKitContainerSchemaInitializationOptions)options error:(NSError *)error
{
  v74 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 1;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3052000000;
  v50 = __Block_byref_object_copy__21;
  v51 = __Block_byref_object_dispose__21;
  v52 = 0;
  group = dispatch_group_create();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v43 objects:v73 count:16];
  v38 = options;
  v7 = 0;
  if (v6)
  {
    v8 = *v44;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        if ([v10 isCloudKitEnabled])
        {
          v11 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v13 = Stream;
          if (__ckLoggingOverride == 17)
          {
            v14 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v14 = 16 * (__ckLoggingOverride == 16);
          }

          if (os_log_type_enabled(Stream, v14))
          {
            *buf = 136315906;
            v66 = "[NSPersistentCloudKitContainer initializeCloudKitSchemaWithOptions:error:]";
            v67 = 1024;
            v68 = 240;
            v69 = 2112;
            v70 = self;
            v71 = 2112;
            v72 = v10;
            _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): %@: will initialize cloudkit schema for store: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v11);
          dispatch_group_enter(group);
          ++v7;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v43 objects:v73 count:16];
    }

    while (v6);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v7)
  {
    *(v54 + 24) = 0;
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v57 = *MEMORY[0x1E696A588];
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't initialize CloudKit schema because no stores in the coordinator are configured to use CloudKit: %@", -[NSPersistentStoreCoordinator persistentStores](-[NSPersistentContainer persistentStoreCoordinator](self, "persistentStoreCoordinator"), "persistentStores")];
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v29 = [v27 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v28];
    v48[5] = v29;
    goto LABEL_29;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = [NSCloudKitMirroringInitializeSchemaRequest alloc];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __75__NSPersistentCloudKitContainer_initializeCloudKitSchemaWithOptions_error___block_invoke;
  v42[3] = &unk_1E6EC3108;
  v42[4] = v15;
  v42[5] = v16;
  v42[7] = &v53;
  v42[6] = group;
  v18 = [(NSCloudKitMirroringRequest *)v17 initWithOptions:0 completionBlock:v42];
  [(NSCloudKitMirroringInitializeSchemaRequest *)v18 setSchemaInitializationOptions:v38];
  v19 = [(NSPersistentContainer *)self newBackgroundContext];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __75__NSPersistentCloudKitContainer_initializeCloudKitSchemaWithOptions_error___block_invoke_36;
  v41[3] = &unk_1E6EC1A00;
  v41[4] = v19;
  v41[5] = v18;
  v41[6] = &v53;
  v41[7] = &v47;
  [(NSManagedObjectContext *)v19 performBlockAndWait:v41];
  if (*(v54 + 24) == 1)
  {
    v20 = dispatch_time(0, 1000000000 * self->_operationTimeout);
    if (dispatch_group_wait(group, v20))
    {
      *(v54 + 24) = 0;
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v63 = *MEMORY[0x1E696A588];
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to initialize CloudKit schema because the requests timed out (a %lds wait failed).", self->_operationTimeout];
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v23 = [v21 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v22];
      [v16 addObject:v23];
    }

    v24 = *(v54 + 24);
    if (v24 == 1)
    {
      if (v7 == [v15 count])
      {
        *(v54 + 24) = 0;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v61[0] = *MEMORY[0x1E696A588];
        v61[1] = @"NSDetailedErrors";
        v62[0] = @"Couldn't initialize CloudKit schema because no stores were able to succesfully initialize.";
        v62[1] = v15;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
LABEL_27:
        v30 = [v25 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v26];
        v48[5] = v30;
        goto LABEL_28;
      }

      v24 = *(v54 + 24);
    }

    if (v24 || ![v16 count])
    {
      goto LABEL_28;
    }

    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v59 = @"encounteredErrors";
    v60 = v16;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    goto LABEL_27;
  }

LABEL_28:

LABEL_29:
  if ((v54[3] & 1) == 0)
  {
    v34 = v48[5];
    if (v34)
    {
      if (error)
      {
        *error = v34;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v67 = 1024;
        v68 = 325;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v36 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v67 = 1024;
        v68 = 325;
        _os_log_fault_impl(&dword_18565F000, v36, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  dispatch_release(group);
  v48[5] = 0;
  v31 = *(v54 + 24);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

void __75__NSPersistentCloudKitContainer_initializeCloudKitSchemaWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if ([a2 success])
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
      v24 = 136315650;
      v25 = "[NSPersistentCloudKitContainer initializeCloudKitSchemaWithOptions:error:]_block_invoke";
      v26 = 1024;
      v27 = 252;
      v28 = 2112;
      v29 = a2;
      _os_log_impl(&dword_18565F000, v6, v8, "CoreData+CloudKit: %s(%d): Finished initialize schema with result: %@", &v24, 0x1Cu);
    }

    objc_autoreleasePoolPop(v4);
    goto LABEL_27;
  }

  if ([objc_msgSend(a2 "error")] == 134419)
  {
    v9 = *(a1 + 32);
    v10 = [a2 error];
    goto LABEL_25;
  }

  v11 = *(*(a1 + 56) + 8);
  if (*(v11 + 24) == 1)
  {
    *(v11 + 24) = 0;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = __PFCloudKitLoggingGetStream();
  v14 = v13;
  if (__ckLoggingOverride == 17)
  {
    v15 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v15 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v13, v15))
  {
    v24 = 136315650;
    v25 = "[NSPersistentCloudKitContainer initializeCloudKitSchemaWithOptions:error:]_block_invoke";
    v26 = 1024;
    v27 = 261;
    v28 = 2112;
    v29 = a2;
    _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Initialize schema request failed: %@", &v24, 0x1Cu);
  }

  objc_autoreleasePoolPop(v12);
  *(*(*(a1 + 56) + 8) + 24) = 0;
  if ([a2 error])
  {
    v16 = [objc_msgSend(a2 "error")];
    v17 = *MEMORY[0x1E696AA08];
    v18 = [v16 objectForKey:*MEMORY[0x1E696AA08]];
    v9 = *(a1 + 40);
    v19 = [a2 error];
    v20 = v19;
    if (!v18)
    {
LABEL_26:
      [v9 addObject:v20];
      goto LABEL_27;
    }

    v10 = [objc_msgSend(v19 "userInfo")];
LABEL_25:
    v20 = v10;
    goto LABEL_26;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v24 = 138412290;
    v25 = a2;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Initialize schema failed but did not set an error: %@\n", &v24, 0xCu);
  }

  v23 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    v24 = 138412290;
    v25 = a2;
    _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Initialize schema failed but did not set an error: %@", &v24, 0xCu);
  }

LABEL_27:
  dispatch_group_leave(*(a1 + 48));
  v21 = *MEMORY[0x1E69E9840];
}

id __75__NSPersistentCloudKitContainer_initializeCloudKitSchemaWithOptions_error___block_invoke_36(uint64_t a1)
{
  v3 = 0;
  result = [*(a1 + 32) executeRequest:*(a1 + 40) error:&v3];
  if (!result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    result = v3;
    *(*(*(a1 + 56) + 8) + 40) = result;
  }

  return result;
}

- (CKRecord)recordForManagedObjectID:(NSManagedObjectID *)managedObjectID
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__21;
  v22 = __Block_byref_object_dispose__21;
  v4 = [(NSPersistentContainer *)self newBackgroundContext];
  v5 = objc_alloc_init(_PFRequestExecutor);
  v6 = [NSCloudKitMirroringDelegateSerializationRequest alloc];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__NSPersistentCloudKitContainer_recordForManagedObjectID___block_invoke;
  v17[3] = &unk_1E6EC3130;
  v17[5] = v5;
  v17[6] = &v18;
  v17[4] = managedObjectID;
  v7 = [(NSCloudKitMirroringDelegateSerializationRequest *)v6 initWithOptions:0 completionBlock:v17];
  [(NSCloudKitMirroringDelegateSerializationRequest *)v7 setResultType:1];
  -[NSCloudKitMirroringDelegateSerializationRequest setObjectIDsToSerialize:](v7, "setObjectIDsToSerialize:", [MEMORY[0x1E695DFD8] setWithObject:managedObjectID]);
  if ([(_PFRequestExecutor *)v5 executeRequest:v7 inContext:v4 error:&v24])
  {
    if (![(_PFRequestExecutor *)v5 wait])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Wait timed out during call to recordForManagedObjectID\n", buf, 2u);
      }

      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Wait timed out during call to recordForManagedObjectID", buf, 2u);
      }
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v12 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v13 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v13 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v13))
    {
      *buf = 136315906;
      v26 = "[NSPersistentCloudKitContainer recordForManagedObjectID:]";
      v27 = 1024;
      v28 = 364;
      v29 = 2112;
      v30 = managedObjectID;
      v31 = 2112;
      v32 = v24;
      _os_log_impl(&dword_18565F000, v12, v13, "CoreData+CloudKit: %s(%d): Failed to retrieve record for object '%@'\n%@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v10);

    v19[5] = 0;
  }

  v14 = v19[5];
  _Block_object_dispose(&v18, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __58__NSPersistentCloudKitContainer_recordForManagedObjectID___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a2 success])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_msgSend(a2 "serializedObjects")];
      if (v4)
      {
        *(*(*(a1 + 48) + 8) + 40) = v4;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: NSPersistentCloudKitContainer got a result back that isn't of type 'NSCloudKitMirroringDelegateSerializationRequestResult' when asking about the record for a managed object id.\n", &v13, 2u);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v13) = 0;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: NSPersistentCloudKitContainer got a result back that isn't of type 'NSCloudKitMirroringDelegateSerializationRequestResult' when asking about the record for a managed object id.", &v13, 2u);
      }
    }
  }

  else
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
      v13 = 136315650;
      v14 = "[NSPersistentCloudKitContainer recordForManagedObjectID:]_block_invoke";
      v15 = 1024;
      v16 = 350;
      v17 = 2112;
      v18 = [a2 error];
      _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): Record serialization failed with error: %@", &v13, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
  }

  result = [*(a1 + 40) requestFinished];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)recordsForManagedObjectIDs:(NSArray *)managedObjectIDs
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(NSPersistentContainer *)self newBackgroundContext];
  v7 = objc_alloc_init(_PFRequestExecutor);
  v8 = [NSCloudKitMirroringDelegateSerializationRequest alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__NSPersistentCloudKitContainer_recordsForManagedObjectIDs___block_invoke;
  v18[3] = &unk_1E6EC3158;
  v18[4] = v5;
  v18[5] = v7;
  v9 = [(NSCloudKitMirroringDelegateSerializationRequest *)v8 initWithOptions:0 completionBlock:v18];
  [(NSCloudKitMirroringDelegateSerializationRequest *)v9 setResultType:1];
  -[NSCloudKitMirroringDelegateSerializationRequest setObjectIDsToSerialize:](v9, "setObjectIDsToSerialize:", [MEMORY[0x1E695DFD8] setWithArray:managedObjectIDs]);
  if ([(_PFRequestExecutor *)v7 executeRequest:v9 inContext:v6 error:&v19])
  {
    if (![(_PFRequestExecutor *)v7 wait])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Wait timed out during call to recordsForManagedObjectIDs\n", buf, 2u);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Wait timed out during call to recordsForManagedObjectIDs", buf, 2u);
      }
    }
  }

  else
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
      *buf = 136315650;
      v21 = "[NSPersistentCloudKitContainer recordsForManagedObjectIDs:]";
      v22 = 1024;
      v23 = 409;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Failed to retrieve records for objects %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v12);

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  result = v5;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __60__NSPersistentCloudKitContainer_recordsForManagedObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if ([a2 success])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v4 = [objc_msgSend(a2 "request")];
      v5 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v20;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v20 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v19 + 1) + 8 * i);
            v10 = [objc_msgSend(a2 "serializedObjects")];
            if (v10)
            {
              [*(a1 + 32) setObject:v10 forKey:v9];
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
        }

        while (v6);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: NSPersistentCloudKitContainer got a result back that isn't of type 'NSCloudKitMirroringDelegateSerializationRequestResult' when asking about the records for a group of managed object ids.\n", buf, 2u);
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: NSPersistentCloudKitContainer got a result back that isn't of type 'NSCloudKitMirroringDelegateSerializationRequestResult' when asking about the records for a group of managed object ids.", buf, 2u);
      }
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
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
      *buf = 136315650;
      v24 = "[NSPersistentCloudKitContainer recordsForManagedObjectIDs:]_block_invoke";
      v25 = 1024;
      v26 = 395;
      v27 = 2112;
      v28 = [a2 error];
      _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): Record serialization failed with error: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v11);
  }

  result = [*(a1 + 40) requestFinished];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (CKRecordID)recordIDForManagedObjectID:(NSManagedObjectID *)managedObjectID
{
  v3 = [(NSPersistentCloudKitContainer *)self recordForManagedObjectID:managedObjectID];

  return [(CKRecord *)v3 recordID];
}

- (NSDictionary)recordIDsForManagedObjectIDs:(NSArray *)managedObjectIDs
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(NSPersistentCloudKitContainer *)self recordsForManagedObjectIDs:managedObjectIDs];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [v4 setObject:objc_msgSend(-[NSDictionary objectForKey:](v3 forKey:{"objectForKey:", *(*(&v11 + 1) + 8 * v8)), "recordID"), *(*(&v11 + 1) + 8 * v8)}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  result = v4;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)canUpdateRecordForManagedObjectWithID:(NSManagedObjectID *)objectID
{
  v29[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (![(NSManagedObjectID *)objectID isTemporaryID])
  {
    v6 = [(NSManagedObjectID *)objectID persistentStore];
    v7 = v6;
    if (!v6 || ![(NSString *)[(NSPersistentStore *)v6 type] isEqualToString:@"SQLite"])
    {
      *(v22 + 24) = 1;
LABEL_20:

      v5 = *(v22 + 24);
      goto LABEL_21;
    }

    v8 = [(NSPersistentStore *)v7 mirroringDelegate];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 89);
      v11 = v8[1];
      if (v10 == 1)
      {
        if ([v11 databaseScope] == 1)
        {
          if ([objc_msgSend(v9 "accountMonitor")])
          {
            if (self)
            {
              metadataContext = self->_metadataContext;
            }

            else
            {
              metadataContext = 0;
            }

            v13 = metadataContext;
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __71__NSPersistentCloudKitContainer_canUpdateRecordForManagedObjectWithID___block_invoke;
            v20[3] = &unk_1E6EC3450;
            v20[4] = objectID;
            v20[5] = v7;
            v20[6] = v13;
            v20[7] = v9;
            v20[8] = &v21;
            [(NSManagedObjectContext *)v13 performBlockAndWait:v20];
          }

          goto LABEL_19;
        }

        if ([v9[1] databaseScope] == 3)
        {
          v19 = 0;
          v29[0] = objectID;
          v14 = -[NSDictionary objectForKey:](-[NSPersistentCloudKitContainer fetchSharesMatchingObjectIDs:error:](self, "fetchSharesMatchingObjectIDs:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1], &v19), "objectForKey:", objectID);
          if (!v14)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v26 = objectID;
              v27 = 2112;
              v28 = v19;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch the CKShare for an object in the shared database: %@ - %@\n", buf, 0x16u);
            }

            v18 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v26 = objectID;
              v27 = 2112;
              v28 = v19;
              _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch the CKShare for an object in the shared database: %@ - %@", buf, 0x16u);
            }

            goto LABEL_19;
          }

          if ([objc_msgSend(v14 "currentUserParticipant")] != 3)
          {
LABEL_19:

            goto LABEL_20;
          }
        }
      }

      else if ([v11 databaseScope] != 2)
      {
        goto LABEL_19;
      }
    }

    *(v22 + 24) = 1;
    goto LABEL_19;
  }

  v5 = 1;
  *(v22 + 24) = 1;
LABEL_21:
  _Block_object_dispose(&v21, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

void __71__NSPersistentCloudKitContainer_canUpdateRecordForManagedObjectWithID___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v16[0] = *(a1 + 32);
  v2 = [+[NSCKRecordMetadata metadataForObjectIDs:inStore:withManagedObjectContext:error:](NSCKRecordMetadata objc_msgSend(MEMORY[0x1E695DEC8]];
  if (v2)
  {
    v3 = [v2 createRecordFromSystemFields];
    v4 = v3;
    if (!v3 || (v5 = [objc_msgSend(v3 "creatorUserRecordID")], (objc_msgSend(v5, "isEqualToString:", getCloudKitCKCurrentUserDefaultName()) & 1) != 0) || objc_msgSend(objc_msgSend(objc_msgSend(v4, "creatorUserRecordID"), "recordName"), "isEqualToString:", objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 56), "accountMonitor"), "currentUserRecordID"), "recordName")))
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else if (v11)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: An error occured while fetching record metadata to figure out if an object is mutable: %@\n%@\n", buf, 0x16u);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v11;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: An error occured while fetching record metadata to figure out if an object is mutable: %@\n%@", buf, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)canDeleteRecordForManagedObjectWithID:(NSManagedObjectID *)objectID
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = [(NSPersistentStore *)[(NSManagedObjectID *)objectID persistentStore] mirroringDelegate];
  v6 = v5;
  if (!v5)
  {
    if ([0 databaseScope] != 1)
    {
      v7 = [0 databaseScope] != 3;
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  if ([v5[1] databaseScope] != 1)
  {
    if ([v6[1] databaseScope] == 3)
    {
      if (*(v6 + 89) != 1)
      {
        goto LABEL_3;
      }

      v13 = 0;
      v18[0] = objectID;
      v8 = -[NSDictionary objectForKey:](-[NSPersistentCloudKitContainer fetchSharesMatchingObjectIDs:error:](self, "fetchSharesMatchingObjectIDs:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1], &v13), "objectForKey:", objectID);
      if (v8)
      {
        v7 = [objc_msgSend(v8 "currentUserParticipant")] == 3;
        goto LABEL_13;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = objectID;
        v16 = 2112;
        v17 = v13;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch the CKShare for an object in the shared database: %@ - %@\n", buf, 0x16u);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v15 = objectID;
        v16 = 2112;
        v17 = v13;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch the CKShare for an object in the shared database: %@ - %@", buf, 0x16u);
      }
    }

    v7 = 1;
    goto LABEL_13;
  }

LABEL_3:
  v7 = 0;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)canModifyManagedObjectsInStore:(NSPersistentStore *)store
{
  if ([(NSString *)[(NSPersistentStore *)store type] isEqualToString:@"SQLite"])
  {
    v4 = [(NSPersistentStore *)store mirroringDelegate];
    v5 = v4;
    if (!v4)
    {
      goto LABEL_7;
    }

    v6 = *(v4 + 89);
    v7 = [v4[1] databaseScope];
    if (v6 != 1)
    {
      v8 = v7 == 2;
      goto LABEL_9;
    }

    if (v7 == 1)
    {
      v8 = [objc_msgSend(v5 "accountMonitor")] != 0;
    }

    else
    {
LABEL_7:
      v8 = 1;
    }

LABEL_9:

    return v8;
  }

  return 1;
}

- (void)eventUpdated:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"event";
  v9[0] = a3;
  [v6 postNotificationName:@"NSPersistentCloudKitContainerEventChangedNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  objc_autoreleasePoolPop(v5);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)publishActivity:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [a3 createDictionaryRepresentation];
  [v6 setObject:v7 forKey:@"activityDictionary"];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  objc_autoreleasePoolPop(v5);
}

- (BOOL)assignManagedObjects:(id)a3 toCloudKitRecordZone:(id)a4 inPersistentStore:(id)a5 error:(id *)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__21;
  v25 = __Block_byref_object_dispose__21;
  v26 = 0;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = [objc_msgSend(a3 "lastObject")];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke;
  v20[3] = &unk_1E6EC3180;
  v20[4] = v12;
  v20[5] = a3;
  v20[6] = v10;
  v20[7] = v11;
  v20[8] = &v27;
  v20[9] = &v21;
  [v12 performBlockAndWait:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke_64;
  v19[3] = &unk_1E6EC31F8;
  v19[4] = v11;
  v19[5] = a4;
  v19[6] = v10;
  v19[7] = &v27;
  v19[8] = &v21;
  [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v19 withBlock:?];

  if ((v28[3] & 1) == 0)
  {
    v16 = v22[5];
    if (v16)
    {
      if (a6)
      {
        *a6 = v16;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v33 = 1024;
        v34 = 728;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v18 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v33 = 1024;
        v34 = 728;
        _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v22[5] = 0;
  v13 = *(v28 + 24);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

id __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0;
  if ([*(a1 + 32) obtainPermanentIDsForObjects:*(a1 + 40) error:&v25])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = *(a1 + 40);
    result = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    v19 = result;
    if (result)
    {
      v18 = *v22;
      do
      {
        v3 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v21 + 1) + 8 * v3);
          if ([v4 managedObjectContext] != *(a1 + 32))
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Client passed in objects from multiple contexts, this should return an error.\n", buf, 2u);
            }

            v6 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Client passed in objects from multiple contexts, this should return an error.", buf, 2u);
            }
          }

          v7 = [objc_msgSend(v4 "objectID")];
          v8 = [v7 identifier];
          v9 = [v7 mirroringDelegate];
          v10 = [*(a1 + 48) objectForKey:v8];
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(a1 + 48) setObject:v10 forKey:v8];
          }

          v11 = [*(a1 + 56) objectForKey:v8];
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(a1 + 56) setObject:v11 forKey:v8];
          }

          [v10 addObject:{objc_msgSend(v4, "objectID")}];

          v12 = [objc_msgSend(objc_msgSend(v4 "entity")];
          if (!v12 || (v13 = [v4 valueForKey:@"ckRecordID"]) == 0)
          {
            v13 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
            if (v12)
            {
              if (v9)
              {
                v14 = v9[1];
              }

              else
              {
                v14 = 0;
              }

              if ([v14 preserveLegacyRecordMetadataBehavior])
              {
                [v4 setValue:v13 forKey:@"ckRecordID"];
              }
            }
          }

          v15 = -[_PFObjectCKRecordZoneLink initWithObjectID:recordName:]([_PFObjectCKRecordZoneLink alloc], "initWithObjectID:recordName:", [v4 objectID], v13);
          [v11 addObject:v15];

          v3 = v3 + 1;
        }

        while (v19 != v3);
        result = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
        v19 = result;
      }

      while (result);
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = v25;
    *(*(*(a1 + 72) + 8) + 40) = result;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke_64(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke_2;
  v4[3] = &unk_1E6EC31A8;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v4[5] = a2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(getCloudKitCKRecordZoneClass[0]()) initWithZoneID:*(a1 + 32)];
  v40 = 0;
  v7 = [objc_msgSend(*(a1 + 40) "persistentStoreCoordinator")];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 mirroringDelegate];
    v10 = v9;
    if (v9)
    {
      v33 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, *(a1 + 32), [v9[1] databaseScope], v8, *(a1 + 40), &v40);
      if (v33)
      {
        v11 = +[NSCKRecordMetadata createMapOfMetadataMatchingObjectIDs:inStore:inManagedObjectContext:error:](NSCKRecordMetadata, [*(a1 + 48) objectForKey:a2], v8, *(a1 + 40), &v40);
        if (!v11)
        {
          goto LABEL_24;
        }

        v30 = v10;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v12 = [a3 countByEnumeratingWithState:&v36 objects:v47 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v37;
          v32 = *MEMORY[0x1E696A250];
          v31 = *MEMORY[0x1E696A580];
LABEL_7:
          v15 = 0;
          while (1)
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(a3);
            }

            v16 = *(*(&v36 + 1) + 8 * v15);
            v17 = [v11 objectForKey:{objc_msgSend(v16, "objectID")}];
            if (v17)
            {
              v18 = -[NSCKRecordZoneMetadata createRecordZoneID]([v17 recordZone]);
              if (([v18 isEqual:*(a1 + 32)] & 1) == 0)
              {
                *(*(*(a1 + 56) + 8) + 24) = 0;
                v19 = objc_alloc(MEMORY[0x1E696ABC0]);
                v45 = v31;
                v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The object %@ is already assigned to the zone '%@' and cannot be moved to '%@'.", objc_msgSend(v16, "objectID"), v18, *(a1 + 32)];
                *(*(*(a1 + 64) + 8) + 40) = [v19 initWithDomain:v32 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v46, &v45, 1)}];
                *a4 = 1;
              }
            }

            else
            {
              v20 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordMetadata entityPath], *(a1 + 40));
              [*(a1 + 40) assignObject:v20 toPersistentStore:v8];
              -[NSManagedObject setCkRecordName:](v20, "setCkRecordName:", [v16 recordName]);
              v21 = MEMORY[0x1E696AD98];
              v22 = _sqlEntityForEntityDescription([v8 model], objc_msgSend(objc_msgSend(v16, "objectID"), "entity"));
              v23 = v22 ? *(v22 + 184) : 0;
              -[NSManagedObject setEntityId:](v20, "setEntityId:", [v21 numberWithUnsignedInt:v23]);
              -[NSManagedObject setEntityPK:](v20, "setEntityPK:", [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(objc_msgSend(v16, "objectID"), "_referenceData64")}]);
              [(NSManagedObject *)v20 setRecordZone:v33];
              [(NSManagedObject *)v20 setNeedsUpload:1];
            }

            if (!*(*(*(a1 + 56) + 8) + 24))
            {
              break;
            }

            if (v13 == ++v15)
            {
              v24 = [a3 countByEnumeratingWithState:&v36 objects:v47 count:16];
              v13 = v24;
              if (v24)
              {
                goto LABEL_7;
              }

              break;
            }
          }
        }

        v10 = v30;
        if (*(*(*(a1 + 56) + 8) + 24) == 1 && ([*(a1 + 40) save:&v40] & 1) == 0)
        {
LABEL_24:
          *(*(*(a1 + 56) + 8) + 24) = 0;
          *a4 = 1;
          *(*(*(a1 + 64) + 8) + 40) = v40;
        }
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
        *(*(*(a1 + 64) + 8) + 40) = v40;
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v25 = objc_alloc(MEMORY[0x1E696ABC0]);
      v26 = *MEMORY[0x1E696A250];
      v43 = *MEMORY[0x1E696A580];
      v44 = @"Target store has no mirroring delegate.";
      *(*(*(a1 + 64) + 8) + 40) = [v25 initWithDomain:v26 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v44, &v43, 1)}];
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v8;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Target store has no mirroring delegate: %@\n", buf, 0xCu);
      }

      v28 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v42 = v8;
        _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Target store has no mirroring delegate: %@", buf, 0xCu);
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)doWorkOnMetadataContext:(uint64_t)a3 withBlock:
{
  if (a1)
  {
    v5 = *(a1 + 48);
    v6 = v5;
    if (a2)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __67__NSPersistentCloudKitContainer_doWorkOnMetadataContext_withBlock___block_invoke;
      v8[3] = &unk_1E6EC1D30;
      v8[4] = v5;
      v8[5] = a3;
      [v5 performBlock:v8];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __67__NSPersistentCloudKitContainer_doWorkOnMetadataContext_withBlock___block_invoke_161;
      v7[3] = &unk_1E6EC1D30;
      v7[4] = v5;
      v7[5] = a3;
      [v5 performBlockAndWait:v7];
    }
  }
}

- (void)_acceptShareInvitationsWithURLs:(void *)a3 shareMetadatas:(void *)a4 forPersistentStore:(uint64_t)a5 completion:
{
  v28[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_9;
  }

  v9 = [a4 mirroringDelegate];
  v10 = v9;
  if (!v9)
  {
    v17 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E696A998];
    v26 = [a4 URL];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v19 = [v17 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Provided persistent store is not backed by CloudKit." userInfo:v18];
    goto LABEL_11;
  }

  if ([(objc_class *)v9[1].super.isa databaseScope]!= 3)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided persistent store is not set to the shared database scope and cannot accept share invitation."];
    v27[0] = *MEMORY[0x1E696A998];
    v28[0] = [a4 URL];
    v27[1] = @"databaseScope";
    v28[1] = (softLinkCKDatabaseScopeString[0])([(objc_class *)v10[1].super.isa databaseScope]);
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v19 = [v20 exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:v22];
LABEL_11:
    objc_exception_throw(v19);
  }

  v11 = [NSCloudKitMirroringAcceptShareInvitationsRequest alloc];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __110__NSPersistentCloudKitContainer__acceptShareInvitationsWithURLs_shareMetadatas_forPersistentStore_completion___block_invoke;
  v24[3] = &unk_1E6EC31D0;
  v24[4] = a5;
  v12 = [(NSCloudKitMirroringAcceptShareInvitationsRequest *)v11 initWithOptions:0 completionBlock:v24];
  v14 = v12;
  if (v12)
  {
    v12->super._isContainerRequest = 1;
    objc_setProperty_nonatomic_copy(v12, v13, a2, 80);
    objc_setProperty_nonatomic_copy(v14, v15, a3, 88);
  }

  v23 = 0;
  if (![(NSCloudKitMirroringDelegate *)v10 executeMirroringRequest:v14 error:&v23])
  {
    (*(a5 + 16))(a5, 0, v23);
  }

LABEL_9:
  v16 = *MEMORY[0x1E69E9840];
}

void __110__NSPersistentCloudKitContainer__acceptShareInvitationsWithURLs_shareMetadatas_forPersistentStore_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (![a2 success])
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = [a2 error];
      v7 = *(v12 + 16);
      v14 = *MEMORY[0x1E69E9840];
      v9 = v13;
      v10 = v12;
      v11 = 0;
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = [a2 request];
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Share acceptance succeeded but did not return NSCloudKitMirroringAcceptShareInvitationsResult: %@\n", buf, 0xCu);
    }

    v16 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v20 = [a2 request];
      *buf = 138412290;
      v24 = v20;
      _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Share acceptance succeeded but did not return NSCloudKitMirroringAcceptShareInvitationsResult: %@", buf, 0xCu);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = *MEMORY[0x1E696A250];
      v21 = *MEMORY[0x1E696A588];
      v22 = @"Share acceptance succeeded but did not return an acceptance result.";
      (*(v17 + 16))(v17, 0, [MEMORY[0x1E696ABC0] errorWithDomain:v18 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)}]);
    }

    goto LABEL_16;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
LABEL_16:
    v19 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = [a2 acceptedShareMetadatas];
  v6 = [a2 error];
  v7 = *(v4 + 16);
  v8 = *MEMORY[0x1E69E9840];
  v9 = v6;
  v10 = v4;
  v11 = v5;
LABEL_7:

  v7(v10, v11, v9);
}

- (void)persistUpdatedShare:(CKShare *)share inPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__21;
  v32 = __Block_byref_object_dispose__21;
  v33 = 0;
  v7 = [(NSPersistentStore *)persistentStore mirroringDelegate];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__NSPersistentCloudKitContainer_persistUpdatedShare_inPersistentStore_completion___block_invoke;
  v27[3] = &unk_1E6EC31F8;
  v27[4] = share;
  v27[5] = persistentStore;
  v27[6] = v7;
  v27[7] = &v28;
  v27[8] = &v34;
  [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v27 withBlock:?];
  if (completion && (v35[3] & 1) != 0)
  {
    v8 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    do
    {
      *(v35 + 24) = 1;
      v9 = v29[5];
      if (v9)
      {

        v29[5] = 0;
      }

      v22 = 0;
      v10 = objc_alloc_init(_PFRequestExecutor);
      objc_initWeak(&location, self);
      v11 = [(NSPersistentStore *)persistentStore identifier];
      v12 = [(CKShare *)share recordID];
      v13 = [NSCloudKitMirroringExportRequest alloc];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __82__NSPersistentCloudKitContainer_persistUpdatedShare_inPersistentStore_completion___block_invoke_2;
      v19[3] = &unk_1E6EC3220;
      v19[4] = v11;
      objc_copyWeak(&v20, &location);
      v19[7] = completion;
      v19[8] = &v23;
      v19[5] = v12;
      v19[6] = v10;
      v14 = [(NSCloudKitMirroringRequest *)v13 initWithOptions:0 completionBlock:v19];
      v15 = v14;
      if (v14)
      {
        *(v14 + 56) = 1;
      }

      if (*(v35 + 24) == 1)
      {
        if ([(_PFRequestExecutor *)v10 executeRequest:v14 inContext:self->_metadataContext error:&v22])
        {
          if (![(_PFRequestExecutor *)v10 wait])
          {
            *(v24 + 24) = 1;
            v22 = [(NSPersistentCloudKitContainer *)self createTimeoutErrorForRequest:v15 withLabel:@"Persist-Share-Export"];
            (*(completion + 2))(completion, 0, v22);

            v22 = 0;
          }
        }

        else
        {
          *(v35 + 24) = 0;
          (*(completion + 2))(completion, 0, v22);
          *(v24 + 24) = 1;
        }
      }

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
      if (v24[3])
      {
        break;
      }
    }

    while (v8++ < 9);
    _Block_object_dispose(&v23, 8);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

void __82__NSPersistentCloudKitContainer_persistUpdatedShare_inPersistentStore_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(*(a1 + 32) "recordID")];
  v5 = [*(a1 + 40) mirroringDelegate];
  if (v5)
  {
    v5 = v5[7];
  }

  v6 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v4, [v5 databaseScope], *(a1 + 40), a2, *(*(a1 + 56) + 8) + 40);
  if (v6)
  {
    v7 = *(a1 + 48);
    if (v7 && (v8 = *(v7 + 8)) != 0 && (v9 = v6, (v10 = *(v8 + 136)) != 0) && (v11 = [(PFCloudKitArchivingUtilities *)v10 encodeRecord:(*(*(a1 + 56) + 8) + 40) error:?]) != 0)
    {
      v15 = v11;
      [(NSManagedObject *)v9 updateEncodedShareWithData:v11];
      [(NSManagedObject *)v9 setNeedsShareUpdate:1];
      if ([a2 save:*(*(a1 + 56) + 8) + 40])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    v14 = *(*(*(a1 + 56) + 8) + 40);
LABEL_15:

    return;
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
  v12 = *(*(*(a1 + 56) + 8) + 40);

  v13 = v12;
}

uint64_t __82__NSPersistentCloudKitContainer_persistUpdatedShare_inPersistentStore_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 "storeIdentifier")])
  {
    if ([a2 success])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v5 = WeakRetained;
      if (WeakRetained)
      {
        v6 = *(a1 + 56);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __123__NSPersistentCloudKitContainer__finishPersistShareRequestForShareWithRecordID_inPersistentStoreWithIdentifier_completion___block_invoke;
        v10[3] = &unk_1E6EC3248;
        v11 = *(a1 + 32);
        v12 = v6;
        [(NSPersistentCloudKitContainer *)WeakRetained doWorkOnMetadataContext:v10 withBlock:?];
      }
    }

    else
    {
      v7 = [objc_msgSend(a2 "error")];
      if ([v7 isEqual:*MEMORY[0x1E696A250]] && objc_msgSend(objc_msgSend(a2, "error"), "code") == 134409)
      {
        v8 = 0;
LABEL_11:
        *(*(*(a1 + 64) + 8) + 24) = v8;
        return [*(a1 + 48) requestFinished];
      }

      (*(*(a1 + 56) + 16))(*(a1 + 56), 0, [a2 error]);
    }

    v8 = 1;
    goto LABEL_11;
  }

  return [*(a1 + 48) requestFinished];
}

- (uint64_t)createTimeoutErrorForRequest:(uint64_t)a3 withLabel:
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = a3;
      v14 = 2112;
      v15 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: NSPersistentCloudKitContainer timed out waiting for request: %@ - %@\n", buf, 0x16u);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v13 = a3;
      v14 = 2112;
      v15 = a2;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: NSPersistentCloudKitContainer timed out waiting for request: %@ - %@", buf, 0x16u);
    }

    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = *MEMORY[0x1E696A250];
    v10[0] = @"request";
    v10[1] = @"label";
    v11[0] = a2;
    v11[1] = a3;
    result = [v7 initWithDomain:v8 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, v10, 2)}];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __123__NSPersistentCloudKitContainer__finishPersistShareRequestForShareWithRecordID_inPersistentStoreWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a2 "persistentStoreCoordinator")];
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *v21 = 138412290;
        *&v21[4] = v5;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unsupported store type for CloudKit request %@\n", v21, 0xCu);
      }

      v7 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *v21 = 138412290;
        *&v21[4] = v5;
        _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Unsupported store type for CloudKit request %@", v21, 0xCu);
      }
    }

    v8 = [v5 mirroringDelegate];
    if (!v8)
    {
      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v21 = 138412290;
        *&v21[4] = v5;
        _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: Store is not mirrored %@\n", v21, 0xCu);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *v21 = 138412290;
        *&v21[4] = v5;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Store is not mirrored %@", v21, 0xCu);
      }
    }

    *v21 = 0;
    v11 = [*(a1 + 40) zoneID];
    v12 = [v5 mirroringDelegate];
    if (v12)
    {
      v12 = v12[1];
    }

    v13 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v11, [v12 databaseScope], v5, a2, v21);
    if (v13)
    {
      if (v8 && (v14 = *(v8 + 8)) != 0)
      {
        v15 = *(v14 + 136);
      }

      else
      {
        v15 = 0;
      }

      v16 = [(NSManagedObject *)v13 encodedShareAsset];
      v17 = v16;
      if (v16)
      {
        if ([objc_msgSend(v16 "binaryData")])
        {
          v18 = [v17 binaryData];
        }

        else
        {
          v18 = [v17 externalBinaryData];
        }

        v17 = v18;
      }

      v19 = -[PFCloudKitArchivingUtilities shareFromEncodedData:inZoneWithID:error:](v15, v17, [*(a1 + 40) zoneID], v21);
      (*(*(a1 + 48) + 16))();
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)fetchParticipantsMatchingLookupInfos:(NSArray *)lookupInfos intoPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion
{
  v22[1] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)lookupInfos count])
  {
    v8 = [(NSPersistentStore *)persistentStore mirroringDelegate];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = [objc_alloc(getCloudKitCKFetchShareParticipantsOperationClass()) initWithUserIdentityLookupInfos:lookupInfos];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __101__NSPersistentCloudKitContainer_fetchParticipantsMatchingLookupInfos_intoPersistentStore_completion___block_invoke;
      v19[3] = &unk_1E6EC3270;
      v19[4] = v9;
      [v10 setPerShareParticipantCompletionBlock:v19];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __101__NSPersistentCloudKitContainer_fetchParticipantsMatchingLookupInfos_intoPersistentStore_completion___block_invoke_96;
      v18[3] = &unk_1E6EC3298;
      v18[4] = v9;
      v18[5] = completion;
      [v10 setFetchShareParticipantsCompletionBlock:v18];
      v11 = [(NSPersistentStore *)persistentStore mirroringDelegate];
      if (v11)
      {
        v11 = v11[6];
      }

      [v11 addOperation:v10];
    }

    else
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A250];
      v21 = @"NSAffectedStoresErrorKey";
      if (!persistentStore)
      {
        persistentStore = [MEMORY[0x1E695DFB0] null];
      }

      v20 = persistentStore;
      v22[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      (*(completion + 2))(completion, 0, [v15 errorWithDomain:v16 code:134091 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, &v21, 1)}]);
    }

    v17 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = *(completion + 2);
    v13 = *MEMORY[0x1E69E9840];
    v14 = MEMORY[0x1E695E0F0];

    v12(completion, v14, 0);
  }
}

void __101__NSPersistentCloudKitContainer_fetchParticipantsMatchingLookupInfos_intoPersistentStore_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *MEMORY[0x1E69E9840];

    [v4 addObject:?];
  }

  else
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

    if (os_log_type_enabled(Stream, v11))
    {
      v13 = 136315906;
      v14 = "[NSPersistentCloudKitContainer fetchParticipantsMatchingLookupInfos:intoPersistentStore:completion:]_block_invoke";
      v15 = 1024;
      v16 = 962;
      v17 = 2112;
      v18 = a2;
      v19 = 2112;
      v20 = a4;
      _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): Failed to fetch participant with lookup info: %@\n%@", &v13, 0x26u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = *MEMORY[0x1E69E9840];
  }
}

- (void)purgeObjectsAndRecordsInZoneWithID:(CKRecordZoneID *)zoneID inPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion
{
  v35[4] = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [(CKRecordZoneID *)zoneID ownerName];
  if ([(NSString *)v10 isEqualToString:getCloudKitCKCurrentUserDefaultName()])
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  if (persistentStore)
  {
    if ([(NSPersistentStore *)persistentStore mirroringDelegate])
    {
      v12 = [(NSPersistentStore *)persistentStore mirroringDelegate];
      if (v12)
      {
        v12 = v12[1];
      }

      if (v11 == [v12 databaseScope])
      {
        [v9 addObject:persistentStore];
        goto LABEL_22;
      }

      v20 = MEMORY[0x1E695DF30];
      v34[0] = @"storeURL";
      v35[0] = [(NSPersistentStore *)persistentStore URL];
      v34[1] = @"databaseScope";
      v24 = MEMORY[0x1E696AD98];
      v25 = [(NSPersistentStore *)persistentStore mirroringDelegate];
      if (v25)
      {
        v25 = v25[1];
      }

      v35[1] = [v24 numberWithInteger:{objc_msgSend(v25, "databaseScope")}];
      v34[2] = @"requiredDatabaseScope";
      v34[3] = @"zoneID";
      v35[2] = (softLinkCKDatabaseScopeString[0])(v11);
      v35[3] = zoneID;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];
      v22 = *MEMORY[0x1E695D940];
      v23 = @"Illegal attempt to purge a zone from the wrong store";
    }

    else
    {
      v20 = MEMORY[0x1E695DF30];
      v32 = *MEMORY[0x1E696A998];
      v33 = [(NSPersistentStore *)persistentStore URL];
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v22 = *MEMORY[0x1E695D940];
      v23 = @"Provided persistent store is not backed by CloudKit.";
    }

    objc_exception_throw([v20 exceptionWithName:v22 reason:v23 userInfo:v21]);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        if ([v17 mirroringDelegate])
        {
          v18 = [v17 mirroringDelegate];
          if (v18)
          {
            v18 = v18[1];
          }

          if (v11 == [v18 databaseScope])
          {
            [v9 addObject:v17];
          }
        }
      }

      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

LABEL_22:
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__NSPersistentCloudKitContainer_purgeObjectsAndRecordsInZoneWithID_inPersistentStore_completion___block_invoke;
  v26[3] = &unk_1E6EC32C0;
  v26[4] = v9;
  v26[5] = self;
  v26[6] = zoneID;
  v26[7] = completion;
  [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v26 withBlock:?];

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __97__NSPersistentCloudKitContainer_purgeObjectsAndRecordsInZoneWithID_inPersistentStore_completion___block_invoke(void *a1, void *a2)
{
  v73[1] = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = a1[4];
  v3 = [obj countByEnumeratingWithState:&v43 objects:v62 count:16];
  if (v3)
  {
    v42 = 0;
    v5 = *v44;
    v38 = *MEMORY[0x1E696A250];
    v39 = *MEMORY[0x1E696AA08];
    *&v4 = 136315394;
    v37 = v4;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v44 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = a1[5];
      if (!v7)
      {
LABEL_58:
        result = a1[7];
        if (result)
        {
          result = (*(result + 16))(result, 0, v42);
        }

        goto LABEL_60;
      }

      v8 = *(*(&v43 + 1) + 8 * v6);
      v9 = a1[6];
      v57 = 0;
      v58 = &v57;
      v59 = 0x2020000000;
      v60 = 1;
      v51 = 0;
      v52 = &v51;
      v53 = 0x3052000000;
      v54 = __Block_byref_object_copy__21;
      v55 = __Block_byref_object_dispose__21;
      v56 = 0;
      v10 = [v8 mirroringDelegate];
      if (v10)
      {
        break;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Persistente store has no mirroring delegate, this should have been validated before invoking this method: %@\n", buf, 0xCu);
      }

      v18 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Persistente store has no mirroring delegate, this should have been validated before invoking this method: %@", buf, 0xCu);
      }

      v19 = 0;
      v61 = *(v58 + 24);
LABEL_42:

      if (v19)
      {
        if (v58[3])
        {
          goto LABEL_44;
        }

        v30 = v52[5];
        if (!v30)
        {
          v32 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = v37;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
            v67 = 1024;
            v68 = 1152;
            _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v33 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            *buf = v37;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
            v67 = 1024;
            v68 = 1152;
            _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
          }

LABEL_44:
          v30 = v42;
        }

        v52[5] = 0;
        v31 = *(v58 + 24);
        v42 = v30;
        goto LABEL_48;
      }

      v31 = v61;
LABEL_48:
      _Block_object_dispose(&v51, 8);
      _Block_object_dispose(&v57, 8);
      if ((v31 & 1) == 0)
      {
        goto LABEL_58;
      }

      if (v3 == ++v6)
      {
        v34 = [obj countByEnumeratingWithState:&v43 objects:v62 count:16];
        v3 = v34;
        if (v34)
        {
          goto LABEL_3;
        }

        goto LABEL_56;
      }
    }

    v11 = objc_alloc_init(_PFRequestExecutor);
    if ([v10[1] databaseScope] != 3)
    {
      v20 = [NSCloudKitMirroringResetZoneRequest alloc];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke_115;
      v47[3] = &unk_1E6EC32E8;
      v47[6] = &v51;
      v47[4] = v11;
      v47[5] = &v57;
      v13 = [(NSCloudKitMirroringResetZoneRequest *)v20 initWithOptions:0 completionBlock:v47];
      v63 = v9;
      -[NSCloudKitMirroringResetZoneRequest setRecordZoneIDsToReset:](v13, [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1]);
      *buf = 0;
      if ([(_PFRequestExecutor *)v11 executeRequest:v13 onMirroringDelegate:v10 error:buf])
      {
        if ([(_PFRequestExecutor *)v11 wait])
        {
          goto LABEL_40;
        }

        *(v58 + 24) = 0;
        v21 = [(NSPersistentCloudKitContainer *)v7 createTimeoutErrorForRequest:v13 withLabel:@"Zone-Purge-Reset"];
      }

      else
      {
        *(v58 + 24) = 0;
        v21 = *buf;
      }

      v52[5] = v21;
      goto LABEL_40;
    }

    v50 = 0;
    -[NSManagedObject setNeedsShareDelete:](+[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v9, [v10[1] databaseScope], v8, a2, &v50), "setNeedsShareDelete:", 1);
    if (![a2 save:&v50])
    {
      v22 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v24 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v25 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v25 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v25))
      {
        *buf = 136315906;
        *&buf[4] = "[NSPersistentCloudKitContainer _doPurgeForObjectsAndRecordsInZoneWithID:inPersistentStore:withContext:error:]";
        v67 = 1024;
        v68 = 1114;
        v69 = 2112;
        v70 = v9;
        v71 = 2112;
        v72 = v50;
        _os_log_impl(&dword_18565F000, v24, v25, "CoreData+CloudKit: %s(%d): Encountered an error trying to update the store metadata while attempting to purge zone '%@': %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v22);
      *(v58 + 24) = 0;
      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v64 = v39;
      v27 = v50;
      if (!v50)
      {
        v27 = [MEMORY[0x1E695DFB0] null];
      }

      v65 = v27;
      v28 = [v26 initWithDomain:v38 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v65, &v64, 1, v37)}];
      v52[5] = v28;
      goto LABEL_41;
    }

    v12 = [NSCloudKitMirroringExportRequest alloc];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke;
    v49[3] = &unk_1E6EC32E8;
    v49[6] = &v51;
    v49[4] = v11;
    v49[5] = &v57;
    v13 = [(NSCloudKitMirroringRequest *)v12 initWithOptions:0 completionBlock:v49];
    *buf = 0;
    if ([(_PFRequestExecutor *)v11 executeRequest:v13 onMirroringDelegate:v10 error:buf])
    {
      if ([(_PFRequestExecutor *)v11 wait])
      {
        v14 = [NSCloudKitMirroringResetZoneRequest alloc];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke_2;
        v48[3] = &unk_1E6EC32E8;
        v48[6] = &v51;
        v48[4] = v11;
        v48[5] = &v57;
        v15 = [(NSCloudKitMirroringResetZoneRequest *)v14 initWithOptions:0 completionBlock:v48];
        v73[0] = v9;
        -[NSCloudKitMirroringResetZoneRequest setRecordZoneIDsToReset:](v15, [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1]);
        if ([(_PFRequestExecutor *)v11 executeRequest:v15 onMirroringDelegate:v10 error:buf])
        {
          if ([(_PFRequestExecutor *)v11 wait])
          {
LABEL_39:

            goto LABEL_40;
          }

          *(v58 + 24) = 0;
          v16 = [(NSPersistentCloudKitContainer *)v7 createTimeoutErrorForRequest:v15 withLabel:@"Zone-Purge-PostExportReset"];
        }

        else
        {
          *(v58 + 24) = 0;
          v16 = *buf;
        }

        v52[5] = v16;
        goto LABEL_39;
      }

      *(v58 + 24) = 0;
      v29 = [(NSPersistentCloudKitContainer *)v7 createTimeoutErrorForRequest:v13 withLabel:@"Zone-Purge-Export"];
    }

    else
    {
      *(v58 + 24) = 0;
      v29 = *buf;
    }

    v52[5] = v29;
LABEL_40:

LABEL_41:
    v19 = 1;
    goto LABEL_42;
  }

LABEL_56:
  result = a1[7];
  if (result)
  {
    result = (*(result + 16))(result, a1[6], 0);
  }

LABEL_60:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke(void *a1, void *a2)
{
  if (([a2 success] & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 40) = [a2 error];
  }

  v4 = a1[4];

  return [v4 requestFinished];
}

uint64_t __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke_2(void *a1, void *a2)
{
  if (([a2 success] & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 40) = [a2 error];
  }

  v4 = a1[4];

  return [v4 requestFinished];
}

uint64_t __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke_115(void *a1, void *a2)
{
  if (([a2 success] & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 40) = [a2 error];
  }

  v4 = a1[4];

  return [v4 requestFinished];
}

- (NSDictionary)fetchSharesMatchingObjectIDs:(NSArray *)objectIDs error:(NSError *)error
{
  v46 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3052000000;
  v38 = __Block_byref_object_copy__21;
  v39 = __Block_byref_object_dispose__21;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__21;
  v33 = __Block_byref_object_dispose__21;
  v34 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(NSArray *)objectIDs countByEnumeratingWithState:&v25 objects:v45 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(objectIDs);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 persistentStore];
        if ([objc_msgSend(v10 "type")])
        {
          if ([objc_msgSend(v10 "ancillaryModels")])
          {
            v11 = [v10 mirroringDelegate];
            if (v11)
            {
              if (*(v11 + 128) == 1)
              {
                v12 = [v5 objectForKey:{objc_msgSend(v10, "identifier")}];
                if (!v12)
                {
                  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  [v5 setObject:v12 forKey:{objc_msgSend(v10, "identifier")}];
                }

                [v12 addObject:v9];
              }
            }
          }
        }
      }

      v6 = [(NSArray *)objectIDs countByEnumeratingWithState:&v25 objects:v45 count:16];
    }

    while (v6);
  }

  if ([v5 count])
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68__NSPersistentCloudKitContainer_fetchSharesMatchingObjectIDs_error___block_invoke;
    v24[3] = &unk_1E6EC3310;
    v24[4] = v5;
    v24[5] = &v29;
    v24[6] = &v35;
    [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v24 withBlock:?];
    v13 = v36[5];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v36[5] = v13;
  }

  if (!v13)
  {
    v14 = v30[5];
    if (v14)
    {
      if (error)
      {
        *error = v14;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v42 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v43 = 1024;
        v44 = 1236;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v42 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v43 = 1024;
        v44 = 1236;
        _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    if (!v30[5])
    {
      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: fault: fetchSharesMatchingObjectIDs failed but did not set an error.\n", buf, 2u);
      }

      v18 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: fetchSharesMatchingObjectIDs failed but did not set an error.", buf, 2u);
      }
    }
  }

  v30[5] = 0;
  v19 = v36[5];
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void __68__NSPersistentCloudKitContainer_fetchSharesMatchingObjectIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(a1 + 32);
  v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v33)
  {
    v32 = *v41;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v41 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v35 = v4;
      v5 = *(*(&v40 + 1) + 8 * v4);
      v6 = [*(a1 + 32) objectForKey:v5];
      v7 = [objc_msgSend(a2 "persistentStoreCoordinator")];
      v8 = [NSCKRecordMetadata metadataForObjectIDs:v6 inStore:v7 withManagedObjectContext:a2 error:(*(*(a1 + 40) + 8) + 40)];
      if (v8)
      {
        v9 = v8;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v10 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v37;
          do
          {
            v13 = 0;
            do
            {
              if (*v37 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v36 + 1) + 8 * v13);
              v15 = -[NSCKRecordZoneMetadata createRecordZoneID]([v14 recordZone]);
              v16 = [objc_msgSend(v14 "recordZone")];
              if (v16)
              {
                v17 = v16;
                v18 = [objc_msgSend(v16 "binaryData")] ? objc_msgSend(v17, "binaryData") : objc_msgSend(v17, "externalBinaryData");
                v19 = v18;
                if (v18)
                {
                  v20 = [v7 mirroringDelegate];
                  if (v20)
                  {
                    v21 = *(v20 + 8);
                    if (v21)
                    {
                      v20 = *(v21 + 136);
                    }

                    else
                    {
                      v20 = 0;
                    }
                  }

                  v22 = [(PFCloudKitArchivingUtilities *)v20 shareFromEncodedData:v19 inZoneWithID:v15 error:(*(*(a1 + 40) + 8) + 40)];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = [(NSCKRecordMetadata *)v14 createObjectIDForLinkedRow];
                    [v3 setObject:v23 forKey:v24];
                  }

                  else
                  {
                    v25 = *(*(*(a1 + 40) + 8) + 40);
                    if (v25)
                    {
                      v29 = v25;

                      goto LABEL_31;
                    }
                  }
                }
              }

              ++v13;
            }

            while (v11 != v13);
            v26 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
            v11 = v26;
          }

          while (v26);
        }
      }

      else
      {
        v27 = *(*(*(a1 + 40) + 8) + 40);
        if (v27)
        {
          v28 = v27;
        }
      }

LABEL_31:
      if (*(*(*(a1 + 40) + 8) + 40))
      {
        break;
      }

      v4 = v35 + 1;
      if (v35 + 1 == v33)
      {
        v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v33)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 40) = [v3 copy];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (NSArray)fetchSharesInPersistentStore:(NSPersistentStore *)persistentStore error:(NSError *)error
{
  v50 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3052000000;
  v42 = __Block_byref_object_copy__21;
  v43 = __Block_byref_object_dispose__21;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = __Block_byref_object_copy__21;
  v37 = __Block_byref_object_dispose__21;
  v38 = 0;
  if (persistentStore)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{persistentStore, 0}];
  }

  else
  {
    v6 = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
  }

  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v49 count:16];
  if (v9)
  {
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if ([objc_msgSend(v12 "type")])
        {
          if ([objc_msgSend(v12 "ancillaryModels")])
          {
            v13 = [v12 mirroringDelegate];
            if (v13)
            {
              if (*(v13 + 128) == 1)
              {
                [v8 addObject:v12];
              }
            }
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v49 count:16];
    }

    while (v9);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__21;
  v27 = __Block_byref_object_dispose__21;
  v28 = 0;
  if ([v8 count])
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__NSPersistentCloudKitContainer_fetchSharesInPersistentStore_error___block_invoke;
    v22[3] = &unk_1E6EC3338;
    v22[4] = v8;
    v22[5] = &v33;
    v22[6] = &v39;
    v22[7] = &v23;
    [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v22 withBlock:?];
    if (v40[5])
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v40[5] = v14;
    if (v14)
    {
      goto LABEL_21;
    }
  }

  if (!v24[5])
  {
    v19 = v34[5];
    if (v19)
    {
      if (error)
      {
        *error = v19;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v47 = 1024;
        v48 = 1321;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v21 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v47 = 1024;
        v48 = 1321;
        _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

LABEL_21:

  v34[5] = 0;
  v15 = v40[5];
  if (v24[5])
  {

    v40[5] = 0;
    objc_exception_throw(v24[5]);
  }

  v16 = v15;
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void __68__NSPersistentCloudKitContainer_fetchSharesInPersistentStore_error___block_invoke(void *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  -[NSFetchRequest setPredicate:](v4, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"encodedShareAsset.binaryData != nil || encodedShareAsset.externalBinaryData != nil"]);
  [(NSFetchRequest *)v4 setAffectedStores:a1[4]];
  v5 = [a2 executeFetchRequest:v4 error:*(a1[5] + 8) + 40];
  v6 = v5;
  if (v5)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v7)
    {
      v9 = *v31;
      *&v8 = 138412546;
      v28 = v8;
      do
      {
        v10 = 0;
        do
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v30 + 1) + 8 * v10);
          v12 = [(NSCKRecordZoneMetadata *)v11 createRecordZoneID];
          v13 = [objc_msgSend(v11 "objectID")];
          v14 = [v13 mirroringDelegate];
          if (v14)
          {
            v15 = *(v14 + 8);
            if (v15)
            {
              v15 = v15[17];
            }
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
          if (!v16)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = v28;
              v35 = v13;
              v36 = 2112;
              v37 = v11;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetched a zone metadata with an encoded share but can't unarchive it because it doesn't have an associated mirroring delegate: %@ - %@\n", buf, 0x16u);
            }

            v18 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              *buf = v28;
              v35 = v13;
              v36 = 2112;
              v37 = v11;
              _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Fetched a zone metadata with an encoded share but can't unarchive it because it doesn't have an associated mirroring delegate: %@ - %@", buf, 0x16u);
            }
          }

          v19 = [v11 encodedShareAsset];
          v20 = v19;
          if (v19)
          {
            if ([objc_msgSend(v19 "binaryData")])
            {
              v21 = [v20 binaryData];
            }

            else
            {
              v21 = [v20 externalBinaryData];
            }
          }

          else
          {
            v21 = 0;
          }

          v22 = [(PFCloudKitArchivingUtilities *)v16 shareFromEncodedData:v21 inZoneWithID:v12 error:(*(a1[5] + 8) + 40)];

          if (v22)
          {
            [v29 addObject:v22];
          }

          else
          {
            v23 = *(*(a1[5] + 8) + 40);
            if (v23)
            {
              v26 = v23;
              goto LABEL_30;
            }
          }

          ++v10;
        }

        while (v7 != v10);
        v24 = [v6 countByEnumeratingWithState:&v30 objects:v38 count:16];
        v7 = v24;
      }

      while (v24);
    }

LABEL_30:
    if (!*(*(a1[5] + 8) + 40))
    {
      *(*(a1[6] + 8) + 40) = [v29 copy];
    }
  }

  else
  {
    v25 = *(*(a1[5] + 8) + 40);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)shareManagedObjects:(NSArray *)managedObjects toShare:(CKShare *)share completion:(void *)completion
{
  v97 = *MEMORY[0x1E69E9840];
  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = [-[NSArray lastObject](managedObjects "lastObject")];
  if (share)
  {
    v7 = [objc_msgSend(-[CKShare recordID](share "recordID")];
    if ([v7 isEqualToString:getCloudKitCKCurrentUserDefaultName()])
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 2;
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v9 = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v86 objects:v96 count:16];
  if (v10)
  {
    v11 = *v87;
LABEL_8:
    v12 = 0;
    while (1)
    {
      if (*v87 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v86 + 1) + 8 * v12);
      v14 = [v13 mirroringDelegate];
      if (v14)
      {
        v14 = v14[1];
      }

      if ([v14 databaseScope] == v8)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v9 countByEnumeratingWithState:&v86 objects:v96 count:16];
        if (v10)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v13 = 0;
  }

  v15 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v17 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v18 = 17;
  }

  else
  {
    v18 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v18 = 16;
  }

  if (__ckLoggingOverride)
  {
    v19 = v18;
  }

  else
  {
    v19 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v19))
  {
    v20 = [(NSArray *)managedObjects count];
    *buf = 136316418;
    *&buf[4] = "[NSPersistentCloudKitContainer shareManagedObjects:toShare:completion:]";
    *&buf[12] = 1024;
    *&buf[14] = 1354;
    *&buf[18] = 2112;
    *&buf[20] = self;
    *&buf[28] = 2048;
    *&buf[30] = v20;
    *&buf[38] = 2112;
    v93 = v13;
    v94 = 2112;
    v95 = share;
    _os_log_impl(&dword_18565F000, v17, v19, "CoreData+CloudKit: %s(%d): %@: Sharing %lu objects from store: %@ to share: %@", buf, 0x3Au);
  }

  objc_autoreleasePoolPop(v15);
  v21 = [v13 mirroringDelegate];
  v22 = v21;
  if (v21)
  {
    v23 = *(v21 + 6);
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&buf[24] = __Block_byref_object_copy__21;
  *&buf[32] = __Block_byref_object_dispose__21;
  v93 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 1;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3052000000;
  v79 = __Block_byref_object_copy__21;
  v80 = __Block_byref_object_dispose__21;
  v81 = 0;
  v74 = 0;
  v75[0] = &v74;
  v75[1] = 0x3052000000;
  v75[2] = __Block_byref_object_copy__21;
  v75[3] = __Block_byref_object_dispose__21;
  v75[4] = 0;
  v72 = 0;
  v73[0] = &v72;
  v73[1] = 0x3052000000;
  v73[2] = __Block_byref_object_copy__21;
  v73[3] = __Block_byref_object_dispose__21;
  v73[4] = 0;
  v58 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (!v13)
  {
    *(v83 + 24) = 0;
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    v90 = *MEMORY[0x1E696A588];
    v91 = @"Could not locate private store in which to share.";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    v32 = [v30 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v31];
    *(*&buf[8] + 40) = v32;
    goto LABEL_45;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke;
  v71[3] = &unk_1E6EC3428;
  v71[4] = managedObjects;
  v71[5] = v60;
  v71[6] = v26;
  v71[7] = v13;
  v71[8] = v25;
  v71[9] = &v82;
  v71[10] = buf;
  [v60 performBlockAndWait:v71];
  if (*(v83 + 24) == 1)
  {
    if (share)
    {
      v27 = share;
      *(v75[0] + 40) = v27;
      v28 = [-[CKShare recordID](v27 "recordID")];
      v29 = v73;
    }

    else
    {
      if ([v25 count])
      {
        v33 = [v25 allObjects];
        v34 = [(NSPersistentCloudKitContainer *)self fetchSharesMatchingObjectIDs:v33 error:*&buf[8] + 40];
        v35 = v34;
        if (v34)
        {
          if ([(NSDictionary *)v34 count])
          {
            v36 = [(NSDictionary *)v35 objectForKey:[(NSArray *)[(NSDictionary *)v35 allKeys] lastObject]];
            *(v75[0] + 40) = v36;
            v37 = [objc_msgSend(v36 "recordID")];
            *(v73[0] + 40) = v37;
          }
        }

        else
        {
          *(v83 + 24) = 0;
          v38 = *(*&buf[8] + 40);
        }

        if (*(v83 + 24) == 1 && !*(v73[0] + 40))
        {
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_139;
          v70[3] = &unk_1E6EC3360;
          v70[4] = v25;
          v70[5] = v13;
          v70[6] = &v72;
          v70[7] = &v74;
          v70[8] = &v82;
          v70[9] = buf;
          [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v70 withBlock:?];
        }
      }

      if (*(v75[0] + 40))
      {
        goto LABEL_44;
      }

      v53 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"com.apple.coredata.cloudkit.share.", objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")];
      v55 = [v53 initWithZoneName:v54 ownerName:getCloudKitCKCurrentUserDefaultName()];
      *(v73[0] + 40) = v55;
      v56 = objc_alloc(getCloudKitCKShareClass[0]());
      v28 = [v56 initWithRecordZoneID:*(v73[0] + 40)];
      v29 = v75;
    }

    *(*v29 + 40) = v28;
  }

LABEL_44:

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_2;
  v69[3] = &unk_1E6EC3388;
  v69[4] = self;
  v69[5] = v26;
  v69[10] = &v82;
  v69[11] = &v74;
  v69[6] = v13;
  v69[7] = managedObjects;
  v69[12] = buf;
  v69[8] = v59;
  v69[9] = v60;
  [v60 performBlockAndWait:v69];

  if (*(v83 + 24) != 1)
  {
    goto LABEL_64;
  }

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_146;
  v68[3] = &unk_1E6EC33B0;
  v68[4] = v13;
  v68[5] = v59;
  v68[6] = self;
  v68[7] = v58;
  v68[9] = &v74;
  v68[10] = &v82;
  v68[11] = buf;
  v68[12] = v8;
  v68[8] = v22;
  [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v68 withBlock:?];
  if (*(v83 + 24) != 1)
  {
    goto LABEL_64;
  }

LABEL_45:
  v39 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  do
  {
    *(v83 + 24) = 1;
    v40 = *(*&buf[8] + 40);
    if (v40)
    {

      *(*&buf[8] + 40) = 0;
    }

    v41 = objc_alloc_init(_PFRequestExecutor);
    v42 = [NSCloudKitMirroringExportRequest alloc];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_150;
    v63[3] = &unk_1E6EC33D8;
    v63[4] = v13;
    v63[5] = self;
    v63[9] = buf;
    v63[10] = v39 + 1;
    v63[7] = &v64;
    v63[8] = &v82;
    v63[6] = v41;
    v43 = [(NSCloudKitMirroringRequest *)v42 initWithOptions:0 completionBlock:v63];
    v44 = v43;
    if (v43)
    {
      *(v43 + 56) = 1;
    }

    if (*(v83 + 24) == 1)
    {
      if ([(_PFRequestExecutor *)v41 executeRequest:v43 inContext:v60 error:*&buf[8] + 40])
      {
        if ([(_PFRequestExecutor *)v41 wait])
        {
          if (*(v83 + 24) == 1)
          {
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 3221225472;
            v62[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_151;
            v62[3] = &unk_1E6EC3400;
            v62[9] = buf;
            v62[10] = v8;
            v62[6] = &v72;
            v62[7] = &v76;
            v62[8] = &v82;
            v62[4] = v13;
            v62[5] = v22;
            [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v62 withBlock:?];
          }
        }

        else
        {
          *(v83 + 24) = 0;
          v46 = [(NSPersistentCloudKitContainer *)self createTimeoutErrorForRequest:v44 withLabel:@"Share-Export"];
          *(*&buf[8] + 40) = v46;
          *(v65 + 24) = 1;
        }
      }

      else
      {
        *(v83 + 24) = 0;
        v45 = *(*&buf[8] + 40);
      }
    }

    if (v65[3])
    {
      break;
    }
  }

  while (v39++ < 9);
  _Block_object_dispose(&v64, 8);
  if (v83[3])
  {
    v48 = 0;
    v49 = v77[5];
    v50 = v58;
    v51 = v24;
  }

  else
  {
LABEL_64:
    v48 = *(*&buf[8] + 40);
    v50 = 0;
    v49 = 0;
    v51 = 0;
  }

  (*(completion + 2))(completion, v50, v49, v51, v48);

  v77[5] = 0;
  *(*&buf[8] + 40) = 0;

  *(v75[0] + 40) = 0;
  *(v73[0] + 40) = 0;

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(buf, 8);
  v52 = *MEMORY[0x1E69E9840];
}

uint64_t __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 32);
  result = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v36;
    v27 = *MEMORY[0x1E696A588];
    v28 = *MEMORY[0x1E696A250];
    do
    {
      v5 = 0;
      do
      {
        if (*v36 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v35 + 1) + 8 * v5);
        if ([v6 managedObjectContext] != *(a1 + 40))
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Client attempting to share objects from multiple contexts, this should return an error.\n", buf, 2u);
          }

          v8 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Client attempting to share objects from multiple contexts, this should return an error.", buf, 2u);
          }
        }

        if ([objc_msgSend(v6 "objectID")])
        {
          [*(a1 + 48) addObject:v6];
          [*(a1 + 40) assignObject:v6 toPersistentStore:*(a1 + 56)];
          v9 = [PFCloudKitSerializer createSetOfObjectIDsRelatedToObject:v6];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v30 objects:v41 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v31;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v31 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v30 + 1) + 8 * i);
                if (([v14 isTemporaryID] & 1) == 0)
                {
                  [*(a1 + 64) addObject:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v30 objects:v41 count:16];
            }

            while (v11);
          }
        }

        else
        {
          v15 = *(a1 + 56);
          if (v15 == [objc_msgSend(v6 "objectID")])
          {
            [*(a1 + 64) addObject:{objc_msgSend(v6, "objectID")}];
          }

          else
          {
            *(*(*(a1 + 72) + 8) + 24) = 0;
            v16 = MEMORY[0x1E696AEC0];
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = NSStringFromSelector(sel_shareManagedObjects_toShare_completion_);
            v20 = NSStringFromSelector(sel_shareManagedObjects_toShare_completion_);
            v21 = [v16 stringWithFormat:@"%@ does not support sharing objects across persistent stores. %@ needs to be called with objects that are either inserted (with temporary objectIDs) or objects assigned to the correct desination store. Objects that exist in the 'wrong' store must be cloned (and their originals deleted) after which they can be assigned to the correct store by %@ or %@.", v18, v19, v20, NSStringFromSelector(sel_assignObject_toPersistentStore_)];
            v22 = objc_alloc(MEMORY[0x1E696ABC0]);
            v40[0] = v21;
            v39[0] = v27;
            v39[1] = @"offendingObject";
            if ([v6 objectID])
            {
              v23 = [v6 objectID];
            }

            else
            {
              v23 = @"nil";
            }

            v40[1] = v23;
            v39[2] = @"destinationStoreURL";
            if ([*(a1 + 56) URL])
            {
              v24 = [*(a1 + 56) URL];
            }

            else
            {
              v24 = @"nil";
            }

            v40[2] = v24;
            v39[3] = @"storeURL";
            if ([objc_msgSend(objc_msgSend(v6 "objectID")])
            {
              v25 = [objc_msgSend(objc_msgSend(v6 "objectID")];
            }

            else
            {
              v25 = @"nil";
            }

            v40[3] = v25;
            *(*(*(a1 + 80) + 8) + 40) = [v22 initWithDomain:v28 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v40, v39, 4)}];
          }
        }

        ++v5;
      }

      while (v5 != v3);
      result = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      v3 = result;
    }

    while (result);
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_139(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v3 = [NSCKRecordZoneMetadata fetchZoneIDsAssignedToObjectsWithIDs:a1[4] fromStore:a1[5] inContext:a2 error:&v17];
  v4 = v3;
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([objc_msgSend(v9 "zoneName")])
          {
            *(*(a1[6] + 8) + 40) = v9;
            v10 = [objc_alloc(getCloudKitCKShareClass[0]()) initWithRecordZoneID:v9];
            v11 = 7;
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    *(*(a1[8] + 8) + 24) = 0;
    v10 = v17;
    v11 = 9;
LABEL_13:
    *(*(a1[v11] + 8) + 40) = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = 0;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v4 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v5 = 17;
    }

    else
    {
      v5 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v5 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v6 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) count];
      *buf = 136315906;
      v26 = "[NSPersistentCloudKitContainer shareManagedObjects:toShare:completion:]_block_invoke_2";
      v27 = 1024;
      v28 = 1471;
      v29 = 2112;
      v30 = v8;
      v31 = 2048;
      v32 = v9;
      _os_log_impl(&dword_18565F000, v4, v7, "CoreData+CloudKit: %s(%d): %@: Found %lu inserted objects to share.", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v2);
    if ([*(a1 + 32) assignManagedObjects:*(a1 + 40) toCloudKitRecordZone:objc_msgSend(objc_msgSend(*(*(*(a1 + 88) + 8) + 40) inPersistentStore:"recordID") error:{"zoneID"), *(a1 + 48), &v23}])
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = *(a1 + 56);
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v19 + 1) + 8 * i);
            if (([v10 containsObject:{objc_msgSend(v16, "objectID")}] & 1) == 0)
            {
              v17 = [PFCloudKitSerializer createSetOfObjectIDsRelatedToObject:v16];
              [v10 unionSet:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v13);
      }

      [*(a1 + 64) addObjectsFromArray:{objc_msgSend(v10, "allObjects")}];
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      *(*(*(a1 + 96) + 8) + 40) = v23;
    }
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1 && [*(a1 + 72) hasChanges] && (objc_msgSend(*(a1 + 72), "save:", &v23) & 1) == 0)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    *(*(*(a1 + 96) + 8) + 40) = v23;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_146(uint64_t a1, void *a2)
{
  v2 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v36 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [objc_msgSend(*(*(*(a1 + 72) + 8) + 40) "recordID")], *(a1 + 96), *(a1 + 32), a2, &v47);
  if (!v36)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    *(*(*(a1 + 88) + 8) + 40) = v47;
    goto LABEL_55;
  }

  v4 = [NSCKRecordMetadata createMapOfMetadataMatchingObjectIDs:*(a1 + 32) inStore:v2 inManagedObjectContext:&v47 error:?];
  if (!v4)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    *(*(*(a1 + 88) + 8) + 40) = v47;
    goto LABEL_54;
  }

  v38 = v2;
  v5 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v7 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v8 = 17;
  }

  else
  {
    v8 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v8 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v9 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (os_log_type_enabled(Stream, v10))
  {
    v11 = *(a1 + 48);
    *buf = 136316162;
    v51 = "[NSPersistentCloudKitContainer shareManagedObjects:toShare:completion:]_block_invoke";
    v52 = 1024;
    v53 = 1522;
    v54 = 2112;
    v55 = v11;
    v56 = 2112;
    v57 = v36;
    v58 = 2112;
    v59 = v4;
    _os_log_impl(&dword_18565F000, v7, v10, "CoreData+CloudKit: %s(%d): %@: Got zone and metadatas: %@\n%@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v5);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(a1 + 40);
  v12 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v17 = [v4 objectForKey:v16];
        [*(a1 + 56) addObject:v16];
        if (v17)
        {
          v18 = [(NSCKRecordMetadata *)v17 createRecordID];
          if (([objc_msgSend(v18 "zoneID")] & 1) == 0)
          {
            [v17 setNeedsCloudDelete:0];
            [v17 setNeedsLocalDelete:0];
            [v17 setNeedsUpload:1];
            [v17 destroySystemFields];
            [v17 destroyEncodedRecord];
            v19 = [v17 recordZone];
            v20 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordZoneMoveReceipt entityPath], v38);
            [v38 assignObject:v20 toPersistentStore:*(a1 + 32)];
            [(NSManagedObject *)v20 setRecordMetadata:v17];
            -[NSManagedObject setMovedAt:](v20, "setMovedAt:", [MEMORY[0x1E695DF00] date]);
            [(NSManagedObject *)v20 setNeedsCloudDelete:1];
            -[NSManagedObject setZoneName:](v20, "setZoneName:", [v19 ckRecordZoneName]);
            -[NSManagedObject setOwnerName:](v20, "setOwnerName:", [v19 ckOwnerName]);
            -[NSManagedObject setRecordName:](v20, "setRecordName:", [v17 ckRecordName]);
            [v17 setRecordZone:v36];
            [v35 addObject:v18];
          }
        }

        else
        {
          v21 = [v38 existingObjectWithID:v16 error:&v47];
          if (!v21 || (v22 = +[NSCKRecordMetadata insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:](NSCKRecordMetadata, "insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:", v21, 1, [objc_msgSend(*(*(*(a1 + 72) + 8) + 40) "recordID")], 0, &v47)) == 0)
          {
            *(*(*(a1 + 80) + 8) + 24) = 0;
            *(*(*(a1 + 88) + 8) + 40) = v47;
            goto LABEL_35;
          }

          [v22 setNeedsUpload:1];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_35:
  v23 = *(*(a1 + 80) + 8);
  v2 = v38;
  if (*(v23 + 24) == 1)
  {
    v24 = *(a1 + 64);
    if (v24 && (v25 = *(v24 + 8)) != 0 && (v26 = *(v25 + 136)) != 0)
    {
      v27 = [(PFCloudKitArchivingUtilities *)v26 encodeRecord:&v47 error:?];
      if (v27)
      {
        [(NSManagedObject *)v36 updateEncodedShareWithData:v27];
        [(NSManagedObject *)v36 setNeedsShareUpdate:1];
        v28 = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingRelatingRecords:v35 andRelatingRecordIDs:*(a1 + 32) fromStore:v38 inManagedObjectContext:&v47 error:?];
        if (v28)
        {
          v29 = v28;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v30 = [v28 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v40;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v40 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                [*(*(&v39 + 1) + 8 * j) setNeedsDeleteBool:1];
              }

              v31 = [v29 countByEnumeratingWithState:&v39 objects:v48 count:16];
            }

            while (v31);
          }

          v2 = v38;
          if ([v38 save:&v47])
          {
            goto LABEL_51;
          }
        }
      }

      v23 = *(*(a1 + 80) + 8);
    }

    else
    {
      v27 = 0;
    }

    *(v23 + 24) = 0;
    *(*(*(a1 + 88) + 8) + 40) = v47;
LABEL_51:
  }

LABEL_54:
LABEL_55:
  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    [v2 reset];
  }

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_150(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(a2 "storeIdentifier")])
  {
    v4 = [a2 success];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    if ((v4 & 1) == 0)
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
        v9 = *(a1 + 40);
        v10 = *(a1 + 80);
        v14 = 136316162;
        v15 = "[NSPersistentCloudKitContainer shareManagedObjects:toShare:completion:]_block_invoke";
        v16 = 1024;
        v17 = 1640;
        v18 = 2112;
        v19 = v9;
        v20 = 2048;
        v21 = v10;
        v22 = 2112;
        v23 = [a2 error];
        _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): %@: Failed to export for share (%lu): %@", &v14, 0x30u);
      }

      objc_autoreleasePoolPop(v5);
      v11 = [objc_msgSend(a2 "error")];
      if ([v11 isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(objc_msgSend(a2, "error"), "code") == 134409)
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      *(*(*(a1 + 72) + 8) + 40) = [a2 error];
    }
  }

  result = [*(a1 + 48) requestFinished];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

id __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_151(uint64_t *a1, void *a2)
{
  v12 = 0;
  v3 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:a1[10] inDatabaseWithScope:a1[4] forStore:a2 inContext:&v12 error:?];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = a1[5];
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v6 = *(v5 + 136);
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSManagedObject *)v3 encodedShareAsset];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_msgSend(v7 "binaryData")] ? objc_msgSend(v8, "binaryData") : objc_msgSend(v8, "externalBinaryData");
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  result = [(PFCloudKitArchivingUtilities *)v6 shareFromEncodedData:v10 inZoneWithID:*(*(a1[6] + 8) + 40) error:&v12];
  *(*(a1[7] + 8) + 40) = result;
  if (!*(*(a1[7] + 8) + 40))
  {
LABEL_11:
    *(*(a1[8] + 8) + 24) = 0;
    result = v12;
    *(*(a1[9] + 8) + 40) = result;
  }

  return result;
}

- (void)applyActivityVoucher:(id)a3 toStores:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator:a3] persistentStores];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [objc_msgSend(*(*(&v11 + 1) + 8 * v9++) "mirroringDelegate")];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)expireActivityVoucher:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v8++) "mirroringDelegate")];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __67__NSPersistentCloudKitContainer_doWorkOnMetadataContext_withBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(*(a1 + 32) "registeredObjects")])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) registeredObjects];
      v13 = 138412290;
      v14 = v9;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: An operation left registered objects in NSPersistentCloudKitContainer's metadata context: %@\n", &v13, 0xCu);
    }

    v3 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v10 = [*(a1 + 32) registeredObjects];
      v13 = 138412290;
      v14 = v10;
      _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: An operation left registered objects in NSPersistentCloudKitContainer's metadata context: %@", &v13, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  if ([*(a1 + 32) hasChanges])
  {
    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v13 = 138412290;
      v14 = v11;
      _os_log_error_impl(&dword_18565F000, v5, OS_LOG_TYPE_ERROR, "CoreData: fault: An operation left NSPersistentCloudKitContainer's metadata context dirty: %@\n", &v13, 0xCu);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v12 = *(a1 + 32);
      v13 = 138412290;
      v14 = v12;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: An operation left NSPersistentCloudKitContainer's metadata context dirty: %@", &v13, 0xCu);
    }
  }

  result = [*(a1 + 32) reset];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __67__NSPersistentCloudKitContainer_doWorkOnMetadataContext_withBlock___block_invoke_161(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(*(a1 + 32) "registeredObjects")])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) registeredObjects];
      v13 = 138412290;
      v14 = v9;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: An operation left registered objects in NSPersistentCloudKitContainer's metadata context: %@\n", &v13, 0xCu);
    }

    v3 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v10 = [*(a1 + 32) registeredObjects];
      v13 = 138412290;
      v14 = v10;
      _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: An operation left registered objects in NSPersistentCloudKitContainer's metadata context: %@", &v13, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  if ([*(a1 + 32) hasChanges])
  {
    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v13 = 138412290;
      v14 = v11;
      _os_log_error_impl(&dword_18565F000, v5, OS_LOG_TYPE_ERROR, "CoreData: fault: An operation left NSPersistentCloudKitContainer's metadata context dirty: %@\n", &v13, 0xCu);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v12 = *(a1 + 32);
      v13 = 138412290;
      v14 = v12;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: An operation left NSPersistentCloudKitContainer's metadata context dirty: %@", &v13, 0xCu);
    }
  }

  result = [*(a1 + 32) reset];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)mostRecentExportedHistoryToken:(uint64_t)a1
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3052000000;
    v26 = __Block_byref_object_copy__21;
    v27 = __Block_byref_object_dispose__21;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3052000000;
    v20 = __Block_byref_object_copy__21;
    v21 = __Block_byref_object_dispose__21;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3052000000;
    v14 = __Block_byref_object_copy__21;
    v15 = __Block_byref_object_dispose__21;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__NSPersistentCloudKitContainer_mostRecentExportedHistoryToken___block_invoke;
    v10[3] = &unk_1E6EC3338;
    v10[4] = a1;
    v10[5] = &v17;
    v10[6] = &v23;
    v10[7] = &v11;
    [(NSPersistentCloudKitContainer *)a1 doWorkOnMetadataContext:v10 withBlock:?];
    v3 = v12[5];
    if (v3)
    {
      objc_exception_throw(v3);
    }

    if (!v24[5])
    {
      v7 = v18[5];
      if (v7)
      {
        if (a2)
        {
          *a2 = v7;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v30 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
          v31 = 1024;
          v32 = 1846;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v9 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v30 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
          v31 = 1024;
          v32 = 1846;
          _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v18[5] = 0;
    v4 = v24[5];
    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void __64__NSPersistentCloudKitContainer_mostRecentExportedHistoryToken___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [objc_msgSend(*(a1 + 32) "persistentStoreCoordinator")];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [NSCKMetadataEntry entryForKey:v8 fromStore:a2 inManagedObjectContext:*(*(a1 + 40) + 8) + 40 error:?];
        if (v9)
        {
          [v13 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v9 forKey:{"transformedValue"), "storeTokens"), "objectForKey:", objc_msgSend(v8, "identifier")), objc_msgSend(v8, "identifier")}];
        }

        else
        {
          v10 = *(*(*(a1 + 40) + 8) + 40);
          if (v10)
          {
            v11 = v10;
            goto LABEL_14;
          }

          [v13 setObject:&unk_1EF435C38 forKey:{objc_msgSend(v8, "identifier")}];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 40) = [[NSPersistentHistoryToken alloc] initWithDictionary:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (uint64_t)hasMetadataMarkedForExportInStore:(void *)a3 error:
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3052000000;
    v22 = __Block_byref_object_copy__21;
    v23 = __Block_byref_object_dispose__21;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = __Block_byref_object_copy__21;
    v17 = __Block_byref_object_dispose__21;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __73__NSPersistentCloudKitContainer_hasMetadataMarkedForExportInStore_error___block_invoke;
    v12[3] = &unk_1E6EC3338;
    v12[4] = a2;
    v12[5] = &v19;
    v12[6] = &v25;
    v12[7] = &v13;
    [(NSPersistentCloudKitContainer *)a1 doWorkOnMetadataContext:v12 withBlock:?];
    v4 = v14[5];
    if (v4)
    {
      objc_exception_throw(v4);
    }

    v5 = v20[5];
    if (v5)
    {
      v6 = v5;
      if (v6)
      {
        if (a3)
        {
          *a3 = v6;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v30 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
          v31 = 1024;
          v32 = 1917;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v8 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v30 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
          v31 = 1024;
          v32 = 1917;
          _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v20[5] = 0;
    v9 = *(v26 + 24);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

uint64_t __73__NSPersistentCloudKitContainer_hasMetadataMarkedForExportInStore_error___block_invoke(uint64_t *a1, uint64_t a2)
{
  v4 = +[NSCKRecordMetadata countRecordMetadataInStore:matchingPredicate:withManagedObjectContext:error:](NSCKRecordMetadata, a1[4], [MEMORY[0x1E696AE18] predicateWithFormat:@"needsUpload = YES"], a2, (*(a1[5] + 8) + 40));
  if (!v4)
  {
    return *(*(a1[5] + 8) + 40);
  }

  result = [v4 integerValue];
  if (result >= 1)
  {
LABEL_3:
    *(*(a1[6] + 8) + 24) = 1;
    return result;
  }

  v6 = +[NSCKMirroredRelationship countMirroredRelationshipsInStore:matchingPredicate:withManagedObjectContext:error:](NSCKMirroredRelationship, a1[4], [MEMORY[0x1E696AE18] predicateWithFormat:@"isUploaded = 0"], a2, (*(a1[5] + 8) + 40));
  if (!v6)
  {
    return *(*(a1[5] + 8) + 40);
  }

  result = [v6 integerValue];
  if (result >= 1)
  {
    goto LABEL_3;
  }

  v7 = [NSCKHistoryAnalyzerState countAnalyzerStatesInStore:a2 withManagedObjectContext:(*(a1[5] + 8) + 40) error:?];
  if (!v7)
  {
    return *(*(a1[5] + 8) + 40);
  }

  result = [v7 integerValue];
  if (result >= 1)
  {
    goto LABEL_3;
  }

  v8 = +[NSCKRecordZoneMetadata countZonesInStore:matchingPredicate:withManagedObjectContext:error:](NSCKRecordZoneMetadata, "countZonesInStore:matchingPredicate:withManagedObjectContext:error:", a1[4], [MEMORY[0x1E696AE18] predicateWithFormat:@"needsShareUpdate == YES OR needsShareDelete == YES"], a2, *(a1[5] + 8) + 40);
  if (!v8)
  {
    return *(*(a1[5] + 8) + 40);
  }

  result = [v8 integerValue];
  if (result >= 1)
  {
    goto LABEL_3;
  }

  return result;
}

- (BOOL)hasFinishedExportingCurrentData:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] currentPersistentHistoryTokenFromStores:0];
  v26 = 0;
  v20 = [(NSPersistentCloudKitContainer *)self mostRecentExportedHistoryToken:?];
  if (v20)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (!v6)
    {
      v13 = 1;
      goto LABEL_25;
    }

    v7 = *v23;
LABEL_4:
    v8 = 0;
    v9 = v20;
    while (1)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v22 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v10 mirroringDelegate])
        {
          v11 = [objc_msgSend(objc_msgSend(v9 "storeTokens")];
          v12 = v11;
          if (v11)
          {
            v13 = 0;
            if (v11 == -1 || v11 == 1)
            {
              goto LABEL_25;
            }

            LogStream = _PFLogGetLogStream(17);
            v9 = v20;
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v28 = v12;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: New comparison result? %ld\n", buf, 0xCu);
            }

            v15 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              *buf = 134217984;
              v28 = v12;
              _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: New comparison result? %ld", buf, 0xCu);
            }
          }

          v16 = [(NSPersistentCloudKitContainer *)self hasMetadataMarkedForExportInStore:v10 error:&v26];
          v17 = v26 ? 1 : v16;
          if (v17)
          {
            break;
          }
        }
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v29 count:16];
        v13 = 1;
        if (v6)
        {
          goto LABEL_4;
        }

        goto LABEL_25;
      }
    }
  }

  v13 = 0;
LABEL_25:

  if (a3 && v26)
  {
    *a3 = v26;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

@end