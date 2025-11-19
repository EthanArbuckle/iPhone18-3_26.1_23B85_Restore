@interface NSXPCStore
+ (BOOL)_isOnExtendedTimeout;
+ (id)archiver:(id)a3 willEncodeObject:(id)a4;
+ (void)initialize;
- (BOOL)_hasActiveGenerations;
- (BOOL)load:(id *)a3;
- (BOOL)loadMetadata:(id *)a3;
- (BOOL)supportsConcurrentRequestHandling;
- (Class)_objectIDClass;
- (Class)objectIDFactoryForSQLEntity:(id)a3;
- (NSPersistentStore)executeFetchRequest:(void *)a3 withContext:(void *)a4 error:;
- (NSXPCStore)initWithPersistentStoreCoordinator:(id)a3 configurationName:(id)a4 URL:(id)a5 options:(id)a6;
- (double)_cachedRowForObjectWithID:(void *)a3 generation:;
- (id)_newObjectIDForEntityDescription:(id)a3 pk:(int64_t)a4;
- (id)currentChangeToken;
- (id)currentQueryGeneration;
- (id)entityForEntityDescription:(id)a3;
- (id)executeRequest:(id)a3 withContext:(id)a4 error:(id *)a5;
- (id)metadata;
- (id)newForeignKeyID:(int64_t)a3 entity:(id)a4;
- (id)newObjectIDForEntity:(id)a3 pk:(int64_t)a4;
- (id)newValueForRelationship:(id)a3 forObjectWithID:(id)a4 withContext:(id)a5 error:(id *)a6;
- (id)newValuesForObjectWithID:(id)a3 withContext:(id)a4 error:(id *)a5;
- (id)objectIDFactoryForEntity:(id)a3;
- (id)obtainPermanentIDsForObjects:(id)a3 error:(id *)a4;
- (id)reopenQueryGenerationWithIdentifier:(id)a3 error:(id *)a4;
- (id)replacementObjectForXPCConnection:(id)a3 encoder:(id)a4 object:(id)a5;
- (id)sendMessage:(void *)a3 fromContext:(void *)a4 interrupts:(uint64_t *)a5 error:;
- (uint64_t)_commitChangesForRequestContext:(uint64_t)a1;
- (uint64_t)_executeSaveRequestForContext:(uint64_t *)a3 error:;
- (uint64_t)decodePrefetchArray:(void *)a3 forSources:(void *)a4 context:;
- (void)_cachedRowForRelationship:(const void *)a3 onObjectWithID:(void *)a4 generation:;
- (void)_clearCachedRowForObjectWithID:(void *)a3 generation:;
- (void)_prepareStoreForRemovalFromCoordinator:(id)a3;
- (void)cacheContents:(void *)a3 ofRelationship:(void *)a4 onObjectWithID:(void *)a5 withTimestamp:(double)a6 generation:;
- (void)cacheFetchedRows:(void *)a3 forManagedObjects:(void *)a4 generation:;
- (void)dealloc;
- (void)decodePrefetchResult:(void *)a3 forSources:(void *)a4 context:;
- (void)freeQueryGenerationWithIdentifier:(id)a3;
- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)a3 generation:(id)a4;
- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)a3 generation:(id)a4;
- (void)willRemoveFromPersistentStoreCoordinator:(id)a3;
@end

@implementation NSXPCStore

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == a1)
  {
    dword_1ED4BE7A4 = [_PFRoutines integerValueForOverride:?];
    v3 = getprogname();
    if (v3)
    {
      if (*v3)
      {
        if (!strncmp("PhotosReliveWidget", v3, 0x12uLL))
        {
          atomic_store(1u, _MergedGlobals_122);
        }
      }
    }
  }
}

- (BOOL)supportsConcurrentRequestHandling
{
  v2 = [(NSDictionary *)[(NSPersistentStore *)self options] valueForKey:@"NSPersistentStoreConnectionPoolMaxSize"];
  v3 = [v2 integerValue];
  if (v2)
  {
    v4 = v3 <= 0;
  }

  else
  {
    v4 = 0;
  }

  return !v4;
}

- (id)currentChangeToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(NSPersistentStore *)self _persistentStoreCoordinator];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__NSXPCStore_Internal__currentChangeToken__block_invoke;
  v6[3] = &unk_1E6EC1330;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __42__NSXPCStore_Internal__currentChangeToken__block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(NSCoreDataXPCMessage);
  v3 = v2;
  if (v2)
  {
    v2->_messageCode = 14;
  }

  v26[0] = [*(a1 + 32) identifier];
  v5 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1]);
  if (v3)
  {
    objc_setProperty_nonatomic(v3, v4, v5, 24);
  }

  v23 = 0;
  v6 = [(NSXPCStore *)*(a1 + 32) sendMessage:v3 fromContext:0 interrupts:&v22 error:&v23];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [_NSXPCStoreUtilities decodeSecureArchivedData:v7 usingDelegate:*(a1 + 32) classes:v11];
    if (+[NSXPCStore debugDefault])
    {
      v13 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v12;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Decoded history token - %@\n", buf, 0xCu);
          }
        }

        else
        {
          v17 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Decoded history token - %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v18 = 1;
      }

      else
      {
        v18 = 8;
      }

      _NSCoreDataLog_console(v18, "Decoded history token - %@", v12);
      objc_autoreleasePoolPop(v13);
    }

    if (v12 && [v12 count])
    {
      *(*(*(a1 + 40) + 8) + 40) = [[_NSPersistentHistoryToken alloc] initWithDictionary:v12];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v16 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v23;
          _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: error: Nil result for history token request - %@\n", buf, 0xCu);
        }
      }

      else
      {
        v19 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v23;
          _os_log_impl(&dword_18565F000, v19, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil result for history token request - %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v20 = 1;
    }

    else
    {
      v20 = 8;
    }

    _NSCoreDataLog_console(v20, "Nil result for history token request - %@", v23);
    objc_autoreleasePoolPop(v15);
  }

  v21 = *MEMORY[0x1E69E9840];
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

- (id)metadata
{
  os_unfair_lock_lock_with_options();
  metadata = self->_metadata;
  if (metadata)
  {
    v4 = metadata;
    os_unfair_lock_unlock(&self->_stateLock);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  v4 = 0;
  if ([(NSXPCStore *)self loadMetadata:0])
  {
    os_unfair_lock_lock_with_options();
    v4 = self->_metadata;
    os_unfair_lock_unlock(&self->_stateLock);
  }

LABEL_7:

  return v4;
}

+ (id)archiver:(id)a3 willEncodeObject:(id)a4
{
  v5 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [NSXPCStoreManagedObjectArchivingToken alloc];
    v7 = [a4 objectID];
LABEL_5:
    v8 = -[NSXPCStoreManagedObjectArchivingToken initWithURI:](v6, "initWithURI:", [v7 URIRepresentation]);
LABEL_6:
    v9 = v8;
    objc_autoreleasePoolPop(v5);

    return v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [NSXPCStoreManagedObjectArchivingToken alloc];
    v7 = a4;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [_NSXPCStoreUtilities newUserInfoFromException:a4];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    [a4 timeIntervalSinceReferenceDate];
    v8 = [v11 initWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (+[NSQueryGenerationToken currentQueryGenerationToken]== a4)
    {
      a4 = @"current";
    }

    else if (+[NSQueryGenerationToken unpinnedQueryGenerationToken]== a4)
    {
      a4 = @"unpinned";
    }

    else
    {
      +[NSQueryGenerationToken nostoresQueryGenerationToken];
    }
  }

  objc_autoreleasePoolPop(v5);
  return a4;
}

- (id)replacementObjectForXPCConnection:(id)a3 encoder:(id)a4 object:(id)a5
{
  v8 = objc_opt_class();

  return [v8 replacementObjectForXPCConnection:a3 encoder:a4 object:a5];
}

- (NSXPCStore)initWithPersistentStoreCoordinator:(id)a3 configurationName:(id)a4 URL:(id)a5 options:(id)a6
{
  v6 = a6;
  v50 = *MEMORY[0x1E69E9840];
  if (![a6 valueForKey:@"serviceName"] && !objc_msgSend(v6, "valueForKey:", @"NSXPCStoreServiceName") && !objc_msgSend(v6, "valueForKey:", @"NSXPCStoreServerEndpointFactory"))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No service name or endpoint factory supplied" userInfo:0]);
  }

  v37 = a4;
  if ([objc_msgSend(v6 objectForKey:{@"skipModelCheck", "BOOLValue"}])
  {
    if ([v6 valueForKey:@"NSXPCStoreServerEndpointFactory"] && !objc_msgSend(v6, "valueForKey:", @"NSPersistentHistoryTrackingKey"))
    {
      v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
      [v6 setValue:MEMORY[0x1E695E118] forKey:@"NSPersistentHistoryTrackingKey"];
    }
  }

  else
  {
    v10 = [a3 managedObjectModel];
    v35 = self;
    v36 = a5;
    if ([a4 length] && !objc_msgSend(a4, "isEqualToString:", @"PF_DEFAULT_CONFIGURATION_NAME"))
    {
      v11 = [v10 entitiesForConfiguration:a4];
    }

    else
    {
      v11 = [v10 entities];
    }

    v12 = v11;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = [v11 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v13)
    {
      v14 = *v45;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v44 + 1) + 8 * i);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v17)
          {
            v18 = *v41;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v41 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v40 + 1) + 8 * j);
                if ([v20 _propertyType] == 4 && objc_msgSend(v20, "isToMany") && objc_msgSend(v20, "isOrdered"))
                {
                  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"XPC store does not currently allow models containing ordered relationships" userInfo:0]);
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v17);
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v13);
    }

    a5 = v36;
    a4 = v37;
    self = v35;
  }

  v39.receiver = self;
  v39.super_class = NSXPCStore;
  v21 = [(NSPersistentStore *)&v39 initWithPersistentStoreCoordinator:a3 configurationName:a4 URL:a5 options:v6];
  if (v21)
  {
    v21->_requestTerminationSem = dispatch_semaphore_create(0);
    v21->_cache = [[NSGenerationalRowCache alloc] initWithStore:v21];
    v22 = -[NSSQLModel initWithManagedObjectModel:]([NSSQLModel alloc], "initWithManagedObjectModel:", [a3 managedObjectModel]);
    v21->_model = v22;
    if (!v22)
    {
      [_NSXPCStoreUtilities logMessage:@"Unable to load model" forComponent:?];
    }

    v21->_sanityCheckToken = 0;
    v21->_stateLock._os_unfair_lock_opaque = 0;
    v21->_outstandingRequests = 0;
    v21->_connectionManager = [[NSXPCStoreConnectionManager alloc] initForStore:v21];
    if (a3)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
      [v25 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSXPCStoreDelegate"];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/dev/null/CDInternalXPCStore-%p", v21];
      v27 = [NSSQLCore alloc];
      v28 = -[NSSQLCore initWithPersistentStoreCoordinator:configurationName:URL:options:](v27, "initWithPersistentStoreCoordinator:configurationName:URL:options:", 0, v37, [MEMORY[0x1E695DFF8] fileURLWithPath:v26], v25);
      v21->_core = v28;
      [(NSSQLCore *)v28 _useModel:?];
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v29 = [v6 objectForKey:@"NSPersistentHistoryTrackingKey"];
    if (a3 && v29)
    {
      v30 = [v6 objectForKey:@"NSPersistentHistoryTrackingKey"];
      if (([v30 isNSDictionary] & 1) == 0 && (objc_msgSend(v30, "isNSNumber") & 1) == 0)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersistentHistoryTrackingKey must be a NSNumber" userInfo:0]);
      }

      if (([v30 isNSDictionary] & 1) != 0 || objc_msgSend(v30, "isNSNumber") && objc_msgSend(v30, "BOOLValue"))
      {
        v31 = [(NSDictionary *)[(NSSQLCore *)v21->_core ancillaryModels] objectForKey:@"NSPersistentHistoryTrackingKey"];
        [(_PFModelMap *)*(a3 + 12) addManagedObjectModel:v31];
        [v23 setObject:v31 forKey:@"NSPersistentHistoryTrackingKey"];
        [v24 setObject:objc_msgSend(-[NSSQLCore ancillarySQLModels](v21->_core forKey:{"ancillarySQLModels"), "objectForKey:", @"NSPersistentHistoryTrackingKey", @"NSPersistentHistoryTrackingKey"}];
        v32 = +[_PFPersistentHistoryFetchModel newFetchHistoryModelForCoordinator:andOptions:];
        [(_PFModelMap *)*(a3 + 12) addManagedObjectModel:v32];
      }
    }

    v21->_ancillaryModels = [v23 copy];
    v21->_ancillarySQLModels = [v24 copy];
  }

  else
  {
    [_NSXPCStoreUtilities logMessage:@"Unable to initialize client" forComponent:?];
  }

  v33 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)dealloc
{
  [(NSXPCStoreConnectionManager *)self->_connectionManager disconnectAllConnections:?];

  self->_ancillaryModels = 0;
  self->_ancillarySQLModels = 0;

  self->_connectionManager = 0;
  [(NSXPCStoreNotificationObserver *)&self->_observer->super.isa setStore:?];

  self->_observer = 0;
  requestTerminationSem = self->_requestTerminationSem;
  if (requestTerminationSem)
  {
    dispatch_release(requestTerminationSem);
  }

  self->_remoteStoreChangedNotificationName = 0;
  self->_cache = 0;

  self->_model = 0;
  self->_metadata = 0;

  self->_core = 0;
  self->_sanityCheckToken = 0;

  self->_fileBackedFuturesDirectory = 0;
  v4.receiver = self;
  v4.super_class = NSXPCStore;
  [(NSIncrementalStore *)&v4 dealloc];
}

- (void)willRemoveFromPersistentStoreCoordinator:(id)a3
{
  if (self)
  {
    [(NSXPCStoreConnectionManager *)self->_connectionManager disconnectAllConnections:?];
  }

  [(NSXPCStoreNotificationObserver *)&self->_observer->super.isa setStore:?];
  v5.receiver = self;
  v5.super_class = NSXPCStore;
  [(NSPersistentStore *)&v5 willRemoveFromPersistentStoreCoordinator:a3];
}

- (id)sendMessage:(void *)a3 fromContext:(void *)a4 interrupts:(uint64_t *)a5 error:
{
  v93 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_69;
  }

  if (self)
  {
    v10 = a1[23];
    if (v10)
    {
      objc_setProperty_nonatomic(self, self, v10, 32);
    }
  }

  v80 = a5;
  if (!a3)
  {
    goto LABEL_12;
  }

  v11 = [*(a3[21] + 168) copy];
  if (self)
  {
    v13 = v11;
    if (v11)
    {
      objc_setProperty_nonatomic(self, v12, v11, 40);
    }
  }

  v14 = [*(a3[21] + 128) copy];
  if (!v14)
  {
LABEL_12:
    v16 = [a3 _allowAncillaryEntities];
    if (self)
    {
      goto LABEL_13;
    }

LABEL_114:
    v17 = 1;
    goto LABEL_14;
  }

  if (!self)
  {
    [a3 _allowAncillaryEntities];
    goto LABEL_114;
  }

  objc_setProperty_nonatomic(self, v15, v14, 48);
  v16 = [a3 _allowAncillaryEntities];
