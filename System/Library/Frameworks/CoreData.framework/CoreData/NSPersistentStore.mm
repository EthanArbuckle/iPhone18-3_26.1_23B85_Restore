@interface NSPersistentStore
+ (BOOL)_destroyPersistentStoreAtURL:(id)a3 options:(id)a4 error:(id *)a5;
+ (BOOL)_rekeyPersistentStoreAtURL:(id)a3 options:(id)a4 withKey:(id)a5 error:(id *)a6;
+ (BOOL)_replacePersistentStoreAtURL:(id)a3 destinationOptions:(id)a4 withPersistentStoreFromURL:(id)a5 sourceOptions:(id)a6 error:(id *)a7;
+ (BOOL)doURLStuff:(id)a3 createdStubFile:(BOOL *)a4 readOnly:(BOOL *)a5 error:(id *)a6 options:(id)a7;
+ (BOOL)setMetadata:(NSDictionary *)metadata forPersistentStoreWithURL:(NSURL *)url error:(NSError *)error;
+ (NSDictionary)metadataForPersistentStoreWithURL:(NSURL *)url error:(NSError *)error;
- (BOOL)_isPersistentStoreAlive;
- (BOOL)_unload:(id *)a3;
- (BOOL)isCloudKitEnabled;
- (BOOL)load:(id *)a3;
- (NSCoreDataCoreSpotlightDelegate)coreSpotlightExporter;
- (NSDictionary)metadata;
- (NSPersistentStore)init;
- (NSPersistentStore)initWithPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)root configurationName:(NSString *)name URL:(NSURL *)url options:(NSDictionary *)options;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (NSString)configurationName;
- (NSString)identifier;
- (NSString)type;
- (_BYTE)_updateMetadata;
- (__CFSet)_entitiesForConfiguration;
- (id)_allOrderKeysForDestination:(id)a3 inRelationship:(id)a4 error:(id *)a5;
- (id)_rawMetadata__;
- (id)_updatedMetadataWithSeed:(id)a3 includeVersioning:(BOOL)a4;
- (id)currentQueryGeneration;
- (id)description;
- (id)executeRequest:(id)a3 withContext:(id)a4 error:(id *)a5;
- (id)mirroringDelegate;
- (id)newValueForRelationship:(id)a3 forObjectWithID:(id)a4 withContext:(id)a5 error:(id *)a6;
- (id)newValuesForObjectWithID:(id)a3 withContext:(id)a4 error:(id *)a5;
- (id)objectIDFactoryForEntity:(id)a3;
- (id)obtainPermanentIDsForObjects:(id)a3 error:(id *)a4;
- (id)reopenQueryGenerationWithIdentifier:(id)a3 error:(id *)a4;
- (void)_didLoadMetadata;
- (void)_mapsSyncDidUnregisterObjectsWithIDs_112229675:(id)a3;
- (void)_preflightCrossCheck;
- (void)dealloc;
- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)a3;
- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)a3 generation:(id)a4;
- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)a3;
- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)a3 generation:(id)a4;
- (void)setIdentifier:(NSString *)identifier;
- (void)setMetadata:(NSDictionary *)metadata;
- (void)setURL:(NSURL *)URL;
- (void)willRemoveFromPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)coordinator;
@end

@implementation NSPersistentStore

- (BOOL)_isPersistentStoreAlive
{
  result = 0;
  if ([(NSPersistentStore *)self _persistentStoreCoordinator])
  {
    v3 = atomic_load(&self->_coordinator);
    if (![v3 _isDeallocating])
    {
      return 1;
    }
  }

  return result;
}

- (NSCoreDataCoreSpotlightDelegate)coreSpotlightExporter
{
  v2 = self->_coreSpotlightDelegate;

  return v2;
}

