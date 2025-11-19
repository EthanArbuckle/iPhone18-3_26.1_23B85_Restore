@interface _NSXPCStoreUtilities
+ (_PFArray)_decodeResultSetData:(NSFetchRequest *)a3 forFetchRequest:(uint64_t)a4 options:(NSPersistentStore *)a5 store:(void *)a6 context:(void *)a7 rowCacheRows:(void *)a8 error:;
+ (_PFResultArray)_decodeBufferResultSetData:(void *)a3 forFetchRequest:(uint64_t)a4 options:(uint64_t)a5 store:(uint64_t)a6 context:(uint64_t)a7 rowCacheRows:(uint64_t *)a8 error:;
+ (id)newSecureArchivedDataWithRootObject:(uint64_t)a1;
+ (uint64_t)classesForErrorArchive;
+ (uint64_t)classesForFetchArchive;
+ (uint64_t)classesForSaveArchive;
+ (uint64_t)decodeSecureArchivedData:(uint64_t)a3 usingDelegate:(uint64_t)a4 classes:;
+ (uint64_t)newUserInfoFromException:(uint64_t)a1;
+ (void)logMessage:(uint64_t)a1 forComponent:(uint64_t)a2;
@end

@implementation _NSXPCStoreUtilities

+ (uint64_t)classesForFetchArchive
{
  objc_opt_self();
  if (!classesForFetchArchive_archiveClasses)
  {
    v0 = objc_alloc(MEMORY[0x1E695DFA8]);
    v1 = objc_opt_class();
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
    v11 = NSClassFromString(@"_NSPredicateUtilities");
    [v10 unionSet:{-[objc_class _compoundPredicateClassesForSecureCoding](NSClassFromString(@"_NSPredicateUtilities"), "_compoundPredicateClassesForSecureCoding")}];
    [v10 unionSet:{-[objc_class _extendedExpressionClassesForSecureCoding](v11, "_extendedExpressionClassesForSecureCoding")}];
    [v10 unionSet:{-[objc_class _operatorClassesForSecureCoding](v11, "_operatorClassesForSecureCoding")}];
    [v10 unionSet:{-[objc_class _constantValueClassesForSecureCoding](v11, "_constantValueClassesForSecureCoding")}];
    [v10 addObject:NSClassFromString(@"NSBoundedByPredicateOperator")];
    [v10 addObjectsFromArray:{+[NSKnownKeysDictionary classesForArchiving](NSKnownKeysDictionary, "classesForArchiving")}];
    v12 = NSClassFromString(@"_NSXPCStoreObjectIDArrayConstantValueExpression");
    if (v12)
    {
      [v10 addObject:v12];
    }

    v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v10];

    v14 = 0;
    atomic_compare_exchange_strong(&classesForFetchArchive_archiveClasses, &v14, v13);
    if (v14)
    {
    }
  }

  return classesForFetchArchive_archiveClasses;
}

+ (uint64_t)classesForSaveArchive
{
  objc_opt_self();
  if (!classesForSaveArchive_archiveClasses)
  {
    v21 = objc_alloc(MEMORY[0x1E695DFA8]);
    v20 = objc_opt_class();
    v19 = objc_opt_class();
    v18 = objc_opt_class();
    v17 = objc_opt_class();
    v16 = objc_opt_class();
    v15 = objc_opt_class();
    v14 = objc_opt_class();
    v0 = objc_opt_class();
    v1 = objc_opt_class();
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v21 initWithObjects:{v20, v19, v18, v17, v16, v15, v14, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
    [v10 addObjectsFromArray:{+[NSKnownKeysDictionary classesForArchiving](NSKnownKeysDictionary, "classesForArchiving")}];
    [v10 unionSet:{-[objc_class _constantValueClassesForSecureCoding](NSClassFromString(@"_NSPredicateUtilities"), "_constantValueClassesForSecureCoding")}];
    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v10];

    v12 = 0;
    atomic_compare_exchange_strong(&classesForSaveArchive_archiveClasses, &v12, v11);
    if (v12)
    {
    }
  }

  return classesForSaveArchive_archiveClasses;
}

+ (id)newSecureArchivedDataWithRootObject:(uint64_t)a1
{
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 setDelegate:objc_opt_class()];
  [v3 encodeObject:a2 forKey:@"root"];
  [v3 finishEncoding];
  v4 = [v3 encodedData];

  return v4;
}

+ (void)logMessage:(uint64_t)a1 forComponent:(uint64_t)a2
{
  objc_opt_self();
  if (a2)
  {
    NSLog(@"%@", [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData: XPC: %@", a2]);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Someone tried to log something but failed because they didn't tell me what to log.\n", buf, 2u);
        }
      }

      else
      {
        v5 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Someone tried to log something but failed because they didn't tell me what to log.\n", v7, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v6 = 1;
    }

    else
    {
      v6 = 8;
    }

    _NSCoreDataLog_console(v6, "Someone tried to log something but failed because they didn't tell me what to log.");
    objc_autoreleasePoolPop(v3);
  }
}

+ (uint64_t)classesForErrorArchive
{
  objc_opt_self();
  if (!classesForErrorArchive_archiveClasses)
  {
    v0 = objc_alloc(MEMORY[0x1E695DFA8]);
    v1 = objc_opt_class();
    v2 = objc_opt_class();
    v3 = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];
    [v3 unionSet:+[_NSXPCStoreUtilities classesForSaveArchive]()];
    [v3 unionSet:+[_NSXPCStoreUtilities classesForFetchArchive]()];
    v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v3];

    v5 = 0;
    atomic_compare_exchange_strong(&classesForErrorArchive_archiveClasses, &v5, v4);
    if (v5)
    {
    }
  }

  return classesForErrorArchive_archiveClasses;
}

+ (uint64_t)decodeSecureArchivedData:(uint64_t)a3 usingDelegate:(uint64_t)a4 classes:
{
  objc_opt_self();
  v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a2 error:0];
  [v7 setDelegate:a3];
  v8 = [v7 decodeObjectOfClasses:a4 forKey:@"root"];

  return v8;
}

