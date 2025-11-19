@interface NSBinaryObjectStore
+ (BOOL)setMetadata:(id)a3 forPersistentStoreWithURL:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)metadataForPersistentStoreWithURL:(id)a3 options:(id)a4 error:(id *)a5;
+ (uint64_t)_classesForPropertyValues;
- (NSBinaryObjectStore)initWithPersistentStoreCoordinator:(id)a3 configurationName:(id)a4 URL:(id)a5 options:(id)a6;
- (void)saveDocumentToPath:(id)a3;
@end

@implementation NSBinaryObjectStore

+ (uint64_t)_classesForPropertyValues
{
  objc_opt_self();
  if (!_classesForPropertyValues_expectedClasses)
  {
    v0 = [+[_PFRoutines attributeClassesForSecureCoding]() mutableCopy];
    [v0 addObject:objc_opt_class()];
    v1 = 0;
    atomic_compare_exchange_strong(&_classesForPropertyValues_expectedClasses, &v1, v0);
    if (v1)
    {
    }
  }

  return _classesForPropertyValues_expectedClasses;
}

- (NSBinaryObjectStore)initWithPersistentStoreCoordinator:(id)a3 configurationName:(id)a4 URL:(id)a5 options:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a5)
  {

    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = @"Cannot create a binary store with a nil URL.";
    goto LABEL_36;
  }

  if (([a5 isFileURL] & 1) == 0)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData binary stores only support file URLs (got %@).", a5];
    v24 = v27;
    v25 = v28;
LABEL_36:
    objc_exception_throw([v24 exceptionWithName:v25 reason:v26 userInfo:0]);
  }

  v38 = 0;
  v37 = 0;
  if (![NSPersistentStore doURLStuff:a5 createdStubFile:&v37 + 1 readOnly:&v37 error:&v38 options:a6])
  {

    v29 = [v38 code];
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v38, @"NSUnderlyingException", 0}];
    v31 = [_NSCoreDataException exceptionWithName:v29 code:@"Error validating url for store" reason:v30 userInfo:?];
    objc_exception_throw(v31);
  }

  if (v37 == 1 && ([objc_msgSend(a6 valueForKey:{@"NSReadOnlyPersistentStoreOption", "BOOLValue"}] & 1) == 0)
  {
    if ([a6 valueForKey:@"NSReadOnlyPersistentStoreOption"] && (z9dsptsiQ80etb9782fsrs98bfdle88 & 0x10000000000) != 0)
    {
      if (v38)
      {
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObject:v38 forKey:*MEMORY[0x1E696AA08]];
      }

      else
      {
        v34 = 0;
      }

      v35 = [_NSCoreDataException exceptionWithName:513 code:@"Attempt to add read-only store read-write" reason:v34 userInfo:?];
      objc_exception_throw(v35);
    }

    if (a6)
    {
      a6 = [a6 mutableCopy];
      [a6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"NSReadOnlyPersistentStoreOption"}];
    }

    else
    {
      a6 = [MEMORY[0x1E695DF90] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"NSReadOnlyPersistentStoreOption"}];
    }

    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          buf.st_dev = 138412290;
          *&buf.st_mode = a5;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Attempt to add read-only file at path %@ read/write. Adding it read-only instead. This will be a hard error in the future; you must specify the NSReadOnlyPersistentStoreOption.\n", &buf, 0xCu);
        }
      }

      else
      {
        v13 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          buf.st_dev = 138412290;
          *&buf.st_mode = a5;
          _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_INFO, "CoreData: debug: Attempt to add read-only file at path %@ read/write. Adding it read-only instead. This will be a hard error in the future; you must specify the NSReadOnlyPersistentStoreOption.\n", &buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v14 = 1;
    }

    else
    {
      v14 = 9;
    }

    _NSCoreDataLog_console(v14, "Attempt to add read-only file at path %@ read/write. Adding it read-only instead. This will be a hard error in the future; you must specify the NSReadOnlyPersistentStoreOption.", a5);
    objc_autoreleasePoolPop(v11);
  }

  v36.receiver = self;
  v36.super_class = NSBinaryObjectStore;
  v15 = [(NSMappedObjectStore *)&v36 initWithPersistentStoreCoordinator:a3 configurationName:a4 URL:a5 options:a6];
  v16 = v15;
  if (v15)
  {
    if (HIBYTE(v37) == 1)
    {
      [(NSPersistentStore *)v15 _setMetadataDirty:1];
      [(NSPersistentStore *)v16 doFilesystemCleanupOnRemove:1];
    }

    v17 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if (([a5 isFileURL] & 1) == 0)
    {
      v32 = MEMORY[0x1E695DF30];
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSBinaryObjectStore only supports file URLs right now."];
      objc_exception_throw([v32 exceptionWithName:*MEMORY[0x1E695D940] reason:v33 userInfo:0]);
    }

    v18 = [a5 path];
    memset(&buf, 0, sizeof(buf));
    if (stat([v18 fileSystemRepresentation], &buf) || buf.st_size < 1)
    {
      v19 = [[NSDictionaryStoreMap alloc] initWithStore:v16];
    }

    else
    {
      v19 = -[NSDictionaryStoreMap initWithStore:fromPath:]([NSDictionaryStoreMap alloc], "initWithStore:fromPath:", v16, [a5 path]);
    }

    v20 = v19;
    if (v19)
    {
      [(NSMappedObjectStore *)v16 _setMap:v19];
    }

    [v17 drain];

    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)saveDocumentToPath:(id)a3
{
  if ([(NSPersistentStore *)self isReadOnly])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Can't save store to %@ (read-only store)", a3), 0}]);
  }

  if (self)
  {
    theMap = self->super._theMap;
  }

  else
  {
    theMap = 0;
  }

  [(NSDictionaryStoreMap *)theMap saveToPath:a3];

  [(NSPersistentStore *)self doFilesystemCleanupOnRemove:0];
}