- (void)_preflightCrossCheck
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(NSPersistentStore *)self URL];
  if ([(NSURL *)v3 isFileURL]&& ([(NSPersistentStore *)self type]!= @"SQLite" || ([_PFRoutines _isInMemoryStoreURL:v3]& 1) == 0))
  {
    memset(&v26, 0, sizeof(v26));
    if (stat([(NSString *)[(NSURL *)v3 path] fileSystemRepresentation], &v26))
    {
      v5 = *__error();
      v6 = objc_alloc(MEMORY[0x1E696ABC0]);
      v7 = *MEMORY[0x1E696A798];
      v8 = MEMORY[0x1E695DF20];
      v9 = [(NSURL *)v3 path];
      v10 = *MEMORY[0x1E696A368];
      v11 = [v6 initWithDomain:v7 code:v5 userInfo:{objc_msgSend(v8, "dictionaryWithObject:forKey:", v9, *MEMORY[0x1E696A368])}];
      v12 = objc_autoreleasePoolPush();
      if (!_NSCoreDataIsOSLogEnabled(1))
      {
        goto LABEL_13;
      }

      v13 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v15 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        if (!v15)
        {
          goto LABEL_13;
        }

        *buf = 138412290;
        v28 = v11;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_13;
        }

        *buf = 138412290;
        v28 = v11;
      }

      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error opening store: %@\n", buf, 0xCu);
LABEL_13:
      _NSCoreDataLog_console(1, "Error opening store: %@", v11);
      objc_autoreleasePoolPop(v12);
      if (v5 != 20)
      {
        if (v5 == 13)
        {
          v16 = 513;
        }

        else
        {
          if (v5 == 2)
          {
            goto LABEL_16;
          }

          v16 = 512;
        }

LABEL_19:
        v17 = *MEMORY[0x1E696AA08];
        if (v11)
        {
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObject:v11 forKey:*MEMORY[0x1E696AA08]];
        }

        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E696A250];
        v20 = [v18 initWithDomain:*MEMORY[0x1E696A250] code:v16 userInfo:v11];
        v21 = MEMORY[0x1E695DF20];
        v22 = [(NSURL *)v3 path];
        v23 = [v21 dictionaryWithObjectsAndKeys:{v20, v17, v22, v10, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", self), @"NSAffectedStoresErrorKey", 0}];
        v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v19 code:134030 userInfo:v23];
        v25 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134030, @"Could not write to file.", [MEMORY[0x1E695DF20] dictionaryWithObject:v24 forKey:@"NSCoreDataPrimaryError"]);
        objc_exception_throw(v25);
      }

LABEL_16:
      v16 = 4;
      goto LABEL_19;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (NSString)configurationName
{
  if (self->_configurationName)
  {
    return self->_configurationName;
  }

  else
  {
    return @"PF_DEFAULT_CONFIGURATION_NAME";
  }
}

- (void)dealloc
{
  p_entitiesInConfiguration = &self->_entitiesInConfiguration;
  if (atomic_load(&self->_entitiesInConfiguration))
  {
    v5 = atomic_load(p_entitiesInConfiguration);
    CFRelease(v5);
    atomic_store(0, p_entitiesInConfiguration);
  }

  oidFactories = self->_oidFactories;
  if (oidFactories)
  {
    v7 = atomic_load(oidFactories);
    if (v7 != self)
    {
      v8 = 0;
      do
      {
        v9 = atomic_load(&self->_oidFactories[v8]);
        [v9 _storeDeallocated];
        v10 = atomic_load(&self->_oidFactories[++v8]);
      }

      while (v10 != self);
    }
  }

  temporaryIDClass = self->_temporaryIDClass;
  if (temporaryIDClass)
  {
    [temporaryIDClass _storeDeallocated];

    self->_temporaryIDClass = 0;
  }

  self->_modelMap = 0;
  atomic_store(0, &self->_coordinator);
  self->_configurationName = 0;
  v12 = self->_oidFactories;
  if (v12)
  {
    v13 = atomic_load(v12);
    if (v13 != self)
    {
      v14 = 0;
      do
      {
        v15 = atomic_load(&self->_oidFactories[v14]);
        if (v15)
        {
          CFRelease(v15);
        }

        atomic_store(0, &self->_oidFactories[v14]);
        v16 = atomic_load(&self->_oidFactories[++v14]);
      }

      while (v16 != self);
    }

    PF_FREE_OBJECT_ARRAY(self->_oidFactories);
    self->_oidFactories = 0;
  }

  self->_defaultFaultHandler = 0;
  self->_coreSpotlightDelegate = 0;
  self->_url = 0;
  self->_options = 0;

  v17.receiver = self;
  v17.super_class = NSPersistentStore;
  [(NSPersistentStore *)&v17 dealloc];
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  p_coordinator = &self->_coordinator;
  v3 = atomic_load(&self->_coordinator);
  if ([v3 _isDeallocating])
  {
    return 0;
  }

  v5 = atomic_load(p_coordinator);
  v6 = v5;

  return v6;
}