+ (uint64_t)newUserInfoFromException:(uint64_t)a1
{
  v29 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setValue:objc_msgSend(a2 forKey:{"name"), @"exception name"}];
  [v3 setValue:objc_msgSend(a2 forKey:{"reason"), @"exception reason"}];
  if ([objc_msgSend(a2 "userInfo")])
  {
    [v3 setObject:objc_msgSend(objc_msgSend(a2 forKey:{"userInfo"), "valueForKey:", @"NSSQLiteErrorDomain", @"NSSQLiteErrorDomain"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setValue:MEMORY[0x1E695E118] forKey:@"controlled exception"];
  }

  v4 = objc_autoreleasePoolPush();
  _pflogInitialize(8);
  if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error: Exception raised: %@\n", buf, 0xCu);
      }
    }

    else
    {
      v6 = _PFLogGetLogStream(8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = a2;
        _os_log_impl(&dword_18565F000, v6, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Error: Exception raised: %@\n", buf, 0xCu);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v7 = 1;
  }

  else
  {
    v7 = 8;
  }

  _NSCoreDataLog_console(v7, "Error: Exception raised: %@", a2);
  objc_autoreleasePoolPop(v4);
  v8 = objc_autoreleasePoolPush();
  _pflogInitialize(8);
  if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v9 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [a2 callStackSymbols];
        *buf = 138412290;
        v28 = v10;
        _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: error: Error: Callstack: %@\n", buf, 0xCu);
      }
    }

    else
    {
      v11 = _PFLogGetLogStream(8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [a2 callStackSymbols];
        *buf = 138412290;
        v28 = v12;
        _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Error: Callstack: %@\n", buf, 0xCu);
      }
    }
  }

  v13 = _pflogging_catastrophic_mode;
  v14 = [a2 callStackSymbols];
  v15 = 8;
  if (v13)
  {
    v15 = 1;
  }

  _NSCoreDataLog_console(v15, "Error: Callstack: %@", v14);
  objc_autoreleasePoolPop(v8);
  v16 = objc_autoreleasePoolPush();
  _pflogInitialize(8);
  if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v17 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [a2 userInfo];
        *buf = 138412290;
        v28 = v18;
        _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: error: Error: UserInfo: %@\n", buf, 0xCu);
      }
    }

    else
    {
      v19 = _PFLogGetLogStream(8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [a2 userInfo];
        *buf = 138412290;
        v28 = v20;
        _os_log_impl(&dword_18565F000, v19, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Error: UserInfo: %@\n", buf, 0xCu);
      }
    }
  }

  v21 = _pflogging_catastrophic_mode;
  v22 = [a2 userInfo];
  v23 = 8;
  if (v21)
  {
    v23 = 1;
  }

  _NSCoreDataLog_console(v23, "Error: UserInfo: %@", v22);
  objc_autoreleasePoolPop(v16);
  v24 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v3, @"exception info", 0}];

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (_PFResultArray)_decodeBufferResultSetData:(void *)a3 forFetchRequest:(uint64_t)a4 options:(uint64_t)a5 store:(uint64_t)a6 context:(uint64_t)a7 rowCacheRows:(uint64_t *)a8 error:
{
  v58 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v12 = [a2 bytes];
  v13 = [a2 length];
  if (v13 <= 7)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"CoreData: XPC: Suspect response from server (bad size)", @"Reason"}];
    if (!v14)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v55 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
        v56 = 1024;
        v57 = 1292;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v16 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_52;
      }

      *buf = 136315394;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
      v56 = 1024;
      v57 = 1292;
      goto LABEL_51;
    }

LABEL_16:
    if (a8)
    {
      v18 = 0;
      *a8 = v14;
LABEL_53:
      v46 = *MEMORY[0x1E69E9840];
      return v18;
    }

LABEL_52:
    v18 = 0;
    goto LABEL_53;
  }

  if (v13 <= 0)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"CoreData: XPC: Suspect response from server (no result)", @"Reason"}];
    if (v14)
    {
      goto LABEL_16;
    }

    v45 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
      v56 = 1024;
      v57 = 1308;
      _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v16 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_52;
    }

    *buf = 136315394;
    v55 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
    v56 = 1024;
    v57 = 1308;
LABEL_51:
    _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_52;
  }

  if (*v12 == 1)
  {
    if (v13 <= 0x13)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"CoreData: XPC: Suspect response from server (missing size)", @"Reason"}];
      if (v14)
      {
        goto LABEL_16;
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v55 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
        v56 = 1024;
        v57 = 1321;
        _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v16 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_52;
      }

      *buf = 136315394;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
      v56 = 1024;
      v57 = 1321;
      goto LABEL_51;
    }

    v19 = *(v12 + 16);
    if (v19)
    {
      v20 = *(v12 + 24);
      v21 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v21 = malloc_default_zone();
      }

      v22 = malloc_type_zone_malloc(v21, v20, 0x11BB7B26uLL);
      memcpy(v22, (v12 + 32), v20);
      v23 = objc_opt_class();
      object_setClass(v22 + 8, v23);
      v24 = bufferResultSetAllocateWithBuffer(v20, v22);
      *(v24 + 10) |= 2u;
      v25 = [a3 propertiesToFetch];
      if (![v25 count])
      {
        v26 = [a3 entity];
        v27 = v26 ? [objc_msgSend(v26 "propertiesByName")] : 0;
        v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v27, "count")}];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v50;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v50 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v49 + 1) + 8 * i);
              v33 = [a3 entity];
              if (v33)
              {
                v34 = [objc_msgSend(v33 "propertiesByName")];
                if (v34)
                {
                  v35 = v34;
                  if (([v34 isTransient] & 1) == 0 && (objc_msgSend(v35, "_isRelationship") & 1) == 0)
                  {
                    [v25 addObject:v35];
                  }
                }
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v49 objects:v53 count:16];
          }

          while (v29);
        }
      }

      v36 = -[NSKnownKeysMappingStrategy initForKeys:]([NSKnownKeysMappingStrategy alloc], "initForKeys:", [v25 valueForKey:@"name"]);
      v37 = [v25 count];
      v38 = v37;
      if (v37 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v37;
      }

      if (v37 >= 0x201)
      {
        v40 = 1;
      }

      else
      {
        v40 = v39;
      }

      v41 = &v49 - ((8 * v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v37 > 0x200)
      {
        v41 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v49 - ((8 * v40 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v39);
      }

      if ([v25 count])
      {
        v47 = 0;
        do
        {
          *&v41[8 * v47] = [v25 objectAtIndexedSubscript:v47];
          ++v47;
        }

        while ([v25 count] > v47);
      }

      v48 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v36];
      [(NSKnownKeysDictionary *)v48 setValues:v41];
      if (v38 >= 0x201)
      {
        NSZoneFree(0, v41);
      }

      v18 = [[_PFResultArray alloc] initWithObjects:v24 count:v19 store:a5 metadata:v48];

      goto LABEL_53;
    }
  }

  v42 = NSArray_EmptyArray;
  v43 = *MEMORY[0x1E69E9840];

  return v42;
}

