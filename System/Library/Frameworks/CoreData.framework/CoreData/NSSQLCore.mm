@interface NSSQLCore
+ (BOOL)_destroyPersistentStoreAtURL:(id)l options:(id)options error:(id *)error;
+ (BOOL)_rekeyPersistentStoreAtURL:(id)l options:(id)options withKey:(id)key error:(id *)error;
+ (BOOL)_replacePersistentStoreAtURL:(id)l destinationOptions:(id)options withPersistentStoreFromURL:(id)rL sourceOptions:(id)sourceOptions error:(id *)error;
+ (BOOL)dropPersistentHistoryforPersistentStoreWithURL:(id)l options:(id)options error:(id *)error;
+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l options:(id)options error:(id *)error;
+ (id)_databaseKeyFromValue:(uint64_t)value;
+ (id)_figureOutWhereExternalReferencesEndedUpRelativeTo:(id)to;
+ (id)cachedModelForPersistentStoreWithURL:(id)l options:(id)options error:(id *)error;
+ (id)databaseKeyFromOptionsDictionary:(uint64_t)dictionary;
+ (id)metadataForPersistentStoreWithURL:(id)l options:(id)options error:(id *)error;
+ (uint64_t)sanityCheckFileAtURL:(void *)l options:(uint64_t *)options error:;
+ (void)initialize;
- (BOOL)_hasActiveGenerations;
- (BOOL)_initializeQueryGenerationTrackingConnection;
- (BOOL)_prepareForExecuteRequest:(id)request withContext:(id)context error:(id *)error;
- (BOOL)_unload:(id *)_unload;
- (BOOL)finishDeferredLightweightMigration:(BOOL)migration withError:(id *)error;
- (BOOL)load:(id *)load;
- (BOOL)loadMetadata:(id *)metadata;
- (BOOL)supportsConcurrentRequestHandling;
- (BOOL)supportsGenerationalQuerying;
- (Class)_objectIDClass;
- (Class)objectIDFactoryForEntity:(id)entity;
- (Class)objectIDFactoryForPersistentHistoryEntity:(id)entity;
- (NSError)_newRowDataForXPCFetch:(void *)fetch variables:(uint64_t)variables context:(NSError *)context error:;
- (NSError)_newValuesForRelationship:(void *)relationship forObjectWithID:(void *)d withContext:(NSError *)context error:;
- (NSSQLCore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options;
- (id)_allOrderKeysForDestination:(id)destination inRelationship:(id)relationship error:(id *)error;
- (id)_newObjectIDForEntity:(id)entity referenceData64:(unint64_t)data64;
- (id)_newOrderedRelationshipInformationForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)_rebuildDerivedAttributeTriggerSchemaUsingConnection:(uint64_t)connection recomputeValues:(uint64_t)values error:;
- (id)cachedModelWithError:(id)result;
- (id)connectionForMigration;
- (id)currentChangeToken;
- (id)currentQueryGeneration;
- (id)executeRequest:(id)request withContext:(id)context error:(id *)error;
- (id)externalDataReferencesDirectory;
- (id)fileBackedFuturesDirectory;
- (id)harvestIndexStatisticsFromConnections;
- (id)identifier;
- (id)metadata;
- (id)metadataToWrite;
- (id)newObjectIDForEntity:(id)entity pk:(int64_t)pk;
- (id)newObjectIDSetsForToManyPrefetchingRequest:(uint64_t)request andSourceObjectIDs:(uint64_t)ds orderColumnName:;
- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)propertyNamesInHistoryChangeDataForEntityDescription:(id)description;
- (id)reopenQueryGenerationWithIdentifier:(id)identifier error:(id *)error;
- (uint64_t)_disconnectAllConnections;
- (uint64_t)_obtainPermanentIDsForObjects:(uint64_t)result withNotification:(char *)notification error:(void *)error;
- (uint64_t)_rebuildTriggerSchemaUsingConnection:(uint64_t)connection recomputeValues:(uint64_t)values error:(uint64_t)error;
- (uint64_t)_refreshTriggerValues:(uint64_t)values;
- (uint64_t)_registerNewQueryGenerationSnapshot:(uint64_t)snapshot;
- (uint64_t)entityForObjectID:(uint64_t)result;
- (uint64_t)newForeignKeyID:(void *)d entity:(uint64_t)entity;
- (unint64_t)entityIDForEntityDescription:(id)description;
- (void)_cacheRows:(void *)result;
- (void)_initializeQueryGenerationConnectionForProtectionClasses;
- (void)_mapsSyncDidUnregisterObjectsWithIDs_112229675:(id)ds_112229675;
- (void)_postChangeNotificationWithTransactionID:(uint64_t)d;
- (void)_rebuildIndiciesSynchronously:(BOOL)synchronously;
- (void)_setHasAncillaryModels:(BOOL)models;
- (void)_setMetadata:(int)metadata clean:;
- (void)_setupHistoryModelForPSC:(void *)c withExcludedEntityNames:;
- (void)_setupObserver:(id)observer;
- (void)_supportDirectoryPath;
- (void)_uncacheRows:(void *)result;
- (void)_updateAutoVacuumMetadataWithValues:(unsigned __int8 *)values;
- (void)_updateToVersion640PrimaryKeyTableUsingStatements:(void *)statements connection:;
- (void)_useModel:(id *)model;
- (void)dealloc;
- (void)dispatchRequest:(uint64_t)request withRetries:;
- (void)freeQueryGenerationWithIdentifier:(id)identifier;
- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)ds generation:(id)generation;
- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)ds generation:(id)generation;
- (void)rowCacheForGeneration:(void *)result;
- (void)schemaValidationConnection;
- (void)setIdentifier:(id)identifier;
- (void)setMetadata:(id)metadata;
- (void)setURL:(id)l;
- (void)willRemoveFromPersistentStoreCoordinator:(id)coordinator;
@end

@implementation NSSQLCore

- (BOOL)supportsGenerationalQuerying
{
  if (self)
  {
    selfCopy = self;
    self = [(NSPersistentStore *)self _persistentStoreCoordinator];
    if (self)
    {
      if ([(NSDictionary *)[(NSPersistentStore *)selfCopy options] objectForKey:@"NSXPCStoreDelegate"])
      {
        LOBYTE(self) = 0;
      }

      else
      {
        LOBYTE(self) = (*(&selfCopy->_sqlCoreFlags + 1) & 0x40) == 0;
      }
    }
  }

  return self;
}

- (id)externalDataReferencesDirectory
{
  v34 = *MEMORY[0x1E69E9840];
  p_externalDataReferencesDirectory = &self->_externalDataReferencesDirectory;
  if (atomic_load(&self->_externalDataReferencesDirectory))
  {
    goto LABEL_14;
  }

  if ((*&self->_sqlCoreFlags & 2) != 0)
  {
    v5 = [-[NSSQLCore _supportDirectoryPath](self) stringByAppendingPathComponent:@"_EXTERNAL_DATA"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v27 = 0;
    if ([defaultManager fileExistsAtPath:v5 isDirectory:&v27])
    {
      if (v27)
      {
        goto LABEL_8;
      }

      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D930];
      v9 = @"Can't create external reference directory (file exists)";
      v10 = 0;
    }

    else
    {
      v26 = 0;
      if ([defaultManager createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v26])
      {
        goto LABEL_8;
      }

      LogStream = _PFLogGetLogStream(17);
      v19 = @"null";
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        if (v26)
        {
          v20 = v26;
        }

        else
        {
          v20 = @"null";
        }

        userInfo = [(__CFString *)v26 userInfo];
        *buf = 138412802;
        v29 = v20;
        v30 = 2112;
        v31 = v5;
        v32 = 2112;
        v33 = userInfo;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Fatal error creating external data directory: %@ at path %@ with ui %@\n", buf, 0x20u);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        if (v26)
        {
          v19 = v26;
        }

        userInfo2 = [(__CFString *)v26 userInfo];
        *buf = 138412802;
        v29 = v19;
        v30 = 2112;
        v31 = v5;
        v32 = 2112;
        v33 = userInfo2;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Fatal error creating external data directory: %@ at path %@ with ui %@", buf, 0x20u);
      }

      v24 = MEMORY[0x1E695DF30];
      v25 = *MEMORY[0x1E695D930];
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:v26 forKey:*MEMORY[0x1E696AA08]];
      v9 = @"Can't create support directory (can't create directory)";
      v7 = v24;
      v8 = v25;
    }

    objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:v10]);
  }

  v5 = &stru_1EF3F1768;
LABEL_8:
  v11 = 0;
  atomic_compare_exchange_strong(&self->_externalDataReferencesDirectory, &v11, v5);
  if (v11)
  {
  }

  if ((*&self->_sqlCoreFlags & 0x80) != 0)
  {
    v12 = atomic_load(&self->_externalDataReferencesDirectory);
    if (([&stru_1EF3F1768 isEqual:v12] & 1) == 0)
    {
      v13 = [-[_PFGarbageManager temporaryLinksDirectoryForStore:](+[_PFGarbageManager defaultInstance](_PFGarbageManager "defaultInstance")];
      v14 = 0;
      atomic_compare_exchange_strong(&self->_externalDataLinksDirectory, &v14, v13);
      if (v14)
      {
      }
    }
  }

LABEL_14:
  v15 = atomic_load(p_externalDataReferencesDirectory);
  if ([&stru_1EF3F1768 isEqual:v15])
  {
    result = 0;
  }

  else
  {
    result = atomic_load(&self->_externalDataReferencesDirectory);
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)fileBackedFuturesDirectory
{
  v31 = *MEMORY[0x1E69E9840];
  p_fileBackedFuturesPath = &self->_fileBackedFuturesPath;
  if (atomic_load(&self->_fileBackedFuturesPath))
  {
    goto LABEL_10;
  }

  if ((*(&self->_sqlCoreFlags + 1) & 0x20) == 0)
  {
    v5 = &stru_1EF3F1768;
    goto LABEL_8;
  }

  v5 = [-[NSSQLCore _supportDirectoryPath](self) stringByAppendingPathComponent:@"_FBF"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v24 = 0;
  if ([defaultManager fileExistsAtPath:v5 isDirectory:&v24])
  {
    if ((v24 & 1) == 0)
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D930];
      v9 = @"Can't create fbf directory (file exists)";
      v10 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v23 = 0;
    if (([defaultManager createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v23] & 1) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      v16 = @"null";
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        if (v23)
        {
          v17 = v23;
        }

        else
        {
          v17 = @"null";
        }

        userInfo = [(__CFString *)v23 userInfo];
        *buf = 138412802;
        v26 = v17;
        v27 = 2112;
        v28 = v5;
        v29 = 2112;
        v30 = userInfo;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Fatal error creating file backed futures directory: %@ at path %@ with ui %@\n", buf, 0x20u);
      }

      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        if (v23)
        {
          v16 = v23;
        }

        userInfo2 = [(__CFString *)v23 userInfo];
        *buf = 138412802;
        v26 = v16;
        v27 = 2112;
        v28 = v5;
        v29 = 2112;
        v30 = userInfo2;
        _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Fatal error creating file backed futures directory: %@ at path %@ with ui %@", buf, 0x20u);
      }

      v21 = MEMORY[0x1E695DF30];
      v22 = *MEMORY[0x1E695D930];
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:v23 forKey:*MEMORY[0x1E696AA08]];
      v9 = @"Can't create support directory (can't create directory)";
      v7 = v21;
      v8 = v22;
LABEL_24:
      objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:v10]);
    }
  }

LABEL_8:
  v11 = 0;
  atomic_compare_exchange_strong(&self->_fileBackedFuturesPath, &v11, v5);
  if (v11)
  {
  }

LABEL_10:
  v12 = atomic_load(p_fileBackedFuturesPath);
  if ([&stru_1EF3F1768 isEqual:v12])
  {
    result = 0;
  }

  else
  {
    result = atomic_load(&self->_fileBackedFuturesPath);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)harvestIndexStatisticsFromConnections
{
  if (!self || (*(self + 202) & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v2 = *(self + 128);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__NSSQLCore_harvestIndexStatisticsFromConnections__block_invoke;
  v4[3] = &unk_1E6EC3890;
  v4[4] = &v5;
  [(NSSQLCoreDispatchManager *)v2 enumerateAvailableConnectionsWithBlock:v4];
  v1 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v1;
}

- (id)metadataToWrite
{
  if (!self)
  {
    return 0;
  }

  v2 = atomic_load((self + 196));
  if (v2)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  v4 = [*(self + 160) copy];
  os_unfair_lock_unlock((self + 152));
  return v4;
}

- (BOOL)_hasActiveGenerations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    if (atomic_load(&self->_queryGenerationTrackingConnection))
    {
      v3 = atomic_load(&self->_queryGenerationTrackingConnection);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __34__NSSQLCore__hasActiveGenerations__block_invoke;
      v6[3] = &unk_1E6EC1860;
      v6[4] = self;
      v6[5] = &v7;
      [(NSSQLiteConnection *)v3 performAndWait:v6];
    }
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)identifier
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_storeMetadata objectForKey:@"NSStoreUUID"];
  os_unfair_lock_unlock(&self->_sqlCoreStateLock);
  return v3;
}

- (uint64_t)_disconnectAllConnections
{
  if (result)
  {
    v1 = result;
    [(NSSQLCoreDispatchManager *)*(result + 128) disconnectAllConnections];
    v2 = *(v1 + 120);
    if (v2)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __38__NSSQLCore__disconnectAllConnections__block_invoke;
      v6[3] = &unk_1E6EC16F0;
      v6[4] = v1;
      [(NSSQLiteConnection *)v2 performAndWait:v6];
    }

    if (atomic_load((v1 + 208)))
    {
      v4 = atomic_load((v1 + 208));
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __38__NSSQLCore__disconnectAllConnections__block_invoke_2;
      v5[3] = &unk_1E6EC16F0;
      v5[4] = v1;
      [(NSSQLiteConnection *)v4 performAndWait:v5];
    }

    result = *(v1 + 268);
    if (result != -1)
    {
      result = notify_cancel(result);
      *(v1 + 268) = -1;
    }
  }

  return result;
}

- (void)dealloc
{
  observer = self->_observer;
  if (observer)
  {
    objc_storeWeak(&observer->_core, 0);

    self->_observer = 0;
  }

  cache_event_source = self->_cache_event_source;
  if (cache_event_source)
  {
    dispatch_source_cancel(cache_event_source);
    if ((*(&self->_sqlCoreFlags + 2) & 2) != 0)
    {
      dispatch_resume(self->_cache_event_source);
      *&self->_sqlCoreFlags &= ~0x20000u;
    }

    dispatch_release(self->_cache_event_source);
    self->_cache_event_source = 0;
  }

  schemaValidationConnection = self->_schemaValidationConnection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __20__NSSQLCore_dealloc__block_invoke;
  v17[3] = &unk_1E6EC16F0;
  v17[4] = self;
  [(NSSQLiteConnection *)schemaValidationConnection performAndWait:v17];

  self->_schemaValidationConnection = 0;
  self->_adapter = 0;

  self->_generationalRowCache = 0;
  self->_storeMetadata = 0;

  self->_usedIndexes = 0;
  self->_historyTrackingOptions = 0;
  v6 = atomic_load(&self->_externalDataReferencesDirectory);

  atomic_store(0, &self->_externalDataReferencesDirectory);
  v7 = atomic_load(&self->_externalDataLinksDirectory);

  atomic_store(0, &self->_externalDataLinksDirectory);
  v8 = atomic_load(&self->_fileBackedFuturesPath);

  atomic_store(0, &self->_fileBackedFuturesPath);
  [(NSSQLCoreDispatchManager *)self->_dispatchManager disconnectAllConnections];

  self->_dispatchManager = 0;
  remoteNotificationToken = self->_remoteNotificationToken;
  if (remoteNotificationToken != -1)
  {
    notify_cancel(remoteNotificationToken);
    self->_remoteNotificationToken = -1;
  }

  p_queryGenerationTrackingConnection = &self->_queryGenerationTrackingConnection;
  if (atomic_load(&self->_queryGenerationTrackingConnection))
  {
    v12 = atomic_load(p_queryGenerationTrackingConnection);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __20__NSSQLCore_dealloc__block_invoke_2;
    v16[3] = &unk_1E6EC16F0;
    v16[4] = self;
    [(NSSQLiteConnection *)v12 performAndWait:v16];
    v13 = atomic_load(p_queryGenerationTrackingConnection);

    atomic_store(0, p_queryGenerationTrackingConnection);
  }

  dbKey = self->_dbKey;
  if (dbKey)
  {
    CFRelease(dbKey);
    self->_dbKey = 0;
  }

  self->_writerSerializationMutex = 0;
  self->_ancillaryModels = 0;

  self->_ancillarySQLModels = 0;
  self->_model = 0;
  v15.receiver = self;
  v15.super_class = NSSQLCore;
  [(NSPersistentStore *)&v15 dealloc];
}

- (id)currentChangeToken
{
  selfCopy = self;
  if (self)
  {
    if ((*(&self->_sqlCoreFlags + 1) & 4) != 0)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = -1;
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __31__NSSQLCore_currentChangeToken__block_invoke;
      v10 = &unk_1E6EC3818;
      selfCopy2 = self;
      v12 = &v13;
      v3 = [[NSSQLBlockRequestContext alloc] initWithBlock:&v7 context:0 sqlCore:self];
      [(NSSQLCore *)selfCopy dispatchRequest:v3 withRetries:0];

      if (v14[3] == -1)
      {
        v5 = 0;
      }

      else
      {
        v4 = [_NSPersistentHistoryToken alloc];
        v5 = -[_NSPersistentHistoryToken initWithTransactionNumber:andStoreID:](v4, "initWithTransactionNumber:andStoreID:", [MEMORY[0x1E696AD98] numberWithLongLong:{v14[3], v7, v8, v9, v10, selfCopy2, v12}], -[NSSQLCore identifier](selfCopy, "identifier"));
      }

      selfCopy = v5;
      _Block_object_dispose(&v13, 8);
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

sqlite3_int64 __31__NSSQLCore_currentChangeToken__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  [(NSSQLiteConnection *)v3 connect];
  result = -[NSSQLiteConnection fetchMaxPrimaryKeyForEntity:](v3, [objc_msgSend(objc_msgSend(*(a1 + 32) "ancillarySQLModels")]);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (void)initialize
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  objc_opt_class();
  objc_opt_self();
  dword_1ED4BE7BC = [_PFRoutines sensitiveIntegerValueForOverride:?];
  v3 = [_PFRoutines stringValueForOverride:?];
  if (v3 && (v4 = v3, [v3 length]))
  {
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 1;
  }

  dword_1ED4BE7C0 = intValue;
  v7 = +[_PFTask getNumActiveProcessors]> 1 && dword_1ED4BE7C0 > 0;
  dword_1ED4BE7C0 = v7;
  [objc_msgSend(MEMORY[0x1E695DF00] "distantPast")];
  NSSQLDistantPastTimeInterval = v8;
  [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
  NSSQLDistantFutureTimeInterval = v9;
  qword_1ED4BE7D0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  qword_1ED4BE7C8 = [_PFRoutines integerValueForOverride:?];
  if (qword_1ED4BE7C8 >= 1)
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v17 = qword_1ED4BE7C8;
          v12 = "CoreData: error: Dictionary Result type overridden to use Buffered Results with level - %ld!!!\n";
LABEL_29:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v17 = qword_1ED4BE7C8;
          v12 = "CoreData: warning: Dictionary Result type overridden to use Buffered Results with level - %ld!!!\n";
          goto LABEL_29;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    _NSCoreDataLog_console(v13, "Dictionary Result type overridden to use Buffered Results with level - %ld!!!", qword_1ED4BE7C8);
    objc_autoreleasePoolPop(v10);
  }

  _CoreData_debugVMBufferAllocations = [_PFRoutines BOOLValueForOverride:?];
  _CoreData_debugOneBufferAllocations = [_PFRoutines BOOLValueForOverride:?];
  _CoreData_debuguseManyResultSetsAllocations = [_PFRoutines BOOLValueForOverride:?];
  _MergedGlobals_158 = [_PFRoutines integerValueForOverride:?]!= 0;
  v14 = getprogname();
  if (v14)
  {
    v15 = v14;
    if (!strncmp("xctest", v14, 6uLL) || !strncmp("mapssyncd", v15, 9uLL))
    {
      byte_1ED4BE7B9 = 1;
    }
  }

LABEL_2:
  v2 = *MEMORY[0x1E69E9840];
}

void __32__NSSQLCore__loadAndSetMetadata__block_invoke(uint64_t a1, uint64_t a2)
{
  if ([(NSSQLiteConnection *)a2 canConnect])
  {
    if (![*(a1 + 32) metadata])
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSSQLCore *)*(a1 + 32) _setMetadata:v4 clean:1];
    }

    [(NSSQLiteConnection *)a2 connect];
    *(*(*(a1 + 40) + 8) + 40) = [(NSSQLiteConnection *)a2 fetchMetadata];
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      v6 = [*(a1 + 32) _updatedMetadataWithSeed:v5 includeVersioning:0];
      v7 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:0x1EF3FD3E8] != 0;
      v8 = *(a1 + 32);

      [(NSSQLCore *)v8 _setMetadata:v6 clean:v7];
    }
  }
}

- (void)schemaValidationConnection
{
  if ((result[25] & 0x40) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = result[15];
    if (!result)
    {
      result = [[NSSQLiteConnection alloc] initForSQLCore:v1];
      v1[15] = result;
    }
  }

  return result;
}

- (id)metadata
{
  os_unfair_lock_lock_with_options();
  v3 = self->_storeMetadata;
  os_unfair_lock_unlock(&self->_sqlCoreStateLock);
  return v3;
}

- (id)currentQueryGeneration
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (![(NSSQLCore *)self supportsGenerationalQuerying])
  {
    v16 = MEMORY[0x1E695DF30];
    v26 = @"store";
    v27[0] = self;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    objc_exception_throw([v16 exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unsupported feature in this configuration" userInfo:v17]);
  }

  v3 = atomic_load(&self->_queryGenerationTrackingConnection);
  if (!v3 && ![(NSSQLCore *)self _initializeQueryGenerationTrackingConnection])
  {
    v12 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v13 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v15 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        if (v15)
        {
          *buf = 0;
LABEL_18:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: initializing query generations connection for current failed.\n", buf, 2u);
        }
      }

      else if (v15)
      {
        *buf = 0;
        goto LABEL_18;
      }
    }

    _NSCoreDataLog_console(1, "initializing query generations connection for current failed.");
    objc_autoreleasePoolPop(v12);
    v9 = 0;
    goto LABEL_10;
  }

  *buf = 0;
  v21 = buf;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__24;
  v24 = __Block_byref_object_dispose__24;
  v25 = 0;
  os_unfair_lock_lock_with_options();
  remoteStoresDidChange = self->_remoteStoresDidChange;
  os_unfair_lock_unlock(&self->_sqlCoreStateLock);
  if (remoteStoresDidChange)
  {
    v5 = [NSSQLBlockRequestContext alloc];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __35__NSSQLCore_currentQueryGeneration__block_invoke;
    v19[3] = &unk_1E6EC3708;
    v19[4] = self;
    v6 = [(NSSQLBlockRequestContext *)v5 initWithBlock:v19 context:0 sqlCore:self];
    [(NSSQLCore *)self dispatchRequest:v6 withRetries:0];
  }

  v7 = atomic_load(&self->_queryGenerationTrackingConnection);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __35__NSSQLCore_currentQueryGeneration__block_invoke_404;
  v18[3] = &unk_1E6EC1860;
  v18[4] = self;
  v18[5] = buf;
  [(NSSQLiteConnection *)v7 performAndWait:v18];
  if (*(v21 + 5))
  {
    v8 = [_NSQueryGenerationToken alloc];
    v9 = [(_NSQueryGenerationToken *)v8 initWithValue:self store:1 freeValueOnDealloc:?];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(buf, 8);
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __35__NSSQLCore_currentQueryGeneration__block_invoke_404(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 208));
  *(*(*(a1 + 40) + 8) + 40) = [(NSSQLiteConnection *)v2 currentQueryGenerationIdentifier];
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v4 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v6 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v6)
        {
          v9 = 0;
          v7 = &v9;
LABEL_10:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: SQLCore failed to get a currentQueryGeneration\n", v7, 2u);
        }
      }

      else if (v6)
      {
        LOWORD(v8) = 0;
        v7 = &v8;
        goto LABEL_10;
      }
    }

    _NSCoreDataLog_console(1, "SQLCore failed to get a currentQueryGeneration", v8);
    objc_autoreleasePoolPop(v3);
  }
}

void __40__NSSQLCore__ensureDatabaseMatchesModel__block_invoke(uint64_t a1)
{
  v264 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1 || ![(NSSQLiteConnection *)v1 _hasTableWithName:0 isTemp:?])
  {
    goto LABEL_369;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) model];
    if (v4)
    {
      v5 = *(v4 + 32);
    }

    else
    {
      v5 = 0;
    }

    os_unfair_lock_lock_with_options();
    v6 = [*(v2 + 160) objectForKey:@"NSStoreModelVersionHashes"];
    os_unfair_lock_unlock((v2 + 152));
    if (v6)
    {
      v259 = 0u;
      v258 = 0u;
      memset(buf, 0, sizeof(buf));
      v7 = [v5 countByEnumeratingWithState:buf objects:&v248 count:16];
      if (!v7)
      {
        goto LABEL_26;
      }

      v8 = **&buf[16];
LABEL_9:
      v9 = 0;
      while (1)
      {
        if (**&buf[16] != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![v6 objectForKey:{objc_msgSend(*(*(*&buf[8] + 8 * v9) + 24), "name")}])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:buf objects:&v248 count:16];
          if (v7)
          {
            goto LABEL_9;
          }

          goto LABEL_26;
        }
      }
    }

    [(NSSQLiteConnection *)v3 connect];
    v10 = [MEMORY[0x1E695DFD8] setWithArray:-[NSSQLiteConnection fetchTableNames](v3)];
    v256 = 0u;
    v255 = 0u;
    v254 = 0u;
    v253 = 0u;
    v11 = [v5 countByEnumeratingWithState:&v253 objects:&v247 count:16];
    if (v11)
    {
      v12 = *v254;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v254 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v253 + 1) + 8 * i);
          if (v14 && !v14[20] && ([v10 containsObject:{objc_msgSend(*(*(&v253 + 1) + 8 * i), "tableName")}] & 1) == 0)
          {
            v200 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find table for entity '%@' in database at URL '%@'", objc_msgSend(objc_msgSend(v14, "entityDescription"), "name"), objc_msgSend(v2, "URL")];
            v252[0] = v200;
            v201 = *MEMORY[0x1E696A368];
            v251[0] = @"message";
            v251[1] = v201;
            v252[1] = [objc_msgSend(v2 "URL")];
            v202 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v252 forKeys:v251 count:2];
            v203 = [_NSCoreDataException exceptionWithName:134020 code:v200 reason:v202 userInfo:?];
            objc_exception_throw(v203);
          }
        }

        v11 = [v5 countByEnumeratingWithState:&v253 objects:&v247 count:16];
      }

      while (v11);
    }
  }