- (BOOL)isCloudKitEnabled
{
  v2 = [(NSPersistentStore *)self mirroringDelegate];
  if (v2)
  {
    objc_opt_class();
    LOBYTE(v2) = objc_opt_isKindOfClass();
  }

  return v2 & 1;
}

- (id)mirroringDelegate
{
  v2 = [(NSDictionary *)[(NSPersistentStore *)self options] objectForKey:@"NSPersistentStoreMirroringOptionsKey"];

  return [v2 objectForKey:@"NSPersistentStoreMirroringDelegateOptionKey"];
}

- (void)_didLoadMetadata
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)[(NSPersistentStore *)self metadata] objectForKey:0x1EF3FD428];
  if (v3)
  {
    v4 = v3;
    PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
    if ([v4 compare:PFBundleVersion] == 1)
    {
      v6 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v7 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v9 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v7)
        {
          if (v9)
          {
            goto LABEL_10;
          }
        }

        else if (v9)
        {
LABEL_10:
          *buf = 138412802;
          v12 = v4;
          v13 = 2112;
          v14 = PFBundleVersion;
          v15 = 2112;
          v16 = [(NSPersistentStore *)self URL];
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: This store file was previously used on a build with Persistence-%@ but is now running on a build with Persistence-%@. %@\n", buf, 0x20u);
        }
      }

      _NSCoreDataLog_console(1, "This store file was previously used on a build with Persistence-%@ but is now running on a build with Persistence-%@. %@", v4, PFBundleVersion, [(NSPersistentStore *)self URL]);
      objc_autoreleasePoolPop(v6);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (_BYTE)_updateMetadata
{
  if (result)
  {
    v1 = result;
    if ((result[56] & 1) == 0)
    {
      v2 = [result _updatedMetadataWithSeed:objc_msgSend(result includeVersioning:{"metadata"), 1}];

      return [v1 setMetadata:v2];
    }
  }

  return result;
}

