@interface NSCKRecordZoneMoveReceipt
+ (NSString)entityPath;
+ (id)countMoveReceiptsInStore:(id)store matchingPredicate:(id)predicate withManagedObjectContext:(id)context error:(id *)error;
+ (id)moveReceiptsMatchingRecordIDs:(id)ds inManagedObjectContext:(id)context persistentStore:(id)store error:(id *)error;
+ (uint64_t)_fetchReceiptsMatchingSubPredicates:(void *)predicates inManagedObjectContext:(uint64_t)context persistentStore:(uint64_t)store error:;
- (id)createRecordIDForMovedRecord;
@end

@implementation NSCKRecordZoneMoveReceipt

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

- (id)createRecordIDForMovedRecord
{
  v3 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:-[NSCKRecordZoneMoveReceipt zoneName](self ownerName:{"zoneName"), -[NSCKRecordZoneMoveReceipt ownerName](self, "ownerName")}];
  v4 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:-[NSCKRecordZoneMoveReceipt recordName](self zoneID:{"recordName"), v3}];

  return v4;
}

+ (id)moveReceiptsMatchingRecordIDs:(id)ds inManagedObjectContext:(id)context persistentStore:(id)store error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__20;
  v22 = __Block_byref_object_dispose__20;
  v23 = 0;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([ds count])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __104__NSCKRecordZoneMoveReceipt_moveReceiptsMatchingRecordIDs_inManagedObjectContext_persistentStore_error___block_invoke;
    v17[3] = &unk_1E6EC30D0;
    v17[4] = ds;
    v17[5] = context;
    v17[6] = store;
    v17[7] = v10;
    v17[8] = &v18;
    v17[9] = &v24;
    [context performBlockAndWait:v17];
  }

  v11 = v10;
  if ((v25[3] & 1) == 0)
  {
    v12 = v19[5];
    if (v12)
    {
      if (error)
      {
        v10 = 0;
        *error = v12;
        goto LABEL_12;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordZoneMoveReceipt.m";
        v30 = 1024;
        v31 = 88;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordZoneMoveReceipt.m";
        v30 = 1024;
        v31 = 88;
        _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v10 = 0;
  }

LABEL_12:

  v19[5] = 0;
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

void __104__NSCKRecordZoneMoveReceipt_moveReceiptsMatchingRecordIDs_inManagedObjectContext_persistentStore_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        [v2 addObject:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"recordName = %@ AND zoneName = %@ AND ownerName = %@", objc_msgSend(v7, "recordName"), objc_msgSend(objc_msgSend(v7, "zoneID"), "zoneName"), objc_msgSend(objc_msgSend(v7, "zoneID"), "ownerName"))}];
        if ([v2 count] >= 0x64)
        {
          v9 = [NSCKRecordZoneMoveReceipt _fetchReceiptsMatchingSubPredicates:v2 inManagedObjectContext:*(a1 + 40) persistentStore:*(a1 + 48) error:*(*(a1 + 64) + 8) + 40];
          if (!v9)
          {
            *(*(*(a1 + 72) + 8) + 24) = 0;
            v10 = *(*(*(a1 + 64) + 8) + 40);
            objc_autoreleasePoolPop(v8);
            goto LABEL_13;
          }

          [*(a1 + 56) addObjectsFromArray:v9];
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  if (*(*(*(a1 + 72) + 8) + 24) == 1 && [v2 count])
  {
    v11 = [NSCKRecordZoneMoveReceipt _fetchReceiptsMatchingSubPredicates:v2 inManagedObjectContext:*(a1 + 40) persistentStore:*(a1 + 48) error:*(*(a1 + 64) + 8) + 40];
    if (v11)
    {
      [*(a1 + 56) addObjectsFromArray:v11];
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v12 = *(*(*(a1 + 64) + 8) + 40);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)_fetchReceiptsMatchingSubPredicates:(void *)predicates inManagedObjectContext:(uint64_t)context persistentStore:(uint64_t)store error:
{
  v12[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMoveReceipt entityPath]);
  v12[0] = context;
  -[NSFetchRequest setAffectedStores:](v9, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1]);
  -[NSFetchRequest setPredicate:](v9, "setPredicate:", [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:a2]);
  result = [predicates executeFetchRequest:v9 error:store];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)countMoveReceiptsInStore:(id)store matchingPredicate:(id)predicate withManagedObjectContext:(id)context error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  v10 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMoveReceipt entityPath]);
  v14[0] = store;
  -[NSFetchRequest setAffectedStores:](v10, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1]);
  [(NSFetchRequest *)v10 setPredicate:predicate];
  [(NSFetchRequest *)v10 setResultType:4];
  if (!context)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v11 = [(NSManagedObjectContext *)context _countForFetchRequest_:v10 error:error];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    result = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    goto LABEL_6;
  }

  result = 0;
LABEL_6:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

@end