LABEL_13:
  v17 = 0;
  *(self + 16) = v16;
LABEL_14:
  v18 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if ((v17 & 1) == 0)
  {
    objc_setProperty_nonatomic(self, v19, v18, 56);
  }

  v20 = 0;
  p_superclass = NSCloudKitMirroringRequestManager.superclass;
  v22 = 0x1E696A000uLL;
  while (1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (a1[20])
    {
      v24 = p_superclass;
      v25 = v22;
      v26 = [[NSXPCStoreMessageContext alloc] initForMessage:self store:a1];
      [(NSXPCStoreConnectionManager *)a1[20] sendMessageWithContext:v26];
      if (v26)
      {
        v27 = v26[3];
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      if (v80)
      {
        if (v26)
        {
          v29 = v26[4];
        }

        else
        {
          v29 = 0;
        }

        *v80 = v29;
      }

      v22 = v25;
      p_superclass = v24;
      if (v28)
      {
        break;
      }
    }

    +[_NSXPCStoreUtilities logMessage:forComponent:]((p_superclass + 359), [*(v22 + 3776) stringWithFormat:@"sendMessage: failed #%d", v20]);
    v31 = v20 + 1;
    *a4 = v20 + 1;
    if (v20 == 2)
    {
      [_NSXPCStoreUtilities logMessage:@"Unable to sendMessage: to server" forComponent:?];
LABEL_28:
      if (([objc_msgSend(objc_msgSend(a1 "options")] & 1) == 0)
      {
        v32 = CFAbsoluteTimeGetCurrent();
        if (v20 < 4)
        {
          v33 = 3;
        }

        else
        {
          v33 = +[NSXPCStore _isOnExtendedTimeout]? 60 : 3;
        }

        v30 = v32 - Current;
        if (v32 - Current < v33)
        {
          sleep(v33 - v30);
        }
      }

      goto LABEL_36;
    }

    if (v20)
    {
      goto LABEL_28;
    }

LABEL_36:
    ++v20;
    if (v31 == 8)
    {
      v28 = 0;
      v34 = 1;
      goto LABEL_41;
    }
  }

  v34 = 0;
LABEL_41:
  if (+[NSXPCStore debugDefault]>= 1)
  {
    NSLog(@"Got reply pointer: %p", v28);
    NSLog(@"Got reply: %@", v28);
  }

  if (v34)
  {
    +[_NSXPCStoreUtilities logMessage:forComponent:]((p_superclass + 359), [*(v22 + 3776) stringWithFormat:@"Unable to connect to server with options %@", objc_msgSend(a1, "options")]);
    v35 = v80;
    if (v80)
    {
      v36 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A250];
      v38 = MEMORY[0x1E695DF20];
      v39 = [*(v22 + 3776) stringWithFormat:@"Unable to send to server; failed after %d attempts.", 8];
      v40 = v38;
      goto LABEL_46;
    }

LABEL_69:
    v41 = 0;
  }

  else
  {
    v42 = [v28 objectForKey:@"reply"];
    v43 = [v28 objectForKey:@"error"];
    if (NSKeyValueCoding_NullValue == v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    if (v42)
    {
      v45 = *(v42 + 24);
      v46 = *(v42 + 8) == 0;
    }

    else
    {
      v45 = 0;
      v46 = 1;
    }

    v47 = v45;
    v41 = v47;
    if (v46)
    {
      if (v44)
      {
        if (+[NSXPCStore debugDefault]>= 1)
        {
          v48 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v92 = v44;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Got success, but also an error. Ignoring the error (%@).\n", buf, 0xCu);
              }
            }

            else
            {
              v73 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v92 = v44;
                _os_log_impl(&dword_18565F000, v73, OS_LOG_TYPE_DEFAULT, "CoreData: XPC:  Got success, but also an error. Ignoring the error (%@).\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v74 = 1;
          }

          else
          {
            v74 = 8;
          }

          _NSCoreDataLog_console(v74, " Got success, but also an error. Ignoring the error (%@).", v44);
          objc_autoreleasePoolPop(v48);
        }
      }

      else if (!v47)
      {
        [(_NSXPCStoreUtilities *)(p_superclass + 359) logMessage:but no response or error"") forComponent:?];
        v35 = v80;
        if (!v80)
        {
          goto LABEL_69;
        }

        v36 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A250];
        v40 = MEMORY[0x1E695DF20];
        v39 = @"No data, cause unknown";
LABEL_46:
        v41 = 0;
        *v35 = [v36 errorWithDomain:v37 code:134060 userInfo:{objc_msgSend(v40, "dictionaryWithObject:forKey:", v39, @"Problem"}];
      }
    }

    else
    {
      if (+[NSXPCStore debugDefault]>= 1)
      {
        v50 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v51 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v92 = v44;
              _os_log_error_impl(&dword_18565F000, v51, OS_LOG_TYPE_ERROR, "CoreData: error:  Request failed: (%@).\n", buf, 0xCu);
            }
          }

          else
          {
            v52 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v92 = v44;
              _os_log_impl(&dword_18565F000, v52, OS_LOG_TYPE_DEFAULT, "CoreData: XPC:  Request failed: (%@).\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v53 = 1;
        }

        else
        {
          v53 = 8;
        }

        _NSCoreDataLog_console(v53, " Request failed: (%@).", v44);
        objc_autoreleasePoolPop(v50);
      }

      if (v44)
      {
        v54 = [v44 userInfo];
        v79 = v44;
        v55 = [v44 code];
        v56 = [v54 objectForKey:@"NSAffectedObjectsErrorKey"];
        v78 = v54;
        if (v56)
        {
          v77 = v55;
          v57 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v58 = [v56 countByEnumeratingWithState:&v85 objects:v90 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v86;
            do
            {
              v61 = 0;
              do
              {
                if (*v86 != v60)
                {
                  objc_enumerationMutation(v56);
                }

                if (a3)
                {
                  v62 = _PFRetainedObjectIDCore(a3, *(*(&v85 + 1) + 8 * v61), 0, 1);
                }

                else
                {
                  v62 = 0;
                }

                [v57 addObject:v62];

                ++v61;
              }

              while (v59 != v61);
              v63 = [v56 countByEnumeratingWithState:&v85 objects:v90 count:16];
              v59 = v63;
            }

            while (v63);
          }

          v54 = v78;
          v56 = [v78 mutableCopy];
          [v56 setObject:v57 forKey:@"NSAffectedObjectsErrorKey"];

          v55 = v77;
        }

        v64 = [v54 objectForKey:@"conflictList"];
        if (v64)
        {
          v65 = v64;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v66 = [v64 countByEnumeratingWithState:&v81 objects:v89 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v82;
            do
            {
              for (i = 0; i != v67; ++i)
              {
                if (*v82 != v68)
                {
                  objc_enumerationMutation(v65);
                }

                v70 = *(*(&v81 + 1) + 8 * i);
                v71 = objc_autoreleasePoolPush();
                [v70 _doCleanupForXPCStore:a1 context:a3];
                objc_autoreleasePoolPop(v71);
              }

              v67 = [v65 countByEnumeratingWithState:&v81 objects:v89 count:16];
            }

            while (v67);
          }

          if (!v56)
          {
            v56 = [v78 mutableCopy];
          }

          [v56 setObject:v65 forKey:@"conflictList"];
          v55 = 134050;
        }

        v72 = v79;
        if (v56)
        {
          v72 = [MEMORY[0x1E696ABC0] errorWithDomain:objc_msgSend(v79 code:"domain") userInfo:{v55, v56}];
        }

        if (v80)
        {
          *v80 = v72;
        }
      }

      else
      {
        +[_NSXPCStoreUtilities logMessage:forComponent:]((p_superclass + 359), [*(v22 + 3776) stringWithFormat:@"Send failed with no error; probably something wrong here"]);
      }
    }
  }

  v75 = *MEMORY[0x1E69E9840];
  return v41;
}

- (BOOL)load:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = NSXPCStore;
  v4 = [(NSIncrementalStore *)&v25 load:a3];
  v5 = v4;
  if (self)
  {
    if (v4)
    {
      v6 = [-[NSDictionary objectForKey:](-[NSPersistentStore options](self "options")];
      v7 = [-[NSDictionary valueForKey:](-[NSPersistentStore options](self "options")];
      if (!self->_observer && ((v7 | v6) & 1) != 0)
      {
        v8 = objc_alloc_init(NSCoreDataXPCMessage);
        v9 = v8;
        if (v8)
        {
          v8->_messageCode = 7;
        }

        v27 = 0;
        v10 = [(NSXPCStore *)self sendMessage:v8 fromContext:0 interrupts:&v26 error:&v27];

        if (v10)
        {
          v11 = MEMORY[0x1E695DFD8];
          v12 = objc_opt_class();
          v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
          v14 = [_NSXPCStoreUtilities decodeSecureArchivedData:v10 usingDelegate:self classes:v13];
          if (v14)
          {
            self->_remoteStoreChangedNotificationName = [objc_msgSend(v14 objectForKey:{@"notificationName", "copy"}];
          }

          else
          {
            v15 = objc_autoreleasePoolPush();
            _pflogInitialize(8);
            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v29 = v27;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to enable remote store notifications: Can't get notification name. %@\n", buf, 0xCu);
                }
              }

              else
              {
                v17 = _PFLogGetLogStream(8);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v29 = v27;
                  _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Failed to enable remote store notifications: Can't get notification name. %@\n", buf, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v18 = 1;
            }

            else
            {
              v18 = 8;
            }

            _NSCoreDataLog_console(v18, "Failed to enable remote store notifications: Can't get notification name. %@", v27);
            objc_autoreleasePoolPop(v15);
          }
        }

        if (self->_remoteStoreChangedNotificationName)
        {
          self->_observer = [[NSXPCStoreNotificationObserver alloc] initForObservationWithName:[(NSXPCStore *)self remoteStoreChangedNotificationName] store:self];
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v20 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v29 = v27;
                _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to enable remote store notifications: %@\n", buf, 0xCu);
              }
            }

            else
            {
              v21 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v29 = v27;
                _os_log_impl(&dword_18565F000, v21, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Failed to enable remote store notifications: %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v22 = 1;
          }

          else
          {
            v22 = 8;
          }

          _NSCoreDataLog_console(v22, "Failed to enable remote store notifications: %@", v27);
          objc_autoreleasePoolPop(v19);
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)loadMetadata:(id *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [-[NSPersistentStore _persistentStoreCoordinator](self "_persistentStoreCoordinator")];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = *v35;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (([(NSEntityDescription *)*(*(&v34 + 1) + 8 * i) _hasAttributesWithFileBackedFutures]& 1) != 0)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:
  v10 = objc_alloc_init(NSCoreDataXPCMessage);
  v11 = v10;
  if (v10)
  {
    v10->_messageCode = 1;
  }

  v33 = 0;
  v12 = [(NSXPCStore *)self sendMessage:v10 fromContext:0 interrupts:&v32 error:&v33];
  if (v12)
  {
    v31 = 0;
    v13 = [MEMORY[0x1E696AE40] propertyListWithData:v12 options:0 format:&v31 error:a3];
    v14 = v13;
    if (!v13)
    {

LABEL_42:
      result = 1;
      goto LABEL_43;
    }

    if (v9)
    {
      v15 = [v13 objectForKey:@"NSFileBackedFuturePathKey"];
      self->_fileBackedFuturesDirectory = v15;
      if (!v15)
      {
        v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF433988];
        result = 0;
        *a3 = v21;
        goto LABEL_43;
      }

      v14 = [v14 objectForKey:@"NSMetadataKey"];
    }

    v16 = [v14 objectForKey:@"NSStoreModelVersionIdentifiers"];
    if (!v16)
    {
      if (a3)
      {
        v17 = MEMORY[0x1E696ABC0];
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Server did not return model version info. (Unsupported configuration.)" forKey:@"Reason"];
        v19 = [v17 errorWithDomain:*MEMORY[0x1E696A250] code:134080 userInfo:v18];
        v12 = 0;
        *a3 = v19;
      }

      else
      {
        v12 = 0;
      }
    }

    if (![-[NSDictionary objectForKey:](-[NSPersistentStore options](self "options")] || (objc_msgSend(v16, "isEqual:", objc_msgSend(v5, "entityVersionHashesByName")) & 1) != 0)
    {
      if (self)
      {
        os_unfair_lock_lock_with_options();
        v22 = self->_sanityCheckToken;
        os_unfair_lock_unlock(&self->_stateLock);
        v23 = v22;
        v24 = [v14 objectForKey:@"NSStoreUUID"];
        if (v23)
        {
          if (([(NSString *)v23 isEqual:v24]& 1) == 0)
          {
            if (a3)
            {
              v25 = MEMORY[0x1E696ABC0];
              v26 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Server side store changed forKey:{remove and re-add this client store", @"Reason"}];
              v12 = 0;
              *a3 = [v25 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v26];
            }

            else
            {
              v12 = 0;
            }
          }
        }

        else
        {
          os_unfair_lock_lock_with_options();
          if (self->_sanityCheckToken != v24)
          {
            v27 = v24;

            self->_sanityCheckToken = v24;
          }

          os_unfair_lock_unlock(&self->_stateLock);
        }
      }

      else
      {
        [v14 objectForKey:@"NSStoreUUID"];
      }

      [(NSXPCStore *)self _setMetadata:v14 includeVersioning:0];

      if (v12)
      {
        goto LABEL_42;
      }

      goto LABEL_24;
    }

    if (a3)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Server schema is incompatible and ignore version enabled. (Unsupported configuration.)" forKey:@"Reason"];
      *a3 = [v28 errorWithDomain:*MEMORY[0x1E696A250] code:134020 userInfo:v29];
    }
  }

  else if (a3)
  {
    *a3 = v33;
  }

LABEL_24:
  +[_NSXPCStoreUtilities logMessage:forComponent:](_NSXPCStoreUtilities, [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load metadata: %@", v33]);
  result = 0;
LABEL_43:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)currentQueryGeneration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(NSPersistentStore *)self _persistentStoreCoordinator];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__NSXPCStore_currentQueryGeneration__block_invoke;
  v6[3] = &unk_1E6EC1330;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __36__NSXPCStore_currentQueryGeneration__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NSCoreDataXPCMessage);
  v3 = v2;
  if (v2)
  {
    v2->_messageCode = 9;
  }

  v22 = 0;
  v4 = [(NSXPCStore *)*(a1 + 32) sendMessage:v2 fromContext:0 interrupts:&v21 error:&v22];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v7 = [_NSXPCStoreUtilities decodeSecureArchivedData:v4 usingDelegate:v5 classes:v6];
    if (v7)
    {
      goto LABEL_25;
    }

    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    IsLogEnabled = _NSCoreDataIsLogEnabled(8);
    v10 = "Unable to decode query generation";
    if (IsLogEnabled && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to decode query generation\n", buf, 2u);
        }
      }

      else
      {
        v15 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v15, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Unable to decode query generation\n", buf, 2u);
        }
      }

      v10 = "Unable to decode query generation";
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    v12 = _NSCoreDataIsLogEnabled(8);
    v10 = "Nil result for query generation request";
    if (v12 && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v13 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: error: Nil result for query generation request\n", buf, 2u);
        }
      }

      else
      {
        v14 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil result for query generation request\n", buf, 2u);
        }
      }

      v10 = "Nil result for query generation request";
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v16 = 1;
  }

  else
  {
    v16 = 8;
  }

  _NSCoreDataLog_console(v16, v10);
  objc_autoreleasePoolPop(v8);
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to get query generation: %@", v22];
  v18 = *(a1 + 32);
  [_NSXPCStoreUtilities logMessage:v17 forComponent:?];
  v7 = 0;