- (__CFSet)_entitiesForConfiguration
{
  v40 = *MEMORY[0x1E69E9840];
  p_entitiesInConfiguration = &self->_entitiesInConfiguration;
  if (atomic_load(&self->_entitiesInConfiguration))
  {
LABEL_27:
    Mutable = atomic_load(p_entitiesInConfiguration);
    goto LABEL_28;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  context = objc_autoreleasePoolPush();
  v6 = [self->_managedObjectModel entitiesForConfiguration:{-[NSPersistentStore configurationName](self, "configurationName")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        CFSetAddValue(Mutable, *(*(&v33 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v11 = [(NSPersistentStore *)self ancillaryModels];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [v11 objectForKey:*(*(&v29 + 1) + 8 * v15)];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v26;
          do
          {
            v20 = 0;
            do
            {
              if (*v26 != v19)
              {
                objc_enumerationMutation(v16);
              }

              CFSetAddValue(Mutable, *(*(&v25 + 1) + 8 * v20++));
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
          }

          while (v18);
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v13);
  }

  objc_autoreleasePoolPop(context);
  v21 = 0;
  atomic_compare_exchange_strong(&self->_entitiesInConfiguration, &v21, Mutable);
  if (v21)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    p_entitiesInConfiguration = &self->_entitiesInConfiguration;
    goto LABEL_27;
  }

LABEL_28:
  v22 = *MEMORY[0x1E69E9840];
  return Mutable;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = NSPersistentStore;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (URL: %@)", -[NSPersistentStore description](&v6, sel_description), -[NSPersistentStore URL](self, "URL")];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (NSString)identifier
{
  v3 = [(NSDictionary *)[(NSPersistentStore *)self metadata] objectForKey:@"NSStoreUUID"];
  if (!v3)
  {
    v3 = +[_PFRoutines _getUUID];
    [(NSPersistentStore *)self setIdentifier:v3];
  }

  return v3;
}

- (NSPersistentStore)init
{
  v3.receiver = self;
  v3.super_class = NSPersistentStore;
  return [(NSPersistentStore *)&v3 init];
}

+ (NSDictionary)metadataForPersistentStoreWithURL:(NSURL *)url error:(NSError *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (BOOL)setMetadata:(NSDictionary *)metadata forPersistentStoreWithURL:(NSURL *)url error:(NSError *)error
{
  if (objc_opt_class() == a1)
  {

    return [NSPersistentStoreCoordinator _setMetadata:0 forPersistentStoreOfType:url URL:0 options:error error:?];
  }

  else if (-[NSURL isFileURL](url, "isFileURL") && (v8 = -[NSURL path](url, "path"), ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0))
  {
    if (error)
    {
      v10 = objc_alloc(MEMORY[0x1E695DF20]);
      v11 = [v10 initWithObjectsAndKeys:{url, *MEMORY[0x1E696A998], 0}];
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:v11];
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

- (NSPersistentStore)initWithPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)root configurationName:(NSString *)name URL:(NSURL *)url options:(NSDictionary *)options
{
  objc_opt_self();
  objc_opt_class();
  objc_opt_class();
  v18.receiver = self;
  v18.super_class = NSPersistentStore;
  v11 = [(NSPersistentStore *)&v18 init];
  if (v11)
  {
    *(v11 + 56) = *(v11 + 56) & 0xFE | [-[NSDictionary objectForKey:](options objectForKey:{@"NSReadOnlyPersistentStoreOption", "BOOLValue"}];
    atomic_store(root, v11 + 1);
    *(v11 + 2) = [(NSString *)name copy];
    if (root)
    {
      modelMap = root->_modelMap;
    }

    else
    {
      modelMap = 0;
    }

    v13 = modelMap;
    *(v11 + 12) = v13;
    if (v13)
    {
      entityCount = v13->_entityCount;
    }

    else
    {
      entityCount = 0;
    }

    v15 = PF_CALLOC_OBJECT_ARRAY(entityCount + 1);
    *(v11 + 5) = v15;
    atomic_store(v11, &v15[entityCount]);
    *(v11 + 3) = url;
    if (url)
    {
      CFRetain(url);
    }

    *(v11 + 4) = [(NSDictionary *)options copy];
    atomic_store(0, v11 + 61);
    *(v11 + 10) = [(NSPersistentStoreCoordinator *)root managedObjectModel];
    *(v11 + 9) = [(NSDictionary *)options objectForKey:@"NSCoreDataCoreSpotlightExporter"];
    v16 = objc_alloc(objc_opt_class());
    *(v11 + 6) = [NSFaultHandler initWithPersistenceStore:v16];
  }

  return v11;
}

- (void)setURL:(NSURL *)URL
{
  [(NSPersistentStore *)self _setMetadataDirty:1];
  v5 = self->_url;
  if (v5 != URL)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    self->_url = URL;
    if (URL)
    {

      CFRetain(URL);
    }
  }
}

- (void)setIdentifier:(NSString *)identifier
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[NSPersistentStore metadata](self, "metadata")}];
  v6 = v5;
  if (identifier)
  {
    [v5 setObject:identifier forKey:@"NSStoreUUID"];
  }

  else
  {
    [v5 removeObjectForKey:@"NSStoreUUID"];
  }

  [(NSPersistentStore *)self setMetadata:v6];
}

- (NSDictionary)metadata
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)setMetadata:(NSDictionary *)metadata
{
  v5 = [(NSPersistentStore *)self _rawMetadata];
  if (v5 != metadata && ([(NSDictionary *)metadata isEqual:v5]& 1) == 0)
  {

    [(NSPersistentStore *)self _setMetadataDirty:1];
  }
}

- (NSString)type
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)willRemoveFromPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)coordinator
{
  coreSpotlightDelegate = self->_coreSpotlightDelegate;
  if (coreSpotlightDelegate)
  {
    atomic_store(0, coreSpotlightDelegate + 72);
    v5 = *(coreSpotlightDelegate + 4);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__NSCoreDataCoreSpotlightDelegate__invalidate__block_invoke;
    v6[3] = &unk_1E6EC16F0;
    v6[4] = coreSpotlightDelegate;
    [v5 performBlock:v6];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];

  [(NSPersistentStore *)self _unload:0];
}

- (id)_rawMetadata__
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (BOOL)_replacePersistentStoreAtURL:(id)a3 destinationOptions:(id)a4 withPersistentStoreFromURL:(id)a5 sourceOptions:(id)a6 error:(id *)a7
{
  if (!a5)
  {
    return 0;
  }

  v11 = [a5 isFileURL];
  v12 = 0;
  if (a3 && v11)
  {
    if (![a3 isFileURL])
    {
      return 0;
    }

    v13 = [objc_msgSend(a3 "path")];
    v14 = [objc_msgSend(a5 "path")];
    v15 = [a6 objectForKey:@"NSPersistentStoreUnlinkDestroyOption"];
    if (v15 && [v15 BOOLValue])
    {
      rename(v14, v13, v16);
      if (!v17)
      {
        return 1;
      }

      v18 = *__error();
      if (v18 == 2)
      {
        return 1;
      }

      if (a7)
      {
        v26 = MEMORY[0x1E696ABC0];
        v27 = *MEMORY[0x1E696A798];
        v28 = MEMORY[0x1E695DF20];
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:{objc_msgSend(a5, "path"), objc_msgSend(a3, "path"), 0}];
        v30 = [v26 errorWithDomain:v27 code:v18 userInfo:{objc_msgSend(v28, "dictionaryWithObjectsAndKeys:", v29, *MEMORY[0x1E696A368], 0)}];
        v12 = 0;
        *a7 = v30;
        return v12;
      }

      return 0;
    }

    v19 = copyfile_state_alloc();
    if (copyfile(v14, v13, v19, 0xFu) && (v20 = *__error(), v20 != 2))
    {
      if (a7)
      {
        v21 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A798];
        v23 = MEMORY[0x1E695DF20];
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:{objc_msgSend(a5, "path"), objc_msgSend(a3, "path"), 0}];
        v25 = [v21 errorWithDomain:v22 code:v20 userInfo:{objc_msgSend(v23, "dictionaryWithObjectsAndKeys:", v24, *MEMORY[0x1E696A368], 0)}];
        v12 = 0;
        *a7 = v25;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }

    copyfile_state_free(v19);
  }

  return v12;
}