LABEL_26:
  v15 = *(a1 + 40);
  if (!v15)
  {
    goto LABEL_115;
  }

  v16 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v17 = [*(v15 + 160) objectForKey:0x1EF3FD408];
  os_unfair_lock_unlock((v15 + 152));
  [v17 unsignedIntegerValue];
  if ([v17 intValue] >= 901 && objc_msgSend(v17, "intValue") <= 966 && (objc_msgSend(v15, "isReadOnly") & 1) == 0 && objc_msgSend(objc_msgSend(objc_msgSend(v15, "URL"), "path"), "hasSuffix:", @"com.apple.security.keychain-defaultContext.TrustedPeersHelper.db"))
  {
    v18 = [objc_msgSend(objc_msgSend(objc_msgSend(v15 "metadata")];
    v19 = v16 ? v18 : 1;
    if ((v19 & 1) == 0 && [(NSSQLiteConnection *)v16 _hasTableWithName:0 isTemp:?])
    {
      [(NSSQLiteConnection *)v16 _dropTableWithName:?];
    }
  }

  if (([objc_msgSend(objc_msgSend(v15 "options")] & 1) != 0 || !objc_msgSend(v15, "_persistentStoreCoordinator") || (objc_msgSend(v15, "isReadOnly") & 1) != 0 || objc_msgSend(v17, "intValue") >= 619 && (objc_msgSend(v17, "intValue") < 960 || objc_msgSend(v17, "intValue") > 971))
  {
    v20 = 0;
    goto LABEL_41;
  }

  os_unfair_lock_lock_with_options();
  [*(v15 + 160) setValue:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreRebuildIndicies"];
  atomic_store(0, (v15 + 196));
  [v15 _setMetadataDirty:1];
  os_unfair_lock_unlock((v15 + 152));
  v30 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v32 = [v15 identifier];
        *buf = 138412290;
        *&buf[4] = v32;
        v33 = "CoreData: error: Rebuilding indicies for store - %@\n";
LABEL_70:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v33, buf, 0xCu);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(2);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v37 = [v15 identifier];
        *buf = 138412290;
        *&buf[4] = v37;
        v33 = "CoreData: warning: Rebuilding indicies for store - %@\n";
        goto LABEL_70;
      }
    }
  }

  v34 = _pflogging_catastrophic_mode == 0;
  v35 = [v15 identifier];
  v36 = 1;
  if (v34)
  {
    v36 = 2;
  }

  _NSCoreDataLog_console(v36, "Rebuilding indicies for store - %@", v35);
  objc_autoreleasePoolPop(v30);
  v20 = 1;
LABEL_41:
  if ([v17 intValue] >= 1002 && objc_msgSend(v17, "intValue") <= 1004 && (objc_msgSend(v15, "isReadOnly") & 1) == 0 && objc_msgSend(v15, "model"))
  {
    v21 = getprogname();
    if (!v21 || strncmp("assetsd", v21, 7uLL) && strncmp("photolibraryd", v21, 0xDuLL) || ![objc_msgSend(objc_msgSend(v15 "URL")])
    {
      goto LABEL_112;
    }

    v22 = [[NSSQLColumn alloc] initWithColumnName:@"COUNT(*)" sqlType:1];
    v23 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v22, 0}];

    v24 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(*) FROM (SELECT * FROM %@ WHERE Z_ENT = 0 LIMIT 1)", @"ZSHAREPARTICIPANT"]);
    LODWORD(v22) = [(NSSQLiteConnection *)v16 selectCountWithStatement:v24];

    [(NSSQLiteConnection *)v16 setColumnsToFetch:v23];
    if (!v22 || (v25 = -[NSSQLiteConnection newFetchedArray](v16), ![v25 count]) || (v26 = objc_msgSend(objc_msgSend(v25, "objectAtIndex:", 0), "unsignedIntValue"), v25, !v26))
    {
LABEL_111:
      [(NSSQLiteConnection *)v16 endFetchAndRecycleStatement:?];
LABEL_112:
      [(NSSQLiteConnection *)v16 endFetchAndRecycleStatement:?];
      goto LABEL_113;
    }

    v27 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(2))
    {
      if (_pflogging_catastrophic_mode)
      {
        v28 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        *buf = 0;
        v29 = "CoreData: error: Corruption encountered during a past migration - DB integrity has been compromised.\n";
      }

      else
      {
        v28 = _PFLogGetLogStream(2);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        *buf = 0;
        v29 = "CoreData: warning: Corruption encountered during a past migration - DB integrity has been compromised.\n";
      }

      _os_log_error_impl(&dword_18565F000, v28, OS_LOG_TYPE_ERROR, v29, buf, 2u);
    }

LABEL_72:
    if (_pflogging_catastrophic_mode)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    _NSCoreDataLog_console(v38, "Corruption encountered during a past migration - DB integrity has been compromised.");
    objc_autoreleasePoolPop(v27);
    v39 = [MEMORY[0x1E695DF70] array];
    memset(&v247, 0, 64);
    v40 = [v15 model];
    if (v40)
    {
      v41 = *(v40 + 32);
    }

    else
    {
      v41 = 0;
    }

    v42 = [v41 countByEnumeratingWithState:&v247 objects:&v248 count:16];
    if (v42)
    {
      v43 = **&v247.st_uid;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (**&v247.st_uid != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(v247.st_ino + 8 * j);
          if ([objc_msgSend(v45 "tableName")])
          {
            [v39 addObject:v45];
          }
        }

        v42 = [v41 countByEnumeratingWithState:&v247 objects:&v248 count:16];
      }

      while (v42);
    }

    v46 = [v39 count] == 1;
    v47 = objc_autoreleasePoolPush();
    IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(2);
    if (v46)
    {
      if (!IsOSLogEnabled)
      {
        goto LABEL_98;
      }

      if (_pflogging_catastrophic_mode)
      {
        v49 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_98;
        }

        v50 = [v39 firstObject];
        if (v50)
        {
          v51 = *(v50 + 184);
        }

        else
        {
          v51 = 0;
        }

        *buf = 138412546;
        *&buf[4] = @"ZSHAREPARTICIPANT";
        *&buf[12] = 1024;
        *&buf[14] = v51;
        v52 = "CoreData: error: Attempting Repair - One entity found for table - %@ setting Z_ENT = %u\n";
      }

      else
      {
        v49 = _PFLogGetLogStream(2);
        if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_98;
        }

        v204 = [v39 firstObject];
        if (v204)
        {
          v205 = *(v204 + 184);
        }

        else
        {
          v205 = 0;
        }

        *buf = 138412546;
        *&buf[4] = @"ZSHAREPARTICIPANT";
        *&buf[12] = 1024;
        *&buf[14] = v205;
        v52 = "CoreData: warning: Attempting Repair - One entity found for table - %@ setting Z_ENT = %u\n";
      }

      _os_log_error_impl(&dword_18565F000, v49, OS_LOG_TYPE_ERROR, v52, buf, 0x12u);
LABEL_98:
      if (_pflogging_catastrophic_mode)
      {
        v55 = [v39 firstObject];
        v56 = 1;
        if (!v55)
        {
LABEL_101:
          _NSCoreDataLog_console(v56, "Attempting Repair - One entity found for table - %@ setting Z_ENT = %u", @"ZSHAREPARTICIPANT", v55);
          objc_autoreleasePoolPop(v47);
          [(NSSQLiteConnection *)v16 endFetchAndRecycleStatement:?];
          v57 = MEMORY[0x1E696AEC0];
          v58 = [v39 firstObject];
          if (v58)
          {
            v59 = *(v58 + 184);
          }

          else
          {
            v59 = 0;
          }

          v60 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [v39 firstObject], objc_msgSend(v57, "stringWithFormat:", @"UPDATE OR FAIL %@ SET Z_ENT = %u", @"ZSHAREPARTICIPANT", v59));
          [(NSSQLiteConnection *)v16 prepareAndExecuteSQLStatement:v60];

          goto LABEL_111;
        }
      }

      else
      {
        v55 = [v39 firstObject];
        v56 = 2;
        if (!v55)
        {
          goto LABEL_101;
        }
      }

      v55 = *(v55 + 184);
      goto LABEL_101;
    }

    if (IsOSLogEnabled)
    {
      if (_pflogging_catastrophic_mode)
      {
        v53 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = @"ZSHAREPARTICIPANT";
          *&buf[12] = 2112;
          *&buf[14] = v39;
          v54 = "CoreData: error: Unable to Repair - More than one entity found for table - %@ Entites - %@\n";
LABEL_394:
          _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, v54, buf, 0x16u);
        }
      }

      else
      {
        v53 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = @"ZSHAREPARTICIPANT";
          *&buf[12] = 2112;
          *&buf[14] = v39;
          v54 = "CoreData: warning: Unable to Repair - More than one entity found for table - %@ Entites - %@\n";
          goto LABEL_394;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v61 = 1;
    }

    else
    {
      v61 = 2;
    }

    _NSCoreDataLog_console(v61, "Unable to Repair - More than one entity found for table - %@ Entites - %@", @"ZSHAREPARTICIPANT", v39);
    objc_autoreleasePoolPop(v47);
    goto LABEL_111;
  }

LABEL_113:
  if (v20)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_115:
  v62 = *(a1 + 40);
  if (!v62)
  {
    goto LABEL_296;
  }

  v63 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v64 = [*(v62 + 160) objectForKey:?];
  os_unfair_lock_unlock((v62 + 152));
  v65 = [v64 unsignedIntegerValue];
  if ([v62 _persistentStoreCoordinator])
  {
    if (v65 <= 0xB9 && ([v62 isReadOnly] & 1) == 0)
    {
      v66 = [(NSSQLiteConnection *)v63 copyRawIntegerRowsForSQL:?];
      v67 = v66;
      if (v66)
      {
        if (*CFArrayGetValueAtIndex(v66, 0) < 1 || *CFArrayGetValueAtIndex(v67, 1))
        {
          CFRelease(v67);
        }

        else
        {
          CFRelease(v67);
          v80 = [objc_msgSend(objc_msgSend(v62 "URL")];
          memset(&v248, 0, 512);
          memset(&v247, 0, sizeof(v247));
          v81 = access(v80, 6);
          if (stat(v80, &v247) || (st_size = v247.st_size) == 0 || statfs(v80, &v248))
          {
            if (v81)
            {
              goto LABEL_123;
            }
          }

          else if (v81 || (v248.f_bavail * v248.f_bsize) <= st_size)
          {
            goto LABEL_123;
          }

          v146 = [(NSSQLiteConnection *)v63 copyRawIntegerRowsForSQL:?];
          if (v146)
          {
            CFRelease(v146);
          }

          v147 = [(NSSQLiteConnection *)v63 copyRawIntegerRowsForSQL:?];
          if (v147)
          {
            CFRelease(v147);
          }

          [(NSSQLiteConnection *)v63 disconnect];
          [(NSSQLiteConnection *)v63 connect];
        }
      }
    }
  }

LABEL_123:
  v68 = *(a1 + 40);
  if (!v68)
  {
    goto LABEL_296;
  }

  v69 = *(a1 + 32);
  if ([*(a1 + 40) _persistentStoreCoordinator])
  {
    if (([v68 isReadOnly] & 1) == 0)
    {
      [(NSSQLiteConnection *)v69 connect];
      if (!v69 || ([(NSSQLiteConnection *)v69 _hasTableWithName:0 isTemp:?]& 1) == 0)
      {
        -[NSSQLiteConnection saveCachedModel:](v69, [objc_msgSend(v68 "model")]);
      }
    }
  }

  v70 = *(a1 + 40);
  if (!v70)
  {
    goto LABEL_296;
  }

  v71 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v72 = [*(v70 + 160) objectForKey:0x1EF3FD408];
  os_unfair_lock_unlock((v70 + 152));
  v73 = [v72 unsignedIntegerValue];
  v74 = [v70 _persistentStoreCoordinator];
  v75 = v74;
  if (!v74 || v73 - 701 > 0x2D)
  {
    if (!v74)
    {
      goto LABEL_146;
    }

    goto LABEL_139;
  }

  if ([v70 isReadOnly])
  {
LABEL_139:
    if (([v70 isReadOnly] & 1) == 0 && v73 - 960 >= 0xFFFFFFFFFFFFFFC5)
    {
      v217 = v70;
      *&v260 = 0;
      v215 = v71;
      [(NSSQLiteConnection *)v71 connect];
      [(NSSQLiteConnection *)v71 _dropAllTriggers];
      if (([NSSQLCore _rebuildTriggerSchemaUsingConnection:v70 recomputeValues:v71 error:&v260]& 1) != 0)
      {
        goto LABEL_161;
      }

      v78 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v79 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_373;
          }
        }

        else
        {
          v79 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
LABEL_373:
            v192 = v260;
            v193 = [v260 userInfo];
            v248.f_bsize = 138412546;
            *&v248.f_iosize = v192;
            WORD2(v248.f_blocks) = 2112;
            *(&v248.f_blocks + 6) = v193;
            _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, "CoreData: error: Repairing triggers failed with error = %@ and userInfo = %@\n", &v248, 0x16u);
          }
        }
      }

      _NSCoreDataLog_console(1, "Repairing triggers failed with error = %@ and userInfo = %@", v260, [v260 userInfo]);
      objc_autoreleasePoolPop(v78);
LABEL_161:
      v246 = 0;
      v83 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v208 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v244 = 0u;
      v245 = 0u;
      v242 = 0u;
      v243 = 0u;
      v84 = *(v70 + 104);
      if (v84)
      {
        v85 = *(v84 + 24);
      }

      else
      {
        v85 = 0;
      }

      v86 = [v85 allValues];
      v87 = [v86 countByEnumeratingWithState:&v242 objects:&v247 count:16];
      obj = v86;
      if (v87)
      {
        v209 = *v243;
        do
        {
          v88 = 0;
          v206 = v87;
          do
          {
            if (*v243 != v209)
            {
              objc_enumerationMutation(obj);
            }

            v210 = v88;
            v89 = *(*(&v242 + 1) + 8 * v88);
            v238 = 0u;
            v239 = 0u;
            v240 = 0u;
            v241 = 0u;
            v90 = [objc_msgSend(v89 "entityDescription")];
            v91 = [v90 countByEnumeratingWithState:&v238 objects:buf count:16];
            if (v91)
            {
              v216 = *v239;
              v212 = v90;
              while (2)
              {
                for (k = 0; k != v91; ++k)
                {
                  if (*v239 != v216)
                  {
                    objc_enumerationMutation(v90);
                  }

                  v93 = *(*(&v238 + 1) + 8 * k);
                  if ([v93 _propertyType] == 2 && !objc_msgSend(v93, "attributeType"))
                  {
                    if ([v93 isTransient])
                    {
                      v94 = [objc_msgSend(-[NSEntityDescription _attributeNamed:](objc_msgSend(v89 "entityDescription")];
                      if (v94)
                      {
                        v95 = -[NSSQLLocationAttributeRTreeExtension initWithObjectFromUserInfo:onAttributeNamed:onEntity:]([NSSQLLocationAttributeRTreeExtension alloc], "initWithObjectFromUserInfo:onAttributeNamed:onEntity:", v94, [v93 name], v89);
                        v96 = v95;
                        v90 = v212;
                        if (v95)
                        {
                          v213 = v95;
                          v211 = [(NSSQLLocationAttributeRTreeExtension *)v95 validate:&v246];
                          if (v211)
                          {
                            v236 = 0u;
                            v237 = 0u;
                            v234 = 0u;
                            v235 = 0u;
                            v97 = [(NSSQLLocationAttributeRTreeExtension *)v96 dropSQLStrings];
                            v98 = [(NSArray *)v97 countByEnumeratingWithState:&v234 objects:&v253 count:16];
                            if (v98)
                            {
                              v99 = *v235;
                              do
                              {
                                for (m = 0; m != v98; ++m)
                                {
                                  if (*v235 != v99)
                                  {
                                    objc_enumerationMutation(v97);
                                  }

                                  v101 = [[NSSQLiteStatement alloc] initWithEntity:v89 sqlString:*(*(&v234 + 1) + 8 * m)];
                                  [v83 addObject:v101];
                                }

                                v98 = [(NSArray *)v97 countByEnumeratingWithState:&v234 objects:&v253 count:16];
                              }

                              while (v98);
                            }

                            v232 = 0u;
                            v233 = 0u;
                            v230 = 0u;
                            v231 = 0u;
                            v102 = [(NSSQLLocationAttributeRTreeExtension *)v213 insertSQLStrings];
                            v103 = [(NSArray *)v102 countByEnumeratingWithState:&v230 objects:v252 count:16];
                            if (v103)
                            {
                              v104 = *v231;
                              do
                              {
                                for (n = 0; n != v103; ++n)
                                {
                                  if (*v231 != v104)
                                  {
                                    objc_enumerationMutation(v102);
                                  }

                                  v106 = [[NSSQLiteStatement alloc] initWithEntity:v89 sqlString:*(*(&v230 + 1) + 8 * n)];
                                  [v83 addObject:v106];
                                }

                                v103 = [(NSArray *)v102 countByEnumeratingWithState:&v230 objects:v252 count:16];
                              }

                              while (v103);
                            }

                            v228 = 0u;
                            v229 = 0u;
                            v226 = 0u;
                            v227 = 0u;
                            v107 = [(NSSQLLocationAttributeRTreeExtension *)v213 bulkUpdateSQLStrings];
                            v108 = [(NSArray *)v107 countByEnumeratingWithState:&v226 objects:v251 count:16];
                            if (v108)
                            {
                              v109 = *v227;
                              do
                              {
                                for (ii = 0; ii != v108; ++ii)
                                {
                                  if (*v227 != v109)
                                  {
                                    objc_enumerationMutation(v107);
                                  }

                                  v111 = [[NSSQLiteStatement alloc] initWithEntity:v89 sqlString:*(*(&v226 + 1) + 8 * ii)];
                                  [v83 addObject:v111];
                                }

                                v108 = [(NSArray *)v107 countByEnumeratingWithState:&v226 objects:v251 count:16];
                              }

                              while (v108);
                            }
                          }

                          v90 = v212;
                          if (!v211)
                          {
                            v119 = 0;
                            goto LABEL_222;
                          }
                        }
                      }
                    }
                  }
                }

                v91 = [v90 countByEnumeratingWithState:&v238 objects:buf count:16];
                if (v91)
                {
                  continue;
                }

                break;
              }
            }

            v224 = 0u;
            v225 = 0u;
            v222 = 0u;
            v223 = 0u;
            v112 = [-[NSSQLEntity rtreeIndexes](v89) allValues];
            v113 = [v112 countByEnumeratingWithState:&v222 objects:v250 count:16];
            if (v113)
            {
              v114 = *v223;
              do
              {
                for (jj = 0; jj != v113; ++jj)
                {
                  if (*v223 != v114)
                  {
                    objc_enumerationMutation(v112);
                  }

                  [v83 addObjectsFromArray:{objc_msgSend(*(*(&v222 + 1) + 8 * jj), "generateStatementsForStore:", v217)}];
                }

                v113 = [v112 countByEnumeratingWithState:&v222 objects:v250 count:16];
              }

              while (v113);
            }

            v88 = v210 + 1;
          }

          while (v210 + 1 != v206);
          v87 = [obj countByEnumeratingWithState:&v242 objects:&v247 count:16];
        }

        while (v87);
      }

      if ([v83 count])
      {
        [(NSSQLiteConnection *)v71 beginTransaction];
        v220 = 0u;
        v221 = 0u;
        v218 = 0u;
        v219 = 0u;
        v116 = [v83 countByEnumeratingWithState:&v218 objects:v249 count:16];
        if (v116)
        {
          v117 = *v219;
          do
          {
            for (kk = 0; kk != v116; ++kk)
            {
              if (*v219 != v117)
              {
                objc_enumerationMutation(v83);
              }

              [(NSSQLiteConnection *)v71 prepareAndExecuteSQLStatement:?];
            }

            v116 = [v83 countByEnumeratingWithState:&v218 objects:v249 count:16];
          }

          while (v116);
        }

        [(NSSQLiteConnection *)v71 commitTransaction];
        v119 = 1;
      }

      else
      {
        v119 = 1;
      }

LABEL_222:
      [(NSSQLiteConnection *)v215 endFetchAndRecycleStatement:?];
      v120 = v246;

      v121 = 0;
      v122 = v246;
      if (v119)
      {
        goto LABEL_236;
      }

      if (v246)
      {
        *&v260 = v246;
      }

      else
      {
        v123 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
        {
          v248.f_bsize = 136315394;
          *&v248.f_iosize = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
          WORD2(v248.f_blocks) = 1024;
          *(&v248.f_blocks + 6) = 5139;
          _os_log_error_impl(&dword_18565F000, v123, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", &v248, 0x12u);
        }

        v124 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_FAULT))
        {
          v248.f_bsize = 136315394;
          *&v248.f_iosize = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
          WORD2(v248.f_blocks) = 1024;
          *(&v248.f_blocks + 6) = 5139;
          _os_log_fault_impl(&dword_18565F000, v124, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", &v248, 0x12u);
        }
      }

      v125 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v126 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_374;
          }
        }

        else
        {
          v126 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
LABEL_374:
            v194 = v260;
            v195 = [v260 userInfo];
            v248.f_bsize = 138412546;
            *&v248.f_iosize = v194;
            WORD2(v248.f_blocks) = 2112;
            *(&v248.f_blocks + 6) = v195;
            _os_log_error_impl(&dword_18565F000, v126, OS_LOG_TYPE_ERROR, "CoreData: error: Repairing RTree triggers failed with error = %@ and userInfo = %@\n", &v248, 0x16u);
          }
        }
      }

      _NSCoreDataLog_console(1, "Repairing RTree triggers failed with error = %@ and userInfo = %@", v260, [v260 userInfo]);
      objc_autoreleasePoolPop(v125);
LABEL_236:
      [NSSQLCore _rebuildDerivedAttributeTriggerSchemaUsingConnection:v217 recomputeValues:v215 error:?];
      goto LABEL_239;
    }

LABEL_146:
    if ((([v70 isReadOnly] & 1) != 0 || v73 - 1100 < 0xFFFFFFFFFFFFFF72 || !-[NSManagedObjectModel _hasEntityWithDerivedAttribute](objc_msgSend(v75, "managedObjectModel"))) && ((objc_msgSend(v70, "isReadOnly") & 1) != 0 || v73 > 0x4BC || !-[NSManagedObjectModel _hasEntityWithDerivedAttribute](objc_msgSend(v75, "managedObjectModel"))))
    {
      goto LABEL_240;
    }

    [(NSSQLiteConnection *)v71 connect];
    [(NSSQLiteConnection *)v71 _dropAllDATriggers];
    [NSSQLCore _rebuildDerivedAttributeTriggerSchemaUsingConnection:v70 recomputeValues:v71 error:?];
    goto LABEL_239;
  }

  [(NSSQLiteConnection *)v71 connect];
  *&v247.st_dev = 0;
  if (([NSSQLCore _rebuildTriggerSchemaUsingConnection:v70 recomputeValues:v71 error:&v247]& 1) == 0)
  {
    v76 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v77 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_381;
        }
      }

      else
      {
        v77 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
LABEL_381:
          v198 = *&v247.st_dev;
          v199 = [*&v247.st_dev userInfo];
          v248.f_bsize = 138412546;
          *&v248.f_iosize = v198;
          WORD2(v248.f_blocks) = 2112;
          *(&v248.f_blocks + 6) = v199;
          _os_log_error_impl(&dword_18565F000, v77, OS_LOG_TYPE_ERROR, "CoreData: error: Repairing old triggers failed with error = %@ and userInfo = %@\n", &v248, 0x16u);
        }
      }
    }

    _NSCoreDataLog_console(1, "Repairing old triggers failed with error = %@ and userInfo = %@", *&v247.st_dev, [*&v247.st_dev userInfo]);
    objc_autoreleasePoolPop(v76);
  }

LABEL_239:
  *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_240:
  v127 = *(a1 + 40);
  if (!v127)
  {
    goto LABEL_296;
  }

  v128 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v129 = [*(v127 + 160) objectForKey:0x1EF3FD408];
  os_unfair_lock_unlock((v127 + 152));
  v130 = [v127 _persistentStoreCoordinator];
  v131 = [v129 unsignedIntegerValue];
  v132 = [*(v127 + 232) objectForKey:@"NSPersistentHistoryTrackingKey"];
  v133 = [v127 isReadOnly];
  if (!v130 || (v133 & 1) != 0)
  {
    goto LABEL_293;
  }

  v134 = *(v127 + 200);
  hasPersistentHistory = [(NSSQLiteConnection *)v128 _hasPersistentHistoryTables];
  v136 = hasPersistentHistory;
  if ((v134 & 0x400) == 0)
  {
    if (hasPersistentHistory && [(NSSQLiteConnection *)v128 hasHistoryRows])
    {
      v137 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
      {
        v148 = [v127 URL];
        v248.f_bsize = 138412290;
        *&v248.f_iosize = v148;
        _os_log_error_impl(&dword_18565F000, v137, OS_LOG_TYPE_ERROR, "CoreData: fault: Store opened without NSPersistentHistoryTrackingKey but previously had been opened with NSPersistentHistoryTrackingKey - Forcing into Read Only mode store at '%@'\n", &v248, 0xCu);
      }

      v138 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_FAULT))
      {
        v149 = [v127 URL];
        v248.f_bsize = 138412290;
        *&v248.f_iosize = v149;
        _os_log_fault_impl(&dword_18565F000, v138, OS_LOG_TYPE_FAULT, "CoreData: Store opened without NSPersistentHistoryTrackingKey but previously had been opened with NSPersistentHistoryTrackingKey - Forcing into Read Only mode store at '%@'", &v248, 0xCu);
      }

      [v127 setReadOnly:1];
    }

    goto LABEL_293;
  }

  if (v131 - 801 <= 0x16 && [(NSSQLiteConnection *)v128 _hasOldHistoryTrackingTables])
  {
    [(NSSQLiteConnection *)v128 connect];
    [(NSSQLiteConnection *)v128 _dropOldHistoryTrackingTables];
  }

  if (v136)
  {
    if (v131 < 0x334)
    {
LABEL_256:
      [(NSSQLiteConnection *)v128 connect];
      [(NSSQLiteConnection *)v128 dropHistoryTrackingTables];
      LOBYTE(v136) = 0;
      LOBYTE(v139) = 1;
      goto LABEL_282;
    }

    if (v131 <= 0x34C)
    {
      if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")])
      {
        goto LABEL_256;
      }

      if (v131 <= 0x345)
      {
        v140 = [(NSSQLiteConnection *)v128 numberOfTombstones];
        if (v140 < [_PFPersistentHistoryModel _maxCountOfTombstonesInModel:?])
        {
          [(NSSQLiteConnection *)v128 connect];
          v141 = [(NSSQLiteConnection *)v128 numberOfTombstones];
          v142 = [_PFPersistentHistoryModel _maxCountOfTombstonesInModel:?];
          [(NSSQLiteConnection *)v128 addTombstoneColumnsForRange:v141, v142];
        }
      }
    }

    if (v131 == 914 || v131 == 863)
    {
      [(NSSQLiteConnection *)v128 connect];
      v143 = [(NSSQLiteConnection *)v128 hasAncillaryEntitiesInHistory];
      if (v143)
      {
        v144 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(1))
        {
          if (_pflogging_catastrophic_mode)
          {
            v145 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
            {
              v248.f_bsize = 138412290;
              *&v248.f_iosize = v143;
LABEL_383:
              _os_log_error_impl(&dword_18565F000, v145, OS_LOG_TYPE_ERROR, "CoreData: error: found Ancillary Entities in Persistent History - %@\n", &v248, 0xCu);
            }
          }

          else
          {
            v145 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
            {
              v248.f_bsize = 138412290;
              *&v248.f_iosize = v143;
              goto LABEL_383;
            }
          }
        }

        _NSCoreDataLog_console(1, "found Ancillary Entities in Persistent History - %@", v143);
        objc_autoreleasePoolPop(v144);
        [(NSSQLiteConnection *)v128 dropHistoryBeforeTransactionID:v143];
      }
    }
  }

  v139 = v136 ^ 1;
  if (v131 < 0x35E || v131 - 900 <= 0xC)
  {
LABEL_282:
    [(NSSQLiteConnection *)v128 connect];
    if (v136)
    {
      if (([(NSSQLiteConnection *)v128 _hasHistoryTransactionStringTable]& 1) == 0)
      {
        v150 = [v132 entityNamed:@"TRANSACTIONSTRING"];
        if (v150)
        {
          *&v260 = v150;
          -[NSSQLiteConnection createTablesForEntities:](v128, [MEMORY[0x1E695DEC8] arrayWithObjects:&v260 count:1]);
        }
      }
    }

    else
    {
      [(NSSQLiteConnection *)v128 createMissingHistoryTables];
      LOBYTE(v139) = 0;
    }

    if (![(NSSQLiteConnection *)v128 hasTransactionStringColumnsInTransactionTable])
    {
      [(NSSQLiteConnection *)v128 addTransactionStringColumnsToTransactionTable];
    }

    if ((v139 & 1) == 0)
    {
      goto LABEL_293;
    }

    goto LABEL_290;
  }

  if (v139)
  {
LABEL_290:
    [(NSSQLiteConnection *)v128 connect];
    [(NSSQLiteConnection *)v128 beginTransaction];
    if (([(NSSQLiteConnection *)v128 _hasPersistentHistoryTables]& 1) == 0)
    {
      [(NSSQLiteConnection *)v128 createMissingHistoryTables];
    }

    [(NSSQLiteConnection *)v128 commitTransaction];
    [(NSSQLiteConnection *)v128 endFetchAndRecycleStatement:?];
  }