+ (_PFArray)_decodeResultSetData:(NSFetchRequest *)a3 forFetchRequest:(uint64_t)a4 options:(NSPersistentStore *)a5 store:(void *)a6 context:(void *)a7 rowCacheRows:(void *)a8 error:
{
  v333[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v15 = [a2 bytes];
  v16 = [a2 length];
  if (v16 <= 7)
  {
    if (!a8)
    {
      goto LABEL_400;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v19 = MEMORY[0x1E695DF20];
    v20 = @"CoreData: XPC: Suspect response from server (bad size)";
LABEL_11:
    v22 = [v19 dictionaryWithObject:v20 forKey:@"Reason"];
    v23 = v17;
    v24 = v18;
LABEL_12:
    v25 = 0;
    *a8 = [v23 errorWithDomain:v24 code:134060 userInfo:v22];
    goto LABEL_401;
  }

  v21 = v16;
  if (v16 <= 0)
  {
    if (!a8)
    {
      goto LABEL_400;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v19 = MEMORY[0x1E695DF20];
    v20 = @"CoreData: XPC: Suspect response from server (no result)";
    goto LABEL_11;
  }

  if (*v15 != 1)
  {
    goto LABEL_17;
  }

  if (v16 <= 0x13)
  {
    if (!a8)
    {
      goto LABEL_400;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v19 = MEMORY[0x1E695DF20];
    v20 = @"CoreData: XPC: Suspect response from server (missing size)";
    goto LABEL_11;
  }

  if (!*(v15 + 16))
  {
LABEL_17:
    v26 = NSArray_EmptyArray;
    v27 = *MEMORY[0x1E69E9840];

    return v26;
  }

  if ((v16 - 16) <= 0x6F)
  {
    if (!a8)
    {
      goto LABEL_400;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v19 = MEMORY[0x1E695DF20];
    v20 = @"CoreData: XPC: Suspect response from server (not enough room for fetch results header)";
    goto LABEL_11;
  }

  *(v15 + 40) = *(v15 + 40);
  *(v15 + 96) = v15 + 128;
  v29 = *(v15 + 52);
  if (v16 - 128 < 8 * ((v29 + 1) + v29))
  {
    if (!a8)
    {
      goto LABEL_400;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v19 = MEMORY[0x1E695DF20];
    v20 = @"CoreData: XPC: Suspect response from server (not enough room for buffers and sizes)";
    goto LABEL_11;
  }

  v30 = v15 + 128 + 8 * v29 + 8;
  *(v15 + 104) = v30;
  if (v29)
  {
    v31 = 0;
    v32 = 8 * v29;
    v33 = v30 + v32;
    do
    {
      *(*(v15 + 96) + v31) = v15 + *(v33 + v31);
      v31 += 8;
    }

    while (v32 != v31);
    v34 = **(v15 + 96);
    *(v15 + 112) = v34;
    *(v15 + 120) = v34;
  }

  v297 = a4;
  v287 = a7;
  *(v15 + 80) |= 2u;
  if (*(v15 + 36) >> 30)
  {
    v35 = 0;
  }

  else
  {
    v35 = *(v15 + 36);
  }

  v36 = PF_ALLOCATE_OBJECT_ARRAY(v35);
  if (v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  v303 = v37;
  v292 = a6;
  Initialize = fetchPlanAllocateInitialize(a3, a5, a6);
  if ([(NSFetchRequest *)a3 resultType]== 2 || ![(NSFetchRequest *)a3 resultType]&& [(NSArray *)[(NSFetchRequest *)a3 propertiesToFetch] count])
  {
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = a5;
    if (v39 != v40)
    {
      v41 = [(NSPersistentStore *)a5 sqlCore];
    }

    v42 = v41;
    if (!v42)
    {
      if (!a8)
      {
        goto LABEL_400;
      }

      v328[0] = @"Reason";
      v328[1] = @"FetchRequest";
      v329[0] = @"CoreData: XPC: Store is missing core";
      if (a3)
      {
        v77 = [(NSFetchRequest *)a3 description];
      }

      else
      {
        v77 = @"no fetch request";
      }

      v329[1] = v77;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v329 forKeys:v328 count:2];
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A250];
      goto LABEL_12;
    }

    v43 = v42;
    v302 = v36;
    v44 = [(NSFetchRequest *)a3 copy];
    [v44 setPredicate:0];
    v45 = [(NSSQLiteAdapter *)[(NSPersistentStore *)v43 adapter] newSelectStatementWithFetchRequest:v44 ignoreInheritance:0];
    if (v45)
    {
      v46 = v45;
      v47 = *(v45 + 48);
      if (v47)
      {
        Initialize->statement_entity = v47;
        *&Initialize->flags &= ~1u;
        v315 = v47;
        plan_for_entity = _sql_read_only_fetch_plan_for_entity(v47);
        statement_entity = Initialize->statement_entity;
        v289 = v46;
        if (statement_entity)
        {
          propertyMapping = statement_entity->_propertyMapping;
        }

        else
        {
          propertyMapping = 0;
        }

        v50 = Initialize;
        v312 = plan_for_entity;

        v310 = 0;
        goto LABEL_44;
      }

      if (a8)
      {
        v330[0] = @"Reason";
        v330[1] = @"FetchRequest";
        v331[0] = @"CoreData: XPC: Suspect statement generated - entity missing";
        if (v44)
        {
          v103 = [v44 description];
        }

        else
        {
          v103 = @"no fetch request";
        }

        v331[1] = v103;
        v242 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v331 forKeys:v330 count:2];
        *a8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v242];
      }

      if (Initialize)
      {
      }
    }

    else
    {
      if (a8)
      {
        v332[0] = @"Reason";
        v332[1] = @"FetchRequest";
        v333[0] = @"CoreData: XPC: Suspect fetch request failed to generate statement";
        if (v44)
        {
          v78 = [v44 description];
        }

        else
        {
          v78 = @"no fetch request";
        }

        v333[1] = v78;
        v226 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v333 forKeys:v332 count:2];
        *a8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v226];
      }

      if (Initialize)
      {
      }
    }

    goto LABEL_400;
  }

  v50 = Initialize;
  v302 = v36;
  v43 = 0;
  propertyMapping = 0;
  v312 = 0;
  v289 = 0;
  v315 = 0;
  v310 = 1;
LABEL_44:
  v51 = [(NSPersistentStore *)a5 model];
  if (v51)
  {
    v52 = v51;
    v53 = *(v51 + 60);
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v316 = v43;
  p_isa = &v50->super.isa;
  v54 = [(NSSQLEntity *)v315 model];
  if (v54)
  {
    v55 = *(v54 + 60);
  }

  else
  {
    v55 = 0;
  }

  v56 = v52;
  if (v53 == v55)
  {
LABEL_49:
    v290 = v56;
    defaultFaultHandler = 0;
    v294 = *(p_isa + 18);
    v58 = (v294 >> 2) & 7;
    v59 = **(v15 + 96);
    v278 = v58;
    if (a5)
    {
      v60 = v297;
      v61 = v312;
      if (v58 == 3)
      {
        defaultFaultHandler = a5->_defaultFaultHandler;
      }
    }

    else
    {
      v60 = v297;
      v61 = v312;
    }

    v274 = defaultFaultHandler;
    v79 = [p_isa[1] _disablePersistentStoreResultCaching];
    v273 = v79;
    v80 = (v60 & 1) != 0 || (p_isa[9] & 1) == 0;
    v283 = &v256;
    if ((v294 & 2) != 0)
    {
      v81 = 0;
    }

    else
    {
      v81 = v310;
    }

    v291 = v81;
    v82 = v310 & v80;
    MEMORY[0x1EEE9AC00](v79);
    v284 = v85;
    if (v85 > 0x200)
    {
      v86 = NSAllocateScannedUncollectable();
      v295 = v86;
    }

    else
    {
      v295 = &v256 - v84;
      bzero(&v256 - v84, 8 * v83);
    }

    MEMORY[0x1EEE9AC00](v86);
    v89 = 8 * v87;
    v285 = v90;
    if (v90 > 0x200)
    {
      v288 = NSAllocateScannedUncollectable();
      v282 = NSAllocateScannedUncollectable();
    }

    else
    {
      v288 = &v256 - v88;
      bzero(&v256 - v88, 8 * v87);
      MEMORY[0x1EEE9AC00](v91);
      v282 = &v256 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v282, v89);
    }

    v301 = v15 + v21;
    v92 = v82 & (v295 == 0);
    v93 = v290;
    if ((v92 & 1) != 0 || v291 && (!v288 || !v282))
    {
      PF_FREE_OBJECT_ARRAY(v302);
      v302 = 0;
      v303 = 0;
    }

    if (v301 - v59 <= 31)
    {
      v94 = v284;
      v95 = v316;
      v96 = v285;
      if (a8)
      {
        *a8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"CoreData: XPC: Suspect response from server (not enough room for first row)", @"Reason"}];
      }

LABEL_437:
      if (v96 >= 0x201)
      {
        NSZoneFree(0, v288);
        NSZoneFree(0, v282);
      }

      if (v94 >= 0x201)
      {
        NSZoneFree(0, v295);
      }

      PF_FREE_OBJECT_ARRAY(v302);

      if (p_isa)
      {
      }

      v25 = 0;
      goto LABEL_401;
    }

    if (v310)
    {
      v272 = [(NSPersistentStore *)a5 objectIDFactoryForSQLEntity:p_isa[5]];
    }

    else
    {
      v272 = 0;
    }

    v263 = sel_setForeignEntityKeySlot_entityKey_;
    v262 = [NSSQLRow instanceMethodForSelector:?];
    v261 = sel_setForeignOrderKeySlot_orderKey_;
    v260 = [NSSQLRow instanceMethodForSelector:?];
    v267 = sel_setForeignKeySlot_int64_;
    v266 = [NSSQLRow instanceMethodForSelector:?];
    v265 = sel_setOptLock_;
    v97 = [NSSQLRow instanceMethodForSelector:?];
    v264 = v97;
    if (v310)
    {
      if (v80)
      {
        v98 = v303;
        v97 = [(objc_class *)v272 allocateBatch:v295 count:v303];
        if (v98 != v97)
        {
          v100 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(8))
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v320[0]) = 0;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Decoding failed: No oids.\n", v320, 2u);
              }
            }

            else
            {
              v248 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v320[0]) = 0;
                _os_log_impl(&dword_18565F000, v248, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Decoding failed: No oids.\n", v320, 2u);
              }
            }
          }

          v249 = "Decoding failed: No oids.";
          goto LABEL_415;
        }

        v99 = v303;
        if ((v294 & 2) != 0 || !v303)
        {
          if (!v303)
          {
LABEL_419:
            v225 = v302;
            goto LABEL_420;
          }
        }

        else
        {
          v97 = [NSSQLRow newBatchRowAllocation:v288 count:v303 forSQLEntity:p_isa[5] withOwnedObjectIDs:v295 andTimestamp:*(v15 + 40)];
          if (v99 != v97)
          {
            v100 = objc_autoreleasePoolPush();
            if (_NSCoreDataIsOSLogEnabled(8))
            {
              if (_pflogging_catastrophic_mode)
              {
                v101 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(v320[0]) = 0;
                  _os_log_error_impl(&dword_18565F000, v101, OS_LOG_TYPE_ERROR, "CoreData: error: Decoding failed: No rows.\n", v320, 2u);
                }
              }

              else
              {
                v255 = _PFLogGetLogStream(8);
                if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v320[0]) = 0;
                  _os_log_impl(&dword_18565F000, v255, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Decoding failed: No rows.\n", v320, 2u);
                }
              }
            }

            v249 = "Decoding failed: No rows.";
