@interface NSCKEvent
+ (NSString)entityPath;
+ (uint64_t)beginEventForRequest:(uint64_t)a3 withMonitor:(void *)a4 error:;
+ (uint64_t)finishEventForResult:(uint64_t)a3 withMonitor:(void *)a4 error:;
@end

@implementation NSCKEvent

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

+ (uint64_t)beginEventForRequest:(uint64_t)a3 withMonitor:(void *)a4 error:
{
  v30 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__12;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__NSCKEvent_beginEventForRequest_withMonitor_error___block_invoke;
  v13[3] = &unk_1E6EC1A00;
  v13[4] = a3;
  v13[5] = a2;
  v13[6] = &v20;
  v13[7] = &v14;
  [(PFCloudKitStoreMonitor *)a3 performBlock:v13];
  if (!v21[5])
  {
    v10 = v15[5];
    if (v10)
    {
      if (a4)
      {
        *a4 = v10;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKEvent.m";
        v28 = 1024;
        v29 = 92;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v12 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKEvent.m";
        v28 = 1024;
        v29 = 92;
        _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v15[5] = 0;
  v7 = v21[5];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void __52__NSCKEvent_beginEventForRequest_withMonitor_error___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.event"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__NSCKEvent_beginEventForRequest_withMonitor_error___block_invoke_2;
    v8[3] = &unk_1E6EC1900;
    v4 = *(a1 + 40);
    v8[4] = v3;
    v8[5] = v4;
    v8[6] = v2;
    v9 = *(a1 + 48);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v10 = *MEMORY[0x1E696A588];
    v11[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(*(a1 + 40), "requestIdentifier")];
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

NSPersistentCloudKitContainerEvent *__52__NSCKEvent_beginEventForRequest_withMonitor_error___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKEvent entityPath], *(a1 + 32));
  -[NSManagedObject setEventIdentifier:](v2, "setEventIdentifier:", [*(a1 + 40) requestIdentifier]);
  v3 = *(a1 + 40);
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    v4 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Cannot create persistent event for request: %@\n", buf, 0xCu);
      }

      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Cannot create persistent event for request: %@", buf, 0xCu);
      }

      goto LABEL_2;
    }

    v4 = 2;
  }

LABEL_7:
  [(NSManagedObject *)v2 setCloudKitEventType:v4];
  -[NSManagedObject setStartedAt:](v2, "setStartedAt:", [MEMORY[0x1E695DF00] date]);
  [*(a1 + 32) assignObject:v2 toPersistentStore:*(a1 + 48)];
  if ([*(a1 + 32) save:&v10])
  {
    result = [[NSPersistentCloudKitContainerEvent alloc] initWithCKEvent:v2];
    v6 = 56;
  }

  else
  {
    result = v10;
    v6 = 64;
  }

  *(*(*(a1 + v6) + 8) + 40) = result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)finishEventForResult:(uint64_t)a3 withMonitor:(void *)a4 error:
{
  v30 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__12;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__NSCKEvent_finishEventForResult_withMonitor_error___block_invoke;
  v13[3] = &unk_1E6EC1A00;
  v13[4] = a3;
  v13[5] = a2;
  v13[6] = &v20;
  v13[7] = &v14;
  [(PFCloudKitStoreMonitor *)a3 performBlock:v13];
  if (!v21[5])
  {
    v10 = v15[5];
    if (v10)
    {
      if (a4)
      {
        *a4 = v10;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKEvent.m";
        v28 = 1024;
        v29 = 149;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v12 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKEvent.m";
        v28 = 1024;
        v29 = 149;
        _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v15[5] = 0;
  v7 = v21[5];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void __52__NSCKEvent_finishEventForResult_withMonitor_error___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.event"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__NSCKEvent_finishEventForResult_withMonitor_error___block_invoke_2;
    v7[3] = &unk_1E6EC1900;
    v7[4] = *(a1 + 40);
    v7[5] = v2;
    v7[6] = v3;
    v8 = *(a1 + 48);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v5 = *MEMORY[0x1E696A250];
    v9 = *MEMORY[0x1E696A588];
    v10[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' was cancelled because the store was removed from the coordinator.", objc_msgSend(objc_msgSend(*(a1 + 40), "request"), "requestIdentifier")];
    *(*(*(a1 + 56) + 8) + 40) = [v4 initWithDomain:v5 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __52__NSCKEvent_finishEventForResult_withMonitor_error___block_invoke_2(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v2 = [objc_msgSend(*(a1 + 32) "request")];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  objc_opt_self();
  v5 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKEvent entityPath]);
  -[NSFetchRequest setPredicate:](v5, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"eventIdentifier = %@", v2]);
  v25[0] = v4;
  -[NSFetchRequest setAffectedStores:](v5, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1]);
  v6 = [v3 executeFetchRequest:v5 error:v20];
  v7 = v6;
  if (v6)
  {
    if ([v6 count] >= 2)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found multiple NSPersistentCloudKitContainerEvents for the identifier '%@'\n", buf, 0xCu);
      }

      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v22 = v2;
        _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Found multiple NSPersistentCloudKitContainerEvents for the identifier '%@'", buf, 0xCu);
      }
    }

    v10 = [v7 lastObject];
    if (v10)
    {
      [v10 setEndedAt:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
      [v10 setSucceeded:{objc_msgSend(*(a1 + 32), "success")}];
      [v10 setErrorDomain:{objc_msgSend(objc_msgSend(*(a1 + 32), "error"), "domain")}];
      [v10 setErrorCode:{objc_msgSend(objc_msgSend(*(a1 + 32), "error"), "code")}];
      if ([*(a1 + 48) save:v20])
      {
        v11 = [[NSPersistentCloudKitContainerEvent alloc] initWithCKEvent:v10];
        v12 = *(a1 + 56);
LABEL_16:
        *(*(v12 + 8) + 40) = v11;
        goto LABEL_17;
      }

LABEL_15:
      v11 = v20[0];
      v12 = *(a1 + 64);
      goto LABEL_16;
    }
  }

  if (v20[0])
  {
    goto LABEL_15;
  }

  v13 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_msgSend(*(a1 + 32) "request")];
    v19 = *(a1 + 32);
    *buf = 138412546;
    v22 = v18;
    v23 = 2112;
    v24 = v19;
    _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: fault: No event was found for the identifier '%@' in this result: %@\n", buf, 0x16u);
  }

  v14 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v15 = [objc_msgSend(*(a1 + 32) "request")];
    v16 = *(a1 + 32);
    *buf = 138412546;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: No event was found for the identifier '%@' in this result: %@", buf, 0x16u);
  }

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
}

@end