LABEL_293:
  v151 = *(a1 + 40);
  if (!v151)
  {
    goto LABEL_296;
  }

  v152 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v153 = [objc_msgSend(*(v151 + 160) objectForKey:{0x1EF3FD408), "unsignedIntegerValue"}];
  v154 = [*(v151 + 160) objectForKey:0x1EF3FCE28];
  os_unfair_lock_unlock((v151 + 152));
  v155 = getprogname();
  if (!v155)
  {
    goto LABEL_296;
  }

  if (strncmp("homed", v155, 5uLL))
  {
    goto LABEL_296;
  }

  if (![v151 _persistentStoreCoordinator])
  {
    goto LABEL_296;
  }

  if (v153 < 0x4BA)
  {
    goto LABEL_296;
  }

  v160 = [v151 isReadOnly];
  if (!v152 || (v160 & 1) != 0 || ![(NSSQLiteConnection *)v152 _hasTableWithName:0 isTemp:?]|| ![(NSSQLiteConnection *)v152 _hasTableWithName:0 isTemp:?])
  {
    goto LABEL_296;
  }

  if (([v154 isEqualToString:@"7G8C8LDyGsq8nWlygb+W8X+/Cib0xLur8J7eDoPpDg+r21Lp9FSS3Lxq6BtPoouvaSJ1rZ7uYvGBCtGwtaU/IA=="] & 1) != 0 || (objc_msgSend(v154, "isEqualToString:", @"NdSMhI64y0fcuGTkPpTBUTgUCmv1yHtrblyXGtAcfUtTWLUB/DyCki93Ps2ZydhpvOlS/5cUaUueM7chxR4pWg==") & 1) != 0 || objc_msgSend(v154, "isEqualToString:", @"GrkWfiJ5F085geZxp8His1GEvGdt1zwn0jZ+8FYWsccb6+KEIWdCVcNcaa7RAU+X37QwU+10nMCuBCnuT0/zQg=="))
  {
    v161 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_371;
    }

    if (_pflogging_catastrophic_mode)
    {
      v162 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_371;
      }

      LOWORD(v248.f_bsize) = 0;
    }

    else
    {
      v162 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_371;
      }

      LOWORD(v248.f_bsize) = 0;
    }

    _os_log_error_impl(&dword_18565F000, v162, OS_LOG_TYPE_ERROR, "CoreData: error: Executing schema repair operations for HomeKitModel-882 Z_48ACTIONMEDIAPLAYBACKS_ table\n", &v248, 2u);
LABEL_371:
    _NSCoreDataLog_console(1, "Executing schema repair operations for HomeKitModel-882 Z_48ACTIONMEDIAPLAYBACKS_ table");
    objc_autoreleasePoolPop(v161);
    v191 = [(NSSQLiteConnection *)v152 copyRawIntegerRowsForSQL:?];
    if (v191)
    {
      CFRelease(v191);
    }

    goto LABEL_296;
  }

  v196 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
  {
    v248.f_bsize = 138412290;
    *&v248.f_iosize = v154;
    _os_log_error_impl(&dword_18565F000, v196, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown schema hash presents conflicting ACTIONMEDIAPLAYBACKS_ tables: %@\n", &v248, 0xCu);
  }

  v197 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v197, OS_LOG_TYPE_FAULT))
  {
    v248.f_bsize = 138412290;
    *&v248.f_iosize = v154;
    _os_log_fault_impl(&dword_18565F000, v197, OS_LOG_TYPE_FAULT, "CoreData: Unknown schema hash presents conflicting ACTIONMEDIAPLAYBACKS_ tables: %@", &v248, 0xCu);
  }

LABEL_296:
  v156 = a1;
  if (![*(a1 + 40) _persistentStoreCoordinator] || (*(*(a1 + 40) + 202) & 1) == 0 || (-[NSSQLiteConnection setUpIndexTracking](*(a1 + 32)) & 1) != 0)
  {
    goto LABEL_322;
  }

  v157 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v158 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v248.f_bsize) = 0;
        v159 = "CoreData: error: failed to set up index tracking, disabling\n";
LABEL_380:
        _os_log_error_impl(&dword_18565F000, v158, OS_LOG_TYPE_ERROR, v159, &v248, 2u);
      }
    }

    else
    {
      v158 = _PFLogGetLogStream(2);
      if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v248.f_bsize) = 0;
        v159 = "CoreData: warning: failed to set up index tracking, disabling\n";
        goto LABEL_380;
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v163 = 1;
  }

  else
  {
    v163 = 2;
  }

  _NSCoreDataLog_console(v163, "failed to set up index tracking, disabling");
  objc_autoreleasePoolPop(v157);
  v156 = a1;
  *(*(a1 + 40) + 200) &= ~0x10000u;
LABEL_322:
  v164 = v156[5];
  if (!v164)
  {
    goto LABEL_354;
  }

  v165 = v156[4];
  os_unfair_lock_lock_with_options();
  v166 = [*(v164 + 160) objectForKey:0x1EF3FD408];
  os_unfair_lock_unlock((v164 + 152));
  v167 = [v166 unsignedIntegerValue];
  if ([v164 _persistentStoreCoordinator] && objc_msgSend(v166, "intValue") <= 639 && (objc_msgSend(v164, "isReadOnly") & 1) == 0)
  {
    if (v167 - 496 <= 0x8F)
    {
      v168 = [MEMORY[0x1E695DF70] array];
      v262 = 0u;
      v263 = 0u;
      v260 = 0u;
      v261 = 0u;
      v169 = *(v164 + 104);
      if (v169)
      {
        v170 = *(v169 + 32);
      }

      else
      {
        v170 = 0;
      }

      v171 = [v170 countByEnumeratingWithState:&v260 objects:&v248 count:16];
      if (v171)
      {
        v172 = *v261;
        do
        {
          for (mm = 0; mm != v171; ++mm)
          {
            if (*v261 != v172)
            {
              objc_enumerationMutation(v170);
            }

            v174 = *(*(&v260 + 1) + 8 * mm);
            if (v174 && !v174[20])
            {
              v175 = [(NSSQLiteAdapter *)*(v164 + 112) newComplexPrimaryKeyUpdateStatementForEntity:v174];
              [v168 addObject:v175];
            }
          }

          v171 = [v170 countByEnumeratingWithState:&v260 objects:&v248 count:16];
        }

        while (v171);
      }

LABEL_353:
      [(NSSQLCore *)v164 _updateToVersion640PrimaryKeyTableUsingStatements:v168 connection:v165];
      v156 = a1;
      goto LABEL_354;
    }

    v176 = v167 > 0x27F;
    v156 = a1;
    if (!v176)
    {
      v168 = [MEMORY[0x1E695DF70] array];
      v262 = 0u;
      v263 = 0u;
      v260 = 0u;
      v261 = 0u;
      v177 = *(v164 + 104);
      if (v177)
      {
        v178 = *(v177 + 32);
      }

      else
      {
        v178 = 0;
      }

      v179 = [v178 countByEnumeratingWithState:&v260 objects:&v248 count:16];
      if (v179)
      {
        v180 = *v261;
        do
        {
          for (nn = 0; nn != v179; ++nn)
          {
            if (*v261 != v180)
            {
              objc_enumerationMutation(v178);
            }

            v182 = *(*(&v260 + 1) + 8 * nn);
            if (v182 && !v182[20])
            {
              v183 = [(NSSQLiteAdapter *)*(v164 + 112) newSimplePrimaryKeyUpdateStatementForEntity:v182];
              [v168 addObject:v183];
            }
          }

          v179 = [v178 countByEnumeratingWithState:&v260 objects:&v248 count:16];
        }

        while (v179);
      }

      goto LABEL_353;
    }

LABEL_354:
    *(*(v156[6] + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v184 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v185 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v248.f_bsize) = 0;
            _os_log_error_impl(&dword_18565F000, v185, OS_LOG_TYPE_ERROR, "CoreData: error: finished upgrade checks, bumping metadata\n", &v248, 2u);
          }
        }

        else
        {
          v186 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v248.f_bsize) = 0;
            _os_log_impl(&dword_18565F000, v186, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: finished upgrade checks, bumping metadata\n", &v248, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v187 = 1;
      }

      else
      {
        v187 = 4;
      }

      _NSCoreDataLog_console(v187, "finished upgrade checks, bumping metadata");
      objc_autoreleasePoolPop(v184);
    }

    [(NSSQLiteConnection *)*(a1 + 32) beginTransaction];
    v188 = [objc_msgSend(*(a1 + 40) "metadata")];
    [(__CFString *)v188 setObject:+[_PFRoutines _getPFBundleVersionNumber]forKey:0x1EF3FD408];
    [(NSSQLiteConnection *)*(a1 + 32) saveMetadata:v188];

    v189 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    [*(*(a1 + 40) + 160) setObject:+[_PFRoutines _getPFBundleVersionNumber]() forKey:0x1EF3FD408];
    os_unfair_lock_unlock((*(a1 + 40) + 152));
    [(NSSQLiteConnection *)*(a1 + 32) commitTransaction];
    [(NSSQLiteConnection *)*(a1 + 32) endFetchAndRecycleStatement:?];
  }

LABEL_369:
  v190 = *MEMORY[0x1E69E9840];
}

- (BOOL)supportsConcurrentRequestHandling
{
  if (self)
  {
    selfCopy = self;
    self = [(NSPersistentStore *)self _persistentStoreCoordinator];
    if (self)
    {
      if ([(NSDictionary *)[(NSPersistentStore *)selfCopy options] objectForKey:@"NSXPCStoreDelegate"])
      {
LABEL_4:
        LOBYTE(self) = 0;
        return self;
      }

      v3 = [(NSDictionary *)[(NSPersistentStore *)selfCopy options] valueForKey:@"NSPersistentStoreConnectionPoolMaxSize"];
      if ([v3 integerValue] > 0)
      {
        goto LABEL_6;
      }

      if (v3)
      {
        goto LABEL_4;
      }

      v4 = getprogname();
      if (!v4 || (LODWORD(self) = strncmp("YouTube", v4, 7uLL), self))
      {
LABEL_6:
        LOBYTE(self) = 1;
      }
    }
  }

  return self;
}

- (void)_initializeQueryGenerationConnectionForProtectionClasses
{
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = getprogname();
    v3 = v2 && strcmp("routined", v2) == 0;
    if ([self supportsGenerationalQuerying])
    {
      if (([self isReadOnly] & 1) == 0)
      {
        v4 = [objc_msgSend(self "options")];
        if (v4)
        {
          v5 = v4;
          if ([self _isCloudKitOptioned])
          {
            if (([v5 isEqualToString:*MEMORY[0x1E696A380]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E696A378]))
            {
              if (atomic_load(self + 26))
              {
                if (!v3)
                {
                  goto LABEL_31;
                }

LABEL_20:
                v8 = objc_autoreleasePoolPush();
                _pflogInitialize(2);
                if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    LogStream = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      options = [self options];
                      v12 = "CoreData: error: Preloading query generation connection failed without a reported error for store with options: %@\n";
LABEL_38:
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
                    }
                  }

                  else
                  {
                    LogStream = _PFLogGetLogStream(2);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      options = [self options];
                      v12 = "CoreData: warning: Preloading query generation connection failed without a reported error for store with options: %@\n";
                      goto LABEL_38;
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  options2 = [self options];
                  v14 = 1;
                }

                else
                {
                  options2 = [self options];
                  v14 = 2;
                }

                _NSCoreDataLog_console(v14, "Preloading query generation connection failed without a reported error for store with options: %@", options2);
LABEL_30:
                objc_autoreleasePoolPop(v8);
                goto LABEL_31;
              }

              GenerationTracking = [(NSSQLCore *)self _initializeQueryGenerationTrackingConnection];
              if (v3)
              {
                if (!GenerationTracking)
                {
                  goto LABEL_20;
                }

                v8 = objc_autoreleasePoolPush();
                if (_NSCoreDataIsOSLogEnabled(2))
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v9 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      options = [self options];
                      v10 = "CoreData: error: Preloading query generation connection success for store with options: %@\n";
LABEL_40:
                      _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
                    }
                  }

                  else
                  {
                    v9 = _PFLogGetLogStream(2);
                    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      options = [self options];
                      v10 = "CoreData: warning: Preloading query generation connection success for store with options: %@\n";
                      goto LABEL_40;
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  options3 = [self options];
                  v17 = 1;
                }

                else
                {
                  options3 = [self options];
                  v17 = 2;
                }

                _NSCoreDataLog_console(v17, "Preloading query generation connection success for store with options: %@", options3);
                goto LABEL_30;
              }
            }
          }
        }
      }
    }
  }

LABEL_31:
  v15 = *MEMORY[0x1E69E9840];
}

- (Class)_objectIDClass
{
  if (*MEMORY[0x1E69E5908])
  {
    v2 = off_1E6EC0C30;
  }

  else
  {
    v2 = off_1E6EC0BD8;
  }

  v3 = *v2;
  return objc_opt_class();
}

- (void)_supportDirectoryPath
{
  if (result)
  {
    v1 = [result URL];
    if (([v1 isFileURL] & 1) == 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't write external data to non-file URL" userInfo:0]);
    }

    path = [v1 path];
    v3 = [objc_msgSend(path "lastPathComponent")];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
    v5 = [objc_msgSend(@"." stringByAppendingString:{v3), "stringByAppendingString:", @"_SUPPORT"}];

    return [stringByDeletingLastPathComponent stringByAppendingPathComponent:v5];
  }

  return result;
}

- (BOOL)_initializeQueryGenerationTrackingConnection
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [[NSSQLiteConnection alloc] initAsQueryGenerationTrackingConnectionForSQLCore:result];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__NSSQLCore__initializeQueryGenerationTrackingConnection__block_invoke;
    v8[3] = &unk_1E6EC16F0;
    v8[4] = v2;
    [(NSSQLiteConnection *)v2 performAndWait:v8];
    if (v2)
    {
      os_unfair_lock_lock_with_options();
      v3 = 0;
      atomic_compare_exchange_strong((v1 + 208), &v3, v2);
      if (v3)
      {
      }

      os_unfair_lock_unlock((v1 + 152));
      v4 = atomic_load((v1 + 208));
      result = v4 != 0;
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: An unreported error occurred during initialization of query generation connection.\n", buf, 2u);
      }

      v6 = _PFLogGetLogStream(17);
      result = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
      if (result)
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: An unreported error occurred during initialization of query generation connection.", buf, 2u);
        result = 0;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__NSSQLCore__hasActiveGenerations__block_invoke(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 208));
  result = [-[NSSQLiteConnection _activeGenerations](v2) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

void *__50__NSSQLCore_harvestIndexStatisticsFromConnections__block_invoke(uint64_t a1, void *a2)
{
  v3 = [(NSSQLiteConnection *)a2 harvestUsedIndexes];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    v5 = [v4 count];
    v6 = *(a1 + 32);
    if (v5)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__NSSQLCore_harvestIndexStatisticsFromConnections__block_invoke_2;
      v9[3] = &unk_1E6EC3868;
      v9[4] = v6;
      return [v3 enumerateKeysAndObjectsUsingBlock:v9];
    }

    v8 = *(*(v6 + 8) + 40);
  }

  else
  {
    v8 = 0;
  }

  result = v3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

+ (id)databaseKeyFromOptionsDictionary:(uint64_t)dictionary
{
  objc_opt_self();
  v3 = [a2 objectForKey:@"_NSSQLiteSEEKeychainItemOption"];

  return [NSSQLCore _databaseKeyFromValue:v3];
}

+ (id)_databaseKeyFromValue:(uint64_t)value
{
  v21[3] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2)
  {
    if (byte_1ED4BEECC)
    {
      result = 0;
      if ([a2 isNSData])
      {
        v3 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:objc_msgSend(a2 length:{"bytes"), objc_msgSend(a2, "length")}];
        result = v3;
LABEL_12:
        v6 = v3;
        goto LABEL_13;
      }

      v7 = *MEMORY[0x1E697B3D0];
      v20[0] = *MEMORY[0x1E697AFF8];
      v20[1] = v7;
      v21[0] = *MEMORY[0x1E697B008];
      v21[1] = a2;
      v20[2] = *MEMORY[0x1E697B318];
      v21[2] = *MEMORY[0x1E695E4D0];
      v8 = SecItemCopyMatching([MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3], &result);
      if (v8)
      {
        v10 = v8;
        v11 = SecCopyErrorMessageString(v8, 0);
        if (v11)
        {
          v17 = v11;
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keychain failed to return key for database encryption (error %d): %@", v10, v11];
          CFRelease(v17);
          v15 = MEMORY[0x1E695DF30];
          v16 = *MEMORY[0x1E695D940];
          v14 = v18;
        }

        else
        {
          v12 = MEMORY[0x1E695DF30];
          v13 = *MEMORY[0x1E695D940];
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keychain failed to return key for database encryption (error %d)", v10];
          v15 = v12;
          v16 = v13;
        }
      }

      else
      {
        v3 = result;
        if (result)
        {
          goto LABEL_12;
        }

        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v14 = @"Keychain did not return a key for database encryption";
      }

      objc_exception_throw([v15 exceptionWithName:v16 reason:v14 userInfo:0]);
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LOWORD(result) = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to use SPI outside of entitled process\n", &result, 2u);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      LOWORD(result) = 0;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to use SPI outside of entitled process", &result, 2u);
    }
  }

  v6 = 0;
LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)entityForObjectID:(uint64_t)result
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (!a2)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: entityForObjectID was passed a nil objectID\n", &v18, 2u);
      }

      v14 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_22;
      }

      LOWORD(v18) = 0;
      v10 = "CoreData: entityForObjectID was passed a nil objectID";
      v11 = v14;
      v12 = 2;
      goto LABEL_25;
    }

    v3 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [a2 _storeInfo1];
      if (result)
      {
        goto LABEL_23;
      }

      v4 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = a2;
        _os_log_error_impl(&dword_18565F000, v4, OS_LOG_TYPE_ERROR, "CoreData: fault: entityForObjectID failed to retrieve an NSSQLEntity for objectID %@\n", &v18, 0xCu);
      }

      v5 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v18 = 138412290;
        v19 = a2;
        _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: entityForObjectID failed to retrieve an NSSQLEntity for objectID %@", &v18, 0xCu);
      }
    }

    entity = [a2 entity];
    if (!entity)
    {
      v15 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = a2;
        _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: fault: entityForObjectID passed a nil entity description from %@\n", &v18, 0xCu);
      }

      v16 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_22;
      }

      v18 = 138412290;
      v19 = a2;
      v10 = "CoreData: entityForObjectID passed a nil entity description from %@";
      v11 = v16;
      v12 = 12;
      goto LABEL_25;
    }

    v7 = entity;
    result = _sqlCoreLookupSQLEntityForEntityDescription(v3, entity);
    if (!result)
    {
      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412546;
        v19 = a2;
        v20 = 2112;
        v21 = v7;
        _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: _sqlCoreLookupSQLEntityForEntityDescription failed to return a result for objectID %@ with entity %@\n", &v18, 0x16u);
      }

      v9 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_22;
      }

      v18 = 138412546;
      v19 = a2;
      v20 = 2112;
      v21 = v7;
      v10 = "CoreData: _sqlCoreLookupSQLEntityForEntityDescription failed to return a result for objectID %@ with entity %@";
      v11 = v9;
      v12 = 22;
LABEL_25:
      _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, v10, &v18, v12);
LABEL_22:
      result = 0;
    }
  }

LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (Class)objectIDFactoryForEntity:(id)entity
{
  v8.receiver = self;
  v8.super_class = NSSQLCore;
  v5 = [(NSPersistentStore *)&v8 objectIDFactoryForEntity:?];
  if (![v5 _storeInfo1])
  {
    v6 = 0;
    if (self && entity)
    {
      v6 = _sqlCoreLookupSQLEntityForEntityDescription(self, entity);
    }

    [v5 _setStoreInfo1:v6];
  }

  return v5;
}

- (Class)objectIDFactoryForPersistentHistoryEntity:(id)entity
{
  v6.receiver = self;
  v6.super_class = NSSQLCore;
  v4 = -[NSPersistentStore objectIDFactoryForEntity:](&v6, sel_objectIDFactoryForEntity_, [entity entityDescription]);
  if (![v4 _storeInfo1])
  {
    [v4 _setStoreInfo1:entity];
  }

  return v4;
}

- (id)newObjectIDForEntity:(id)entity pk:(int64_t)pk
{
  v5 = objc_alloc([(NSSQLCore *)self objectIDFactoryForSQLEntity:entity]);

  return [v5 initWithPK64:pk];
}

- (uint64_t)newForeignKeyID:(void *)d entity:(uint64_t)entity
{
  if (!d || !entity)
  {
    return 0;
  }

  v3 = objc_alloc([d objectIDFactoryForSQLEntity:?]);

  return [v3 initWithPK64:entity];
}

+ (uint64_t)sanityCheckFileAtURL:(void *)l options:(uint64_t *)options error:
{
  v30 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [objc_msgSend(a2 "path")];
  if (!v7 || (v8 = v7, !*v7))
  {
    v10 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [v10 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A998], @"path's fileSystemRepresentation returned NULL", @"reason", 0}];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:258 userInfo:v11];
    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_15;
    }

    v14 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v16 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else if (!v16)
    {
      goto LABEL_15;
    }

    *buf = 138412546;
    v27 = v12;
    v28 = 2112;
    v29 = v11;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  failed to open file due to illegal URL encoding.  error = %@ with userInfo %@\n", buf, 0x16u);
LABEL_15:
    _NSCoreDataLog_console(1, " failed to open file due to illegal URL encoding.  error = %@ with userInfo %@", v12, v11);
    objc_autoreleasePoolPop(v13);
    if (options)
    {
      *options = v12;
    }

    goto LABEL_17;
  }

  if (![l objectForKey:@"_NSSQLiteSEEKeychainItemOption"])
  {
    v17 = [NSSQLiteConnection readMagicWordFromPath:v8 options:l];
    v18 = v17;
    if (v17 > 12)
    {
      if (v17 == 92)
      {
        if (!options)
        {
          goto LABEL_4;
        }

        v25 = objc_alloc(MEMORY[0x1E695DF20]);
        v11 = [v25 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A998], 0}];
        v20 = MEMORY[0x1E696ABC0];
        v21 = *MEMORY[0x1E696A250];
        v22 = 259;
LABEL_25:
        *options = [v20 errorWithDomain:v21 code:v22 userInfo:v11];
LABEL_17:

        result = 0;
        goto LABEL_18;
      }

      if (v17 != 13)
      {
LABEL_12:
        if (!options)
        {
          goto LABEL_4;
        }

        v19 = objc_alloc(MEMORY[0x1E695DF20]);
        v11 = [v19 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A998], 0}];
        v20 = MEMORY[0x1E696ABC0];
        v21 = *MEMORY[0x1E696A798];
        v22 = v18;
        goto LABEL_25;
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_4;
      }

      if (v17 != 1)
      {
        goto LABEL_12;
      }
    }

    if (!options)
    {
      goto LABEL_4;
    }

    v24 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [v24 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A998], 0}];
    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A250];
    v22 = 257;
    goto LABEL_25;
  }

LABEL_4:
  result = 1;