LABEL_25:
  result = v7;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)_hasActiveGenerations
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(NSPersistentStore *)self _persistentStoreCoordinator];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__NSXPCStore__hasActiveGenerations__block_invoke;
  v5[3] = &unk_1E6EC1330;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __35__NSXPCStore__hasActiveGenerations__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NSCoreDataXPCMessage);
  v3 = v2;
  if (v2)
  {
    v2->_messageCode = 17;
  }

  v22 = 0;
  v4 = [(NSXPCStore *)*(a1 + 32) sendMessage:v2 fromContext:0 interrupts:&v21 error:&v22];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v7 = [_NSXPCStoreUtilities decodeSecureArchivedData:v4 usingDelegate:v5 classes:v6];
    if (v7)
    {
      goto LABEL_25;
    }

    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    IsLogEnabled = _NSCoreDataIsLogEnabled(8);
    v10 = "Unable to decode active generations result";
    if (IsLogEnabled && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to decode active generations result\n", buf, 2u);
        }
      }

      else
      {
        v15 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v15, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Unable to decode active generations result\n", buf, 2u);
        }
      }

      v10 = "Unable to decode active generations result";
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    v12 = _NSCoreDataIsLogEnabled(8);
    v10 = "Nil result for active generations request";
    if (v12 && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v13 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: error: Nil result for active generations request\n", buf, 2u);
        }
      }

      else
      {
        v14 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil result for active generations request\n", buf, 2u);
        }
      }

      v10 = "Nil result for active generations request";
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v16 = 1;
  }

  else
  {
    v16 = 8;
  }

  _NSCoreDataLog_console(v16, v10);
  objc_autoreleasePoolPop(v8);
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to check for active generations: %@", v22];
  v18 = *(a1 + 32);
  [_NSXPCStoreUtilities logMessage:v17 forComponent:?];
  v7 = 0;
LABEL_25:
  result = [v7 BOOLValue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)freeQueryGenerationWithIdentifier:(id)a3
{
  objc_initWeak(&location, self);
  v5 = [(NSPersistentStore *)self _persistentStoreCoordinator];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__NSXPCStore_freeQueryGenerationWithIdentifier___block_invoke;
  v6[3] = &unk_1E6EC1308;
  objc_copyWeak(&v7, &location);
  v6[4] = a3;
  [v5 performBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__NSXPCStore_freeQueryGenerationWithIdentifier___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v3 = Weak;
    v4 = *(a1 + 32);
    [(NSGenerationalRowCache *)Weak[18] removeRowCacheForGenerationWithIdentifier:v4];
    v5 = objc_alloc_init(NSCoreDataXPCMessage);
    v6 = v5;
    if (v5)
    {
      v5->_messageCode = 10;
    }

    v7 = [_NSQueryGenerationToken alloc];
    if (v7)
    {
      v8 = [(_NSQueryGenerationToken *)v7 initWithValue:v4 store:v3 freeValueOnDealloc:0];
    }

    else
    {
      v8 = 0;
    }

    v9 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v8];

    if (v6)
    {
      objc_setProperty_nonatomic(v6, v10, v9, 24);
    }

    v17 = 0;
    v11 = [(NSXPCStore *)v3 sendMessage:v6 fromContext:0 interrupts:&v16 error:&v17];
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
      v14 = [_NSXPCStoreUtilities decodeSecureArchivedData:v12 usingDelegate:v3 classes:v13];
      if (v14 && ([v14 BOOLValue] & 1) != 0)
      {
        goto LABEL_14;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to release query generation: %@", v17];
    }

    else
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempt to release query generation failed: %@", v17];
    }

    [_NSXPCStoreUtilities logMessage:v15 forComponent:?];
LABEL_14:
  }
}

- (id)reopenQueryGenerationWithIdentifier:(id)a3 error:(id *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v6 = [(NSPersistentStore *)self _persistentStoreCoordinator:a3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__NSXPCStore_reopenQueryGenerationWithIdentifier_error___block_invoke;
  v9[3] = &unk_1E6EC1388;
  v9[4] = a3;
  v9[5] = self;
  v9[6] = &v10;
  [v6 performBlockAndWait:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

id __56__NSXPCStore_reopenQueryGenerationWithIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NSCoreDataXPCMessage);
  v3 = v2;
  if (v2)
  {
    v2->_messageCode = 11;
  }

  v4 = [_NSQueryGenerationToken alloc];
  if (v4)
  {
    v5 = [(_NSQueryGenerationToken *)v4 initWithValue:*(a1 + 40) store:0 freeValueOnDealloc:?];
  }

  else
  {
    v5 = 0;
  }

  v6 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v5];

  if (v3)
  {
    objc_setProperty_nonatomic(v3, v7, v6, 24);
  }

  v17 = 0;
  v8 = [(NSXPCStore *)*(a1 + 40) sendMessage:v3 fromContext:0 interrupts:&v16 error:&v17];
  if (!v8 || (v9 = v8, v10 = *(a1 + 40), v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], (v12 = +[_NSXPCStoreUtilities decodeSecureArchivedData:usingDelegate:classes:](_NSXPCStoreUtilities, v9, v10, v11)) == 0))
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempt to reopen query generation failed: %@", v17];
    v14 = *(a1 + 40);
    [_NSXPCStoreUtilities logMessage:v13 forComponent:?];
    v12 = 0;
  }

  result = v12;
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (void)cacheFetchedRows:(void *)a3 forManagedObjects:(void *)a4 generation:
{
  if (a1)
  {
    v6 = [(NSGenerationalRowCache *)*(a1 + 144) rowCacheForGeneration:a4];
    [objc_msgSend(MEMORY[0x1E695DF00] "date")];
    v8 = v7;
    v9 = [a2 count];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      while (1)
      {
        v12 = [a2 objectAtIndex:v11];
        v13 = [v12 objectID];
        v14 = [[NSIncrementalStoreNode alloc] initWithObjectID:v13 fromSQLRow:v12];
        v15 = [[NSXPCRow alloc] initWithNode:v14];
        v16 = v15;
        if (v15)
        {
          v15->super._birth = v8;
        }

        v17 = [a3 objectAtIndex:v11];
        if (!v17)
        {
          goto LABEL_9;
        }

        v18 = *(v17 + 16);
        if ((v18 & 0x200) == 0)
        {
          break;
        }

        if (!v16 || atomic_fetch_add(v16 + 3, 0) >= 1)
        {
          goto LABEL_14;
        }

LABEL_13:
        atomic_fetch_add_explicit(v16 + 3, 1u, memory_order_relaxed);
LABEL_14:
        [(NSPersistentStoreCache *)v6 registerRow:v16 forObjectID:v13 options:0];

        if (v10 == ++v11)
        {
          return;
        }
      }

      *(v17 + 16) = v18 | 0x200;
LABEL_9:
      if (!v16)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }
}

- (uint64_t)decodePrefetchArray:(void *)a3 forSources:(void *)a4 context:
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        [(NSXPCStore *)a1 decodePrefetchResult:v12 forSources:a3 context:a4];
        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      result = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v9 = result;
    }

    while (result);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSPersistentStore)executeFetchRequest:(void *)a3 withContext:(void *)a4 error:
{
  v101 = a4;
  v104 = a3;
  v119 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_137;
  }

  v5 = result;
  v106 = 0;
  v99 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (+[NSXPCStore debugDefault])
  {
    v6 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v118 = a2;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Executing fetch %@\n", buf, 0xCu);
        }
      }

      else
      {
        v8 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v118 = a2;
          _os_log_impl(&dword_18565F000, v8, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Executing fetch %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v9 = 1;
    }

    else
    {
      v9 = 8;
    }

    _NSCoreDataLog_console(v9, "Executing fetch %@", a2);
    objc_autoreleasePoolPop(v6);
  }

  if ([(NSFetchRequest *)a2 fetchBatchSize]&& ![(NSFetchRequest *)a2 resultType])
  {
    v10 = [(NSFetchRequest *)a2 copy];
    [(NSFetchRequest *)v10 setResultType:1];
    [(NSFetchRequest *)v10 setFetchBatchSize:0];
    v98 = 1;
    v97 = a2;
    a2 = v10;
  }

  else
  {
    v98 = 0;
    v97 = 0;
  }

  v11 = atomic_load(_MergedGlobals_122);
  if ((v11 & 1) == 0 && [(NSFetchRequest *)a2 resultType]== 2 && ![(NSFetchRequest *)a2 allocationType]&& ![(NSFetchRequest *)a2 fetchBatchSize]&& [(NSFetchRequest *)a2 _isEditable])
  {
    v12 = [v104 _allowAncillaryEntities];
    v13 = a2 ? v12 : 1;
    if ((v13 & 1) == 0)
    {
      a2->_flags = (*&a2->_flags & 0xFFFE3FFF | 0x4000);
    }
  }

  v14 = +[NSSQLCore bufferedAllocationsOverride];
  if (v14 >= 1 && [(NSFetchRequest *)a2 resultType]== 2 && [(NSFetchRequest *)a2 _isEditable])
  {
    if (v14 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    [(NSFetchRequest *)a2 setAllocationType:v15];
  }

  v16 = [(NSFetchRequest *)a2 encodeForXPC];
  v17 = objc_alloc_init(NSCoreDataXPCMessage);
  v18 = v17;
  if (v17)
  {
    v17->_messageCode = 2;
  }

  v19 = -[_NSQueryGenerationToken _generationalComponentForStore:]([v104 _queryGenerationToken], v5);
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v16, v19, 0}];
  }

  else
  {
    v20 = [MEMORY[0x1E695DEC8] arrayWithObject:v16];
  }

  v22 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v20];
  if (v18)
  {
    objc_setProperty_nonatomic(v18, v21, v22, 24);
  }

  v103 = v5;
  v23 = [(NSXPCStore *)v5 sendMessage:v18 fromContext:v104 interrupts:&v105 error:&v106];

  if (!v23)
  {
    if (v106)
    {
      v40 = [v106 userInfo];
      v41 = [v40 objectForKey:@"exception info"];
      v42 = [v41 objectForKey:@"controlled exception"];
      if (v41)
      {
        if (([v42 BOOLValue] & 1) == 0)
        {
          v43 = MEMORY[0x1E695DF30];
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fetch threw on server (%@)", v40];
          v45 = [v43 exceptionWithName:*MEMORY[0x1E695D940] reason:v44 userInfo:v40];
          if (v45)
          {
            objc_exception_throw(v45);
          }
        }
      }
    }

    v34 = 0;
    goto LABEL_66;
  }

  if ([v104 _allowAncillaryEntities] && -[NSFetchRequest _isEditable](a2, "_isEditable"))
  {
    [(NSFetchRequest *)a2 _resolveEntityWithContext:v104];
  }

  v24 = NSSet_EmptySet;
  v25 = -[NSManagedObjectModel _allowedClassesFromTransformableAttributes]([-[NSPersistentStore model](v103 "model")]);
  if ([v24 count])
  {
    v25 = [v24 setByAddingObjectsFromSet:v25];
  }

  v26 = [+[_NSXPCStoreUtilities classesForFetchArchive]() setByAddingObjectsFromSet:v25];
  v102 = [_NSXPCStoreUtilities decodeSecureArchivedData:v23 usingDelegate:v103 classes:v26];
  if ([v102 count])
  {
    v27 = -[_NSQueryGenerationToken _generationalComponentForStore:]([v104 _queryGenerationToken], v103);
    v28 = [v102 objectAtIndex:0];
    v29 = [(NSFetchRequest *)a2 resultType];
    v30 = v29;
    if (v29 != 4)
    {
      if (v29)
      {
        v46 = 0;
        v47 = 0;
      }

      else
      {
        v46 = ![(NSFetchRequest *)a2 _disablePersistentStoreResultCaching];
        v47 = [(NSArray *)[(NSFetchRequest *)a2 propertiesToFetch] count]!= 0;
      }

      v115 = 0;
      if ([(NSFetchRequest *)a2 allocationType]== 1 || [(NSFetchRequest *)a2 allocationType]== 2)
      {
        if (v46)
        {
          v56 = &v115;
        }

        else
        {
          v56 = 0;
        }

        v100 = [_NSXPCStoreUtilities _decodeBufferResultSetData:v28 forFetchRequest:a2 options:0 store:v103 context:v104 rowCacheRows:v56 error:&v106];
      }

      else
      {
        if (v46)
        {
          v61 = &v115;
        }

        else
        {
          v61 = 0;
        }

        v100 = [_NSXPCStoreUtilities _decodeResultSetData:v28 forFetchRequest:a2 options:0 store:v103 context:v104 rowCacheRows:v61 error:&v106];
      }

      if (v115 != 0 && !v47 && ((v46 ^ 1) & 1) == 0)
      {
        [(NSXPCStore *)v103 cacheFetchedRows:v115 forManagedObjects:v100 generation:v27];
      }

      if (!v30)
      {
        if (v47)
        {
          v96 = [(_PFBatchFaultingArray *)v100 count];
          if (v96)
          {
            defaultFaultHandler = v103->_defaultFaultHandler;
            v95 = [(_PFBatchFaultingArray *)v100 _objectsPointer];
            v62 = *v95;
            v63 = [MEMORY[0x1E695DF70] array];
            v64 = [MEMORY[0x1E695DFA8] set];
            v65 = [MEMORY[0x1E695DF70] array];
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v66 = [v62 mapping];
            v67 = [v66 countByEnumeratingWithState:&v111 objects:buf count:16];
            if (v67)
            {
              v68 = *v112;
              do
              {
                for (i = 0; i != v67; ++i)
                {
                  if (*v112 != v68)
                  {
                    objc_enumerationMutation(v66);
                  }

                  v70 = [(NSDictionary *)[(NSEntityDescription *)[(NSFetchRequest *)a2 entity] propertiesByName] objectForKey:*(*(&v111 + 1) + 8 * i)];
                  v71 = v70;
                  if (v70 && ([v70 _entitysReferenceID] & 0x8000000000000000) == 0)
                  {
                    [v63 addObject:v71];
                    [v64 addObject:v71];
                  }
                }

                v67 = [v66 countByEnumeratingWithState:&v111 objects:buf count:16];
              }

              while (v67);
            }

            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v72 = [(NSFetchRequest *)a2 propertiesToFetch];
            v73 = [(NSArray *)v72 countByEnumeratingWithState:&v107 objects:v116 count:16];
            v74 = v95;
            if (v73)
            {
              v75 = *v108;
              do
              {
                for (j = 0; j != v73; ++j)
                {
                  if (*v108 != v75)
                  {
                    objc_enumerationMutation(v72);
                  }

                  v77 = *(*(&v107 + 1) + 8 * j);
                  if ([v77 isTransient])
                  {
                    [v65 addObject:v77];
                    if (([v77 _entitysReferenceID] & 0x8000000000000000) == 0)
                    {
                      [v64 addObject:{objc_msgSend(v77, "name")}];
                    }
                  }
                }

                v73 = [(NSArray *)v72 countByEnumeratingWithState:&v107 objects:v116 count:16];
              }

              while (v73);
            }

            v78 = v96;
            v79 = defaultFaultHandler;
            do
            {
              v80 = *v74;
              v81 = [*v74 values];
              v82 = [NSManagedObjectContext _retainedObjectWithID:v104 optionalHandler:*v81 withInlineStorage:v79];
              _PFFaultHandlerFulfillPartialFault(v79, v82, v104, v81, v63, v64, v65);
              *v74 = v82;

              ++v74;
              --v78;
            }

            while (v78);
          }
        }

        else
        {
          v89 = v103->_defaultFaultHandler;
          v90 = [v115 count];
          if (v90)
          {
            for (k = 0; k != v90; ++k)
            {
              v92 = [(_PFBatchFaultingArray *)v100 objectAtIndex:k];
              _PFFaultHandlerFulfillFault(v89, v92, v104, [v115 objectAtIndex:k], 0);
            }
          }
        }
      }

      if ([v102 count] >= 2)
      {
        -[NSXPCStore decodePrefetchArray:forSources:context:](v103, [v102 objectAtIndex:1], v100, v104);
      }

      goto LABEL_52;
    }

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v102 = [_NSXPCStoreUtilities decodeSecureArchivedData:v28 usingDelegate:v103 classes:v33];
  }

  v100 = v102;