LABEL_415:
            if (_pflogging_catastrophic_mode)
            {
              v250 = 1;
            }

            else
            {
              v250 = 8;
            }

            _NSCoreDataLog_console(v250, v249);
            objc_autoreleasePoolPop(v100);
            goto LABEL_419;
          }
        }

        v279 = 0;
        v280 = 0;
        v104 = v303;
LABEL_122:
        v268 = v80;
        if (v104 >= 1)
        {
          v105 = 0;
          v256 = 0;
          v257 = 0;
          v269 = 0;
          v106 = 0;
          v258 = 0;
          v298 = @"TOMBSTONE";
          v270 = v303;
          while (1)
          {
            if (v310)
            {
              v107 = 0;
            }

            else
            {
              v107 = v61[1];
            }

            v293 = v105;
            v281 = &v256;
            MEMORY[0x1EEE9AC00](v97);
            v110 = &v256 - v109;
            if (v107 > 0x200)
            {
              v97 = NSAllocateScannedUncollectable();
              v110 = v97;
            }

            else
            {
              bzero(&v256 - v109, 8 * v108);
            }

            v309 = v110;
            isa = v59->isa;
            v277 = v107;
            if (isa < 0)
            {
              do
              {
                v59 = &v59->data[*(*(v15 + 96) + 8 * HIDWORD(v59->isa))];
              }

              while ((v59->isa & 0x80000000) != 0);
            }

            v112 = v301 - v59;
            if (v301 - v59 <= 31)
            {
              v94 = v284;
              v95 = v316;
              if (a8)
              {
                v244 = MEMORY[0x1E696ABC0];
                v245 = *MEMORY[0x1E696A250];
                v246 = MEMORY[0x1E695DF20];
                v247 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData: XPC: Suspect response from server (not enough room for row %d)", v293];
                goto LABEL_435;
              }

              goto LABEL_436;
            }

            if (v310)
            {
              v113 = _sqlEntityForEntityID(v93, LODWORD(v59->info));
              if (v113 != v269)
              {
                v272 = [(NSPersistentStore *)a5 objectIDFactoryForSQLEntity:v113];
                v269 = v113;
              }

              v308 = v113;
              if (v268)
              {
                v312 = v61;
                v314 = v106;
                v114 = v295;
                v115 = v293;
                v116 = *&v295[8 * v293];
                v97 = _PFSetPrimaryKey(v116, v59->length);
                if (v116 == v97)
                {
                  v93 = v290;
                  v106 = v314;
                  if ((v294 & 2) != 0)
                  {
                    v125 = v116;
                    v124 = v278;
                    v118 = v293;
LABEL_346:
                    v61 = v312;
LABEL_347:
                    if (v124 > 2)
                    {
                      if (v124 != 3 && v124 != 5)
                      {
                        goto LABEL_356;
                      }

LABEL_353:
                      v221 = [NSManagedObjectContext _retainedObjectWithID:v292 optionalHandler:v125 withInlineStorage:v274];

                      v118 = v293;
                      v125 = v221;
                      goto LABEL_357;
                    }

                    if (!v124)
                    {
                      goto LABEL_353;
                    }

                    if (v124 != 1)
                    {
                      goto LABEL_356;
                    }

                    goto LABEL_357;
                  }
                }

                else
                {
                  v117 = v97;
                  *&v114[8 * v115] = v97;
                  v118 = v115;
                  if ((v294 & 2) != 0)
                  {
                    v93 = v290;
                    v124 = v278;
                    v106 = v314;
                    v125 = v97;
                    goto LABEL_346;
                  }

                  [*&v288[8 * v115] setObjectID:v97];
                  v116 = v117;
                  v106 = v314;
                }

                v123 = *&v288[8 * v293];
                v259 = v116;
                v119 = v308;
              }

              else
              {
                v97 = [[v272 alloc] initWithPK64:v59->length];
                v120 = v97;
                if ((v294 & 2) != 0)
                {
                  v124 = v278;
                  v118 = v293;
                  v125 = v97;
                  goto LABEL_347;
                }

                v119 = v308;
                v121 = [NSSQLRow allocForSQLEntity:v308];
                v122 = *(v15 + 40);
                v259 = v120;
                v123 = [v121 initWithSQLEntity:v119 ownedObjectID:v120 andTimestamp:v122];
                *&v288[8 * v293] = v123;
              }

              v271 = v123;
              v126 = atomic_load(v123 + 5);
              v286 = v126;
              v61 = _sql_fetch_plan_for_entity(v119);
            }

            else
            {
              if ((v294 & 2) != 0)
              {
                v124 = v278;
                v118 = v293;
                v125 = 0;
                goto LABEL_347;
              }

              v106 = 0;
              v119 = v315;
              v271 = 0;
              v259 = 0;
              v286 = 0;
            }

            if (v112 < *v61)
            {
              v94 = v284;
              v95 = v316;
              if (a8)
              {
                v244 = MEMORY[0x1E696ABC0];
                v245 = *MEMORY[0x1E696A250];
                v246 = MEMORY[0x1E695DF20];
                v247 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData: XPC: Suspect response from server (remaining space for %d smaller than estimated size)", v293];
                goto LABEL_435;
              }

LABEL_436:
              v96 = v285;
              goto LABEL_437;
            }

            v127 = v61[1];
            v128 = v309;
            if (v127)
            {
              v319 = 0;
              v307 = 0;
              v308 = v119;
              v296 = 0;
              v318 = 0;
              v299 = 0;
              v312 = v61;
              v313 = v59 + 1;
              v305 = v309 != 0;
              v276 = v286 + 28;
              v304 = 24 * v127;
              v129 = 0;
              v306 = v59;
              do
              {
                v314 = v106;
                v317 = v129;
                v130 = (v61 + v129);
                v131 = *(v61 + v129 + 20);
                if ((v131 - 2) > 6)
                {
                  v132 = 3;
                }

                else
                {
                  v132 = qword_18592E2D8[(v131 - 2)];
                }

                v133 = ((v313 + v132) & ~v132);
                if (v130[4])
                {
                  isa_low = LOBYTE(v133->isa);
                  v133 = (v133 + 1);
                  v134 = isa_low != 0;
                }

                else
                {
                  v134 = 0;
                }

                v136 = 0;
                v311 = v130;
                if (((v319 > 6) & v318) == 1 && (v134 & 1) == 0)
                {
                  LODWORD(v313) = v134;
                  v137 = v133;
                  v138 = v307;
                  if (!v307)
                  {
                    v139 = [(NSPersistentStore *)a5 model];
                    v138 = v280(v139, v279, v296);
                  }

                  v140 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v138];
                  v141 = [objc_msgSend(*(v312 + v317 + 24) "propertyDescription")];
                  v142 = [objc_msgSend(v141 stringByReplacingOccurrencesOfString:v298 withString:{&stru_1EF3F1768), "intValue"}];
                  v143 = [v140 count];
                  v307 = v138;
                  if (v142 >= v143)
                  {
                    v136 = 0;
                  }

                  else
                  {
                    v144 = [v140 objectAtIndexedSubscript:v142];
                    if (v138)
                    {
                      v136 = [*(v138 + 40) objectForKey:v144];
                    }

                    else
                    {
                      v136 = 0;
                    }

                    v131 = 17;
                  }

                  v133 = v137;
                  v134 = v313;
                }

                v145 = ~v132;
                if (v131 <= 6)
                {
                  if ((v131 - 4) < 3)
                  {
                    goto LABEL_209;
                  }

                  if ((v131 - 2) < 2)
                  {
                    v320[0] = 0;
                    v150 = ((v133 + v132) & v145);
                    if (!v134)
                    {
                      v133 = (v150 + 1);
                    }

                    v151 = v320;
                    if (!v134)
                    {
                      v151 = v150;
                    }

                    v61 = v312;
                    v152 = v317;
                    v153 = *(v312 + v317 + 21);
                    v313 = v133;
                    if (v153 == 6)
                    {
                      v59 = v306;
                      v148 = v308;
                      if (v310)
                      {
                        v264(v271, v265, *v151);
                      }

                      v149 = v314;
                      goto LABEL_238;
                    }

                    v59 = v306;
                    v148 = v308;
                    if (v153 == 3)
                    {
                      v149 = v314;
                      if (v310)
                      {
                        v266(v271, v267, v311[2], *v151);
LABEL_238:
                        v128 = v309;
                        goto LABEL_319;
                      }

                      if (v299)
                      {
                        v195 = v309[v314 - 1];
                        v149 = v314 - 1;
                      }

                      else
                      {
                        v197 = v134;
                        v198 = [objc_msgSend(*(v312 + v317 + 24) "toOneRelationship")];
                        LOBYTE(v134) = v197;
                        v195 = v198;
                      }

                      if ((v134 & 1) != 0 || !*v150)
                      {
                        v200 = 0;
                      }

                      else
                      {
                        if (v195 != v256)
                        {
                          v199 = [(NSPersistentStore *)a5 objectIDFactoryForSQLEntity:v195];
                          v256 = v195;
                          v257 = v199;
                        }

                        v200 = [[v257 alloc] initWithPK64:*v150];
                      }

                      v299 = 0;
                      v128 = v309;
                      v309[v149] = v200;
                      goto LABEL_243;
                    }

                    v149 = v314;
                    if (v153 != 1)
                    {
                      goto LABEL_238;
                    }

                    if (v310)
                    {
                      v154 = v311[2];
                      if (v134)
                      {
                        v276[v154 >> 3] |= 1 << (v154 & 7);
                      }

                      else
                      {
                        snapshot_set_int64(v286, v154, *v150);
                      }

                      goto LABEL_238;
                    }

                    if (byte_1ED4BEEC6 & v134)
                    {
                      v177 = 0;
                    }

                    else
                    {
                      if (byte_1ED4BEEC6)
                      {
                        v201 = v150;
                      }

                      else
                      {
                        v201 = v151;
                      }

                      v177 = CFNumberCreate(0, kCFNumberLongLongType, v201);
                    }

                    v299 = 0;
                    v128 = v309;
                    goto LABEL_318;
                  }

                  if (v131 == 1)
                  {
                    LODWORD(v320[0]) = 0;
                    v163 = ((v133 + v132) & v145);
                    if (!v134)
                    {
                      v133 = (v163 + 1);
                    }

                    v164 = v320;
                    if (!v134)
                    {
                      v164 = v163;
                    }

                    v61 = v312;
                    v152 = v317;
                    v165 = *(v312 + v317 + 21);
                    v313 = v133;
                    if (v165 == 10)
                    {
                      v59 = v306;
                      v128 = v309;
                      if (v310)
                      {
                        v260(v271, v261, v311[2], *v164);
                      }

                      v149 = v314;
                      goto LABEL_243;
                    }

                    v59 = v306;
                    v128 = v309;
                    if (v165 == 4)
                    {
                      v149 = v314;
                      if (v310)
                      {
                        v262(v271, v263, v311[2], *v164);
                      }

                      else
                      {
                        if (v134)
                        {
                          v309[v314] = 0;
                        }

                        else
                        {
                          v128[v149] = v280(v290, v279, *v163);
                        }

                        v299 = 1;
                      }

                      goto LABEL_243;
                    }

                    v149 = v314;
                    if (v165 != 1)
                    {
                      goto LABEL_243;
                    }

                    if (v310)
                    {
                      v166 = v311[2];
                      if (v134)
                      {
                        v276[v166 >> 3] |= 1 << (v166 & 7);
                      }

                      else
                      {
                        type = snapshot_get_type(v286, v166);
                        v211 = v311[2];
                        v212 = *v163;
                        if (type == 115)
                        {
                          snapshot_set_int16(v286, v211, v212);
                        }

                        else if (type == 99)
                        {
                          snapshot_set_int8(v286, v211, v212);
                        }

                        else
                        {
                          snapshot_set_int32(v286, v211, v212);
                        }
                      }

                      goto LABEL_243;
                    }

                    if (byte_1ED4BEEC6 & v134)
                    {
                      v177 = 0;
                    }

                    else
                    {
                      if (byte_1ED4BEEC6)
                      {
                        v213 = v163;
                      }

                      else
                      {
                        v213 = v164;
                      }

                      v177 = CFNumberCreate(0, kCFNumberIntType, v213);
                    }

LABEL_316:
                    v148 = v308;
                    goto LABEL_317;
                  }
                }

                else if (v131 <= 11)
                {
                  if ((v131 - 7) < 2)
                  {
                    if (v310)
                    {
                      v61 = v312;
                      if ((v134 & 1) == 0)
                      {
                        v155 = ((v133 + v132) & v145);
                        v313 = (v155 + 1);
                        v156 = v311;
                        v157 = v311[2];
                        v59 = v306;
                        if (*(v311 + 20) == 7)
                        {
                          v158 = v286;
                          v159 = snapshot_get_type(v286, v157);
                          v160 = v156[2];
                          v161 = *v155;
                          v149 = v314;
                          v128 = v309;
                          if (v159 == 102)
                          {
                            v162 = v161;
                            snapshot_set_float(v158, v160, v162);
                          }

                          else
                          {
                            snapshot_set_double(v158, v160, v161);
                          }

                          goto LABEL_300;
                        }

                        snapshot_set_double(v286, v157, *v155);
LABEL_213:
                        v149 = v314;
                        goto LABEL_299;
                      }

LABEL_211:
                      v313 = v133;
                      v276[v311[2] >> 3] |= 1 << (v311[2] & 7);
                      goto LABEL_212;
                    }

                    v61 = v312;
                    v148 = v308;
                    if (v134)
                    {
                      v313 = v133;
                      v177 = 0;
                      v59 = v306;
                    }

                    else
                    {
                      v178 = ((v133 + v132) & v145);
                      v313 = (v178 + 1);
                      v59 = v306;
                      if (*(v311 + 20) == 7)
                      {
                        v177 = CFNumberCreate(0, kCFNumberDoubleType, v178);
                      }

                      else
                      {
                        v177 = CFDateCreate(0, *v178);
                      }
                    }

                    v149 = v314;
                    v128 = v309;
                    goto LABEL_266;
                  }

                  if (v131 == 9)
                  {
LABEL_209:
                    if (!v310)
                    {
                      v61 = v312;
                      if (v134)
                      {
                        v313 = v133;
                        v167 = 0;
                        v59 = v306;
                        v149 = v314;
                        v152 = v317;
LABEL_242:
                        v299 = 0;
                        v128 = v309;
                        v309[v149] = v167;
LABEL_243:
                        v148 = v308;
                        goto LABEL_319;
                      }

                      v174 = ((v133 + v132) & v145);
                      v59 = v306;
                      if (v301 - (v174 + 4) < *v174)
                      {
                        v94 = v284;
                        v95 = v316;
                        if (!a8)
                        {
                          goto LABEL_436;
                        }

                        v244 = MEMORY[0x1E696ABC0];
                        v245 = *MEMORY[0x1E696A250];
                        v246 = MEMORY[0x1E695DF20];
                        v247 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData: XPC: Suspect response from server (remaining space for %@ insufficient (2))", *(v312 + v317 + 24)];
                        goto LABEL_435;
                      }

                      v167 = CFStringCreateWithCString(0, v174 + 4, 0x8000100u);
                      v313 = &v174[*v174 + 4];
                      v175 = *(v311 + 20);
                      v149 = v314;
                      if (v175 == 12)
                      {
                        v176 = [MEMORY[0x1E695DFF8] URLWithString:v167];
                        v152 = v317;
                      }

                      else
                      {
                        v152 = v317;
                        if (v175 != 4)
                        {
                          goto LABEL_242;
                        }

                        v176 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v167];
                      }

                      CFRelease(v167);
                      v167 = v176;
                      goto LABEL_242;
                    }

                    v61 = v312;
                    if ((v134 & 1) == 0)
                    {
                      v168 = ((v133 + v132) & v145);
                      v169 = (v168 + 4);
                      v59 = v306;
                      if (v301 - (v168 + 4) < *v168)
                      {
                        v94 = v284;
                        v95 = v316;
                        if (!a8)
                        {
                          goto LABEL_436;
                        }

                        v244 = MEMORY[0x1E696ABC0];
                        v245 = *MEMORY[0x1E696A250];
                        v246 = MEMORY[0x1E695DF20];
                        v247 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData: XPC: Suspect response from server (remaining space for %@ insufficient (1))", *(v312 + v317 + 24)];
                        goto LABEL_435;
                      }

                      v170 = CFStringCreateWithCString(0, v168 + 4, 0x8000100u);
                      v171 = *v168;
                      v172 = *(v311 + 20);
                      v149 = v314;
                      if (v172 == 12)
                      {
                        v173 = [MEMORY[0x1E695DFF8] URLWithString:v170];
                        goto LABEL_297;
                      }

                      if (v172 == 4)
                      {
                        v173 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v170];
                        goto LABEL_297;
                      }

                      goto LABEL_298;
                    }

                    goto LABEL_211;
                  }
                }

                else
                {
                  if ((v131 - 13) < 2)
                  {
                    v313 = v133;
                    v299 = 0;
                    goto LABEL_196;
                  }

                  if (v131 == 12)
                  {
                    goto LABEL_209;
                  }

                  if (v131 == 16)
                  {
                    v146 = v134;
                    v147 = [objc_msgSend(*(v312 + v317 + 24) "propertyDescription")];
                    LOBYTE(v134) = v146;
                    if (v147)
                    {
                      if (v146)
                      {
                        v313 = v133;
                        v148 = v308;
                        if (v310)
                        {
                          v61 = v312;
                          v276[v311[2] >> 3] |= 1 << (v311[2] & 7);
                          v59 = v306;
                          v149 = v314;
                          v128 = v309;
                        }

                        else
                        {
                          v299 = 0;
                          v196 = v314;
                          v128 = v309;
                          v309[v314] = 0;
                          v61 = v312;
                          v59 = v306;
                          v149 = v196;
                        }

                        goto LABEL_301;
                      }

                      v188 = ((v133 + v132) & v145);
                      v189 = v188 + 1;
                      if (v301 - (v188 + 1) < *v188)
                      {
                        v94 = v284;
                        v95 = v316;
                        if (!a8)
                        {
                          goto LABEL_436;
                        }

                        v254 = v312 + v317;
                        v244 = MEMORY[0x1E696ABC0];
                        v245 = *MEMORY[0x1E696A250];
                        v246 = MEMORY[0x1E695DF20];
                        v253 = MEMORY[0x1E696AEC0];
                        goto LABEL_434;
                      }

                      v190 = [MEMORY[0x1E695DEF0] dataWithBytes:v188 + 1 length:?];
                      v191 = *v188;
                      v61 = v312;
                      v192 = v258;
                      if (!v258)
                      {
                        v192 = [(NSPersistentStore *)a5 fileBackedFuturesDirectory];
                      }

                      v313 = (v189 + v191);
                      v193 = [_NSDataFileBackedFuture alloc];
                      v258 = v192;
                      v194 = -[_NSDataFileBackedFuture initWithStoreMetadata:directory:](v193, "initWithStoreMetadata:directory:", v190, [MEMORY[0x1E695DFF8] fileURLWithPath:v192 isDirectory:1]);
                      v59 = v306;
                      if (v310)
                      {
                        snapshot_set_object(v286, v311[2], v194);
                        goto LABEL_213;
                      }

                      v299 = 0;
                      v149 = v314;
                      v128 = v309;
                      v309[v314] = v194;
LABEL_300:
                      v148 = v308;
LABEL_301:
                      v152 = v317;
                      goto LABEL_319;
                    }
                  }
                }

                if (v310)
                {
                  if (v134)
                  {
                    v313 = v133;
                    v276[v311[2] >> 3] |= 1 << (v311[2] & 7);
LABEL_196:
                    v61 = v312;
LABEL_212:
                    v59 = v306;
                    goto LABEL_213;
                  }

                  v179 = ((v133 + v132) & v145);
                  v169 = (v179 + 4);
                  v180 = *v179;
                  v61 = v312;
                  if (v301 - (v179 + 4) < v180)
                  {
                    v94 = v284;
                    v95 = v316;
                    if (!a8)
                    {
                      goto LABEL_436;
                    }

                    v244 = MEMORY[0x1E696ABC0];
                    v245 = *MEMORY[0x1E696A250];
                    v246 = MEMORY[0x1E695DF20];
                    v253 = MEMORY[0x1E696AEC0];
                    v254 = v312 + v317;
LABEL_434:
                    v247 = [v253 stringWithFormat:@"CoreData: XPC: Suspect response from server (remaining space for %@ insufficient (3))", *(v254 + 3)];
                    goto LABEL_435;
                  }

                  v181 = CFDataCreate(0, v179 + 4, v180);
                  v170 = v181;
                  v171 = *v179;
                  v182 = *(v311 + 20);
                  v59 = v306;
                  if (v182 == 11)
                  {
                    v202 = [(__CFData *)v181 length];
                    v149 = v314;
                    if (v202 == 16)
                    {
                      v313 = objc_alloc(MEMORY[0x1E696AFB0]);
                      v203 = [(__CFString *)v170 bytes];
                      v173 = [(__CFString *)v313 initWithUUIDBytes:v203];
LABEL_297:
                      v313 = v173;
                      CFRelease(v170);
                      v170 = v313;
                    }
                  }

                  else
                  {
                    v149 = v314;
                    if (v182 == 15)
                    {
                      v173 = +[PFFaultingTransformedValue transformedValueWithData:forAttribute:](PFFaultingTransformedValue, v181, [*(v61 + v317 + 24) propertyDescription]);
                      goto LABEL_297;
                    }
                  }

LABEL_298:
                  v313 = (v169 + v171);
                  snapshot_set_object(v286, v311[2], v170);
LABEL_299:
                  v128 = v309;
                  goto LABEL_300;
                }

                if ((v134 & 1) == 0)
                {
                  v183 = ((v133 + v132) & v145);
                  v184 = *v183;
                  if (v301 - (v183 + 4) < v184)
                  {
                    v94 = v284;
                    v95 = v316;
                    if (!a8)
                    {
                      goto LABEL_436;
                    }

                    v244 = MEMORY[0x1E696ABC0];
                    v245 = *MEMORY[0x1E696A250];
                    v246 = MEMORY[0x1E695DF20];
                    v247 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData: XPC: Suspect response from server (remaining space for %@ insufficient (4))", *(v312 + v317 + 24)];
LABEL_435:
                    *a8 = [v244 errorWithDomain:v245 code:134060 userInfo:{objc_msgSend(v246, "dictionaryWithObject:forKey:", v247, @"Reason"}];
                    goto LABEL_436;
                  }

                  v177 = CFDataCreate(0, v183 + 4, v184);
                  v313 = &v183[*v183 + 4];
                  if (v131 != 17 || (v185 = v177, v186 = [v136 sqlType] == 10, v177 = v185, v186))
                  {
                    v61 = v312;
                    v187 = *(v311 + 20);
                    v128 = v309;
                    v152 = v317;
                    if (v187 == 11)
                    {
                      v311 = v177;
                      v208 = [(__CFNumber *)v177 length];
                      v59 = v306;
                      if (v208 != 16)
                      {
                        v149 = v314;
                        v148 = v308;
                        v177 = v311;
                        goto LABEL_317;
                      }

                      v209 = objc_alloc(MEMORY[0x1E696AFB0]);
                      v207 = [v209 initWithUUIDBytes:{objc_msgSend(v311, "bytes")}];
                    }

                    else
                    {
                      v59 = v306;
                      if (v187 != 15)
                      {
                        v149 = v314;
                        v148 = v308;
                        if (v187 == 18)
                        {
                          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Codable is not supported in the XPC store" userInfo:0]);
                        }

                        goto LABEL_317;
                      }

                      v205 = v177;
                      v206 = [*(v312 + v317 + 24) propertyDescription];
                      v311 = v205;
                      v207 = [_PFRoutines retainedDecodeValue:v205 forTransformableAttribute:v206];
                    }

                    v204 = v207;
                    v149 = v314;
                  }

                  else
                  {
                    v61 = v312;
                    v152 = v317;
                    [*(v312 + v317 + 24) propertyDescription];
                    v311 = v185;
                    v204 = _swizzleManifestTypeDataXPC(v185, v136);
                    v59 = v306;
                    v149 = v314;
                    v128 = v309;
                  }

                  CFRelease(v311);
                  v177 = v204;
                  goto LABEL_316;
                }

                v313 = v133;
                v177 = 0;
                v61 = v312;
                v59 = v306;
                v149 = v314;
                v148 = v308;
                v128 = v309;
LABEL_266:
                v152 = v317;
LABEL_317:
                v299 = 0;
LABEL_318:
                v128[v149] = v177;
LABEL_319:
                if (v148 && v152 == 72 && *(v148 + 46) == 16001)
                {
                  v214 = [v128[v149] intValue] == 2;
                  v318 |= v214;
                }

                else if (v152 == 120 && (v318 & 1) != 0)
                {
                  v296 = [v128[v149] intValue];
                  v318 = 1;
                }

                v106 = (v149 + v305);
                ++v319;
                v129 = v152 + 24;
              }

              while (v304 != v129);
            }

            if (v310)
            {
              v215 = v271;
              [v271 knownKeyValuesPointer];
              v216 = v293;
              *&v282[8 * v293] = v215;
              v217 = v286;
              v97 = v286;
              *&v288[8 * v216] = v97;
              v93 = v290;
              if (v297)
              {
                v97 = v217;
              }

              else
              {
                if (v278 > 2)
                {
                  v125 = v259;
                  if (v278 != 3 && v278 != 5)
                  {
                    v118 = v216;
LABEL_356:
                    v125 = 0;
                    goto LABEL_357;
                  }
                }

                else
                {
                  v125 = v259;
                  if (v278)
                  {
                    if (v278 == 1)
                    {
                      v97 = _PFfastOidRetain(0, v259);
                    }

                    else
                    {
                      v125 = 0;
                    }

                    goto LABEL_344;
                  }
                }

                v97 = [NSManagedObjectContext _retainedObjectWithID:v292 optionalHandler:v125 withInlineStorage:v274];
              }

              v125 = v97;
LABEL_344:
              v118 = v293;
              goto LABEL_357;
            }

            v218 = [NSKnownKeysDictionary alloc];
            v219 = [(NSKnownKeysDictionary *)v218 initWithSearchStrategy:propertyMapping];
            v220 = v128;
            v125 = v219;
            v97 = [(NSKnownKeysDictionary *)v219 _setValues:v220 retain:0];
            v118 = v293;
            v93 = v290;