LABEL_18:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSSQLCore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options
{
  location[3] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!l)
  {

    v72 = MEMORY[0x1E695DF30];
    v73 = *MEMORY[0x1E695D940];
    v74 = @"Cannot create an SQL store with a nil URL.";
    goto LABEL_166;
  }

  if (([l isFileURL] & 1) == 0)
  {
    v75 = MEMORY[0x1E695DF30];
    v76 = *MEMORY[0x1E695D940];
    v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData SQL stores only support file URLs (got %@).", l];
    v72 = v75;
    v73 = v76;
LABEL_166:
    objc_exception_throw([v72 exceptionWithName:v73 reason:v74 userInfo:0]);
  }

  v117 = 0;
  v10 = [_PFRoutines _isInMemoryStoreURL:l];
  if (v10)
  {
    v11 = 0x4000;
  }

  else
  {
    v11 = 0;
  }

  self->_sqlCoreFlags = (*&self->_sqlCoreFlags & 0xFFFFBFFF | v11);
  coordinatorCopy = coordinator;
  if (v10)
  {
    if (!strcmp([l fileSystemRepresentation], "/dev/null"))
    {
      if ([objc_msgSend(options objectForKey:{@"NSPersistentStoreConnectionPoolMaxSize", "intValue"}] >= 2)
      {

        v80 = [_NSCoreDataException exceptionWithName:134060 code:@"Error - In Memory store at /dev/null can only have NSPersistentStoreConnectionPoolMaxSizeKey equal to 1" reason:0 userInfo:?];
        objc_exception_throw(v80);
      }

      if (options)
      {
        options = [options mutableCopy];
        [options setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 1), @"NSPersistentStoreConnectionPoolMaxSize"}];
      }

      else
      {
        options = [MEMORY[0x1E695DF90] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 1), @"NSPersistentStoreConnectionPoolMaxSize"}];
      }
    }

    v116 = 0;
  }

  else
  {
    v116 = 0;
    if (![NSPersistentStore doURLStuff:l createdStubFile:&v116 + 1 readOnly:&v116 error:&v117 options:options])
    {

      code = [v117 code];
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v117, @"NSCoreDataPrimaryError", 0}];
      v79 = [_NSCoreDataException exceptionWithName:code code:@"Error validating url for store" reason:v78 userInfo:?];
      objc_exception_throw(v79);
    }

    if (v116)
    {
      if (coordinator)
      {
        if (([objc_msgSend(options valueForKey:{@"NSReadOnlyPersistentStoreOption", "BOOLValue"}] & 1) == 0)
        {
          if ([options valueForKey:@"NSReadOnlyPersistentStoreOption"] && (z9dsptsiQ80etb9782fsrs98bfdle88 & 0x10000000000) != 0)
          {
            if (v117)
            {
              v81 = [MEMORY[0x1E695DF20] dictionaryWithObject:v117 forKey:*MEMORY[0x1E696AA08]];
            }

            else
            {
              v81 = 0;
            }

            v82 = [_NSCoreDataException exceptionWithName:513 code:@"Attempt to add read-only store read-write" reason:v81 userInfo:?];
            objc_exception_throw(v82);
          }

          if (options)
          {
            options = [options mutableCopy];
            [options setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"NSReadOnlyPersistentStoreOption"}];
          }

          else
          {
            options = [MEMORY[0x1E695DF90] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"NSReadOnlyPersistentStoreOption"}];
          }

          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            LODWORD(location[0]) = 138412290;
            *(location + 4) = l;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempt to add read-only file at path %@ read/write. Adding it read-only instead. This will be a hard error in the future; you must specify the NSReadOnlyPersistentStoreOption.\n", location, 0xCu);
          }

          v13 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            LODWORD(location[0]) = 138412290;
            *(location + 4) = l;
            _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Attempt to add read-only file at path %@ read/write. Adding it read-only instead. This will be a hard error in the future; you must specify the NSReadOnlyPersistentStoreOption.", location, 0xCu);
          }
        }
      }

      else if (options)
      {
        options = [options mutableCopy];
        [options setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"NSReadOnlyPersistentStoreOption"}];
      }

      else
      {
        options = [MEMORY[0x1E695DF90] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"NSReadOnlyPersistentStoreOption"}];
      }
    }
  }

  v115.receiver = self;
  v115.super_class = NSSQLCore;
  v14 = [(NSPersistentStore *)&v115 initWithPersistentStoreCoordinator:coordinator configurationName:name URL:l options:options];
  v88 = v14;
  v15 = v14;
  if (!v14)
  {
    v21 = 0;
    goto LABEL_155;
  }

  v14->_remoteNotificationToken = -1;
  if (HIBYTE(v116) == 1)
  {
    v15 = v14;
    if ([objc_msgSend(options objectForKey:{@"NSPersistentStoreRemoveStoreOnCleanup", "BOOLValue"}])
    {
      [(NSPersistentStore *)v88 doFilesystemCleanupOnRemove:1];
      v15 = v88;
    }
  }

  if (coordinator)
  {
    v85 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v84 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v83 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    persistentStores = [coordinator persistentStores];
    v17 = [persistentStores countByEnumeratingWithState:&v111 objects:v123 count:16];
    if (v17)
    {
      v18 = *v112;
LABEL_36:
      v19 = 0;
      while (1)
      {
        if (*v112 != v18)
        {
          objc_enumerationMutation(persistentStores);
        }

        v20 = *(*(&v111 + 1) + 8 * v19);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [persistentStores countByEnumeratingWithState:&v111 objects:v123 count:16];
          if (v17)
          {
            goto LABEL_36;
          }

          goto LABEL_46;
        }
      }

      model = [v20 model];
      if (!model)
      {
        goto LABEL_46;
      }

      v15 = v88;
      v23 = model;
    }

    else
    {
LABEL_46:
      v15 = v88;
      v23 = -[NSSQLModel initWithManagedObjectModel:configurationName:brokenHashVersion:]([NSSQLModel alloc], "initWithManagedObjectModel:configurationName:brokenHashVersion:", [coordinator managedObjectModel], 0, 0);
    }

    *(v15 + 104) = v23;
    if (!v23)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Got a nil sqlmodel" userInfo:0]);
    }
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v83 = 0;
  }

  *(v15 + 200) = *(v15 + 200) & 0xFFFFFFFE | +[NSSQLCore coloredLoggingDefault];
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v24 = *(v15 + 104);
  if (v24)
  {
    v25 = *(v24 + 32);
  }

  else
  {
    v25 = 0;
  }

  v26 = [v25 countByEnumeratingWithState:&v107 objects:v122 count:16];
  if (v26)
  {
    v27 = *v108;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v108 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v107 + 1) + 8 * i);
        if (v29 && (*(v29 + 280) & 2) != 0)
        {
          *(v15 + 200) |= 0x2000u;
          goto LABEL_63;
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v107 objects:v122 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_63:
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v30 = *(v15 + 104);
  if (v30)
  {
    v31 = *(v30 + 32);
  }

  else
  {
    v31 = 0;
  }

  v32 = [v31 countByEnumeratingWithState:&v103 objects:v121 count:16];
  if (v32)
  {
    v33 = *v104;
    while (2)
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v104 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v103 + 1) + 8 * j);
        if (v35 && (*(v35 + 280) & 1) != 0)
        {
          *(v15 + 200) |= 2u;
          goto LABEL_76;
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v103 objects:v121 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

LABEL_76:
  v36 = [objc_msgSend(options objectForKey:{@"NSPersistentStoreTrackIndexUseOptionKey", "BOOLValue"}];
  if (v36)
  {
    v37 = 0x10000;
  }

  else
  {
    v37 = 0;
  }

  *(v15 + 200) = *(v15 + 200) & 0xFFFEFFFF | v37;
  if (((coordinatorCopy != 0) & v36) == 1)
  {
    +[_PFRoutines _getPFBundleVersionNumber];
    v38 = +[NSSQLiteIndexTrackingModel newModelForFrameworkVersion:];
    [(_PFModelMap *)coordinatorCopy[12] addManagedObjectModel:v38];
    v39 = [[NSSQLModel alloc] initWithManagedObjectModel:v38];
    [v83 addObjectsFromArray:{objc_msgSend(objc_msgSend(v38, "entitiesByName"), "allKeys")}];
    [v85 setObject:v38 forKey:@"NSPersistentStoreTrackIndexUseOptionKey"];
    [v84 setObject:v39 forKey:@"NSPersistentStoreTrackIndexUseOptionKey"];
  }

  else if (!coordinatorCopy)
  {
    goto LABEL_85;
  }

  if ([objc_msgSend(options objectForKey:{@"NSPersistentStoreMirroringOptionsKey", "objectForKey:", @"NSPersistentStoreMirroringDelegateOptionKey"}] || objc_msgSend(objc_msgSend(options, "objectForKey:", @"NSCloudKitMirroringDelegateReadOnlyOptionKey"), "BOOLValue"))
  {
    PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
    v41 = [PFCloudKitMetadataModel newMetadataModelForFrameworkVersion:?];
    [(_PFModelMap *)coordinatorCopy[12] addManagedObjectModel:v41];
    [v83 addObjectsFromArray:{-[NSDictionary allKeys](-[NSManagedObjectModel entitiesByName](v41, "entitiesByName"), "allKeys")}];
    [v85 setObject:v41 forKey:@"NSPersistentStoreMirroringDelegateOptionKey"];
    v42 = [[NSSQLModel alloc] initWithManagedObjectModel:v41];
    [v84 setObject:v42 forKey:@"NSPersistentStoreMirroringDelegateOptionKey"];
  }

LABEL_85:
  [v15 setAncillaryModels:v85];
  [v15 setAncillarySQLModels:v84];
  if (coordinatorCopy)
  {
    [(NSSQLCore *)v15 _setupHistoryModelForPSC:coordinatorCopy withExcludedEntityNames:v83];
  }

  if ([*(v15 + 224) count])
  {
    *(v15 + 200) |= 0x800u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    allValues = [*(v15 + 232) allValues];
    v44 = [allValues countByEnumeratingWithState:&v99 objects:v120 count:16];
    if (v44)
    {
      v45 = *v100;
      do
      {
        v46 = 0;
        do
        {
          if (*v100 != v45)
          {
            objc_enumerationMutation(allValues);
          }

          v47 = *(*(&v99 + 1) + 8 * v46);
          if ((*(v15 + 201) & 0x20) == 0)
          {
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v48 = v47 ? *(v47 + 32) : 0;
            v49 = [v48 countByEnumeratingWithState:&v95 objects:v119 count:16];
            if (v49)
            {
              v50 = *v96;
              while (2)
              {
                for (k = 0; k != v49; ++k)
                {
                  if (*v96 != v50)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v52 = *(*(&v95 + 1) + 8 * k);
                  if (v52 && (*(v52 + 280) & 2) != 0)
                  {
                    v15 = v88;
                    *&v88->_sqlCoreFlags |= 0x2000u;
                    goto LABEL_107;
                  }
                }

                v49 = [v48 countByEnumeratingWithState:&v95 objects:v119 count:16];
                v15 = v88;
                if (v49)
                {
                  continue;
                }

                break;
              }
            }
          }

LABEL_107:
          if ((*(v15 + 200) & 2) == 0)
          {
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v53 = v47 ? *(v47 + 32) : 0;
            v54 = [v53 countByEnumeratingWithState:&v91 objects:v118 count:16];
            if (v54)
            {
              v55 = *v92;
              while (2)
              {
                for (m = 0; m != v54; ++m)
                {
                  if (*v92 != v55)
                  {
                    objc_enumerationMutation(v53);
                  }

                  v57 = *(*(&v91 + 1) + 8 * m);
                  if (v57 && (*(v57 + 280) & 1) != 0)
                  {
                    v15 = v88;
                    *&v88->_sqlCoreFlags |= 2u;
                    goto LABEL_121;
                  }
                }

                v54 = [v53 countByEnumeratingWithState:&v91 objects:v118 count:16];
                v15 = v88;
                if (v54)
                {
                  continue;
                }

                break;
              }
            }
          }

LABEL_121:
          ++v46;
        }

        while (v46 != v44);
        v58 = [allValues countByEnumeratingWithState:&v99 objects:v120 count:16];
        v44 = v58;
      }

      while (v58);
    }
  }

  objc_opt_self();
  *(v15 + 248) = +[NSSQLCore _databaseKeyFromValue:](NSSQLCore, [options objectForKey:@"_NSSQLiteSEEKeychainItemOption"]);

  if (coordinatorCopy)
  {
    v59 = [[NSGenerationalRowCache alloc] initWithStore:v15];
  }

  else
  {
    v59 = 0;
  }

  *(v15 + 136) = v59;
  *(v15 + 112) = [[NSSQLiteAdapter alloc] initWithSQLCore:v15];
  v60 = [options valueForKey:@"NSXPCStoreDelegate"];
  if ([v60 isEqual:MEMORY[0x1E695E118]])
  {
    *(v15 + 200) |= 0x100u;
  }

  *(v15 + 152) = 0;
  *(v15 + 156) = 0;
  *(v15 + 216) = objc_alloc_init(_PFMutex);
  if ([objc_msgSend(options valueForKey:{@"NSPersistentStoreOrderKeyUpdateNotification", "BOOLValue"}])
  {
    *(v15 + 200) |= 0x20u;
  }

  v61 = [options valueForKey:@"NSPersistentStoreFileProtectionKey"];
  if (!v61)
  {
    v21 = v15;
    v62 = *(v15 + 200) & 0xFFFFFFE3;
    goto LABEL_145;
  }

  if ([*MEMORY[0x1E696A3A8] isEqualToString:v61])
  {
    v21 = v15;
    v62 = *(v15 + 200) & 0xFFFFFFE3 | 0x10;
LABEL_145:
    *(v15 + 200) = v62;
    goto LABEL_146;
  }

  if ([*MEMORY[0x1E696A388] isEqualToString:v61])
  {
    v21 = v15;
    v62 = *(v15 + 200) & 0xFFFFFFE3 | 0xC;
    goto LABEL_145;
  }

  if ([*MEMORY[0x1E696A380] isEqualToString:v61])
  {
    v21 = v15;
    v62 = *(v15 + 200) & 0xFFFFFFE3 | 8;
    goto LABEL_145;
  }

  if ([*MEMORY[0x1E696A378] isEqualToString:v61])
  {
    v21 = v15;
    v62 = *(v15 + 200) & 0xFFFFFFE3 | 4;
    goto LABEL_145;
  }

  if ([*MEMORY[0x1E696A398] isEqualToString:v61])
  {
    v21 = v15;
    v62 = *(v15 + 200) | 0x1C;
    goto LABEL_145;
  }

  v68 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    v69 = _pflogging_catastrophic_mode == 0;
    v70 = _PFLogGetLogStream(1);
    v71 = os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
    if (v69)
    {
      if (v71)
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v61;
        goto LABEL_163;
      }
    }

    else if (v71)
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v61;
LABEL_163:
      _os_log_error_impl(&dword_18565F000, v70, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", location, 0xCu);
    }
  }

  _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v61);
  objc_autoreleasePoolPop(v68);
  v21 = v15;
LABEL_146:
  if (coordinatorCopy)
  {
    v63 = getprogname();
    if (!v63)
    {
LABEL_154:
      v21 = v15;
      goto LABEL_155;
    }

    v21 = v15;
    if (!strncmp("assetsd", v63, 7uLL) || !strncmp("homed", v63, 5uLL) || !strncmp("mapssyncd", v63, 9uLL) || !strncmp("financed", v63, 8uLL) || !strncmp("xctest", v63, 6uLL))
    {
      objc_initWeak(location, v15);
      global_queue = dispatch_get_global_queue(0, 0);
      v65 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 0x30uLL, global_queue);
      *(v15 + 272) = v65;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __78__NSSQLCore_initWithPersistentStoreCoordinator_configurationName_URL_options___block_invoke;
      handler[3] = &unk_1E6EC23A0;
      objc_copyWeak(&v90, location);
      dispatch_source_set_event_handler(v65, handler);
      dispatch_resume(*(v15 + 272));
      *(v15 + 200) &= ~0x20000u;
      objc_destroyWeak(&v90);
      objc_destroyWeak(location);
      goto LABEL_154;
    }
  }

LABEL_155:
  v66 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)_setupHistoryModelForPSC:(void *)c withExcludedEntityNames:
{
  v88 = *MEMORY[0x1E69E9840];
  if (!self || ![objc_msgSend(self "options")])
  {
    goto LABEL_67;
  }

  v6 = [objc_msgSend(self "options")];
  v7 = v6;
  if (v6 && ([v6 isNSDictionary] & 1) == 0 && (objc_msgSend(v7, "isNSNumber") & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersistentHistoryTrackingKey must be a NSNumber" userInfo:0]);
  }

  if (([v7 isNSDictionary] & 1) == 0 && (!objc_msgSend(v7, "isNSNumber") || !objc_msgSend(v7, "BOOLValue")))
  {
    v9 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v85 = v7;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Persistent History is disabled - %@\n", buf, 0xCu);
        }
      }

      else
      {
        v35 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v85 = v7;
          _os_log_impl(&dword_18565F000, v35, OS_LOG_TYPE_INFO, "CoreData: debug: Persistent History is disabled - %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v36 = 1;
    }

    else
    {
      v36 = 9;
    }

    _NSCoreDataLog_console(v36, "Persistent History is disabled - %@", v7);
    objc_autoreleasePoolPop(v9);
    goto LABEL_67;
  }

  if ([self ancillaryModels])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{objc_msgSend(self, "ancillaryModels")}];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v63 = v8;
  cCopy = c;
  if ([self ancillarySQLModels])
  {
    v62 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{objc_msgSend(self, "ancillarySQLModels")}];
  }

  else
  {
    v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  *(self + 200) |= 0x400u;
  v11 = *(self + 104);
  [self options];
  v12 = [_PFPersistentHistoryModel newPersistentHistoryManagedObjectModelForSQLModel:v11 options:?];
  [v63 setObject:v12 forKey:@"NSPersistentHistoryTrackingKey"];
  v13 = *(self + 104);
  [self options];
  v14 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:v13 options:?];
  [v62 setObject:v14 forKey:@"NSPersistentHistoryTrackingKey"];
  if (a2)
  {
    [(_PFModelMap *)*(a2 + 96) addManagedObjectModel:v12];
    v15 = +[_PFPersistentHistoryFetchModel newFetchHistoryModelForCoordinator:andOptions:];
    [(_PFModelMap *)*(a2 + 96) addManagedObjectModel:v15];
  }

  if (![v7 isNSDictionary] || !objc_msgSend(v7, "count"))
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_31;
  }

  if ([objc_msgSend(v7 valueForKey:{@"NSPersistentHistoryTrackingExcludeUnmodifiedPropertiesForBatchUpdate", "BOOLValue"}])
  {
    v16 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v17 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: error: Persistent History Tracking Option - Batch Update Only Tracks Modified Properties\n", buf, 2u);
        }
      }

      else
      {
        v38 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v38, OS_LOG_TYPE_INFO, "CoreData: debug: Persistent History Tracking Option - Batch Update Only Tracks Modified Properties\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v39 = 1;
    }

    else
    {
      v39 = 9;
    }

    _NSCoreDataLog_console(v39, "Persistent History Tracking Option - Batch Update Only Tracks Modified Properties");
    objc_autoreleasePoolPop(v16);
    *(self + 200) |= 0x8000u;
  }

  v40 = [v7 objectForKey:@"NSPersistentHistoryTrackingEntitiesToInclude"];
  v41 = v40;
  if (v40 && ([v40 isNSArray] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersistentHistoryTrackingEntitiesToInclude must be an NSArray of NSString" userInfo:0]);
  }

  if ([v41 count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v41, "count")}];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v42 = [v41 countByEnumeratingWithState:&v76 objects:v87 count:16];
    if (v42)
    {
      v43 = *v77;
      v44 = @"NSPersistentHistoryTrackingEntitiesToInclude must be an NSArray of NSString";
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v77 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v76 + 1) + 8 * i);
          if (([v46 isNSString] & 1) == 0)
          {
            goto LABEL_119;
          }

          if (![*(self + 104) entityNamed:v46])
          {
            v44 = @"NSPersistentHistoryTrackingEntitiesToInclude has entities not included in the Managed Object Model";
LABEL_119:
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v44 userInfo:0]);
          }

          [v19 addObject:v46];
        }

        v42 = [v41 countByEnumeratingWithState:&v76 objects:v87 count:16];
      }

      while (v42);
    }
  }

  else
  {
    v19 = 0;
  }

  v47 = [v7 objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
  v48 = v47;
  if (v47 && ([v47 isNSArray] & 1) == 0)
  {
    v60 = @"NSPersistentHistoryTrackingEntitiesToExclude must be an NSArray";
    goto LABEL_126;
  }

  if ([v19 count] && objc_msgSend(v48, "count"))
  {
    v60 = @"NSPersistentHistoryTrackingEntitiesToExclude & NSPersistentHistoryTrackingEntitiesToInclude are mutually exclusive, you cannot set both options";
LABEL_126:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v60 userInfo:0]);
  }

  if ([v48 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v48, "count")}];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v49 = [v48 countByEnumeratingWithState:&v72 objects:v86 count:16];
    if (v49)
    {
      v50 = *v73;
      do
      {
        v51 = 0;
        do
        {
          if (*v73 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = *(*(&v72 + 1) + 8 * v51);
          if (([v52 isNSString] & 1) == 0)
          {
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersistentHistoryTrackingEntitiesToExclude must be an NSArray of NSString" userInfo:0]);
          }

          if ([*(self + 104) entityNamed:v52])
          {
            [v18 addObject:v52];
            goto LABEL_111;
          }

          v53 = objc_autoreleasePoolPush();
          _pflogInitialize(2);
          if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v54 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v85 = v52;
                v55 = v54;
                v56 = "CoreData: error: Entity (%@) was not found in model.\n";
LABEL_114:
                _os_log_error_impl(&dword_18565F000, v55, OS_LOG_TYPE_ERROR, v56, buf, 0xCu);
              }
            }

            else
            {
              v57 = _PFLogGetLogStream(2);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v85 = v52;
                v55 = v57;
                v56 = "CoreData: warning: Entity (%@) was not found in model.\n";
                goto LABEL_114;
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v58 = 1;
          }

          else
          {
            v58 = 2;
          }

          _NSCoreDataLog_console(v58, "Entity (%@) was not found in model.", v52);
          objc_autoreleasePoolPop(v53);
LABEL_111:
          ++v51;
        }

        while (v49 != v51);
        v59 = [v48 countByEnumeratingWithState:&v72 objects:v86 count:16];
        v49 = v59;
      }

      while (v59);
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_31:
  v20 = *(self + 104);
  if (v20)
  {
    v21 = *(v20 + 24);
  }

  else
  {
    v21 = 0;
  }

  allKeys = [v21 allKeys];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v19 count])
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v25 = [allKeys countByEnumeratingWithState:&v68 objects:v83 count:16];
    if (v25)
    {
      v26 = *v69;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v69 != v26)
          {
            objc_enumerationMutation(allKeys);
          }

          v28 = *(*(&v68 + 1) + 8 * j);
          if ([v19 containsObject:v28])
          {
            v29 = v23;
          }

          else
          {
            v29 = v24;
          }

          [v29 addObject:v28];
        }

        v25 = [allKeys countByEnumeratingWithState:&v68 objects:v83 count:16];
      }

      while (v25);
    }
  }

  else if ([v18 count])
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v30 = [allKeys countByEnumeratingWithState:&v64 objects:v82 count:16];
    if (v30)
    {
      v31 = *v65;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v65 != v31)
          {
            objc_enumerationMutation(allKeys);
          }

          v33 = *(*(&v64 + 1) + 8 * k);
          if ([v18 containsObject:v33])
          {
            v34 = v24;
          }

          else
          {
            v34 = v23;
          }

          [v34 addObject:v33];
        }

        v30 = [allKeys countByEnumeratingWithState:&v64 objects:v82 count:16];
      }

      while (v30);
    }
  }

  else
  {
    [v23 addObjectsFromArray:allKeys];
  }

  if ([cCopy count])
  {
    [v24 addObjectsFromArray:{objc_msgSend(cCopy, "allObjects")}];
  }

  v80[0] = @"NSPersistentHistoryTrackingEntitiesToInclude";
  v81[0] = [MEMORY[0x1E695DFD8] setWithArray:v23];
  v80[1] = @"NSPersistentHistoryTrackingEntitiesToExclude";
  v81[1] = [MEMORY[0x1E695DFD8] setWithArray:v24];
  *(self + 240) = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];
  [self setAncillaryModels:v63];
  [self setAncillarySQLModels:v62];

LABEL_67:
  v37 = *MEMORY[0x1E69E9840];
}

void __78__NSSQLCore_initWithPersistentStoreCoordinator_configurationName_URL_options___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (!Weak)
  {
    goto LABEL_11;
  }

  v3 = Weak;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v17 = v3;
        v18 = 2112;
        v19 = [v3 identifier];
        v7 = "CoreData: error: cache_handle_memory_pressure invoked for core %p / %@\n";
LABEL_13:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v7, buf, 0x16u);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(2);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v17 = v3;
        v18 = 2112;
        v19 = [v3 identifier];
        v7 = "CoreData: warning: cache_handle_memory_pressure invoked for core %p / %@\n";
        goto LABEL_13;
      }
    }
  }

  v8 = _pflogging_catastrophic_mode;
  v9 = [v3 identifier];
  v10 = 1;
  if (!v8)
  {
    v10 = 2;
  }

  _NSCoreDataLog_console(v10, "cache_handle_memory_pressure invoked for core %p / %@", v3, v9);
  objc_autoreleasePoolPop(v5);
  [(NSSQLCoreDispatchManager *)*(v3 + 16) enumerateAvailableConnectionsWithBlock:?];
  [(NSGenerationalRowCache *)*(v3 + 17) forgetAllGenerationalExternalData];
  objc_autoreleasePoolPop(v4);
  os_unfair_lock_lock_with_options();
  dispatch_suspend(*(v3 + 34));
  *(v3 + 50) |= 0x20000u;
  os_unfair_lock_unlock(v3 + 38);
  v11 = dispatch_time(0, 10000000000);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__NSSQLCore_initWithPersistentStoreCoordinator_configurationName_URL_options___block_invoke_2;
  block[3] = &unk_1E6EC23A0;
  objc_copyWeak(&v15, (a1 + 32));
  dispatch_after(v11, global_queue, block);
  objc_destroyWeak(&v15);
LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
}

void __78__NSSQLCore_initWithPersistentStoreCoordinator_configurationName_URL_options___block_invoke_2(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    os_unfair_lock_lock_with_options();
    v3 = *(v2 + 34);
    if (v3)
    {
      dispatch_resume(v3);
      *(v2 + 50) &= ~0x20000u;
    }

    os_unfair_lock_unlock(v2 + 38);
  }
}

- (BOOL)load:(id *)load
{
  if (self)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    schemaValidationConnection = [(NSSQLCore *)self schemaValidationConnection];
    if ([(NSSQLiteConnection *)schemaValidationConnection canConnect]&& (![(NSSQLiteConnection *)schemaValidationConnection databaseIsEmpty]|| (*(&self->_sqlCoreFlags + 1) & 0x40) != 0))
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__NSSQLCore__ensureDatabaseMatchesModel__block_invoke;
      v8[3] = &unk_1E6EC1388;
      v8[4] = schemaValidationConnection;
      v8[5] = self;
      v8[6] = v9;
      [(NSSQLiteConnection *)schemaValidationConnection performAndWait:v8];
    }

    _Block_object_dispose(v9, 8);
  }

  v5 = *&self->_sqlCoreFlags | 0x40;
  self->_sqlCoreFlags = v5;
  schemaValidationConnection = self->_schemaValidationConnection;
  if (schemaValidationConnection)
  {
    LODWORD(schemaValidationConnection) = ((*&schemaValidationConnection->_sqliteConnectionFlags & 0xC) == 4) << 7;
  }

  self->_sqlCoreFlags = (schemaValidationConnection | v5 & 0xFFFFFF7F);
  self->_dispatchManager = [[NSSQLCoreDispatchManager alloc] initWithSQLCore:self seedConnection:self->_schemaValidationConnection];

  self->_schemaValidationConnection = 0;
  return 1;
}