+ (BOOL)_destroyPersistentStoreAtURL:(id)a3 options:(id)a4 error:(id *)a5
{
  if (a3)
  {
    v7 = [a3 isFileURL];
    if (v7)
    {
      if (unlink([objc_msgSend(a3 "path")]) && (v8 = *__error(), v8 != 2))
      {
        if (a5)
        {
          v9 = MEMORY[0x1E696ABC0];
          v10 = *MEMORY[0x1E696A798];
          v11 = MEMORY[0x1E695DF20];
          v12 = [a3 path];
          v13 = [v9 errorWithDomain:v10 code:v8 userInfo:{objc_msgSend(v11, "dictionaryWithObjectsAndKeys:", v12, *MEMORY[0x1E696A368], 0)}];
          LOBYTE(v7) = 0;
          *a5 = v13;
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }

      else
      {
        LOBYTE(v7) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)_rekeyPersistentStoreAtURL:(id)a3 options:(id)a4 withKey:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Store does not support encryption", a4, a5, *MEMORY[0x1E696A578], 0)}];
  }

  return 0;
}

- (id)objectIDFactoryForEntity:(id)a3
{
  if (!self->_oidFactories)
  {
    return 0;
  }

  if (![(NSPersistentStore *)self _persistentStoreCoordinator])
  {
    v12 = [_NSCoreDataException exceptionWithName:134098 code:@"objectIDFactoryForEntity invoked after store was removed" reason:0 userInfo:?];
    objc_exception_throw(v12);
  }

  v5 = _PFModelMapSlotForEntity(self->_modelMap, a3);
  if (v5 < 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"objectIDFactoryForEntity invoked before model was finalized" userInfo:0]);
  }

  v6 = v5;
  v7 = atomic_load(&self->_oidFactories[v5]);
  if (!v7)
  {
    v8 = [(objc_class *)[(NSPersistentStore *)self _objectIDClass] classWithStore:self andEntity:a3];
    v7 = v8;
    v9 = 0;
    atomic_compare_exchange_strong(&self->_oidFactories[v6], &v9, v8);
    if (v9)
    {
      v10 = atomic_load(&self->_oidFactories[v6]);
      if (v8 != v10)
      {
        [(objc_class *)v8 _storeDeallocated];
      }

      return v10;
    }

    else
    {
      [a3 _addFactoryToRetainList:v8];
    }
  }

  return v7;
}

- (BOOL)load:(id *)a3
{
  v4 = [(NSPersistentStore *)self identifier];
  oidFactories = self->_oidFactories;
  if (oidFactories)
  {
    v6 = atomic_load(oidFactories);
    if (v6 != self)
    {
      v7 = 0;
      do
      {
        v8 = atomic_load(&self->_oidFactories[v7]);
        [v8 setObjectStoreIdentifier:v4];
        v9 = atomic_load(&self->_oidFactories[++v7]);
      }

      while (v9 != self);
    }
  }

  temporaryIDClass = self->_temporaryIDClass;
  if (temporaryIDClass)
  {
    [temporaryIDClass setObjectStoreIdentifier:v4];
  }

  return 1;
}