LABEL_52:
  v34 = v100;
  if (v98)
  {
    v35 = [(_PFBatchFaultingArray *)v100 count];
    v36 = MEMORY[0x1EEE9AC00](v35);
    v39 = &v93 - v38;
    if (v36 >= 0x201)
    {
      v39 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v93 - v38, 8 * v37);
    }

    [(_PFBatchFaultingArray *)v34 getObjects:v39 range:0, v35];
    v48 = [[_PFArray alloc] initWithObjects:v39 count:v35 andFlags:27];
    if (v35 >= 0x201)
    {
      NSZoneFree(0, v39);
    }

    v49 = [_PFBatchFaultingArray alloc];
    v34 = [(_PFBatchFaultingArray *)v49 initWithPFArray:v48 andRequest:v97 andContext:v104];
  }

LABEL_66:
  if (+[NSXPCStore debugDefault])
  {
    v50 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    IsLogEnabled = _NSCoreDataIsLogEnabled(8);
    if (_pflogging_enable_oslog > 0)
    {
      v52 = IsLogEnabled;
    }

    else
    {
      v52 = 0;
    }

    if (v34)
    {
      if (v52)
      {
        if (_pflogging_catastrophic_mode)
        {
          v53 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = [(_PFBatchFaultingArray *)v34 count];
            *buf = 134217984;
            v118 = v54;
            _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch retrieved %lu results from server\n", buf, 0xCu);
          }
        }

        else
        {
          v57 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = [(_PFBatchFaultingArray *)v34 count];
            *buf = 134217984;
            v118 = v58;
            _os_log_impl(&dword_18565F000, v57, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fetch retrieved %lu results from server\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v59 = [(_PFBatchFaultingArray *)v34 count];
        v60 = 1;
      }

      else
      {
        v59 = [(_PFBatchFaultingArray *)v34 count];
        v60 = 8;
      }

      _NSCoreDataLog_console(v60, "Fetch retrieved %lu results from server", v59);
      objc_autoreleasePoolPop(v50);
    }

    else
    {
      if (v52)
      {
        if (_pflogging_catastrophic_mode)
        {
          v55 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v118 = v106;
            _os_log_error_impl(&dword_18565F000, v55, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch retrieved null, error %@\n", buf, 0xCu);
          }
        }

        else
        {
          v83 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v118 = v106;
            _os_log_impl(&dword_18565F000, v83, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fetch retrieved null, error %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v84 = 1;
      }

      else
      {
        v84 = 8;
      }

      _NSCoreDataLog_console(v84, "Fetch retrieved null, error %@", v106);
      objc_autoreleasePoolPop(v50);
    }
  }

  v85 = v106;
  [v99 drain];
  v86 = v106;
  v87 = 0;

  if (v101 && v106)
  {
    *v101 = v106;
  }

  result = v34;
LABEL_137:
  v88 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)a3 generation:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:a4];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a3);
        }

        [(NSPersistentStoreCache *)v5 incrementRefCountForObjectID:?];
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)a3 generation:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:a4];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a3);
        }

        [(NSPersistentStoreCache *)v5 decrementRefCountForObjectID:?];
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_commitChangesForRequestContext:(uint64_t)a1
{
  v43 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2[5];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSGenerationalRowCache *)*(a1 + 144) rowCacheForGeneration:?];
  v30 = a2;
  v6 = -[NSGenerationalRowCache rowCacheForGeneration:](*(a1 + 144), [objc_msgSend(a2 "managedObjectContext")]);
  if ([v4 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v38;
      v11 = v5 == v6 || v6 == 0;
      v12 = 0x1EA8C5000uLL;
      v31 = *v38;
      do
      {
        v13 = 0;
        v32 = v8;
        do
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v14 = *(*(&v37 + 1) + 8 * v13);
          if (v11)
          {
            v15 = [(NSPersistentStoreCache *)v5 rowForObjectID:*&NSSQLDistantPastTimeInterval afterTimestamp:?];
            v16 = [v4 objectForKey:v14];
            v17 = v16;
            if (v15)
            {
              v18 = v11;
              v19 = v4;
              if (v16)
              {
                v20 = *(v16 + *(v12 + 784));
              }

              else
              {
                v20 = 0;
              }

              v21 = v12;
              v22 = [v20 version];
              if (v22 == [*(v15 + *(v21 + 784)) version])
              {
                [(NSPersistentCacheRow *)v17 updateMissingRelationshipCachesFromOriginal:v15];
              }

              [(NSPersistentStoreCache *)v5 registerRow:v17 forObjectID:v14 options:0];
              v12 = v21;
              v4 = v19;
              v11 = v18;
              v9 = v31;
              v8 = v32;
            }

            else
            {
              [(NSPersistentStoreCache *)v5 registerRow:v16 forObjectID:v14 options:0];
            }
          }

          else
          {
            [(NSPersistentStoreCache *)v5 forgetRowForObjectID:?];
          }

          ++v13;
        }

        while (v8 != v13);
        v23 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
        v8 = v23;
      }

      while (v23);
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  if (v30)
  {
    v24 = [v30[2] deletedObjects];
  }

  else
  {
    v24 = 0;
  }

  result = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (result)
  {
    v26 = result;
    v27 = *v34;
    do
    {
      v28 = 0;
      do
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v24);
        }

        -[NSPersistentStoreCache forgetRowForObjectID:](v5, [*(*(&v33 + 1) + 8 * v28++) objectID]);
      }

      while (v26 != v28);
      result = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
      v26 = result;
    }

    while (result);
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_executeSaveRequestForContext:(uint64_t *)a3 error:
{
  v6 = [a2 managedObjectContext];
  v7 = objc_alloc_init(NSCoreDataXPCMessage);
  v8 = v7;
  if (v7)
  {
    v7->_messageCode = 3;
    v9 = [(NSXPCSaveRequestContext *)a2 newEncodedSaveRequest];
    objc_setProperty_nonatomic(v8, v10, v9, 24);
  }

  else
  {
    v9 = [(NSXPCSaveRequestContext *)a2 newEncodedSaveRequest];
  }

  v15 = 0;
  v11 = [(NSXPCStore *)a1 sendMessage:v8 fromContext:v6 interrupts:&v15 error:a3];
  v12 = v11;
  if (a2)
  {
    a2[6] = v15;
  }

  if (v11)
  {
    v13 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v12 = [_NSXPCStoreUtilities decodeSecureArchivedData:v12 usingDelegate:a1 classes:v13];
    if ([objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{1), "isEqual:", v12}])
    {
      [(NSXPCStore *)a1 _commitChangesForRequestContext:a2];
    }
  }

  return v12;
}

- (id)executeRequest:(id)a3 withContext:(id)a4 error:(id *)a5
{
  v173 = *MEMORY[0x1E69E9840];
  v9 = [a3 requestType];
  if (atomic_fetch_add_explicit(&self->_outstandingRequests, 1u, memory_order_relaxed) > -2)
  {
    if (v9 > 5)
    {
      if (v9 <= 7)
      {
        if (v9 != 6)
        {
          if (self)
          {
            [objc_msgSend(a3 "fetchRequest")];
            v11 = [a3 encodeForXPC];
            v12 = objc_alloc_init(NSCoreDataXPCMessage);
            v14 = v12;
            if (v12)
            {
              v12->_messageCode = 12;
              objc_setProperty_nonatomic(v12, v13, v11, 24);
            }

            *buf = 0;
            v15 = [(NSXPCStore *)self sendMessage:v14 fromContext:a4 interrupts:&v163 error:buf];

            if (v15)
            {
              v16 = MEMORY[0x1E695DFD8];
              v17 = objc_opt_class();
              v18 = objc_opt_class();
              v19 = objc_opt_class();
              v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
              v21 = [_NSXPCStoreUtilities decodeSecureArchivedData:v15 usingDelegate:self classes:v20];
              v22 = v21;
              if (a5 && !v21)
              {
                *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF433A28];
              }

              v23 = -[NSBatchDeleteResult initWithResultType:andObject:]([NSBatchDeleteResult alloc], "initWithResultType:andObject:", [a3 resultType], v22);
            }

            else
            {
              v23 = 0;
              if (a5)
              {
                *a5 = *buf;
              }
            }

            goto LABEL_158;
          }

LABEL_76:
          v10 = 0;
          goto LABEL_160;
        }

        if (!self)
        {
          goto LABEL_76;
        }

        *&v163 = 0;
        [a3 _resolveEntityWithContext:a4];
        v55 = [a3 encodeForXPC];
        if (!v55)
        {
          v82 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF4339D8];
          if (v82)
          {
            goto LABEL_124;
          }

          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
            v161 = 1024;
            LODWORD(v162) = 1486;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v84 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_129;
          }

          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
          v161 = 1024;
          LODWORD(v162) = 1486;
          goto LABEL_226;
        }

        v56 = objc_alloc_init(NSCoreDataXPCMessage);
        v58 = v56;
        if (v56)
        {
          v56->_messageCode = 15;
          objc_setProperty_nonatomic(v56, v57, v55, 24);
        }

        v59 = [(NSXPCStore *)self sendMessage:v58 fromContext:a4 interrupts:v170 error:&v163];
        if (v59)
        {
          v60 = MEMORY[0x1E695DFD8];
          v61 = objc_opt_class();
          v62 = objc_opt_class();
          v63 = objc_opt_class();
          v64 = [v60 setWithObjects:{v61, v62, v63, objc_opt_class(), 0}];
          v65 = [_NSXPCStoreUtilities decodeSecureArchivedData:v59 usingDelegate:self classes:v64];
          if (v65)
          {
            v23 = -[NSBatchUpdateResult initWithResultType:andObject:]([NSBatchUpdateResult alloc], "initWithResultType:andObject:", [a3 resultType], v65);
            goto LABEL_158;
          }

          v93 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF433A00];
          *&v163 = v93;
          if (v93)
          {
            goto LABEL_141;
          }

          v106 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
            v161 = 1024;
            LODWORD(v162) = 1505;
            _os_log_error_impl(&dword_18565F000, v106, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v95 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_157;
          }

          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
          v161 = 1024;
          LODWORD(v162) = 1505;
        }

        else
        {
          v93 = v163;
          if (v163)
          {
LABEL_141:
            if (a5)
            {
              v23 = 0;
              *a5 = v93;
              goto LABEL_158;
            }

LABEL_157:
            v23 = 0;
            goto LABEL_158;
          }

          v94 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
            v161 = 1024;
            LODWORD(v162) = 1510;
            _os_log_error_impl(&dword_18565F000, v94, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v95 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_157;
          }

          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
          v161 = 1024;
          LODWORD(v162) = 1510;
        }

        _os_log_fault_impl(&dword_18565F000, v95, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        goto LABEL_157;
      }

      if (v9 == 8)
      {
        goto LABEL_34;
      }

      if (v9 == 10)
      {
        if (!a5)
        {
          goto LABEL_76;
        }

        v35 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134091 userInfo:&unk_1EF433AA0];
LABEL_49:
        v10 = 0;
        *a5 = v35;
        goto LABEL_160;
      }