- (uint64_t)_rebuildTriggerSchemaUsingConnection:(uint64_t)connection recomputeValues:(uint64_t)values error:(uint64_t)error
{
  v64 = *MEMORY[0x1E69E9840];
  v56 = 0;
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = *(connection + 104);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  allValues = [v5 allValues];
  v7 = [allValues countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (!v7)
  {
    goto LABEL_55;
  }

  v38 = *v53;
  v8 = 1;
  do
  {
    v9 = 0;
    v39 = v7;
    do
    {
      if (*v53 != v38)
      {
        objc_enumerationMutation(allValues);
      }

      v10 = *(*(&v52 + 1) + 8 * v9);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      if (v10)
      {
        v11 = *(v10 + 40);
      }

      else
      {
        v11 = 0;
      }

      allValues2 = [v11 allValues];
      v13 = [allValues2 countByEnumeratingWithState:&v48 objects:v62 count:16];
      v40 = v9;
      if (v13)
      {
        v14 = *v49;
        do
        {
          v15 = v8;
          for (i = 0; i != v13; ++i)
          {
            if (*v49 != v14)
            {
              objc_enumerationMutation(allValues2);
            }

            v17 = *(*(&v48 + 1) + 8 * i);
            propertyType = [v17 propertyType];
            if (v17)
            {
              v19 = propertyType == 1;
            }

            else
            {
              v19 = 0;
            }

            if (v19 && (v17[16] & 8) != 0)
            {
              v20 = [NSSQLAttributeExtensionFactory newExtensionsForAttribute:v17 error:&v56];
              v21 = v20;
              if (v20)
              {
                v46[0] = MEMORY[0x1E69E9820];
                v46[1] = 3221225472;
                v46[2] = __72__NSSQLCore__rebuildTriggerSchemaUsingConnection_recomputeValues_error___block_invoke;
                v46[3] = &unk_1E6EC37F0;
                v46[4] = v10;
                v46[5] = v41;
                v47 = 0;
                [v20 enumerateObjectsUsingBlock:v46];
              }

              else
              {
                v15 = 0;
              }
            }
          }

          v8 = v15;
          v13 = [allValues2 countByEnumeratingWithState:&v48 objects:v62 count:16];
        }

        while (v13);
      }

      v9 = v40 + 1;
    }

    while (v40 + 1 != v39);
    v22 = [allValues countByEnumeratingWithState:&v52 objects:v63 count:16];
    v7 = v22;
  }

  while (v22);
  if ((v8 & 1) == 0)
  {
    v26 = 0;
  }

  else
  {
LABEL_55:
    if ([v41 count])
    {
      [(NSSQLiteConnection *)values beginTransaction];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v23 = [v41 countByEnumeratingWithState:&v42 objects:v61 count:16];
      if (v23)
      {
        v24 = *v43;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v43 != v24)
            {
              objc_enumerationMutation(v41);
            }

            [(NSSQLiteConnection *)values prepareAndExecuteSQLStatement:?];
          }

          v23 = [v41 countByEnumeratingWithState:&v42 objects:v61 count:16];
        }

        while (v23);
      }

      v26 = 1;
      [(NSSQLiteConnection *)values commitTransaction];
    }

    else
    {
      v26 = 1;
    }
  }

  [(NSSQLiteConnection *)values endFetchAndRecycleStatement:?];
  v27 = v56;

  v28 = 0;
  v29 = v56;
  if ((v26 & 1) == 0)
  {
    if (v56)
    {
      if (v35)
      {
        *v35 = v56;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v58 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
        v59 = 1024;
        v60 = 5046;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v31 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v58 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
        v59 = 1024;
        v60 = 5046;
        _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v26 & 1;
}

- (id)_rebuildDerivedAttributeTriggerSchemaUsingConnection:(uint64_t)connection recomputeValues:(uint64_t)values error:
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = *(connection + 104);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  allValues = [v5 allValues];
  v7 = [allValues countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        derivedAttributesExtension = [(NSSQLEntity *)*(*(&v29 + 1) + 8 * v9) derivedAttributesExtension];
        v11 = derivedAttributesExtension;
        if (derivedAttributesExtension)
        {
          [(NSSQLEntity_DerivedAttributesExtension *)derivedAttributesExtension _generateTriggerSQL];
          migrationSQL = v11->_migrationSQL;
        }

        else
        {
          migrationSQL = 0;
        }

        v13 = [(NSMutableDictionary *)migrationSQL valueForKey:@"dropStatements"];
        v14 = [(NSMutableDictionary *)migrationSQL valueForKey:@"triggerCreationStatements"];
        [v3 addObjectsFromArray:v13];
        [v3 addObjectsFromArray:v14];
        [v3 addObjectsFromArray:{-[NSMutableDictionary valueForKey:](migrationSQL, "valueForKey:", @"dataStatements"}];
        ++v9;
      }

      while (v7 != v9);
      v15 = [allValues countByEnumeratingWithState:&v29 objects:v34 count:16];
      v7 = v15;
    }

    while (v15);
  }

  if ([v3 count])
  {
    [(NSSQLiteConnection *)values beginTransaction];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v3);
          }

          [(NSSQLiteConnection *)values prepareAndExecuteSQLStatement:?];
        }

        v16 = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }

    [(NSSQLiteConnection *)values commitTransaction];
  }

  [(NSSQLiteConnection *)values endFetchAndRecycleStatement:?];

  v19 = 0;
  result = 0;
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_updateToVersion640PrimaryKeyTableUsingStatements:(void *)statements connection:
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSSQLiteConnection *)statements connect];
  [(NSSQLiteConnection *)statements beginTransaction];
  fetchMetadata = [(NSSQLiteConnection *)statements fetchMetadata];
  v7 = [fetchMetadata objectForKey:0x1EF3FD408];
  if (v7 && [v7 intValue] <= 639)
  {
    v8 = [fetchMetadata mutableCopy];
    [(__CFString *)v8 setObject:+[_PFRoutines _getPFBundleVersionNumber]forKey:0x1EF3FD408];
    [(NSSQLiteConnection *)statements saveMetadata:v8];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(a2);
          }

          [(NSSQLiteConnection *)statements prepareAndExecuteSQLStatement:?];
        }

        v9 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(NSSQLiteConnection *)statements commitTransaction];
    os_unfair_lock_lock_with_options();
    [*(self + 160) setObject:+[_PFRoutines _getPFBundleVersionNumber]() forKey:0x1EF3FD408];
    os_unfair_lock_unlock((self + 152));
  }

  else
  {
    [(NSSQLiteConnection *)statements rollbackTransaction];
  }

  [(NSSQLiteConnection *)statements endFetchAndRecycleStatement:?];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_setMetadata:(int)metadata clean:
{
  if (!self)
  {
    return;
  }

  v6 = [a2 mutableCopy];
  os_unfair_lock_lock_with_options();
  v7 = *(self + 160);
  if (!v7)
  {
    v8 = 0;
LABEL_7:

    *(self + 160) = v6;
    atomic_store(metadata, (self + 196));
    [self _setMetadataDirty:metadata ^ 1u];
    goto LABEL_8;
  }

  if (([v7 isEqual:a2] & 1) == 0)
  {
    v8 = *(self + 160);
    goto LABEL_7;
  }

LABEL_8:

  os_unfair_lock_unlock((self + 152));
}

uint64_t __32__NSSQLCore__loadAndSetMetadata__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)dispatchRequest:(uint64_t)request withRetries:
{
  v38 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_4;
  }

  selfCopy = self;
  [a2 executePrologue];
  if (a2)
  {
    if (a2[6])
    {
      goto LABEL_4;
    }

    v7 = a2[5] != 0;
    if (request < 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 0;
    if (request < 0)
    {
      goto LABEL_4;
    }
  }

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = 0;
  v9 = sel_userInfo;
  v10 = request + 1;
  v11 = 0x1EA8C5000uLL;
  p_info = &OBJC_METACLASS___NSBatchInsertRequest.info;
  v13 = &_pflogging_enable_oslog;
  v14 = "SQLCore dispatchRequest: exception handling request: %@ , %@ with userInfo of %@";
  do
  {
    if ((-[NSSQLCoreDispatchManager routeStoreRequest:](*(selfCopy + *(v11 + 3272)), a2) & 1) != 0 || [a2 result])
    {
      [a2 executeEpilogue];
      goto LABEL_4;
    }

    if (a2)
    {
      v15 = a2[6];
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    if (v16)
    {
      v18 = v16;
      if (!v8)
      {
        v8 = v16;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (*v13 >= 1)
        {
          v30 = v8;
          v19 = selfCopy;
          v20 = v14;
          v21 = v13;
          v22 = v11;
          v23 = v9;
          v24 = p_info;
          v25 = _pflogging_catastrophic_mode;
          log = _PFLogGetLogStream(1);
          v26 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
          if (v25)
          {
            p_info = v24;
            v9 = v23;
            v11 = v22;
            v13 = v21;
            v14 = v20;
            selfCopy = v19;
            v8 = v30;
            if (v26)
            {
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                userInfo = 0;
                goto LABEL_32;
              }

LABEL_29:
              userInfo = [v18 userInfo];
LABEL_32:
              *buf = 138412802;
              v33 = a2;
              v34 = 2112;
              v35 = v18;
              v36 = 2112;
              v37 = userInfo;
              _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: SQLCore dispatchRequest: exception handling request: %@ , %@ with userInfo of %@\n", buf, 0x20u);
            }
          }

          else
          {
            p_info = v24;
            v9 = v23;
            v11 = v22;
            v13 = v21;
            v14 = v20;
            selfCopy = v19;
            v8 = v30;
            if (v26)
            {
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                userInfo = 0;
                goto LABEL_32;
              }

              goto LABEL_29;
            }
          }
        }

        if (objc_opt_respondsToSelector())
        {
          userInfo2 = [v18 userInfo];
        }

        else
        {
          userInfo2 = 0;
        }

        _NSCoreDataLog_console(1, v14, a2, v18, userInfo2);
        objc_autoreleasePoolPop(context);
      }
    }

    --v10;
  }

  while (v10 > 0);
  if (a2 && v8)
  {
    objc_setProperty_nonatomic(a2, v17, v8, 48);
  }

LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)loadMetadata:(id *)metadata
{
  if (!self)
  {
    v9 = 1;
    if (!metadata)
    {
      return !v9;
    }

    goto LABEL_6;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__24;
  v23 = __Block_byref_object_dispose__24;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __32__NSSQLCore__loadAndSetMetadata__block_invoke;
  v18[3] = &unk_1E6EC36B8;
  v18[4] = self;
  v18[5] = &v19;
  if ((*&self->_sqlCoreFlags & 0x40) != 0)
  {
    v6 = [NSSQLBlockRequestContext alloc];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __32__NSSQLCore__loadAndSetMetadata__block_invoke_2;
    v15 = &unk_1E6EC36E0;
    v16 = v18;
    v7 = [(NSSQLBlockRequestContext *)v6 initWithBlock:&v12 context:0 sqlCore:self];
    [(NSSQLCore *)self dispatchRequest:v7 withRetries:0];
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__24;
    v16 = __Block_byref_object_dispose__24;
    v17 = 0;
    schemaValidationConnection = [(NSSQLCore *)self schemaValidationConnection];
    *(v13 + 40) = schemaValidationConnection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __32__NSSQLCore__loadAndSetMetadata__block_invoke_3;
    v11[3] = &unk_1E6EC1790;
    v11[4] = v18;
    v11[5] = &v12;
    [(NSSQLiteConnection *)schemaValidationConnection performAndWait:v11];
    _Block_object_dispose(&v12, 8);
  }

  v8 = v20[5];
  _Block_object_dispose(&v19, 8);
  v9 = v8 == 0;
  if (metadata)
  {
LABEL_6:
    if (v9)
    {
      *metadata = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134080 userInfo:0];
    }
  }

  return !v9;
}

- (void)_setupObserver:(id)observer
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = [-[NSDictionary objectForKey:](-[NSPersistentStore options](self "options")];
  v6 = [-[NSDictionary objectForKey:](-[NSPersistentStore options](self "options")];
  sqlCoreFlags = self->_sqlCoreFlags;
  if ((v5 & 1) != 0 || v6)
  {
    self->_sqlCoreFlags = (*&sqlCoreFlags | 0x1000);
  }

  else if ((*&sqlCoreFlags & 0x1000) == 0)
  {
    goto LABEL_42;
  }

  if (+[NSSQLCore debugDefault]>= 1)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = [(NSSQLCore *)self identifier];
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Remote Change Notification - registered core observer for %@\n", &buf, 0xCu);
        }
      }

      else
      {
        v10 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = [(NSSQLCore *)self identifier];
          _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_INFO, "CoreData: debug: Remote Change Notification - registered core observer for %@\n", &buf, 0xCu);
        }
      }
    }

    v11 = _pflogging_catastrophic_mode == 0;
    identifier = [(NSSQLCore *)self identifier];
    v13 = 9;
    if (!v11)
    {
      v13 = 1;
    }

    _NSCoreDataLog_console(v13, "Remote Change Notification - registered core observer for %@", identifier);
    objc_autoreleasePoolPop(v8);
  }

  v14 = [_NSSQLCoreConnectionObserver alloc];
  if (v14)
  {
    v29.receiver = v14;
    v29.super_class = _NSSQLCoreConnectionObserver;
    v15 = [(NSPersistentStore *)&v29 init];
    v16 = v15;
    if (!v15)
    {
      goto LABEL_41;
    }

    LODWORD(v15->super._configurationName) = -1;
    objc_storeWeak(&v15->super._url, self);
    objc_storeWeak(&v16->_psc, observer);
    if ((*(&self->_sqlCoreFlags + 1) & 0x10) == 0)
    {
      goto LABEL_41;
    }

    v17 = [_PFRoutines _remoteChangeNotificationNameForStore:?];
    if (!v17)
    {
      goto LABEL_41;
    }

    v16->_queue = dispatch_queue_create([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@.queue.%p", v17, v16), "UTF8String"], 0);
    objc_initWeak(&location, v16);
    fileSystemRepresentation = [v17 fileSystemRepresentation];
    queue = v16->_queue;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v33 = __63___NSSQLCoreConnectionObserver_initWithSQLCore_andCoordinator___block_invoke;
    v34 = &unk_1E6EC38D8;
    objc_copyWeak(v35, &location);
    v20 = notify_register_dispatch(fileSystemRepresentation, &v16->_token, queue, &buf);
    if (!v20)
    {
      if (+[NSSQLCore debugDefault]>= 1)
      {
        v23 = objc_autoreleasePoolPush();
        _pflogInitialize(9);
        if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v24 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *v30 = 138412290;
              v31 = v17;
              _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: error: Remote Change Notification - registered for  %@\n", v30, 0xCu);
            }
          }

          else
          {
            v25 = _PFLogGetLogStream(9);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *v30 = 138412290;
              v31 = v17;
              _os_log_impl(&dword_18565F000, v25, OS_LOG_TYPE_INFO, "CoreData: debug: Remote Change Notification - registered for  %@\n", v30, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v26 = 1;
        }

        else
        {
          v26 = 9;
        }

        _NSCoreDataLog_console(v26, "Remote Change Notification - registered for  %@", v17);
        objc_autoreleasePoolPop(v23);
      }

      objc_destroyWeak(v35);
      objc_destroyWeak(&location);
      goto LABEL_41;
    }

    v21 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v30 = 67109120;
      LODWORD(v31) = v20;
      _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: fault: Remote Change Notification - Failed to setup notification listener for NSPersistentStoreRemoteChangeNotification: %d\n", v30, 8u);
    }

    v22 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *v30 = 67109120;
      LODWORD(v31) = v20;
      _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Remote Change Notification - Failed to setup notification listener for NSPersistentStoreRemoteChangeNotification: %d", v30, 8u);
    }

    objc_destroyWeak(v35);
    objc_destroyWeak(&location);
  }

  v16 = 0;
LABEL_41:
  self->_observer = v16;
LABEL_42:
  v27 = *MEMORY[0x1E69E9840];
}

- (void)_postChangeNotificationWithTransactionID:(uint64_t)d
{
  v22 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v4 = objc_autoreleasePoolPush();
    if ((*(d + 201) & 0x10) != 0)
    {
      v5 = [_PFRoutines _remoteChangeNotificationNameForStore:d];
    }

    else
    {
      v5 = 0;
    }

    uTF8String = [v5 UTF8String];
    if (!uTF8String)
    {
LABEL_30:
      objc_autoreleasePoolPop(v4);
      goto LABEL_31;
    }

    v7 = uTF8String;
    v8 = *(d + 268);
    out_token = v8;
    if (v8 != -1)
    {
LABEL_7:
      if (a2 && v8 != -1)
      {
        notify_set_state(v8, [a2 unsignedLongLongValue]);
      }

      if (+[NSSQLCore debugDefault]>= 1)
      {
        v9 = objc_autoreleasePoolPush();
        _pflogInitialize(9);
        if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v21 = v5;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Remote Change Notification - Posting for %@\n", buf, 0xCu);
            }
          }

          else
          {
            v16 = _PFLogGetLogStream(9);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v21 = v5;
              _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_INFO, "CoreData: debug: Remote Change Notification - Posting for %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v17 = 1;
        }

        else
        {
          v17 = 9;
        }

        _NSCoreDataLog_console(v17, "Remote Change Notification - Posting for %@", v5);
        objc_autoreleasePoolPop(v9);
      }

      notify_post(v7);
      goto LABEL_30;
    }

    if (!notify_register_check(uTF8String, &out_token))
    {
      v8 = out_token;
      v15 = -1;
      atomic_compare_exchange_strong_explicit((d + 268), &v15, out_token, memory_order_relaxed, memory_order_relaxed);
      if (v15 != -1)
      {
        notify_cancel(v8);
        v8 = *(d + 268);
        out_token = v8;
      }

      goto LABEL_7;
    }

    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v12 = _pflogging_catastrophic_mode;
      v13 = _PFLogGetLogStream(1);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        if (!v14)
        {
          goto LABEL_33;
        }

        *buf = 0;
      }

      else
      {
        if (!v14)
        {
          goto LABEL_33;
        }

        *buf = 0;
      }

      _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: error: unable to check registration for posting store changed notification\n", buf, 2u);
    }

LABEL_33:
    _NSCoreDataLog_console(1, "unable to check registration for posting store changed notification");
    objc_autoreleasePoolPop(v11);
    if (out_token != -1)
    {
      notify_cancel(out_token);
    }

    goto LABEL_30;
  }

LABEL_31:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)rowCacheForGeneration:(void *)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    result = result[17];
    if (result)
    {
      result = [(NSGenerationalRowCache *)result rowCacheForGeneration:a2];
      if (!result)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v7 = v2[17];
          v10 = 134218498;
          v11 = v7;
          v12 = 2112;
          identifier = [v2 identifier];
          v14 = 2112;
          v15 = a2;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: generational row cache %p failed to return a value for store '%@' with token %@\n", &v10, 0x20u);
        }

        v5 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          v8 = v2[17];
          identifier2 = [v2 identifier];
          v10 = 134218498;
          v11 = v8;
          v12 = 2112;
          identifier = identifier2;
          v14 = 2112;
          v15 = a2;
          _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: generational row cache %p failed to return a value for store '%@' with token %@", &v10, 0x20u);
        }

        result = 0;
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  if ([(NSPersistentStore *)self _persistentStoreCoordinator])
  {
    if ([d isTemporaryID])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"cannot find data for a temporary oid: %@", d), 0}]);
    }

    [context stalenessInterval];
    v10 = v9;
    if (v9 <= 0.0)
    {
      v11 = *&NSSQLDistantPastTimeInterval;
    }

    else
    {
      v11 = CFAbsoluteTimeGetCurrent() - v9;
    }

    if (v10 == 0.0)
    {
      v13 = *&NSSQLDistantFutureTimeInterval;
    }

    else
    {
      v13 = v11;
    }

    if (self)
    {
      v14 = -[NSSQLCore rowCacheForGeneration:](self, [context _queryGenerationToken]);
    }

    else
    {
      v14 = 0;
    }

    v15 = [(NSPersistentStoreCache *)v14 rowForObjectID:d afterTimestamp:v13];
    if (v15)
    {
      result = v15;
      v16 = v15;
      goto LABEL_29;
    }

    v17 = [[NSSQLObjectFaultRequestContext alloc] initWithObjectID:d context:context sqlCore:self];
    [(NSSQLCore *)self dispatchRequest:v17 withRetries:0];
    result = [(NSSQLStoreRequestContext *)v17 result];
    if (result)
    {
LABEL_28:

      goto LABEL_29;
    }

    if (v17)
    {
      exception = v17->super._exception;
      if (exception)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v25 = exception;
          objc_exception_throw(exception);
        }

        if (error)
        {
          errorCopy = [(NSException *)exception errorObjectWithUserInfo:0];
LABEL_27:
          result = 0;
          *error = errorCopy;
          goto LABEL_28;
        }

LABEL_30:
        result = 0;
        goto LABEL_28;
      }

      if (!error)
      {
        goto LABEL_30;
      }

      error = v17->super._error;
      if (error)
      {
        errorCopy = error;
        goto LABEL_27;
      }
    }

    else if (!error)
    {
      goto LABEL_30;
    }

    v21 = MEMORY[0x1E696ABC0];
    v26 = @"objectID";
    v27[0] = d;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    errorCopy = [v21 errorWithDomain:*MEMORY[0x1E696A250] code:133000 userInfo:v22];
    goto LABEL_27;
  }

  result = 0;
LABEL_29:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSError)_newValuesForRelationship:(void *)relationship forObjectWithID:(void *)d withContext:(NSError *)context error:
{
  if (!self || ![self _persistentStoreCoordinator])
  {
    return 0;
  }

  if ([relationship isTemporaryID])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"cannot find data for a temporary oid: %@", relationship), 0}]);
  }

  [d stalenessInterval];
  v11 = v10;
  v12 = CFAbsoluteTimeGetCurrent() - v10;
  if (v11 <= 0.0)
  {
    v12 = *&NSSQLDistantPastTimeInterval;
  }

  if (v11 == 0.0)
  {
    v13 = *&NSSQLDistantFutureTimeInterval;
  }

  else
  {
    v13 = v12;
  }

  v14 = -[NSSQLCore rowCacheForGeneration:](self, [d _queryGenerationToken]);
  if ([a2 isToMany])
  {
    v15 = [(NSPersistentStoreCache *)v14 toManyInformationForSourceObjectID:relationship forProperty:a2 afterTimestamp:v13];
  }

  else
  {
    relationship = [-[NSPersistentStoreCache rowForObjectID:afterTimestamp:](v14 relationship];
    if (!relationship)
    {
      goto LABEL_15;
    }

    v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{relationship, 0}];
  }

  error = v15;
  if (!v15)
  {
LABEL_15:
    v18 = [[NSSQLRelationshipFaultRequestContext alloc] initWithObjectID:relationship relationship:a2 context:d sqlCore:self];
    [(NSSQLCore *)self dispatchRequest:v18 withRetries:0];
    error = [(NSSQLStoreRequestContext *)v18 result];
    if (error)
    {
LABEL_25:

      return error;
    }

    if (v18)
    {
      exception = v18->super._exception;
      if (exception)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = exception;
          objc_exception_throw(exception);
        }

        if (context)
        {
          v20 = [(NSException *)exception errorObjectWithUserInfo:0];
LABEL_24:
          error = 0;
          *context = v20;
          goto LABEL_25;
        }

LABEL_27:
        error = 0;
        goto LABEL_25;
      }

      if (!context)
      {
        goto LABEL_27;
      }

      error = v18->super._error;
    }

    else
    {
      error = 0;
      if (!context)
      {
        goto LABEL_25;
      }
    }

    v20 = error;
    goto LABEL_24;
  }

  return error;
}

- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v6 = [(NSSQLCore *)self _newValuesForRelationship:relationship forObjectWithID:d withContext:context error:error];
  firstObject = [(NSError *)v6 firstObject];

  return firstObject;
}

- (id)newObjectIDSetsForToManyPrefetchingRequest:(uint64_t)request andSourceObjectIDs:(uint64_t)ds orderColumnName:
{
  selfCopy = self;
  if (self)
  {
    v5 = [[NSSQLObjectIDSetFetchRequestContext alloc] initWithRequest:a2 context:0 sqlCore:self idSets:request columnName:ds];
    [(NSSQLCore *)selfCopy dispatchRequest:v5 withRetries:0];
    selfCopy = [(NSSQLStoreRequestContext *)v5 result];
  }

  return selfCopy;
}

- (NSError)_newRowDataForXPCFetch:(void *)fetch variables:(uint64_t)variables context:(NSError *)context error:
{
  error = self;
  if (self)
  {
    v9 = [(NSSQLFetchRequestContext *)[NSSQLXPCFetchRequestContext alloc] initWithRequest:a2 context:variables sqlCore:self];
    v11 = v9;
    if (v9)
    {
      objc_setProperty_nonatomic(v9, v10, fetch, 216);
    }

    predicate = [a2 predicate];
    if (predicate)
    {
      [predicate minimalFormInContext:0];
    }

    [(NSSQLCore *)error dispatchRequest:v11 withRetries:0];
    error = [(NSSQLStoreRequestContext *)v11 result];
    if (error)
    {
      goto LABEL_12;
    }

    if (v11)
    {
      exception = v11->super.super._exception;
      if (exception)
      {
        v16 = exception;
        objc_exception_throw(exception);
      }

      if (!context)
      {
        error = 0;
        goto LABEL_12;
      }

      error = v11->super.super._error;
    }

    else
    {
      error = 0;
      if (!context)
      {
        goto LABEL_12;
      }
    }

    v14 = error;
    error = 0;
    *context = v14;
LABEL_12:
  }

  return error;
}