- (BOOL)_unload:(id *)a3
{
  v5 = atomic_load(&self->_cleanOnRemove);
  v6 = [(NSURL *)self->_url path];
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!self->_url)
  {
    result = 0;
    goto LABEL_9;
  }

  v7 = v6;
  if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    result = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    if (a3 && !result)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to unload store file because file at path '%@' could not be removed", v7), @"reason", 0)}];
      result = 0;
      *a3 = v9;
    }
  }

  else
  {
LABEL_7:
    result = 1;
  }

LABEL_9:
  atomic_store(0, &self->_coordinator);
  return result;
}

+ (BOOL)doURLStuff:(id)a3 createdStubFile:(BOOL *)a4 readOnly:(BOOL *)a5 error:(id *)a6 options:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a3 || ![a3 isFileURL])
  {
    goto LABEL_49;
  }

  v12 = [a3 path];
  v13 = [v12 fileSystemRepresentation];
  v14 = [a7 valueForKey:@"NSReadOnlyPersistentStoreOption"];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 BOOLValue];
    v17 = [v15 BOOLValue] ^ 1;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v18 = [a7 valueForKey:@"NSPersistentStoreFileProtectionKey"];
  if (v18)
  {
    if ([*MEMORY[0x1E696A3A8] isEqualToString:v18])
    {
      LODWORD(v18) = 4;
      goto LABEL_23;
    }

    if ([*MEMORY[0x1E696A388] isEqualToString:v18])
    {
      LODWORD(v18) = 3;
      goto LABEL_23;
    }

    if ([*MEMORY[0x1E696A380] isEqualToString:v18])
    {
      LODWORD(v18) = 2;
      goto LABEL_23;
    }

    if ([*MEMORY[0x1E696A378] isEqualToString:v18])
    {
      LODWORD(v18) = 1;
      goto LABEL_23;
    }

    if ([*MEMORY[0x1E696A398] isEqualToString:v18])
    {
      LODWORD(v18) = 7;
      goto LABEL_23;
    }

    v19 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_22;
    }

    v46 = v19;
    v20 = _pflogging_catastrophic_mode;
    log = _PFLogGetLogStream(1);
    v21 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      v19 = v46;
      if (v21)
      {
        *buf = 138412290;
        v48 = v18;
LABEL_76:
        _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", buf, 0xCu);
      }
    }

    else
    {
      v19 = v46;
      if (v21)
      {
        *buf = 138412290;
        v48 = v18;
        goto LABEL_76;
      }
    }

LABEL_22:
    _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v18);
    objc_autoreleasePoolPop(v19);
    LODWORD(v18) = 0;
  }