LABEL_47:
      if (!a5)
      {
        goto LABEL_76;
      }

      v53 = MEMORY[0x1E696ABC0];
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid request type" forKey:@"Reason"];
      v35 = [v53 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v54];
      goto LABEL_49;
    }

    if (v9 == 1)
    {
      v52 = [(NSXPCStore *)&self->super.super executeFetchRequest:a3 withContext:a4 error:a5];
LABEL_159:
      v10 = v52;
      goto LABEL_160;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_47;
      }

      if (!self)
      {
        goto LABEL_76;
      }

      *&v163 = 0;
      [(NSBatchInsertRequest *)a3 _resolveEntityWithSQLCore:?];
      v24 = [a3 encodeForXPC];
      v25 = objc_alloc_init(NSCoreDataXPCMessage);
      v27 = v25;
      if (v25)
      {
        v25->_messageCode = 16;
        objc_setProperty_nonatomic(v25, v26, v24, 24);
      }

      v28 = [(NSXPCStore *)self sendMessage:v27 fromContext:a4 interrupts:v170 error:&v163];
      if (v28)
      {
        v29 = MEMORY[0x1E695DFD8];
        v30 = objc_opt_class();
        v31 = objc_opt_class();
        v32 = objc_opt_class();
        v33 = [v29 setWithObjects:{v30, v31, v32, objc_opt_class(), 0}];
        v34 = [_NSXPCStoreUtilities decodeSecureArchivedData:v28 usingDelegate:self classes:v33];
        if (v34)
        {
          v23 = -[NSBatchInsertResult initWithResultType:andObject:]([NSBatchInsertResult alloc], "initWithResultType:andObject:", [a3 resultType], v34);
LABEL_158:
          v52 = v23;
          goto LABEL_159;
        }

        v85 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF4339B0];
        *&v163 = v85;
        if (v85)
        {
          goto LABEL_113;
        }

        v105 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
          v161 = 1024;
          LODWORD(v162) = 1468;
          _os_log_error_impl(&dword_18565F000, v105, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v87 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_153;
        }

        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
        v161 = 1024;
        LODWORD(v162) = 1468;
      }

      else
      {
        v85 = v163;
        if (v163)
        {
LABEL_113:
          if (a5)
          {
            v23 = 0;
            *a5 = v85;
            goto LABEL_158;
          }

LABEL_153:
          v23 = 0;
          goto LABEL_158;
        }

        v86 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
          v161 = 1024;
          LODWORD(v162) = 1473;
          _os_log_error_impl(&dword_18565F000, v86, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v87 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_153;
        }

        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
        v161 = 1024;
        LODWORD(v162) = 1473;
      }

      _os_log_fault_impl(&dword_18565F000, v87, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      goto LABEL_153;
    }

    if (!self)
    {
      goto LABEL_129;
    }

    v66 = 0;
    *v170 = 0;
    v67 = atomic_load(&self->super.super._isMetadataDirty);
    if (v67)
    {
      v66 = [(NSXPCStore *)self metadata];
    }

    v68 = [[NSXPCSaveRequestContext alloc] initForStore:self request:a3 metadata:v66 forceInsertsToUpdates:0 context:a4];
    v69 = [(NSXPCStore *)self _executeSaveRequestForContext:v68 error:v170];
    v10 = v69;
    if (!v69)
    {
      goto LABEL_147;
    }

    if (([(NSPersistentStore *)v69 BOOLValue]& 1) != 0)
    {
LABEL_149:

      goto LABEL_160;
    }

    if (v68)
    {
      v70 = v68[6];
      if (!v70)
      {
        v104 = 0;
        goto LABEL_144;
      }

      if ([objc_msgSend(a3 "insertedObjects")])
      {
        v71 = [*v170 domain];
        v155 = *MEMORY[0x1E696A250];
        if ([*MEMORY[0x1E696A250] isEqual:v71])
        {
          if ([*v170 code] == 1555)
          {
            if (+[NSXPCStore debugDefault])
            {
              v72 = objc_autoreleasePoolPush();
              if (_NSCoreDataIsOSLogEnabled(8))
              {
                if (_pflogging_catastrophic_mode)
                {
                  log = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to resend what looks like it may be a reinsert\n", buf, 2u);
                  }
                }

                else
                {
                  logb = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_18565F000, logb, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempting to resend what looks like it may be a reinsert\n", buf, 2u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v140 = 1;
              }

              else
              {
                v140 = 8;
              }

              _NSCoreDataLog_console(v140, "Attempting to resend what looks like it may be a reinsert");
              objc_autoreleasePoolPop(v72);
            }

            *buf = 0;
            v141 = [[NSXPCSaveRequestContext alloc] initForStore:self request:a3 metadata:v66 forceInsertsToUpdates:1 context:a4];
            v142 = [(NSXPCStore *)self _executeSaveRequestForContext:v141 error:buf];
            v10 = v142;
            if (!v142)
            {
              v104 = 0;
              LOBYTE(v70) = 0;
              goto LABEL_145;
            }

            if (([(NSPersistentStore *)v142 BOOLValue]& 1) != 0)
            {
              v104 = 0;
LABEL_243:
              LOBYTE(v70) = 1;
              goto LABEL_145;
            }

            if (+[NSXPCStore debugDefault])
            {
              v143 = objc_autoreleasePoolPush();
              if (_NSCoreDataIsOSLogEnabled(8))
              {
                if (_pflogging_catastrophic_mode)
                {
                  v144 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(v163) = 0;
                    _os_log_error_impl(&dword_18565F000, v144, OS_LOG_TYPE_ERROR, "CoreData: error: Reinsert hit optimistic locking error, will discard and let the next save resolve it.\n", &v163, 2u);
                  }
                }

                else
                {
                  v145 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v163) = 0;
                    _os_log_impl(&dword_18565F000, v145, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Reinsert hit optimistic locking error, will discard and let the next save resolve it.\n", &v163, 2u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v146 = 1;
              }

              else
              {
                v146 = 8;
              }

              _NSCoreDataLog_console(v146, "Reinsert hit optimistic locking error, will discard and let the next save resolve it.");
              objc_autoreleasePoolPop(v143);
            }

            if ([v155 isEqual:{objc_msgSend(*buf, "domain")}] && objc_msgSend(*buf, "code") == 134050)
            {
              [(NSXPCStore *)self _commitChangesForRequestContext:v141];
              v104 = 1;
              v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
              goto LABEL_243;
            }

            LOBYTE(v70) = 0;
            v10 = 0;
            if (a5)
            {
              *a5 = *v170;
            }

            v104 = 1;
LABEL_145:
            if ((v104 & 1) == 0 && (v70 & 1) == 0)
            {
LABEL_147:
              v10 = 0;
              if (a5)
              {
                *a5 = *v170;
              }

              goto LABEL_149;
            }

            goto LABEL_149;
          }
        }
      }

      if ([*v170 code] == 134050)
      {
        v98 = [*v170 domain];
        if ([v98 isEqualToString:*MEMORY[0x1E696A250]])
        {
          v99 = [objc_msgSend(*v170 "userInfo")];
          v100 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:?];
          v165 = 0u;
          v166 = 0u;
          v163 = 0u;
          v164 = 0u;
          v101 = [v99 countByEnumeratingWithState:&v163 objects:buf count:16];
          if (v101)
          {
            v102 = *v164;
            do
            {
              for (i = 0; i != v101; ++i)
              {
                if (*v164 != v102)
                {
                  objc_enumerationMutation(v99);
                }

                -[NSPersistentStoreCache forgetRowForObjectID:](v100, [objc_msgSend(*(*(&v163 + 1) + 8 * i) "sourceObject")]);
              }

              v101 = [v99 countByEnumeratingWithState:&v163 objects:buf count:16];
            }

            while (v101);
          }
        }
      }
    }

    v104 = 0;
    LOBYTE(v70) = 0;
LABEL_144:
    v10 = 0;
    goto LABEL_145;
  }

  atomic_fetch_add_explicit(&self->_outstandingRequests, 0xFFFFFFFF, memory_order_relaxed);
  if (v9 != 8)
  {
    if (v9 == 1)
    {
      v10 = NSArray_EmptyArray;
      goto LABEL_162;
    }

    goto LABEL_26;
  }

  if ([a3 isDelete])
  {
LABEL_26:
    v10 = 0;
    if (a5)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134098 userInfo:0];
    }

    goto LABEL_162;
  }

  v36 = [NSPersistentHistoryResult alloc];
  v37 = [a3 resultType];
  [(NSPersistentHistoryResult *)v36 initWithResultType:v37 andResult:MEMORY[0x1E695E0F0]];
LABEL_34:
  if (!self)
  {
LABEL_129:
    v10 = 0;
    goto LABEL_160;
  }

  v157 = 0;
  if (![(NSDictionary *)[(NSPersistentStore *)self options] valueForKey:@"NSPersistentHistoryTrackingKey"])
  {
    v73 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v74 = _pflogging_catastrophic_mode;
      v75 = _PFLogGetLogStream(1);
      v76 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
      if (v74)
      {
        if (v76)
        {
          goto LABEL_227;
        }
      }

      else if (v76)
      {
LABEL_227:
        *buf = 138412546;
        *&buf[4] = [(NSPersistentStore *)self identifier];
        v161 = 2112;
        v162 = [(NSPersistentStore *)self URL];
        _os_log_error_impl(&dword_18565F000, v75, OS_LOG_TYPE_ERROR, "CoreData: error: History Change Request failed as no history tracking option detected on store %@ at %@\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "History Change Request failed as no history tracking option detected on store %@ at %@", [(NSPersistentStore *)self identifier], [(NSPersistentStore *)self URL]);
    objc_autoreleasePoolPop(v73);
    v82 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134091 userInfo:&unk_1EF433A50];
    v157 = v82;
    if (v82)
    {
      goto LABEL_124;
    }

    v97 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
      v161 = 1024;
      LODWORD(v162) = 1557;
      _os_log_error_impl(&dword_18565F000, v97, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v84 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_129;
    }

    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
    v161 = 1024;
    LODWORD(v162) = 1557;
LABEL_226:
    _os_log_fault_impl(&dword_18565F000, v84, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_129;
  }

  if ([a3 token] && !objc_msgSend(objc_msgSend(objc_msgSend(a3, "token"), "storeTokens"), "objectForKey:", -[NSPersistentStore identifier](self, "identifier")))
  {
    v88 = MEMORY[0x1E696ABC0];
    *v170 = @"Reason";
    v89 = MEMORY[0x1E696AEC0];
    v90 = [a3 token];
    v167 = [(NSPersistentStore *)self identifier];
    *&v163 = [v89 stringWithFormat:@"Unable to find stores referenced in History Token (%@) - %@", v90, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v167, 1)];
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:v170 count:1];
    v82 = [v88 errorWithDomain:*MEMORY[0x1E696A250] code:134501 userInfo:v91];
    v157 = v82;
    if (!v82)
    {
      v92 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
        v161 = 1024;
        LODWORD(v162) = 1564;
        _os_log_error_impl(&dword_18565F000, v92, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v84 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_129;
      }

      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/NSXPCStore.m";
      v161 = 1024;
      LODWORD(v162) = 1564;
      goto LABEL_226;
    }

LABEL_124:
    if (a5)
    {
      v10 = 0;
      *a5 = v82;
      goto LABEL_160;
    }

    goto LABEL_129;
  }

  if ([a3 isDelete])
  {
    v38 = [a3 encodeForXPC];
    v39 = objc_alloc_init(NSCoreDataXPCMessage);
    v41 = v39;
    if (v39)
    {
      v39->_messageCode = 13;
      objc_setProperty_nonatomic(v39, v40, v38, 24);
    }

    v42 = [(NSXPCStore *)self sendMessage:v41 fromContext:a4 interrupts:buf error:&v157];
    if (v42)
    {
      v154 = MEMORY[0x1E695DFD8];
      logc = objc_opt_class();
      v149 = objc_opt_class();
      v148 = objc_opt_class();
      v147 = objc_opt_class();
      v43 = objc_opt_class();
      v44 = objc_opt_class();
      v45 = objc_opt_class();
      v46 = objc_opt_class();
      v47 = objc_opt_class();
      v48 = [v154 setWithObjects:{logc, v149, v148, v147, v43, v44, v45, v46, v47, objc_opt_class(), 0}];
      v49 = [_NSXPCStoreUtilities decodeSecureArchivedData:v42 usingDelegate:self classes:v48];
      v50 = v49;
      if (a5 && !v49)
      {
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF433A78];
      }

      v51 = -[NSPersistentHistoryResult initWithResultType:andResult:]([NSPersistentHistoryResult alloc], "initWithResultType:andResult:", [a3 resultType], v50);
    }

    else
    {
      v51 = 0;
      if (a5)
      {
        *a5 = v157;
      }
    }

    v52 = v51;
    goto LABEL_159;
  }

  v156 = a4;
  if (!a4)
  {
    v156 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    [(NSManagedObjectContext *)v156 setPersistentStoreCoordinator:[(NSPersistentStore *)self persistentStoreCoordinator]];
  }

  [(NSManagedObjectContext *)v156 _setAllowAncillaryEntities:1];
  if ([a3 token])
  {
    v77 = [(NSPersistentHistoryChangeRequest *)a3 fetchRequestDescribingTokenCheckForStore:?];
    if (v77)
    {
      v78 = [(NSXPCStore *)&self->super.super executeFetchRequest:v77 withContext:v156 error:&v157];
      if (-[NSPersistentStore count](v78, "count") && ([-[NSPersistentStore firstObject](v78 "firstObject")] & 1) == 0)
      {
        v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Persistent History Token is expired for store at %@", -[NSURL path](-[NSPersistentStore URL](self, "URL"), "path")];
        v80 = MEMORY[0x1E696ABC0];
        *v170 = v79;
        v167 = @"message";
        v168 = @"NSStoreUUID";
        v171 = [(NSPersistentStore *)self identifier];
        v169 = *MEMORY[0x1E696A368];
        v172 = [(NSURL *)[(NSPersistentStore *)self URL] path];
        v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v170 forKeys:&v167 count:3];
        v157 = [v80 errorWithDomain:*MEMORY[0x1E696A250] code:134301 userInfo:v81];
      }

      if (v157)
      {
        if (a5)
        {
          *a5 = v157;
        }

        if (a4)
        {
LABEL_88:
          [(NSManagedObjectContext *)v156 _setAllowAncillaryEntities:0];
          goto LABEL_129;
        }

LABEL_163:

        goto LABEL_129;
      }
    }
  }

  else if ([objc_msgSend(a3 "fetchRequest")])
  {
    v96 = -[_NSPersistentHistoryTransactionPredicateParser initWithPredicate:]([_NSPersistentHistoryTransactionPredicateParser alloc], "initWithPredicate:", [objc_msgSend(a3 "fetchRequest")]);
    *buf = 0;
    [(_NSPersistentHistoryTransactionPredicateParser *)v96 parse:buf];
    if (*buf)
    {
      if (a5)
      {
        *a5 = *buf;
      }

      goto LABEL_129;
    }

    v109 = [-[_NSPersistentHistoryTransactionPredicateParser storeTokens](v96 "storeTokens")];
    if (v109)
    {
      v110 = -[NSFetchRequest initWithEntityName:]([NSFetchRequest alloc], "initWithEntityName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", +[_PFPersistentHistoryModel ancillaryModelNamespace](_PFPersistentHistoryModel, "ancillaryModelNamespace"), @"TRANSACTION"]);
      [(NSFetchRequest *)v110 setIncludesSubentities:0];
      -[NSFetchRequest setPredicate:](v110, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"_pk = %@", v109]);
      [(NSFetchRequest *)v110 setResultType:4];
      v111 = [(NSXPCStore *)&self->super.super executeFetchRequest:v110 withContext:v156 error:&v157];

      if ([(NSPersistentStore *)v111 count])
      {
        if (([-[NSPersistentStore firstObject](v111 "firstObject")] & 1) == 0)
        {
          v112 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Persistent History Token is expired for store at %@", -[NSURL path](-[NSPersistentStore URL](self, "URL"), "path")];
          v113 = MEMORY[0x1E696ABC0];
          *v170 = v112;
          v167 = @"message";
          v168 = @"NSStoreUUID";
          v171 = [(NSPersistentStore *)self identifier];
          v169 = *MEMORY[0x1E696A368];
          v172 = [(NSURL *)[(NSPersistentStore *)self URL] path];
          v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v170 forKeys:&v167 count:3];
          v115 = [v113 errorWithDomain:*MEMORY[0x1E696A250] code:134301 userInfo:v114];
          v157 = v115;
          if (v115)
          {
            if (a5)
            {
              *a5 = v115;
            }

            if (a4)
            {
              goto LABEL_88;
            }

            goto LABEL_163;
          }
        }
      }
    }
  }

  v116 = [a3 resultType] == 2 || objc_msgSend(a3, "resultType") == 6 || objc_msgSend(a3, "resultType") == 0;
  loga = [(NSPersistentHistoryChangeRequest *)a3 fetchRequestDescribingChangeRequestForStore:?];
  if (v116)
  {
    v117 = 4;
  }

  else
  {
    v117 = 2 * ([a3 fetchBatchSize] == 0);
  }

  [(NSFetchRequest *)loga setResultType:v117];
  v118 = [(NSXPCStore *)&self->super.super executeFetchRequest:v156 withContext:&v157 error:?];
  if ([a3 resultType] == 5 && (objc_msgSend(objc_msgSend(a3, "entityNameToFetch"), "isEqualToString:", @"CHANGE") & 1) == 0 && !objc_msgSend(a3, "fetchBatchSize"))
  {
    v135 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSPersistentStore count](v118, "count")}];
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v136 = [(NSPersistentStore *)v118 countByEnumeratingWithState:&v163 objects:buf count:16];
    if (v136)
    {
      v137 = *v164;
      do
      {
        for (j = 0; j != v136; ++j)
        {
          if (*v164 != v137)
          {
            objc_enumerationMutation(v118);
          }

          [v135 addObject:{objc_msgSend(*(*(&v163 + 1) + 8 * j), "objectForKey:", @"self"}];
        }

        v136 = [(NSPersistentStore *)v118 countByEnumeratingWithState:&v163 objects:buf count:16];
      }

      while (v136);
    }

    if ([v135 count])
    {
      v131 = [[NSPersistentHistoryChangeRequest alloc] initWithTransactionIDs:v135];
      v132 = [(NSPersistentHistoryChangeRequest *)v131 fetchRequestDescribingChangeRequestForStore:?];
      [(NSFetchRequest *)v132 setResultType:2];
      v139 = [(NSXPCStore *)&self->super.super executeFetchRequest:v132 withContext:v156 error:&v157];
      v125 = 0;
      if (!v157 && v139)
      {
        v158 = v118;
        v159 = v139;
        v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v158 count:2];
      }

      goto LABEL_229;
    }