- (uint64_t)_obtainPermanentIDsForObjects:(uint64_t)result withNotification:(char *)notification error:(void *)error
{
  errorCopy = error;
  v111 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    if ([notification count])
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      notificationCopy = notification;
      v5 = [notification countByEnumeratingWithState:&v104 objects:v110 count:16];
      if (v5)
      {
        v6 = *v105;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v105 != v6)
            {
              objc_enumerationMutation(notificationCopy);
            }

            managedObjectContext = [*(*(&v104 + 1) + 8 * i) managedObjectContext];
            if (managedObjectContext)
            {
              v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v88 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{objc_msgSend(v4, "model"), 0}];
              [v88 addObjectsFromArray:{objc_msgSend(objc_msgSend(v4, "ancillarySQLModels"), "allValues")}];
              v93 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v9 = [v88 count];
              v87 = malloc_type_calloc(8uLL, v9, 0x81A233D0uLL);
              v95 = malloc_type_calloc(8uLL, v9, 0x2004093837F09uLL);
              if ([v88 count])
              {
                v10 = 0;
                v11 = 0;
                do
                {
                  v12 = [v88 objectAtIndexedSubscript:v10];
                  v13 = [MEMORY[0x1E696AD98] numberWithInt:v10];
                  if (v12)
                  {
                    [v93 setObject:v13 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(v12 + 60))}];
                    v14 = *(v12 + 32);
                  }

                  else
                  {
                    [v93 setObject:v13 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", 0)}];
                    v14 = 0;
                  }

                  v15 = [v14 count];
                  v16 = v15;
                  v87[v10] = v15;
                  v95[v10] = malloc_type_calloc(0x18uLL, v15 + 1, 0x108004098BBCF0FuLL);
                  v11 += v16;
                  ++v10;
                }

                while ([v88 count] > v10);
                v92 = v11;
              }

              else
              {
                v92 = 0;
              }

              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v17 = [notificationCopy countByEnumeratingWithState:&v100 objects:v109 count:16];
              if (v17)
              {
                v18 = *v101;
                do
                {
                  v19 = 0;
                  do
                  {
                    if (*v101 != v18)
                    {
                      objc_enumerationMutation(notificationCopy);
                    }

                    v20 = *(*(&v100 + 1) + 8 * v19);
                    if ([objc_msgSend(v20 "objectID")])
                    {
                      entity = [v20 entity];
                      if (entity)
                      {
                        v22 = _sqlCoreLookupSQLEntityForEntityDescription(v4, entity);
                      }

                      else
                      {
                        v22 = 0;
                      }

                      rootEntity = [v22 rootEntity];
                      v24 = MEMORY[0x1E696AD98];
                      model = [rootEntity model];
                      if (model)
                      {
                        v26 = *(model + 60);
                      }

                      else
                      {
                        v26 = 0;
                      }

                      v27 = [objc_msgSend(v93 objectForKeyedSubscript:{objc_msgSend(v24, "numberWithUnsignedInt:", v26)), "intValue"}];
                      if (rootEntity)
                      {
                        v28 = rootEntity[46];
                      }

                      else
                      {
                        v28 = 0;
                      }

                      v29 = v95[v27];
                      model2 = [rootEntity model];
                      if (model2)
                      {
                        v31 = *(model2 + 60);
                      }

                      else
                      {
                        v31 = 0;
                      }

                      v32 = (v29 + 24 * (v28 - v31));
                      ++*v32;
                      v33 = v32[2];
                      if (v33)
                      {
                        [v33 addObject:v20];
                      }

                      else
                      {
                        v32[2] = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v20, 0}];
                      }
                    }

                    ++v19;
                  }

                  while (v17 != v19);
                  v34 = [notificationCopy countByEnumeratingWithState:&v100 objects:v109 count:16];
                  v17 = v34;
                }

                while (v34);
              }

              Mutable = CFDictionaryCreateMutable(0, v92, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if ([v88 count])
              {
                v36 = 0;
                do
                {
                  v37 = [v88 objectAtIndexedSubscript:v36];
                  v38 = v87[v36];
                  if (v38 >= 1)
                  {
                    v39 = v37;
                    v40 = (v95[v36] + 24);
                    v41 = 1;
                    do
                    {
                      if (v39)
                      {
                        v42 = *(v39 + 60);
                      }

                      else
                      {
                        v42 = 0;
                      }

                      v43 = _sqlEntityForEntityID(v39, v42 + v41);
                      if (*v40)
                      {
                        CFDictionarySetValue(Mutable, v43, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?]);
                      }

                      ++v41;
                      v40 += 3;
                      --v38;
                    }

                    while (v38);
                  }

                  ++v36;
                }

                while ([v88 count] > v36);
              }

              v44 = [[NSSQLGenerateObjectIDRequestContext alloc] initForEntitiesAndCounts:Mutable context:managedObjectContext sqlCore:v4];
              CFRelease(Mutable);
              v83 = v44;
              [(NSSQLCore *)v4 dispatchRequest:v44 withRetries:1];
              result = [v44 result];
              v46 = result;
              if (result)
              {
                v47 = 0;
                v89 = result;
                while ([v88 count] > v47)
                {
                  v85 = objc_autoreleasePoolPush();
                  v48 = [v88 objectAtIndexedSubscript:v47];
                  v93 = v87[v47];
                  if (v93 >= 1)
                  {
                    v49 = v48;
                    v50 = v95[v47];
                    v91 = v47;
                    v92 = v50;
                    v51 = 1;
                    v90 = v48;
                    do
                    {
                      if (v49)
                      {
                        v52 = *(v49 + 60);
                      }

                      else
                      {
                        v52 = 0;
                      }

                      notificationCopy = v51;
                      v53 = (v92 + 24 * v51);
                      v53[1] = [objc_msgSend(v46 objectForKey:{_sqlEntityForEntityID(v49, v52 + v51)), "unsignedLongLongValue"}];
                      if (*v53)
                      {
                        v98 = 0u;
                        v99 = 0u;
                        v96 = 0u;
                        v97 = 0u;
                        v54 = v53[2];
                        v55 = [v54 countByEnumeratingWithState:&v96 objects:v108 count:16];
                        if (v55)
                        {
                          v56 = *v97;
                          do
                          {
                            for (j = 0; j != v55; ++j)
                            {
                              if (*v97 != v56)
                              {
                                objc_enumerationMutation(v54);
                              }

                              v58 = *(*(&v96 + 1) + 8 * j);
                              entity2 = [v58 entity];
                              if (entity2)
                              {
                                v60 = _sqlCoreLookupSQLEntityForEntityDescription(v4, entity2);
                              }

                              else
                              {
                                v60 = 0;
                              }

                              v61 = [v4 newObjectIDForEntity:v60 pk:v53[1]--];
                              [v8 setObject:v58 forKey:v61];
                            }

                            v55 = [v54 countByEnumeratingWithState:&v96 objects:v108 count:16];
                          }

                          while (v55);
                        }
                      }

                      v51 = (notificationCopy + 1);
                      v46 = v89;
                      v49 = v90;
                      v47 = v91;
                    }

                    while (notificationCopy != v93);
                  }

                  objc_autoreleasePoolPop(v85);
                  ++v47;
                }

                v63 = 0;
                v64 = 1;
              }

              else
              {
                if (v44)
                {
                  v62 = v44[6];
                }

                else
                {
                  v62 = 0;
                }

                v63 = v62;
                v64 = 0;
              }

              if (v95)
              {
                for (k = 0; [v88 count] > k; ++k)
                {
                  v66 = v95[k];
                  v67 = v87[k];
                  if (v67 >= 1)
                  {
                    v68 = v66 + 5;
                    do
                    {

                      v68 += 3;
                      --v67;
                    }

                    while (v67);
                  }

                  free(v66);
                }

                free(v95);
              }

              free(v87);
              if (v63)
              {

                objc_exception_throw(v63);
              }

              if (v64)
              {
                v69 = [v8 count];
                v70 = v69;
                v95 = &v82;
                if (v69 <= 1)
                {
                  v71 = 1;
                }

                else
                {
                  v71 = v69;
                }

                if (v69 >= 0x201)
                {
                  v72 = 1;
                }

                else
                {
                  v72 = v71;
                }

                v73 = &v82 - ((8 * v72 + 15) & 0xFFFFFFFFFFFFFFF0);
                v74 = 8 * v71;
                if (v69 > 0x200)
                {
                  v73 = NSAllocateScannedUncollectable();
                  v75 = NSAllocateScannedUncollectable();
                }

                else
                {
                  bzero(&v82 - ((8 * v72 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v71);
                  v75 = &v82 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
                  bzero(v75, v74);
                }

                v77 = v70 < 0x201;
                [v8 getObjects:v75 andKeys:v73];
                v78 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v73 count:v70];
                v79 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v75 count:v70];
                v76 = [(NSManagedObjectContext *)managedObjectContext _changeIDsForManagedObjects:v79 toIDs:v78];

                if (!v77)
                {
                  NSZoneFree(0, v73);
                  NSZoneFree(0, v75);
                }
              }

              else
              {
                v76 = 0;
              }

              [v4 doFilesystemCleanupOnRemove:0];
              if (v76)
              {
                if (errorCopy)
                {
                  *errorCopy = v76;
                }

                else
                {
                  v80 = objc_autoreleasePoolPush();
                  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

                  objc_autoreleasePoolPop(v80);
                }
              }

              else if (errorCopy)
              {
                *errorCopy = 0;
              }

              if (v64)
              {
                result = NSArray_EmptyArray;
              }

              else
              {
                result = 0;
              }

              goto LABEL_116;
            }
          }

          v5 = [notificationCopy countByEnumeratingWithState:&v104 objects:v110 count:16];
          result = 0;
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        result = 0;
      }
    }

    else
    {
      result = NSArray_EmptyArray;
    }
  }

LABEL_116:
  v81 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_prepareForExecuteRequest:(id)request withContext:(id)context error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(request "insertedObjects")])
  {
    v21 = 0;
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    insertedObjects = [request insertedObjects];
    v9 = [insertedObjects countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(insertedObjects);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([objc_msgSend(v13 "objectID")])
          {
            [array addObject:v13];
          }
        }

        v10 = [insertedObjects countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    v14 = [NSSQLCore _obtainPermanentIDsForObjects:array withNotification:&v21 error:?]!= 0;
    if (v21)
    {
      [(NSSaveChangesRequest *)request _addChangedObjectIDsNotification:v21];
    }
  }

  else
  {
    v14 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)executeRequest:(id)request withContext:(id)context error:(id *)error
{
  v164 = *MEMORY[0x1E69E9840];
  requestType = [request requestType];
  v149 = 0;
  v146 = *MEMORY[0x1E696A250];
  v7 = 4;
  v142 = *MEMORY[0x1E695D940];
  while (1)
  {
    v8 = __OFSUB__(v7--, 1);
    if (v7 < 0 != v8)
    {
      break;
    }

    v9 = 0;
    if (requestType > 5)
    {
      if (requestType <= 8)
      {
        if (requestType == 6)
        {
          if (self)
          {
            v57 = [[NSSQLBatchUpdateRequestContext alloc] initWithRequest:request context:context sqlCore:self];
            [(NSSQLCore *)self dispatchRequest:v57 withRetries:0];
            result = [(NSSQLStoreRequestContext *)v57 result];
            if (v57)
            {
              v59 = v57->super.super._exception;
            }

            else
            {
              v59 = 0;
            }

            v60 = v59;
            if (v57)
            {
              error = v57->super.super._error;
            }

            else
            {
              error = 0;
            }

            errorCopy = error;

            if (result)
            {
              v9 = 0;
            }

            else
            {
              if (v60)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v137 = v60;
                  objc_exception_throw(v60);
                }

                v106 = [(NSException *)v60 errorObjectWithUserInfo:0];
              }

              else
              {
                v106 = errorCopy;
              }

              v9 = v106;
            }

            v49 = result;
          }

          else
          {
            v9 = 0;
            v49 = 0;
          }

          requestType = 6;
          goto LABEL_230;
        }

        if (requestType == 7)
        {
          if (self)
          {
            v50 = [(NSSQLStoreRequestContext *)[NSSQLBatchDeleteRequestContext alloc] initWithRequest:request context:context sqlCore:self];
            [(NSSQLCore *)self dispatchRequest:v50 withRetries:0];
            result2 = [(NSSQLStoreRequestContext *)v50 result];
            if (v50)
            {
              v52 = v50->super.super._exception;
            }

            else
            {
              v52 = 0;
            }

            v53 = v52;
            if (v50)
            {
              v54 = v50->super.super._error;
            }

            else
            {
              v54 = 0;
            }

            v55 = v54;

            if (result2)
            {
              v9 = 0;
            }

            else
            {
              if (v53)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v135 = v53;
                  objc_exception_throw(v53);
                }

                v104 = [(NSException *)v53 errorObjectWithUserInfo:0];
              }

              else
              {
                v104 = v55;
              }

              v9 = v104;
            }

            v49 = result2;
          }

          else
          {
            v9 = 0;
            v49 = 0;
          }

          requestType = 7;
          goto LABEL_230;
        }

        if (!self)
        {
          goto LABEL_186;
        }

        if ((*(&self->_sqlCoreFlags + 1) & 4) != 0)
        {
          requestCopy = request;
          if ([request token])
          {
            v95 = [objc_msgSend(request "token")];
            if (![v95 objectForKey:{-[NSSQLCore identifier](self, "identifier")}])
            {
              v116 = MEMORY[0x1E696ABC0];
              v157 = @"Reason";
              v117 = MEMORY[0x1E696AEC0];
              token = [request token];
              identifier = [(NSSQLCore *)self identifier];
              v158 = [v117 stringWithFormat:@"Unable to find stores referenced in History Token (%@) - %@", token, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &identifier, 1)];
              v9 = [v116 errorWithDomain:v146 code:134501 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v158, &v157, 1)}];
              if (!v9)
              {
                LogStream = _PFLogGetLogStream(17);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v160 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
                  v161 = 1024;
                  LODWORD(v162) = 2516;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
                }

                v120 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315394;
                  v160 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
                  v161 = 1024;
                  LODWORD(v162) = 2516;
                  v121 = v120;
                  goto LABEL_238;
                }

LABEL_186:
                v9 = 0;
                v49 = 0;
LABEL_224:
                requestType = 8;
                goto LABEL_230;
              }

              goto LABEL_182;
            }

            exceptiona = [request resultType];
            v96 = [v95 objectForKey:{-[NSSQLCore identifier](self, "identifier")}];
            fetchLimit = [request fetchLimit];
            exception_object = [request fetchBatchSize];
            requestCopy = -[NSPersistentHistoryChangeRequest initWithTransactionID:delete:transactionOnly:percentageOfDB:]([NSPersistentHistoryChangeRequest alloc], "initWithTransactionID:delete:transactionOnly:percentageOfDB:", v96, [request isDelete], objc_msgSend(request, "isFetchTransactionForToken"), objc_msgSend(request, "percentageOfDB"));
            [(NSPersistentHistoryChangeRequest *)requestCopy setResultType:exceptiona];
            [(NSPersistentHistoryChangeRequest *)requestCopy setFetchLimit:fetchLimit];
            [(NSPersistentHistoryChangeRequest *)requestCopy setFetchBatchSize:exception_object];
            -[NSPersistentStoreRequest setAffectedStores:](requestCopy, "setAffectedStores:", [request affectedStores]);
            -[NSPersistentHistoryChangeRequest setFetchRequest:](requestCopy, "setFetchRequest:", [request fetchRequest]);
          }

          v98 = [[NSSQLPersistentHistoryChangeRequestContext alloc] initWithRequest:requestCopy context:context sqlCore:self];
          [(NSSQLCore *)self dispatchRequest:v98 withRetries:0];
          result3 = [(NSSQLStoreRequestContext *)v98 result];
          if (v98)
          {
            v100 = v98->super._exception;
          }

          else
          {
            v100 = 0;
          }

          v101 = v100;
          if (v98)
          {
            v102 = v98->super._error;
          }

          else
          {
            v102 = 0;
          }

          v103 = v102;

          if (result3)
          {
            v9 = 0;
          }

          else
          {
            if (v101)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v138 = v101;
                objc_exception_throw(v101);
              }

              v111 = [(NSException *)v101 errorObjectWithUserInfo:0];
            }

            else
            {
              v111 = v103;
            }

            v9 = v111;
          }

          v129 = result3;
          v49 = v129;
          if (!v9)
          {
            goto LABEL_224;
          }

          v56 = v129;
        }

        else
        {
          v10 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            v11 = _pflogging_catastrophic_mode;
            v12 = _PFLogGetLogStream(1);
            v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
            if (v11)
            {
              if (v13)
              {
LABEL_239:
                identifier2 = [(NSSQLCore *)self identifier];
                v134 = [(NSPersistentStore *)self URL];
                *buf = 138412546;
                v160 = identifier2;
                v161 = 2112;
                v162 = v134;
                _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: History Change Request failed as no history tracking option detected on store %@ at %@\n", buf, 0x16u);
              }
            }

            else if (v13)
            {
              goto LABEL_239;
            }
          }

          _NSCoreDataLog_console(1, "History Change Request failed as no history tracking option detected on store %@ at %@", [(NSSQLCore *)self identifier], [(NSPersistentStore *)self URL]);
          objc_autoreleasePoolPop(v10);
          v9 = [MEMORY[0x1E696ABC0] errorWithDomain:v146 code:134091 userInfo:&unk_1EF435648];
          if (!v9)
          {
            v114 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v160 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
              v161 = 1024;
              LODWORD(v162) = 2509;
              _os_log_error_impl(&dword_18565F000, v114, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
            }

            v115 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v160 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
              v161 = 1024;
              LODWORD(v162) = 2509;
              v121 = v115;
LABEL_238:
              _os_log_fault_impl(&dword_18565F000, v121, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
            }

            goto LABEL_186;
          }

LABEL_182:
          v56 = 0;
        }

        if ([(NSError *)v9 code]== 134091 || [(NSError *)v9 code]== 134501 || [(NSError *)v9 code]== 134301)
        {
          v7 = 0;
        }

        requestType = 8;
        goto LABEL_223;
      }

      switch(requestType)
      {
        case 9:
          if (self)
          {
            v150 = 0;
            mirroringDelegate = [(NSPersistentStore *)self mirroringDelegate];
            v64 = mirroringDelegate;
            if (mirroringDelegate)
            {
              v65 = [(NSCloudKitMirroringDelegate *)mirroringDelegate executeMirroringRequest:request error:&v150];
            }

            else
            {
              v65 = objc_alloc_init(NSPersistentStoreResult);
            }

            v49 = v65;

            if (v49)
            {
              goto LABEL_133;
            }

            v9 = v150;
            if (!v150)
            {
              v112 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v160 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
                v161 = 1024;
                LODWORD(v162) = 4646;
                _os_log_error_impl(&dword_18565F000, v112, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
              }

              v113 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                v160 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
                v161 = 1024;
                LODWORD(v162) = 4646;
                _os_log_fault_impl(&dword_18565F000, v113, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
              }

LABEL_133:
              v9 = 0;
            }

            v7 = 0;
          }

          else
          {
            v9 = 0;
            v7 = 0;
            v49 = 0;
          }

          requestType = 9;
          goto LABEL_230;
        case 10:
          if (self)
          {
            if ((*(&self->_sqlCoreFlags + 2) & 1) == 0)
            {
              v56 = 0;
              v9 = [MEMORY[0x1E696ABC0] errorWithDomain:v146 code:134091 userInfo:&unk_1EF435670];
              goto LABEL_156;
            }

            v84 = [-[NSDictionary objectForKeyedSubscript:](self->_ancillaryModels objectForKeyedSubscript:{@"NSPersistentStoreTrackIndexUseOptionKey", "entitiesByName"}];
            v85 = objc_opt_class();
            v86 = [v84 objectForKeyedSubscript:NSStringFromClass(v85)];
            v87 = objc_alloc_init(NSFetchRequest);
            [(NSFetchRequest *)v87 setEntity:v86];
            [(NSFetchRequest *)v87 setResultType:2];
            v88 = [[NSSQLFetchRequestContext alloc] initWithRequest:v87 context:context sqlCore:self];
            [(NSSQLCore *)self dispatchRequest:v88 withRetries:0];
            result4 = [(NSSQLStoreRequestContext *)v88 result];
            if (v88)
            {
              v90 = v88->super._exception;
            }

            else
            {
              v90 = 0;
            }

            v91 = v90;

            if (result4)
            {
              if (![result4 count])
              {
                v92 = [NSSQLiteIndexStatisticsResult alloc];
                v93 = NSArray_EmptyArray;
                goto LABEL_155;
              }
            }

            else if (v91)
            {
              objc_exception_throw(v91);
            }

            v93 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v153 = 0u;
            v154 = 0u;
            v151 = 0u;
            v152 = 0u;
            v107 = [result4 countByEnumeratingWithState:&v151 objects:v163 count:16];
            if (v107)
            {
              v108 = *v152;
              do
              {
                for (i = 0; i != v107; ++i)
                {
                  if (*v152 != v108)
                  {
                    objc_enumerationMutation(result4);
                  }

                  [v93 addObject:{-[NSSQLiteIndexStatistics initWithResultDictionary:storeID:]([NSSQLiteIndexStatistics alloc], "initWithResultDictionary:storeID:", *(*(&v151 + 1) + 8 * i), -[NSSQLCore identifier](self, "identifier"))}];
                }

                v107 = [result4 countByEnumeratingWithState:&v151 objects:v163 count:16];
              }

              while (v107);
            }

            v92 = [NSSQLiteIndexStatisticsResult alloc];
LABEL_155:
            v110 = [(NSSQLiteIndexStatisticsResult *)v92 initWithResult:v93];
            v9 = 0;
            v56 = v110;
          }

          else
          {
            v9 = 0;
            v56 = 0;
          }

LABEL_156:
          requestType = 10;
LABEL_223:
          v49 = v56;
          goto LABEL_230;
        case 11:
          if (self)
          {
            resultType = [request resultType];
            mirroringDelegate2 = [(NSPersistentStore *)self mirroringDelegate];
            if (mirroringDelegate2 && mirroringDelegate2[128] == 1 && (v22 = [-[NSDictionary objectForKeyedSubscript:](self->_ancillaryModels objectForKeyedSubscript:{@"NSPersistentStoreMirroringDelegateOptionKey", "entitiesByName"}], v23 = objc_opt_class(), (v24 = objc_msgSend(v22, "objectForKeyedSubscript:", NSStringFromClass(v23))) != 0))
            {
              if (request)
              {
                [*(request + 3) setEntity:v24];
                [*(request + 3) setReturnsObjectsAsFaults:0];
                v25 = *(request + 3);
              }

              else
              {
                [0 setEntity:v24];
                [0 setReturnsObjectsAsFaults:0];
                v25 = 0;
              }

              [v25 setResultType:4 * (resultType == 1)];
              v26 = off_1E6EC0B80;
              if (resultType != 1)
              {
                v26 = off_1E6EC0B98;
              }

              v27 = objc_alloc(*v26);
              if (request)
              {
                v28 = *(request + 3);
              }

              else
              {
                v28 = 0;
              }

              v29 = [v27 initWithRequest:v28 context:context sqlCore:self];
              [(NSSQLCore *)self dispatchRequest:v29 withRetries:0];
              result5 = [v29 result];
              if (v29)
              {
                v31 = v29[6];
              }

              else
              {
                v31 = 0;
              }

              v32 = v31;

              if (!result5 && v32)
              {
                objc_exception_throw(v32);
              }

              if (!result5)
              {
                v122 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v160 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
                  v161 = 1024;
                  LODWORD(v162) = 4702;
                  _os_log_error_impl(&dword_18565F000, v122, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
                }

                v123 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315394;
                  v160 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
                  v161 = 1024;
                  LODWORD(v162) = 4702;
                  _os_log_fault_impl(&dword_18565F000, v123, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
                }

                goto LABEL_196;
              }

              if (resultType)
              {
                if (resultType == 1)
                {
                  v33 = [[NSPersistentCloudKitContainerEventResult alloc] initWithResult:result5 ofType:1];
                  goto LABEL_226;
                }

LABEL_196:
                v74 = 0;
              }

              else if ([result5 count])
              {
                v124 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(result5, "count")}];
                v155[0] = MEMORY[0x1E69E9820];
                v155[1] = 3221225472;
                v155[2] = __66__NSSQLCore_processCloudKitContainerEventRequest_inContext_error___block_invoke;
                v155[3] = &unk_1E6EC37A0;
                v155[4] = v124;
                [result5 enumerateObjectsUsingBlock:v155];
                v125 = [v124 copy];
                v74 = [[NSPersistentCloudKitContainerEventResult alloc] initWithResult:v125 ofType:0];
              }

              else
              {
                v130 = [NSPersistentCloudKitContainerEventResult alloc];
                v33 = [(NSPersistentCloudKitContainerEventResult *)v130 initWithResult:NSArray_EmptyArray ofType:0];
LABEL_226:
                v74 = v33;
              }
            }

            else
            {
              v73 = [NSPersistentCloudKitContainerEventResult alloc];
              v74 = [(NSPersistentCloudKitContainerEventResult *)v73 initWithResult:NSArray_EmptyArray ofType:resultType];
            }

            v49 = v74;
          }

          else
          {
            v49 = 0;
          }

          v9 = 0;
          requestType = 11;
          goto LABEL_230;
      }

LABEL_93:
      v49 = 0;
      goto LABEL_230;
    }

    if (requestType <= 2)
    {
      if (requestType == 1)
      {
        if ([request resultType] != 4)
        {
          if (self)
          {
            v75 = [[NSSQLFetchRequestContext alloc] initWithRequest:request context:context sqlCore:self];
            _delegate = [context _delegate];
            if (_delegate && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [_delegate managedObjectContext:context willExecuteFetchRequest:request];
            }

            [(NSSQLCore *)self dispatchRequest:v75 withRetries:0];
            result6 = [(NSSQLStoreRequestContext *)v75 result];
            if (v75)
            {
              v78 = v75->super._exception;
            }

            else
            {
              v78 = 0;
            }

            exception = v78;
            if (v75)
            {
              v79 = v75->super._error;
            }

            else
            {
              v79 = 0;
            }

            v9 = v79;
            if (_delegate && (objc_opt_respondsToSelector() & 1) != 0)
            {
              fetchStatement = [(NSSQLFetchRequestContext *)v75 fetchStatement];
              sqlString = [(NSSQLiteStatement *)fetchStatement sqlString];
              bindVariables = [(NSSQLiteStatement *)fetchStatement bindVariables];
              if (result6)
              {
                v83 = [result6 count];
              }

              else
              {
                v83 = -1;
              }

              [_delegate managedObjectContext:context didExecuteFetchRequest:request withSQLString:sqlString bindVariables:bindVariables rowCount:v83];
            }

            if (result6)
            {
LABEL_202:
              v9 = 0;
            }

            else
            {
              if (exception)
              {
                objc_exception_throw(exception);
              }

              if (!v9)
              {
                v127 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v160 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
                  v161 = 1024;
                  LODWORD(v162) = 2704;
                  _os_log_error_impl(&dword_18565F000, v127, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
                }

                v128 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315394;
                  v160 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
                  v161 = 1024;
                  LODWORD(v162) = 2704;
                  _os_log_fault_impl(&dword_18565F000, v128, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
                }

                goto LABEL_202;
              }
            }

            v49 = result6;
          }

          else
          {
            v9 = 0;
            v49 = 0;
          }

          _asyncResultHandle = [request _asyncResultHandle];
          if (_asyncResultHandle && [_asyncResultHandle _isCancelled])
          {
            v9 = [MEMORY[0x1E696ABC0] errorWithDomain:v146 code:3072 userInfo:0];
            v7 = 0;
            v49 = 0;
          }

          requestType = 1;
          goto LABEL_230;
        }

LABEL_55:
        if (self)
        {
          if (_sqlCoreLookupSQLEntityForEntityDescription(self, [request entity]))
          {
            predicate = [request predicate];
            if (predicate)
            {
              [predicate minimalFormInContext:0];
            }

            v42 = [(NSSQLFetchRequestContext *)[NSSQLCountRequestContext alloc] initWithRequest:request context:context sqlCore:self];
            _delegate2 = [context _delegate];
            if (_delegate2 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [_delegate2 managedObjectContext:context willExecuteFetchRequest:request];
            }

            [(NSSQLCore *)self dispatchRequest:v42 withRetries:0];
            result7 = [(NSSQLStoreRequestContext *)v42 result];
            if (v42)
            {
              v45 = v42->super.super._exception;
            }

            else
            {
              v45 = 0;
            }

            v46 = v45;
            if (_delegate2 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              fetchStatement2 = [(NSSQLFetchRequestContext *)v42 fetchStatement];
              [_delegate2 managedObjectContext:context didExecuteFetchRequest:request withSQLString:-[NSSQLiteStatement sqlString](fetchStatement2 bindVariables:"sqlString") rowCount:{-[NSSQLiteStatement bindVariables](fetchStatement2, "bindVariables"), objc_msgSend(objc_msgSend(result7, "firstObject"), "unsignedLongLongValue")}];
            }

            if (!result7 && v46)
            {
              objc_exception_throw(v46);
            }

            v48 = result7;
          }

          else
          {
            v48 = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 0)}];
          }

          v49 = v48;
          v9 = 0;
        }

        else
        {
          v9 = 0;
          v49 = 0;
        }

        requestType = 3;
        goto LABEL_230;
      }

      if (requestType == 2)
      {
        if (self)
        {
          v34 = [[NSSQLSaveChangesRequestContext alloc] initWithRequest:request context:context sqlCore:self];
          p_isa = &v34->super.super.isa;
          if (!v34)
          {
            savePlan = 0;
            v38 = 1;
            atomic_fetch_add(&self->_transactionInMemorySequence, 1u);
            atomic_load(&self->_transactionInMemorySequence);
            goto LABEL_53;
          }

          savePlan = v34->_savePlan;
          atomic_fetch_add(&self->_transactionInMemorySequence, 1u);
          v37 = atomic_load(&self->_transactionInMemorySequence);
          v38 = savePlan == 0;
          if (savePlan)
          {
            atomic_store(v37, &savePlan->_transactionInMemorySequence);
          }

          if (v34->_metadataToWrite || (v39 = v34->_savePlan) != 0 && (*&v39->_flags & 2) != 0)
          {
            [(NSSQLCore *)self dispatchRequest:v34 withRetries:0];
            result8 = [p_isa result];
            v67 = p_isa[6];
            if (!result8 && v67)
            {
              objc_exception_throw(v67);
            }

            atomic_store(1u, &self->_metadataIsClean);
            [(NSPersistentStore *)self _setMetadataDirty:0];
            v40 = result8;
          }

          else
          {
LABEL_53:
            v40 = NSArray_EmptyArray;
          }

          [(NSPersistentStore *)self doFilesystemCleanupOnRemove:0];
          v68 = MEMORY[0x1E696AD80];
          v69 = MEMORY[0x1E695DF20];
          v70 = [MEMORY[0x1E696AD98] numberWithInt:5];
          if (v38)
          {
            v71 = 0;
          }

          else
          {
            v71 = atomic_load(&savePlan->_transactionInMemorySequence);
          }

          v72 = [v68 notificationWithName:@"_NSSQLCoreTransactionStateChangeNotification" object:self userInfo:{objc_msgSend(v69, "dictionaryWithObjectsAndKeys:", v70, @"_NSSQLCoreTransactionType", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v71), @"_NSSQLCoreTransientSequenceNumber", context, @"_NSSQLCoreActiveSavingContext", 0)}];
          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

          v49 = v40;
          v9 = 0;
        }

        else
        {
          v9 = 0;
          v49 = 0;
        }

        requestType = 2;
        goto LABEL_230;
      }

      goto LABEL_93;
    }

    if (requestType == 3)
    {
      goto LABEL_55;
    }

    if (requestType == 4)
    {
      v9 = 0;
      if (self)
      {
        v49 = NSArray_EmptyArray;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      if (self)
      {
        v14 = [[NSSQLBatchInsertRequestContext alloc] initWithRequest:request context:context sqlCore:self];
        [(NSSQLCore *)self dispatchRequest:v14 withRetries:0];
        result9 = [(NSSQLStoreRequestContext *)v14 result];
        if (v14)
        {
          v16 = v14->super.super._exception;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        if (v14)
        {
          v18 = v14->super.super._error;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;

        if (result9)
        {
          v9 = 0;
        }

        else
        {
          if (v17)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v136 = v17;
              objc_exception_throw(v17);
            }

            v105 = [(NSException *)v17 errorObjectWithUserInfo:0];
          }

          else
          {
            v105 = v19;
          }

          v9 = v105;
        }

        v49 = result9;
        if (v9 && request && (*(request + 4) || *(request + 5)))
        {
          v7 = 0;
        }
      }

      else
      {
        v9 = 0;
        v49 = 0;
      }

      requestType = 5;
    }

LABEL_230:
    v131 = v149;
    if (v9)
    {
      v132 = v149 == 0;
    }

    else
    {
      v132 = 0;
    }

    if (v132)
    {
      v131 = v9;
    }

    v149 = v131;
    if (v49)
    {
      goto LABEL_278;
    }
  }

  v49 = 0;
  if (error && v149)
  {
    v49 = 0;
    *error = v149;
  }