LABEL_23:
  if (access(v13, 4))
  {
    v22 = *__error();
    if (v22 <= 12)
    {
      if (v22 != 1)
      {
        if (v22 == 2)
        {
          if (v16)
          {
            if (a6)
            {
              v23 = 0;
              *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Attempt to open missing file read only; code = %d", 2), @"reason"}];
              goto LABEL_50;
            }

LABEL_56:
            v23 = 0;
            goto LABEL_50;
          }

          v33 = _PFCeateStubFileAtPath(v13, v18);
          if ((v33 & 0x80000000) == 0)
          {
            close(v33);
            v23 = 1;
            *a4 = 1;
            goto LABEL_50;
          }

          if (!a6)
          {
LABEL_74:
            [_PFRoutines _logFileAccessDebugInformation:v13 checkSandboxAccess:"file-write-create"];
            +[_PFRoutines _logDirectoryAccessDebugInformation:checkSandboxAccess:](_PFRoutines, [v12 stringByDeletingLastPathComponent], "file-write-create");
            goto LABEL_56;
          }

          v34 = *__error();
          v35 = MEMORY[0x1E696ABC0];
          v36 = *MEMORY[0x1E696A250];
          v37 = MEMORY[0x1E695DF20];
          if (v34 > 12)
          {
            if (v34 != 13)
            {
              if (v34 == 17)
              {
                v39 = @"File unexpectedly appeared during sanity check";
LABEL_69:
                v40 = [v37 dictionaryWithObject:v39 forKey:@"reason"];
                v41 = v35;
                v42 = v36;
                v43 = 512;
LABEL_73:
                *a6 = [v41 errorWithDomain:v42 code:v43 userInfo:v40];
                goto LABEL_74;
              }

              goto LABEL_67;
            }

            v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No access to create file; code = %d", 13];
          }

          else
          {
            if (v34 != 1)
            {
              if (v34 == 2)
              {
                v38 = MEMORY[0x1E696AEC0];
                v34 = 2;
LABEL_68:
                v39 = [v38 stringWithFormat:@"Failed to create file; code = %d", v34];
                goto LABEL_69;
              }

LABEL_67:
              v38 = MEMORY[0x1E696AEC0];
              goto LABEL_68;
            }

            v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No permissions to create file; code = %d", 1];
          }

          v40 = [v37 dictionaryWithObject:v44 forKey:@"reason"];
          v41 = v35;
          v42 = v36;
          v43 = 513;
          goto LABEL_73;
        }

        goto LABEL_43;
      }

      if (a6)
      {
        *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Failure to access file: %d", 1), @"reason"}];
      }

      [_PFRoutines _logFileAccessDebugInformation:v13 checkSandboxAccess:"file-read-data"];
LABEL_49:
      v23 = 1;
      goto LABEL_50;
    }

    if (v22 == 20)
    {
      if (a6)
      {
        v29 = MEMORY[0x1E696ABC0];
        v30 = *MEMORY[0x1E696A250];
        v31 = MEMORY[0x1E695DF20];
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Component of path %@ is not a directory", v12];
        *a6 = [v29 errorWithDomain:v30 code:258 userInfo:{objc_msgSend(v31, "dictionaryWithObjectsAndKeys:", v32, @"reason", v12, *MEMORY[0x1E696A368], 0)}];
      }

      v25 = "file-write-create";
    }

    else
    {
      if (v22 != 13)
      {
LABEL_43:
        if (a6)
        {
          *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unknown failure to access file: %d", v22), @"reason"}];
        }

        v26 = v13;
        v25 = 0;
        goto LABEL_55;
      }

      if (a6)
      {
        *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:257 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"No access to file; code = %d", 13), @"reason"}];
      }

      v25 = "file-read-data";
    }

LABEL_54:
    v26 = v13;
LABEL_55:
    [_PFRoutines _logFileAccessDebugInformation:v26 checkSandboxAccess:v25];
    goto LABEL_56;
  }

  if (v17)
  {
    v23 = 1;
    if (!access(v13, 2))
    {
      goto LABEL_50;
    }

    v24 = *__error();
    *a5 = 1;
    if (a6)
    {
      *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:513 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"No write permissions to file: %d", v24), @"reason"}];
    }

    v25 = "file-write-data";
    goto LABEL_54;
  }

  if (v15)
  {
    goto LABEL_49;
  }

  v23 = 1;
  if (access(v13, 2))
  {
    *a5 = 1;
    [_PFRoutines _logFileAccessDebugInformation:v13 checkSandboxAccess:"file-write-data"];
  }