LABEL_224:
    v125 = v118;
    goto LABEL_230;
  }

  if (([a3 resultType] == 1 || objc_msgSend(a3, "resultType") == 4) && objc_msgSend(objc_msgSend(a3, "entityNameToFetch"), "isEqualToString:", @"TRANSACTION"))
  {
    v119 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSPersistentStore count](v118, "count")}];
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v120 = [(NSPersistentStore *)v118 countByEnumeratingWithState:&v163 objects:buf count:16];
    if (v120)
    {
      v121 = *v164;
      do
      {
        for (k = 0; k != v120; ++k)
        {
          if (*v164 != v121)
          {
            objc_enumerationMutation(v118);
          }

          [v119 addObject:{objc_msgSend(*(*(&v163 + 1) + 8 * k), "objectForKey:", @"self"}];
        }

        v120 = [(NSPersistentStore *)v118 countByEnumeratingWithState:&v163 objects:buf count:16];
      }

      while (v120);
    }

    if ([v119 count])
    {
      v123 = [[NSPersistentHistoryChangeRequest alloc] initWithTransactionIDs:v119];
      v124 = [(NSPersistentHistoryChangeRequest *)v123 fetchRequestDescribingChangeRequestForStore:?];
      [(NSFetchRequest *)v124 setResultType:2];
      v125 = [(NSXPCStore *)&self->super.super executeFetchRequest:v124 withContext:v156 error:&v157];
      v126 = v157;

      if (v126)
      {
        v125 = 0;
      }

      goto LABEL_230;
    }

    goto LABEL_211;
  }

  if ([a3 resultType] != 3 && objc_msgSend(a3, "resultType") != 5 || !objc_msgSend(objc_msgSend(a3, "entityNameToFetch"), "isEqualToString:", @"CHANGE"))
  {
    goto LABEL_224;
  }

  v127 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSPersistentStore count](v118, "count")}];
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v128 = [(NSPersistentStore *)v118 countByEnumeratingWithState:&v163 objects:buf count:16];
  if (v128)
  {
    v129 = *v164;
    do
    {
      for (m = 0; m != v128; ++m)
      {
        if (*v164 != v129)
        {
          objc_enumerationMutation(v118);
        }

        [v127 addObject:{objc_msgSend(*(*(&v163 + 1) + 8 * m), "objectForKey:", @"TRANSACTIONID"}];
      }

      v128 = [(NSPersistentStore *)v118 countByEnumeratingWithState:&v163 objects:buf count:16];
    }

    while (v128);
  }

  if ([v127 count])
  {
    v131 = [[NSPersistentHistoryChangeRequest alloc] initWithTransactionIDs:v127];
    [(NSPersistentHistoryChangeRequest *)v131 setResultType:3];
    v132 = [(NSPersistentHistoryChangeRequest *)v131 fetchRequestDescribingChangeRequestForStore:?];
    [(NSFetchRequest *)v132 setResultType:2];
    v133 = [(NSXPCStore *)&self->super.super executeFetchRequest:v132 withContext:v156 error:&v157];
    v125 = 0;
    if (!v157)
    {
      v134 = v133;
      if (v133)
      {
        if ([a3 resultType] == 5)
        {
          v158 = v134;
          v159 = v118;
          v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v158 count:2];
        }

        else
        {
          v125 = v134;
        }
      }
    }

LABEL_229:

    goto LABEL_230;
  }

LABEL_211:
  v125 = MEMORY[0x1E695E0F0];
LABEL_230:
  v10 = [NSPersistentHistoryResult _processResult:v125 forRequest:a3 withProvider:self];
  if (a4)
  {
    [(NSManagedObjectContext *)v156 _setAllowAncillaryEntities:0];
  }

  else
  {
  }

LABEL_160:
  if (atomic_fetch_add_explicit(&self->_outstandingRequests, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    dispatch_semaphore_signal(self->_requestTerminationSem);
  }

LABEL_162:
  v107 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)newValuesForObjectWithID:(id)a3 withContext:(id)a4 error:(id *)a5
{
  v83 = *MEMORY[0x1E69E9840];
  v8 = &_pflogging_enable_oslog;
  v9 = &unk_1EA8C8000;
  if (+[NSXPCStore debugDefault])
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = a3;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Firing fault %@\n", buf, 0xCu);
        }
      }

      else
      {
        v12 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = a3;
          _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Firing fault %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 8;
    }

    _NSCoreDataLog_console(v13, "Firing fault %@", a3);
    objc_autoreleasePoolPop(v10);
  }

  v14 = [a4 _queryGenerationToken];
  if ([v14 _isEnabled])
  {
    v15 = [(_NSQueryGenerationToken *)v14 _generationalComponentForStore:?];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:v15];
  [a4 stalenessInterval];
  if (v17 != 0.0)
  {
    v18 = v17 <= 0.0 ? *&NSSQLDistantPastTimeInterval : CFAbsoluteTimeGetCurrent() - v17;
    v19 = [(NSPersistentStoreCache *)v16 rowForObjectID:a3 afterTimestamp:v18];
    if (v19)
    {
      v20 = *(v19 + 5);
      if (v20)
      {
        if (+[NSXPCStore debugDefault])
        {
          v21 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v22 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v20;
                _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: Returning cached value %@\n", buf, 0xCu);
              }
            }

            else
            {
              v62 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v20;
                _os_log_impl(&dword_18565F000, v62, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Returning cached value %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v63 = 1;
          }

          else
          {
            v63 = 8;
          }

          _NSCoreDataLog_console(v63, "Returning cached value %@", v20);
          objc_autoreleasePoolPop(v21);
        }

        v57 = v20;
        goto LABEL_102;
      }
    }
  }

  v23 = [MEMORY[0x1E695DF70] array];
  [v23 addObject:{objc_msgSend(a3, "URIRepresentation")}];
  if (v15)
  {
    [v23 addObject:v15];
  }

  v24 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v23];
  v25 = objc_alloc_init(NSCoreDataXPCMessage);
  v27 = v25;
  if (v25)
  {
    v25->_messageCode = 5;
    objc_setProperty_nonatomic(v25, v26, v24, 24);
  }

  v80 = 0;
  v81 = 0;
  v28 = [(NSXPCStore *)self sendMessage:v27 fromContext:a4 interrupts:&v80 error:&v81];
  if (v28)
  {
    v29 = v28;
    v30 = +[_NSXPCStoreUtilities classesForSaveArchive];
    v31 = [v30 setByAddingObjectsFromSet:{-[NSManagedObjectModel _allowedClassesFromTransformableAttributes](objc_msgSend(-[NSXPCStore model](self, "model"), "managedObjectModel"))}];
    v32 = [_NSXPCStoreUtilities decodeSecureArchivedData:v29 usingDelegate:self classes:v31];
    if ([objc_msgSend(v32 objectAtIndex:{0), "integerValue"}] != 1)
    {
      if ([objc_msgSend(v32 objectAtIndex:{0), "integerValue"}] != 2)
      {
        v8 = &_pflogging_enable_oslog;
        v33 = a5;
        if (a5)
        {
          v38 = MEMORY[0x1E696ABC0];
          v39 = *MEMORY[0x1E696A250];
          v37 = 134060;
          v36 = 0;
          goto LABEL_57;
        }

LABEL_59:
        v57 = 0;
        goto LABEL_89;
      }

      v41 = [objc_msgSend(v32 objectAtIndex:{1), "firstObject"}];
      v42 = objc_alloc_init(NSFetchRequest);
      -[NSFetchRequest setEntity:](v42, "setEntity:", [a3 entity]);
      *buf = 0;
      v43 = [_NSXPCStoreUtilities _decodeResultSetData:v41 forFetchRequest:v42 options:1 store:&self->super.super context:a4 rowCacheRows:buf error:&v81];

      if ([(_PFArray *)v43 count])
      {
        v44 = [*buf lastObject];
        v45 = v44;
      }

      else
      {
        v44 = 0;
        v81 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134093 userInfo:0];
      }

      v9 = &unk_1EA8C8000;
      if (v44)
      {
        v64 = [a4 objectRegisteredForID:a3];
        v65 = [MEMORY[0x1E695DEC8] arrayWithObject:v44];
        -[NSXPCStore cacheFetchedRows:forManagedObjects:generation:](self, v65, [MEMORY[0x1E695DEC8] arrayWithObject:v64], v15);
        v66 = [(NSPersistentStoreCache *)v16 rowForObjectID:a3 afterTimestamp:*&NSSQLDistantPastTimeInterval];
        v8 = &_pflogging_enable_oslog;
        if (v66)
        {
          v67 = *(v66 + 5);
        }

        else
        {
          v67 = 0;
        }

        v60 = 0x1E6EC0000;
        v57 = v67;
      }

      else
      {
        v57 = 0;
        v8 = &_pflogging_enable_oslog;
        if (a5)
        {
          v60 = 0x1E6EC0000;
          if (v81)
          {
            v57 = 0;
            *a5 = v81;
          }
        }

        else
        {
          v60 = 0x1E6EC0000;
        }
      }

LABEL_87:

      goto LABEL_90;
    }

    if ([v32 count] == 1)
    {
      v8 = &_pflogging_enable_oslog;
      v33 = a5;
      if (a5)
      {
        v34 = MEMORY[0x1E696ABC0];
        v35 = *MEMORY[0x1E696A250];
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", a3), @"NSAffectedObjectsErrorKey", 0}];
        v37 = 133000;
        v38 = v34;
        v39 = v35;
LABEL_57:
        v40 = [v38 errorWithDomain:v39 code:v37 userInfo:v36];
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    v46 = [v32 lastObject];
    v47 = [a3 entity];
    v48 = [v47 _propertyRangesByType];
    v49 = v48[7] + v48[13] + 1;
    if ([v46 count] != v49)
    {
      v57 = 0;
      if (a5)
      {
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"Unexpected number of property values returned from server", @"Reason"}];
      }

      v8 = &_pflogging_enable_oslog;
      goto LABEL_89;
    }

    v50 = v48[6];
    v51 = v48[7];
    v77 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:[(NSEntityDescription *)v47 knownKeysMappingStrategy]];
    v78 = [(NSKnownKeysDictionary *)v77 knownKeyValuesPointer];
    if (v51)
    {
      v52 = 0;
      v53 = v78 + 8 * v50;
      do
      {
        v54 = [v46 objectAtIndex:v52];
        if (NSKeyValueCoding_NullValue != v54)
        {
          *(v53 + 8 * v52) = v54;
        }

        ++v52;
      }

      while (v51 != v52);
    }

    v55 = v48[13];
    if (v55)
    {
      v56 = (v78 + 8 * v48[12]);
      do
      {
        *v56++ = [v46 objectAtIndex:v51++];
        --v55;
      }

      while (v55);
    }

    v57 = -[NSIncrementalStoreNode initWithObjectID:withValues:version:]([NSIncrementalStoreNode alloc], "initWithObjectID:withValues:version:", a3, v77, [objc_msgSend(v46 "lastObject")]);

    v44 = [[NSXPCRow alloc] initWithNode:v57];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = &_pflogging_enable_oslog;
    if (v44)
    {
      v44->super._birth = v58;
    }

    v59 = [a4 _queryGenerationToken];
    v9 = &unk_1EA8C8000;
    v60 = 0x1E6EC0000;
    if ([v59 _isEnabled])
    {
      v61 = [(_NSQueryGenerationToken *)v59 _generationalComponentForStore:?];
    }

    else
    {
      v61 = 0;
    }

    v68 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:v61];
    v69 = [a4 objectWithID:a3];
    if (v69)
    {
      v70 = *(v69 + 16);
      if ((v70 & 0x200) != 0)
      {
        if (!v44 || atomic_fetch_add(&v44->super._externalReferenceCount, 0) >= 1)
        {
          goto LABEL_86;
        }

LABEL_85:
        atomic_fetch_add_explicit(&v44->super._externalReferenceCount, 1u, memory_order_relaxed);
LABEL_86:
        [(NSPersistentStoreCache *)v68 registerRow:v44 forObjectID:a3 options:0];
        goto LABEL_87;
      }

      *(v69 + 16) = v70 | 0x200;
    }

    if (!v44)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  v33 = a5;
  if (!a5)
  {
    goto LABEL_59;
  }

  v40 = v81;
LABEL_58:
  v57 = 0;
  *v33 = v40;
LABEL_89:
  v60 = 0x1E6EC0000uLL;
LABEL_90:

  if ([*(v60 + 3048) debugDefault])
  {
    v71 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && *v8 >= 1)
    {
      if (v9[530])
      {
        v72 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v57;
          _os_log_error_impl(&dword_18565F000, v72, OS_LOG_TYPE_ERROR, "CoreData: error: Retrieved node from server %@\n", buf, 0xCu);
        }
      }

      else
      {
        v73 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v57;
          _os_log_impl(&dword_18565F000, v73, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Retrieved node from server %@\n", buf, 0xCu);
        }
      }
    }

    if (v9[530])
    {
      v74 = 1;
    }

    else
    {
      v74 = 8;
    }

    _NSCoreDataLog_console(v74, "Retrieved node from server %@", v57);
    objc_autoreleasePoolPop(v71);
  }

LABEL_102:
  v75 = *MEMORY[0x1E69E9840];
  return v57;
}