LABEL_278:
  v139 = *MEMORY[0x1E69E9840];
  return v49;
}

- (void)_rebuildIndiciesSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  v26 = *MEMORY[0x1E69E9840];
  persistentStoreCoordinator = [(NSPersistentStore *)self persistentStoreCoordinator];
  if ([(NSPersistentStore *)self isReadOnly]|| !persistentStoreCoordinator || (*(&self->_sqlCoreFlags + 1) & 1) != 0)
  {
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v7 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            identifier = [(NSSQLCore *)self identifier];
            if ([(NSPersistentStore *)self isReadOnly])
            {
              v10 = @"read-only";
            }

            else
            {
              v10 = @"nil coordinator";
            }

            *buf = 138412546;
            v23 = identifier;
            v24 = 2112;
            v25 = v10;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to reindex store(%@) - %@\n", buf, 0x16u);
          }
        }

        else
        {
          v12 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [(NSSQLCore *)self identifier];
            if ([(NSPersistentStore *)self isReadOnly])
            {
              v14 = @"read-only";
            }

            else
            {
              v14 = @"nil coordinator";
            }

            *buf = 138412546;
            v23 = identifier2;
            v24 = 2112;
            v25 = v14;
            _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Unable to reindex store(%@) - %@\n", buf, 0x16u);
          }
        }
      }

      v15 = _pflogging_catastrophic_mode == 0;
      identifier3 = [(NSSQLCore *)self identifier];
      if ([(NSPersistentStore *)self isReadOnly])
      {
        v17 = @"read-only";
      }

      else
      {
        v17 = @"nil coordinator";
      }

      if (v15)
      {
        v18 = 4;
      }

      else
      {
        v18 = 1;
      }

      _NSCoreDataLog_console(v18, "Unable to reindex store(%@) - %@", identifier3, v17);
      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __43__NSSQLCore__rebuildIndiciesSynchronously___block_invoke;
    v21[3] = &unk_1E6EC3708;
    v21[4] = self;
    if (synchronouslyCopy)
    {
      v6 = [[NSSQLBlockRequestContext alloc] initWithBlock:v21 context:0 sqlCore:self];
      [(NSSQLCore *)self dispatchRequest:v6 withRetries:0];
    }

    else
    {
      global_queue = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__NSSQLCore__rebuildIndiciesSynchronously___block_invoke_290;
      block[3] = &unk_1E6EC2FF0;
      block[5] = persistentStoreCoordinator;
      block[6] = v21;
      block[4] = self;
      dispatch_async(global_queue, block);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __43__NSSQLCore__rebuildIndiciesSynchronously___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  if (![(NSSQLiteConnection *)v3 recreateIndices])
  {
    v5 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
LABEL_22:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Index recreation failed\n", buf, 2u);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          goto LABEL_22;
        }
      }
    }

    _NSCoreDataLog_console(1, "Index recreation failed");
    goto LABEL_20;
  }

  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  [*(*(a1 + 32) + 160) setValue:0 forKey:@"NSPersistentStoreRebuildIndicies"];
  atomic_store(0, (*(a1 + 32) + 196));
  [*(a1 + 32) _setMetadataDirty:1];
  os_unfair_lock_unlock((*(a1 + 32) + 152));
  v5 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v6 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 32) identifier];
        *buf = 138412290;
        v16 = v7;
        v8 = "CoreData: error: Finished rebuilding indicies for store - %@\n";
LABEL_24:
        _os_log_error_impl(&dword_18565F000, v6, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
      }
    }

    else
    {
      v6 = _PFLogGetLogStream(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 32) identifier];
        *buf = 138412290;
        v16 = v14;
        v8 = "CoreData: warning: Finished rebuilding indicies for store - %@\n";
        goto LABEL_24;
      }
    }
  }

  v10 = *(a1 + 32);
  if (_pflogging_catastrophic_mode)
  {
    v11 = [v10 identifier];
    v12 = 1;
  }

  else
  {
    v11 = [v10 identifier];
    v12 = 2;
  }

  _NSCoreDataLog_console(v12, "Finished rebuilding indicies for store - %@", v11);
LABEL_20:
  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x1E69E9840];
}

void __43__NSSQLCore__rebuildIndiciesSynchronously___block_invoke_290(uint64_t a1)
{
  v2 = [[NSSQLBlockRequestContext alloc] initWithBlock:*(a1 + 48) context:0 sqlCore:*(a1 + 32)];
  [(NSSQLCore *)*(a1 + 32) dispatchRequest:v2 withRetries:0];
}

+ (id)_figureOutWhereExternalReferencesEndedUpRelativeTo:(id)to
{
  path = [to path];
  v4 = [objc_msgSend(path "stringByDeletingLastPathComponent")];
  v5 = MEMORY[0x1E695DFF8];

  return [v5 fileURLWithPath:v4 isDirectory:1];
}

- (id)cachedModelWithError:(id)result
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      *a2 = 0;
    }

    v4 = [[NSSQLBlockRequestContext alloc] initWithBlock:&__block_literal_global_13 context:0 sqlCore:result];
    [(NSSQLCore *)v3 dispatchRequest:v4 withRetries:0];
    result = [(NSSQLStoreRequestContext *)v4 result];
    if (v4)
    {
      error = v4->super._error;
    }

    else
    {
      error = 0;
    }

    v7 = error;
    if (!result)
    {
      if (v4)
      {
        exception = v4->super._exception;
        if (exception)
        {
          v9 = exception;
          objc_exception_throw(exception);
        }
      }

      result = 0;
      if (a2)
      {
        *a2 = v7;
      }
    }

    return result;
  }

  return result;
}

void __34__NSSQLCore_cachedModelWithError___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[3];
  }

  else
  {
    v3 = 0;
  }

  if ([(NSSQLiteConnection *)v3 canConnect])
  {
    [(NSSQLiteConnection *)v3 connect];
    [a2 setResult:-[NSSQLiteConnection fetchCachedModel](v3)];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134180 userInfo:&unk_1EF435698];
    if (a2)
    {
      objc_setProperty_nonatomic(a2, v5, v4, 40);
    }
  }
}

- (void)setIdentifier:(id)identifier
{
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_storeMetadata setObject:identifier forKey:@"NSStoreUUID"];
  atomic_store(0, &self->_metadataIsClean);
  [(NSPersistentStore *)self _setMetadataDirty:1];

  os_unfair_lock_unlock(&self->_sqlCoreStateLock);
}

- (void)setMetadata:(id)metadata
{
  if ([(NSPersistentStore *)self isReadOnly])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set metadata in read-only store." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", self), @"NSAffectedStoresErrorKey", 0)}]);
  }

  v5 = [(NSPersistentStore *)self _updatedMetadataWithSeed:metadata includeVersioning:1];
  os_unfair_lock_lock_with_options();
  v6 = [(NSMutableDictionary *)self->_storeMetadata objectForKey:@"_NSAutoVacuumLevel"];
  os_unfair_lock_unlock(&self->_sqlCoreStateLock);
  if (v6)
  {
    [v5 setObject:v6 forKey:@"_NSAutoVacuumLevel"];
  }

  [(NSSQLCore *)self _setMetadata:v5 clean:0];
}

- (void)_updateAutoVacuumMetadataWithValues:(unsigned __int8 *)values
{
  v19 = *MEMORY[0x1E69E9840];
  if (values)
  {
    v4 = [objc_msgSend(values "metadata")];
    v5 = atomic_load(values + 196);
    if (v4)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(a2);
            }

            [v4 setValue:objc_msgSend(a2 forKey:{"valueForKey:", *(*(&v14 + 1) + 8 * i)), *(*(&v14 + 1) + 8 * i)}];
          }

          v7 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }

      v10 = v5 & 1;
      valuesCopy2 = values;
      v12 = v4;
    }

    else
    {
      v10 = v5 & 1;
      valuesCopy2 = values;
      v12 = a2;
    }

    [(NSSQLCore *)valuesCopy2 _setMetadata:v12 clean:v10];
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)metadataForPersistentStoreWithURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  v23[1] = *MEMORY[0x1E69E9840];
  if (!l)
  {
    goto LABEL_19;
  }

  if (![l isFileURL])
  {
    goto LABEL_18;
  }

  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    if (error)
    {
      v17 = objc_alloc(MEMORY[0x1E695DF20]);
      v18 = [v17 initWithObjectsAndKeys:{lCopy, *MEMORY[0x1E696A998], 0}];
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v18];
    }

    goto LABEL_18;
  }

  v9 = MEMORY[0x1E695DF90];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:240.0];
  v22 = @"journal_mode";
  v23[0] = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 dictionaryWithObjectsAndKeys:{v10, @"NSPersistentStoreTimeoutOption", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, &v22, 1), @"NSSQLitePragmasOption", 0}];
  v12 = v11;
  if (options)
  {
    [v11 addEntriesFromDictionary:options];
    [v12 removeObjectForKey:@"NSReadOnlyPersistentStoreOption"];
    v13 = [options objectForKey:@"NSSQLitePragmasOption"];
    if ([v13 objectForKey:@"journal_mode"])
    {
      v14 = [v13 mutableCopy];
      [v14 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"journal_mode"}];
      [v12 setObject:v14 forKey:@"NSSQLitePragmasOption"];
    }
  }

  if (!+[NSSQLCore sanityCheckFileAtURL:options:error:](NSSQLCore, lCopy, options, error) || ((v15 = [[self alloc] initWithPersistentStoreCoordinator:0 configurationName:0 URL:lCopy options:v12], (objc_msgSend(v15, "loadMetadata:", error) & 1) == 0) ? (lCopy = 0, v16 = 1) : (lCopy = objc_msgSend(objc_msgSend(v15, "metadata"), "copy"), v16 = 0), -[NSSQLCore _disconnectAllConnections](v15), v15, (v16 | 2) != 2))
  {
LABEL_18:
    lCopy = 0;
    goto LABEL_19;
  }

  v19 = [lCopy objectForKey:@"NSStoreType"];
  if (v19 && ![v19 isEqualToString:@"SQLite"])
  {
    lCopy = 0;
  }

LABEL_19:
  v20 = *MEMORY[0x1E69E9840];
  return lCopy;
}

+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l options:(id)options error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = &OBJC_METACLASS___NSSQLCore;
  if (!objc_msgSendSuper2(&v21, sel_setMetadata_forPersistentStoreWithURL_error_, metadata, l, error))
  {
    goto LABEL_9;
  }

  v11 = MEMORY[0x1E695DF90];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:240.0];
  v22 = @"journal_mode";
  v23[0] = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 dictionaryWithObjectsAndKeys:{v12, @"NSPersistentStoreTimeoutOption", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, &v22, 1), @"NSSQLitePragmasOption", 0}];
  v14 = v13;
  if (options)
  {
    [v13 addEntriesFromDictionary:options];
    [v14 removeObjectForKey:@"NSReadOnlyPersistentStoreOption"];
    v15 = [options objectForKey:@"NSSQLitePragmasOption"];
    if ([v15 objectForKey:@"journal_mode"])
    {
      v16 = [v15 mutableCopy];
      [v16 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"journal_mode"}];
      [v14 setObject:v16 forKey:@"NSSQLitePragmasOption"];
    }
  }

  if ([NSSQLCore sanityCheckFileAtURL:l options:options error:error])
  {
    v17 = [[self alloc] initWithPersistentStoreCoordinator:0 configurationName:0 URL:l options:v14];
    if ([v17 loadMetadata:error] && objc_msgSend(v17, "load:", error))
    {
      [v17 setMetadata:metadata];
      v18 = [v17 executeRequest:objc_alloc_init(NSSaveChangesRequest) withContext:0 error:error] != 0;
    }

    else
    {
      v18 = 0;
    }

    [(NSSQLCore *)v17 _disconnectAllConnections];
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)cachedModelForPersistentStoreWithURL:(id)l options:(id)options error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!l || ![l isFileURL])
  {
    if (error)
    {
      v16 = 0;
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:&unk_1EF4356C0];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    if (error)
    {
      v17 = objc_alloc(MEMORY[0x1E695DF20]);
      v18 = [v17 initWithObjectsAndKeys:{l, *MEMORY[0x1E696A998], 0}];
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v18];
    }

    goto LABEL_15;
  }

  v9 = MEMORY[0x1E695DF90];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:240.0];
  v21 = @"journal_mode";
  v22[0] = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 dictionaryWithObjectsAndKeys:{v10, @"NSPersistentStoreTimeoutOption", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, &v21, 1), @"NSSQLitePragmasOption", 0}];
  v12 = v11;
  if (options)
  {
    [v11 addEntriesFromDictionary:options];
    [v12 removeObjectForKey:@"NSReadOnlyPersistentStoreOption"];
    v13 = [options objectForKey:@"NSSQLitePragmasOption"];
    if ([v13 objectForKey:@"journal_mode"])
    {
      v14 = [v13 mutableCopy];
      [v14 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"journal_mode"}];
      [v12 setObject:v14 forKey:@"NSSQLitePragmasOption"];
    }
  }

  if (![NSSQLCore sanityCheckFileAtURL:l options:options error:error])
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v15 = [[self alloc] initWithPersistentStoreCoordinator:0 configurationName:0 URL:l options:v12];
  if ([v15 loadMetadata:error] && objc_msgSend(v15, "load:", error))
  {
    v16 = [(NSSQLCore *)v15 cachedModelWithError:error];
  }

  else
  {
    v16 = 0;
  }

  [(NSSQLCore *)v15 _disconnectAllConnections];

LABEL_16:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (BOOL)_destroyPersistentStoreAtURL:(id)l options:(id)options error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  if (l && ([l isFileURL] & 1) != 0)
  {
    v9 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Destroying store"];
    if (![NSSQLiteConnection _destroyPersistentStoreAtURL:l options:options error:error])
    {
      v13 = 0;
LABEL_18:
      [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v9];
      goto LABEL_19;
    }

    v10 = [self _figureOutWhereExternalReferencesEndedUpRelativeTo:l];
    if (!v10 || ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) != 0 || +[NSSQLCore debugDefault](NSSQLCore, "debugDefault") < 1)
    {
LABEL_17:
      v13 = 1;
      goto LABEL_18;
    }

    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
LABEL_20:
          *buf = 138412290;
          path = [l path];
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to delete support directory for store: %@\n", buf, 0xCu);
        }
      }
    }

    _NSCoreDataLog_console(1, "Failed to delete support directory for store: %@", [l path]);
    objc_autoreleasePoolPop(v11);
    goto LABEL_17;
  }

  v13 = 0;
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Only persistent stores backed by files can be destroyed", options, *MEMORY[0x1E696A578], 0)}];
  }

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)_replacePersistentStoreAtURL:(id)l destinationOptions:(id)options withPersistentStoreFromURL:(id)rL sourceOptions:(id)sourceOptions error:(id *)error
{
  v93 = *MEMORY[0x1E69E9840];
  if (rL)
  {
    isFileURL = [rL isFileURL];
    if (l)
    {
      if (isFileURL && ([l isFileURL] & 1) != 0)
      {
        v76 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Replacing entire store"];
        v13 = [self _figureOutWhereExternalReferencesEndedUpRelativeTo:l];
        v79 = [self _figureOutWhereExternalReferencesEndedUpRelativeTo:rL];
        v81 = [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(objc_msgSend(v13 isDirectory:{"path"), "stringByAppendingString:", @"_transsrc_4052146efa0d85c9fbe0634c0e8bc4457ed82f7c", 1}];
        v78 = v13;
        v80 = [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(objc_msgSend(v13 isDirectory:{"path"), "stringByAppendingString:", @"_transdst_878d188f109e9f52ae70b0b25413f6a38c8267a8", 1}];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v77 = [defaultManager fileExistsAtPath:{objc_msgSend(v79, "path")}];
        v75 = [defaultManager fileExistsAtPath:{objc_msgSend(v13, "path")}];
        v15 = [defaultManager fileExistsAtPath:{objc_msgSend(v81, "path")}];
        v16 = [defaultManager fileExistsAtPath:{objc_msgSend(v80, "path")}];
        if (!v15)
        {
          goto LABEL_25;
        }

        v82 = 0;
        if ([defaultManager removeItemAtURL:v81 error:&v82])
        {
          goto LABEL_25;
        }

        if (+[NSSQLCore debugDefault]>= 1)
        {
          v17 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                path = [v81 path];
                *buf = 138412290;
                v84 = path;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to delete staging area for external support directory for store: %@\n", buf, 0xCu);
              }
            }

            else
            {
              v21 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                path2 = [v81 path];
                *buf = 138412290;
                v84 = path2;
                _os_log_impl(&dword_18565F000, v21, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Failed to delete staging area for external support directory for store: %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            path3 = [v81 path];
            v24 = 1;
          }

          else
          {
            path3 = [v81 path];
            v24 = 4;
          }

          _NSCoreDataLog_console(v24, "Failed to delete staging area for external support directory for store: %@", path3);
          objc_autoreleasePoolPop(v17);
        }

        if (v77)
        {
          v25 = 0;
          if (error)
          {
            *error = v82;
          }
        }

        else
        {
LABEL_25:
          v25 = 1;
        }

        if ((v25 & v77) == 1)
        {
          v82 = 0;
          v25 = [defaultManager copyItemAtURL:v79 toURL:v81 error:&v82];
          if ((v25 & 1) == 0)
          {
            if (+[NSSQLCore debugDefault]>= 1)
            {
              context = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v26 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    path4 = [rL path];
                    path5 = [v81 path];
                    *buf = 138412802;
                    v84 = path4;
                    v85 = 2112;
                    v86 = path5;
                    v87 = 2112;
                    v88 = v82;
                    _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to copy support directory from store: %@ to store: %@.  %@\n", buf, 0x20u);
                  }
                }

                else
                {
                  v30 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    path6 = [rL path];
                    path7 = [v81 path];
                    *buf = 138412802;
                    v84 = path6;
                    v85 = 2112;
                    v86 = path7;
                    v87 = 2112;
                    v88 = v82;
                    _os_log_impl(&dword_18565F000, v30, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Failed to copy support directory from store: %@ to store: %@.  %@\n", buf, 0x20u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                path8 = [rL path];
                path9 = [v81 path];
                v35 = 1;
              }

              else
              {
                path8 = [rL path];
                path9 = [v81 path];
                v35 = 4;
              }

              _NSCoreDataLog_console(v35, "Failed to copy support directory from store: %@ to store: %@.  %@", path8, path9, v82);
              objc_autoreleasePoolPop(context);
            }

            if (error)
            {
              *error = v82;
            }
          }

          v29 = v25 ^ 1;
        }

        else
        {
          v29 = 1;
        }

        if ((v25 & v16) == 1)
        {
          v82 = 0;
          if (([defaultManager removeItemAtURL:v80 error:&v82] & 1) == 0)
          {
            if (+[NSSQLCore debugDefault]>= 1)
            {
              v36 = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v37 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    path10 = [rL path];
                    path11 = [v81 path];
                    *buf = 138412802;
                    v84 = path10;
                    v85 = 2112;
                    v86 = path11;
                    v87 = 2112;
                    v88 = v82;
                    _os_log_error_impl(&dword_18565F000, v37, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to copy support directory from store: %@ to store: %@.  %@\n", buf, 0x20u);
                  }
                }

                else
                {
                  v40 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    path12 = [rL path];
                    path13 = [v81 path];
                    *buf = 138412802;
                    v84 = path12;
                    v85 = 2112;
                    v86 = path13;
                    v87 = 2112;
                    v88 = v82;
                    _os_log_impl(&dword_18565F000, v40, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Failed to copy support directory from store: %@ to store: %@.  %@\n", buf, 0x20u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                path14 = [rL path];
                path15 = [v81 path];
                v45 = 1;
              }

              else
              {
                path14 = [rL path];
                path15 = [v81 path];
                v45 = 4;
              }

              _NSCoreDataLog_console(v45, "Failed to copy support directory from store: %@ to store: %@.  %@", path14, path15, v82);
              objc_autoreleasePoolPop(v36);
            }

            if (v75)
            {
              if (error)
              {
                *error = v82;
              }

              goto LABEL_63;
            }
          }
        }

        else if (!v25)
        {
LABEL_63:
          v46 = 0;
          v20 = 0;
          goto LABEL_96;
        }

        v47 = [NSSQLiteConnection _replacePersistentStoreAtURL:? destinationOptions:? withPersistentStoreFromURL:? sourceOptions:? error:?];
        if ((v47 & v75) == 1)
        {
          v82 = 0;
          v46 = [defaultManager moveItemAtURL:v78 toURL:v80 error:&v82];
          if (v46)
          {
            goto LABEL_81;
          }

          if (+[NSSQLCore debugDefault]>= 1)
          {
            v48 = objc_autoreleasePoolPush();
            if (_NSCoreDataIsOSLogEnabled(4))
            {
              if (_pflogging_catastrophic_mode)
              {
                v49 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  path16 = [l path];
                  *buf = 138412546;
                  v84 = path16;
                  v85 = 2112;
                  v86 = v82;
                  _os_log_error_impl(&dword_18565F000, v49, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to delete support directory for store: %@.  %@\n", buf, 0x16u);
                }
              }

              else
              {
                v51 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  path17 = [l path];
                  *buf = 138412546;
                  v84 = path17;
                  v85 = 2112;
                  v86 = v82;
                  _os_log_impl(&dword_18565F000, v51, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Failed to delete support directory for store: %@.  %@\n", buf, 0x16u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              path18 = [l path];
              v54 = 1;
            }

            else
            {
              path18 = [l path];
              v54 = 4;
            }

            _NSCoreDataLog_console(v54, "Failed to delete support directory for store: %@.  %@", path18, v82);
            objc_autoreleasePoolPop(v48);
          }

          if (!v77)
          {
LABEL_81:
            v47 = 1;
          }

          else
          {
            v47 = 0;
            if (error)
            {
              *error = v82;
            }
          }
        }

        else
        {
          v46 = 0;
        }

        if (v29 & 1 | !v47)
        {
          v20 = v47;
        }

        else
        {
          v82 = 0;
          v20 = [defaultManager moveItemAtURL:v81 toURL:v78 error:&v82];
          if ((v20 & 1) == 0 && +[NSSQLCore debugDefault]>= 1)
          {
            v55 = objc_autoreleasePoolPush();
            if (_NSCoreDataIsOSLogEnabled(4))
            {
              if (_pflogging_catastrophic_mode)
              {
                v56 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  path19 = [rL path];
                  path20 = [l path];
                  *buf = 138413314;
                  v84 = path19;
                  v85 = 2112;
                  v86 = path20;
                  v87 = 2112;
                  v88 = v81;
                  v89 = 2112;
                  v90 = v78;
                  v91 = 2112;
                  v92 = v82;
                  _os_log_error_impl(&dword_18565F000, v56, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to copy support directory from store: %@ to store: %@ (failed to move %@ to %@ due to %@)\n", buf, 0x34u);
                }
              }

              else
              {
                v59 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  path21 = [rL path];
                  path22 = [l path];
                  *buf = 138413314;
                  v84 = path21;
                  v85 = 2112;
                  v86 = path22;
                  v87 = 2112;
                  v88 = v81;
                  v89 = 2112;
                  v90 = v78;
                  v91 = 2112;
                  v92 = v82;
                  _os_log_impl(&dword_18565F000, v59, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Failed to copy support directory from store: %@ to store: %@ (failed to move %@ to %@ due to %@)\n", buf, 0x34u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              path23 = [rL path];
              path24 = [l path];
              v64 = 1;
            }

            else
            {
              path23 = [rL path];
              path24 = [l path];
              v64 = 4;
            }

            _NSCoreDataLog_console(v64, "Failed to copy support directory from store: %@ to store: %@ (failed to move %@ to %@ due to %@)", path23, path24, v81, v78, v82);
            objc_autoreleasePoolPop(v55);
          }
        }

LABEL_96:
        v65 = [sourceOptions objectForKey:@"NSPersistentStoreUnlinkDestroyOption"];
        if (!v65)
        {
          goto LABEL_106;
        }

        if ((v20 & [v65 BOOLValue]) != 1)
        {
          goto LABEL_106;
        }

        v82 = 0;
        if (([defaultManager removeItemAtURL:v79 error:&v82] & 1) != 0 || +[NSSQLCore debugDefault](NSSQLCore, "debugDefault") < 1)
        {
          goto LABEL_106;
        }

        v66 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(1))
        {
          if (_pflogging_catastrophic_mode)
          {
            v67 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_112;
            }
          }

          else
          {
            v67 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
LABEL_112:
              path25 = [v79 path];
              path26 = [rL path];
              *buf = 138412802;
              v84 = path25;
              v85 = 2112;
              v86 = path26;
              v87 = 2112;
              v88 = v82;
              _os_log_error_impl(&dword_18565F000, v67, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to unlink support directory %@ from old store location: %@ due to %@\n", buf, 0x20u);
            }
          }
        }

        path27 = [v79 path];
        path28 = [rL path];
        _NSCoreDataLog_console(1, "Failed to unlink support directory %@ from old store location: %@ due to %@", path27, path28, v82);
        objc_autoreleasePoolPop(v66);
LABEL_106:
        if (((v20 | v29) & 1) == 0)
        {
          [defaultManager removeItemAtURL:v81 error:0];
        }

        if (v46)
        {
          [defaultManager removeItemAtURL:v80 error:0];
        }

        [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v76];
        goto LABEL_111;
      }
    }
  }

  LOBYTE(v20) = 0;
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Both source and destination stores must be backed by files", options, *MEMORY[0x1E696A578], 0)}];
  }

LABEL_111:
  v70 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (BOOL)_rekeyPersistentStoreAtURL:(id)l options:(id)options withKey:(id)key error:(id *)error
{
  if (l && ([l isFileURL] & 1) != 0)
  {
    v10 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Rekeying entire store"];
    v11 = [NSSQLCore _databaseKeyFromValue:key];
    v12 = [NSSQLiteConnection _rekeyPersistentStoreAtURL:l options:options withKey:v11 error:error];
    [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v10];
  }

  else
  {
    v12 = 0;
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Only persistent stores backed by files can be rekeyed", options, key, *MEMORY[0x1E696A578], 0)}];
    }
  }

  return v12;
}

- (uint64_t)_registerNewQueryGenerationSnapshot:(uint64_t)snapshot
{
  snapshotCopy = snapshot;
  if (snapshot)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v3 = atomic_load((snapshot + 208));
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__NSSQLCore__registerNewQueryGenerationSnapshot___block_invoke;
    v5[3] = &unk_1E6EC23F0;
    v5[5] = a2;
    v5[6] = &v6;
    v5[4] = snapshotCopy;
    [(NSSQLiteConnection *)v3 performAndWait:v5];
    os_unfair_lock_lock_with_options();
    *(snapshotCopy + 264) = 0;
    os_unfair_lock_unlock((snapshotCopy + 152));
    snapshotCopy = *(v7 + 6);
    _Block_object_dispose(&v6, 8);
  }

  return snapshotCopy;
}