LABEL_50:
  v27 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)executeRequest:(id)a3 withContext:(id)a4 error:(id *)a5
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)newValuesForObjectWithID:(id)a3 withContext:(id)a4 error:(id *)a5
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)newValueForRelationship:(id)a3 forObjectWithID:(id)a4 withContext:(id)a5 error:(id *)a6
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)a3 generation:(id)a4
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)_mapsSyncDidUnregisterObjectsWithIDs_112229675:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)a3 generation:(id)a4
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (id)obtainPermanentIDsForObjects:(id)a3 error:(id *)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_updatedMetadataWithSeed:(id)a3 includeVersioning:(BOOL)a4
{
  v4 = a4;
  v7 = [a3 mutableCopy];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  }

  v8 = [(NSPersistentStore *)self type];
  if (v8 || (v8 = [a3 objectForKey:@"NSStoreType"]) != 0)
  {
    [v7 setObject:v8 forKey:@"NSStoreType"];
  }

  v9 = [a3 objectForKey:@"NSStoreUUID"];
  if (!v9)
  {
    v9 = [(NSPersistentStore *)self identifier];
    if (!v9)
    {
      v9 = +[_PFRoutines _getUUID];
    }
  }

  [v7 setObject:v9 forKey:@"NSStoreUUID"];
  if (v4)
  {
    PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
    [v7 setObject:PFBundleVersion forKey:0x1EF3FD408];
    v11 = [v7 objectForKey:0x1EF3FD428];
    if (!v11 || [PFBundleVersion compare:v11] == 1)
    {
      [v7 setObject:PFBundleVersion forKey:0x1EF3FD428];
    }

    v12 = [(NSString *)[(NSPersistentStore *)self type] isEqualToString:@"SQLite"]|| [(NSString *)[(NSPersistentStore *)self type] isEqualToString:@"Binary"];
    v13 = v12 | [(NSString *)[(NSPersistentStore *)self type] isEqualToString:@"NSXPCStore"];
    v14 = [(NSPersistentStore *)self _persistentStoreCoordinator];
    if (v14)
    {
      v15 = [v14 managedObjectModel];
      v16 = [v15 entityVersionHashesByName];
      [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 3), 0x1EF3FD3E8}];
      [v7 setObject:v16 forKey:@"NSStoreModelVersionHashes"];
      if (v15)
      {
        v17 = [objc_msgSend(v15 "versionIdentifiers")];
      }

      else
      {
        v17 = 0;
      }

      [v7 setObject:v17 forKey:@"NSStoreModelVersionIdentifiers"];
      if (v13)
      {
        [v7 setObject:-[NSManagedObjectModel _entityVersionHashesDigestFrom:](v15 forKey:{v16), 0x1EF3FCE28}];
      }

      v18 = [v15 versionChecksum];
      v19 = @"NSStoreModelVersionChecksumKey";
      v20 = v7;
      goto LABEL_22;
    }

    if (![v7 objectForKey:0x1EF3FD3E8])
    {
      v21 = [(NSDictionary *)[(NSPersistentStore *)self metadata] objectForKey:0x1EF3FD3E8];
      if (v21)
      {
        [v7 setObject:v21 forKey:0x1EF3FD3E8];
      }
    }

    if (![v7 objectForKey:@"NSStoreModelVersionHashes"])
    {
      v22 = [(NSDictionary *)[(NSPersistentStore *)self metadata] objectForKey:@"NSStoreModelVersionHashes"];
      if (v22)
      {
        [v7 setObject:v22 forKey:@"NSStoreModelVersionHashes"];
      }
    }

    if (![v7 objectForKey:0x1EF3FCE28])
    {
      if (v13)
      {
        v23 = [(NSDictionary *)[(NSPersistentStore *)self metadata] objectForKey:0x1EF3FCE28];
        if (v23)
        {
          [v7 setObject:v23 forKey:0x1EF3FCE28];
        }
      }
    }

    if (![v7 objectForKey:@"NSStoreModelVersionChecksumKey"])
    {
      objc_opt_class();
      v24 = (objc_opt_isKindOfClass() & 1) != 0 ? [(NSPersistentStore *)self _rawMetadata]: [(NSPersistentStore *)self metadata];
      v25 = [(NSDictionary *)v24 objectForKey:@"NSStoreModelVersionChecksumKey"];
      if (v25)
      {
        [v7 setObject:v25 forKey:@"NSStoreModelVersionChecksumKey"];
      }
    }

    if (![v7 objectForKey:@"NSStoreModelVersionIdentifiers"])
    {
      v27 = [(NSDictionary *)[(NSPersistentStore *)self metadata] objectForKey:@"NSStoreModelVersionIdentifiers"];
      if (v27)
      {
        v18 = v27;
        v20 = v7;
        v19 = @"NSStoreModelVersionIdentifiers";
LABEL_22:
        [v20 setObject:v18 forKey:v19];
      }
    }
  }

  return v7;
}

- (id)currentQueryGeneration
{
  if (!currentQueryGeneration_token)
  {
    v2 = [[_NSQueryGenerationToken alloc] initForNonGenerationalStore:?];
    v3 = 0;
    atomic_compare_exchange_strong(&currentQueryGeneration_token, &v3, v2);
    if (v3)
    {
    }
  }

  v4 = currentQueryGeneration_token;

  return v4;
}

- (id)reopenQueryGenerationWithIdentifier:(id)a3 error:(id *)a4
{
  if (![_NSQueryGenerationToken identifierIsForNonGenerationalStore:a3])
  {
    return 0;
  }

  return [(NSPersistentStore *)self currentQueryGeneration];
}

- (id)_allOrderKeysForDestination:(id)a3 inRelationship:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF435350];
  }

  return 0;
}

@end