- (id)newValueForRelationship:(id)a3 forObjectWithID:(id)a4 withContext:(id)a5 error:(id *)a6
{
  v102 = *MEMORY[0x1E69E9840];
  [a5 stalenessInterval];
  v12 = v11;
  v13 = [a5 _queryGenerationToken];
  if ([v13 _isEnabled])
  {
    v14 = [(_NSQueryGenerationToken *)v13 _generationalComponentForStore:?];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:v14];
  if (v12 != 0.0)
  {
    v16 = v15;
    if (v12 <= 0.0)
    {
      v17 = *&NSSQLDistantPastTimeInterval;
    }

    else
    {
      v17 = CFAbsoluteTimeGetCurrent() - v12;
    }

    v18 = [(NSPersistentStoreCache *)v16 rowForObjectID:a4 afterTimestamp:v17];
    if (v18)
    {
      v19 = *(v18 + 5);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    if (!v20)
    {
      *buf = 0;
      v21 = [(NSXPCStore *)self newValuesForObjectWithID:a4 withContext:a5 error:buf];
      if (!v21)
      {
        if (a6)
        {
          *a6 = *buf;
        }

        v25 = 0;
        goto LABEL_64;
      }

      v20 = v21;
    }

    v22 = [v20 valueForPropertyDescription:a3];
    if (([a3 isToMany] & 1) == 0)
    {
      v24 = NSKeyValueCoding_NullValue;
      if (v22)
      {
        v24 = v22;
      }

      v23 = v24;
      goto LABEL_19;
    }

    if (v22)
    {
      v23 = v22;
LABEL_19:
      v25 = v23;

      goto LABEL_64;
    }

    v25 = [(NSPersistentStoreCache *)v16 toManyForSourceObjectID:a4 forProperty:a3 afterTimestamp:v17];
    if (v25)
    {
      goto LABEL_64;
    }
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v27 setValue:objc_msgSend(a4 forKey:{"URIRepresentation"), @"source"}];
  v84 = a3;
  [v27 setValue:objc_msgSend(a3 forKey:{"name"), @"relationship"}];
  [v26 addObject:v27];

  if (v14)
  {
    [v26 addObject:v14];
  }

  v28 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v26];

  v29 = objc_alloc_init(NSCoreDataXPCMessage);
  v31 = v29;
  if (v29)
  {
    v29->_messageCode = 6;
    objc_setProperty_nonatomic(v29, v30, v28, 24);
  }

  v86 = 0;
  v32 = [(NSXPCStore *)self sendMessage:v31 fromContext:a5 interrupts:&v85 error:&v86];

  if (v32)
  {
    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [v33 setWithObjects:{v34, v35, objc_opt_class(), 0}];
    v37 = [_NSXPCStoreUtilities decodeSecureArchivedData:v32 usingDelegate:self classes:v36];
    v38 = a3;
    v83 = v14;
    if (+[NSXPCStore debugDefault])
    {
      v39 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v41 = [a3 name];
            *buf = 138412802;
            *&buf[4] = a4;
            v98 = 2112;
            v99 = v41;
            v100 = 2112;
            v101 = v37;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Decoded value for %@ - %@ : %@\n", buf, 0x20u);
          }
        }

        else
        {
          v42 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = [a3 name];
            *buf = 138412802;
            *&buf[4] = a4;
            v98 = 2112;
            v99 = v43;
            v100 = 2112;
            v101 = v37;
            _os_log_impl(&dword_18565F000, v42, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Decoded value for %@ - %@ : %@\n", buf, 0x20u);
          }
        }
      }

      v44 = a4;
      v45 = _pflogging_catastrophic_mode;
      v46 = [a3 name];
      v47 = v45 == 0;
      a4 = v44;
      v48 = 8;
      if (!v47)
      {
        v48 = 1;
      }

      _NSCoreDataLog_console(v48, "Decoded value for %@ - %@ : %@", v44, v46, v37);
      objc_autoreleasePoolPop(v39);
    }

    v49 = [a5 persistentStoreCoordinator];
    if ([a3 isToMany])
    {
      v50 = [a3 isOrdered];
      v51 = 0x1E695DFA0;
      if (!v50)
      {
        v51 = 0x1E695DFA8;
      }

      v25 = objc_alloc_init(*v51);
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v52 = [v37 countByEnumeratingWithState:&v87 objects:buf count:16];
      if (v52)
      {
        v53 = v52;
        v82 = a4;
        v54 = *v88;
        while (1)
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v88 != v54)
            {
              objc_enumerationMutation(v37);
            }

            v56 = *(*(&v87 + 1) + 8 * i);
            v57 = objc_autoreleasePoolPush();
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v67 = objc_autoreleasePoolPush();
              if (_NSCoreDataIsOSLogEnabled(8))
              {
                if (_pflogging_catastrophic_mode)
                {
                  v68 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                  {
                    v69 = [a3 name];
                    *v91 = 138412802;
                    v92 = v69;
                    v93 = 2112;
                    v94 = v82;
                    v95 = 2112;
                    v96 = v56;
                    _os_log_error_impl(&dword_18565F000, v68, OS_LOG_TYPE_ERROR, "CoreData: error: Got a bad relationship value for %@, %@ (%@)\n", v91, 0x20u);
                  }
                }

                else
                {
                  v78 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                  {
                    v79 = [a3 name];
                    *v91 = 138412802;
                    v92 = v79;
                    v93 = 2112;
                    v94 = v82;
                    v95 = 2112;
                    v96 = v56;
                    _os_log_impl(&dword_18565F000, v78, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got a bad relationship value for %@, %@ (%@)\n", v91, 0x20u);
                  }
                }
              }

              v70 = _pflogging_catastrophic_mode;
              v71 = [v84 name];
              v72 = 8;
              if (v70)
              {
                v72 = 1;
              }

              _NSCoreDataLog_console(v72, "Got a bad relationship value for %@, %@ (%@)", v71, v82, v56);
              goto LABEL_73;
            }

            v58 = [v49 managedObjectIDForURIRepresentation:v56];
            if (v58)
            {
              [v25 addObject:v58];
            }

            objc_autoreleasePoolPop(v57);
          }

          v53 = [v37 countByEnumeratingWithState:&v87 objects:buf count:16];
          if (!v53)
          {
            a4 = v82;
            v38 = a3;
            break;
          }
        }
      }
    }

    else
    {
      v59 = NSKeyValueCoding_NullValue;
      if (v59 != [v37 lastObject])
      {
        v60 = [v37 lastObject];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v67 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(8))
          {
            if (_pflogging_catastrophic_mode)
            {
              v73 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                v74 = [a3 name];
                *buf = 138412802;
                *&buf[4] = v74;
                v98 = 2112;
                v99 = a4;
                v100 = 2112;
                v101 = v60;
                _os_log_error_impl(&dword_18565F000, v73, OS_LOG_TYPE_ERROR, "CoreData: error: Got a bad relationship value for %@, %@ (%@)\n", buf, 0x20u);
              }
            }

            else
            {
              v80 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                v81 = [a3 name];
                *buf = 138412802;
                *&buf[4] = v81;
                v98 = 2112;
                v99 = a4;
                v100 = 2112;
                v101 = v60;
                _os_log_impl(&dword_18565F000, v80, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got a bad relationship value for %@, %@ (%@)\n", buf, 0x20u);
              }
            }
          }

          v75 = _pflogging_catastrophic_mode;
          v76 = [v84 name];
          v77 = 8;
          if (v75)
          {
            v77 = 1;
          }

          _NSCoreDataLog_console(v77, "Got a bad relationship value for %@, %@ (%@)", v76, a4, v60);
LABEL_73:
          objc_autoreleasePoolPop(v67);
          __break(1u);
        }

        v61 = [v49 managedObjectIDForURIRepresentation:v60];
        v62 = v83;
        if (v61)
        {
          v25 = v61;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_62;
      }

      v25 = NSKeyValueCoding_NullValue;
    }

    v62 = v83;
LABEL_62:
    if ([v38 isToMany])
    {
      v63 = [(NSGenerationalRowCache *)self->_cache rowCacheForGeneration:v62];
      [objc_msgSend(MEMORY[0x1E695DF00] "date")];
      [NSPersistentStoreCache registerToMany:v63 withOrderKeys:v25 forSourceObjectID:0 forProperty:a4 options:v38 andTimestamp:v64];
    }

    goto LABEL_64;
  }

  v25 = 0;
  if (a6)
  {
    *a6 = v86;
  }

LABEL_64:
  v65 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)obtainPermanentIDsForObjects:(id)a3 error:(id *)a4
{
  v76 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v70;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v70 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v12 = [objc_msgSend(*(*(&v69 + 1) + 8 * i) "entity")];
          v13 = [v7 objectForKey:v12];
          if (v13)
          {
            v14 = [v13 integerValue] + 1;
            v15 = MEMORY[0x1E696AD98];
          }

          else
          {
            v15 = MEMORY[0x1E696AD98];
            v14 = 1;
          }

          [v7 setObject:objc_msgSend(v15 forKey:{"numberWithInteger:", v14), v12}];
        }

        v9 = [a3 countByEnumeratingWithState:&v69 objects:v75 count:16];
      }

      while (v9);
    }

    v16 = [v7 count];
    v17 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v7];
    v18 = objc_alloc_init(NSCoreDataXPCMessage);
    v20 = v18;
    if (v18)
    {
      v18->_messageCode = 4;
      objc_setProperty_nonatomic(v18, v19, v17, 24);
    }

    v68 = 0;
    v21 = -[NSXPCStore sendMessage:fromContext:interrupts:error:](self, v20, [objc_msgSend(a3 "lastObject")], &v67, &v68);
    if (v21)
    {
      v22 = v21;
      v57 = v20;
      count = v16;
      v55 = a4;
      v23 = MEMORY[0x1E695DFD8];
      v56 = self;
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = objc_opt_class();
      v27 = objc_opt_class();
      v28 = objc_opt_class();
      v29 = objc_opt_class();
      v30 = [v23 setWithObjects:{v24, v25, v26, v27, v28, v29, objc_opt_class(), 0}];
      v31 = [_NSXPCStoreUtilities decodeSecureArchivedData:v22 usingDelegate:v56 classes:v30];
      if ([v31 count])
      {
        v32 = [MEMORY[0x1E695DF70] array];
      }

      else
      {
        v32 = 0;
      }

      if ([v31 count] != count)
      {

        v48 = v55;
        if (!v55)
        {
LABEL_44:
          v32 = 0;
          goto LABEL_45;
        }

        v49 = MEMORY[0x1E696ABC0];
        v50 = *MEMORY[0x1E696A250];
        v51 = MEMORY[0x1E695DF20];
        v52 = @"Wrong number of object IDs returned from server";
        goto LABEL_43;
      }

      v33 = -[NSKnownKeysMappingStrategy initForKeys:]([NSKnownKeysMappingStrategy alloc], "initForKeys:", [v31 allKeys]);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v34 = [v33 countByEnumeratingWithState:&v63 objects:v74 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v64;
LABEL_24:
        v37 = 0;
        while (1)
        {
          if (*v64 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v63 + 1) + 8 * v37);
          v39 = [objc_msgSend(v31 objectForKey:{v38), "count"}];
          if (v39 != [objc_msgSend(v7 objectForKey:{v38), "unsignedIntegerValue"}])
          {
            break;
          }

          if (v35 == ++v37)
          {
            v35 = [v33 countByEnumeratingWithState:&v63 objects:v74 count:16];
            if (v35)
            {
              goto LABEL_24;
            }

            goto LABEL_30;
          }
        }

        v48 = v55;
        if (!v55)
        {
          goto LABEL_44;
        }

        v49 = MEMORY[0x1E696ABC0];
        v50 = *MEMORY[0x1E696A250];
        v51 = MEMORY[0x1E695DF20];
        v52 = @"Wrong number of object IDs returned from server (2)";
LABEL_43:
        v32 = 0;
        *v48 = [v49 errorWithDomain:v50 code:134060 userInfo:{objc_msgSend(v51, "dictionaryWithObject:forKey:", v52, @"Reason"}];
        goto LABEL_45;
      }

LABEL_30:
      v40 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v41 = [a3 countByEnumeratingWithState:&v59 objects:v73 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v60;
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v60 != v43)
            {
              objc_enumerationMutation(a3);
            }

            v45 = [objc_msgSend(*(*(&v59 + 1) + 8 * j) "entity")];
            v46 = [v31 objectForKey:v45];
            v47 = [v33 indexForKey:v45];
            ++v40[v47];
            [v32 addObject:{objc_msgSend(v46, "objectAtIndex:")}];
          }

          v42 = [a3 countByEnumeratingWithState:&v59 objects:v73 count:16];
        }

        while (v42);
      }

      free(v40);
      v20 = v57;
    }

    else
    {
      v32 = 0;
      if (a4)
      {
        *a4 = v68;
      }
    }
  }

  else
  {
    v32 = NSArray_EmptyArray;
  }

LABEL_45:
  v53 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)newForeignKeyID:(int64_t)a3 entity:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = objc_alloc([(NSXPCStore *)self objectIDFactoryForSQLEntity:a4]);

  return [v5 initWithPK64:a3];
}