+ (id)metadataForPersistentStoreWithURL:(id)a3 options:(id)a4 error:(id *)a5
{
  if (([a3 isFileURL] & 1) == 0)
  {
    if (!a5)
    {
      return 0;
    }

    v11 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = [v11 initWithObjectsAndKeys:{a3, *MEMORY[0x1E696A998], 0}];
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:262 userInfo:v8];
LABEL_20:

    return 0;
  }

  v16 = 0;
  v8 = objc_alloc_init(NSBinaryObjectStoreFile);
  if (byte_1ED4BEEC4 == 1)
  {
    v9 = [a4 objectForKey:@"_NSBinaryStoreInsecureDecodingCompatibilityOption"];
    if (v9)
    {
      v10 = [v9 BOOLValue] ^ 1;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if ((-[NSBinaryObjectStoreFile readMetadataFromFile:securely:error:](v8, [a3 path], v10, &v16) & 1) == 0)
  {
    if (a5)
    {
      *a5 = v16;
    }

    goto LABEL_20;
  }

  if (v8)
  {
    fullMetadata = v8->_fullMetadata;
  }

  else
  {
    fullMetadata = 0;
  }

  v13 = [(NSDictionary *)fullMetadata copy];

  v14 = [v13 objectForKey:@"NSStoreType"];
  if (v14 && ![v14 isEqualToString:@"Binary"])
  {
    v13 = 0;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return NSDictionary_EmptyDictionary;
  }
}

+ (BOOL)setMetadata:(id)a3 forPersistentStoreWithURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v27.receiver = a1;
  v27.super_class = &OBJC_METACLASS___NSBinaryObjectStore;
  if (!objc_msgSendSuper2(&v27, sel_setMetadata_forPersistentStoreWithURL_error_, a3, a4, a6))
  {
    return 0;
  }

  if (byte_1ED4BEEC4 == 1)
  {
    v10 = [a5 objectForKey:@"_NSBinaryStoreInsecureDecodingCompatibilityOption"];
    if (v10)
    {
      v11 = [v10 BOOLValue] ^ 1;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = objc_alloc_init(NSBinaryObjectStoreFile);
  if (!-[NSBinaryObjectStoreFile readMetadataFromFile:securely:error:](v13, [a4 path], v11, a6))
  {
    v12 = 0;
    if (!v13)
    {
      return v12;
    }

LABEL_44:

    return v12;
  }

  v14 = [a3 mutableCopy];
  v15 = v14;
  if (v13)
  {
    fullMetadata = v13->_fullMetadata;
  }

  else
  {
    fullMetadata = 0;
  }

  if (![(NSDictionary *)v14 objectForKey:0x1EF3FD3E8])
  {
    v17 = [(NSDictionary *)fullMetadata objectForKey:0x1EF3FD3E8];
    if (v17)
    {
      [(NSDictionary *)v15 setObject:v17 forKey:0x1EF3FD3E8];
    }
  }

  if (![(NSDictionary *)v15 objectForKey:@"NSStoreModelVersionHashes"])
  {
    v18 = [(NSDictionary *)fullMetadata objectForKey:@"NSStoreModelVersionHashes"];
    if (v18)
    {
      [(NSDictionary *)v15 setObject:v18 forKey:@"NSStoreModelVersionHashes"];
    }
  }

  if (![(NSDictionary *)v15 objectForKey:@"NSStoreModelVersionIdentifiers"])
  {
    v19 = [(NSDictionary *)fullMetadata objectForKey:@"NSStoreModelVersionIdentifiers"];
    if (v19)
    {
      [(NSDictionary *)v15 setObject:v19 forKey:@"NSStoreModelVersionIdentifiers"];
    }
  }

  if (![(NSDictionary *)v15 objectForKey:0x1EF3FCE28])
  {
    v20 = [(NSDictionary *)fullMetadata objectForKey:0x1EF3FCE28];
    if (v20)
    {
      [(NSDictionary *)v15 setObject:v20 forKey:0x1EF3FCE28];
    }
  }

  if (![(NSDictionary *)v15 objectForKey:@"NSStoreModelVersionChecksumKey"])
  {
    v21 = [(NSDictionary *)fullMetadata objectForKey:@"NSStoreModelVersionChecksumKey"];
    if (v21)
    {
      [(NSDictionary *)v15 setObject:v21 forKey:@"NSStoreModelVersionChecksumKey"];
    }
  }

  if (![(NSDictionary *)v15 objectForKey:@"NSStoreType"])
  {
    v22 = [(NSDictionary *)fullMetadata objectForKey:@"NSStoreType"];
    if (v22)
    {
      [(NSDictionary *)v15 setObject:v22 forKey:@"NSStoreType"];
    }
  }

  if (![(NSDictionary *)v15 objectForKey:@"NSStoreUUID"])
  {
    v23 = [(NSDictionary *)fullMetadata objectForKey:@"NSStoreUUID"];
    if (v23)
    {
      [(NSDictionary *)v15 setObject:v23 forKey:@"NSStoreUUID"];
    }
  }

  if (![(NSDictionary *)v15 objectForKey:0x1EF3FD408])
  {
    [(NSDictionary *)v15 setObject:+[_PFRoutines _getPFBundleVersionNumber]forKey:0x1EF3FD408];
  }

  if (![(NSDictionary *)v15 objectForKey:0x1EF3FD428])
  {
    PFBundleVersion = [(NSDictionary *)fullMetadata objectForKey:0x1EF3FD408];
    if (!PFBundleVersion)
    {
      PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
    }

    [(NSDictionary *)v15 setObject:PFBundleVersion forKey:0x1EF3FD428];
  }

  if (v13 && v13->_fullMetadata != v15)
  {
    v25 = [(NSDictionary *)v15 copy];

    v13->_fullMetadata = v25;
  }

  v12 = -[NSBinaryObjectStoreFile writeMetadataToFile:error:](v13, [a4 path], a6);
  if (v13)
  {
    goto LABEL_44;
  }

  return v12;
}

@end