@interface NSCKMetadataEntry
+ (NSManagedObject)_insertMetadataEntryWithKey:(uint64_t)a3 forStore:(void *)a4 intoManagedObjectContext:;
+ (NSManagedObject)insertMetadataEntryWithKey:(uint64_t)a3 BOOLValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:;
+ (NSManagedObject)insertMetadataEntryWithKey:(uint64_t)a3 stringValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:;
+ (NSString)entityPath;
+ (uint64_t)_updateOrInsertMetadataEntryWithKey:(uint64_t)a3 valueSettingBlock:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:(void *)a6 error:;
+ (uint64_t)entryForKey:(uint64_t)a3 fromStore:(void *)a4 inManagedObjectContext:(uint64_t)a5 error:;
+ (uint64_t)updateOrInsertMetadataEntryWithKey:(char)a3 BOOLValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:(void *)a6 error:;
+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)a3 integerValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:(void *)a6 error:;
+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)a3 stringValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:(void *)a6 error:;
+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)a3 transformedValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:(void *)a6 error:;
+ (void)entriesForKeys:(uint64_t)a3 fromStore:(void *)a4 inManagedObjectContext:(uint64_t)a5 error:;
+ (void)entriesForKeys:(void *)a3 onlyFetchingProperties:(uint64_t)a4 fromStore:(void *)a5 inManagedObjectContext:(uint64_t)a6 error:;
- (BOOL)BOOLValue;
- (__CFString)describeValue;
@end

@implementation NSCKMetadataEntry

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

- (BOOL)BOOLValue
{
  v2 = [(NSCKMetadataEntry *)self BOOLValueNum];

  return [v2 BOOLValue];
}

- (__CFString)describeValue
{
  v17 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_12;
  }

  v1 = result;
  if ([(__CFString *)result stringValue])
  {
    v2 = *MEMORY[0x1E69E9840];

    return [(__CFString *)v1 stringValue];
  }

  if ([(__CFString *)v1 integerValue])
  {
    result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(-[__CFString integerValue](v1, "integerValue"), "integerValue")];
LABEL_12:
    v3 = *MEMORY[0x1E69E9840];
    return result;
  }

  if ([(__CFString *)v1 BOOLValueNum])
  {
    if ([(__CFString *)v1 BOOLValue])
    {
      result = @"YES";
    }

    else
    {
      result = @"NO";
    }

    goto LABEL_12;
  }

  if ([(__CFString *)v1 transformedValue])
  {
    v4 = [(__CFString *)v1 transformedValue];
  }

  else
  {
    if (![(__CFString *)v1 dateValue])
    {
      v6 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v8 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v9 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v9 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v9))
      {
        v10 = objc_opt_class();
        *buf = 136315650;
        v12 = "[NSCKMetadataEntry describeValue]";
        v13 = 1024;
        v14 = 48;
        v15 = 2112;
        v16 = NSStringFromClass(v10);
        _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@ doesn't know how to handle it's specified value. Please file a bug with this outpout and send to Core Data | New Bugs.", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v6);
      result = [(__CFString *)v1 description];
      goto LABEL_12;
    }

    v4 = [(__CFString *)v1 dateValue];
  }

  v5 = *MEMORY[0x1E69E9840];

  return [v4 description];
}

+ (uint64_t)entryForKey:(uint64_t)a3 fromStore:(void *)a4 inManagedObjectContext:(uint64_t)a5 error:
{
  v12[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v12[0] = a2;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  objc_opt_self();
  result = [+[NSCKMetadataEntry entriesForKeys:onlyFetchingProperties:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry v9];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)entriesForKeys:(uint64_t)a3 fromStore:(void *)a4 inManagedObjectContext:(uint64_t)a5 error:
{
  objc_opt_self();

  return [NSCKMetadataEntry entriesForKeys:a2 onlyFetchingProperties:0 fromStore:a3 inManagedObjectContext:a4 error:a5];
}

+ (void)entriesForKeys:(void *)a3 onlyFetchingProperties:(uint64_t)a4 fromStore:(void *)a5 inManagedObjectContext:(uint64_t)a6 error:
{
  v25[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v11 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMetadataEntry entityPath]);
  -[NSFetchRequest setPredicate:](v11, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"key IN (%@)", a2]);
  v25[0] = a4;
  -[NSFetchRequest setAffectedStores:](v11, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1]);
  if ([a3 count])
  {
    [(NSFetchRequest *)v11 setPropertiesToFetch:a3];
  }

  else
  {
    [(NSFetchRequest *)v11 setReturnsObjectsAsFaults:0];
  }

  v12 = [a5 executeFetchRequest:v11 error:a6];
  v13 = [MEMORY[0x1E695DF90] dictionary];
  if (v12)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v12);
          }

          [v13 setObject:*(*(&v20 + 1) + 8 * v17) forKey:{objc_msgSend(*(*(&v20 + 1) + 8 * v17), "key")}];
          ++v17;
        }

        while (v15 != v17);
        v15 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (NSManagedObject)insertMetadataEntryWithKey:(uint64_t)a3 stringValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:
{
  objc_opt_self();
  v9 = [NSCKMetadataEntry _insertMetadataEntryWithKey:a2 forStore:a4 intoManagedObjectContext:a5];
  [(NSManagedObject *)v9 setStringValue:a3];
  return v9;
}