LABEL_357:
            *(v302 + v118) = v125;
            isa_high = HIDWORD(v59->isa);
            if ((isa_high & 0x80000000) == 0)
            {
              v223 = *(*(v15 + 96) + 8 * isa_high);
              if (v223)
              {
                data = v59->data;
                if (v277 >= 0x201)
                {
                  NSZoneFree(0, v309);
                  v118 = v293;
                }

                v59 = &data[v223];
                v105 = v118 + 1;
                if (v105 != v270)
                {
                  continue;
                }
              }
            }

            break;
          }
        }

        if (v278 > 5)
        {
          v228 = 10;
        }

        else
        {
          v228 = dword_18592E310[v278];
        }

        v229 = v284;
        v230 = [_PFArray alloc];
        v25 = [(_PFArray *)v230 initWithObjects:v302 count:v303 andFlags:v228 andContext:v292];
        v231 = v291 ^ 1;
        if ((v291 ^ 1 | v273))
        {
          v232 = 0;
        }

        else
        {
          v233 = v287;
          v232 = v287 != 0;
          if (v287)
          {
            v234 = [_PFArray alloc];
            *v233 = [(_PFArray *)v234 initWithObjects:v282 count:v303 andFlags:26 andContext:v292];
          }

          if (v303 < 1)
          {
            goto LABEL_387;
          }

          v235 = v303;
          v236 = v288;
          do
          {
            v237 = *v236++;

            --v235;
          }

          while (v235);
        }

        if (((v232 | v231) & 1) == 0 && v303 >= 1)
        {
          v238 = v303;
          v239 = v282;
          do
          {
            v240 = *v239++;

            --v238;
          }

          while (v238);
        }