+ (BOOL)_isOnExtendedTimeout
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__NSXPCStore_Internal___isOnExtendedTimeout__block_invoke;
  block[3] = &unk_1E6EC1358;
  block[4] = &v5;
  if (_isOnExtendedTimeout_onceToken != -1)
  {
    dispatch_once(&_isOnExtendedTimeout_onceToken, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __44__NSXPCStore_Internal___isOnExtendedTimeout__block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  result = [@"com.apple.internetaccounts" isEqual:v2];
  if ((result & 1) != 0 || (result = [@"com.apple.preferences.internetaccounts.remoteservices" isEqual:v2], result))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)_prepareStoreForRemovalFromCoordinator:(id)a3
{
  if ([(NSPersistentStore *)self _persistentStoreCoordinator]== a3)
  {
    os_unfair_lock_lock_with_options();
    if (a3 && (v5 = self->_requestTerminationSem) != 0)
    {
      dispatch_retain(v5);
      requestTerminationSem = self->_requestTerminationSem;
      os_unfair_lock_unlock(&self->_stateLock);
      if (requestTerminationSem)
      {
        v7 = 0;
        atomic_compare_exchange_strong_explicit(&self->_outstandingRequests, &v7, 0xFFF0BDC1, memory_order_relaxed, memory_order_relaxed);
        if (v7)
        {
          do
          {
            v8 = dispatch_time(0, 10000000000);
            dispatch_semaphore_wait(requestTerminationSem, v8);
            v9 = 0;
            atomic_compare_exchange_strong_explicit(&self->_outstandingRequests, &v9, 0xFFF0BDC1, memory_order_relaxed, memory_order_relaxed);
          }

          while (v9);
        }

        os_unfair_lock_lock_with_options();
        v10 = self->_requestTerminationSem;
        if (v10)
        {
          dispatch_release(v10);
          self->_requestTerminationSem = 0;
        }

        os_unfair_lock_unlock(&self->_stateLock);

        dispatch_release(requestTerminationSem);
      }
    }

    else
    {

      os_unfair_lock_unlock(&self->_stateLock);
    }
  }
}

- (id)newObjectIDForEntity:(id)a3 pk:(int64_t)a4
{
  v5 = objc_alloc([(NSXPCStore *)self objectIDFactoryForSQLEntity:a3]);

  return [v5 initWithPK64:a4];
}

- (void)_cachedRowForRelationship:(const void *)a3 onObjectWithID:(void *)a4 generation:
{
  if (result)
  {
    v6 = [(NSGenerationalRowCache *)result[18] rowCacheForGeneration:a4];
    v7 = *&NSSQLDistantPastTimeInterval;

    return [(NSPersistentStoreCache *)v6 toManyForSourceObjectID:a3 forProperty:a2 afterTimestamp:v7];
  }

  return result;
}

- (double)_cachedRowForObjectWithID:(void *)a3 generation:
{
  if (result)
  {
    v4 = [(NSGenerationalRowCache *)*(result + 18) rowCacheForGeneration:a3];
    result = [(NSPersistentStoreCache *)v4 rowForObjectID:a2 afterTimestamp:*&NSSQLDistantPastTimeInterval];
    if (result)
    {
      return *(result + 5);
    }
  }

  return result;
}

- (void)_clearCachedRowForObjectWithID:(void *)a3 generation:
{
  if (a1)
  {
    v4 = [(NSGenerationalRowCache *)*(a1 + 144) rowCacheForGeneration:a3];

    [(NSPersistentStoreCache *)v4 forgetRowForObjectID:a2];
  }
}

- (void)decodePrefetchResult:(void *)a3 forSources:(void *)a4 context:
{
  v114 = a3;
  v144 = *MEMORY[0x1E69E9840];
  v7 = [a2 objectAtIndex:0];
  v8 = [a2 objectAtIndex:1];
  v9 = [objc_msgSend(a1 "_persistentStoreCoordinator")];
  if (v9 && (v10 = [*(v9 + 32) objectForKey:v8]) != 0)
  {
    v11 = [objc_msgSend(v10 "propertiesByName")];
  }

  else
  {
    v11 = 0;
  }

  if ([v11 _propertyType] != 4)
  {
    goto LABEL_128;
  }

  v12 = [v11 isToMany];
  if (!v11)
  {
    goto LABEL_128;
  }

  v13 = v12;
  v113 = [a2 objectAtIndex:2];
  v14 = [a2 count];
  if (v14 < 4)
  {
    goto LABEL_128;
  }

  v15 = v14;
  v16 = [a2 objectAtIndex:3];
  if (!v16)
  {
    goto LABEL_128;
  }

  v112 = v16;
  v110 = v15;
  v107 = a2;
  v116 = v11;
  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  v18 = v17;
  v117 = a1;
  v115 = -[_NSQueryGenerationToken _generationalComponentForStore:]([a4 _queryGenerationToken], a1);
  LODWORD(v108) = v13;
  if (v13)
  {
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v19 = [v114 countByEnumeratingWithState:&v135 objects:v143 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v136;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v136 != v21)
          {
            objc_enumerationMutation(v114);
          }

          v23 = *(*(&v135 + 1) + 8 * i);
          if (-[NSEntityDescription _relationshipNamed:]([v23 entity], v7))
          {
            v24 = [v23 objectID];
            v25 = NSArray_EmptyArray;
            v26 = [(NSGenerationalRowCache *)*(v117 + 18) rowCacheForGeneration:v115];
            [NSPersistentStoreCache registerToMany:v26 withOrderKeys:v25 forSourceObjectID:0 forProperty:v24 options:v116 andTimestamp:v18];
          }
        }

        v20 = [v114 countByEnumeratingWithState:&v135 objects:v143 count:16];
      }

      while (v20);
    }
  }

  v27 = objc_alloc_init(NSFetchRequest);
  -[NSFetchRequest setEntity:](v27, "setEntity:", [v116 destinationEntity]);
  [(NSFetchRequest *)v27 setResultType:0];
  v134 = 0;
  v28 = v117;
  v29 = [_NSXPCStoreUtilities _decodeResultSetData:v112 forFetchRequest:v27 options:0 store:v117 context:a4 rowCacheRows:&v134 error:0];
  [(NSXPCStore *)v117 cacheFetchedRows:v134 forManagedObjects:v29 generation:v115];

  v30 = [(_PFArray *)v29 count];
  if (!v30)
  {

    goto LABEL_128;
  }

  v31 = v30;
  v111 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v29];
  if (v110 == 4)
  {
    v32 = 0;
  }

  else
  {
    v32 = [v107 lastObject];
  }

  v107 = v32;
  if (v117)
  {
    v110 = *(v117 + 6);
  }

  else
  {
    v110 = 0;
  }

  v109 = v29;
  v105 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v106 = v31;
  if (!v108)
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v46 = v116;
    v113 = [v114 countByEnumeratingWithState:&v122 objects:v140 count:16];
    if (!v113)
    {
      goto LABEL_110;
    }

    v112 = *v123;
    while (1)
    {
      v47 = 0;
      v48 = v115;
      do
      {
        if (*v123 != v112)
        {
          objc_enumerationMutation(v114);
        }

        v49 = *(*(&v122 + 1) + 8 * v47);
        v50 = objc_autoreleasePoolPush();
        v51 = [v49 objectID];
        v52 = [v49 primitiveValueForKey:v7];
        if (!v52)
        {
          v55 = [-[NSXPCStore _cachedRowForObjectWithID:generation:](v117 v51];
          goto LABEL_55;
        }

        v53 = v52;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v54 = [-[NSXPCStore _cachedRowForObjectWithID:generation:](v117 v51];
          if ([v53 isEqual:v54])
          {
            v55 = v54;
          }

          else
          {
            v55 = 0;
          }

          goto LABEL_55;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v53 isFault])
        {
          goto LABEL_71;
        }

        v58 = [(NSXPCStore *)v117 _cachedRowForObjectWithID:v51 generation:v48];
        if (!v58)
        {
          v55 = [v53 objectID];
          v62 = [(NSXPCStore *)v117 _cachedRowForObjectWithID:v55 generation:v48];
          if (v62)
          {
            v63 = v62;
            v46 = v116;
            if (a4)
            {
              v64 = _PFRetainedObjectIDCore(a4, v55, 0, 1);
              v57 = v64;
              if (v64)
              {
                v65 = *(v64 + 4);
                if ((v65 & 0x200) == 0)
                {
                  *(v64 + 4) = v65 | 0x200;
                }
              }
            }

            else
            {
              v57 = 0;
            }

            if ([v57 isFault])
            {
              _PFFaultHandlerFulfillFault(v110, v57, a4, v63, 0);
            }

            goto LABEL_62;
          }

          v46 = v116;
LABEL_55:
          if (v55)
          {
            v56 = NSKeyValueCoding_NullValue == v55;
          }

          else
          {
            v56 = 1;
          }

          if (!v56)
          {
            if (a4)
            {
              v57 = _PFRetainedObjectIDCore(a4, v55, 0, 1);
            }

            else
            {
              v57 = 0;
            }

            _PFFaultHandlerPreconnectRelationship(v110, v49, v46, v57);
LABEL_62:
            [v111 removeObject:v57];

            goto LABEL_71;
          }

          goto LABEL_71;
        }

        v59 = [v58 valueForPropertyDescription:v116];
        v46 = v116;
        if ([objc_msgSend(v53 "objectID")])
        {
          if (a4)
          {
            v60 = _PFRetainedObjectIDCore(a4, v59, 0, 1);
            v57 = v60;
            if (v60)
            {
              v61 = *(v60 + 4);
              if ((v61 & 0x200) == 0)
              {
                *(v60 + 4) = v61 | 0x200;
              }
            }
          }

          else
          {
            v57 = 0;
          }

          goto LABEL_62;
        }

LABEL_71:
        objc_autoreleasePoolPop(v50);
        v47 = v47 + 1;
      }

      while (v113 != v47);
      v66 = [v114 countByEnumeratingWithState:&v122 objects:v140 count:16];
      v113 = v66;
      if (!v66)
      {
        goto LABEL_110;
      }
    }
  }

  if (![objc_msgSend(v116 "inverseRelationship")])
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v113 = [(_PFArray *)v29 countByEnumeratingWithState:&v126 objects:v141 count:16];
    if (v113)
    {
      v67 = 0;
      v68 = 0;
      v112 = *v127;
      do
      {
        for (j = 0; j != v113; j = j + 1)
        {
          v70 = v68;
          if (*v127 != v112)
          {
            objc_enumerationMutation(v109);
          }

          v71 = *(*(&v126 + 1) + 8 * j);
          v114 = objc_autoreleasePoolPush();
          v68 = [-[NSXPCStore _cachedRowForObjectWithID:generation:](v28 objc_msgSend(v71];
          if ([v116 inverseRelationship] && (objc_msgSend(v70, "isEqual:", v68) & 1) == 0)
          {
            if (v67)
            {
              v108 = [-[NSXPCStore _cachedRowForObjectWithID:generation:](v28 objc:"lastObject") msgSend(objc:{"objectID"), v115), "valueForPropertyDescription:", objc_msgSend(v116, "inverseRelationship")}msgSend(v67];
              v72 = [a4 objectWithID:?];
              v73 = [[_NSFaultingMutableSet alloc] initWithSource:v72 destinations:v67 forRelationship:v116 inContext:a4];
              if ([v116 isOrdered])
              {
                v74 = [v67 valueForKey:@"objectID"];
              }

              else
              {
                v75 = v67;
                v76 = MEMORY[0x1E695DFD8];
                v77 = [v75 valueForKey:@"objectID"];
                v78 = v76;
                v67 = v75;
                v74 = [v78 setWithArray:v77];
              }

              v79 = v74;
              v28 = v117;
              v80 = [(NSGenerationalRowCache *)*(v117 + 18) rowCacheForGeneration:v115];
              [NSPersistentStoreCache registerToMany:v80 withOrderKeys:v79 forSourceObjectID:0 forProperty:v108 options:v116 andTimestamp:v18];
              _PFFaultHandlerPreconnectRelationship(v110, v72, v116, v73);
              [v111 minusSet:v73];
            }

            v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v67 addObject:v71];
          objc_autoreleasePoolPop(v114);
        }

        v113 = [(_PFArray *)v109 countByEnumeratingWithState:&v126 objects:v141 count:16];
      }

      while (v113);
      if (!v67 || ![v67 count])
      {
        goto LABEL_109;
      }

      v81 = v115;
      v82 = [-[NSXPCStore _cachedRowForObjectWithID:generation:](v28 objc:"lastObject") msgSend(objc:{"objectID"), v115), "valueForPropertyDescription:", objc_msgSend(v116, "inverseRelationship")}msgSend(v67];
      v83 = [a4 objectWithID:v82];
      v84 = [[_NSFaultingMutableSet alloc] initWithSource:v83 destinations:v67 forRelationship:v116 inContext:a4];
      if ([v116 isOrdered])
      {
        v85 = [v67 valueForKey:@"objectID"];
      }

      else
      {
        v86 = v67;
        v87 = MEMORY[0x1E695DFD8];
        v88 = [v86 valueForKey:@"objectID"];
        v89 = v87;
        v67 = v86;
        v81 = v115;
        v85 = [v89 setWithArray:v88];
      }

      [(NSXPCStore *)v28 cacheContents:v85 ofRelationship:v116 onObjectWithID:v82 withTimestamp:v81 generation:v18];
      _PFFaultHandlerPreconnectRelationship(v110, v83, v116, v84);
      [v111 minusSet:v84];
    }

    v67 = 0;
LABEL_109:

    goto LABEL_110;
  }

  v33 = [v113 count];
  if (v33 >= 2)
  {
    v34 = 0;
    v108 = (v33 >> 1);
    do
    {
      v114 = objc_autoreleasePoolPush();
      v35 = [v113 objectAtIndex:2 * v34];
      v112 = [a4 objectWithID:v35];
      v36 = [v113 objectAtIndex:(2 * v34) | 1];
      v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v38 = [v36 countByEnumeratingWithState:&v130 objects:v142 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v131;
        do
        {
          v41 = 0;
          do
          {
            if (*v131 != v40)
            {
              objc_enumerationMutation(v36);
            }

            if (a4)
            {
              v42 = _PFRetainedObjectIDCore(a4, *(*(&v130 + 1) + 8 * v41), 0, 1);
            }

            else
            {
              v42 = 0;
            }

            [v37 addObject:v42];

            ++v41;
          }

          while (v39 != v41);
          v43 = [v36 countByEnumeratingWithState:&v130 objects:v142 count:16];
          v39 = v43;
        }

        while (v43);
      }

      if (([v116 isOrdered] & 1) == 0)
      {
        v36 = [MEMORY[0x1E695DFD8] setWithArray:v36];
      }

      v44 = [(NSGenerationalRowCache *)*(v117 + 18) rowCacheForGeneration:v115];
      [NSPersistentStoreCache registerToMany:v44 withOrderKeys:v36 forSourceObjectID:0 forProperty:v35 options:v116 andTimestamp:v18];
      v45 = [[_NSFaultingMutableSet alloc] initWithSource:v112 destinations:v37 forRelationship:v116 inContext:a4];
      _PFFaultHandlerPreconnectRelationship(v110, v112, v116, v45);
      [v111 minusSet:v45];

      objc_autoreleasePoolPop(v114);
      v34 = v34 + 1;
    }

    while (v34 != v108);
  }

LABEL_110:
  [v105 drain];
  v90 = v117;
  v91 = v109;
  if (v107)
  {
    [(NSXPCStore *)v117 decodePrefetchArray:v107 forSources:v109 context:a4];
  }

  v92 = v106;
  if (v106 >= 0x201)
  {
    v93 = 1;
  }

  else
  {
    v93 = v106;
  }

  v94 = (8 * v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  v95 = &v104 - v94;
  if (v106 > 0x200)
  {
    v95 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v104 - v94, 8 * v106);
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v96 = [(_PFArray *)v91 countByEnumeratingWithState:&v118 objects:v139 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = 0;
    v99 = *v119;
    do
    {
      for (k = 0; k != v97; ++k)
      {
        if (*v119 != v99)
        {
          objc_enumerationMutation(v91);
        }

        *&v95[8 * v98++] = [*(*(&v118 + 1) + 8 * k) objectID];
      }

      v97 = [(_PFArray *)v91 countByEnumeratingWithState:&v118 objects:v139 count:16];
    }

    while (v97);
  }

  v101 = v111;
  v102 = [_PFRoutines newArrayOfObjectIDsFromCollection:v111];
  [v90 managedObjectContextDidUnregisterObjectsWithIDs:v102 generation:v115];

  if (v92 >= 0x201)
  {
    NSZoneFree(0, v95);
  }

LABEL_128:
  v103 = *MEMORY[0x1E69E9840];
}

- (void)cacheContents:(void *)a3 ofRelationship:(void *)a4 onObjectWithID:(void *)a5 withTimestamp:(double)a6 generation:
{
  v10 = [(NSGenerationalRowCache *)*(a1 + 144) rowCacheForGeneration:a5];

  [NSPersistentStoreCache registerToMany:v10 withOrderKeys:a2 forSourceObjectID:0 forProperty:a4 options:a3 andTimestamp:a6];
}

- (id)objectIDFactoryForEntity:(id)a3
{
  v7.receiver = self;
  v7.super_class = NSXPCStore;
  v5 = [(NSPersistentStore *)&v7 objectIDFactoryForEntity:?];
  if (![v5 _storeInfo1])
  {
    [v5 _setStoreInfo1:{-[NSXPCStore entityForEntityDescription:](self, "entityForEntityDescription:", a3)}];
  }

  return v5;
}

- (id)entityForEntityDescription:(id)a3
{
  if (a3)
  {
    return _sqlEntityForEntityDescription(self->_model, a3);
  }

  else
  {
    return 0;
  }
}

- (Class)objectIDFactoryForSQLEntity:(id)a3
{
  if (a3 && *(a3 + 3))
  {
    return [(NSXPCStore *)self objectIDFactoryForEntity:?];
  }

  else
  {
    return 0;
  }
}

- (id)_newObjectIDForEntityDescription:(id)a3 pk:(int64_t)a4
{
  v6 = _sqlEntityForEntityDescription(self->_model, a3);

  return [(NSXPCStore *)self newObjectIDForEntity:v6 pk:a4];
}

@end