uint64_t __49__NSSQLCore__registerNewQueryGenerationSnapshot___block_invoke(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 208));
  result = [(NSSQLiteConnection *)v2 _registerNewQueryGenerationSnapshot:?];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __35__NSSQLCore_currentQueryGeneration__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  if ([v2 registerCurrentQueryGenerationWithStore:*(a1 + 32)])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to adopt query generation from remote change\n", buf, 2u);
    }

    v4 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_18565F000, v4, OS_LOG_TYPE_FAULT, "CoreData: Failed to adopt query generation from remote change", v5, 2u);
    }
  }
}

- (void)freeQueryGenerationWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = atomic_load(&self->_queryGenerationTrackingConnection);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __47__NSSQLCore_freeQueryGenerationWithIdentifier___block_invoke;
    v4[3] = &unk_1E6EC1600;
    v4[4] = self;
    v4[5] = identifier;
    [(NSSQLiteConnection *)v3 performAndWait:v4];
  }
}

uint64_t __47__NSSQLCore_freeQueryGenerationWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = atomic_load((*(a1 + 32) + 208));
  return [(NSSQLiteConnection *)v2 freeQueryGenerationWithIdentifier:v1];
}

- (id)reopenQueryGenerationWithIdentifier:(id)identifier error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (![(NSSQLCore *)self supportsGenerationalQuerying])
  {
    v18 = *MEMORY[0x1E695D930];
    v21 = @"store";
    v22[0] = self;
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v18 reason:@"Unsupported feature in this configuration" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, &v21, 1)}]);
  }

  v7 = atomic_load(&self->_queryGenerationTrackingConnection);
  if (!v7 && ![(NSSQLCore *)self _initializeQueryGenerationTrackingConnection])
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134502 userInfo:0];
    }

    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_18;
    }

    v14 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v16 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v16)
      {
        *buf = 0;
LABEL_22:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: initializing query generations connection failed.\n", buf, 2u);
      }
    }

    else if (v16)
    {
      *buf = 0;
      goto LABEL_22;
    }

LABEL_18:
    _NSCoreDataLog_console(1, "initializing query generations connection failed.");
    objc_autoreleasePoolPop(v13);
    goto LABEL_19;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __55__NSSQLCore_reopenQueryGenerationWithIdentifier_error___block_invoke;
  v19[3] = &unk_1E6EC3708;
  v19[4] = identifier;
  v8 = [[NSSQLBlockRequestContext alloc] initWithBlock:v19 context:0 sqlCore:self];
  [(NSSQLCore *)self dispatchRequest:v8 withRetries:0];
  result = [(NSSQLStoreRequestContext *)v8 result];
  if (!result)
  {
    if (!v8)
    {
      error = 0;
      result = 0;
      if (!error)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    exception = v8->super._exception;
    if (exception)
    {
      objc_exception_throw(exception);
    }

    if (error)
    {
      error = v8->super._error;
LABEL_10:
      result = 0;
      *error = error;
      goto LABEL_20;
    }

LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  result = [[_NSQueryGenerationToken alloc] initWithValue:result store:self freeValueOnDealloc:1];
LABEL_20:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void __55__NSSQLCore_reopenQueryGenerationWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2[3];
  }

  else
  {
    v4 = 0;
  }

  [(NSSQLiteConnection *)v4 connect];
  newValue = 0;
  v6 = [(NSSQLiteConnection *)v4 reopenQueryGenerationWithIdentifier:&newValue error:?];
  if (v6)
  {
    [a2 setResult:v6];
  }

  else if (a2)
  {
    objc_setProperty_nonatomic(a2, v5, newValue, 40);
  }
}

- (id)connectionForMigration
{
  selfCopy = self;
  if (self)
  {
    selfCopy = [[NSSQLiteConnection alloc] initForSQLCore:self];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __35__NSSQLCore_connectionForMigration__block_invoke;
    v3[3] = &unk_1E6EC16F0;
    v3[4] = selfCopy;
    [(NSSQLiteConnection *)selfCopy performAndWait:v3];
  }

  return selfCopy;
}

- (void)setURL:(id)l
{
  v7.receiver = self;
  v7.super_class = NSSQLCore;
  [(NSPersistentStore *)&v7 setURL:l];
  [(NSSQLCore *)self _disconnectAllConnections];
  if (self)
  {
    v4 = atomic_load(&self->_externalDataLinksDirectory);

    atomic_store(0, &self->_externalDataLinksDirectory);
    v5 = atomic_load(&self->_externalDataReferencesDirectory);

    atomic_store(0, &self->_externalDataReferencesDirectory);
    v6 = atomic_load(&self->_fileBackedFuturesPath);

    atomic_store(0, &self->_fileBackedFuturesPath);
  }
}

- (void)_useModel:(id *)model
{
  if (model && model[13] != a2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a2;

    model[13] = a2;
    -[NSSQLiteAdapter _useModel:]([model adapter], a2);
    [(NSSQLCore *)model _setupHistoryModelForPSC:NSSet_EmptySet withExcludedEntityNames:?];

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_cacheRows:(void *)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = [(NSSQLCore *)result rowCacheForGeneration:?];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(a2);
          }

          v7 = *(*(&v10 + 1) + 8 * v6);
          objectID = [v7 objectID];
          if (v3)
          {
            [(NSPersistentStoreCache *)v3 registerRow:v7 forObjectID:objectID options:0];
          }

          v6 = (v6 + 1);
        }

        while (v4 != v6);
        result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_uncacheRows:(void *)result
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = [(NSSQLCore *)result rowCacheForGeneration:?];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(a2);
          }

          -[NSPersistentStoreCache decrementRefCountForObjectID:](v3, [*(*(&v8 + 1) + 8 * v6) objectID]);
          v6 = (v6 + 1);
        }

        while (v4 != v6);
        result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)ds generation:(id)generation
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(NSSQLCore *)self rowCacheForGeneration:generation];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [ds countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(ds);
        }

        [(NSPersistentStoreCache *)v5 incrementRefCountForObjectID:?];
      }

      while (v7 != v9);
      v7 = [ds countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)ds generation:(id)generation
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = [(NSGenerationalRowCache *)self->_generationalRowCache rowCacheForGeneration:generation];
    if (v5)
    {
      v6 = v5;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = [ds countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(ds);
            }

            [(NSPersistentStoreCache *)v6 decrementRefCountForObjectID:?];
          }

          while (v8 != v10);
          v8 = [ds countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_mapsSyncDidUnregisterObjectsWithIDs_112229675:(id)ds_112229675
{
  if (byte_1ED4BE7B9 == 1)
  {

    [(NSSQLCore *)self managedObjectContextDidUnregisterObjectsWithIDs:ds_112229675 generation:0];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempt to use SPI reserved for mapssyncd\n", buf, 2u);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Attempt to use SPI reserved for mapssyncd", v7, 2u);
    }
  }
}

- (void)willRemoveFromPersistentStoreCoordinator:(id)coordinator
{
  observer = self->_observer;
  if (observer)
  {
    objc_storeWeak(&observer->_core, 0);

    self->_observer = 0;
  }

  harvestIndexStatisticsFromConnections = [(NSSQLCore *)self harvestIndexStatisticsFromConnections];
  if ([harvestIndexStatisticsFromConnections count])
  {
    v7 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Saving index statistics"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__NSSQLCore_willRemoveFromPersistentStoreCoordinator___block_invoke;
    v10[3] = &unk_1E6EC3750;
    v10[4] = harvestIndexStatisticsFromConnections;
    v10[5] = self;
    v8 = [[NSSQLBlockRequestContext alloc] initWithBlock:v10 context:0 sqlCore:self];
    [(NSSQLCore *)self dispatchRequest:v8 withRetries:0];

    [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v7];
  }

  [(NSSQLCore *)self _disconnectAllConnections];
  v9.receiver = self;
  v9.super_class = NSSQLCore;
  [(NSPersistentStore *)&v9 willRemoveFromPersistentStoreCoordinator:coordinator];
}

void __54__NSSQLCore_willRemoveFromPersistentStoreCoordinator___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  v4 = [objc_msgSend(*(a1 + 40) "ancillarySQLModels")];

  [NSSQLiteIndexTrackingModel updateIndexStatistics:v3 usingConnection:v2 model:v4];
}

- (BOOL)_unload:(id *)_unload
{
  [(NSSQLCore *)self _disconnectAllConnections];
  v6.receiver = self;
  v6.super_class = NSSQLCore;
  return [(NSPersistentStore *)&v6 _unload:_unload];
}

- (id)_newObjectIDForEntity:(id)entity referenceData64:(unint64_t)data64
{
  if (!data64)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Invalid parameter value (zero)";
LABEL_9:
    objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
  }

  if (!entity || (v6 = -[NSSQLModel entityNamed:](self->_model, "entityNamed:", [entity name])) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Invalid parameter value (bad entity)";
    goto LABEL_9;
  }

  return [(NSSQLCore *)self newObjectIDForEntity:v6 pk:data64];
}

void __66__NSSQLCore_processCloudKitContainerEventRequest_inContext_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[NSPersistentCloudKitContainerEvent alloc] initWithCKEvent:a2];
  [*(a1 + 32) addObject:v3];
}

- (id)_newOrderedRelationshipInformationForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v9 = [(NSSQLCore *)self _newValuesForRelationship:relationship forObjectWithID:d withContext:context error:&v16];
  v10 = v9;
  if (error && !v9)
  {
    v11 = v16;
    if (!v16)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A250];
      v17 = @"message";
      v18[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to retrieve ordering information from fault for object %@ and relationship %@", d, objc_msgSend(relationship, "name")];
      v11 = [v12 errorWithDomain:v13 code:133000 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v18, &v17, 1)}];
    }

    *error = v11;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_allOrderKeysForDestination:(id)destination inRelationship:(id)relationship error:(id *)error
{
  entity = [relationship entity];
  v9 = [objc_msgSend(entity "subentities")];
  v10 = _sqlCoreLookupSQLEntityForEntityDescription(self, entity);
  name = [relationship name];
  if (v10)
  {
    v12 = [*(v10 + 40) objectForKey:name];
    if ([v12 isToMany])
    {
LABEL_3:
      v13 = [(NSSQLiteAdapter *)[(NSSQLCore *)self adapter] generateSQLStatmentForSourcesAndOrderKeysForDestination:destination inToMany:v12];
LABEL_7:
      v14 = v13;
      goto LABEL_9;
    }

    if (v12 && *(v12 + 24) == 9)
    {
      v13 = [(NSSQLiteAdapter *)[(NSSQLCore *)self adapter] generateSQLStatmentForSourcesAndOrderKeysForDestination:destination inManyToMany:v12];
      goto LABEL_7;
    }

    v14 = 0;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if ([0 isToMany])
    {
      goto LABEL_3;
    }
  }

LABEL_9:
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __62__NSSQLCore__allOrderKeysForDestination_inRelationship_error___block_invoke;
  v32 = &unk_1E6EC3708;
  v33 = v14;
  v15 = [[NSSQLBlockRequestContext alloc] initWithBlock:&v29 context:0 sqlCore:self];

  v28 = v15;
  [(NSSQLCore *)self dispatchRequest:v15 withRetries:4];
  result = [(NSSQLStoreRequestContext *)v15 result];
  v17 = result;
  if (!result)
  {
    exception = v15;
    if (v15)
    {
      exception = v15->super._exception;
    }

    objc_exception_throw(exception);
  }

  Count = CFArrayGetCount(result);
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (Count >= 2)
  {
    CFArrayGetValueAtIndex(v17, 0);
    for (i = 1; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v17, i);
      v22 = *ValueAtIndex;
      if (*ValueAtIndex)
      {
        v23 = ValueAtIndex[2];
        v24 = v10;
        if (v9)
        {
          v24 = _sqlEntityForEntityID(self->_model, ValueAtIndex[1]);
        }

        v25 = [(NSSQLCore *)self newObjectIDForEntity:v24 pk:v22, v28, v29, v30, v31, v32, v33];
        [v19 addObject:v25];

        [v19 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v23)}];
      }
    }
  }

  return v19;
}

void __62__NSSQLCore__allOrderKeysForDestination_inRelationship_error___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[3];
  }

  else
  {
    v3 = 0;
  }

  v4 = -[NSSQLiteConnection copyRawIntegerRowsForSQL:](v3, [*(a1 + 32) sqlString]);
  [a2 setResult:v4];
  CFRelease(v4);
  [(NSSQLiteConnection *)v3 endFetchAndRecycleStatement:?];
}

- (uint64_t)_refreshTriggerValues:(uint64_t)values
{
  v55 = *MEMORY[0x1E69E9840];
  if (values)
  {
    v48 = 0;
    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v3 = *(values + 104);
    if (v3)
    {
      v4 = *(v3 + 24);
    }

    else
    {
      v4 = 0;
    }

    allValues = [v4 allValues];
    v6 = [allValues countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (!v6)
    {
      goto LABEL_33;
    }

    v33 = *v45;
    v36 = 1;
    do
    {
      v7 = 0;
      v34 = v6;
      do
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v44 + 1) + 8 * v7);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        if (v8)
        {
          v9 = *(v8 + 40);
        }

        else
        {
          v9 = 0;
        }

        allValues2 = [v9 allValues];
        v11 = [allValues2 countByEnumeratingWithState:&v40 objects:v53 count:16];
        v35 = v7;
        if (v11)
        {
          v12 = *v41;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v41 != v12)
              {
                objc_enumerationMutation(allValues2);
              }

              v14 = *(*(&v40 + 1) + 8 * i);
              propertyType = [v14 propertyType];
              if (v14)
              {
                v16 = propertyType == 1;
              }

              else
              {
                v16 = 0;
              }

              if (v16 && (v14[16] & 8) != 0)
              {
                v17 = [NSSQLAttributeExtensionFactory newExtensionsForAttribute:v14 error:&v48];
                v18 = v17;
                if (v17)
                {
                  v39[0] = MEMORY[0x1E69E9820];
                  v39[1] = 3221225472;
                  v39[2] = __35__NSSQLCore__refreshTriggerValues___block_invoke;
                  v39[3] = &unk_1E6EC37C8;
                  v39[4] = v8;
                  v39[5] = v37;
                  [v17 enumerateObjectsUsingBlock:v39];
                }

                else
                {
                  v36 = 0;
                }
              }
            }

            v11 = [allValues2 countByEnumeratingWithState:&v40 objects:v53 count:16];
          }

          while (v11);
        }

        v7 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v19 = [allValues countByEnumeratingWithState:&v44 objects:v54 count:16];
      v6 = v19;
    }

    while (v19);
    if ((v36 & 1) == 0)
    {
      v23 = 0;
    }

    else
    {
LABEL_33:
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __35__NSSQLCore__refreshTriggerValues___block_invoke_2;
      v38[3] = &unk_1E6EC3750;
      v38[4] = v37;
      v38[5] = values;
      v20 = [[NSSQLBlockRequestContext alloc] initWithBlock:v38 context:0 sqlCore:values];
      [(NSSQLCore *)values dispatchRequest:v20 withRetries:0];
      if (v20)
      {
        exception = v20->super._exception;
      }

      else
      {
        exception = 0;
      }

      v22 = exception;

      if (v22)
      {
        objc_exception_throw(v22);
      }

      v23 = 1;
    }

    v24 = v48;

    v25 = 0;
    v26 = v48;
    if ((v23 & 1) == 0)
    {
      if (v48)
      {
        if (a2)
        {
          *a2 = v48;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v50 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
          v51 = 1024;
          v52 = 4963;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v28 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v50 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore.m";
          v51 = 1024;
          v52 = 4963;
          _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    v23 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v23 & 1;
}

uint64_t __35__NSSQLCore__refreshTriggerValues___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a2 bulkUpdateSQLStrings];
  result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[NSSQLiteStatement alloc] initWithEntity:*(a1 + 32) sqlString:*(*(&v10 + 1) + 8 * v7)];
        [*(a1 + 40) addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __35__NSSQLCore__refreshTriggerValues___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    v4 = 0;
  }

  [(NSSQLiteConnection *)v4 beginTransaction];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(NSSQLiteConnection *)v4 prepareAndExecuteSQLStatement:?];
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  [(NSSQLiteConnection *)v4 commitTransaction];
  v9 = *(a1 + 40);
  if (v9)
  {
    if (atomic_load((v9 + 208)))
    {
      v11 = a2 ? *(a2 + 8) : 0;
      v12 = [v4 registerCurrentQueryGenerationWithStore:v11];
      if (v12)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v21 = v12;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Refreshing trigger values failed to adopt post transaction query generation with error %d\n", buf, 8u);
        }

        v14 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          v21 = v12;
          _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Refreshing trigger values failed to adopt post transaction query generation with error %d", buf, 8u);
        }
      }
    }
  }

  [(NSSQLiteConnection *)v4 endFetchAndRecycleStatement:?];
  v15 = *MEMORY[0x1E69E9840];
}

void __72__NSSQLCore__rebuildTriggerSchemaUsingConnection_recomputeValues_error___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = [a2 insertSQLStrings];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [a2 dropSQLStrings];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[NSSQLiteStatement alloc] initWithEntity:*(a1 + 32) sqlString:*(*(&v31 + 1) + 8 * v9)];
        [*(a1 + 40) addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [v4 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v4);
        }

        v15 = [[NSSQLiteStatement alloc] initWithEntity:*(a1 + 32) sqlString:*(*(&v27 + 1) + 8 * v14)];
        [*(a1 + 40) addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v4 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v12);
  }

  if (*(a1 + 48) == 1)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = [a2 bulkUpdateSQLStrings];
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[NSSQLiteStatement alloc] initWithEntity:*(a1 + 32) sqlString:*(*(&v23 + 1) + 8 * v20)];
          [*(a1 + 40) addObject:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v18);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)finishDeferredLightweightMigration:(BOOL)migration withError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __58__NSSQLCore_finishDeferredLightweightMigration_withError___block_invoke;
  v16 = &unk_1E6EC3840;
  v17 = &v19;
  LOBYTE(v18) = migration;
  v6 = [[NSSQLBlockRequestContext alloc] initWithBlock:&v13 context:0 sqlCore:self];
  [(NSSQLCore *)self dispatchRequest:v6 withRetries:0];
  if (v20[3])
  {
    goto LABEL_11;
  }

  if (!v6)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    error = 0;
    goto LABEL_9;
  }

  exception = v6->super._exception;
  if (!exception)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    error = v6->super._error;
LABEL_9:
    errorCopy = error;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = exception;
    objc_exception_throw(exception);
  }

  if (error)
  {
    errorCopy = [(NSException *)exception errorObjectWithUserInfo:0, v13, v14, v15, v16, v17, v18];
LABEL_10:
    *error = errorCopy;
  }

LABEL_11:

  v10 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return v10;
}

BOOL __58__NSSQLCore_finishDeferredLightweightMigration_withError___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  result = [(NSSQLiteConnection *)v3 finishDeferredLightweightMigration:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void *__50__NSSQLCore_harvestIndexStatisticsFromConnections__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:a2];
  if (result)
  {
    v7 = result[4];
    result[3] += a3[3];
    result[4] = v7 + a3[4];
    result[5] += a3[5];
  }

  else
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);

    return [v8 setObject:a3 forKeyedSubscript:a2];
  }

  return result;
}

- (void)_setHasAncillaryModels:(BOOL)models
{
  if (models)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_sqlCoreFlags = (*&self->_sqlCoreFlags & 0xFFFFF7FF | v3);
}

+ (BOOL)dropPersistentHistoryforPersistentStoreWithURL:(id)l options:(id)options error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E695DF90];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:240.0];
  v31 = @"journal_mode";
  v32[0] = [MEMORY[0x1E695DFB0] null];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v12 = [v9 dictionaryWithObjectsAndKeys:{v10, @"NSPersistentStoreTimeoutOption", v11, @"NSSQLitePragmasOption", MEMORY[0x1E695E118], @"NSPersistentHistoryTrackingKey", 0}];
  v13 = v12;
  if (options)
  {
    [v12 addEntriesFromDictionary:options];
    [v13 removeObjectForKey:@"NSReadOnlyPersistentStoreOption"];
    v14 = [options objectForKey:@"NSSQLitePragmasOption"];
    if ([v14 objectForKey:@"journal_mode"])
    {
      v15 = [v14 mutableCopy];
      [v15 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"journal_mode"}];
      [v13 setObject:v15 forKey:@"NSSQLitePragmasOption"];
    }
  }

  if ([NSSQLCore sanityCheckFileAtURL:l options:options error:error])
  {
    v16 = [[self alloc] initWithPersistentStoreCoordinator:0 configurationName:0 URL:l options:v13];
    v17 = v16;
    if (v16)
    {
      if ((*(v16 + 200) & 0x40) != 0)
      {
        v20 = [NSSQLBlockRequestContext alloc];
        v25 = MEMORY[0x1E69E9820];
        v26 = 3221225472;
        v27 = __31__NSSQLCore__dropHistoryTables__block_invoke_2;
        v28 = &unk_1E6EC36E0;
        v29 = &__block_literal_global_482;
        v21 = [(NSSQLBlockRequestContext *)v20 initWithBlock:&v25 context:0 sqlCore:v17];
        [(NSSQLCore *)v17 dispatchRequest:v21 withRetries:0];
      }

      else
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x3052000000;
        v28 = __Block_byref_object_copy__24;
        v29 = __Block_byref_object_dispose__24;
        v30 = 0;
        schemaValidationConnection = [(NSSQLCore *)v16 schemaValidationConnection];
        *(v26 + 40) = schemaValidationConnection;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __31__NSSQLCore__dropHistoryTables__block_invoke_3;
        v24[3] = &unk_1E6EC1790;
        v24[4] = &__block_literal_global_482;
        v24[5] = &v25;
        [(NSSQLiteConnection *)schemaValidationConnection performAndWait:v24];
        _Block_object_dispose(&v25, 8);
      }
    }

    v19 = 1;
    [(NSSQLCore *)v17 _disconnectAllConnections];
  }

  else
  {
    v19 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __31__NSSQLCore__dropHistoryTables__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [(NSSQLiteConnection *)a2 canConnect];
  if (result)
  {
    [(NSSQLiteConnection *)a2 connect];

    return [(NSSQLiteConnection *)a2 _dropKnownHistoryTrackingTables];
  }

  return result;
}

uint64_t __31__NSSQLCore__dropHistoryTables__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  return (*(*(a1 + 32) + 16))();
}

- (unint64_t)entityIDForEntityDescription:(id)description
{
  if (!description)
  {
    return 0;
  }

  model = self->_model;
  if (model)
  {
    return -[NSKnownKeysMappingStrategy fastIndexForKnownKey:](-[NSKnownKeysDictionary mapping](model->_entitiesByName, "mapping"), "fastIndexForKnownKey:", [description name]) + 1;
  }

  else
  {
    return 0;
  }
}

- (id)propertyNamesInHistoryChangeDataForEntityDescription:(id)description
{
  v82 = *MEMORY[0x1E69E9840];
  if (description && (v3 = -[NSSQLModel entityNamed:](self->_model, "entityNamed:", [description name])) != 0)
  {
    v4 = v3;
    foreignKeyColumns = [v3 foreignKeyColumns];
    foreignEntityKeyColumns = [v4 foreignEntityKeyColumns];
    foreignOrderKeyColumns = [v4 foreignOrderKeyColumns];
    attributeColumns = [v4 attributeColumns];
    toManyRelationships = [v4 toManyRelationships];
    manyToManyRelationships = [v4 manyToManyRelationships];
    v51 = [attributeColumns count];
    v11 = [foreignOrderKeyColumns count];
    v12 = [foreignEntityKeyColumns count];
    v13 = [foreignKeyColumns count];
    v14 = [toManyRelationships count];
    v15 = [manyToManyRelationships count];
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11 + v51 + v12 + v13 + v14 + v15];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v17 = [foreignKeyColumns countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v73;
      do
      {
        v20 = 0;
        do
        {
          if (*v73 != v19)
          {
            objc_enumerationMutation(foreignKeyColumns);
          }

          toOneRelationship = [*(*(&v72 + 1) + 8 * v20) toOneRelationship];
          if (toOneRelationship)
          {
            propertyDescription = [toOneRelationship propertyDescription];
            if (propertyDescription)
            {
              [v16 addObject:{objc_msgSend(propertyDescription, "name")}];
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [foreignKeyColumns countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v18);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v23 = [foreignEntityKeyColumns countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v69;
      do
      {
        v26 = 0;
        do
        {
          if (*v69 != v25)
          {
            objc_enumerationMutation(foreignEntityKeyColumns);
          }

          toOneRelationship2 = [*(*(&v68 + 1) + 8 * v26) toOneRelationship];
          if (toOneRelationship2)
          {
            propertyDescription2 = [toOneRelationship2 propertyDescription];
            if (propertyDescription2)
            {
              [v16 addObject:{objc_msgSend(propertyDescription2, "name")}];
            }
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = [foreignEntityKeyColumns countByEnumeratingWithState:&v68 objects:v80 count:16];
      }

      while (v24);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v29 = [foreignOrderKeyColumns countByEnumeratingWithState:&v64 objects:v79 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v65;
      do
      {
        v32 = 0;
        do
        {
          if (*v65 != v31)
          {
            objc_enumerationMutation(foreignOrderKeyColumns);
          }

          toOneRelationship3 = [*(*(&v64 + 1) + 8 * v32) toOneRelationship];
          if (toOneRelationship3)
          {
            propertyDescription3 = [toOneRelationship3 propertyDescription];
            if (propertyDescription3)
            {
              [v16 addObject:{objc_msgSend(propertyDescription3, "name")}];
            }
          }

          ++v32;
        }

        while (v30 != v32);
        v30 = [foreignOrderKeyColumns countByEnumeratingWithState:&v64 objects:v79 count:16];
      }

      while (v30);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v35 = [attributeColumns countByEnumeratingWithState:&v60 objects:v78 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v61;
      do
      {
        v38 = 0;
        do
        {
          if (*v61 != v37)
          {
            objc_enumerationMutation(attributeColumns);
          }

          [v16 addObject:{objc_msgSend(objc_msgSend(*(*(&v60 + 1) + 8 * v38++), "attributeDescription"), "name")}];
        }

        while (v36 != v38);
        v36 = [attributeColumns countByEnumeratingWithState:&v60 objects:v78 count:16];
      }

      while (v36);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v39 = [toManyRelationships countByEnumeratingWithState:&v56 objects:v77 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v57;
      do
      {
        v42 = 0;
        do
        {
          if (*v57 != v41)
          {
            objc_enumerationMutation(toManyRelationships);
          }

          propertyDescription4 = *(*(&v56 + 1) + 8 * v42);
          if (propertyDescription4)
          {
            propertyDescription4 = [propertyDescription4 propertyDescription];
          }

          [v16 addObject:{objc_msgSend(propertyDescription4, "name")}];
          ++v42;
        }

        while (v40 != v42);
        v40 = [toManyRelationships countByEnumeratingWithState:&v56 objects:v77 count:16];
      }

      while (v40);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v44 = [manyToManyRelationships countByEnumeratingWithState:&v52 objects:v76 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v53;
      do
      {
        v47 = 0;
        do
        {
          if (*v53 != v46)
          {
            objc_enumerationMutation(manyToManyRelationships);
          }

          propertyDescription5 = *(*(&v52 + 1) + 8 * v47);
          if (propertyDescription5)
          {
            propertyDescription5 = [propertyDescription5 propertyDescription];
          }

          [v16 addObject:{objc_msgSend(propertyDescription5, "name")}];
          ++v47;
        }

        while (v45 != v47);
        v45 = [manyToManyRelationships countByEnumeratingWithState:&v52 objects:v76 count:16];
      }

      while (v45);
    }

    result = [v16 allObjects];
  }

  else
  {
    result = NSArray_EmptyArray;
  }

  v50 = *MEMORY[0x1E69E9840];
  return result;
}

@end