LABEL_387:
        if (v285 >= 0x201)
        {
          NSZoneFree(0, v288);
          NSZoneFree(0, v282);
        }

        if (v229 >= 0x201)
        {
          NSZoneFree(0, v295);
        }

        v241 = v316;
        if (p_isa)
        {
        }

        goto LABEL_401;
      }

      v279 = 0;
      v280 = 0;
    }

    else
    {
      v102 = p_isa[8];
      v279 = sel_entityForID_;
      v280 = v102;
    }

    v104 = v303;
    if (!v303)
    {
      v225 = v302;
      if (!v302)
      {
LABEL_421:
        v251 = v284;
        v252 = v316;
        if (v285 >= 0x201 && v288)
        {
          NSZoneFree(0, v288);
          NSZoneFree(0, v282);
        }

        if (v251 >= 0x201 && v295)
        {
          NSZoneFree(0, v295);
        }

        v25 = NSArray_EmptyArray;
        goto LABEL_401;
      }

LABEL_420:
      PF_FREE_OBJECT_ARRAY(v225);
      goto LABEL_421;
    }

    goto LABEL_122;
  }

  v323 = 0u;
  v324 = 0u;
  v321 = 0u;
  v322 = 0u;
  v319 = [(NSPersistentStore *)v316 ancillarySQLModels];
  v62 = [v319 countByEnumeratingWithState:&v321 objects:v327 count:16];
  if (!v62)
  {
    goto LABEL_66;
  }

  v63 = v62;
  v64 = *v322;
  do
  {
    v65 = 0;
    do
    {
      if (*v322 != v64)
      {
        objc_enumerationMutation(v319);
      }

      v56 = [-[NSPersistentStore ancillarySQLModels](v316 "ancillarySQLModels")];
      v66 = [(NSSQLEntity *)v315 model];
      if (v66)
      {
        v67 = *(v66 + 60);
        if (v56)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v67 = 0;
        if (v56)
        {
LABEL_59:
          v68 = *(v56 + 60);
          goto LABEL_60;
        }
      }

      v68 = 0;
LABEL_60:
      if (v67 == v68)
      {
        goto LABEL_49;
      }

      ++v65;
    }

    while (v63 != v65);
    v69 = [v319 countByEnumeratingWithState:&v321 objects:v327 count:16];
    v63 = v69;
  }

  while (v69);
LABEL_66:
  v70 = p_isa;
  v71 = v316;
  v72 = v289;
  if (a8)
  {
    v326[0] = @"CoreData: XPC: Unable to find entity in model";
    v325[0] = @"Reason";
    v325[1] = @"EntityOffset";
    v73 = MEMORY[0x1E696AD98];
    v74 = [(NSSQLEntity *)v315 model];
    if (v74)
    {
      v75 = *(v74 + 60);
    }

    else
    {
      v75 = 0;
    }

    v326[1] = [v73 numberWithUnsignedInt:v75];
    v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v326 forKeys:v325 count:2];
    *a8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v76];
  }

  if (v70)
  {
  }

LABEL_400:
  v25 = 0;
LABEL_401:
  v243 = *MEMORY[0x1E69E9840];
  return v25;
}

@end