@interface NSCKImportOperation
+ (BOOL)purgeFinishedImportOperationsInStore:(void *)store withManagedObjectContext:(uint64_t)context error:;
+ (uint64_t)entityPath;
+ (uint64_t)fetchUnfinishedImportOperationsInStore:(void *)store withManagedObjectContext:(uint64_t)context error:;
+ (void)fetchOperationWithIdentifier:(uint64_t)identifier fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:;
@end

@implementation NSCKImportOperation

+ (uint64_t)fetchUnfinishedImportOperationsInStore:(void *)store withManagedObjectContext:(uint64_t)context error:
{
  v10[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKImportOperation entityPath]);
  v10[0] = a2;
  -[NSFetchRequest setAffectedStores:](v7, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1]);
  result = [store executeFetchRequest:v7 error:context];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)entityPath
{
  objc_opt_self();
  v0 = MEMORY[0x1E696AEC0];
  v1 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v2 = objc_opt_class();
  return [v0 stringWithFormat:@"%@/%@", v1, NSStringFromClass(v2)];
}

+ (void)fetchOperationWithIdentifier:(uint64_t)identifier fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:
{
  v19[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKImportOperation entityPath]);
  v19[0] = identifier;
  -[NSFetchRequest setAffectedStores:](v9, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1]);
  -[NSFetchRequest setPredicate:](v9, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"operationUUID == %@", a2]);
  result = [store executeFetchRequest:v9 error:context];
  if (result)
  {
    v11 = result;
    if ([result count] < 2)
    {
      result = [v11 lastObject];
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = a2;
        v17 = 2112;
        v18 = v11;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Duplicate operations for identifier: %@\n%@\n", buf, 0x16u);
      }

      v13 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v16 = a2;
        v17 = 2112;
        v18 = v11;
        _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Duplicate operations for identifier: %@\n%@", buf, 0x16u);
      }

      result = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)purgeFinishedImportOperationsInStore:(void *)store withManagedObjectContext:(uint64_t)context error:
{
  v22[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKImportOperation entityPath]);
  v22[0] = a2;
  -[NSFetchRequest setAffectedStores:](v7, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1]);
  v8 = [store executeFetchRequest:v7 error:context];
  v9 = v8;
  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (![objc_msgSend(v14 "pendingRelationships")])
          {
            [store deleteObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  result = v9 != 0;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

@end