+ (NSManagedObject)_insertMetadataEntryWithKey:(uint64_t)a3 forStore:(void *)a4 intoManagedObjectContext:
{
  objc_opt_self();
  v7 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKMetadataEntry entityPath], a4);
  [(NSManagedObject *)v7 setKey:a2];
  [a4 assignObject:v7 toPersistentStore:a3];
  return v7;
}

+ (NSManagedObject)insertMetadataEntryWithKey:(uint64_t)a3 BOOLValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:
{
  objc_opt_self();
  v9 = [NSCKMetadataEntry _insertMetadataEntryWithKey:a2 forStore:a4 intoManagedObjectContext:a5];
  [(NSManagedObject *)v9 setBoolValue:a3];
  return v9;
}

+ (uint64_t)updateOrInsertMetadataEntryWithKey:(char)a3 BOOLValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:(void *)a6 error:
{
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__NSCKMetadataEntry_updateOrInsertMetadataEntryWithKey_BOOLValue_forStore_intoManagedObjectContext_error___block_invoke;
  v12[3] = &__block_descriptor_33_e27_v16__0__NSCKMetadataEntry_8l;
  v13 = a3;
  return [NSCKMetadataEntry _updateOrInsertMetadataEntryWithKey:a2 valueSettingBlock:v12 forStore:a4 intoManagedObjectContext:a5 error:a6];
}

+ (uint64_t)_updateOrInsertMetadataEntryWithKey:(uint64_t)a3 valueSettingBlock:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:(void *)a6 error:
{
  v22 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v17 = 0;
  v11 = [NSCKMetadataEntry entryForKey:a2 fromStore:a4 inManagedObjectContext:a5 error:&v17];
  if (!v11)
  {
    v11 = [NSCKMetadataEntry _insertMetadataEntryWithKey:a2 forStore:a4 intoManagedObjectContext:a5];
    if (!v11)
    {
      if (v17)
      {
        if (a6)
        {
          v12 = 0;
          *a6 = v17;
          goto LABEL_4;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v19 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMetadataEntry.m";
          v20 = 1024;
          v21 = 237;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v16 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v19 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMetadataEntry.m";
          v20 = 1024;
          v21 = 237;
          _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v12 = 0;
      goto LABEL_4;
    }
  }

  v12 = v11;
  (*(a3 + 16))(a3, v11);
LABEL_4:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)a3 stringValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:(void *)a6 error:
{
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __108__NSCKMetadataEntry_updateOrInsertMetadataEntryWithKey_stringValue_forStore_intoManagedObjectContext_error___block_invoke;
  v12[3] = &unk_1E6EC4300;
  v12[4] = a3;
  return [NSCKMetadataEntry _updateOrInsertMetadataEntryWithKey:a2 valueSettingBlock:v12 forStore:a4 intoManagedObjectContext:a5 error:a6];
}

+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)a3 transformedValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:(void *)a6 error:
{
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __113__NSCKMetadataEntry_updateOrInsertMetadataEntryWithKey_transformedValue_forStore_intoManagedObjectContext_error___block_invoke;
  v12[3] = &unk_1E6EC4300;
  v12[4] = a3;
  return [NSCKMetadataEntry _updateOrInsertMetadataEntryWithKey:a2 valueSettingBlock:v12 forStore:a4 intoManagedObjectContext:a5 error:a6];
}

+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)a3 integerValue:(uint64_t)a4 forStore:(void *)a5 intoManagedObjectContext:(void *)a6 error:
{
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __109__NSCKMetadataEntry_updateOrInsertMetadataEntryWithKey_integerValue_forStore_intoManagedObjectContext_error___block_invoke;
  v12[3] = &unk_1E6EC4300;
  v12[4] = a3;
  return [NSCKMetadataEntry _updateOrInsertMetadataEntryWithKey:a2 valueSettingBlock:v12 forStore:a4 intoManagedObjectContext:a5 error:a6];
}

@end