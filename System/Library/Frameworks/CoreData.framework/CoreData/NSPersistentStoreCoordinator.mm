@interface NSPersistentStoreCoordinator
+ (BOOL)removePersistentHistoryFromPersistentStoreAtURL:(id)a3 options:(id)a4 error:(id *)a5;
+ (BOOL)removeUbiquitousContentAndPersistentStoreAtURL:(NSURL *)storeURL options:(NSDictionary *)options error:(NSError *)error;
+ (BOOL)setMetadata:(NSDictionary *)metadata forPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)error;
+ (NSDictionary)metadataForPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url error:(NSError *)error;
+ (NSDictionary)metadataForPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)error;
+ (NSDictionary)registeredStoreTypes;
+ (const)_classForPersistentStoreAtURL:(uint64_t)a1;
+ (uint64_t)_setMetadata:(void *)a3 forPersistentStoreOfType:(void *)a4 URL:(uint64_t)a5 options:(void *)a6 error:;
+ (uint64_t)_storeClassForStoreType:(uint64_t)a1;
+ (void)_registerCoreDataStoreClass:(Class)a3 forStoreType:(id)a4;
+ (void)initialize;
+ (void)registerStoreClass:(Class)storeClass forStoreType:(NSString *)storeType;
- (BOOL)_canRouteToStore:(void *)a3 forContext:;
- (BOOL)_destroyPersistentStoreAtURL:(id)a3 withType:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)_refreshTriggerValuesInStore:(id)a3 error:(id *)a4;
- (BOOL)_rekeyPersistentStoreAtURL:(id)a3 type:(id)a4 options:(id)a5 withKey:(id)a6 error:(id *)a7;
- (BOOL)_removeAllPersistentStores:(id *)a3;
- (BOOL)_removePersistentStore:(unint64_t)a1;
- (BOOL)_replacePersistentStoreAtURL:(id)a3 destinationOptions:(id)a4 withPersistentStoreFromURL:(id)a5 sourceOptions:(id)a6 storeType:(id)a7 error:(id *)a8;
- (BOOL)_validateQueryGeneration:(id)a3 error:(id *)a4;
- (BOOL)obtainPermanentIDsForObjects:(id)a3 error:(id *)a4;
- (BOOL)removePersistentStore:(NSPersistentStore *)store error:(NSError *)error;
- (BOOL)setURL:(NSURL *)url forPersistentStore:(NSPersistentStore *)store;
- (NSArray)persistentStores;
- (NSDictionary)metadataForPersistentStore:(NSPersistentStore *)store;
- (NSManagedObjectID)managedObjectIDForURIRepresentation:(NSURL *)url;
- (NSPersistentHistoryToken)currentPersistentHistoryTokenFromStores:(NSArray *)stores;
- (NSPersistentStore)addPersistentStoreWithType:(NSString *)storeType configuration:(NSString *)configuration URL:(NSURL *)storeURL options:(NSDictionary *)options error:(NSError *)error;
- (NSPersistentStore)migratePersistentStore:(NSPersistentStore *)store toURL:(NSURL *)URL options:(NSDictionary *)options withType:(NSString *)storeType error:(NSError *)error;
- (NSPersistentStore)persistentStoreForURL:(NSURL *)URL;
- (NSPersistentStoreCoordinator)init;
- (NSPersistentStoreCoordinator)initWithManagedObjectModel:(NSManagedObjectModel *)model;
- (NSString)name;
- (NSTemporaryObjectID)managedObjectIDForURIRepresentation:(void *)a3 error:;
- (NSTemporaryObjectID)managedObjectIDFromUTF8String:(uint64_t)a3 length:(void *)a4 error:;
- (NSURL)URLForPersistentStore:(NSPersistentStore *)store;
- (_NSPersistentHistoryToken)_retainedChangeTokenFromStores:(_NSPersistentHistoryToken *)result;
- (_NSQueryGenerationToken)_retainedIdentifierFromStores:(_NSQueryGenerationToken *)result;
- (const)_storeClassForStoreWithType:(const char *)result URL:(uint64_t)a2 options:(void *)a3;
- (id)_allOrderKeysForDestination:(id)a3 inRelationship:(id)a4 error:(id *)a5;
- (id)_doAddPersistentStoreWithDescription:(void *)a3 privateCopy:(int)a4 completeOnMainThread:(uint64_t)a5 withHandler:;
- (id)_exceptionNoStoreSaveFailureForError:(id)a3 recommendedFrame:(int *)a4;
- (id)_lastOpenError;
- (id)_newOrderedRelationshipInformationForRelationship:(id)a3 forObjectWithID:(id)a4 withContext:(id)a5 error:(id *)a6;
- (id)_reopenQueryGenerationWithIdentifier:(uint64_t)a3 inStoreWithIdentifier:(void *)a4 error:;
- (id)_retainedCurrentQueryGeneration:(id)a3;
- (id)_xpcBundleIdentifier;
- (id)_xpcProcessName;
- (id)currentQueryGenerationTokenFromStores:(id)a3;
- (id)executeRequest:(NSPersistentStoreRequest *)request withContext:(NSManagedObjectContext *)context error:(NSError *)error;
- (id)newValueForRelationship:(id)a3 forObjectWithID:(id)a4 withContext:(id)a5 error:(id *)a6;
- (id)newValuesForObjectWithID:(id)a3 withContext:(id)a4 error:(id *)a5;
- (id)persistentStoreForIdentifier:(id)a3;
- (id)restoreOriginalRequestIfNecessary:(uint64_t)a3 store:(void *)a4 swizzledResults:(uint64_t)a5 originalRequestType:(uint64_t)a6 originalResultType:;
- (uint64_t)_canSaveGraphRootedAtObject:(void *)value intoStore:(uint64_t)a2 withPreviouslyChecked:(CFSetRef)theSet withAcceptableEntities:(const __CFSet *)a4;
- (uint64_t)_checkForSkewedEntityHashes:(uint64_t)result metadata:(void *)a2;
- (uint64_t)_checkForTombstoneSkew:(uint64_t)a3 metadata:(uint64_t)a4 configuration:;
- (uint64_t)_doPreSaveAssignmentsForObjects:(void *)a3 intoStores:;
- (uint64_t)_finishDeferredLightweightMigrationTasks:(void *)a3 withError:;
- (uint64_t)_handleFaultingError:(uint64_t)a3 fromContext:;
- (uint64_t)_hasHistoryTracking:(uint64_t)result;
- (uint64_t)_newConflictRecordForObject:(unint64_t)a3 andOriginalRow:(void *)a4 withContext:;
- (uint64_t)_removePersistentStore:(void *)a3 error:;
- (uint64_t)_repairIndiciesForStoreWithIdentifier:(uint64_t)a3 synchronous:;
- (uint64_t)applyMigrationStage:(void *)a3 withContext:(void *)a4 error:;
- (uint64_t)replaceResultTypeOfRequestIfNecessary:(unsigned __int8 *)a3 store:(uint64_t)a4 requestType:(void *)a5 originalResultType:;
- (unint64_t)migrateStoreWithContext:(void *)a3 error:;
- (void)_addPersistentStore:(uint64_t)a3 identifier:;
- (void)_conflictsWithRowCacheForObject:(void *)a3 withContext:(void *)a4 andStore:;
- (void)_copyMetadataFromStore:(void *)a3 toStore:(uint64_t)a4 migrationManager:;
- (void)_introspectLastErrorAndThrow;
- (void)_persistentStoreForIdentifier:(uint64_t)a1;
- (void)_postStoreRemoteChangeNotificationsForStore:(uint64_t)a3 andState:;
- (void)_postStoresChangedNotificationsForStores:(uint64_t)a3 changeKey:(void *)a4 options:;
- (void)_retainedPersistentStores;
- (void)_routeHeavyweightBlock:(unint64_t)a1;
- (void)_routeLightweightBlock:(uint64_t)a3 toStore:;
- (void)_setIsMigrating:(unint64_t)a1;
- (void)_setXPCBundleIdentifier:(uint64_t)a1;
- (void)_setXPCProcessName:(uint64_t)a1;
- (void)addPersistentStoreWithDescription:(NSPersistentStoreDescription *)storeDescription completionHandler:(void *)block;
- (void)createPersistentContainerForMigrationContext:(void *)a1 withModel:(uint64_t)a2 andExecuteBlock:(uint64_t)a3;
- (void)dealloc;
- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)a3 generation:(id)a4;
- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)a3 generation:(id)a4;
- (void)performBlock:(void *)block;
- (void)performBlockAndWait:(void *)block;
- (void)setCodableAdapterRegistry:(id)a3;
- (void)setMetadata:(NSDictionary *)metadata forPersistentStore:(NSPersistentStore *)store;
- (void)setName:(NSString *)name;
@end

@implementation NSPersistentStoreCoordinator

- (void)_retainedPersistentStores
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  v2 = *(a1 + 48);
  v3 = v2;
  os_unfair_lock_unlock((a1 + 32));
  return v2;
}

- (NSArray)persistentStores
{
  os_unfair_lock_lock_with_options();
  persistentStores = self->_persistentStores;
  v4 = persistentStores;
  os_unfair_lock_unlock(&self->_miniLock);

  return persistentStores;
}

- (void)dealloc
{
  MEMORY[0x1865FAAC0](self, a2);
  os_unfair_lock_lock_with_options();
  persistentStores = self->_persistentStores;
  self->_persistentStores = 0;
  __dmb(0xBu);
  os_unfair_lock_unlock(&self->_miniLock);
  if (persistentStores)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__NSPersistentStoreCoordinator_dealloc__block_invoke;
    v5[3] = &unk_1E6EC1600;
    v5[4] = persistentStores;
    v5[5] = self;
    _perform_0(self, v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__NSPersistentStoreCoordinator_dealloc__block_invoke_313;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_async(self->_dispatchQueue, block);
  }
}

uint64_t __39__NSPersistentStoreCoordinator_dealloc__block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v1 = a1;
    v26 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if ([(NSPersistentStoreCoordinator *)*(v1 + 40) _hasHistoryTracking:?])
    {
      +[_PFPersistentHistoryModel resetCaches];
    }

    v27 = v1;
    v2 = *(*(v1 + 40) + 64);
    if (v2 || *(v1 + 32))
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v3 = [v2 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v3)
      {
        v4 = *v37;
        do
        {
          for (i = 0; i != v3; ++i)
          {
            if (*v37 != v4)
            {
              objc_enumerationMutation(v2);
            }

            [+[_PFGarbageManager defaultInstance](_PFGarbageManager doCleanupForURL:*(*(&v36 + 1) + 8 * i)];
          }

          v3 = [v2 countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v3);
      }

      *(*(v27 + 40) + 64) = 0;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v6 = *(v27 + 32);
      v7 = [v6 countByEnumeratingWithState:&v32 objects:v43 count:16];
      if (v7)
      {
        v8 = *v33;
        do
        {
          for (j = 0; j != v7; ++j)
          {
            if (*v33 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v32 + 1) + 8 * j);
            v11 = [v10 type];
            if (v10)
            {
              v12 = v11 == @"SQLite";
            }

            else
            {
              v12 = 0;
            }

            if (v12)
            {
              v13 = atomic_load(v10 + 22);
              if (v13)
              {
                v14 = +[_PFGarbageManager defaultInstance];
                -[_PFGarbageManager doCleanupForURL:](v14, [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:1]);
              }
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v32 objects:v43 count:16];
        }

        while (v7);
      }
    }

    context = objc_autoreleasePoolPush();
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = *(v27 + 32);
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v16)
    {
      v17 = *v29;
      do
      {
        for (k = 0; k != v16; ++k)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v28 + 1) + 8 * k);
          v20 = [MEMORY[0x1E696AD88] defaultCenter];
          v40 = @"removed";
          v41 = v19;
          [v20 postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v41, &v40, 1)}];
          [v19 willRemoveFromPersistentStoreCoordinator:0];
          if (v19)
          {
            if (atomic_load(v19 + 1))
            {
              atomic_store(0, v19 + 1);
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v28 objects:v42 count:16];
      }

      while (v16);
    }

    v22 = *(v27 + 32);
    if (v22)
    {
      CFRelease(v22);
    }

    objc_autoreleasePoolPop(context);

    *(*(v27 + 40) + 72) = 0;
    *(*(v27 + 40) + 80) = 0;

    *(*(v27 + 40) + 88) = 0;
    *(*(v27 + 40) + 96) = 0;

    *(*(v27 + 40) + 40) = 0;
    *(*(v27 + 40) + 112) = 0;
    objc_storeWeak((*(v27 + 40) + 104), 0);
    a1 = [v26 drain];
  }

  result = MEMORY[0x1865FAAD0](a1);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == a1)
  {
    v3 = objc_opt_self();
    [v3 _registerCoreDataStoreClass:objc_opt_class() forStoreType:@"SQLite"];
    [v3 _registerCoreDataStoreClass:objc_opt_class() forStoreType:@"Binary"];
    [v3 _registerCoreDataStoreClass:objc_opt_class() forStoreType:@"InMemory"];
    [v3 _registerCoreDataStoreClass:objc_opt_class() forStoreType:@"NSXPCStore"];
    v4 = getprogname();
    if (v4)
    {
      if (*v4)
      {
        if (!strncmp("WhatsApp", v4, 8uLL))
        {
          _MergedGlobals_77 = 1;
        }
      }
    }
  }
}

- (NSString)name
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  if (self->_dispatchQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__NSPersistentStoreCoordinator_name__block_invoke;
    v5[3] = &unk_1E6EC1860;
    v5[4] = self;
    v5[5] = &v6;
    [(NSPersistentStoreCoordinator *)self performBlockAndWait:v5];
    v2 = v7[5];
  }

  else
  {
    v2 = [(NSString *)self->_queueLabel copy];
    v7[5] = v2;
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__NSPersistentStoreCoordinator_dealloc__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_set_context(v2, 0);
    dispatch_release(*(a1 + 32));
  }

  v3 = *(a1 + 40);

  _PFDeallocateObject(v3);
}

uint64_t __36__NSPersistentStoreCoordinator_name__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)performBlock:(void *)block
{
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can only use -performBlock: on an NSPersistentStoreCoordinator that was created with a queue." userInfo:0]);
  }

  v5 = malloc_type_malloc(0x28uLL, 0x80040B8603338uLL);
  *v5 = _Block_copy(block);
  v5[1] = CFRetain(self);
  v5[2] = 8199;
  v5[3] = 0;
  v5[4] = 0;
  dispatchQueue = self->_dispatchQueue;

  dispatch_async_f(dispatchQueue, v5, developerSubmittedBlockToNSPersistentStoreCoordinatorPerform);
}

- (void)performBlockAndWait:(void *)block
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can only use -performBlockAndWait: on an NSPersistentStoreCoordinator that was created with a queue." userInfo:0]);
  }

  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
  v13[0] = block;
  v13[1] = self;
  v13[2] = 8196;
  v13[3] = v3;
  v14 = 0;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3;
    while (v6 != self)
    {
      if (v6 == v4)
      {
        goto LABEL_11;
      }

      if (!v4)
      {
        v4 = v6;
      }

      v6 = atomic_load((v6 + 8));
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    v5 = 1;
LABEL_11:
    if (v5)
    {
LABEL_21:
      gutsOfBlockToNSPersistentStoreCoordinatorPerform(v13);
      goto LABEL_23;
    }

LABEL_12:
    v7 = 0;
    v8 = 0;
    v9 = self;
    while (v9 != v3)
    {
      if (v9 == v7)
      {
        goto LABEL_20;
      }

      if (!v7)
      {
        v7 = v9;
      }

      v9 = atomic_load(&v9->_queueOwner);
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    v8 = 1;
LABEL_20:
    if (v8)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
  dispatch_sync_f(self->_dispatchQueue, v13, developerSubmittedBlockToNSPersistentStoreCoordinatorPerform);
LABEL_23:
  v10 = v14;
  if (v14)
  {
    v12 = v14;
    objc_exception_throw(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_routeLightweightBlock:(uint64_t)a3 toStore:
{
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x3052000000;
    v10 = __Block_byref_object_copy__19;
    v11 = __Block_byref_object_dispose__19;
    v12 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__NSPersistentStoreCoordinator__routeLightweightBlock_toStore___block_invoke;
    v6[3] = &unk_1E6EC2B28;
    v6[4] = a1;
    v6[5] = a3;
    v6[7] = &v13;
    v6[8] = &v7;
    v6[6] = a2;
    _perform_0(a1, v6);
    if (*(v14 + 24) == 1)
    {
      if (v8[5])
      {
        v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        (*(a2 + 16))(a2, v8[5]);

        [v4 drain];
        v5 = 0;
      }
    }

    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v13, 8);
  }
}

void __63__NSPersistentStoreCoordinator__routeLightweightBlock_toStore___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 24) & 2) != 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v6 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    if ([*(*(a1 + 32) + 48) indexOfObjectIdenticalTo:*(a1 + 40)] != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(*(a1 + 64) + 8) + 40) = *(a1 + 40);
    }

    os_unfair_lock_unlock((*(a1 + 32) + 32));
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      goto LABEL_15;
    }

    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v8 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v10 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else if (!v10)
      {
        goto LABEL_13;
      }

      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) _persistentStoreCoordinator];
      *buf = 134218240;
      v16 = v13;
      v17 = 2048;
      v18 = v14;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  API Misuse: Attempt to serialize store access on non-owning coordinator (PSC = %p, store PSC = %p)\n", buf, 0x16u);
    }

LABEL_13:
    _NSCoreDataLog_console(1, " API Misuse: Attempt to serialize store access on non-owning coordinator (PSC = %p, store PSC = %p)", *(a1 + 32), [*(a1 + 40) _persistentStoreCoordinator]);
    objc_autoreleasePoolPop(v7);
    if ((dword_1ED4BEEC0 & 0x1000000) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v11 = *(a1 + 40);
      (*(*(a1 + 48) + 16))();
    }

LABEL_15:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(*(a1 + 48) + 16);
  v5 = *MEMORY[0x1E69E9840];

  v4();
}

- (void)_routeHeavyweightBlock:(unint64_t)a1
{
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__19;
    v10 = __Block_byref_object_dispose__19;
    v11 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__NSPersistentStoreCoordinator__routeHeavyweightBlock___block_invoke;
    v5[3] = &unk_1E6EC2B50;
    v5[6] = &v12;
    v5[7] = &v6;
    v5[4] = a1;
    v5[5] = a2;
    _perform_0(a1, v5);
    if (*(v13 + 24) == 1)
    {
      if (v7[5])
      {
        v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        (*(a2 + 16))(a2, v7[5]);

        [v3 drain];
        v4 = 0;
      }
    }

    _Block_object_dispose(&v6, 8);
    _Block_object_dispose(&v12, 8);
  }
}

void __55__NSPersistentStoreCoordinator__routeHeavyweightBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  if ((*(v2 + 24) & 2) != 0)
  {
    *(*(a1[6] + 8) + 24) = 1;
    v4 = a1[4];
    os_unfair_lock_lock_with_options();
    *(*(a1[7] + 8) + 40) = [*(a1[4] + 48) mutableCopy];
    v5 = (a1[4] + 32);

    os_unfair_lock_unlock(v5);
  }

  else
  {
    v3 = [(NSPersistentStoreCoordinator *)v2 _retainedPersistentStores];
    (*(a1[5] + 16))();
  }
}

- (void)setName:(NSString *)name
{
  v4 = [(NSString *)name copy];
  v5 = v4;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__NSPersistentStoreCoordinator_setName___block_invoke;
    v6[3] = &unk_1E6EC1600;
    v6[4] = self;
    v6[5] = v4;
    [(NSPersistentStoreCoordinator *)self performBlockAndWait:v6];
  }

  else
  {

    self->_queueLabel = v5;
  }
}

void __40__NSPersistentStoreCoordinator_setName___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];

  v2 = *(a1 + 40);
  *(*(a1 + 32) + 56) = v2;
  __str[0] = 0;
  v3 = *(a1 + 32);
  if (v2)
  {
    snprintf(__str, 0x1FFuLL, "NSPersistentStoreCoordinator %p: ", *(a1 + 32));
    [*(a1 + 40) UTF8String];
    __strlcat_chk();
  }

  else
  {
    snprintf(__str, 0x1FFuLL, "NSPersistentStoreCoordinator %p", *(a1 + 32));
  }

  v4 = strdup(__str);
  __dmb(0xBu);
  v5 = *(*(*(a1 + 32) + 16) + *(MEMORY[0x1E69E9790] + 2));
  v6 = v5;
  atomic_compare_exchange_strong((*(*(a1 + 32) + 16) + *(MEMORY[0x1E69E9790] + 2)), &v6, v4);
  if (v6 != v5)
  {
    v7 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v8 = __40__NSPersistentStoreCoordinator_setName___block_invoke_2;
    v5 = v4;
    goto LABEL_8;
  }

  if (v5)
  {
    v7 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v8 = __40__NSPersistentStoreCoordinator_setName___block_invoke_3;
LABEL_8:
    v7[2] = v8;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)_registerCoreDataStoreClass:(Class)a3 forStoreType:(id)a4
{
  if (!qword_1ED4BEA70)
  {
    qword_1ED4BEA70 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  }

  v6 = [MEMORY[0x1E696B098] valueWithPointer:a3];
  v7 = qword_1ED4BEA70;

  [v7 setObject:v6 forKey:a4];
}

+ (void)registerStoreClass:(Class)storeClass forStoreType:(NSString *)storeType
{
  if (!storeType)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot register a store class using a 'nil' type." userInfo:0]);
  }

  objc_sync_enter(a1);
  if (qword_1ED4BEA70 && [qword_1ED4BEA70 objectForKey:storeType])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store type '%@' is reserved for Core Data, and cannot be re-registered.", storeType];
    objc_exception_throw([v9 exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  v7 = qword_1ED4BEA78;
  if (qword_1ED4BEA78)
  {
    if (storeClass)
    {
LABEL_6:
      v8 = [MEMORY[0x1E696B098] valueWithPointer:storeClass];
      [qword_1ED4BEA78 setObject:v8 forKey:storeType];
      goto LABEL_9;
    }
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    qword_1ED4BEA78 = v7;
    if (storeClass)
    {
      goto LABEL_6;
    }
  }

  [v7 removeObjectForKey:storeType];
LABEL_9:

  objc_sync_exit(a1);
}

+ (NSDictionary)registeredStoreTypes
{
  objc_sync_enter(a1);
  if (qword_1ED4BEA78)
  {
    v3 = [qword_1ED4BEA78 mutableCopy];
    [v3 addEntriesFromDictionary:qword_1ED4BEA70];
  }

  else
  {
    v3 = [qword_1ED4BEA70 copy];
  }

  objc_sync_exit(a1);

  return v3;
}

+ (const)_classForPersistentStoreAtURL:(uint64_t)a1
{
  v10[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (![a2 isFileURL])
  {
    goto LABEL_7;
  }

  result = [objc_msgSend(a2 "path")];
  if (result)
  {
    v4 = open(result, 0);
    if (v4 < 0)
    {
      goto LABEL_7;
    }

    v5 = v4;
    v6 = read(v4, v10, 8uLL);
    close(v5);
    if (v6 != 8)
    {
      goto LABEL_7;
    }

    if (v10[0] == 0x66206574694C5153)
    {
      v8 = off_1E6EC0B78;
    }

    else
    {
      if (v10[0] != 0x6174614465726F43)
      {
LABEL_7:
        result = 0;
        goto LABEL_8;
      }

      v8 = off_1E6EC0958;
    }

    v9 = *v8;
    result = objc_opt_class();
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)_storeClassForStoreType:(uint64_t)a1
{
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v4 = [qword_1ED4BEA70 objectForKey:a2];
  if (!v4)
  {
    v4 = [qword_1ED4BEA78 objectForKey:a2];
  }

  objc_sync_exit(v3);

  return [v4 pointerValue];
}

+ (NSDictionary)metadataForPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url error:(NSError *)error
{
  if ([@"NSXPCStore" isEqual:?])
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"This API is not available on the NSXPCStore" code:3328 userInfo:0];
    }

    return 0;
  }

  else
  {

    return [a1 metadataForPersistentStoreOfType:storeType URL:url options:0 error:error];
  }
}

+ (NSDictionary)metadataForPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)error
{
  v51 = *MEMORY[0x1E69E9840];
  if (![@"NSXPCStore" isEqual:?])
  {
    if ([(NSString *)storeType length])
    {
      v15 = storeType;
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_opt_self();
    if (!url)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL: nil" userInfo:0]);
    }

    v17 = v16;
    objc_opt_class();
    objc_opt_class();
    v18 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v49 = 0;
    if ((_MergedGlobals_77 & 1) != 0 || [(NSString *)v15 isEqualToString:@"NSXPCStore"])
    {
      v19 = 0;
    }

    else
    {
      v19 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Retrieving metadata for persistent store"];
    }

    v44 = v19;
    if ([(NSURL *)url isFileURL])
    {
      v21 = [(NSURL *)url path];
      if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
      {
        if (error)
        {
          v26 = objc_alloc(MEMORY[0x1E695DF20]);
          v27 = [v26 initWithObjectsAndKeys:{url, *MEMORY[0x1E696A998], 0}];
          v49 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v27];
          *error = v49;
        }

        v28 = 0;
        v29 = 0;
        goto LABEL_54;
      }

      memset(&v50, 0, sizeof(v50));
      if (stat([(NSString *)v21 fileSystemRepresentation], &v50))
      {
        v22 = 1;
      }

      else
      {
        v22 = v50.st_size == 0;
      }

      v23 = !v22;
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v23 = 1;
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    v24 = [NSPersistentStoreCoordinator _storeClassForStoreType:v15];
    if (v24)
    {
LABEL_29:
      if (((v24 != 0) & v23) != 1 || ((objc_opt_respondsToSelector() & 1) == 0 ? (v25 = [v24 metadataForPersistentStoreWithURL:url error:&v49]) : (v25 = objc_msgSend(v24, "metadataForPersistentStoreWithURL:options:error:", url, options, &v49)), (v28 = v25) == 0))
      {
        if ((([(NSString *)v15 length]== 0) & v23) == 1)
        {
          objc_sync_enter(v17);
          v30 = [qword_1ED4BEA78 allKeys];
          objc_sync_exit(v17);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v31 = [v30 countByEnumeratingWithState:&v45 objects:&v50 count:16];
          if (v31)
          {
            v43 = v18;
            v32 = *v46;
            v33 = &selRef_initWithContainerIdentifier_result_;
            while (2)
            {
              v34 = 0;
              v35 = v33[430];
              do
              {
                if (*v46 != v32)
                {
                  objc_enumerationMutation(v30);
                }

                v36 = *(*(&v45 + 1) + 8 * v34);
                v49 = 0;
                v37 = [NSPersistentStoreCoordinator _storeClassForStoreType:v36];
                if (objc_opt_respondsToSelector())
                {
                  v38 = [v37 metadataForPersistentStoreWithURL:url options:options error:&v49];
                }

                else
                {
                  v38 = [v37 metadataForPersistentStoreWithURL:url error:&v49];
                }

                v28 = v38;
                if (v28)
                {
                  v49 = 0;
                  v29 = 1;
                  goto LABEL_53;
                }

                ++v34;
              }

              while (v31 != v34);
              v31 = [v30 countByEnumeratingWithState:&v45 objects:&v50 count:16];
              v29 = 1;
              v33 = &selRef_initWithContainerIdentifier_result_;
              if (v31)
              {
                continue;
              }

              break;
            }

            v28 = 0;
LABEL_53:
            v18 = v43;
LABEL_54:
            if ((_MergedGlobals_77 & 1) == 0)
            {
              [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v44];
            }

            v39 = v49;
            [v18 drain];
            v40 = v49;
            if (v29)
            {
              if (error && !v28)
              {
                v41 = v49;
                if (!v49)
                {
                  v41 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:0];
                }

                *error = v41;
              }

              result = v28;
              goto LABEL_64;
            }

            goto LABEL_63;
          }
        }

        v28 = 0;
      }

      v29 = 1;
      goto LABEL_54;
    }

LABEL_28:
    v24 = [NSPersistentStoreCoordinator _classForPersistentStoreAtURL:?];
    goto LABEL_29;
  }

  v10 = [[NSXPCStore alloc] initWithPersistentStoreCoordinator:0 configurationName:0 URL:url options:options];
  if (v10)
  {
    v11 = v10;
    if ([(NSXPCStore *)v10 loadMetadata:error])
    {
      v12 = [(NSXPCStore *)v11 metadata];

      v13 = *MEMORY[0x1E69E9840];
      return v12;
    }

    goto LABEL_63;
  }

  if (!error)
  {
LABEL_63:
    result = 0;
    goto LABEL_64;
  }

  v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:0];
  result = 0;
  *error = v20;
LABEL_64:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)setMetadata:(NSDictionary *)metadata forPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)error
{
  if ([(NSString *)storeType isEqualToString:@"NSXPCStore"])
  {
    v12 = [[NSXPCStore alloc] initWithPersistentStoreCoordinator:0 configurationName:0 URL:url options:options];
    if (v12)
    {
      v13 = v12;
      v18 = 0;
      if ([(NSXPCStore *)v12 loadMetadata:&v18])
      {
        [(NSXPCStore *)v13 setMetadata:metadata];
        v14 = [(NSXPCStore *)v13 executeRequest:objc_alloc_init(NSSaveChangesRequest) withContext:0 error:error];

        return [v14 BOOLValue];
      }

      if (error)
      {
        if (v18)
        {
          v17 = v18;
        }

        else
        {
          v17 = @"Unknown";
        }

        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v17, *MEMORY[0x1E696AA08])}];
      }
    }

    else if (error)
    {
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:0];
      result = 0;
      *error = v16;
      return result;
    }

    return 0;
  }

  else
  {

    return [NSPersistentStoreCoordinator _setMetadata:storeType forPersistentStoreOfType:url URL:options options:error error:?];
  }
}

+ (uint64_t)_setMetadata:(void *)a3 forPersistentStoreOfType:(void *)a4 URL:(uint64_t)a5 options:(void *)a6 error:
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = objc_opt_self();
  if (!a4)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL: nil" userInfo:0]);
  }

  v12 = v11;
  objc_opt_class();
  objc_opt_class();
  v13 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v38 = 0;
  v33 = a6;
  v32 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Setting metadata for persistent store"];
  if (a3 && (v14 = [NSPersistentStoreCoordinator _storeClassForStoreType:a3]) != 0 || (v14 = [NSPersistentStoreCoordinator _classForPersistentStoreAtURL:a4]) != 0)
  {
    v15 = (objc_opt_respondsToSelector() & 1) != 0 ? [v14 setMetadata:a2 forPersistentStoreWithURL:a4 options:a5 error:&v38] : objc_msgSend(v14, "setMetadata:forPersistentStoreWithURL:error:", a2, a4, &v38);
    if (v15)
    {
      v16 = 1;
LABEL_13:
      v17 = v33;
      goto LABEL_29;
    }
  }

  v31 = v13;
  if (![a3 length])
  {
    objc_sync_enter(v12);
    v19 = [qword_1ED4BEA78 allKeys];
    objc_sync_exit(v12);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v20)
    {
      v21 = *v35;
      v22 = &selRef_numberWithUnsignedLong_;
      while (2)
      {
        v23 = 0;
        v24 = v22[425];
        do
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v34 + 1) + 8 * v23);
          v38 = 0;
          v26 = [NSPersistentStoreCoordinator _storeClassForStoreType:v25];
          if (objc_opt_respondsToSelector())
          {
            v27 = [v26 setMetadata:a2 forPersistentStoreWithURL:a4 options:a5 error:&v38];
          }

          else
          {
            v27 = [v26 setMetadata:a2 forPersistentStoreWithURL:a4 error:&v38];
          }

          if (v27)
          {
            v16 = 1;
            v17 = v33;
            goto LABEL_28;
          }

          ++v23;
        }

        while (v20 != v23);
        v20 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
        v22 = &selRef_numberWithUnsignedLong_;
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = v33;
  if (v33)
  {
    v13 = v31;
    v18 = v38;
    v16 = 0;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_28:
  v13 = v31;
LABEL_29:
  [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v32];
  [v13 drain];
  if (v17)
  {
    v28 = v16;
  }

  else
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    *v17 = v38;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)setMetadata:(NSDictionary *)metadata forPersistentStore:(NSPersistentStore *)store
{
  if ([(NSPersistentStore *)store isReadOnly])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set metadata in read-only store." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", store), @"NSAffectedStoresErrorKey", 0)}]);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__NSPersistentStoreCoordinator_setMetadata_forPersistentStore___block_invoke;
  v7[3] = &unk_1E6EC2B78;
  v7[4] = metadata;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v7 toStore:store];
}

- (NSDictionary)metadataForPersistentStore:(NSPersistentStore *)store
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__NSPersistentStoreCoordinator_metadataForPersistentStore___block_invoke;
  v5[3] = &unk_1E6EC2BA0;
  v5[4] = &v6;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v5 toStore:store];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __59__NSPersistentStoreCoordinator_metadataForPersistentStore___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 metadata];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  return v3;
}

- (uint64_t)_hasHistoryTracking:(uint64_t)result
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    result = [a2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v8;
      while (2)
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(a2);
          }

          if ([objc_msgSend(*(*(&v7 + 1) + 8 * v5) "options")])
          {
            result = 1;
            goto LABEL_12;
          }

          ++v5;
        }

        while (v3 != v5);
        result = [a2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        v3 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __39__NSPersistentStoreCoordinator_dealloc__block_invoke_313(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(v2 + 56) = 0;
  v3 = *(v2 + 16);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 712);
  if (v5 == v2)
  {
    *(StatusReg + 712) = 0;
  }

  else
  {
    if (v5)
    {
      v6 = atomic_load((v5 + 8));
    }

    else
    {
      v6 = 0;
    }

    if (v6 == v2)
    {
      _PF_actor_set_owner(v6, v5, 0);
    }
  }

  do
  {
    v7 = atomic_load((v2 + 8));
  }

  while (!_PF_actor_set_owner(v7, v2, 0));
  __dmb(0xBu);
  *(v2 + 16) = 0;
  global_queue = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__NSPersistentStoreCoordinator_dealloc__block_invoke_2;
  v10[3] = &unk_1E6EC2720;
  v9 = *(a1 + 32);
  v10[4] = v3;
  v10[5] = v9;
  dispatch_async(global_queue, v10);
}

- (NSPersistentStoreCoordinator)init
{
  v3 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
  {
    goto LABEL_7;
  }

  if (_pflogging_catastrophic_mode)
  {
    LogStream = _PFLogGetLogStream(1);
    if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 0;
    v5 = "CoreData: error: client failed to call designated initializer on NSPersistentStoreCoordinator\n";
    v6 = &v12;
  }

  else
  {
    LogStream = _PFLogGetLogStream(2);
    if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v11) = 0;
    v5 = "CoreData: warning: client failed to call designated initializer on NSPersistentStoreCoordinator\n";
    v6 = &v11;
  }

  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v5, v6, 2u);
LABEL_7:
  if (_pflogging_catastrophic_mode)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  _NSCoreDataLog_console(v7, "client failed to call designated initializer on NSPersistentStoreCoordinator", v11);
  objc_autoreleasePoolPop(v3);
  v8 = objc_alloc_init(NSManagedObjectModel);
  v9 = [(NSPersistentStoreCoordinator *)self initWithManagedObjectModel:v8];

  return v9;
}

- (NSPersistentStoreCoordinator)initWithManagedObjectModel:(NSManagedObjectModel *)model
{
  v15 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  v13.receiver = self;
  v13.super_class = NSPersistentStoreCoordinator;
  v5 = [(NSPersistentStoreCoordinator *)&v13 init];
  if (v5)
  {
    if (!model)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot create an NSPersistentStoreCoordinator with a nil model" userInfo:0]);
    }

    v6 = objc_autoreleasePoolPush();
    v5->_persistentStores = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v5->_miniLock._os_unfair_lock_opaque = 0;
    v5->_managedObjectModel = model;
    __str[0] = 0;
    v7 = [(NSPersistentStoreCoordinator *)v5 name];
    if (v7)
    {
      snprintf(__str, 0x1FFuLL, "NSPersistentStoreCoordinator %p: ", v5);
      [(NSString *)v7 UTF8String];
      __strlcat_chk();
    }

    else
    {
      snprintf(__str, 0x1FFuLL, "NSPersistentStoreCoordinator %p", v5);
    }

    flags = v5->_flags;
    if ((*&flags >> 2))
    {
      v9 = dispatch_queue_attr_make_with_qos_class(0, (*&flags >> 2), 0);
    }

    else
    {
      v9 = 0;
    }

    v10 = dispatch_queue_create(__str, v9);
    dispatch_set_context(v10, v5);
    v5->_dispatchQueue = v10;
    [(NSManagedObjectModel *)v5->_managedObjectModel _setIsEditable:0];
    *&v5->_flags |= 2u;
    v5->_modelMap = [[_PFModelMap alloc] initWithClientModel:?];
    v5->_codableAdapterRegistry = objc_alloc_init(NSCoreDataCodableAdapterRegistry);
    objc_autoreleasePoolPop(v6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)_checkForSkewedEntityHashes:(uint64_t)result metadata:(void *)a2
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    [objc_msgSend(a2 objectForKey:{@"NSPersistenceFrameworkVersion", "floatValue"}];
    if (v4 <= 386)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = [v3 managedObjectModel];
      result = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (result)
      {
        v6 = result;
        v7 = *v11;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v5);
            }

            if (([(NSEntityDescription *)*(*(&v10 + 1) + 8 * i) _hasPotentialHashSkew]& 1) != 0)
            {
              result = [-[NSManagedObjectModel _entityVersionHashesByNameInStyle:](objc_msgSend(v3 "managedObjectModel")];
              goto LABEL_14;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
          result = 0;
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
      result = 0;
    }
  }

LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_checkForTombstoneSkew:(uint64_t)a3 metadata:(uint64_t)a4 configuration:
{
  if (!a1)
  {
    return 0;
  }

  v7 = [a2 mutableCopy];
  v8 = v7;
  if (v7)
  {
    [(NSManagedObjectModel *)v7 _traverseTombstonesAndMark:?];
  }

  if ([v8 isConfiguration:a4 compatibleWithStoreMetadata:a3])
  {
    v9 = 1;
  }

  else
  {

    v10 = [a2 mutableCopy];
    v8 = v10;
    if (v10)
    {
      [(NSManagedObjectModel *)v10 _traverseTombstonesAndMark:?];
    }

    v9 = [v8 isConfiguration:a4 compatibleWithStoreMetadata:a3];
  }

  return v9;
}

- (id)_doAddPersistentStoreWithDescription:(void *)a3 privateCopy:(int)a4 completeOnMainThread:(uint64_t)a5 withHandler:
{
  v60 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_24;
  }

  v9 = result;
  v48 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v50 = 0;
  if ([objc_msgSend(a3 "mirroringOptions")])
  {
    v10 = [a3 mirroringDelegate];
  }

  else
  {
    if (![a3 cloudKitContainerOptions])
    {
      v10 = 0;
      v47 = 1;
      goto LABEL_13;
    }

    [a3 cloudKitContainerOptions];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = -[NSCloudKitMirroringDelegate initWithOptions:]([NSCloudKitMirroringDelegate alloc], "initWithOptions:", [a3 cloudKitContainerOptions]);
    }

    else
    {
      v11 = -[NSCloudKitMirroringDelegate initWithCloudKitContainerOptions:]([NSCloudKitMirroringDelegate alloc], "initWithCloudKitContainerOptions:", [a3 cloudKitContainerOptions]);
    }

    v10 = v11;
    [a3 setMirroringDelegate:v11];
  }

  if (!v10)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Use of the mirroring options requires that a mirroring delegate also be provided. The following options were set, but a mirroring delegate was not found at '%@':\n%@", @"NSPersistentStoreMirroringDelegateOptionKey", objc_msgSend(a3, "mirroringOptions")];
    v14 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A588];
    v53 = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v16 = [v14 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v15];
    v10 = 0;
    v50 = v16;
    goto LABEL_17;
  }

  if (-[NSCloudKitMirroringDelegate validateManagedObjectModel:forUseWithStoreWithDescription:error:](v10, "validateManagedObjectModel:forUseWithStoreWithDescription:error:", [v9 managedObjectModel], a3, &v50))
  {
    v47 = 0;
LABEL_13:
    v12 = [v9 addPersistentStoreWithType:objc_msgSend(a3 configuration:"type") URL:objc_msgSend(a3 options:"configuration") error:{objc_msgSend(a3, "URL"), objc_msgSend(a3, "options"), &v50}];
    if (v12)
    {
      goto LABEL_14;
    }

    v22 = v50;
    v23 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v24 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v26 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v24)
      {
        if (!v26)
        {
          goto LABEL_30;
        }
      }

      else if (!v26)
      {
        goto LABEL_30;
      }

      *buf = 138412802;
      v55 = v9;
      v56 = 2048;
      v57 = a3;
      v58 = 2112;
      v59 = v22;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@: Attempting recovery from error encountered during addPersistentStore: %p %@\n", buf, 0x20u);
    }

LABEL_30:
    _NSCoreDataLog_console(1, "%@: Attempting recovery from error encountered during addPersistentStore: %p %@", v9, a3, v22);
    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E696AC08] defaultManager];
    v46 = [objc_msgSend(objc_msgSend(a3 "URL")];
    v28 = [v22 domain];
    if ([v28 isEqualToString:*MEMORY[0x1E696A250]])
    {
      if ([v22 code] != 512 && objc_msgSend(v22, "code") != 4 && objc_msgSend(v22, "code") != 514)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v29 = [v22 domain];
      if (![v29 isEqualToString:*MEMORY[0x1E696A798]] || objc_msgSend(v22, "code") != 2)
      {
        goto LABEL_17;
      }
    }

    if (([a3 isReadOnly] & 1) == 0)
    {
      v30 = [v27 fileExistsAtPath:v46];
      context = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (v30)
      {
        if (_pflogging_enable_oslog >= 1)
        {
          v31 = _pflogging_catastrophic_mode;
          v32 = _PFLogGetLogStream(1);
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
          if (v31)
          {
            if (v33)
            {
              *buf = 0;
LABEL_74:
              _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: error: During recovery, parent directory path reported to exist\n", buf, 2u);
            }
          }

          else if (v33)
          {
            *buf = 0;
            goto LABEL_74;
          }
        }

        _NSCoreDataLog_console(1, "During recovery, parent directory path reported to exist");
        objc_autoreleasePoolPop(context);
        goto LABEL_57;
      }

      if (_pflogging_enable_oslog >= 1)
      {
        v34 = _pflogging_catastrophic_mode;
        v35 = _PFLogGetLogStream(1);
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
        if (v34)
        {
          if (!v36)
          {
            goto LABEL_50;
          }

          *buf = 0;
        }

        else
        {
          if (!v36)
          {
            goto LABEL_50;
          }

          *buf = 0;
        }

        _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: error: During recovery, parent directory path reported as missing\n", buf, 2u);
      }

LABEL_50:
      _NSCoreDataLog_console(1, "During recovery, parent directory path reported as missing");
      objc_autoreleasePoolPop(context);
      v51 = 0;
      if ([v27 createDirectoryAtPath:v46 withIntermediateDirectories:1 attributes:0 error:&v51])
      {
        goto LABEL_57;
      }

      v37 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v38 = _pflogging_catastrophic_mode;
        v39 = _PFLogGetLogStream(1);
        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
        if (v38)
        {
          if (v40)
          {
            goto LABEL_78;
          }
        }

        else if (v40)
        {
LABEL_78:
          v44 = [v22 userInfo];
          *buf = 138412802;
          v55 = v46;
          v56 = 2112;
          v57 = v22;
          v58 = 2112;
          v59 = v44;
          _os_log_error_impl(&dword_18565F000, v39, OS_LOG_TYPE_ERROR, "CoreData: error: During recovery, failed to create directory structure '%@' with error %@ and userInfo %@\n", buf, 0x20u);
        }
      }

      _NSCoreDataLog_console(1, "During recovery, failed to create directory structure '%@' with error %@ and userInfo %@", v46, v22, [v22 userInfo]);
      objc_autoreleasePoolPop(v37);
LABEL_57:
      v50 = 0;
      v12 = [v9 addPersistentStoreWithType:objc_msgSend(a3 configuration:"type") URL:objc_msgSend(a3 options:"configuration") error:{objc_msgSend(a3, "URL"), objc_msgSend(a3, "options"), &v50}];
      v41 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (v12)
      {
        if (_pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v42 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v55 = a3;
LABEL_72:
              _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, "CoreData: error: Recovery attempt while adding %@ was successful!\n", buf, 0xCu);
            }
          }

          else
          {
            v42 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v55 = a3;
              goto LABEL_72;
            }
          }
        }

        _NSCoreDataLog_console(1, "Recovery attempt while adding %@ was successful!", a3);
        objc_autoreleasePoolPop(v41);
LABEL_14:
        if ((v47 & 1) == 0)
        {
          [(NSCloudKitMirroringDelegate *)v10 persistentStoreCoordinator:v9 didSuccessfullyAddPersistentStore:v12 withDescription:a3];
        }

        goto LABEL_17;
      }

      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_69;
      }

      if (_pflogging_catastrophic_mode)
      {
        v43 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_77;
        }
      }

      else
      {
        v43 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
LABEL_77:
          *buf = 138412546;
          v55 = a3;
          v56 = 2112;
          v57 = v50;
          _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error: Recovery attempt while adding %@ FAILED with error %@\n", buf, 0x16u);
        }
      }

LABEL_69:
      _NSCoreDataLog_console(1, "Recovery attempt while adding %@ FAILED with error %@", a3, v50);
      objc_autoreleasePoolPop(v41);
    }
  }

LABEL_17:
  v17 = [MEMORY[0x1E696AF00] isMainThread];
  if (([a3 shouldInvokeCompletionHandlerConcurrently] | v17 ^ a4))
  {
    v18 = v50;
    v19 = a2;
    if (a4)
    {
      global_queue = MEMORY[0x1E69E96A0];
    }

    else
    {
      global_queue = dispatch_get_global_queue(0, 0);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __114__NSPersistentStoreCoordinator__doAddPersistentStoreWithDescription_privateCopy_completeOnMainThread_withHandler___block_invoke;
    block[3] = &unk_1E6EC2FF0;
    block[4] = a2;
    block[5] = v50;
    block[6] = a5;
    dispatch_async(global_queue, block);
  }

  else
  {
    (*(a5 + 16))(a5, a2, v50);
  }

  [v48 drain];
  result = 0;
LABEL_24:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void __114__NSPersistentStoreCoordinator__doAddPersistentStoreWithDescription_privateCopy_completeOnMainThread_withHandler___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  [v2 drain];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)addPersistentStoreWithDescription:(NSPersistentStoreDescription *)storeDescription completionHandler:(void *)block
{
  v7 = [(NSPersistentStoreDescription *)storeDescription copy];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8 = ![(NSPersistentStoreDescription *)storeDescription shouldInvokeCompletionHandlerConcurrently];
  }

  else
  {
    v8 = 0;
  }

  if ([v7 shouldAddStoreAsynchronously])
  {
    global_queue = dispatch_get_global_queue(0, 0);
    blocka[0] = MEMORY[0x1E69E9820];
    blocka[1] = 3221225472;
    blocka[2] = __84__NSPersistentStoreCoordinator_addPersistentStoreWithDescription_completionHandler___block_invoke;
    blocka[3] = &unk_1E6EC2BC8;
    blocka[4] = self;
    blocka[5] = storeDescription;
    v11 = v8;
    blocka[6] = v7;
    blocka[7] = block;
    dispatch_async(global_queue, blocka);
  }

  else
  {
    [(NSPersistentStoreCoordinator *)self _doAddPersistentStoreWithDescription:v7 privateCopy:v8 completeOnMainThread:block withHandler:?];
  }
}

- (NSPersistentStore)addPersistentStoreWithType:(NSString *)storeType configuration:(NSString *)configuration URL:(NSURL *)storeURL options:(NSDictionary *)options error:(NSError *)error
{
  v80 = *MEMORY[0x1E69E9840];
  v68 = 0;
  v69 = &v68;
  v70 = 0x3052000000;
  v71 = __Block_byref_object_copy__19;
  v72 = __Block_byref_object_dispose__19;
  v73 = configuration;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3052000000;
  v65 = __Block_byref_object_copy__19;
  v66 = __Block_byref_object_dispose__19;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3052000000;
  v59 = __Block_byref_object_copy__19;
  v60 = __Block_byref_object_dispose__19;
  v61 = 0;
  v13 = [(NSPersistentStoreCoordinator *)self managedObjectModel];
  v14 = [-[NSDictionary objectForKey:](options objectForKey:{@"NSPersistentStoreForceLightweightMigrationOption", "BOOLValue"}];
  v15 = v14;
  if (v14)
  {
    v16 = [(NSDictionary *)options mutableCopy];
    [v16 removeObjectForKey:@"NSPersistentStoreForceLightweightMigrationOption"];
    options = [v16 copy];
  }

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke;
  v54[3] = &unk_1E6EC2BF0;
  v54[4] = options;
  v54[5] = self;
  v54[6] = v13;
  v54[7] = storeType;
  v54[8] = storeURL;
  v54[9] = &v56;
  v54[10] = &v68;
  v54[11] = &v62;
  v54[12] = error;
  v55 = v15;
  _perform_0(self, v54);
  v17 = v63[5];
  if (v57[5])
  {
    v18 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_9;
    }

    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v51 = NSStringFromSelector(a2);
    v50 = [v57[5] domain];
    v47 = [v57[5] code];
    *buf = 138412802;
    v75 = v51;
    v76 = 2112;
    v77 = v50;
    v78 = 2048;
    v79 = v47;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@ returned error %@ (%ld)\n", buf, 0x20u);
LABEL_9:
    v20 = NSStringFromSelector(a2);
    v21 = [v57[5] domain];
    _NSCoreDataLog_console(1, "%@ returned error %@ (%ld)", v20, v21, [v57[5] code]);
    objc_autoreleasePoolPop(v18);
    if (![objc_msgSend(v57[5] "userInfo")])
    {
      goto LABEL_16;
    }

    v22 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v23 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
LABEL_88:
          _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: userInfo:\n", buf, 2u);
        }
      }

      else
      {
        v23 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          goto LABEL_88;
        }
      }
    }

    _NSCoreDataLog_console(1, "userInfo:");
    objc_autoreleasePoolPop(v22);
    [objc_msgSend(v57[5] "userInfo")];
LABEL_16:
    v24 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_21;
    }

    if (_pflogging_catastrophic_mode)
    {
      v25 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v75 = storeType;
    }

    else
    {
      v25 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v75 = storeType;
    }

    _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: storeType: %@\n", buf, 0xCu);
LABEL_21:
    _NSCoreDataLog_console(1, "storeType: %@", storeType);
    objc_autoreleasePoolPop(v24);
    v26 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_26;
    }

    if (_pflogging_catastrophic_mode)
    {
      v27 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v28 = v69[5];
      *buf = 138412290;
      v75 = v28;
    }

    else
    {
      v27 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v48 = v69[5];
      *buf = 138412290;
      v75 = v48;
    }

    _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error: configuration: %@\n", buf, 0xCu);
LABEL_26:
    _NSCoreDataLog_console(1, "configuration: %@", v69[5]);
    objc_autoreleasePoolPop(v26);
    v29 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_31;
    }

    if (_pflogging_catastrophic_mode)
    {
      v30 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 138412290;
      v75 = storeURL;
    }

    else
    {
      v30 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 138412290;
      v75 = storeURL;
    }

    _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error: URL: %@\n", buf, 0xCu);
LABEL_31:
    _NSCoreDataLog_console(1, "URL: %@", storeURL);
    objc_autoreleasePoolPop(v29);
    if ([(NSDictionary *)options count])
    {
      v31 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v32 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: error: options:\n", buf, 2u);
          }
        }

        else
        {
          v33 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v33, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: options:\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v34 = 1;
      }

      else
      {
        v34 = 4;
      }

      _NSCoreDataLog_console(v34, "options:");
      objc_autoreleasePoolPop(v31);
      [(NSDictionary *)options enumerateKeysAndObjectsUsingBlock:&__block_literal_global_423];
    }

    if ([v57[5] code] != 134130 && objc_msgSend(v57[5], "code") != 134020)
    {
      goto LABEL_51;
    }

    v35 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v36 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_86;
        }
      }

      else
      {
        v36 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
LABEL_86:
          v49 = [(NSManagedObjectModel *)[(NSPersistentStoreCoordinator *)self managedObjectModel] entityVersionHashesByName];
          *buf = 138412290;
          v75 = v49;
          _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: error: NSPersistentStoreCoordinator's current model hashes are %@\n", buf, 0xCu);
        }
      }
    }

    _NSCoreDataLog_console(1, "NSPersistentStoreCoordinator's current model hashes are %@", [(NSManagedObjectModel *)[(NSPersistentStoreCoordinator *)self managedObjectModel] entityVersionHashesByName]);
    objc_autoreleasePoolPop(v35);
LABEL_51:
    v37 = v57[5];
    if (error)
    {
      *error = v37;
    }

    else
    {

      v57[5] = 0;
    }
  }

  if (v63[5])
  {
    v38 = [(NSDictionary *)options valueForKey:@"NSCoreDataCoreSpotlightExporter"];
    if (v38)
    {
      [(NSCoreDataCoreSpotlightDelegate *)v38 _initializePersistentStore];
    }

    if ([objc_msgSend(v63[5] "type")])
    {
      [(NSSQLCore *)v63[5] _initializeQueryGenerationConnectionForProtectionClasses];
    }

    if (([v63[5] isReadOnly] & 1) == 0 && objc_msgSend(objc_msgSend(objc_msgSend(v63[5], "metadata"), "objectForKey:", @"NSPersistentStoreRebuildIndicies"), "BOOLValue"))
    {
      v39 = getprogname();
      if (v39 && (!strncmp("assetsd", v39, 7uLL) || !strncmp("photolibraryd", v39, 0xDuLL)))
      {
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_430;
        v53[3] = &unk_1E6EC1330;
        v53[4] = self;
        v53[5] = &v62;
        [(NSPersistentStoreCoordinator *)self performBlockAndWait:v53];
      }

      else if ([(NSDictionary *)options valueForKey:@"NSPersistentStoreCoordinatorIsMigratingStoreWithStagedMigrationOptionKey"])
      {
        v40 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v41 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v41, OS_LOG_TYPE_ERROR, "CoreData: error: Deferring index repair until after migration is complete (NSPersistentStoreCoordinatorIsMigratingStoreWithStagedMigrationOptionKey is set).\n", buf, 2u);
            }
          }

          else
          {
            v42 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v42, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Deferring index repair until after migration is complete (NSPersistentStoreCoordinatorIsMigratingStoreWithStagedMigrationOptionKey is set).\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v43 = 1;
        }

        else
        {
          v43 = 4;
        }

        _NSCoreDataLog_console(v43, "Deferring index repair until after migration is complete (NSPersistentStoreCoordinatorIsMigratingStoreWithStagedMigrationOptionKey is set).");
        objc_autoreleasePoolPop(v40);
      }

      else
      {
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_2;
        v52[3] = &unk_1E6EC1330;
        v52[4] = self;
        v52[5] = &v62;
        [(NSPersistentStoreCoordinator *)self performBlock:v52];
      }
    }
  }

  v44 = v63[5];
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);
  v45 = *MEMORY[0x1E69E9840];
  return v44;
}

void __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke(uint64_t a1)
{
  v190 = *MEMORY[0x1E69E9840];
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v173[0] = @"NSPersistentStoreUbiquitousContentNameKey";
  v173[1] = @"NSPersistentStoreUbiquitousContentURLKey";
  v173[2] = @"NSPersistentStoreUbiquitousPeerTokenOption";
  v173[3] = @"NSPersistentStoreRemoveUbiquitousMetadataOption";
  v173[4] = @"NSPersistentStoreUbiquitousContainerIdentifierKey";
  v173[5] = @"NSPersistentStoreRebuildFromUbiquitousContentOption";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:6];
  v2 = [v1 countByEnumeratingWithState:&v152 objects:v174 count:16];
  if (v2)
  {
    v3 = *v153;
    do
    {
      v4 = 0;
      do
      {
        if (*v153 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v152 + 1) + 8 * v4);
        if ([*(a1 + 32) objectForKey:v5])
        {
          if (byte_1ED4BEECF == 1)
          {
            v45 = objc_alloc(MEMORY[0x1E696ABC0]);
            v171 = *MEMORY[0x1E696A588];
            v46 = MEMORY[0x1E696AEC0];
            v47 = objc_opt_class();
            v172 = [v46 stringWithFormat:@"Deprecated option '%@' is no longer supported and the symbol will be removed in a future release. Please adopt %@ instead.", v5, NSStringFromClass(v47)];
            v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
            *(*(*(a1 + 72) + 8) + 40) = [v45 initWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:v48];
            v49 = *(*(*(a1 + 72) + 8) + 40);
            if (v49)
            {
              v50 = *(a1 + 96);
              if (v50)
              {
                *v50 = v49;
              }
            }

            else
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
                v186 = 1024;
                LODWORD(v187) = 1510;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
              }

              v58 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
                v186 = 1024;
                LODWORD(v187) = 1510;
                _os_log_fault_impl(&dword_18565F000, v58, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
              }
            }

            goto LABEL_206;
          }

          v6 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            v7 = _pflogging_catastrophic_mode == 0;
            v8 = _PFLogGetLogStream(1);
            v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
            if (v7)
            {
              if (v9)
              {
                goto LABEL_16;
              }
            }

            else if (v9)
            {
LABEL_16:
              v12 = objc_opt_class();
              v13 = NSStringFromClass(v12);
              *buf = 138412546;
              *&buf[4] = v5;
              v186 = 2112;
              v187 = v13;
              _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: error: Deprecated option '%@' is no longer supported and the symbol will be removed in a future release. Please adopt %@ instead.\n", buf, 0x16u);
            }
          }

          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          _NSCoreDataLog_console(1, "Deprecated option '%@' is no longer supported and the symbol will be removed in a future release. Please adopt %@ instead.", v5, v11);
          objc_autoreleasePoolPop(v6);
        }

        ++v4;
      }

      while (v2 != v4);
      v14 = [v1 countByEnumeratingWithState:&v152 objects:v174 count:16];
      v2 = v14;
    }

    while (v14);
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v15 = [&unk_1EF43D4F8 countByEnumeratingWithState:&v148 objects:v170 count:16];
  if (v15)
  {
    v16 = *v149;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v149 != v16)
        {
          objc_enumerationMutation(&unk_1EF43D4F8);
        }

        v18 = *(*(&v148 + 1) + 8 * i);
        if ([*(a1 + 32) valueForKey:v18])
        {
          v51 = MEMORY[0x1E696AEC0];
          v52 = NSStringFromSelector(sel_setOption_forMirroringKey_);
          v53 = objc_opt_class();
          v54 = [v51 stringWithFormat:@"%@ is only valid as a mirroring option. It should be set using '%@' on '%@'", v18, v52, NSStringFromClass(v53)];
          v55 = objc_alloc(MEMORY[0x1E696ABC0]);
          v168 = *MEMORY[0x1E696A588];
          v169 = v54;
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
          *(*(*(a1 + 72) + 8) + 40) = [v55 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v56];
          goto LABEL_206;
        }
      }

      v15 = [&unk_1EF43D4F8 countByEnumeratingWithState:&v148 objects:v170 count:16];
    }

    while (v15);
  }

  if (![*(a1 + 32) objectForKey:@"NSPersistentHistoryTrackingKey"])
  {
LABEL_78:
    v184[0] = 0;
    v68 = *(a1 + 56);
    v69 = *(a1 + 64);
    if ([v68 isEqualToString:@"NSXPCStore"])
    {
      v70 = 0;
      if (v68)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v70 = [_PFRunningBoardBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Adding persistent store"];
      if (v68)
      {
        goto LABEL_86;
      }
    }

    if (*(a1 + 40))
    {
      v68 = *(a1 + 56);
      v71 = *(a1 + 32);
      *buf = 0;
      v72 = [objc_opt_class() metadataForPersistentStoreOfType:v68 URL:v69 options:v71 error:buf];
      if (v72)
      {
        v68 = [v72 objectForKey:@"NSStoreType"];
      }

      else
      {
        v91 = [*buf domain];
        if (![v91 isEqualToString:*MEMORY[0x1E696A250]] || objc_msgSend(*buf, "code") != 4 && objc_msgSend(*buf, "code") != 260)
        {
          v92 = *buf;
          v184[0] = *buf;
LABEL_116:
          if (!v92)
          {
            v92 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:&unk_1EF435378];
          }

          v81 = 0;
          *(*(*(a1 + 72) + 8) + 40) = v92;
          goto LABEL_184;
        }
      }

      if (v68)
      {
LABEL_86:
        v73 = [NSPersistentStoreCoordinator _storeClassForStoreType:v68];
        if (!v73)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unsupported store type." userInfo:0]);
        }

        if (([objc_msgSend(*(a1 + 32) objectForKey:{@"NSIgnorePersistentStoreVersioningOption", "BOOLValue"}] & 1) != 0 || z9dsptsiQ80etb9782fsrs98bfdle88 != 1)
        {
          v74 = 0;
          v75 = 1;
        }

        else
        {
          v74 = [objc_msgSend(*(a1 + 32) objectForKey:{@"NSMigratePersistentStoresAutomaticallyOption", "BOOLValue"}];
          v75 = 0;
        }

        if (*(*(*(a1 + 80) + 8) + 40) && [@"Default" isEqual:?] && !objc_msgSend(*(a1 + 48), "entitiesForConfiguration:", *(*(*(a1 + 80) + 8) + 40)))
        {
          *(*(*(a1 + 80) + 8) + 40) = 0;
        }

        *(*(*(a1 + 88) + 8) + 40) = [objc_allocWithZone(v73) initWithPersistentStoreCoordinator:*(a1 + 40) configurationName:*(*(*(a1 + 80) + 8) + 40) URL:v69 options:*(a1 + 32)];
        v76 = *(*(*(a1 + 88) + 8) + 40);
        if (v76)
        {
          v77 = atomic_load((v76 + 60));
          v78 = *(*(*(a1 + 88) + 8) + 40);
        }

        else
        {
          v78 = 0;
          v77 = 0;
        }

        v79 = [v78 loadMetadata:v184];
        v80 = *(*(a1 + 88) + 8);
        v81 = *(v80 + 40);
        if (v79)
        {
          [*(v80 + 40) _didLoadMetadata];
          [*(*(*(a1 + 88) + 8) + 40) _setMetadataDirty:v77 & 1];
          v81 = 0;
          v82 = (a1 + 88);
          v83 = *(*(*(a1 + 88) + 8) + 40);
          if (!v83)
          {
LABEL_184:
            [_PFRunningBoardBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v70];
            v127 = *(*(*(a1 + 88) + 8) + 40);
            if (v81)
            {
              [v81 willRemoveFromPersistentStoreCoordinator:0];
            }

            v128 = a1;
            v129 = *(*(*(a1 + 72) + 8) + 40);
            if (v129)
            {
              v130 = v129;
              v131 = a1;
              v132 = *(*(a1 + 40) + 72);
              if (v132 != *(*(*(a1 + 72) + 8) + 40))
              {

                v131 = a1;
                *(*(a1 + 40) + 72) = 0;
              }

              if ([*(v131 + 64) isFileURL])
              {
                v133 = MEMORY[0x1E695DF90];
                v134 = [*(a1 + 64) path];
                v135 = [v133 dictionaryWithObjectsAndKeys:{v134, *MEMORY[0x1E696A368], 0}];
              }

              else
              {
                v135 = 0;
              }

              v136 = [objc_msgSend(*(*(*(a1 + 72) + 8) + 40) "userInfo")];
              if (v136)
              {
                if (!v135)
                {
                  v135 = [MEMORY[0x1E695DF90] dictionary];
                }

                [v135 setObject:v136 forKey:@"NSSQLiteErrorDomain"];
              }

              v137 = [*(*(*(a1 + 72) + 8) + 40) userInfo];
              v138 = *MEMORY[0x1E696A798];
              v139 = [v137 objectForKey:*MEMORY[0x1E696A798]];
              if (v139)
              {
                if (!v135)
                {
                  v135 = [MEMORY[0x1E695DF90] dictionary];
                }

                [v135 setObject:v139 forKey:v138];
              }

              v140 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(*(*(*(a1 + 72) + 8) + 40) code:"domain") userInfo:{objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "code"), v135}];
              v128 = a1;
              *(*(a1 + 40) + 72) = v140;
            }

            if (*(*(*(v128 + 88) + 8) + 40))
            {

              *(*(a1 + 40) + 72) = 0;
            }

            v141 = *(*(*(a1 + 88) + 8) + 40);
            if (v141 && ([v141 supportsConcurrentRequestHandling] & 1) == 0)
            {
              *(*(a1 + 40) + 24) &= ~2u;
            }

            goto LABEL_206;
          }

          v84 = [objc_msgSend(v83 "metadata")];
          v85 = v84;
          if (!v84 && *(a1 + 96))
          {
            v97 = MEMORY[0x1E696ABC0];
            v98 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Can't read store metadata.", @"reason", 0}];
            *(*(*(a1 + 72) + 8) + 40) = [v97 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v98];
            v96 = *(a1 + 88);
LABEL_125:
            v86 = *(v96 + 8);
            if (*(v86 + 40))
            {
              v81 = *(v86 + 40);
            }

LABEL_143:
            *(v86 + 40) = 0;
            goto LABEL_184;
          }

          if (([v68 isEqual:{-[NSString objectForKey:](v84, "objectForKey:", @"NSStoreType"}] & 1) == 0)
          {
            if (!*(a1 + 96))
            {
LABEL_122:
              v96 = *v82;
              goto LABEL_125;
            }

            v93 = MEMORY[0x1E696ABC0];
            v94 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"The store type in the metadata does not match the specified store type.", @"reason", v85, @"metadata", 0}];
            v95 = [v93 errorWithDomain:*MEMORY[0x1E696A250] code:134010 userInfo:v94];
LABEL_121:
            *(*(*(a1 + 72) + 8) + 40) = v95;
            goto LABEL_122;
          }

          if ((v75 & 1) == 0)
          {
            v99 = [(NSString *)v85 objectForKey:@"NSStoreModelVersionHashesVersion"];
            if ([v99 intValue] >= 4)
            {
              if (*(a1 + 96))
              {
                v103 = MEMORY[0x1E696ABC0];
                v104 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"The version hash version (and associated hashes) are incompatible with the current Core Data version.", @"reason", v85, @"metadata", 0}];
                *(*(*(a1 + 72) + 8) + 40) = [v103 errorWithDomain:*MEMORY[0x1E696A250] code:134100 userInfo:v104];
              }

              v86 = *(*v82 + 8);
              v105 = *(v86 + 40);
              if (v105)
              {
                *(v86 + 40) = 0;
                v86 = *(*v82 + 8);
                v81 = v105;
              }

              goto LABEL_143;
            }

            if (v99)
            {
              if ([(NSString *)v85 objectForKey:@"NSStoreModelVersionHashes"])
              {
                v100 = [*(a1 + 48) isConfiguration:*(*(*(a1 + 80) + 8) + 40) compatibleWithStoreMetadata:v85];
                if (((*(a1 + 104) & 1) != 0 || v100 != 1) && ((*(a1 + 104) & 1) != 0 || ([NSPersistentStoreCoordinator _checkForSkewedEntityHashes:v85 metadata:?]& 1) == 0 && (![_PFPersistentHistoryModel _hasTombstonesInUserInfo:?]|| ([(NSPersistentStoreCoordinator *)*(a1 + 40) _checkForTombstoneSkew:v85 metadata:*(*(*(a1 + 80) + 8) + 40) configuration:?]& 1) == 0)))
                {
                  if (![*(a1 + 32) valueForKey:@"NSPersistentStoreCoordinatorIsMigratingStoreWithStagedMigrationOptionKey"])
                  {
                    if (+[NSMappingModel migrationDebugLevel])
                    {
                      v108 = @" NOT ";
                      if (v74)
                      {
                        v108 = @" ";
                      }

                      v146 = v108;
                      v109 = objc_autoreleasePoolPush();
                      if (_NSCoreDataIsOSLogEnabled(4))
                      {
                        if (_pflogging_catastrophic_mode)
                        {
                          v110 = _PFLogGetLogStream(1);
                          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                          {
                            v111 = [*(a1 + 48) entityVersionHashesByName];
                            *buf = 138412802;
                            *&buf[4] = v69;
                            v186 = 2112;
                            v187 = v85;
                            v188 = 2112;
                            v189 = v111;
                            _os_log_error_impl(&dword_18565F000, v110, OS_LOG_TYPE_ERROR, "CoreData: error: Incompatible version schema for persistent store '%@'.  store metadata = %@ and current model versions = %@\n", buf, 0x20u);
                          }
                        }

                        else
                        {
                          v112 = _PFLogGetLogStream(4);
                          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                          {
                            v113 = [*(a1 + 48) entityVersionHashesByName];
                            *buf = 138412802;
                            *&buf[4] = v69;
                            v186 = 2112;
                            v187 = v85;
                            v188 = 2112;
                            v189 = v113;
                            _os_log_impl(&dword_18565F000, v112, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Incompatible version schema for persistent store '%@'.  store metadata = %@ and current model versions = %@\n", buf, 0x20u);
                          }
                        }
                      }

                      v114 = *(a1 + 48);
                      if (_pflogging_catastrophic_mode)
                      {
                        v115 = [v114 entityVersionHashesByName];
                        v116 = 1;
                      }

                      else
                      {
                        v115 = [v114 entityVersionHashesByName];
                        v116 = 4;
                      }

                      _NSCoreDataLog_console(v116, "Incompatible version schema for persistent store '%@'.  store metadata = %@ and current model versions = %@", v69, v85, v115);
                      objc_autoreleasePoolPop(v109);
                      v117 = objc_autoreleasePoolPush();
                      if (_NSCoreDataIsOSLogEnabled(4))
                      {
                        if (_pflogging_catastrophic_mode)
                        {
                          v118 = _PFLogGetLogStream(1);
                          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            *&buf[4] = v146;
                            _os_log_error_impl(&dword_18565F000, v118, OS_LOG_TYPE_ERROR, "CoreData: error: (migration)\t will%@attempt automatic schema migration\n", buf, 0xCu);
                          }
                        }

                        else
                        {
                          v119 = _PFLogGetLogStream(4);
                          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            *&buf[4] = v146;
                            _os_log_impl(&dword_18565F000, v119, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration)\t will%@attempt automatic schema migration\n", buf, 0xCu);
                          }
                        }
                      }

                      if (_pflogging_catastrophic_mode)
                      {
                        v120 = 1;
                      }

                      else
                      {
                        v120 = 4;
                      }

                      _NSCoreDataLog_console(v120, "(migration)\t will%@attempt automatic schema migration", v146);
                      objc_autoreleasePoolPop(v117);
                    }

                    v121 = *(*v82 + 8);
                    v122 = *(v121 + 40);
                    if (v122)
                    {
                      *(v121 + 40) = 0;
                      v81 = v122;
                    }

                    if (v74)
                    {
                      v123 = [*(a1 + 32) mutableCopy];
                      [v123 setValue:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreCoordinatorIsMigratingStoreWithStagedMigrationOptionKey"];
                      v124 = [[NSPersistentStoreCoordinatorMigrationContext alloc] initWithStoreURL:v69 type:v68 options:v123];

                      [(NSPersistentStoreCoordinatorMigrationContext *)v124 setConfigurationName:*(*(*(a1 + 80) + 8) + 40)];
                      [(NSPersistentStoreCoordinatorMigrationContext *)v124 setDestinationConfigurationForCloudKitValidation:*(*(*(a1 + 80) + 8) + 40)];
                      [(NSPersistentStoreCoordinatorMigrationContext *)v124 setMetadata:v85];
                      [(NSPersistentStoreCoordinatorMigrationContext *)v124 setForceMigration:*(a1 + 104)];
                      if ([(NSPersistentStoreCoordinator *)*(a1 + 40) migrateStoreWithContext:v124 error:(*(*(a1 + 72) + 8) + 40)])
                      {
                        *(*(*v82 + 8) + 40) = [(NSPersistentStoreCoordinatorMigrationContext *)v124 migratedStore];
                      }

                      goto LABEL_184;
                    }

                    if (*(a1 + 96))
                    {
                      v125 = MEMORY[0x1E696ABC0];
                      v126 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"The model used to open the store is incompatible with the one used to create the store", @"reason", v85, @"metadata", 0}];
                      *(*(*(a1 + 72) + 8) + 40) = [v125 errorWithDomain:*MEMORY[0x1E696A250] code:134100 userInfo:v126];
                    }

                    v86 = *(*v82 + 8);
                    goto LABEL_143;
                  }

                  if (!*(a1 + 96))
                  {
                    goto LABEL_122;
                  }

                  v101 = MEMORY[0x1E696ABC0];
                  v102 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Incompatible metadata after migration because the store version hashes didn't migrate.", @"reason", v85, @"metadata", -[NSString objectForKeyedSubscript:](v85, "objectForKeyedSubscript:", @"NSStoreModelVersionChecksumKey", @"source checksum", objc_msgSend(*(a1 + 48), "versionChecksum"), @"destination checksum", 0}];
                  v95 = [v101 errorWithDomain:*MEMORY[0x1E696A250] code:134100 userInfo:v102];
                  goto LABEL_121;
                }
              }
            }
          }

          v86 = *(*v82 + 8);
          v87 = *(v86 + 40);
          if (!v87)
          {
            if (*(a1 + 96))
            {
              *(*(*(a1 + 72) + 8) + 40) = v184[0];
              v86 = *(*(a1 + 88) + 8);
            }

            goto LABEL_143;
          }

          if ([v87 load:v184])
          {
            -[NSPersistentStoreCoordinator _addPersistentStore:identifier:](*(a1 + 40), *(*(*(a1 + 88) + 8) + 40), [*(*(*(a1 + 88) + 8) + 40) identifier]);

            [(NSPersistentStore *)*(*(*v82 + 8) + 40) _updateMetadata];
            [*(*(*(a1 + 88) + 8) + 40) _setupObserver:*(a1 + 40)];
            [*(*(*(a1 + 88) + 8) + 40) didAddToPersistentStoreCoordinator:*(a1 + 40)];
            v88 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(*(*v82 + 8) + 40), 0}];
            [(NSPersistentStoreCoordinator *)*(a1 + 40) _postStoresChangedNotificationsForStores:v88 changeKey:@"added" options:*(a1 + 32)];

            goto LABEL_184;
          }

          [*(*(*v82 + 8) + 40) _unload:0];
          v106 = *(*v82 + 8);
          v107 = *(v106 + 40);
          if (v107)
          {
            *(v106 + 40) = 0;
            v81 = v107;
          }
        }

        else if (v81)
        {
          *(v80 + 40) = 0;
        }

        else if (!v184[0])
        {
          v89 = MEMORY[0x1E696ABC0];
          v90 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Unable to initialize store.", @"reason", 0}];
          v184[0] = [v89 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v90];
        }

        if (*(a1 + 96))
        {
          *(*(*(a1 + 72) + 8) + 40) = v184[0];
        }

        goto LABEL_184;
      }
    }

    v92 = v184[0];
    goto LABEL_116;
  }

  v19 = a1;
  if (!*(a1 + 40))
  {
    goto LABEL_76;
  }

  v20 = *(a1 + 48);
  v143 = *(*(a1 + 72) + 8);
  v21 = [*(a1 + 32) objectForKey:@"NSPersistentHistoryTrackingKey"];
  if (![v21 isNSDictionary])
  {
    if (([v21 isNSNumber] & 1) == 0)
    {
      v59 = MEMORY[0x1E696ABC0];
      v179 = *MEMORY[0x1E696A588];
      v60 = MEMORY[0x1E696AEC0];
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      v63 = objc_opt_class();
      v180 = [v60 stringWithFormat:@"%@ expects an instance of %@ as its value but found: %@", @"NSPersistentHistoryTrackingKey", v62, NSStringFromClass(v63)];
      v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
      v44 = [v59 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v64];
      if (v44)
      {
        goto LABEL_61;
      }

      goto LABEL_72;
    }

    goto LABEL_78;
  }

  v145 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  obj = [v20 entities];
  v22 = [obj countByEnumeratingWithState:&v164 objects:buf count:16];
  if (!v22)
  {
    goto LABEL_52;
  }

  v23 = *v165;
  do
  {
    for (j = 0; j != v22; ++j)
    {
      if (*v165 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v164 + 1) + 8 * j);
      v26 = [objc_msgSend(v25 "userInfo")];
      v27 = v26;
      if (!v26)
      {
        continue;
      }

      if (![v26 isNSString])
      {
        v32 = MEMORY[0x1E696AEC0];
        v33 = [v25 name];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = objc_opt_class();
        v37 = [v32 stringWithFormat:@"%@ - Wrong type: %@ but should be %@", v33, v35, NSStringFromClass(v36)];
LABEL_49:
        [v145 addObject:v37];
        continue;
      }

      if (![v27 length])
      {
        goto LABEL_49;
      }

      v28 = [v27 componentsSeparatedByString:{@", "}];
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v29 = [v28 countByEnumeratingWithState:&v160 objects:v184 count:16];
      if (v29)
      {
        v30 = *v161;
        while (2)
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v161 != v30)
            {
              objc_enumerationMutation(v28);
            }

            if (![objc_msgSend(v25 "attributesByName")])
            {
              v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - One or more unknown attributes: %@", objc_msgSend(v25, "name"), v27];
              goto LABEL_49;
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v160 objects:v184 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }
    }

    v22 = [obj countByEnumeratingWithState:&v164 objects:buf count:16];
  }

  while (v22);
LABEL_52:
  if (![v145 count])
  {

    goto LABEL_78;
  }

  [v145 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v38 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"The following entities did not have a valid configuration for %@. It should be a string of comma separated attribute names to tombstone on delete.", @"NSPersistentHistoryTombstoneAttributes"];
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v39 = [v145 countByEnumeratingWithState:&v156 objects:v183 count:16];
  if (v39)
  {
    v40 = *v157;
    do
    {
      for (m = 0; m != v39; ++m)
      {
        if (*v157 != v40)
        {
          objc_enumerationMutation(v145);
        }

        [v38 appendFormat:@"\n%@", *(*(&v156 + 1) + 8 * m)];
      }

      v39 = [v145 countByEnumeratingWithState:&v156 objects:v183 count:16];
    }

    while (v39);
  }

  v42 = MEMORY[0x1E696ABC0];
  v181 = *MEMORY[0x1E696A588];
  v182 = v38;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
  v44 = [v42 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v43];

  if (v44)
  {
LABEL_61:
    *(v143 + 40) = v44;
    v19 = a1;
    goto LABEL_76;
  }

LABEL_72:
  v65 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    *v175 = 136315394;
    v176 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
    v177 = 1024;
    v178 = 6278;
    _os_log_error_impl(&dword_18565F000, v65, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v175, 0x12u);
  }

  v66 = _PFLogGetLogStream(17);
  v19 = a1;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
  {
    *v175 = 136315394;
    v176 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
    v177 = 1024;
    v178 = 6278;
    _os_log_fault_impl(&dword_18565F000, v66, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v175, 0x12u);
  }

LABEL_76:
  v67 = *(*(*(v19 + 72) + 8) + 40);
LABEL_206:
  v142 = *MEMORY[0x1E69E9840];
}

- (unint64_t)migrateStoreWithContext:(void *)a3 error:
{
  v3 = a1;
  v70[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [a2 configurationName];
    [a2 setConfigurationName:0];
    v56 = 0;
    v7 = [objc_msgSend(a2 "options")];
    if (v7 && (![objc_msgSend(objc_msgSend(a2 "options")] || (objc_msgSend(objc_msgSend(objc_msgSend(a2, "options"), "objectForKey:", @"NSInferMappingModelAutomaticallyOption"), "BOOLValue") & 1) == 0))
    {
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = *MEMORY[0x1E696A250];
      v69 = *MEMORY[0x1E696A578];
      v70[0] = @"Staged Migration was requested with NSPersistentStoreStagedMigrationManagerOptionKey but without setting NSMigratePersistentStoresAutomaticallyOption and NSInferMappingModelAutomaticallyOption to YES.";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
      v13 = 134100;
LABEL_8:
      v14 = v10;
      v15 = v11;
LABEL_9:
      v56 = [v14 initWithDomain:v15 code:v13 userInfo:v12];
      goto LABEL_10;
    }

    [v7 _validateStages:&v56];
    v8 = v56;
    if (v56)
    {
LABEL_6:
      v9 = v8;
      goto LABEL_10;
    }

    [a2 setStagedMigrationManager:v7];
    if (![objc_msgSend(v7 "stages")])
    {
      v26 = 0;
LABEL_36:
      *(v3 + 24) |= 0x400u;
      if ([v26 count])
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v32 = [v26 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v53;
          while (2)
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v53 != v34)
              {
                objc_enumerationMutation(v26);
              }

              v36 = *(*(&v52 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v50 = 0u;
                v51 = 0u;
                v48 = 0u;
                v49 = 0u;
                v39 = [v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
                if (v39)
                {
                  v40 = v39;
                  v41 = *v49;
                  while (2)
                  {
                    for (j = 0; j != v40; ++j)
                    {
                      if (*v49 != v41)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v43 = *(*(&v48 + 1) + 8 * j);
                      v44 = objc_autoreleasePoolPush();
                      if (([(NSPersistentStoreCoordinator *)v3 applyMigrationStage:v43 withContext:a2 error:&v56]& 1) == 0)
                      {
                        v47 = v56;
                        objc_autoreleasePoolPop(v44);
                        goto LABEL_62;
                      }

                      objc_autoreleasePoolPop(v44);
                    }

                    v40 = [v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
                    if (v40)
                    {
                      continue;
                    }

                    break;
                  }
                }

                goto LABEL_57;
              }
            }

            v33 = [v26 countByEnumeratingWithState:&v52 objects:v62 count:16];
            if (v33)
            {
              continue;
            }

            break;
          }
        }

        v37 = [v26 lastObject];
        v38 = v3;
      }

      else
      {
        v38 = v3;
        v37 = 0;
      }

      if (([(NSPersistentStoreCoordinator *)v38 applyMigrationStage:v37 withContext:a2 error:&v56]& 1) != 0)
      {
LABEL_57:
        *(v3 + 24) &= ~0x400u;
        -[NSPersistentStoreCoordinator _removePersistentStore:](v3, [v3 persistentStoreForURL:{objc_msgSend(a2, "storeURL")}]);
        v45 = [v3 addPersistentStoreWithType:objc_msgSend(a2 configuration:"storeType") URL:v6 options:objc_msgSend(a2 error:{"storeURL"), objc_msgSend(a2, "options"), &v56}];
        v8 = v56;
        if (v45 && !v56)
        {
          [a2 setMigratedStore:v45];
          v3 = 1;
          goto LABEL_18;
        }

        goto LABEL_6;
      }

      v46 = v56;
LABEL_62:
      *(v3 + 24) &= ~0x400u;
LABEL_10:
      v16 = v56;
      if (v16)
      {
        if (a3)
        {
          v3 = 0;
          *a3 = v16;
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v58 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
          v59 = 1024;
          v60 = 3684;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v18 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v58 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
          v59 = 1024;
          v60 = 3684;
          _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v3 = 0;
      goto LABEL_18;
    }

    v21 = [objc_msgSend(a2 "metadata")];
    if (!v21)
    {
      goto LABEL_65;
    }

    v22 = v21;
    v23 = [v7 _findCurrentMigrationStageFromModelChecksum:v21];
    if (([v7 _shouldAttemptStagedMigrationWithStoreModelVersionChecksum:v22 coordinatorModelVersionChecksum:objc_msgSend(objc_msgSend(v3 error:{"managedObjectModel"), "versionChecksum"), &v56}] & 1) == 0)
    {
      v8 = v56;
      goto LABEL_6;
    }

    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_65:
      if ([objc_msgSend(a2 "storeType")])
      {
        v24 = +[NSPersistentStore cachedModelForPersistentStoreWithURL:options:error:](NSPersistentStore, "cachedModelForPersistentStoreWithURL:options:error:", [a2 storeURL], objc_msgSend(a2, "options"), &v56);
        [v24 _setIsEditable:0];
        if (v24)
        {
          v25 = [v7 _findCurrentMigrationStageFromModelChecksum:{objc_msgSend(v24, "versionChecksum")}];
          if (v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = objc_alloc(MEMORY[0x1E696ABC0]);
            v11 = *MEMORY[0x1E696A250];
            v67 = *MEMORY[0x1E696A578];
            v68 = @"Cannot use staged migration with an unknown model version.";
            v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
            v13 = 134504;
            goto LABEL_8;
          }

          v23 = v25;
          goto LABEL_35;
        }

        v8 = v56;
        if (v56)
        {
          goto LABEL_6;
        }

        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E696A250];
        v65 = *MEMORY[0x1E696A578];
        v66 = @"The store must be opened one time without Staged Migration to update store metadata to be able to use Staged Migration.";
        v29 = MEMORY[0x1E695DF20];
        v30 = &v66;
        v31 = &v65;
      }

      else
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E696A250];
        v63 = *MEMORY[0x1E696A578];
        v64 = @"The store must be opened one time without Staged Migration to update store metadata to be able to use Staged Migration.";
        v29 = MEMORY[0x1E695DF20];
        v30 = &v64;
        v31 = &v63;
      }

      v12 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:1];
      v14 = v27;
      v15 = v28;
      v13 = 134505;
      goto LABEL_9;
    }

LABEL_35:
    v26 = [objc_msgSend(v7 "stages")];
    goto LABEL_36;
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_addPersistentStore:(uint64_t)a3 identifier:
{
  if (a1)
  {
    v6 = [a2 URL];
    if (v6 && [a1 persistentStoreForURL:v6] || -[NSPersistentStoreCoordinator _persistentStoreForIdentifier:](a1, a3))
    {
      v9 = [_NSCoreDataException exceptionWithName:134081 code:@"Can't add the same store twice" reason:0 userInfo:?];
      objc_exception_throw(v9);
    }

    __dmb(0xBu);
    while (1)
    {
      os_unfair_lock_lock_with_options();
      v7 = *(a1 + 48);
      v8 = [v7 arrayByAddingObject:a2];
      CFRetain(v8);
      if (*(a1 + 48) == v7)
      {
        break;
      }

      os_unfair_lock_unlock((a1 + 32));
      if (v8)
      {
        CFRelease(v8);
      }
    }

    *(a1 + 48) = v8;
    os_unfair_lock_unlock((a1 + 32));
    if (v7)
    {

      CFRelease(v7);
    }
  }
}

- (void)_postStoresChangedNotificationsForStores:(uint64_t)a3 changeKey:(void *)a4 options:
{
  if (a1)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = objc_alloc(MEMORY[0x1E695DF20]);
    if (!a2)
    {
      a2 = [MEMORY[0x1E695DEC8] array];
    }

    v10 = [v9 initWithObjectsAndKeys:{a2, a3, 0}];
    if (!a4 || (v11 = [a4 objectForKey:@"_NSNotifyObserversOfStoreChange"]) == 0 || (objc_msgSend(v11, "BOOLValue")) && (*(a1 + 24) & 0x400) == 0)
    {
      [v8 postNotificationName:@"_NSPersistentStoreCoordinatorStoresDidChangePrivateNotification" object:a1 userInfo:v10];
      [v8 postNotificationName:@"NSPersistentStoreCoordinatorStoresDidChangeNotification" object:a1 userInfo:v10];
    }
  }
}

void __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v6 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v8 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v8)
      {
        goto LABEL_7;
      }
    }

    else if (v8)
    {
LABEL_7:
      *buf = 138412546;
      *&buf[4] = a2;
      *&buf[12] = 2112;
      *&buf[14] = a3;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \t%@ : %@\n", buf, 0x16u);
    }
  }

  _NSCoreDataLog_console(1, "\t%@ : %@", a2, a3, *buf, *&buf[16], v11);
  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x1E69E9840];
}

void __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_421(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  _pflogInitialize(4);
  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = a2;
        v12 = 2112;
        v13 = a3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \t%@ : %@\n", buf, 0x16u);
      }
    }

    else
    {
      v7 = _PFLogGetLogStream(4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v11 = a2;
        v12 = 2112;
        v13 = a3;
        _os_log_impl(&dword_18565F000, v7, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: \t%@ : %@\n", buf, 0x16u);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v8 = 1;
  }

  else
  {
    v8 = 4;
  }

  _NSCoreDataLog_console(v8, "\t%@ : %@", a2, a3);
  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_430(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) identifier];

  return [(NSPersistentStoreCoordinator *)v1 _repairIndiciesForStoreWithIdentifier:v2 synchronous:1];
}

- (uint64_t)_repairIndiciesForStoreWithIdentifier:(uint64_t)a3 synchronous:
{
  if (result)
  {
    v4 = [result persistentStoreForIdentifier:a2];
    result = [v4 isReadOnly];
    if ((result & 1) == 0)
    {
      result = [objc_msgSend(objc_msgSend(v4 "metadata")];
      if (result)
      {

        return [v4 _rebuildIndiciesSynchronously:a3];
      }
    }
  }

  return result;
}

uint64_t __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) identifier];

  return [(NSPersistentStoreCoordinator *)v1 _repairIndiciesForStoreWithIdentifier:v2 synchronous:0];
}

- (BOOL)removePersistentStore:(NSPersistentStore *)store error:(NSError *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (store)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = @"removed";
    v11[0] = store;
    [v7 postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
  }

  result = [(NSPersistentStoreCoordinator *)self _removePersistentStore:error error:?];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_removePersistentStore:(void *)a3 error:
{
  if (a1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__19;
    v16 = __Block_byref_object_dispose__19;
    v17 = 0;
    if ([objc_msgSend(a2 "type")])
    {
      v6 = a2;
      [a2 _prepareStoreForRemovalFromCoordinator:a1];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__NSPersistentStoreCoordinator__removePersistentStore_error___block_invoke;
    v11[3] = &unk_1E6EC1A00;
    v11[4] = a2;
    v11[5] = a1;
    v11[6] = &v18;
    v11[7] = &v12;
    _perform_0(a1, v11);
    v7 = v13[5];
    if (v7)
    {
      v8 = v7;
      if (a3)
      {
        *a3 = v13[5];
      }
    }

    v9 = *(v19 + 24);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)_removeAllPersistentStores:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__19;
  v13 = __Block_byref_object_dispose__19;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__NSPersistentStoreCoordinator__removeAllPersistentStores___block_invoke;
  v8[3] = &unk_1E6EC1EB8;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = &v15;
  [(NSPersistentStoreCoordinator *)self performBlockAndWait:v8];
  v4 = v10[5];
  if (a3)
  {
    v5 = v10[5];
    if (v5)
    {
      *a3 = v5;
    }
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

void __59__NSPersistentStoreCoordinator__removeAllPersistentStores___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) persistentStores];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
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

        if (([*(a1 + 32) removePersistentStore:*(*(&v10 + 1) + 8 * v7) error:*(*(a1 + 40) + 8) + 40] & 1) == 0)
        {
          *(*(*(a1 + 48) + 8) + 24) = 0;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

void __61__NSPersistentStoreCoordinator__removePersistentStore_error___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) && [objc_msgSend(*(a1 + 40) "persistentStores")] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = *(a1 + 32);
    *(*(*(a1 + 48) + 8) + 24) = [(NSPersistentStoreCoordinator *)*(a1 + 40) _removePersistentStore:?];
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v2 count:1];
    [(NSPersistentStoreCoordinator *)*(a1 + 40) _postStoresChangedNotificationsForStores:v4 changeKey:@"removed" options:0];

    if ([*(a1 + 32) type] == @"SQLite" && !*(*(a1 + 40) + 64))
    {
      *(*(a1 + 40) + 64) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = atomic_load((v5 + 176));
        if (v6)
        {
          [*(*(a1 + 40) + 64) addObject:{objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:isDirectory:", v6, 1)}];
        }
      }
    }

    v7 = *v2;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF4353A0];
  }
}

- (BOOL)_removePersistentStore:(unint64_t)a1
{
  if (a1)
  {
    if (_PF_Threading_Debugging_level)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = *(StatusReg + 712);
      if (!v10)
      {
        goto LABEL_32;
      }

      v11 = 0;
      v12 = 0;
      while (v10 != a1)
      {
        if (v10 == v11)
        {
          goto LABEL_23;
        }

        if (!v11)
        {
          v11 = v10;
        }

        v10 = atomic_load((v10 + 8));
        if (!v10)
        {
          goto LABEL_24;
        }
      }

      v12 = 1;
LABEL_23:
      if (v12)
      {
        goto LABEL_3;
      }

LABEL_24:
      v13 = *(StatusReg + 712);
      if (!v13)
      {
        goto LABEL_32;
      }

      v14 = 0;
      v15 = 0;
      v16 = a1;
      while (v16 != v13)
      {
        if (v16 == v14)
        {
          goto LABEL_33;
        }

        if (!v14)
        {
          v14 = v16;
        }

        v16 = atomic_load((v16 + 8));
        if (!v16)
        {
          goto LABEL_32;
        }
      }

      v15 = 1;
LABEL_33:
      while (!v15)
      {
LABEL_32:
        objc_opt_self();
        __break(1u);
      }
    }

LABEL_3:
    [a2 willRemoveFromPersistentStoreCoordinator:a1];
    __dmb(0xBu);
    while (1)
    {
      os_unfair_lock_lock_with_options();
      v4 = *(a1 + 48);
      v5 = [v4 mutableCopy];
      [v5 removeObjectIdenticalTo:a2];
      v6 = [v5 copy];

      CFRetain(v6);
      if (*(a1 + 48) == v4)
      {
        break;
      }

      os_unfair_lock_unlock((a1 + 32));
      if (v6)
      {
        CFRelease(v6);
      }
    }

    *(a1 + 48) = v6;
    os_unfair_lock_unlock((a1 + 32));
    if (a2)
    {
      if (atomic_load(a2 + 1))
      {
        atomic_store(0, a2 + 1);
      }
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return a1 != 0;
}

- (NSPersistentStore)persistentStoreForURL:(NSURL *)URL
{
  if (!URL)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL: nil" userInfo:0]);
  }

  v4 = [(NSPersistentStoreCoordinator *)self _retainedPersistentStores];
  v5 = [v4 count];
  if (v5 < 1)
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [v4 objectAtIndex:v7];
      if ([(NSURL *)[(NSPersistentStore *)v8 URL] isEqual:URL])
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }
  }

  return v8;
}

- (NSURL)URLForPersistentStore:(NSPersistentStore *)store
{
  if (!store)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil is not a valid store." userInfo:0]);
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__NSPersistentStoreCoordinator_URLForPersistentStore___block_invoke;
  v5[3] = &unk_1E6EC2BA0;
  v5[4] = &v6;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v5 toStore:store];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __54__NSPersistentStoreCoordinator_URLForPersistentStore___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 URL];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (BOOL)setURL:(NSURL *)url forPersistentStore:(NSPersistentStore *)store
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__NSPersistentStoreCoordinator_setURL_forPersistentStore___block_invoke;
  v6[3] = &unk_1E6EC2C38;
  v6[4] = url;
  v6[5] = &v7;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v6 toStore:store];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __58__NSPersistentStoreCoordinator_setURL_forPersistentStore___block_invoke(uint64_t result, void *a2)
{
  if (*(result + 32))
  {
    v2 = result;
    result = [a2 setURL:?];
    *(*(*(v2 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (NSPersistentStore)migratePersistentStore:(NSPersistentStore *)store toURL:(NSURL *)URL options:(NSDictionary *)options withType:(NSString *)storeType error:(NSError *)error
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__19;
  v29 = __Block_byref_object_dispose__19;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__19;
  v23 = __Block_byref_object_dispose__19;
  v24 = 0;
  if (!store)
  {
    v17 = @"nil is not a valid persistent store";
    goto LABEL_10;
  }

  if (!URL && ![(NSString *)storeType isEqualToString:@"InMemory"])
  {
    v17 = @"nil is not a valid persistent store URL";
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:{0, storeType, error}]);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__NSPersistentStoreCoordinator_migratePersistentStore_toURL_options_withType_error___block_invoke;
  v18[3] = &unk_1E6EC2C60;
  v18[4] = store;
  v18[5] = self;
  v18[6] = options;
  v18[7] = storeType;
  v18[8] = URL;
  v18[9] = &v25;
  v18[10] = &v19;
  v18[11] = error;
  _perform_0(self, v18);
  v13 = v26[5];
  if (error)
  {
    v14 = v26[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = v20[5];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  return v15;
}

void __84__NSPersistentStoreCoordinator_migratePersistentStore_toURL_options_withType_error___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v45 = [*(a1 + 32) configurationName];
  v2 = *(a1 + 32);
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = qword_1ED4BEA70;
  v5 = [qword_1ED4BEA70 countByEnumeratingWithState:&v52 objects:&v59 count:16];
  if (!v5)
  {
LABEL_9:
    v10 = qword_1ED4BEA78;
    if (qword_1ED4BEA78)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v11 = [qword_1ED4BEA78 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v11)
      {
        v12 = *v49;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v49 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v8 = *(*(&v48 + 1) + 8 * i);
            v14 = objc_opt_class();
            if (v14 == [objc_msgSend(qword_1ED4BEA78 objectForKey:{v8), "pointerValue"}])
            {
              goto LABEL_19;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v48 objects:v58 count:16];
        }

        while (v11);
      }
    }

    objc_sync_exit(v3);
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Can't find store type for store %@ (class == %@) in %@.", v2, objc_opt_class(), objc_msgSend(v3, "registeredStoreTypes")), 0}];
    objc_exception_throw(v15);
  }

  v6 = *v53;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v53 != v6)
    {
      objc_enumerationMutation(v4);
    }

    v8 = *(*(&v52 + 1) + 8 * v7);
    v9 = objc_opt_class();
    if (v9 == [objc_msgSend(qword_1ED4BEA70 objectForKey:{v8), "pointerValue"}])
    {
      break;
    }

    if (v5 == ++v7)
    {
      v5 = [v4 countByEnumeratingWithState:&v52 objects:&v59 count:16];
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

LABEL_19:
  objc_sync_exit(v3);
  v16 = v8;
  v17 = [*(a1 + 32) URL];
  v18 = [objc_allocWithZone(NSPersistentStoreCoordinator) initWithManagedObjectModel:{objc_msgSend(*(a1 + 40), "managedObjectModel")}];
  [v18 setCodableAdapterRegistry:{objc_msgSend(*(a1 + 40), "codableAdapterRegistry")}];
  v19 = *(a1 + 48);
  if (v19)
  {
    v20 = [v19 mutableCopy];
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v21 = v20;
  [v20 removeObjectForKey:@"NSReadOnlyPersistentStoreOption"];
  v22 = [v18 addPersistentStoreWithType:*(a1 + 56) configuration:v45 URL:*(a1 + 64) options:v21 error:&v47];

  if (!v22)
  {
    if (*(a1 + 88))
    {
      *(*(*(a1 + 72) + 8) + 40) = v47;
    }

    v29 = 0;
    v30 = 80;
    goto LABEL_30;
  }

  v23 = v22;
  v24 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v59 = 0;
  v60 = &v59;
  v61 = 0x3052000000;
  v62 = __Block_byref_object_copy__19;
  v63 = __Block_byref_object_dispose__19;
  v64 = 0;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __84__NSPersistentStoreCoordinator_migratePersistentStore_toURL_options_withType_error___block_invoke_2;
  v46[3] = &unk_1E6EC2748;
  v25 = *(a1 + 32);
  v46[4] = v18;
  v46[5] = v25;
  v46[6] = v22;
  v46[7] = &v59;
  [v18 performBlockAndWait:v46];
  v26 = v60[5];
  _Block_object_dispose(&v59, 8);
  v27 = v47;

  [v24 drain];
  if (v47)
  {
    v28 = v47;
    if (*(a1 + 88))
    {
      *(*(*(a1 + 72) + 8) + 40) = v47;
    }

    *(*(*(a1 + 80) + 8) + 40) = 0;
    goto LABEL_48;
  }

  if (!v26)
  {

    if (!*(a1 + 88))
    {
      goto LABEL_48;
    }

    v40 = MEMORY[0x1E696ABC0];
    if (v47)
    {
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObject:v47 forKey:*MEMORY[0x1E696AA08]];
    }

    else
    {
      v41 = 0;
    }

    v29 = [v40 errorWithDomain:*MEMORY[0x1E696A250] code:134030 userInfo:v41];
    v30 = 72;
LABEL_30:
    *(*(*(a1 + v30) + 8) + 40) = v29;
    goto LABEL_48;
  }

  v31 = *(a1 + 32);
  v32 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:*(a1 + 48)];
  [v32 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 0), @"_NSNotifyObserversOfStoreChange"}];
  if ([*(a1 + 56) isEqualToString:@"InMemory"])
  {
    [v32 setObject:-[NSDictionaryStoreMap _archivedData](v22[13]) forKey:0x1EF3FC108];
  }

  *(*(*(a1 + 80) + 8) + 40) = [*(a1 + 40) addPersistentStoreWithType:*(a1 + 56) configuration:v45 URL:*(a1 + 64) options:v32 error:&v47];

  if (v47)
  {
    *(*(*(a1 + 72) + 8) + 40) = v47;
  }

  v33 = [v26 count];
  if (v33 >= 2)
  {
    for (j = 1; j < v33; j += 2)
    {
      [v26 replaceObjectAtIndex:j withObject:{objc_msgSend(*(a1 + 40), "managedObjectIDForURIRepresentation:", objc_msgSend(objc_msgSend(objc_msgSend(v26, "objectAtIndex:", j), "objectID"), "URIRepresentation"))}];
    }
  }

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v35 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(a1 + 32), *(*(*(a1 + 80) + 8) + 40), v26, 0}];
    [(NSPersistentStoreCoordinator *)*(a1 + 40) _postStoresChangedNotificationsForStores:v35 changeKey:@"changedUUID" options:0];

    if (*(a1 + 32))
    {
      v36 = [MEMORY[0x1E696AD88] defaultCenter];
      v37 = *(a1 + 32);
      v38 = *(a1 + 40);
      v56 = @"removed";
      v57 = v37;
      [v36 postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:v38 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v57, &v56, 1)}];
      v39 = *(a1 + 32);
    }

    else
    {
      v39 = 0;
    }

    [(NSPersistentStoreCoordinator *)*(a1 + 40) _removePersistentStore:v39 error:&v47];
  }

  else
  {
  }

LABEL_48:
  v42 = *(*(*(a1 + 72) + 8) + 40);
  if (v42)
  {
    v43 = v42;
  }

  v44 = *MEMORY[0x1E69E9840];
}

void __84__NSPersistentStoreCoordinator_migratePersistentStore_toURL_options_withType_error___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v111 = *MEMORY[0x1E69E9840];
  -[NSPersistentStoreCoordinator _addPersistentStore:identifier:](*(a1 + 32), *(a1 + 40), [*(a1 + 40) identifier]);
  v2 = v1[4];
  if (!v2)
  {
    v59 = 0;
    goto LABEL_72;
  }

  v3 = v1[5];
  v87 = v1[6];
  v4 = [[NSManagedObjectContext alloc] initWithConcurrencyType:3];
  [(NSManagedObjectContext *)v4 setPersistentStoreCoordinator:v2];
  [(NSManagedObjectContext *)v4 setRetainsRegisteredObjects:1];
  [(NSManagedObjectContext *)v4 setUndoManager:0];
  if (_PF_Threading_Debugging_level)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v71 = *(StatusReg + 712);
    if (!v71)
    {
      goto LABEL_95;
    }

    v72 = 0;
    v73 = 0;
    while (v71 != v2)
    {
      if (v71 == v72)
      {
        goto LABEL_86;
      }

      if (!v72)
      {
        v72 = v71;
      }

      v71 = atomic_load((v71 + 8));
      if (!v71)
      {
        goto LABEL_87;
      }
    }

    v73 = 1;
LABEL_86:
    if (v73)
    {
      goto LABEL_3;
    }

LABEL_87:
    v74 = *(StatusReg + 712);
    if (!v74)
    {
      goto LABEL_95;
    }

    v75 = 0;
    v76 = 0;
    v77 = v2;
    while (v77 != v74)
    {
      if (v77 == v75)
      {
        goto LABEL_96;
      }

      if (!v75)
      {
        v75 = v77;
      }

      v77 = atomic_load((v77 + 8));
      if (!v77)
      {
        goto LABEL_95;
      }
    }

    v76 = 1;
LABEL_96:
    while (!v76)
    {
LABEL_95:
      objc_opt_self();
      __break(1u);
    }
  }

LABEL_3:
  v90 = v3;
  v91 = v4;
  v86 = v1;
  v5 = objc_alloc_init(NSFetchRequest);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v6 = *(v2 + 40);
  v7 = [v6 countByEnumeratingWithState:&v107 objects:v106 count:16];
  v88 = v2;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v108;
    v11 = *MEMORY[0x1E695D930];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v108 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v107 + 1) + 8 * i);
        if (![v13 superentity])
        {
          v100 = 0;
          [(NSFetchRequest *)v5 setEntity:v13];
          -[NSFetchRequest setAffectedStores:](v5, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObject:v90]);
          if (![(NSManagedObjectContext *)v4 executeFetchRequest:v5 error:&v100])
          {
            v9 = [MEMORY[0x1E695DF30] exceptionWithName:v11 reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Fetch instances of entity %@ from store %@ failed, reason: %@", v13, v90, v100), 0}];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v107 objects:v106 count:16];
    }

    while (v8);

    v14 = v4;
    if (v9)
    {
      goto LABEL_101;
    }
  }

  else
  {

    v14 = v4;
  }

  v15 = [(NSManagedObjectContext *)v14 registeredObjects];
  v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSSet count](v15, "count")}];
  v85 = [(NSSet *)[(NSManagedObjectContext *)v14 deletedObjects] count];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v17 = [(NSSet *)v15 countByEnumeratingWithState:&v96 objects:&v102 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v97;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v97 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v96 + 1) + 8 * j);
        if ([objc_msgSend(v21 "objectID")] == v90)
        {
          [v16 addObject:v21];
          if (v21)
          {
            v22 = _insertion_fault_handler;
          }

          else
          {
            v22 = 0;
          }

          [NSFaultHandler _fireFirstAndSecondLevelFaultsForObject:v22 withContext:v21];
        }
      }

      v18 = [(NSSet *)v15 countByEnumeratingWithState:&v96 objects:&v102 count:16];
    }

    while (v18);
  }

  obj = v16;
  v23 = [(NSManagedObjectContext *)v14 registeredObjects];
  v24 = [(NSSet *)[(NSManagedObjectContext *)v14 deletedObjects] count];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v25 = [(NSSet *)v23 countByEnumeratingWithState:&v92 objects:v101 count:16];
  if (!v25)
  {
    v27 = 0;
    goto LABEL_46;
  }

  v26 = v25;
  v27 = 0;
  v28 = *v93;
  do
  {
    for (k = 0; k != v26; ++k)
    {
      if (*v93 != v28)
      {
        objc_enumerationMutation(v23);
      }

      v30 = *(*(&v92 + 1) + 8 * k);
      if ([objc_msgSend(v30 "objectID")] == v90)
      {
        ++v27;
        if (([obj containsObject:v30] & 1) == 0)
        {
          v31 = [v30 objectID];
          if (v30[16] & 0x12) != 0 || (v32 = v31, ([v31 isTemporaryID]))
          {
LABEL_42:
            v34 = *MEMORY[0x1E695D930];
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v30, @"object", 0}];
            v36 = @"Save failed during during migratePersistentStore:toURL:options:withType:error:, object added to store during fetch.";
            v37 = v34;
            v38 = 134030;
          }

          else
          {
            v100 = 0;
            v33 = [v90 newValuesForObjectWithID:v32 withContext:v14 error:&v100];
            if (v33)
            {

              goto LABEL_42;
            }

            v61 = v100;
            v62 = *MEMORY[0x1E696A778];
            v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData could not fulfill a fault for '%@'", v32];
            v64 = MEMORY[0x1E695DF20];
            v65 = [MEMORY[0x1E695DEC8] arrayWithObject:v30];
            if (v61)
            {
              v66 = [v64 dictionaryWithObjectsAndKeys:{v65, @"NSAffectedObjectsErrorKey", v100, *MEMORY[0x1E696AA08], 0}];
            }

            else
            {
              v66 = [v64 dictionaryWithObjectsAndKeys:{v65, @"NSAffectedObjectsErrorKey", 0, v83, v84}];
            }

            v67 = [_NSCoreDataException exceptionWithName:v62 code:133000 reason:v63 userInfo:v66];
            v68 = *MEMORY[0x1E695D930];
            v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Referential integrity problem found during migratePersistentStore:toURL:options:withType:error: %@", objc_msgSend(v67, "reason")];
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v67, @"NSUnderlyingException", 0}];
            v37 = v68;
            v38 = 133000;
            v36 = v69;
          }

          v9 = [_NSCoreDataException exceptionWithName:v37 code:v38 reason:v36 userInfo:v35];
          if (!v9)
          {
            goto LABEL_46;
          }

LABEL_101:

          objc_exception_throw(v9);
        }
      }
    }

    v26 = [(NSSet *)v23 countByEnumeratingWithState:&v92 objects:v101 count:16];
  }

  while (v26);
LABEL_46:
  if ([obj count] == v27)
  {
    if (v24 != v85)
    {
      v39 = *MEMORY[0x1E695D930];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Save failed during migratePersistentStore:toURL:options:withType:error:, %d objects in store were removed during fetch.", v24 - v85];
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  v39 = *MEMORY[0x1E695D930];
  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Save failed during migratePersistentStore:toURL:options:withType:error:, %d objects in store were removed during fetch.", objc_msgSend(obj, "count") - v27];
LABEL_50:
  v9 = [_NSCoreDataException exceptionWithName:v39 code:134030 reason:v40 userInfo:0];
  if (v9)
  {
    goto LABEL_101;
  }

LABEL_51:
  v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v44 = [obj countByEnumeratingWithState:&v102 objects:v106 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v103;
    do
    {
      for (m = 0; m != v45; ++m)
      {
        if (*v103 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v102 + 1) + 8 * m);
        v49 = [v48 objectID];
        [v41 addObject:v49];
        v50 = -[NSTemporaryObjectID initWithEntity:]([NSTemporaryObjectID alloc], "initWithEntity:", [v48 entity]);
        [v41 addObject:v48];
        [v42 addObject:v48];
        [v43 addObject:v50];

        [(NSManagedObjectContext *)v91 _insertObjectWithGlobalID:v48 globalID:v49];
      }

      v45 = [obj countByEnumeratingWithState:&v102 objects:v106 count:16];
    }

    while (v45);
  }

  if ([v42 count])
  {

    v51 = [v42 count];
    v52 = [*(v88 + 40) entitiesForConfiguration:{objc_msgSend(v87, "configurationName")}];
    if (v51)
    {
      v53 = v52;
      v54 = 0;
      while (1)
      {
        v55 = [v42 objectAtIndex:v54];
        v56 = v55;
        if (_PF_Threading_Debugging_level)
        {
          _PFAssertSafeMultiThreadedAccess_impl([v55 managedObjectContext], sel__assignObject_toPersistentStore_forConfiguration_);
        }

        v57 = [v56 objectID];
        if (![v57 isTemporaryID])
        {
          break;
        }

        if ([v53 indexOfObjectIdenticalTo:{objc_msgSend(v57, "entity")}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v78 = MEMORY[0x1E695DF30];
          v79 = *MEMORY[0x1E695D940];
          v80 = @"Can't assign an object to a store that does not contain the object's entity.";
          goto LABEL_100;
        }

        [v57 _setPersistentStore:v87];
        if (v51 == ++v54)
        {
          goto LABEL_66;
        }
      }

      v78 = MEMORY[0x1E695DF30];
      v79 = *MEMORY[0x1E695D940];
      v80 = @"Can't reassign an object to a different store once it has been saved.";
LABEL_100:
      objc_exception_throw([v78 exceptionWithName:v79 reason:v80 userInfo:0]);
    }
  }

LABEL_66:

  [(NSPersistentStoreCoordinator *)v88 _copyMetadataFromStore:v90 toStore:v87 migrationManager:0];
  if (v90)
  {
    v58 = [MEMORY[0x1E696AD88] defaultCenter];
    *&v107 = @"removed";
    v101[0] = v90;
    [v58 postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:v88 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v101, &v107, 1)}];
  }

  [(NSPersistentStoreCoordinator *)v88 _removePersistentStore:v90];
  *&v96 = 0;
  [(NSManagedObjectContext *)v91 save:&v96];
  v1 = v86;
  if (v96)
  {

    v81 = v91;
    v82 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134030, @"Save failed.", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v96, @"NSCoreDataPrimaryError", 0}]);
    objc_exception_throw(v82);
  }

  [(NSManagedObjectContext *)v91 reset];

  if (v96)
  {
    v59 = 0;
  }

  else
  {
    v59 = v41;
  }

LABEL_72:
  *(*(v1[7] + 8) + 40) = v59;
  v60 = *MEMORY[0x1E69E9840];
}

- (NSPersistentHistoryToken)currentPersistentHistoryTokenFromStores:(NSArray *)stores
{
  if (!stores || (v4 = stores, ![(NSArray *)stores count]))
  {
    v4 = [(NSPersistentStoreCoordinator *)self persistentStores];
  }

  v5 = [(NSPersistentStoreCoordinator *)self _retainedChangeTokenFromStores:v4];

  return v5;
}

- (_NSPersistentHistoryToken)_retainedChangeTokenFromStores:(_NSPersistentHistoryToken *)result
{
  v32 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = [a2 count];
    if (result)
    {
      v3 = [MEMORY[0x1E695DF90] dictionary];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v4 = [a2 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v26;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v26 != v6)
            {
              objc_enumerationMutation(a2);
            }

            v8 = *(*(&v25 + 1) + 8 * i);
            v9 = [v8 currentChangeToken];
            if (v9)
            {
              [v3 setObject:v9 forKey:{objc_msgSend(v8, "identifier")}];
            }
          }

          v5 = [a2 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v5);
      }

      v24 = 0;
      if ([v3 count] == 1)
      {
        [v3 getObjects:&v24 andKeys:0 count:1];
        v10 = v24;
        result = v24;
      }

      else
      {
        result = [v3 count];
        if (result)
        {
          v11 = [MEMORY[0x1E695DF90] dictionary];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v12 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v3);
                }

                v16 = *(*(&v20 + 1) + 8 * j);
                v17 = [v3 objectForKey:v16];
                memset(v19, 0, sizeof(v19));
                if ([objc_msgSend(v17 storeTokens])
                {
                  [v11 setObject:objc_msgSend(objc_msgSend(v17 forKey:{"storeTokens"), "objectForKey:", **(&v19[0] + 1)), v16}];
                }
              }

              v13 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
            }

            while (v13);
          }

          result = [[_NSPersistentHistoryToken alloc] initWithDictionary:v11];
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSManagedObjectID)managedObjectIDForURIRepresentation:(NSURL *)url
{
  if (!url)
  {
    return 0;
  }

  v6 = 0;
  v4 = [(NSPersistentStoreCoordinator *)self managedObjectIDForURIRepresentation:&v6 error:?];
  if (!v4 && (!v6 || [v6 code] != 134000))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"The specified URI is not a valid Core Data URI: %@", url), 0}]);
  }

  return &v4->super;
}

- (NSTemporaryObjectID)managedObjectIDForURIRepresentation:(void *)a3 error:
{
  v3 = 0;
  v27 = *MEMORY[0x1E69E9840];
  if (a1 && url)
  {
    v21 = 0;
    v7 = buffer;
    v8 = CFURLGetBytes(url, buffer, 511);
    if (v8 < 0)
    {
      v9 = CFURLGetBytes(url, 0, 0);
      v7 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
      v8 = CFURLGetBytes(url, v7, v9);
    }

    if (v8 <= 0)
    {
      if (v7 != buffer)
      {
        free(v7);
      }

      v3 = 0;
    }

    else
    {
      v7[v8] = 0;
      if (a3)
      {
        v10 = &v21;
      }

      else
      {
        v10 = 0;
      }

      v3 = [(NSPersistentStoreCoordinator *)a1 managedObjectIDFromUTF8String:v7 length:v8 error:v10];
      if (v7 != buffer)
      {
        free(v7);
      }

      if (a3 && !v3)
      {
        v11 = MEMORY[0x1E696ABC0];
        if (v21)
        {
          v12 = [v21 domain];
          v13 = [v21 code];
          v24 = @"URI is not a valid Core Data URI";
          v25 = url;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          v15 = v11;
          v16 = v12;
          v17 = v13;
        }

        else
        {
          v18 = *MEMORY[0x1E696A250];
          v22 = @"URI is not a valid Core Data URI";
          v23 = url;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          v15 = v11;
          v16 = v18;
          v17 = 134060;
        }

        v3 = 0;
        *a3 = [v15 errorWithDomain:v16 code:v17 userInfo:{v14, v21}];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v3;
}

- (uint64_t)_finishDeferredLightweightMigrationTasks:(void *)a3 withError:
{
  if (a1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__19;
    v14 = __Block_byref_object_dispose__19;
    v15 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __113__NSPersistentStoreCoordinator_DeferredLightweightMigration___finishDeferredLightweightMigrationTasks_withError___block_invoke;
    v8[3] = &unk_1E6EC2F30;
    v9 = a2;
    v8[4] = a1;
    v8[5] = &v10;
    v8[6] = &v16;
    [a1 performBlockAndWait:v8];
    v4 = v11[5];
    v5 = v17;
    v6 = *(v17 + 24);
    if (a3 && (v17[3] & 1) == 0)
    {
      *a3 = v11[5];
      v6 = *(v5 + 24);
    }

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (id)_exceptionNoStoreSaveFailureForError:(id)a3 recommendedFrame:(int *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  if (a3)
  {
    v6 = [a3 code];
    v7 = [a3 domain];
    if ([v7 isEqualToString:@"NSSQLiteErrorDomain"])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    }

    else
    {
      v8 = [objc_msgSend(a3 "userInfo")];
    }

    v14 = v8;
    v15 = *MEMORY[0x1E696A798];
    if ([v7 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    }

    else
    {
      v16 = [objc_msgSend(a3 "userInfo")];
    }

    v17 = v16;
    if ([v7 isEqualToString:*MEMORY[0x1E696A250]])
    {
      if (v6 == 134020 || v6 == 134100)
      {
        if (!a4)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v18 = v6 - 134171;
      if (a4 && v18 >= 0xFFFFFFFFFFFFFFB9)
      {
LABEL_21:
        *a4 = 2;
LABEL_22:
        v19 = @"(schema mismatch or migration failure)";
        goto LABEL_57;
      }

      if (v18 > 0xFFFFFFFFFFFFFFB8)
      {
        goto LABEL_22;
      }
    }

    if (v14)
    {
      v20 = [v14 integerValue];
      if (v20 <= 0xC)
      {
        switch(v20)
        {
          case 3:
            if (a4)
            {
              *a4 = 5;
            }

            v19 = @"(permission denied)";
            goto LABEL_57;
          case 10:
            if (a4)
            {
              *a4 = 8;
            }

            v19 = @"(I/O error)";
            goto LABEL_57;
          case 11:
LABEL_42:
            if (a4)
            {
              *a4 = 1;
            }

            v19 = @"(corrupt file)";
            goto LABEL_57;
        }
      }

      else
      {
        if (v20 <= 22)
        {
          if (v20 != 13)
          {
            if (v20 == 14)
            {
              if (a4)
              {
                *a4 = 6;
              }

              v19 = @"(can't open)";
              goto LABEL_57;
            }

            goto LABEL_37;
          }

          if (a4)
          {
            *a4 = 7;
          }

          v19 = @"(disk full)";
LABEL_57:
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This NSPersistentStoreCoordinator has no persistent stores %@.  It cannot perform a save operation.", v19];
          v10 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            v21 = _pflogging_catastrophic_mode;
            LogStream = _PFLogGetLogStream(1);
            v23 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
            if (v21)
            {
              if (v23)
              {
                goto LABEL_64;
              }
            }

            else if (v23)
            {
LABEL_64:
              *buf = 138413058;
              *&buf[4] = v9;
              *&buf[12] = 2112;
              *&buf[14] = [a3 domain];
              *&buf[22] = 2048;
              v33 = [a3 code];
              LOWORD(v34) = 2112;
              *(&v34 + 2) = [a3 userInfo];
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Illegal attempt to save to a file that was never opened.  %@.  Last recorded error = %@(%ld) / %@\n\n", buf, 0x2Au);
            }
          }

          v24 = [a3 domain];
          v25 = [a3 code];
          v31 = [a3 userInfo];
          _NSCoreDataLog_console(1, "Illegal attempt to save to a file that was never opened.  %@.  Last recorded error = %@(%ld) / %@\n", v9, v24, v25, v31, *buf, *&buf[16], v33, v34);
          goto LABEL_63;
        }

        if (v20 == 23)
        {
          if (a4)
          {
            *a4 = 3;
          }

          v19 = @"(device locked)";
          goto LABEL_57;
        }

        if (v20 == 26)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_37:
    if (v17)
    {
      [v17 integerValue];
    }

    v19 = @"(unknown)";
    goto LABEL_57;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This NSPersistentStoreCoordinator has no persistent stores %@.  It cannot perform a save operation.", @"(unknown)"];
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
        *buf = 138412290;
        *&buf[4] = v9;
LABEL_66:
        _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: Illegal attempt to save to a file that was never opened. %@. No last error recorded.\n", buf, 0xCu);
      }
    }

    else if (v13)
    {
      *buf = 138412290;
      *&buf[4] = v9;
      goto LABEL_66;
    }
  }

  _NSCoreDataLog_console(1, "Illegal attempt to save to a file that was never opened. %@. No last error recorded.", v9, v28, v29, v30, *buf, *&buf[16], v33, v34);
LABEL_63:
  objc_autoreleasePoolPop(v10);
  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_introspectLastErrorAndThrow
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    v2 = [result _exceptionNoStoreSaveFailureForError:result[9] recommendedFrame:&v3];
    if (v3 > 4)
    {
      if (v3 > 6)
      {
        if (v3 == 7)
        {
          return [v1 _coordinator_you_never_successfully_opened_the_database_disk_full:v2];
        }

        if (v3 == 8)
        {
          return [v1 _coordinator_you_never_successfully_opened_the_database_io_error:v2];
        }

        return [v1 _coordinator_you_never_successfully_opened_the_database_so_saving_back_to_it_is_kinda_hard:v2];
      }

      if (v3 == 5)
      {
        return [v1 _coordinator_you_never_successfully_opened_the_database_no_permission:v2];
      }

      else
      {
        return [v1 _coordinator_you_never_successfully_opened_the_database_cant_open:v2];
      }
    }

    else
    {
      if (v3 <= 2)
      {
        if (v3 == 1)
        {
          return [v1 _coordinator_you_never_successfully_opened_the_database_corrupted:v2];
        }

        if (v3 == 2)
        {
          return [v1 _coordinator_you_never_successfully_opened_the_database_schema_mismatch:v2];
        }

        return [v1 _coordinator_you_never_successfully_opened_the_database_so_saving_back_to_it_is_kinda_hard:v2];
      }

      if (v3 == 3)
      {
        return [v1 _coordinator_you_never_successfully_opened_the_database_device_locked:v2];
      }

      else
      {
        return [v1 _coordinator_you_never_successfully_opened_the_database_missing_directory:v2];
      }
    }
  }

  return result;
}

- (BOOL)_canRouteToStore:(void *)a3 forContext:
{
  if (result)
  {
    v4 = [a3 _queryGenerationToken];
    if ([v4 _isEnabled])
    {
      return +[NSQueryGenerationToken nostoresQueryGenerationToken]!= v4 && [(_NSQueryGenerationToken *)v4 _generationalComponentForStore:a2]!= 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)executeRequest:(NSPersistentStoreRequest *)request withContext:(NSManagedObjectContext *)context error:(NSError *)error
{
  v87 = *MEMORY[0x1E69E9840];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3052000000;
  v77 = __Block_byref_object_copy__19;
  v78 = __Block_byref_object_dispose__19;
  v79 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3052000000;
  v71 = __Block_byref_object_copy__19;
  v72 = __Block_byref_object_dispose__19;
  v73 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v8 = [(NSPersistentStoreRequest *)request requestType];
  v9 = v8;
  v54 = 0;
  if (v8 <= 4)
  {
    if (v8 == NSFetchRequestType)
    {
      v34 = [(NSPersistentStoreRequest *)request resultType];
      LOBYTE(v10) = [(NSPersistentStoreRequest *)request _isAsyncRequest];
      v54 = 0;
      v51 = 0;
      if (v34 == 4)
      {
        v9 = 3;
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_9;
    }

    if (v8 != NSSaveRequestType)
    {
      goto LABEL_68;
    }

LABEL_8:
    v51 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Executing write request"];
    LOBYTE(v10) = 0;
    v54 = 1;
    goto LABEL_9;
  }

  if (v8 - 5 < 3)
  {
    goto LABEL_8;
  }

  if (v8 == 8)
  {
    v10 = [(NSPersistentStoreRequest *)request isDelete];
    if (!v10)
    {
      v54 = 0;
      v51 = 0;
      v9 = 8;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_68:
  v51 = 0;
  LOBYTE(v10) = 0;
LABEL_9:
  if (context && (v10 & 1) == 0 && _PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(context, a2);
  }

  if (!PFInstrumentsRecordingEnabled())
  {
    goto LABEL_25;
  }

  if (v9 == 1 || v9 == 3)
  {
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_496;
    v63[3] = &unk_1E6EC2C88;
    v63[4] = request;
    spid = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_496(v63);
    goto LABEL_27;
  }

  if (v9 != 2)
  {
LABEL_25:
    spid = 0;
LABEL_27:
    v62 = 0;
    v12 = 1;
    if (v9 > 7 || ((1 << v9) & 0xE4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  spid = os_signpost_id_generate(PFInstrumentsGetLog_coreDataInstrumentsLog);
  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  v11 = PFInstrumentsGetLog_coreDataInstrumentsLog;
  kdebug_trace();
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18565F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Save", &unk_1859905C6, buf, 2u);
  }

  v62 = 0;
LABEL_29:
  v12 = 0;
LABEL_30:
  if (context)
  {
    persistentStoreIdentifiers = context->_persistentStoreIdentifiers;
  }

  else
  {
    persistentStoreIdentifiers = 0;
  }

  v14 = +[NSQueryGenerationToken currentQueryGenerationToken];
  if (v14 != [(NSManagedObjectContext *)context _queryGenerationToken])
  {
    v15 = 1;
    goto LABEL_34;
  }

  v25 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:?];
  if (v25)
  {
    v26 = [(NSManagedObjectContext *)context _setQueryGenerationFromToken:v25 error:&v62];

    if (v26)
    {
      v15 = 1;
      goto LABEL_34;
    }
  }

  else
  {
    v62 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134502 userInfo:0];
  }

  if (!v12)
  {
    [(NSManagedObjectContext *)context _setQueryGenerationFromToken:+[NSQueryGenerationToken error:"unpinnedQueryGenerationToken"], 0];
    v15 = 0;
LABEL_34:
    if (v9 != 8 || ![(NSPersistentStoreRequest *)request token])
    {
LABEL_48:
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_503;
      v56[3] = &unk_1E6EC2CB0;
      v56[4] = request;
      v56[5] = persistentStoreIdentifiers;
      v56[6] = self;
      v56[7] = context;
      v57 = v15;
      v56[8] = &v68;
      v56[9] = &v64;
      v56[10] = &v74;
      v56[11] = v9;
      v56[12] = spid;
      v56[13] = error;
      [(NSPersistentStoreCoordinator *)self _routeHeavyweightBlock:v56];
      if (v65[3])
      {
        pthread_yield_np();
        v24 = [(NSPersistentStoreCoordinator *)self executeRequest:request withContext:context error:error];
LABEL_93:
        v35 = v24;
        goto LABEL_94;
      }

      if (request && v9 == 2)
      {
        request[3].super.isa = (request[3].super.isa & 0xFFFFFF00);
      }

      v27 = v75[5];
      if (error && !v69[5])
      {
        *error = v75[5];
      }

      if (spid)
      {
        if (v9 == 1 || v9 == 3)
        {
          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          if (spid == -1)
          {
            goto LABEL_87;
          }

          v39 = PFInstrumentsGetLog_coreDataInstrumentsLog;
          if (!os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
          {
            goto LABEL_87;
          }

          v40 = [v69[5] count];
          *buf = 67109120;
          LODWORD(v84) = v40;
          v29 = "Fetch";
          v30 = "%d";
          v31 = v39;
          v32 = spid;
          v33 = 8;
        }

        else
        {
          if (v9 != 2)
          {
            goto LABEL_87;
          }

          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          if (spid == -1)
          {
            goto LABEL_87;
          }

          v28 = PFInstrumentsGetLog_coreDataInstrumentsLog;
          if (!os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
          {
            goto LABEL_87;
          }

          *buf = 0;
          v29 = "Save";
          v30 = &unk_1859905C6;
          v31 = v28;
          v32 = spid;
          v33 = 2;
        }

        _os_signpost_emit_with_name_impl(&dword_18565F000, v31, OS_SIGNPOST_INTERVAL_END, v32, v29, v30, buf, v33);
      }

LABEL_87:
      if ((v69[5] == 0) == (v75[5] == 0))
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Either a non nil result OR an error\n", buf, 2u);
        }

        v42 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18565F000, v42, OS_LOG_TYPE_FAULT, "CoreData: Either a non nil result OR an error", buf, 2u);
        }
      }

      v24 = v69[5];
      goto LABEL_93;
    }

    exception_object = [(NSPersistentStoreRequest *)request token];
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(-[_Unwind_Exception storeTokens](exception_object, "storeTokens"), "count")}];
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(-[_Unwind_Exception storeTokens](exception_object, "storeTokens"), "count")}];
    v48 = v15;
    v49 = persistentStoreIdentifiers;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v58 = 0u;
    v18 = [(_Unwind_Exception *)exception_object storeTokens];
    v19 = [v18 countByEnumeratingWithState:&v58 objects:v82 count:16];
    if (v19)
    {
      v20 = *v59;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v59 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v58 + 1) + 8 * i);
          v23 = [(NSPersistentStoreCoordinator *)self persistentStoreForIdentifier:v22];
          if (v23)
          {
            [v16 addObject:v23];
          }

          else
          {
            [v17 addObject:v22];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v58 objects:v82 count:16];
      }

      while (v19);
    }

    persistentStoreIdentifiers = v49;
    v15 = v48;
    if ([v16 count])
    {
      [(NSPersistentStoreRequest *)request setAffectedStores:v16];
      goto LABEL_48;
    }

    v36 = MEMORY[0x1E696ABC0];
    v80 = @"Reason";
    v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find stores referenced in History Token (%@) - %@", exception_object, v17];
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v38 = [v36 errorWithDomain:*MEMORY[0x1E696A250] code:134501 userInfo:v37];
    v75[5] = v38;
    if (v38)
    {
      if (error)
      {
        v35 = 0;
        *error = v38;
        goto LABEL_94;
      }

      goto LABEL_104;
    }

    v47 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v84 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
      v85 = 1024;
      v86 = 2715;
      _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v46 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_104;
    }

    *buf = 136315394;
    v84 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
    v85 = 1024;
    v86 = 2715;
LABEL_106:
    _os_log_fault_impl(&dword_18565F000, v46, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_104;
  }

  if (v62)
  {
    if (error)
    {
      v35 = 0;
      *error = v62;
      goto LABEL_94;
    }

    goto LABEL_104;
  }

  v45 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v84 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
    v85 = 1024;
    v86 = 2692;
    _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v46 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v84 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
    v85 = 1024;
    v86 = 2692;
    goto LABEL_106;
  }

LABEL_104:
  v35 = 0;
LABEL_94:
  if (v54)
  {
    [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v51];
  }

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v74, 8);
  v43 = *MEMORY[0x1E69E9840];
  return v35;
}

os_signpost_id_t __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_496(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  v2 = os_signpost_id_generate(PFInstrumentsGetLog_coreDataInstrumentsLog);
  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  v3 = PFInstrumentsGetLog_coreDataInstrumentsLog;
  kdebug_trace();
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v4 = [objc_msgSend(*(a1 + 32) "entity")];
    v7 = 138412290;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_18565F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Fetch", "%@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

void __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_503(uint64_t a1, void *a2)
{
  v404 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) affectedStores];
  v300 = a1;
  if ([v4 count])
  {
    obj = [MEMORY[0x1E695DF70] array];
    v352 = 0u;
    v353 = 0u;
    v354 = 0u;
    v355 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v352 objects:v395 count:16];
    if (v5)
    {
      v6 = *v353;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v353 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v352 + 1) + 8 * i);
          if ([a2 containsObject:v8])
          {
            [obj addObject:v8];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v352 objects:v395 count:16];
      }

      while (v5);
    }
  }

  else if ([*(a1 + 40) count])
  {
    obj = [MEMORY[0x1E695DF70] array];
    v356 = 0u;
    v357 = 0u;
    v358 = 0u;
    v359 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v356 objects:v396 count:16];
    if (v9)
    {
      v10 = *v357;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v357 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v356 + 1) + 8 * j);
          if ([*(v300 + 40) containsObject:{objc_msgSend(v12, "identifier")}])
          {
            [obj addObject:v12];
          }
        }

        v9 = [a2 countByEnumeratingWithState:&v356 objects:v396 count:16];
      }

      while (v9);
    }
  }

  else
  {
    obj = a2;
  }

  v13 = *(v300 + 88);
  v14 = v13 > 7;
  v15 = (1 << v13) & 0xE4;
  if (v14 || v15 == 0)
  {
    if (!*(v300 + 48))
    {
      obj = 0;
      v17 = [0 count];
      goto LABEL_29;
    }

    v28 = [*(v300 + 56) _queryGenerationToken];
    if ([v28 _isEnabled])
    {
      if (+[NSQueryGenerationToken nostoresQueryGenerationToken]== v28)
      {
        obj = NSArray_EmptyArray;
        v17 = [NSArray_EmptyArray count];
      }

      else
      {
        obj = [(_NSQueryGenerationToken *)v28 _storesForRequestRoutingFrom:0 error:?];
        v17 = [obj count];
      }

      goto LABEL_29;
    }
  }

  v17 = [obj count];
LABEL_29:
  v295 = v17;
  if (![obj count] || (*(v300 + 88) | 2) == 3 && ((v18 = objc_msgSend(*(v300 + 32), "entity"), v19 = objc_msgSend(v18, "managedObjectModel"), v20 = *(v300 + 48), v19 != *(v20 + 40)) && ((v21 = *(v20 + 96), v22 = _PFModelMapPathForEntity(v18), !v21) || !objc_msgSend(*(v21 + 56), "objectForKey:", v22)) || (*(v300 + 112) & 1) == 0))
  {
    v23 = *(v300 + 88);
    if (v23 > 7)
    {
      if (v23 <= 9)
      {
        if (v23 == 8)
        {
          v195 = [NSPersistentHistoryResult alloc];
          v196 = [*(v300 + 32) resultType];
          v24 = [(NSPersistentHistoryResult *)v195 initWithResultType:v196 andResult:NSArray_EmptyArray];
          goto LABEL_366;
        }

        *buf = 0;
        v25 = [*(v300 + 48) _exceptionNoStoreSaveFailureForError:*(*(v300 + 48) + 72) recommendedFrame:buf];
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v393 = @"reason";
        v394 = v25;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v394 forKeys:&v393 count:1];
        *(*(*(v300 + 80) + 8) + 40) = [v26 initWithDomain:*MEMORY[0x1E696A250] code:134098 userInfo:v27];
        *(*(*(v300 + 64) + 8) + 40) = 0;
        goto LABEL_505;
      }

      if (v23 == 10)
      {
        v197 = [NSSQLiteIndexStatisticsResult alloc];
        v24 = [(NSSQLiteIndexStatisticsResult *)v197 initWithResult:NSArray_EmptyArray];
        goto LABEL_366;
      }

      if (v23 == 11)
      {
        v116 = [NSPersistentCloudKitContainerEventResult alloc];
        v24 = -[NSPersistentCloudKitContainerEventResult initWithResult:ofType:](v116, "initWithResult:ofType:", NSArray_EmptyArray, [*(v300 + 32) resultType]);
        goto LABEL_366;
      }

      goto LABEL_393;
    }

    if (v23 <= 4)
    {
      if (v23 == 1)
      {
LABEL_40:
        v24 = NSArray_EmptyArray;
LABEL_366:
        *(*(*(v300 + 64) + 8) + 40) = v24;
        goto LABEL_505;
      }

      if (v23 != 2)
      {
        if (v23 == 3)
        {
          goto LABEL_40;
        }

LABEL_393:
        [*(v300 + 48) _coordinator_no_idea_what_kind_of_request_that_was_supposed_to_be];
        goto LABEL_49;
      }

      v198 = *(v300 + 32);
      if (v198)
      {
        v199 = *(v198 + 48);
        if (v199)
        {
          goto LABEL_48;
        }

        *(v198 + 48) = v199 & 0xFFFFFF00 | 1;
      }

      *(*(*(v300 + 72) + 8) + 24) = 1;
      goto LABEL_505;
    }

LABEL_48:
    [(NSPersistentStoreCoordinator *)*(v300 + 48) _introspectLastErrorAndThrow];
  }

LABEL_49:
  v29 = *(v300 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(v300 + 32) _incrementInUseCounter];
  }

  if (v295 < 2)
  {
    goto LABEL_85;
  }

  v30 = *(v300 + 88);
  if (v30 <= 7 && ((1 << v30) & 0xEA) != 0)
  {
    v31 = [obj mutableCopy];
    v32 = *(v300 + 32);
    if (*(v300 + 88) == 7)
    {
      v32 = [v32 fetchRequest];
    }

    v33 = [v32 entity];
    if ([objc_msgSend(v33 "managedObjectModel")] < 15001)
    {
      v346 = 0uLL;
      v347 = 0uLL;
      v344 = 0uLL;
      v345 = 0uLL;
      v39 = [obj countByEnumeratingWithState:&v344 objects:v391 count:16];
      if (v39)
      {
        v40 = 0;
        v41 = *v345;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v345 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v43 = [*(*(&v344 + 1) + 8 * k) configurationName];
            if ([v43 isEqualToString:@"PF_DEFAULT_CONFIGURATION_NAME"] || objc_msgSend(objc_msgSend(*(*(v300 + 48) + 40), "entitiesForConfiguration:", v43), "indexOfObjectIdenticalTo:", v33) != 0x7FFFFFFFFFFFFFFFLL)
            {
              ++v40;
            }

            else
            {
              [v31 removeObjectAtIndex:v40];
            }
          }

          v39 = [obj countByEnumeratingWithState:&v344 objects:v391 count:16];
        }

        while (v39);
      }
    }

    else
    {
      v350 = 0uLL;
      v351 = 0uLL;
      v348 = 0uLL;
      v349 = 0uLL;
      v34 = [obj countByEnumeratingWithState:&v348 objects:v392 count:16];
      if (v34)
      {
        v35 = 0;
        v36 = *v349;
        do
        {
          for (m = 0; m != v34; ++m)
          {
            if (*v349 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v348 + 1) + 8 * m);
            if ([objc_msgSend(v38 "type")] && v38 && (v38[201] & 4) != 0)
            {
              ++v35;
            }

            else
            {
              [v31 removeObjectAtIndex:v35];
            }
          }

          v34 = [obj countByEnumeratingWithState:&v348 objects:v392 count:16];
        }

        while (v34);
      }
    }

    if ([v31 count] == v295)
    {
    }

    else
    {
      obj = v31;
      v295 = [obj count];
    }

LABEL_85:
    v343 = 0;
    if (v295 == 1)
    {
      v311 = [obj objectAtIndex:0];
      v44 = v300;
      v45 = *(v300 + 88);
      if (v45 != 2)
      {
        *buf = 0;
        [(NSPersistentStoreCoordinator *)*(v300 + 48) replaceResultTypeOfRequestIfNecessary:v311 store:v45 requestType:buf originalResultType:?];
        *(*(*(v300 + 64) + 8) + 40) = [v311 executeRequest:*(v300 + 32) withContext:*(v300 + 56) error:&v343];
        if (*(v300 + 88) == 1 && *(v300 + 96))
        {
          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          v44 = v300;
          v112 = *(v300 + 96);
          if (v112 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v113 = PFInstrumentsGetLog_coreDataInstrumentsLog;
            if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
            {
              v114 = [*(*(*(v300 + 64) + 8) + 40) count];
              *v399 = 67109120;
              v400 = v114;
              _os_signpost_emit_with_name_impl(&dword_18565F000, v113, OS_SIGNPOST_INTERVAL_END, v112, "Fetch", "%d", v399, 8u);
              v44 = v300;
            }
          }
        }

        if (*(v44 + 48))
        {
          if (*(*(*(v44 + 64) + 8) + 40))
          {
            v115 = *(v44 + 88);
            if ([objc_msgSend(v311 "type")])
            {
              if ([v311 coreSpotlightExporter] && (v115 - 5) <= 2)
              {
                -[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]([v311 coreSpotlightExporter], *(*(*(v44 + 64) + 8) + 40));
                *(*(*(v44 + 64) + 8) + 40) = [(NSPersistentStoreCoordinator *)*(v44 + 48) restoreOriginalRequestIfNecessary:v311 store:*(*(*(v44 + 64) + 8) + 40) swizzledResults:*(v44 + 88) originalRequestType:*buf originalResultType:?];
              }
            }
          }
        }

        if (!*(*(*(v44 + 64) + 8) + 40) && *(v44 + 104))
        {
          *(*(*(v44 + 80) + 8) + 40) = v343;
        }

        goto LABEL_455;
      }

      if ([v311 isReadOnly])
      {
        if (*(v300 + 96))
        {
          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          v46 = *(v300 + 96);
          if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v47 = PFInstrumentsGetLog_coreDataInstrumentsLog;
            if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_18565F000, v47, OS_SIGNPOST_INTERVAL_END, v46, "Save", &unk_1859905C6, buf, 2u);
            }
          }
        }

        if ([objc_msgSend(v311 "options")])
        {
          v48 = @"Unable to write to file opened Read Only.";
        }

        else
        {
          v48 = @"File is in Read Only mode due to Persistent History being detected but NSPersistentHistoryTrackingKey was not included.";
        }

        v49 = MEMORY[0x1E695DF20];
        v50 = [objc_msgSend(v311 "URL")];
        v51 = [v311 options];
        if (!v51)
        {
          v51 = [MEMORY[0x1E695DFB0] null];
        }

        v52 = [v49 dictionaryWithObjectsAndKeys:{v50, @"storeURL", v51, @"NSPersistentStoreOptions", v48, @"reason", 0}];
        *(*(*(v300 + 80) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:513 userInfo:v52];
        v53 = *(v300 + 64);
        goto LABEL_411;
      }

      [v311 _preflightCrossCheck];
      contextb = [MEMORY[0x1E695DF70] array];
      v162 = *(v300 + 48);
      if (!v162)
      {
LABEL_390:
        if ([contextb count])
        {
          if (*(v300 + 96))
          {
            if (PFInstrumentsGetLog_logtoken != -1)
            {
              dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
            }

            v284 = *(v300 + 96);
            if (v284 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v285 = PFInstrumentsGetLog_coreDataInstrumentsLog;
              if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_18565F000, v285, OS_SIGNPOST_INTERVAL_END, v284, "Save", &unk_1859905C6, buf, 2u);
              }
            }
          }

          v286 = [MEMORY[0x1E695DF20] dictionaryWithObject:contextb forKey:@"conflictList"];
          objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v286]);
        }

        v208 = [v311 _prepareForExecuteRequest:*(v300 + 32) withContext:*(v300 + 56) error:&v343];
        if (v208)
        {
          v209 = [v311 executeRequest:*(v300 + 32) withContext:*(v300 + 56) error:&v343];
        }

        else
        {
          v209 = 0;
        }

        if (*(v300 + 96))
        {
          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          v210 = *(v300 + 96);
          if (v210 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v211 = PFInstrumentsGetLog_coreDataInstrumentsLog;
            if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_18565F000, v211, OS_SIGNPOST_INTERVAL_END, v210, "Save", &unk_1859905C6, buf, 2u);
            }
          }
        }

        if (v209)
        {
          if ([v311 coreSpotlightExporter])
          {
            -[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]([v311 coreSpotlightExporter], *(v300 + 32));
          }
        }

        else
        {
          if (v343)
          {
            v213 = v208;
          }

          else
          {
            v213 = 0;
          }

          if (v213 == 1 && [v343 code] == 134050)
          {
            v291 = [v343 userInfo];
            objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v291]);
          }

          if (*(v300 + 104))
          {
            *(*(*(v300 + 80) + 8) + 40) = v343;
          }
        }

        *(*(*(v300 + 64) + 8) + 40) = v209;
        goto LABEL_455;
      }

      v163 = *(v300 + 56);
      v304 = *(v300 + 32);
      if (_PF_Threading_Debugging_level)
      {
        _PFAssertSafeMultiThreadedAccess_impl(v163, sel__checkRequestForStore_withContext_originalRequest_andOptimisticLocking_);
      }

      v164 = [v311 isReadOnly];
      if ((([objc_msgSend(v304 "insertedObjects")] != 0) & v164) == 1)
      {
        v282 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v311), @"NSAffectedStoresErrorKey", 0}];
        v283 = [_NSCoreDataException exceptionWithName:134030 code:@"Cannot insert objects into a read only store." reason:v282 userInfo:?];
        objc_exception_throw(v283);
      }

      [v163 stalenessInterval];
      v166 = v165;
      if (v163)
      {
        v163[18] = NSSQLDistantPastTimeInterval;
      }

      v296 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v298 = [v163 _queryGenerationToken];
      v302 = [v298 _isEnabled];
      if (v302)
      {
        [v163 _setQueryGenerationFromToken:+[NSQueryGenerationToken unpinnedQueryGenerationToken](NSQueryGenerationToken error:{"unpinnedQueryGenerationToken"), 0}];
      }

      v167 = [v304 insertedObjects];
      if ([v167 count])
      {
        if ([v311 configurationName])
        {
          v168 = [v311 _entitiesForConfiguration];
          v375 = 0u;
          v374 = 0u;
          v372 = 0u;
          v373 = 0u;
          v169 = [v167 countByEnumeratingWithState:&v372 objects:buf count:16];
          if (v169)
          {
            v170 = *v373;
            do
            {
              for (n = 0; n != v169; ++n)
              {
                if (*v373 != v170)
                {
                  objc_enumerationMutation(v167);
                }

                v172 = *(*(&v372 + 1) + 8 * n);
                if (!CFSetContainsValue(v168, [v172 entity]))
                {
                  v265 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v172, @"NSAffectedObjectsErrorKey", 0}];
                  v266 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store %@ cannot hold instances of entity %@", v311, objc_msgSend(v172, "entity")];
                  v267 = [_NSCoreDataException exceptionWithName:134020 code:v266 reason:v265 userInfo:?];
                  objc_exception_throw(v267);
                }
              }

              v169 = [v167 countByEnumeratingWithState:&v372 objects:buf count:16];
            }

            while (v169);
          }
        }
      }

      v173 = [v304 updatedObjects];
      if ([v173 count])
      {
        if (v164)
        {
          v287 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v311), @"NSAffectedStoresErrorKey", 0}];
          v288 = *MEMORY[0x1E695D940];
          v289 = @"Cannot update objects into a read only store.";
          goto LABEL_545;
        }

        v370 = 0u;
        v371 = 0u;
        v368 = 0u;
        v369 = 0u;
        v174 = [v173 countByEnumeratingWithState:&v368 objects:v399 count:16];
        if (v174)
        {
          v175 = *v369;
          do
          {
            for (ii = 0; ii != v174; ++ii)
            {
              if (*v369 != v175)
              {
                objc_enumerationMutation(v173);
              }

              v177 = *(*(&v368 + 1) + 8 * ii);
              v178 = objc_autoreleasePoolPush();
              if ([objc_msgSend(v177 "objectID")])
              {
                v259 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v177), @"NSAffectedObjectsErrorKey", 0}];
                v260 = [_NSCoreDataException exceptionWithName:134030 code:@"Cannot update object that was never inserted." reason:v259 userInfo:?];
                objc_exception_throw(v260);
              }

              v179 = [(NSPersistentStoreCoordinator *)v162 _conflictsWithRowCacheForObject:v177 withContext:v163 andStore:v311];
              if (v179)
              {
                [contextb addObject:v179];
              }

              objc_autoreleasePoolPop(v178);
            }

            v174 = [v173 countByEnumeratingWithState:&v368 objects:v399 count:16];
          }

          while (v174);
        }
      }

      v180 = [v304 deletedObjects];
      if (![v180 count])
      {
        goto LABEL_370;
      }

      if (!v164)
      {
        v366 = 0u;
        v367 = 0u;
        v364 = 0u;
        v365 = 0u;
        v181 = [v180 countByEnumeratingWithState:&v364 objects:v398 count:16];
        if (v181)
        {
          v306 = 0;
          v182 = *v365;
          do
          {
            for (jj = 0; jj != v181; ++jj)
            {
              if (*v365 != v182)
              {
                objc_enumerationMutation(v180);
              }

              v184 = *(*(&v364 + 1) + 8 * jj);
              v185 = objc_autoreleasePoolPush();
              if ([objc_msgSend(v184 "objectID")])
              {
                v261 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v184), @"NSAffectedObjectsErrorKey", 0}];
                v262 = [_NSCoreDataException exceptionWithName:134030 code:@"Cannot delete object that was never inserted." reason:v261 userInfo:?];
                objc_exception_throw(v262);
              }

              v186 = [(NSPersistentStoreCoordinator *)v162 _conflictsWithRowCacheForObject:v184 withContext:v163 andStore:v311];
              v187 = v186;
              if (v186)
              {
                if ([objc_msgSend(v186 objectForKey:{@"newVersion", "intValue"}])
                {
                  [contextb addObject:v187];
                }

                else
                {
                  v188 = v306;
                  if (!v306)
                  {
                    v188 = [objc_msgSend(v304 "deletedObjects")];
                  }

                  v306 = v188;
                  [v188 removeObject:v184];
                }
              }

              objc_autoreleasePoolPop(v185);
            }

            v181 = [v180 countByEnumeratingWithState:&v364 objects:v398 count:16];
          }

          while (v181);
          goto LABEL_371;
        }

LABEL_370:
        v306 = 0;
LABEL_371:
        if (v163)
        {
          v163[18] = v166;
        }

        v200 = [v304 lockedObjects];
        if ([v200 count])
        {
          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v201 = [v200 countByEnumeratingWithState:&v360 objects:v397 count:16];
          if (v201)
          {
            v202 = *v361;
            do
            {
              for (kk = 0; kk != v201; ++kk)
              {
                if (*v361 != v202)
                {
                  objc_enumerationMutation(v200);
                }

                v204 = *(*(&v360 + 1) + 8 * kk);
                v205 = objc_autoreleasePoolPush();
                if ([objc_msgSend(v204 "objectID")])
                {
                  v263 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v204), @"NSAffectedObjectsErrorKey", 0}];
                  v264 = [_NSCoreDataException exceptionWithName:134030 code:@"Cannot lock object that was never inserted." reason:v263 userInfo:?];
                  objc_exception_throw(v264);
                }

                v206 = [(NSPersistentStoreCoordinator *)v162 _conflictsWithRowCacheForObject:v204 withContext:v163 andStore:v311];
                if (v206)
                {
                  [contextb addObject:v206];
                }

                objc_autoreleasePoolPop(v205);
              }

              v201 = [v200 countByEnumeratingWithState:&v360 objects:v397 count:16];
            }

            while (v201);
          }
        }

        if (v163)
        {
          v163[18] = v166;
        }

        if (v302)
        {
          [v163 _setQueryGenerationFromToken:v298 error:0];
        }

        [v296 drain];
        v207 = 0;
        if (v306)
        {
          [(NSSaveChangesRequest *)v304 setDeletedObjects:v306];
        }

        goto LABEL_390;
      }

      v287 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v311), @"NSAffectedStoresErrorKey", 0}];
      v288 = *MEMORY[0x1E695D940];
      v289 = @"Cannot delete objects into a read only store.";
LABEL_545:
      v290 = [_NSCoreDataException exceptionWithName:v288 code:134030 reason:v289 userInfo:v287];
      objc_exception_throw(v290);
    }

    v30 = *(v300 + 88);
    goto LABEL_101;
  }

  v343 = 0;
LABEL_101:
  if (v30 != 1)
  {
    if (v30 == 3)
    {
      *(*(*(v300 + 64) + 8) + 40) = [MEMORY[0x1E695DF70] arrayWithCapacity:v295];
      if (v295)
      {
        v117 = 0;
        v118 = 0;
        do
        {
          v119 = [objc_msgSend(obj objectAtIndex:{v117), "executeRequest:withContext:error:", *(v300 + 32), *(v300 + 56), *(*(v300 + 80) + 8) + 40}];
          v120 = v119;
          if (v119 && [v119 count])
          {
            v118 = [objc_msgSend(v120 "lastObject")] + v118;
          }

          ++v117;
        }

        while (v295 != v117);
      }

      else
      {
        v118 = 0;
      }

      v212 = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v118)}];
      goto LABEL_454;
    }

    if (v30 == 2)
    {
      if (v295)
      {
        for (mm = 0; mm != v295; ++mm)
        {
          [objc_msgSend(obj objectAtIndex:{mm), "_preflightCrossCheck"}];
        }
      }

      -[NSPersistentStoreCoordinator _doPreSaveAssignmentsForObjects:intoStores:](*(v300 + 48), [*(v300 + 32) insertedObjects], obj);
      v293 = [MEMORY[0x1E695DF70] arrayWithCapacity:v295];
      v303 = [MEMORY[0x1E695DF70] array];
      if (v295)
      {
        v55 = 0;
        v292 = *MEMORY[0x1E695D940];
        do
        {
          v294 = v55;
          v56 = [obj objectAtIndex:?];
          v305 = *(v300 + 48);
          if (v305)
          {
            v57 = *(v300 + 56);
            v297 = *(v300 + 32);
            if (_PF_Threading_Debugging_level)
            {
              _PFAssertSafeMultiThreadedAccess_impl(v57, sel__saveRequestForStore_withContext_originalRequest_andOptimisticLocking_);
            }

            v58 = [v56 isReadOnly];
            [v57 stalenessInterval];
            v60 = v59;
            if (v57)
            {
              v57[18] = NSSQLDistantPastTimeInterval;
            }

            context = v57;
            v61 = [v297 insertedObjects];
            v375 = 0u;
            v374 = 0u;
            v372 = 0u;
            v373 = 0u;
            v62 = [v61 countByEnumeratingWithState:&v372 objects:buf count:16];
            if (v62)
            {
              v312 = 0;
              v63 = *v373;
              do
              {
                for (nn = 0; nn != v62; ++nn)
                {
                  if (*v373 != v63)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v65 = *(*(&v372 + 1) + 8 * nn);
                  if ([objc_msgSend(v65 "objectID")] == v56)
                  {
                    if (v58)
                    {

                      v103 = MEMORY[0x1E695DF20];
                      v104 = [MEMORY[0x1E695DEC8] arrayWithObject:v56];
                      v105 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v292, 134030, @"Cannot insert objects into a read only store.", [v103 dictionaryWithObjectsAndKeys:{v104, @"NSAffectedStoresErrorKey", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v65), @"NSAffectedObjectsErrorKey", 0}]);
                      objc_exception_throw(v105);
                    }

                    v66 = v312;
                    if (!v312)
                    {
                      v66 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(objc_msgSend(v297, "insertedObjects"), "count")}];
                    }

                    v312 = v66;
                    [v66 addObject:v65];
                  }
                }

                v62 = [v61 countByEnumeratingWithState:&v372 objects:buf count:16];
              }

              while (v62);
            }

            else
            {
              v312 = 0;
            }

            v67 = [v297 updatedObjects];
            v370 = 0u;
            v371 = 0u;
            v368 = 0u;
            v369 = 0u;
            v68 = [v67 countByEnumeratingWithState:&v368 objects:v399 count:16];
            if (v68)
            {
              v301 = 0;
              v69 = *v369;
              do
              {
                for (i1 = 0; i1 != v68; ++i1)
                {
                  if (*v369 != v69)
                  {
                    objc_enumerationMutation(v67);
                  }

                  v71 = *(*(&v368 + 1) + 8 * i1);
                  v72 = objc_autoreleasePoolPush();
                  if ([objc_msgSend(v71 "objectID")] == v56)
                  {
                    if (v58)
                    {

                      v106 = MEMORY[0x1E695DF20];
                      v107 = [MEMORY[0x1E695DEC8] arrayWithObject:v56];
                      v108 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v292, 134030, @"Cannot update objects into a read only store.", [v106 dictionaryWithObjectsAndKeys:{v107, @"NSAffectedStoresErrorKey", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v71), @"NSAffectedObjectsErrorKey", 0}]);
                      objc_exception_throw(v108);
                    }

                    v73 = [(NSPersistentStoreCoordinator *)v305 _conflictsWithRowCacheForObject:v71 withContext:context andStore:v56];
                    if (v73)
                    {
                      [v303 addObject:v73];
                    }

                    else
                    {
                      v74 = v301;
                      if (!v301)
                      {
                        v74 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(objc_msgSend(v297, "updatedObjects"), "count")}];
                      }

                      v301 = v74;
                      [v74 addObject:v71];
                    }
                  }

                  objc_autoreleasePoolPop(v72);
                }

                v68 = [v67 countByEnumeratingWithState:&v368 objects:v399 count:16];
              }

              while (v68);
            }

            else
            {
              v301 = 0;
            }

            v75 = [v297 deletedObjects];
            v366 = 0u;
            v367 = 0u;
            v364 = 0u;
            v365 = 0u;
            v76 = 0;
            v77 = [v75 countByEnumeratingWithState:&v364 objects:v398 count:16];
            if (v77)
            {
              v78 = *v365;
              do
              {
                v79 = 0;
                do
                {
                  if (*v365 != v78)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v80 = *(*(&v364 + 1) + 8 * v79);
                  v81 = objc_autoreleasePoolPush();
                  if ([objc_msgSend(v80 "objectID")] == v56)
                  {
                    if (v58)
                    {

                      v109 = MEMORY[0x1E695DF20];
                      v110 = [MEMORY[0x1E695DEC8] arrayWithObject:v56];
                      v111 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v292, 134030, @"Cannot delete objects into a read only store.", [v109 dictionaryWithObjectsAndKeys:{v110, @"NSAffectedStoresErrorKey", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v80), @"NSAffectedObjectsErrorKey", 0}]);
                      objc_exception_throw(v111);
                    }

                    v82 = [(NSPersistentStoreCoordinator *)v305 _conflictsWithRowCacheForObject:v80 withContext:context andStore:v56];
                    v83 = v82;
                    if (v82)
                    {
                      if ([objc_msgSend(v82 objectForKey:{@"newVersion", "intValue"}])
                      {
                        [v303 addObject:v83];
                      }

                      else if (!v76)
                      {
                        v76 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(objc_msgSend(v297, "deletedObjects"), "count")}];
                      }
                    }

                    else
                    {
                      if (!v76)
                      {
                        v76 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(objc_msgSend(v297, "deletedObjects"), "count")}];
                      }

                      [v76 addObject:v80];
                    }
                  }

                  objc_autoreleasePoolPop(v81);
                  ++v79;
                }

                while (v77 != v79);
                v84 = [v75 countByEnumeratingWithState:&v364 objects:v398 count:16];
                v77 = v84;
              }

              while (v84);
            }

            if (context)
            {
              context[18] = v60;
            }

            v85 = [v297 lockedObjects];
            v362 = 0u;
            v363 = 0u;
            v360 = 0u;
            v361 = 0u;
            v86 = [v85 countByEnumeratingWithState:&v360 objects:v397 count:16];
            if (v86)
            {
              v87 = 0;
              v88 = *v361;
              do
              {
                for (i2 = 0; i2 != v86; ++i2)
                {
                  if (*v361 != v88)
                  {
                    objc_enumerationMutation(v85);
                  }

                  v90 = *(*(&v360 + 1) + 8 * i2);
                  v91 = objc_autoreleasePoolPush();
                  if ([objc_msgSend(v90 "objectID")] == v56)
                  {
                    v92 = [(NSPersistentStoreCoordinator *)v305 _conflictsWithRowCacheForObject:v90 withContext:context andStore:v56];
                    if (v92)
                    {
                      [v303 addObject:v92];
                    }

                    else
                    {
                      if (!v87)
                      {
                        v87 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(objc_msgSend(v297, "lockedObjects"), "count")}];
                      }

                      [v87 addObject:v90];
                    }
                  }

                  objc_autoreleasePoolPop(v91);
                }

                v86 = [v85 countByEnumeratingWithState:&v360 objects:v397 count:16];
              }

              while (v86);
            }

            else
            {
              v87 = 0;
            }

            if (context)
            {
              context[18] = v60;
            }

            v93 = [v303 count];
            v94 = [NSSaveChangesRequest alloc];
            if (v93)
            {
              v95 = 0;
            }

            else
            {
              v95 = v312;
            }

            if (v93)
            {
              v96 = 0;
            }

            else
            {
              v96 = v301;
            }

            if (v93)
            {
              v97 = 0;
            }

            else
            {
              v97 = v76;
            }

            if (v93)
            {
              v98 = 0;
            }

            else
            {
              v98 = v87;
            }

            v99 = [(NSSaveChangesRequest *)v94 initWithInsertedObjects:v95 updatedObjects:v96 deletedObjects:v97 lockedObjects:v98];

            v100 = v99;
          }

          else
          {
            v100 = 0;
          }

          if (([v56 isReadOnly] & 1) == 0)
          {
            if ([(NSSaveChangesRequest *)v100 hasChanges]|| v56 && (v101 = atomic_load(v56 + 60), (v101 & 1) != 0))
            {
              v102 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v56, 0}];
              [(NSPersistentStoreRequest *)v100 setAffectedStores:v102];

              [v293 addObject:v100];
            }
          }

          v55 = v294 + 1;
        }

        while (v294 + 1 != v295);
      }

      if ([v303 count])
      {
        v279 = [MEMORY[0x1E695DF20] dictionaryWithObject:v303 forKey:@"conflictList"];
        if (*(v300 + 96))
        {
          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          v280 = *(v300 + 96);
          if (v280 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v281 = PFInstrumentsGetLog_coreDataInstrumentsLog;
            if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_18565F000, v281, OS_SIGNPOST_INTERVAL_END, v280, "Save", &unk_1859905C6, buf, 2u);
            }
          }
        }

        objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v279]);
      }

      v139 = [v293 count];
      *(*(*(v300 + 64) + 8) + 40) = [MEMORY[0x1E695DF70] arrayWithCapacity:v139];
      if (!v139)
      {
        goto LABEL_455;
      }

      v140 = 0;
      v141 = 1;
      v142 = *MEMORY[0x1E696A250];
      contexta = *MEMORY[0x1E696A250];
      v313 = *MEMORY[0x1E696AA08];
      v143 = MEMORY[0x1E695E0F0];
      while (1)
      {
        v144 = [v293 objectAtIndex:v140];
        v145 = [objc_msgSend(v144 "affectedStores")];
        if ([v145 _prepareForExecuteRequest:v144 withContext:*(v300 + 56) error:*(*(v300 + 80) + 8) + 40])
        {
          break;
        }

LABEL_305:
        ++v140;
        ++v141;
        if (v140 == v139)
        {
          goto LABEL_455;
        }
      }

      v146 = [v145 executeRequest:v144 withContext:*(v300 + 56) error:*(*(v300 + 80) + 8) + 40];
      if (v146)
      {
        [*(*(*(v300 + 64) + 8) + 40) addObject:v146];
        if ([v145 coreSpotlightExporter])
        {
          -[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]([v145 coreSpotlightExporter], v144);
        }

        if (v144)
        {
          if (v144[7])
          {
            v147 = v144[7];
          }

          else
          {
            v147 = v143;
          }
        }

        else
        {
          v147 = 0;
        }

        if ([v147 count])
        {
          v341 = 0u;
          v342 = 0u;
          v339 = 0u;
          v340 = 0u;
          v148 = [v147 countByEnumeratingWithState:&v339 objects:v388 count:16];
          if (v148)
          {
            v149 = *v340;
            do
            {
              for (i3 = 0; i3 != v148; ++i3)
              {
                if (*v340 != v149)
                {
                  objc_enumerationMutation(v147);
                }

                [(NSSaveChangesRequest *)*(v300 + 32) _addChangedObjectIDsNotification:?];
              }

              v148 = [v147 countByEnumeratingWithState:&v339 objects:v388 count:16];
            }

            while (v148);
          }
        }

        if (!v144)
        {
          goto LABEL_305;
        }

        v151 = v144 + 7;
        goto LABEL_304;
      }

      if (*(*(*(v300 + 80) + 8) + 40))
      {
LABEL_301:
        if (v139 != 1)
        {
          v270 = *(v300 + 80);
          if (!v140)
          {
            v271 = [*(*(v270 + 8) + 40) code];
            v270 = *(v300 + 80);
            if (v271 == 134050)
            {
              v272 = [*(*(v270 + 8) + 40) userInfo];
              v273 = [_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v272];
              *(*(*(v300 + 80) + 8) + 40) = 0;
              objc_exception_throw(v273);
            }
          }

          v274 = [*(*(v270 + 8) + 40) code];
          v275 = [*(*(*(v300 + 80) + 8) + 40) localizedFailureReason];
          v389 = v313;
          v390 = *(*(*(v300 + 80) + 8) + 40);
          v276 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v390 forKeys:&v389 count:1];
          if (v275)
          {
            v277 = v275;
          }

          else
          {
            v277 = @"Save failed";
          }

          v278 = [_NSCoreDataException exceptionWithName:v274 code:v277 reason:v276 userInfo:?];
          -[_NSCoreDataException _setDomain:](v278, [*(*(*(v300 + 80) + 8) + 40) domain]);
          *(*(*(v300 + 80) + 8) + 40) = 0;
          objc_exception_throw(v278);
        }

        if ([*(*(*(v300 + 80) + 8) + 40) code] == 134050)
        {
          v268 = [*(*(*(v300 + 80) + 8) + 40) userInfo];
          v269 = [_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v268];
          *(*(*(v300 + 80) + 8) + 40) = 0;
          objc_exception_throw(v269);
        }

        v151 = (*(*(v300 + 64) + 8) + 40);
LABEL_304:
        *v151 = 0;
        goto LABEL_305;
      }

      if ([objc_msgSend(v145 type])
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v145;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: A sqlite store save failed but did not return an error: %@\n", buf, 0xCu);
        }

        v153 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v153, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_300;
        }

        *buf = 138412290;
        *&buf[4] = v145;
        v154 = v153;
        v155 = "CoreData: A sqlite store save failed but did not return an error: %@";
      }

      else if ([objc_msgSend(v145 "type")])
      {
        v156 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v145;
          _os_log_error_impl(&dword_18565F000, v156, OS_LOG_TYPE_ERROR, "CoreData: fault: A xpc store save failed but did not return an error: %@\n", buf, 0xCu);
        }

        v157 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v157, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_300;
        }

        *buf = 138412290;
        *&buf[4] = v145;
        v154 = v157;
        v155 = "CoreData: A xpc store save failed but did not return an error: %@";
      }

      else if ([objc_msgSend(v145 "type")])
      {
        v158 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v145;
          _os_log_error_impl(&dword_18565F000, v158, OS_LOG_TYPE_ERROR, "CoreData: fault: A binary store save failed but did not return an error: %@\n", buf, 0xCu);
        }

        v159 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v159, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_300;
        }

        *buf = 138412290;
        *&buf[4] = v145;
        v154 = v159;
        v155 = "CoreData: A binary store save failed but did not return an error: %@";
      }

      else
      {
        if (![objc_msgSend(v145 "type")])
        {
          goto LABEL_300;
        }

        v160 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v145;
          _os_log_error_impl(&dword_18565F000, v160, OS_LOG_TYPE_ERROR, "CoreData: fault: An in-memory store save failed but did not return an error: %@\n", buf, 0xCu);
        }

        v161 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v161, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_300;
        }

        *buf = 138412290;
        *&buf[4] = v145;
        v154 = v161;
        v155 = "CoreData: An in-memory store save failed but did not return an error: %@";
      }

      _os_log_fault_impl(&dword_18565F000, v154, OS_LOG_TYPE_FAULT, v155, buf, 0xCu);
LABEL_300:
      *(*(*(v300 + 80) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:contexta code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"Unknown", v313)}];
      goto LABEL_301;
    }

    v123 = *(v300 + 32);
    if (v30 != 8)
    {
LABEL_238:
      *(*(*(v300 + 64) + 8) + 40) = [MEMORY[0x1E695DF70] arrayWithCapacity:v295];
      v124 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v125 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!v295)
      {
        goto LABEL_252;
      }

      v126 = 0;
      v127 = *MEMORY[0x1E696A250];
      while (1)
      {
        v128 = [obj objectAtIndex:v126];
        *buf = 0;
        [(NSPersistentStoreCoordinator *)*(v300 + 48) replaceResultTypeOfRequestIfNecessary:v123 store:v128 requestType:*(v300 + 88) originalResultType:buf];
        v129 = [v128 executeRequest:v123 withContext:*(v300 + 56) error:*(*(v300 + 80) + 8) + 40];
        if (v129)
        {
          if (*(v300 + 48))
          {
            v130 = *(v300 + 88);
            if ([objc_msgSend(v128 "type")])
            {
              if ([v128 coreSpotlightExporter] && (v130 - 5) <= 2)
              {
                -[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]([v128 coreSpotlightExporter], v129);
                v129 = [(NSPersistentStoreCoordinator *)*(v300 + 48) restoreOriginalRequestIfNecessary:v123 store:v128 swizzledResults:v129 originalRequestType:*(v300 + 88) originalResultType:*buf];
              }
            }
          }

          v131 = *(*(*(v300 + 64) + 8) + 40);
        }

        else
        {
          v132 = *(*(*(v300 + 80) + 8) + 40);
          if (v132)
          {
            v133 = [v132 code];
            v134 = *(*(v300 + 80) + 8);
            v129 = *(v134 + 40);
            if (v133 != 134091)
            {
              [v125 addObject:*(v134 + 40)];
LABEL_252:
              if ([v124 count] == v295)
              {
                v137 = objc_autoreleasePoolPush();
                _pflogInitialize(1);
                if (_pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v138 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
                    {
LABEL_513:
                      v258 = *(v300 + 32);
                      *buf = 138412546;
                      *&buf[4] = v258;
                      v402 = 2112;
                      v403 = obj;
                      _os_log_error_impl(&dword_18565F000, v138, OS_LOG_TYPE_ERROR, "CoreData: error: NSPersistentStoreRequest failed unsupported by all stores on this coordinator.  Request: '%@' and stores [%@]\n", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v138 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_513;
                    }
                  }
                }

                _NSCoreDataLog_console(1, "NSPersistentStoreRequest failed unsupported by all stores on this coordinator.  Request: '%@' and stores [%@]", *(v300 + 32), obj);
                objc_autoreleasePoolPop(v137);
                v214 = MEMORY[0x1E696ABC0];
                v215 = *(v300 + 32);
                v382[0] = @"NSPersistentStoreRequest";
                v382[1] = @"NSPersistentStores";
                v383[0] = v215;
                v383[1] = obj;
                v382[2] = @"reason";
                v383[2] = @"Operation unsupported by all stores on this coordinator.";
                v216 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v383 forKeys:v382 count:3];
                [v125 addObject:{objc_msgSend(v214, "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 134091, v216)}];
              }

              if ([v125 count])
              {
                *(*(*(v300 + 64) + 8) + 40) = 0;
                if (*(v300 + 104))
                {
                  v217 = MEMORY[0x1E696ABC0];
                  v218 = *(v300 + 32);
                  v380[0] = @"NSPersistentStoreRequest";
                  v380[1] = @"Underlying errors";
                  v381[0] = v218;
                  v381[1] = v125;
                  v380[2] = @"reason";
                  v381[2] = @"One or more stores returned an error.";
                  v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v381 forKeys:v380 count:3];
                  *(*(*(v300 + 80) + 8) + 40) = [v217 errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:v219];
                }

                goto LABEL_455;
              }

              if (*(v300 + 48))
              {
                v220 = *(*(*(v300 + 64) + 8) + 40);
                v221 = [*(v300 + 32) requestType];
                if (v221 <= 7)
                {
                  switch(v221)
                  {
                    case 5:
                      v222 = off_1E6EC0940;
                      break;
                    case 6:
                      v222 = off_1E6EC0950;
                      break;
                    case 7:
                      v222 = off_1E6EC0930;
                      break;
                    default:
LABEL_443:
                      if ([v220 count] == 1)
                      {
LABEL_442:
                        v212 = [v220 lastObject];
LABEL_454:
                        *(*(*(v300 + 64) + 8) + 40) = v212;
                        goto LABEL_455;
                      }

                      v222 = off_1E6EC0BE0;
                      break;
                  }

LABEL_452:
                  v225 = [objc_alloc(*v222) initWithSubresults:v220];
LABEL_453:
                  v212 = v225;
                  goto LABEL_454;
                }

                if (v221 != 8)
                {
                  if (v221 == 10)
                  {
                    v222 = off_1E6EC0BC8;
                  }

                  else
                  {
                    if (v221 != 11)
                    {
                      goto LABEL_443;
                    }

                    v222 = off_1E6EC0AE8;
                  }

                  goto LABEL_452;
                }

                if (v220)
                {
                  if ([v220 count] == 1)
                  {
                    goto LABEL_442;
                  }

                  v225 = [[NSPersistentHistoryResult alloc] initWithSubresults:v220];
                  goto LABEL_453;
                }
              }

              v212 = 0;
              goto LABEL_454;
            }

            v131 = v124;
          }

          else
          {
            v135 = MEMORY[0x1E696ABC0];
            v385[0] = *(v300 + 32);
            v384[0] = @"NSPersistentStoreRequest";
            v384[1] = @"NSPersistentStore";
            v136 = [obj objectAtIndex:v126];
            v384[2] = @"reason";
            v385[1] = v136;
            v385[2] = @"Store returned nil but no error.";
            v129 = [v135 errorWithDomain:v127 code:134070 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v385, v384, 3)}];
            v131 = v125;
          }
        }

        [v131 addObject:v129];
        *(*(*(v300 + 80) + 8) + 40) = 0;
        if (v295 == ++v126)
        {
          goto LABEL_252;
        }
      }
    }

    if ([*(v300 + 32) resultType] != 4)
    {
      if ([v123 fetchBatchSize])
      {
        v123 = [v123 copy];
        [v123 setFetchBatchSize:0];
      }

      goto LABEL_238;
    }

    v223 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      if (_pflogging_catastrophic_mode)
      {
        v224 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_512;
        }

        *buf = 138412290;
        *&buf[4] = obj;
      }

      else
      {
        v224 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_512;
        }

        *buf = 138412290;
        *&buf[4] = obj;
      }

      _os_log_error_impl(&dword_18565F000, v224, OS_LOG_TYPE_ERROR, "CoreData: error: NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores [%@]\n", buf, 0xCu);
    }

LABEL_512:
    _NSCoreDataLog_console(1, "NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores [%@]", obj);
    objc_autoreleasePoolPop(v223);
    v386 = @"NSAffectedStoresErrorKey";
    v387 = obj;
    v256 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v387 forKeys:&v386 count:1];
    v257 = [_NSCoreDataException exceptionWithName:134091 code:@"NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores" reason:v256 userInfo:?];
    objc_exception_throw(v257);
  }

  v121 = [*(v300 + 32) sortDescriptors];
  v122 = ![v121 count] || !objc_msgSend(*(v300 + 32), "includesPropertyValues") || objc_msgSend(*(v300 + 32), "resultType") == 1;
  [objc_msgSend(*(v300 + 32) "propertiesToGroupBy")];
  *(*(*(v300 + 64) + 8) + 40) = [MEMORY[0x1E695DF70] arrayWithCapacity:v295];
  if (v295)
  {
    v189 = 0;
    v190 = 0;
    while (1)
    {
      v191 = [objc_msgSend(obj objectAtIndex:{v189), "executeRequest:withContext:error:", *(v300 + 32), *(v300 + 56), &v343}];
      v192 = v191;
      if (!v191)
      {
        break;
      }

      if ([v191 count])
      {
        v193 = [*(*(*(v300 + 64) + 8) + 40) count] != 0;
        [*(*(*(v300 + 64) + 8) + 40) addObjectsFromArray:v192];
        v190 |= v193;
      }

      if (v295 == ++v189)
      {
        v194 = v190 ^ 1;
        goto LABEL_408;
      }
    }

    *(*(*(v300 + 80) + 8) + 40) = v343;
    v53 = *(v300 + 64);
LABEL_411:
    *(*(v53 + 8) + 40) = 0;
    goto LABEL_455;
  }

  v194 = 1;
LABEL_408:
  if (!(([*(*(*(v300 + 64) + 8) + 40) count] < 2) | (v194 | v122) & 1))
  {
    [*(*(*(v300 + 64) + 8) + 40) sortUsingDescriptors:v121];
  }

LABEL_455:
  v226 = *(v300 + 88);
  if (v226 <= 7 && ((1 << v226) & 0xE4) != 0)
  {
    if (*(*(*(v300 + 64) + 8) + 40))
    {
      v228 = *(v300 + 56);
      if (v228)
      {
        if (v226 == 2 && [objc_msgSend(v228 "_queryGenerationToken")])
        {
          v333[0] = MEMORY[0x1E69E9820];
          v333[1] = 3221225472;
          v334 = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_555;
          v335 = &unk_1E6EC19D8;
          v229 = *(v300 + 56);
          v336 = *(v300 + 48);
          v337 = obj;
          v338 = v229;
          if ([v229 concurrencyType])
          {
            [*(v300 + 48) performBlockAndWait:v333];
          }

          else
          {
            v334(v333);
          }
        }

        else
        {
          v331 = 0u;
          v332 = 0u;
          v329 = 0u;
          v330 = 0u;
          v230 = [obj countByEnumeratingWithState:&v329 objects:v379 count:16];
          if (v230)
          {
            v231 = *v330;
            do
            {
              for (i4 = 0; i4 != v230; ++i4)
              {
                if (*v330 != v231)
                {
                  objc_enumerationMutation(obj);
                }

                v233 = *(*(&v329 + 1) + 8 * i4);
                if ([v233 supportsGenerationalQuerying] && objc_msgSend(v233, "_hasActiveGenerations"))
                {
                  v324[0] = MEMORY[0x1E69E9820];
                  v324[1] = 3221225472;
                  v325 = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_557;
                  v326 = &unk_1E6EC1600;
                  v234 = *(v300 + 56);
                  v327 = *(v300 + 48);
                  v328 = v233;
                  if ([v234 concurrencyType])
                  {
                    [*(v300 + 48) performBlockAndWait:v324];
                  }

                  else
                  {
                    v325(v324);
                  }
                }
              }

              v230 = [obj countByEnumeratingWithState:&v329 objects:v379 count:16];
            }

            while (v230);
          }
        }

        if ([(NSPersistentStoreCoordinator *)*(v300 + 48) _hasHistoryTracking:?])
        {
          v318[0] = MEMORY[0x1E69E9820];
          v318[1] = 3221225472;
          v319 = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_2;
          v320 = &unk_1E6EC19D8;
          v235 = *(v300 + 56);
          v321 = *(v300 + 48);
          v322 = obj;
          v323 = v235;
          if ([v235 concurrencyType])
          {
            [*(v300 + 48) performBlockAndWait:v318];
          }

          else
          {
            v319(v318);
          }
        }
      }
    }
  }

  v236 = *(*(*(v300 + 80) + 8) + 40);
  if (v236)
  {
    v237 = v236;
  }

  v238 = *(*(*(v300 + 64) + 8) + 40);
  if (v238)
  {
    v239 = v238;
  }

  if (*(v300 + 88) == 2)
  {
    v240 = *(v300 + 32);
    if (v240)
    {
      v241 = *(v240 + 56) ? *(v240 + 56) : MEMORY[0x1E695E0F0];
    }

    else
    {
      v241 = 0;
    }

    if ([v241 count])
    {
      v242 = [v241 firstObject];
      if ([v241 count] >= 2)
      {
        contextc = objc_autoreleasePoolPush();
        v243 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v316 = 0u;
        v317 = 0u;
        v314 = 0u;
        v315 = 0u;
        v244 = [v241 countByEnumeratingWithState:&v314 objects:v378 count:16];
        if (v244)
        {
          v245 = *v315;
          do
          {
            for (i5 = 0; i5 != v244; ++i5)
            {
              if (*v315 != v245)
              {
                objc_enumerationMutation(v241);
              }

              v247 = *(*(&v314 + 1) + 8 * i5);
              v248 = objc_autoreleasePoolPush();
              v249 = [objc_msgSend(v247 "userInfo")];
              if ([v249 count])
              {
                [v243 addEntriesFromDictionary:v249];
              }

              objc_autoreleasePoolPop(v248);
            }

            v244 = [v241 countByEnumeratingWithState:&v314 objects:v378 count:16];
          }

          while (v244);
        }

        v250 = objc_alloc(MEMORY[0x1E696AD80]);
        v251 = [v242 name];
        v252 = [v242 object];
        v376 = @"_NSManagedObjectContextObjectIDMutationMappingKey";
        v377 = v243;
        v253 = [v250 initWithName:v251 object:v252 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v377, &v376, 1)}];

        objc_autoreleasePoolPop(contextc);
        v242 = v253;
      }

      v254 = objc_autoreleasePoolPush();
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      if (v240)
      {

        *(v240 + 56) = 0;
      }

      objc_autoreleasePoolPop(v254);
    }
  }

LABEL_505:
  v255 = *MEMORY[0x1E69E9840];
}

- (uint64_t)replaceResultTypeOfRequestIfNecessary:(unsigned __int8 *)a3 store:(uint64_t)a4 requestType:(void *)a5 originalResultType:
{
  if (result)
  {
    result = [objc_msgSend(a3 "type")];
    if (result)
    {
      result = [a3 coreSpotlightExporter];
      if (result)
      {
        if (a3)
        {
          v9 = (a3[201] >> 2) & 1;
        }

        else
        {
          LOBYTE(v9) = 0;
        }

        if ((a4 - 8) >= 0xFFFFFFFFFFFFFFFDLL && (v9 & 1) == 0)
        {
          *a5 = [a2 resultType];

          return [a2 setResultType:1];
        }
      }
    }
  }

  return result;
}

- (id)restoreOriginalRequestIfNecessary:(uint64_t)a3 store:(void *)a4 swizzledResults:(uint64_t)a5 originalRequestType:(uint64_t)a6 originalResultType:
{
  if (!a1)
  {
    return 0;
  }

  if (a3 && (*(a3 + 201) & 4) != 0)
  {
    return a4;
  }

  if (a5 == 5 && a6 != 1)
  {
    [a2 setResultType:a6];
    v8 = [objc_msgSend(a4 "result")];
    if (a6 == 2)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      if (v12)
      {
        v9 = v12;
LABEL_27:
        v13 = off_1E6EC0940;
        goto LABEL_34;
      }
    }

    else if (!a6)
    {
      if (v8)
      {
        v9 = MEMORY[0x1E695E118];
      }

      else
      {
        v9 = MEMORY[0x1E695E110];
      }

      goto LABEL_27;
    }

    return a4;
  }

  if (a5 != 6 || a6 == 1)
  {
    if (a5 != 7 || a6 == 1)
    {
      return a4;
    }

    [a2 setResultType:a6];
    v11 = [objc_msgSend(a4 "result")];
    if (a6 == 2)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      if (!v15)
      {
        return a4;
      }

      v9 = v15;
    }

    else
    {
      if (a6)
      {
        return a4;
      }

      if (v11)
      {
        v9 = MEMORY[0x1E695E118];
      }

      else
      {
        v9 = MEMORY[0x1E695E110];
      }
    }

    v13 = off_1E6EC0930;
  }

  else
  {
    [a2 setResultType:a6];
    v10 = [objc_msgSend(a4 "result")];
    if (a6 == 2)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      if (!v14)
      {
        return a4;
      }

      v9 = v14;
    }

    else
    {
      if (a6)
      {
        return a4;
      }

      if (v10)
      {
        v9 = MEMORY[0x1E695E118];
      }

      else
      {
        v9 = MEMORY[0x1E695E110];
      }
    }

    v13 = off_1E6EC0950;
  }

LABEL_34:
  v16 = [objc_alloc(*v13) initWithResultType:a6 andObject:v9];
  if (!v16)
  {
    return a4;
  }

  return v16;
}

- (uint64_t)_doPreSaveAssignmentsForObjects:(void *)a3 intoStores:
{
  v58 = *MEMORY[0x1E69E9840];
  v35 = result;
  if (result)
  {
    if (_PF_Threading_Debugging_level)
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [a2 anyObject];
      }

      else
      {
        v29 = [a2 lastObject];
      }

      _PFAssertSafeMultiThreadedAccess_impl([v29 managedObjectContext], sel__doPreSaveAssignmentsForObjects_intoStores_);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    result = [a2 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v47;
      allocator = *MEMORY[0x1E695E480];
      v30 = *v47;
      v31 = a2;
      do
      {
        v6 = 0;
        v32 = v4;
        do
        {
          if (*v47 != v5)
          {
            objc_enumerationMutation(a2);
          }

          v7 = *(*(&v46 + 1) + 8 * v6);
          if (![objc_msgSend(v7 objectID])
          {
            v33 = v6;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v8 = [a3 countByEnumeratingWithState:&v42 objects:v55 count:16];
            if (v8)
            {
              v9 = v8;
              v10 = *v43;
              do
              {
                v11 = 0;
                v36 = v9;
                do
                {
                  if (*v43 != v10)
                  {
                    objc_enumerationMutation(a3);
                  }

                  v12 = *(*(&v42 + 1) + 8 * v11);
                  if (([v12 isReadOnly] & 1) == 0)
                  {
                    v13 = v7;
                    v14 = [objc_msgSend(v35 "managedObjectModel")];
                    Mutable = CFSetCreateMutable(allocator, 0, 0);
                    v16 = CFSetCreateMutable(allocator, 0, 0);
                    v38 = 0u;
                    v39 = 0u;
                    v40 = 0u;
                    v41 = 0u;
                    v17 = [v14 countByEnumeratingWithState:&v38 objects:v54 count:16];
                    if (v17)
                    {
                      v18 = v17;
                      v19 = *v39;
                      do
                      {
                        for (i = 0; i != v18; ++i)
                        {
                          if (*v39 != v19)
                          {
                            objc_enumerationMutation(v14);
                          }

                          CFSetAddValue(v16, *(*(&v38 + 1) + 8 * i));
                        }

                        v18 = [v14 countByEnumeratingWithState:&v38 objects:v54 count:16];
                      }

                      while (v18);
                    }

                    v7 = v13;
                    v21 = [NSPersistentStoreCoordinator _canSaveGraphRootedAtObject:v13 intoStore:v12 withPreviouslyChecked:Mutable withAcceptableEntities:v16];
                    CFRelease(v16);
                    if (v21)
                    {
                      v50 = 0u;
                      v51 = 0u;
                      v52 = 0u;
                      v53 = 0u;
                      v22 = [(__CFSet *)Mutable countByEnumeratingWithState:&v50 objects:v57 count:16];
                      if (v22)
                      {
                        v23 = v22;
                        v24 = *v51;
                        do
                        {
                          for (j = 0; j != v23; ++j)
                          {
                            if (*v51 != v24)
                            {
                              objc_enumerationMutation(Mutable);
                            }

                            v26 = [*(*(&v50 + 1) + 8 * j) objectID];
                            if ([v26 isTemporaryID] && !objc_msgSend(v26, "persistentStore"))
                            {
                              [v26 _setPersistentStore:v12];
                            }
                          }

                          v23 = [(__CFSet *)Mutable countByEnumeratingWithState:&v50 objects:v57 count:16];
                        }

                        while (v23);
                      }

                      CFRelease(Mutable);
                      v5 = v30;
                      a2 = v31;
                      v4 = v32;
                      v6 = v33;
                      goto LABEL_38;
                    }

                    CFRelease(Mutable);
                    v9 = v36;
                  }

                  ++v11;
                }

                while (v11 != v9);
                v9 = [a3 countByEnumeratingWithState:&v42 objects:v55 count:16];
              }

              while (v9);
            }

            v28 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134020, @"Can't resolve how to assign objects to stores; some objects may have been assigned to stores; use [[managedObject objectID] persistentStore] to find out what is going where now; use [managedObjectContext assignObject:toStore:] to straighten things out", [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:@"problemObject"]);
            objc_exception_throw(v28);
          }

LABEL_38:
          ++v6;
        }

        while (v6 != v4);
        result = [a2 countByEnumeratingWithState:&v46 objects:v56 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_555(uint64_t a1)
{
  v2 = [(NSPersistentStoreCoordinator *)*(a1 + 32) _retainedIdentifierFromStores:?];
  if (!v2)
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
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Coordinator failed to create a new query generation post save\n", v7, 2u);
        }
      }

      else if (v6)
      {
        LOWORD(v8) = 0;
        v7 = &v8;
        goto LABEL_10;
      }
    }

    _NSCoreDataLog_console(1, "Coordinator failed to create a new query generation post save", v8);
    objc_autoreleasePoolPop(v3);
    v2 = +[NSQueryGenerationToken currentQueryGenerationToken];
  }

  [*(a1 + 48) _setQueryGenerationFromToken:v2 error:0];
}

- (_NSQueryGenerationToken)_retainedIdentifierFromStores:(_NSQueryGenerationToken *)result
{
  v22 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_25;
  }

  if (![a2 count])
  {
    v13 = +[NSQueryGenerationToken nostoresQueryGenerationToken];
    v14 = *MEMORY[0x1E69E9840];

    return v13;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = *v18;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(a2);
      }

      v8 = [*(*(&v17 + 1) + 8 * i) currentQueryGeneration];
      if (!v8)
      {
        v9 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v10 = _pflogging_catastrophic_mode;
          LogStream = _PFLogGetLogStream(1);
          v12 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
          if (v10)
          {
            if (v12)
            {
              *v16 = 0;
LABEL_27:
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Store currentQueryGeneration returned nil unexpectedly\n", v16, 2u);
            }
          }

          else if (v12)
          {
            *v16 = 0;
            goto LABEL_27;
          }
        }

        _NSCoreDataLog_console(1, "Store currentQueryGeneration returned nil unexpectedly", *v16);
        objc_autoreleasePoolPop(v9);
        result = 0;
        goto LABEL_25;
      }

      [v3 addObject:v8];
    }

    v5 = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_11:
  if ([v3 count] == 1)
  {
    result = [v3 lastObject];
  }

  else
  {
    result = [_NSQueryGenerationToken alloc];
    if (result)
    {
      result = [(_NSQueryGenerationToken *)result _initWithValue:v3 singleton:0];
      if (result)
      {
        *&result->_flags |= 1u;
      }
    }
  }

LABEL_25:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_557(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);

  v2 = *MEMORY[0x1E69E9840];
}

void __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_2(uint64_t a1)
{
  v2 = [(NSPersistentStoreCoordinator *)*(a1 + 32) _retainedChangeTokenFromStores:?];
  [*(a1 + 48) _setChangeTrackingTokenFromToken:v2 error:0];
}

+ (BOOL)removeUbiquitousContentAndPersistentStoreAtURL:(NSURL *)storeURL options:(NSDictionary *)options error:(NSError *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [v6 stringWithFormat:@"Deprecated method +[NSPersistentStoreCoordinator removeUbiquitousContentAndPersistentStoreAtURL:options:error:] is no longer supported and the symbol will be removed in a future release. Please adopt %@ instead.", NSStringFromClass(v7)];
  v9 = *MEMORY[0x1E696A250];
  v19 = *MEMORY[0x1E696A588];
  v20[0] = v8;
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:v9 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v20, &v19, 1)}];
  if (v10)
  {
    if (error)
    {
      *error = v10;
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
      v17 = 1024;
      v18 = 3532;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
      v17 = 1024;
      v18 = 3532;
      _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

- (uint64_t)applyMigrationStage:(void *)a3 withContext:(void *)a4 error:
{
  v118 = *MEMORY[0x1E69E9840];
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 1;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3052000000;
  v105 = __Block_byref_object_copy__19;
  v106 = __Block_byref_object_dispose__19;
  v107 = 0;
  v8 = objc_opt_class();
  v9 = [a3 storeType];
  v10 = [a3 storeURL];
  v11 = [a3 options];
  [a3 setMetadata:{objc_msgSend(v8, "metadataForPersistentStoreOfType:URL:options:error:", v9, v10, v11, v103 + 5)}];
  v12 = v103;
  if (v103[5])
  {
    *(v109 + 24) = 0;
    v13 = v12[5];
  }

  if (*(v109 + 24) != 1)
  {
    goto LABEL_123;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a2 subsequentStage])
    {
      [a2 subsequentStage];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [a2 subsequentStage];
        v15 = [v14 currentModel];
        if ([v15 resolve:v103 + 5])
        {
          v16 = [objc_msgSend(v14 "currentModel")];
LABEL_15:
          v19 = v16;
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v113 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know what to do with lightweight stages that aren't followed by a custom stage yet: %@\n", buf, 0xCu);
      }

      v21 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_27;
      }

      *buf = 138412290;
      v113 = a2;
      v22 = "CoreData: I don't know what to do with lightweight stages that aren't followed by a custom stage yet: %@";
      goto LABEL_25;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v113 = a2;
        _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to handle this type of stage yet: %@\n", buf, 0xCu);
      }

      v21 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_27;
      }

      *buf = 138412290;
      v113 = a2;
      v22 = "CoreData: I don't know how to handle this type of stage yet: %@";
LABEL_25:
      _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, v22, buf, 0xCu);
      goto LABEL_27;
    }

    v17 = [a2 currentModel];
    if (![v17 resolve:v103 + 5] || (v18 = objc_msgSend(a2, "nextModel"), !objc_msgSend(v18, "resolve:", v103 + 5)))
    {
LABEL_26:
      *(v109 + 24) = 0;
      v24 = v103[5];
      goto LABEL_27;
    }

    if (([objc_msgSend(objc_msgSend(objc_msgSend(a2 "nextModel")] & 1) == 0)
    {
      v16 = [objc_msgSend(a2 "nextModel")];
      goto LABEL_15;
    }
  }

LABEL_27:
  v19 = 0;
LABEL_28:
  v25 = objc_alloc_init(NSStoreMigrationPolicy);
  v27 = [objc_msgSend(objc_msgSend(a3 "stagedMigrationManager")] != a2 || v19 != 0;
  objc_opt_class();
  v91 = v27;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a2 willMigrateHandler])
  {
    v89 = a1;
    v28 = a4;
    v29 = [objc_msgSend(objc_msgSend(a2 "currentModel")];
    v30 = v29;
    if (v29)
    {
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v31 = [v29 countByEnumeratingWithState:&v98 objects:v117 count:16];
      if (v31)
      {
        v32 = *v99;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v99 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v98 + 1) + 8 * i);
            if (v34)
            {

              *(v34 + 48) = 0;
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v98 objects:v117 count:16];
        }

        while (v31);
      }
    }

    v35 = [a3 stagedMigrationManager];
    a1 = v89;
    a4 = v28;
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __70__NSPersistentStoreCoordinator_applyMigrationStage_withContext_error___block_invoke;
    v97[3] = &unk_1E6EC2D00;
    v97[4] = v35;
    v97[5] = a2;
    v97[6] = a3;
    v97[7] = &v102;
    v97[8] = &v108;
    [NSPersistentStoreCoordinator createPersistentContainerForMigrationContext:a3 withModel:v30 andExecuteBlock:v97];
  }

  v90 = a4;
  if (*(v109 + 24) == 1)
  {
    if (v19)
    {
      v36 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v19];
      -[NSPersistentStoreCoordinator setCodableAdapterRegistry:](v36, "setCodableAdapterRegistry:", [a1 codableAdapterRegistry]);
    }

    else
    {
      v36 = a1;
    }

    v37 = v36;
    [(NSPersistentStoreCoordinator *)v36 _setIsMigrating:?];
    -[NSStoreMigrationPolicy setPersistentStoreCoordinator:sourceURL:configuration:metadata:options:](v25, v36, [a3 storeURL], objc_msgSend(a3, "configurationName"), objc_msgSend(a3, "metadata"), objc_msgSend(a3, "options"));
    v38 = [a3 forceMigration];
    if (v25)
    {
      v25->_forcedMigration = v38;
    }

    v39 = [a2 label];
    if (v25)
    {
      v40 = v39;
      stageLabel = v25->_stageLabel;
      if (stageLabel != v39)
      {

        v25->_stageLabel = 0;
        v25->_stageLabel = [v40 copy];
      }
    }

    v42 = [a3 destinationConfigurationForCloudKitValidation];
    if (v25)
    {
      v43 = v42;
      destinationConfigurationForCloudKitValidation = v25->_destinationConfigurationForCloudKitValidation;
      if (destinationConfigurationForCloudKitValidation != v42)
      {

        v25->_destinationConfigurationForCloudKitValidation = 0;
        v25->_destinationConfigurationForCloudKitValidation = [v43 copy];
      }
    }

    v45 = [(NSStoreMigrationPolicy *)v25 _gatherDataAndPerformMigration:?];
    if (v45)
    {
      [a3 setMigratedStore:v45];
      v46 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(a3, "storeURL"), @"storeURL", 0}];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [a2 didMigrateHandler])
      {
        v47 = a1;
        v48 = [objc_msgSend(objc_msgSend(a2 "nextModel")];
        v49 = v48;
        if (v48)
        {
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v50 = [v48 countByEnumeratingWithState:&v93 objects:v116 count:16];
          if (v50)
          {
            v51 = *v94;
            do
            {
              for (j = 0; j != v50; ++j)
              {
                if (*v94 != v51)
                {
                  objc_enumerationMutation(v49);
                }

                v53 = *(*(&v93 + 1) + 8 * j);
                if (v53)
                {

                  *(v53 + 48) = 0;
                }
              }

              v50 = [v49 countByEnumeratingWithState:&v93 objects:v116 count:16];
            }

            while (v50);
          }
        }

        v54 = [a3 stagedMigrationManager];
        a1 = v47;
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __70__NSPersistentStoreCoordinator_applyMigrationStage_withContext_error___block_invoke_2;
        v92[3] = &unk_1E6EC2D00;
        v92[4] = v54;
        v92[5] = a2;
        v92[6] = a3;
        v92[7] = &v102;
        v92[8] = &v108;
        [NSPersistentStoreCoordinator createPersistentContainerForMigrationContext:a3 withModel:v49 andExecuteBlock:v92];
      }

      if (+[NSMappingModel migrationDebugLevel])
      {
        v55 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        IsLogEnabled = _NSCoreDataIsLogEnabled(4);
        if (_pflogging_enable_oslog > 0)
        {
          v57 = IsLogEnabled;
        }

        else
        {
          v57 = 0;
        }

        if (a2)
        {
          if (v57)
          {
            if (_pflogging_catastrophic_mode)
            {
              v58 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                v59 = [a3 storeURL];
                *buf = 138412546;
                v113 = v59;
                v114 = 2112;
                v115 = a2;
                _os_log_error_impl(&dword_18565F000, v58, OS_LOG_TYPE_ERROR, "CoreData: error: (migration)\t Automatic schema migration succeeded for store at '%@' with migration stage: %@\n", buf, 0x16u);
              }
            }

            else
            {
              v70 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                v71 = [a3 storeURL];
                *buf = 138412546;
                v113 = v71;
                v114 = 2112;
                v115 = a2;
                _os_log_impl(&dword_18565F000, v70, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration)\t Automatic schema migration succeeded for store at '%@' with migration stage: %@\n", buf, 0x16u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v72 = [a3 storeURL];
            v73 = 1;
          }

          else
          {
            v72 = [a3 storeURL];
            v73 = 4;
          }

          _NSCoreDataLog_console(v73, "(migration)\t Automatic schema migration succeeded for store at '%@' with migration stage: %@", v72, a2);
        }

        else
        {
          if (v57)
          {
            if (_pflogging_catastrophic_mode)
            {
              v68 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                v69 = [a3 storeURL];
                *buf = 138412290;
                v113 = v69;
                _os_log_error_impl(&dword_18565F000, v68, OS_LOG_TYPE_ERROR, "CoreData: error: (migration)\t Automatic schema migration succeeded for store at '%@'\n", buf, 0xCu);
              }
            }

            else
            {
              v74 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                v75 = [a3 storeURL];
                *buf = 138412290;
                v113 = v75;
                _os_log_impl(&dword_18565F000, v74, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration)\t Automatic schema migration succeeded for store at '%@'\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v76 = [a3 storeURL];
            v77 = 1;
          }

          else
          {
            v76 = [a3 storeURL];
            v77 = 4;
          }

          _NSCoreDataLog_console(v77, "(migration)\t Automatic schema migration succeeded for store at '%@'", v76);
        }

        objc_autoreleasePoolPop(v55);
      }

      goto LABEL_111;
    }

    *(v109 + 24) = 0;
    v60 = v103[5];
    if (!v103[5] || +[NSStoreMigrationPolicy migrationDebugLevel]< 1)
    {
      goto LABEL_111;
    }

    v61 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v61 appendFormat:@"CoreData: error: (migration) migration failed with error %@", v103[5]];
    v62 = [v103[5] userInfo];
    if (v62)
    {
      v63 = *MEMORY[0x1E696AA08];
      do
      {
        [v61 appendFormat:@"\nError User Info: %@", v62];
        v64 = [v62 objectForKey:v63];
        v65 = v64;
        if (!v64)
        {
          break;
        }

        [v61 appendFormat:@"\nUnderlying error: %@", v64];
        v62 = [v65 userInfo];
      }

      while (v62);
    }

    v66 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v67 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v113 = v61;
LABEL_133:
          _os_log_error_impl(&dword_18565F000, v67, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
        }
      }

      else
      {
        v67 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v113 = v61;
          goto LABEL_133;
        }
      }
    }

    _NSCoreDataLog_console(1, "%@", v61);
    objc_autoreleasePoolPop(v66);
  }

LABEL_111:
  if (v91)
  {
    -[NSPersistentStoreCoordinator _removePersistentStore:](a1, [a1 persistentStoreForURL:{objc_msgSend(a3, "storeURL")}]);
  }

  a4 = v90;
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v78 = [objc_msgSend(a2 "subsequentStage")];
LABEL_118:
      [v78 unresolve];
      goto LABEL_123;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(a2 "currentModel")];
      v78 = [a2 nextModel];
      goto LABEL_118;
    }

    v79 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v87 = objc_opt_class();
      *buf = 138412290;
      v113 = v87;
      _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to handle this stage type %@\n", buf, 0xCu);
    }

    v80 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
    {
      v88 = objc_opt_class();
      *buf = 138412290;
      v113 = v88;
      _os_log_fault_impl(&dword_18565F000, v80, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to handle this stage type %@", buf, 0xCu);
    }
  }

LABEL_123:
  if ((v109[3] & 1) == 0)
  {
    [a3 setMigratedStore:0];
    v84 = v103[5];
    if (v84)
    {
      if (a4)
      {
        *a4 = v84;
      }
    }

    else
    {
      v85 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v113 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v114 = 1024;
        LODWORD(v115) = 3954;
        _os_log_error_impl(&dword_18565F000, v85, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v86 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v113 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v114 = 1024;
        LODWORD(v115) = 3954;
        _os_log_fault_impl(&dword_18565F000, v86, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v103[5] = 0;
  v81 = *(v109 + 24);
  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v108, 8);
  v82 = *MEMORY[0x1E69E9840];
  return v81;
}

- (void)createPersistentContainerForMigrationContext:(void *)a1 withModel:(uint64_t)a2 andExecuteBlock:(uint64_t)a3
{
  v6 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__19;
  v17 = __Block_byref_object_dispose__19;
  v18 = 0;
  v7 = +[NSPersistentContainer persistentContainerWithPath:managedObjectModel:](NSPersistentContainer, "persistentContainerWithPath:managedObjectModel:", [objc_msgSend(a1 "storeURL")], a2);
  v8 = [(NSArray *)[(NSPersistentContainer *)v7 persistentStoreDescriptions] firstObject];
  [v8 setType:{objc_msgSend(a1, "storeType")}];
  [v8 setConfiguration:{objc_msgSend(a1, "configurationName")}];
  v9 = +[NSStoreMigrationPolicy migrationStoreOptionsFromStoreOptions:](NSStoreMigrationPolicy, [a1 options]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__NSPersistentStoreCoordinator_createPersistentContainerForMigrationContext_withModel_andExecuteBlock___block_invoke;
  v12[3] = &unk_1E6EC2CD8;
  v12[4] = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];
  [v8 setShouldMigrateStoreAutomatically:0];
  [v8 setShouldInferMappingModelAutomatically:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __103__NSPersistentStoreCoordinator_createPersistentContainerForMigrationContext_withModel_andExecuteBlock___block_invoke_2;
  v11[3] = &unk_1E6EC1A28;
  v11[4] = &v19;
  v11[5] = &v13;
  [(NSPersistentContainer *)v7 loadPersistentStoresWithCompletionHandler:v11];
  if (v20[3])
  {
    v10 = 0;
  }

  else
  {
    v7 = 0;
    v10 = v14[5];
  }

  (*(a3 + 16))(a3, v7, v10);

  v14[5] = 0;
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  objc_autoreleasePoolPop(v6);
}

void *__103__NSPersistentStoreCoordinator_createPersistentContainerForMigrationContext_withModel_andExecuteBlock___block_invoke_2(void *result, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = result;
    *(*(result[4] + 8) + 24) = 0;
    result = a3;
    *(*(v3[5] + 8) + 40) = result;
  }

  return result;
}

id __70__NSPersistentStoreCoordinator_applyMigrationStage_withContext_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    [*(a1 + 32) setContainer:a2];
    v4 = [*(a1 + 40) willMigrateHandler];
    if (((*(v4 + 16))(v4, [*(a1 + 48) stagedMigrationManager], *(a1 + 40), *(*(a1 + 56) + 8) + 40) & 1) == 0)
    {
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v10 = *MEMORY[0x1E695D940];
        v11 = *(a1 + 40);
        v12 = @"offendingStage";
        v13[0] = v11;
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v10 reason:@"willMigrate must return YES or NO with an error" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}]);
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      v5 = *(*(*(a1 + 56) + 8) + 40);
    }

    v6 = *(a1 + 32);
    v7 = *MEMORY[0x1E69E9840];

    return [v6 setContainer:0];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 56) + 8) + 40) = result;
    v9 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (void)_setIsMigrating:(unint64_t)a1
{
  if (a1)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __68__NSPersistentStoreCoordinator__NSInternalMethods___setIsMigrating___block_invoke;
    v2[3] = &unk_1E6EC2770;
    v2[4] = a1;
    v3 = a2;
    _perform_0(a1, v2);
  }
}

id __70__NSPersistentStoreCoordinator_applyMigrationStage_withContext_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    [*(a1 + 32) setContainer:a2];
    v4 = [*(a1 + 40) didMigrateHandler];
    if (((*(v4 + 16))(v4, [*(a1 + 48) stagedMigrationManager], *(a1 + 40), *(*(a1 + 56) + 8) + 40) & 1) == 0)
    {
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v10 = *MEMORY[0x1E695D940];
        v11 = *(a1 + 40);
        v12 = @"offendingStage";
        v13[0] = v11;
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v10 reason:@"didMigrate must return YES or NO with an error" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}]);
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      v5 = *(*(*(a1 + 56) + 8) + 40);
    }

    v6 = *(a1 + 32);
    v7 = *MEMORY[0x1E69E9840];

    return [v6 setContainer:0];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 56) + 8) + 40) = result;
    v9 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (NSTemporaryObjectID)managedObjectIDFromUTF8String:(uint64_t)a3 length:(void *)a4 error:
{
  v37[256] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_7;
  }

  if (a3 < 14 || __s1[a3] || strncmp(__s1, "x-coredata://", 0xDuLL))
  {
    if (a4)
    {
      v8 = 0;
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:0];
      goto LABEL_8;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v11 = 134060;
  v12 = _PFStackAllocatorCreate(v37, 2048);
  v13 = *MEMORY[0x1E695E498];
  v14 = CFStringCreateWithBytesNoCopy(v12, __s1 + 13, a3 - 13, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  if (__s1[13] == 47)
  {
    v15 = 0;
    v16 = 14;
  }

  else
  {
    v17 = strchr(__s1 + 13, 47);
    if (v17)
    {
      v18 = v17 - __s1;
      v38.length = v17 - __s1 - 13;
      v38.location = 0;
      v15 = CFStringCreateWithSubstring(v12, v14, v38);
      v16 = v18 + 1;
      if (v15)
      {
        v19 = [(NSPersistentStoreCoordinator *)a1 _persistentStoreForIdentifier:v15];
        v20 = v15;
        v15 = v19;
        CFRelease(v20);
        if (!v15)
        {
          if (!a4)
          {
            v8 = 0;
            goto LABEL_31;
          }

          v11 = 134000;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v15 = 0;
      v16 = 13;
    }
  }

  if (v16 >= a3)
  {
    v8 = 0;
  }

  else
  {
    v21 = &__s1[v16];
    v22 = strchr(&__s1[v16], 47);
    if (!v22)
    {
      goto LABEL_27;
    }

    v36 = v15;
    v23 = v22 - v21;
    v39.location = v16 - 13;
    v39.length = v22 - v21;
    v24 = CFStringCreateWithSubstring(v12, v14, v39);
    if (!v24)
    {
      goto LABEL_27;
    }

    v25 = v24;
    v35 = v23;
    v26 = [objc_msgSend(objc_msgSend(a1 "managedObjectModel")];
    if (v26)
    {
      v27 = v26;
      CFRelease(v25);
      v28 = v27;
      v23 = v35;
    }

    else
    {
      v29 = [a1 persistentStoreCoordinator];
      if (v29)
      {
        v29 = v29[12];
      }

      v28 = [(_PFModelMap *)v29 ancillaryEntityWithName:v25];
      CFRelease(v25);
      if (!v28)
      {
        goto LABEL_27;
      }
    }

    v30 = v23 + 2;
    if (v23 + 2 > a3)
    {
LABEL_27:
      v8 = 0;
      v11 = 134060;
      goto LABEL_28;
    }

    v31 = v21[v23 + 1];
    v32 = &v21[v30];
    v33 = (__s1 - &v21[v30]);
    if (v31 == 116)
    {
      v34 = CFStringCreateWithBytesNoCopy(v12, &v21[v30], &v33[a3], 0x8000100u, 0, v13);
      v8 = [[NSTemporaryObjectID alloc] initWithEntity:v28 andUUIDString:v34];
      if (v34)
      {
        CFRelease(v34);
      }

      v11 = 134060;
      if (v36)
      {
        [(NSTemporaryObjectID *)v8 _setPersistentStore:?];
      }
    }

    else
    {
      v8 = 0;
      v11 = 134060;
      if (v36 && v31 == 112)
      {
        v8 = [-[__CFString objectIDFactoryForEntity:](v36 objectIDFactoryForEntity:{v28), "managedObjectIDFromUTF8String:length:", v32, &v33[a3]}];
      }
    }
  }

LABEL_28:
  if (a4 && !v8)
  {
LABEL_30:
    v8 = 0;
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v11 userInfo:0];
  }

LABEL_31:
  if (v37[3] && v14)
  {
    CFRelease(v14);
  }

LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_lastOpenError
{
  if (result)
  {
    v1 = result[9];

    return v1;
  }

  return result;
}

- (void)_persistentStoreForIdentifier:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [(NSPersistentStoreCoordinator *)a1 _retainedPersistentStores];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [v3 objectAtIndex:v6];
      if ([objc_msgSend(v7 "identifier")])
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)newValuesForObjectWithID:(id)a3 withContext:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__19;
  v34 = __Block_byref_object_dispose__19;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__19;
  v28 = __Block_byref_object_dispose__19;
  v29 = 0;
  if (a4 && _PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(a4, a2);
  }

  v9 = [a3 persistentStore];
  v23 = 0;
  if (a4)
  {
    v10 = *(a4 + 20);
  }

  else
  {
    v10 = 0;
  }

  v11 = +[NSQueryGenerationToken currentQueryGenerationToken];
  if (v11 != [a4 _queryGenerationToken])
  {
    goto LABEL_7;
  }

  v17 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:v10];
  if (!v17)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134502 userInfo:0];
    v23 = v19;
    if (!v19)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v18 = [a4 _setQueryGenerationFromToken:v17 error:&v23];

  if ((v18 & 1) == 0)
  {
    v19 = v23;
    if (!v23)
    {
LABEL_15:
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v37 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v38 = 1024;
        v39 = 4340;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v21 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v37 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v38 = 1024;
        v39 = 4340;
        _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }

      goto LABEL_22;
    }

LABEL_20:
    if (a5)
    {
      v14 = 0;
      *a5 = v19;
      goto LABEL_11;
    }

LABEL_22:
    v14 = 0;
    goto LABEL_11;
  }

LABEL_7:
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__NSPersistentStoreCoordinator__NSInternalMethods__newValuesForObjectWithID_withContext_error___block_invoke;
  v22[3] = &unk_1E6EC2D28;
  v22[4] = self;
  v22[5] = a4;
  v22[6] = a3;
  v22[7] = &v30;
  v22[8] = &v24;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v22 toStore:v9];
  v12 = v25[5];
  if (a5)
  {
    v13 = v25[5];
    if (v13)
    {
      *a5 = v13;
    }
  }

  v14 = v31[5];
LABEL_11:
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

id __95__NSPersistentStoreCoordinator__NSInternalMethods__newValuesForObjectWithID_withContext_error___block_invoke(uint64_t a1, void *a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 && ![(NSPersistentStoreCoordinator *)*(a1 + 32) _canRouteToStore:a2 forContext:*(a1 + 40)])
  {
    v7[0] = @"Reason";
    v7[1] = @"store";
    v8[0] = @"Store is not valid for this context's generation";
    v8[1] = a2;
    v7[2] = @"context";
    v8[2] = *(a1 + 40);
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
    result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v5];
    *(*(*(a1 + 64) + 8) + 40) = result;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 40) = [a2 newValuesForObjectWithID:*(a1 + 48) withContext:*(a1 + 40) error:*(*(a1 + 64) + 8) + 40];
    result = *(*(*(a1 + 64) + 8) + 40);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)newValueForRelationship:(id)a3 forObjectWithID:(id)a4 withContext:(id)a5 error:(id *)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__19;
  v36 = __Block_byref_object_dispose__19;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__19;
  v30 = __Block_byref_object_dispose__19;
  v31 = 0;
  if (a5 && _PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(a5, a2);
  }

  v11 = [a4 persistentStore];
  v25 = 0;
  if (a5)
  {
    v12 = *(a5 + 20);
  }

  else
  {
    v12 = 0;
  }

  v13 = +[NSQueryGenerationToken currentQueryGenerationToken];
  if (v13 != [a5 _queryGenerationToken])
  {
    goto LABEL_7;
  }

  v19 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:v12];
  if (!v19)
  {
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134502 userInfo:0];
    v25 = v21;
    if (!v21)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v20 = [a5 _setQueryGenerationFromToken:v19 error:&v25];

  if ((v20 & 1) == 0)
  {
    v21 = v25;
    if (!v25)
    {
LABEL_15:
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v40 = 1024;
        v41 = 4398;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v40 = 1024;
        v41 = 4398;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }

      goto LABEL_22;
    }

LABEL_20:
    if (a6)
    {
      v16 = 0;
      *a6 = v21;
      goto LABEL_11;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_11;
  }

LABEL_7:
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __110__NSPersistentStoreCoordinator__NSInternalMethods__newValueForRelationship_forObjectWithID_withContext_error___block_invoke;
  v24[3] = &unk_1E6EC2D50;
  v24[4] = self;
  v24[5] = a5;
  v24[6] = a3;
  v24[7] = a4;
  v24[8] = &v32;
  v24[9] = &v26;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v24 toStore:v11];
  v14 = v27[5];
  if (a6)
  {
    v15 = v27[5];
    if (v15)
    {
      *a6 = v15;
    }
  }

  v16 = v33[5];
LABEL_11:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

id __110__NSPersistentStoreCoordinator__NSInternalMethods__newValueForRelationship_forObjectWithID_withContext_error___block_invoke(uint64_t a1, void *a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 && ![(NSPersistentStoreCoordinator *)*(a1 + 32) _canRouteToStore:a2 forContext:*(a1 + 40)])
  {
    v7[0] = @"Reason";
    v7[1] = @"store";
    v8[0] = @"Store is not valid for this context's generation";
    v8[1] = a2;
    v7[2] = @"context";
    v8[2] = *(a1 + 40);
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
    result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v5];
    *(*(*(a1 + 72) + 8) + 40) = result;
  }

  else
  {
    if ([*(a1 + 48) isTransient])
    {
      *(*(*(a1 + 64) + 8) + 40) = NSArray_EmptyArray;
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 40) = [a2 newValueForRelationship:*(a1 + 48) forObjectWithID:*(a1 + 56) withContext:*(a1 + 40) error:*(*(a1 + 72) + 8) + 40];
    }

    result = *(*(*(a1 + 72) + 8) + 40);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_newOrderedRelationshipInformationForRelationship:(id)a3 forObjectWithID:(id)a4 withContext:(id)a5 error:(id *)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__19;
  v36 = __Block_byref_object_dispose__19;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__19;
  v30 = __Block_byref_object_dispose__19;
  v31 = 0;
  v11 = [a4 persistentStore];
  v25 = 0;
  if (a5)
  {
    v12 = *(a5 + 20);
  }

  else
  {
    v12 = 0;
  }

  v13 = +[NSQueryGenerationToken currentQueryGenerationToken];
  if (v13 != [a5 _queryGenerationToken])
  {
    goto LABEL_4;
  }

  v19 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:v12];
  if (!v19)
  {
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134502 userInfo:0];
    v25 = v21;
    if (!v21)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v20 = [a5 _setQueryGenerationFromToken:v19 error:&v25];

  if ((v20 & 1) == 0)
  {
    v21 = v25;
    if (!v25)
    {
LABEL_12:
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v40 = 1024;
        v41 = 4456;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v40 = 1024;
        v41 = 4456;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (a6)
    {
      v16 = 0;
      *a6 = v21;
      goto LABEL_8;
    }

LABEL_19:
    v16 = 0;
    goto LABEL_8;
  }

LABEL_4:
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __136__NSPersistentStoreCoordinator__NSInternalMethods___newOrderedRelationshipInformationForRelationship_forObjectWithID_withContext_error___block_invoke;
  v24[3] = &unk_1E6EC2D50;
  v24[4] = self;
  v24[5] = a5;
  v24[6] = a3;
  v24[7] = a4;
  v24[8] = &v32;
  v24[9] = &v26;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v24 toStore:v11];
  v14 = v27[5];
  if (a6)
  {
    v15 = v27[5];
    if (v15)
    {
      *a6 = v15;
    }
  }

  v16 = v33[5];
LABEL_8:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

id __136__NSPersistentStoreCoordinator__NSInternalMethods___newOrderedRelationshipInformationForRelationship_forObjectWithID_withContext_error___block_invoke(uint64_t a1, void *a2)
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (a2 && ![(NSPersistentStoreCoordinator *)*(a1 + 32) _canRouteToStore:a2 forContext:*(a1 + 40)])
  {
    v7[0] = @"Reason";
    v7[1] = @"store";
    v8[0] = @"Store is not valid for this context's generation";
    v8[1] = a2;
    v7[2] = @"context";
    v8[2] = *(a1 + 40);
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
    result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v5];
    *(*(*(a1 + 72) + 8) + 40) = result;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 40) = [a2 _newOrderedRelationshipInformationForRelationship:*(a1 + 48) forObjectWithID:*(a1 + 56) withContext:*(a1 + 40) error:*(*(a1 + 72) + 8) + 40];
    result = *(*(*(a1 + 72) + 8) + 40);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_allOrderKeysForDestination:(id)a3 inRelationship:(id)a4 error:(id *)a5
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__19;
  v23 = __Block_byref_object_dispose__19;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__19;
  v17 = __Block_byref_object_dispose__19;
  v18 = 0;
  v9 = [a3 persistentStore];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__NSPersistentStoreCoordinator__NSInternalMethods___allOrderKeysForDestination_inRelationship_error___block_invoke;
  v12[3] = &unk_1E6EC2D78;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = &v19;
  v12[7] = &v13;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v12 toStore:v9];
  if (a5)
  {
    *a5 = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)a3 generation:(id)a4
{
  v7 = [a3 count];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __109__NSPersistentStoreCoordinator__NSInternalMethods__managedObjectContextDidRegisterObjectsWithIDs_generation___block_invoke;
  v8[3] = &unk_1E6EC2DA0;
  v8[5] = a4;
  v8[6] = v7;
  v8[4] = a3;
  [(NSPersistentStoreCoordinator *)self _routeHeavyweightBlock:v8];
}

void __109__NSPersistentStoreCoordinator__NSInternalMethods__managedObjectContextDidRegisterObjectsWithIDs_generation___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != 1)
  {
    valueCallBacks.version = 0;
    valueCallBacks.retain = 0;
    *&valueCallBacks.release = *(MEMORY[0x1E695E9E8] + 16);
    valueCallBacks.equal = 0;
    allocator = *MEMORY[0x1E695E480];
    v10 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &valueCallBacks);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = a1;
    v11 = *(a1 + 32);
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = [v16 persistentStore];
          if (v17)
          {
            v18 = v17;
            if ([a2 indexOfObjectIdenticalTo:v17] != 0x7FFFFFFFFFFFFFFFLL)
            {
              Value = CFDictionaryGetValue(v10, v18);
              if (!Value)
              {
                Value = CFArrayCreateMutable(allocator, 0, 0);
                CFDictionarySetValue(v10, v18, Value);
              }

              CFArrayAppendValue(Value, v16);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v13);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = [(__CFDictionary *)v10 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v10);
          }

          v24 = *(*(&v30 + 1) + 8 * j);
          v25 = CFDictionaryGetValue(v10, v24);
          if ([v24 supportsGenerationalQuerying])
          {
            [v24 managedObjectContextDidRegisterObjectsWithIDs:v25 generation:*(v28 + 40)];
          }

          else
          {
            [v24 managedObjectContextDidRegisterObjectsWithIDs:v25];
          }
        }

        v21 = [(__CFDictionary *)v10 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v21);
    }

    CFRelease(v10);
    goto LABEL_31;
  }

  v4 = [objc_msgSend(*(a1 + 32) objectAtIndex:{0), "persistentStore"}];
  if (!v4 || (v5 = v4, [a2 indexOfObjectIdenticalTo:v4] == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_31:
    v26 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = [v5 supportsGenerationalQuerying];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = *(a1 + 40);
    v9 = *MEMORY[0x1E69E9840];

    [v5 managedObjectContextDidRegisterObjectsWithIDs:v7 generation:v8];
  }

  else
  {
    v27 = *MEMORY[0x1E69E9840];

    [v5 managedObjectContextDidRegisterObjectsWithIDs:v7];
  }
}

- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)a3 generation:(id)a4
{
  v7 = [a3 count];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3052000000;
  v11[3] = __Block_byref_object_copy__19;
  v11[4] = __Block_byref_object_dispose__19;
  v11[5] = [(NSPersistentStoreCoordinator *)self _retainedPersistentStores];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __111__NSPersistentStoreCoordinator__NSInternalMethods__managedObjectContextDidUnregisterObjectsWithIDs_generation___block_invoke;
  v10[3] = &unk_1E6EC2DC8;
  v10[6] = v11;
  v10[7] = v7;
  v10[4] = a3;
  v10[5] = a4;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    v9 = malloc_type_malloc(0x28uLL, 0x80040B8603338uLL);
    *v9 = _Block_copy(v10);
    v9[1] = CFRetain(self);
    v9[2] = 8199;
    v9[3] = 0;
    v9[4] = 0;
    dispatch_async_f(dispatchQueue, v9, internalBlockToNSPersistentStoreCoordinatorPerform);
  }

  _Block_object_dispose(v11, 8);
}

void __111__NSPersistentStoreCoordinator__NSInternalMethods__managedObjectContextDidUnregisterObjectsWithIDs_generation___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = [objc_msgSend(*(a1 + 32) objectAtIndex:{0), "persistentStore"}];
    if (v2)
    {
      v3 = v2;
      if ([*(*(*(a1 + 48) + 8) + 40) indexOfObjectIdenticalTo:v2] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = [v3 supportsGenerationalQuerying];
        v5 = *(a1 + 32);
        if (v4)
        {
          [v3 managedObjectContextDidUnregisterObjectsWithIDs:v5 generation:*(a1 + 40)];
        }

        else
        {
          [v3 managedObjectContextDidUnregisterObjectsWithIDs:v5];
        }
      }
    }

    v23 = *(*(*(a1 + 48) + 8) + 40);
    v24 = *MEMORY[0x1E69E9840];
  }

  else
  {
    valueCallBacks.version = 0;
    valueCallBacks.retain = 0;
    *&valueCallBacks.release = *(MEMORY[0x1E695E9E8] + 16);
    valueCallBacks.equal = 0;
    allocator = *MEMORY[0x1E695E480];
    v6 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &valueCallBacks);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [v12 persistentStore];
          if (v13)
          {
            v14 = v13;
            if ([*(*(*(a1 + 48) + 8) + 40) indexOfObjectIdenticalTo:v13] != 0x7FFFFFFFFFFFFFFFLL)
            {
              Value = CFDictionaryGetValue(v6, v14);
              if (!Value)
              {
                Value = CFArrayCreateMutable(allocator, 0, 0);
                CFDictionarySetValue(v6, v14, Value);
              }

              CFArrayAppendValue(Value, v12);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [(__CFDictionary *)v6 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v6);
          }

          v20 = *(*(&v26 + 1) + 8 * j);
          v21 = CFDictionaryGetValue(v6, v20);
          if ([v20 supportsGenerationalQuerying])
          {
            [v20 managedObjectContextDidUnregisterObjectsWithIDs:v21 generation:*(a1 + 40)];
          }

          else
          {
            [v20 managedObjectContextDidUnregisterObjectsWithIDs:v21];
          }
        }

        v17 = [(__CFDictionary *)v6 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v17);
    }

    CFRelease(v6);

    v22 = *MEMORY[0x1E69E9840];
  }
}

- (BOOL)obtainPermanentIDsForObjects:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  if (![a3 count])
  {
    v15 = 1;
    goto LABEL_26;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *v39;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v39 != v9)
      {
        objc_enumerationMutation(a3);
      }

      v11 = [*(*(&v38 + 1) + 8 * i) managedObjectContext];
      v12 = v11;
      if (v11)
      {
        if (_PF_Threading_Debugging_level)
        {
          _PFAssertSafeMultiThreadedAccess_impl(v11, a2);
        }

        v32 = 0;
        v33 = &v32;
        v34 = 0x3052000000;
        v35 = __Block_byref_object_copy__19;
        v36 = __Block_byref_object_dispose__19;
        v37 = 0;
        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v31 = 0;
        v16 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Executing obtain objectID request"];
        v27 = 0;
        v17 = v12[20];
        v18 = +[NSQueryGenerationToken currentQueryGenerationToken];
        if (v18 != [v12 _queryGenerationToken])
        {
          goto LABEL_22;
        }

        v19 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:v17];
        if (v19)
        {
          v20 = [v12 _setQueryGenerationFromToken:v19 error:&v27];

          if (v20)
          {
LABEL_22:
            v26[0] = 0;
            v26[1] = v26;
            v26[2] = 0x3052000000;
            v26[3] = __Block_byref_object_copy__19;
            v26[4] = __Block_byref_object_dispose__19;
            v26[5] = [MEMORY[0x1E695DF70] array];
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __87__NSPersistentStoreCoordinator__NSInternalMethods__obtainPermanentIDsForObjects_error___block_invoke;
            v25[3] = &unk_1E6EC2DF0;
            v25[4] = v17;
            v25[5] = self;
            v25[6] = a3;
            v25[7] = v12;
            v25[8] = &v32;
            v25[9] = v26;
            v25[10] = &v28;
            [(NSPersistentStoreCoordinator *)self _routeHeavyweightBlock:v25];
            _Block_object_dispose(v26, 8);
            [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v16];
            v21 = v33[5];
            if (a4)
            {
              v22 = v33[5];
              if (v22)
              {
                *a4 = v22;
              }
            }

            v15 = *(v29 + 24);
            _Block_object_dispose(&v28, 8);
            _Block_object_dispose(&v32, 8);
            goto LABEL_26;
          }
        }

        else
        {
          v27 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134502 userInfo:0];
        }

        [v12 _setQueryGenerationFromToken:+[NSQueryGenerationToken unpinnedQueryGenerationToken](NSQueryGenerationToken error:{"unpinnedQueryGenerationToken"), 0}];
        goto LABEL_22;
      }
    }

    v8 = [a3 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_10:
  if (a4)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObject:a3 forKey:@"NSManagedObjectContext is nil for objects passed to obtainPermanentIDsForObjects"];
    v15 = 0;
    *a4 = [v13 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v14];
  }

  else
  {
    v15 = 0;
  }

LABEL_26:
  v23 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

id __87__NSPersistentStoreCoordinator__NSInternalMethods__obtainPermanentIDsForObjects_error___block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) count])
  {
    v36 = objc_alloc_init(MEMORY[0x1E696AAC8]);
LABEL_15:
    v38 = a2;
    v39 = 0;
    goto LABEL_16;
  }

  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v3)
  {
    v4 = *v54;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v54 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v6 = *(*(&v53 + 1) + 8 * i);
        if ([*(a1 + 32) containsObject:{objc_msgSend(v6, "identifier")}])
        {
          [v39 addObject:v6];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v3);
  }

  v36 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (!v39)
  {
    goto LABEL_15;
  }

  v38 = v39;
  if (![v39 count])
  {
LABEL_46:
    v26 = [_NSCoreDataException exceptionWithName:134020 code:@"Can't resolve how to assign objects to stores; Coordinator does not have any stores" reason:0 userInfo:?];
    objc_exception_throw(v26);
  }

LABEL_16:
  if (![a2 count])
  {
    goto LABEL_46;
  }

  v7 = 0;
  v8 = 1;
  do
  {
    [(NSPersistentStoreCoordinator *)*(a1 + 40) _doPreSaveAssignmentsForObjects:v38 intoStores:?];
    if (v7)
    {
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v9 = *(a1 + 48);
    v10 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v10)
    {
      v11 = *v50;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v49 + 1) + 8 * j);
          v14 = [v13 objectID];
          if ([v14 isTemporaryID])
          {
            v15 = [v14 persistentStore];
            if (v15)
            {
              v16 = [v7 objectForKey:v15];
              if (!v16)
              {
                v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v7 setObject:v16 forKey:v15];
              }

              [v16 addObject:v13];
            }

            else
            {
              v8 = 0;
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v10);
    }

    v17 = v8;
    v8 = 0;
  }

  while ((v17 & 1) == 0);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = [v7 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v18)
  {
    v19 = *v46;
LABEL_36:
    v20 = 0;
    while (1)
    {
      if (*v46 != v19)
      {
        objc_enumerationMutation(v7);
      }

      v21 = *(*(&v45 + 1) + 8 * v20);
      v22 = [v7 objectForKey:v21];
      v23 = [v21 obtainPermanentIDsForObjects:v22 error:*(*(a1 + 64) + 8) + 40];
      v24 = v23;
      if (!v23)
      {
        break;
      }

      if ([v23 count])
      {
        v25 = [(NSManagedObjectContext *)*(a1 + 56) _changeIDsForManagedObjects:v22 toIDs:v24];
        if (v25)
        {
          [*(*(*(a1 + 72) + 8) + 40) addObject:v25];
        }
      }

      if (v18 == ++v20)
      {
        v18 = [v7 countByEnumeratingWithState:&v45 objects:v58 count:16];
        if (v18)
        {
          goto LABEL_36;
        }

        goto LABEL_45;
      }
    }
  }

  else
  {
LABEL_45:
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  v27 = *(*(*(a1 + 64) + 8) + 40);
  if ([*(*(*(a1 + 72) + 8) + 40) count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v28 = *(*(*(a1 + 72) + 8) + 40);
    v29 = [v28 countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v29)
    {
      v30 = *v42;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v41 + 1) + 8 * k);
          v33 = objc_autoreleasePoolPush();
          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
          objc_autoreleasePoolPop(v33);
        }

        v29 = [v28 countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v29);
    }

    [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
  }

  [v37 drain];
  result = 0;
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_canSaveGraphRootedAtObject:(void *)value intoStore:(uint64_t)a2 withPreviouslyChecked:(CFSetRef)theSet withAcceptableEntities:(const __CFSet *)a4
{
  v46 = a4;
  v59 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([value managedObjectContext], sel__canSaveGraphRootedAtObject_intoStore_withPreviouslyChecked_withAcceptableEntities_);
    if (!value)
    {
      goto LABEL_4;
    }

LABEL_3:
    if (CFSetContainsValue(theSet, value))
    {
      goto LABEL_4;
    }

    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    CFSetAddValue(Mutable, value);
    v49 = theSet;
LABEL_6:
    Count = CFSetGetCount(Mutable);
    HIDWORD(v44) = Count == 0;
    if (!Count)
    {
      goto LABEL_46;
    }

    v10 = Count;
    v11 = MEMORY[0x1EEE9AC00](Count);
    v13 = &v44 - v12;
    v45 = v14;
    if (v11 > 0x200)
    {
      v13 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v13, 8 * v11);
    }

    CFSetGetValues(Mutable, v13);
    CFSetRemoveAllValues(Mutable);
    v15 = 0;
    v16 = 0;
    v48 = v10;
    v47 = v13;
    while (1)
    {
      v50 = v16;
      v53 = *&v13[8 * v15];
      if (!CFSetContainsValue(theSet, v53))
      {
        v17 = v53;
        v18 = [objc_msgSend(v53 "objectID")];
        v19 = [v17 entity];
        if (v18)
        {
          v20 = v18 == a2;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          v42 = 0;
          theSet = v49;
          goto LABEL_42;
        }

        v21 = v19;
        v22 = CFSetContainsValue(v46, v19);
        theSet = v49;
        if (!v22)
        {
          v42 = 0;
LABEL_42:
          v41 = v48;
          v13 = v47;
LABEL_43:
          if (v41 >= 0x201)
          {
            NSZoneFree(0, v13);
          }

          if ((v42 & 1) == 0)
          {
LABEL_46:
            CFRelease(Mutable);
            result = HIDWORD(v44);
            goto LABEL_47;
          }

          goto LABEL_6;
        }

        v23 = v53;
        CFSetAddValue(v49, v53);
        if (([v23 isFault] & 1) == 0)
        {
          v24 = v21[14];
          v25 = *(v21[13] + 40);
          v52 = _kvcPropertysPrimitiveGetters(v21);
          v26 = v24[12];
          v27 = v24[13];
          if (v26 < v27 + v26)
          {
            do
            {
              _PF_Handler_Primitive_GetProperty(v53, v26, *(v25 + 8 * v26), *(v52 + 8 * v26));
              if (v28)
              {
                v29 = v28;
                v30 = [v28 objectID];
                if (([v30 isTemporaryID] & 1) != 0 || objc_msgSend(v30, "persistentStore") != a2)
                {
                  CFSetAddValue(Mutable, v29);
                }
              }

              ++v26;
              --v27;
            }

            while (v27);
          }

          v31 = v24[18];
          v51 = v24[19] + v31;
          if (v31 < v51)
          {
            do
            {
              v32 = v25;
              _PF_Handler_Primitive_GetProperty(v53, v31, *(v25 + 8 * v31), *(v52 + 8 * v31));
              v34 = v33;
              if (([v33 isFault] & 1) == 0)
              {
                if ([v34 count])
                {
                  v56 = 0u;
                  v57 = 0u;
                  v55 = 0u;
                  v54 = 0u;
                  v35 = [v34 countByEnumeratingWithState:&v54 objects:v58 count:16];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = *v55;
                    do
                    {
                      for (i = 0; i != v36; ++i)
                      {
                        if (*v55 != v37)
                        {
                          objc_enumerationMutation(v34);
                        }

                        v39 = *(*(&v54 + 1) + 8 * i);
                        v40 = [v39 objectID];
                        if (([v40 isTemporaryID] & 1) != 0 || objc_msgSend(v40, "persistentStore") != a2)
                        {
                          CFSetAddValue(Mutable, v39);
                        }
                      }

                      v36 = [v34 countByEnumeratingWithState:&v54 objects:v58 count:16];
                    }

                    while (v36);
                  }
                }
              }

              ++v31;
              v25 = v32;
            }

            while (v31 != v51);
          }
        }
      }

      v15 = (v50 + 1);
      v16 = v50 + 1;
      v41 = v48;
      theSet = v49;
      v13 = v47;
      if (v48 <= v15)
      {
        v42 = 1;
        goto LABEL_43;
      }
    }
  }

  if (value)
  {
    goto LABEL_3;
  }

LABEL_4:
  result = 1;
LABEL_47:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_newConflictRecordForObject:(unint64_t)a3 andOriginalRow:(void *)a4 withContext:
{
  if (result)
  {
    v4 = a3;
    v5 = a2;
    if (a3 && [a2 managedObjectContext])
    {
      v6 = [v5 entity];
      v39 = [v5 objectID];
      v7 = [v39 persistentStore];
      v38 = v7;
      if (v7)
      {
        v37 = *(v7 + 48);
      }

      else
      {
        v37 = 0;
      }

      v8 = [objc_msgSend(v6 "propertiesByName")];
      v9 = [NSKnownKeysDictionary alloc];
      if (v6)
      {
        v10 = v6[13];
      }

      else
      {
        v10 = 0;
      }

      v11 = [(NSKnownKeysDictionary *)v9 initWithSearchStrategy:v10];
      v35 = [(NSKnownKeysDictionary *)v11 values];
      v12 = [v4 knownKeyValuesPointer];
      v13 = [(NSKnownKeysMappingStrategy *)[(NSKnownKeysDictionary *)v11 mapping] keys];
      v14 = [MEMORY[0x1E695DFB0] null];
      v15 = v6[14];
      v16 = v15[6];
      v17 = v15[7];
      v36 = v11;
      if (v16 < v17 + v16)
      {
        v33 = v8;
        v18 = (v13 + 8 * v16);
        v19 = (v35 + 8 * v16);
        v20 = (v12 + 8 * v16);
        do
        {
          if (v12)
          {
            v21 = *v20;
          }

          else
          {
            v21 = [v4 valueForKey:*v18];
          }

          v22 = v14;
          if (v21)
          {
            v22 = v21;
          }

          *v19++ = v22;
          ++v18;
          ++v20;
          --v17;
        }

        while (v17);
        v15 = v6[14];
        v11 = v36;
        v8 = v33;
      }

      v23 = v15[12];
      v24 = v15[13];
      if (v23 < v24 + v23)
      {
        v34 = v5;
        v25 = (v8 + 8 * v23);
        v26 = (v35 + 8 * v23);
        v27 = (v12 + 8 * v23);
        do
        {
          if (v12)
          {
            v28 = *v27;
          }

          else
          {
            v28 = [v38 newValueForRelationship:*v25 forObjectWithID:v39 withContext:a4 error:0];
          }

          v29 = v14;
          if (v28)
          {
            v30 = z9dsptsiQ80etb9782fsrs98bfdle88 == 1 ? v28 : [NSManagedObjectContext _retainedObjectWithID:a4 optionalHandler:v28 withInlineStorage:v37];
            v29 = v30;
            if (!v12)
            {
            }
          }

          *v26++ = v29;
          ++v25;
          ++v27;
          --v24;
        }

        while (v24);
        v5 = v34;
        v11 = v36;
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF20]);
    }

    v31 = [NSMergeConflict alloc];
    if (v4)
    {
      v4 = [v4 _versionNumber];
    }

    v32 = -[NSMergeConflict initWithSource:newVersion:oldVersion:cachedSnapshot:persistedSnapshot:](v31, "initWithSource:newVersion:oldVersion:cachedSnapshot:persistedSnapshot:", v5, v4, [v5 _versionReference], v11, 0);

    return v32;
  }

  return result;
}

- (void)_conflictsWithRowCacheForObject:(void *)a3 withContext:(void *)a4 andStore:
{
  v27[2] = *MEMORY[0x1E69E9840];
  v8 = [a2 objectID];
  v9 = [a2 _versionReference];
  if ([a2 isFault])
  {
    [(NSFaultHandler *)_insertion_fault_handler fulfillFault:a2 withContext:a3];
  }

  v24 = 0;
  v10 = [a4 newValuesForObjectWithID:v8 withContext:a3 error:&v24];
  v11 = v10;
  if (v10)
  {
    if (v9 >= [v10 _versionNumber])
    {
      v16 = 0;
      goto LABEL_12;
    }

    v12 = a1;
    v13 = a2;
    v14 = v11;
  }

  else
  {
    if (v24)
    {
      v15 = [v24 domain];
      if (![v15 isEqualToString:*MEMORY[0x1E696A250]] || objc_msgSend(v24, "code") != 133000)
      {
        v20 = *MEMORY[0x1E695D940];
        v21 = [v24 code];
        v22 = *MEMORY[0x1E696AA08];
        v27[0] = v24;
        v26[0] = v22;
        v26[1] = @"NSAffectedObjectsErrorKey";
        v25 = v8;
        v27[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        v23 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v20, v21, @"An error occurred while trying to fetch a row for conflict detection.", [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2]);
        -[_NSCoreDataException _setDomain:](v23, [v24 domain]);
        objc_exception_throw(v23);
      }
    }

    v12 = a1;
    v13 = a2;
    v14 = 0;
  }

  v16 = [(NSPersistentStoreCoordinator *)v12 _newConflictRecordForObject:v13 andOriginalRow:v14 withContext:a3];
  v17 = v16;
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (const)_storeClassForStoreWithType:(const char *)result URL:(uint64_t)a2 options:(void *)a3
{
  if (result)
  {
    v4 = result;
    result = [NSPersistentStoreCoordinator _storeClassForStoreType:a2];
    if (!result && (![v4 persistentStoreForURL:a3] || (result = objc_opt_class()) == 0))
    {

      return [NSPersistentStoreCoordinator _classForPersistentStoreAtURL:a3];
    }
  }

  return result;
}

- (void)_postStoreRemoteChangeNotificationsForStore:(uint64_t)a3 andState:
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = [a2 identifier];
    v8 = [a2 URL];
    v9 = objc_alloc(MEMORY[0x1E695DF90]);
    v24[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v23 = @"NSStoreUUID";
    v11 = [v9 initWithObjects:v10 forKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v23, 1)}];
    if (!v7)
    {
      v13 = 0;
LABEL_22:

      goto LABEL_23;
    }

    if (a3)
    {
      v12 = [_NSPersistentHistoryToken alloc];
      v13 = -[_NSPersistentHistoryToken initWithTransactionNumber:andStoreID:](v12, "initWithTransactionNumber:andStoreID:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3], v7);
      [v11 setObject:v13 forKey:@"historyToken"];
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = 0;
      if (!v8)
      {
LABEL_9:
        if (+[NSSQLCore debugDefault]>= 1)
        {
          v14 = objc_autoreleasePoolPush();
          _pflogInitialize(9);
          if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v20 = v7;
                v21 = 2112;
                v22 = v11;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Remote Change Notification - posting for store  %@ with userInfo %@\n", buf, 0x16u);
              }
            }

            else
            {
              v16 = _PFLogGetLogStream(9);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v20 = v7;
                v21 = 2112;
                v22 = v11;
                _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_INFO, "CoreData: debug: Remote Change Notification - posting for store  %@ with userInfo %@\n", buf, 0x16u);
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

          _NSCoreDataLog_console(v17, "Remote Change Notification - posting for store  %@ with userInfo %@", v7, v11);
          objc_autoreleasePoolPop(v14);
        }

        [v6 postNotificationName:@"NSPersistentStoreRemoteChangeNotification" object:a1 userInfo:v11];
        goto LABEL_22;
      }
    }

    [v11 setObject:v8 forKey:@"storeURL"];
    goto LABEL_9;
  }

LABEL_23:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_copyMetadataFromStore:(void *)a3 toStore:(uint64_t)a4 migrationManager:
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [a2 metadata];
    v7 = [a3 metadata];
    v8 = [v6 mutableCopyWithZone:0];
    v9 = v8;
    if (!a4)
    {
      [v8 removeObjectForKey:@"NSStoreUUID"];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"NSStoreModelVersionHashesVersion", @"NSStoreModelVersionHashes", @"NSStoreModelVersionIdentifiers", @"NSPersistenceFrameworkVersion", 0, 0}];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v7 objectForKey:v15];
          [v9 removeObjectForKey:v15];
          if (v16)
          {
            [v9 setObject:v16 forKey:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [a3 setMetadata:v9];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)currentQueryGenerationTokenFromStores:(id)a3
{
  v3 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:a3];

  return v3;
}

- (BOOL)_replacePersistentStoreAtURL:(id)a3 destinationOptions:(id)a4 withPersistentStoreFromURL:(id)a5 sourceOptions:(id)a6 storeType:(id)a7 error:(id *)a8
{
  v37[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v22 = MEMORY[0x1E695DF30];
    v23 = *MEMORY[0x1E695D940];
    v24 = @"Invalid destination store URL: nil";
    goto LABEL_14;
  }

  if (!a5)
  {
    v22 = MEMORY[0x1E695DF30];
    v23 = *MEMORY[0x1E695D940];
    v24 = @"Invalid source store URL: nil";
LABEL_14:
    objc_exception_throw([v22 exceptionWithName:v23 reason:v24 userInfo:{0, a6, a7, a8}]);
  }

  if ([a5 isEqual:?])
  {
    v15 = 1;
  }

  else
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3052000000;
    v33 = __Block_byref_object_copy__19;
    v34 = __Block_byref_object_dispose__19;
    v35 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v16 = [(NSPersistentStoreCoordinator *)self persistentStoreForURL:a3];
    if (v16)
    {
      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      v36 = @"removed";
      v37[0] = v16;
      [v17 postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v37, &v36, 1)}];
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __182__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_storeType_error___block_invoke;
    v25[3] = &unk_1E6EC2E18;
    v25[4] = self;
    v25[5] = a7;
    v25[6] = a5;
    v25[7] = a6;
    v25[8] = a3;
    v25[9] = a4;
    v25[10] = &v30;
    v25[11] = &v26;
    v25[12] = a8;
    _perform_0(self, v25);
    v18 = v31[5];
    if (a8)
    {
      v19 = v31[5];
      if (v19)
      {
        *a8 = v19;
      }
    }

    v15 = *(v27 + 24);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

id __182__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_storeType_error___block_invoke(uint64_t a1)
{
  v2 = [NSPersistentStoreCoordinator _storeClassForStoreWithType:*(a1 + 40) URL:*(a1 + 48) options:?];
  if (!v2)
  {
    v2 = [NSPersistentStoreCoordinator _storeClassForStoreWithType:*(a1 + 40) URL:*(a1 + 64) options:?];
  }

  v3 = [*(a1 + 32) persistentStoreForURL:*(a1 + 64)];
  if (v3)
  {
    v4 = objc_opt_class();
    if (([(NSPersistentStoreCoordinator *)*(a1 + 32) _removePersistentStore:v3 error:(*(*(a1 + 80) + 8) + 40)]& 1) == 0)
    {
      *(*(*(a1 + 88) + 8) + 24) = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) persistentStoreForURL:*(a1 + 48)];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [*(a1 + 56) objectForKey:@"NSPersistentStoreUnlinkDestroyOption"];
    if (v7)
    {
      v8 = [v7 BOOLValue];
    }

    else
    {
      v8 = 0;
    }

    if ([objc_msgSend(v5 "type")])
    {
      [(NSSQLCore *)v5 _disconnectAllConnections];
    }

    if (v4 && v6 && v4 != v6)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"source and destination store are different classes of store: %@ != %@", v4, v6];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0]);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v2)
  {
    *(*(*(a1 + 88) + 8) + 24) = [v2 _replacePersistentStoreAtURL:*(a1 + 64) destinationOptions:*(a1 + 72) withPersistentStoreFromURL:*(a1 + 48) sourceOptions:*(a1 + 56) error:*(*(a1 + 80) + 8) + 40];
  }

  if (*(*(*(a1 + 88) + 8) + 24) & v8)
  {
    *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 32) setURL:*(a1 + 64) forPersistentStore:v5];
    if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = MEMORY[0x1E695DF20];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*(a1 + 48), *(a1 + 64), 0}];
      v12 = [v10 dictionaryWithObjectsAndKeys:{v11, *MEMORY[0x1E696A998], 0}];
      *(*(*(a1 + 80) + 8) + 40) = [v9 errorWithDomain:*MEMORY[0x1E696A250] code:134080 userInfo:v12];
    }
  }

LABEL_23:
  result = *(*(*(a1 + 80) + 8) + 40);
  if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0 && *(a1 + 96) && !*(*(*(a1 + 80) + 8) + 40))
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = MEMORY[0x1E695DF20];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*(a1 + 48), *(a1 + 64), 0}];
    v17 = [v15 dictionaryWithObjectsAndKeys:{v16, *MEMORY[0x1E696A998], 0}];
    result = [v14 errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v17];
    *(*(*(a1 + 80) + 8) + 40) = result;
  }

  return result;
}

- (BOOL)_destroyPersistentStoreAtURL:(id)a3 withType:(id)a4 options:(id)a5 error:(id *)a6
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL: nil" userInfo:{0, a6}]);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__19;
  v27 = __Block_byref_object_dispose__19;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v11 = [(NSPersistentStoreCoordinator *)self persistentStoreForURL:?];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v29 = @"removed";
    v30[0] = v11;
    [v12 postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v30, &v29, 1)}];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __129__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___destroyPersistentStoreAtURL_withType_options_error___block_invoke;
  v18[3] = &unk_1E6EC2E40;
  v18[4] = self;
  v18[5] = a4;
  v18[6] = a3;
  v18[7] = a5;
  v18[8] = &v23;
  v18[9] = &v19;
  v18[10] = a6;
  _perform_0(self, v18);
  v13 = v24[5];
  if (a6)
  {
    v14 = v24[5];
    if (v14)
    {
      *a6 = v14;
    }
  }

  v15 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

id __129__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___destroyPersistentStoreAtURL_withType_options_error___block_invoke(uint64_t a1)
{
  v2 = [NSPersistentStoreCoordinator _storeClassForStoreWithType:*(a1 + 40) URL:*(a1 + 48) options:?];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [*(a1 + 32) persistentStoreForURL:*(a1 + 48)];
  if (v7)
  {
    v8 = [(NSPersistentStoreCoordinator *)*(a1 + 32) _removePersistentStore:v7 error:(*(*(a1 + 64) + 8) + 40)]^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(*(a1 + 64) + 8) + 40);
  [v6 drain];
  v10 = *(*(*(a1 + 64) + 8) + 40);
  if ((v8 & 1) == 0)
  {
    if (v2)
    {
      *(*(*(a1 + 72) + 8) + 24) = [v2 _destroyPersistentStoreAtURL:*(a1 + 48) options:*(a1 + 56) error:*(*(a1 + 64) + 8) + 40];
    }

    else if (*(a1 + 80))
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*(a1 + 48), *MEMORY[0x1E696A998], 0}];
      *(*(*(a1 + 64) + 8) + 40) = [v11 errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v12];
    }
  }

  return *(*(*(a1 + 64) + 8) + 40);
}

- (BOOL)_rekeyPersistentStoreAtURL:(id)a3 type:(id)a4 options:(id)a5 withKey:(id)a6 error:(id *)a7
{
  v44[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL: nil" userInfo:{0, a6, a7}]);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = __Block_byref_object_copy__19;
  v37 = __Block_byref_object_dispose__19;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__19;
  v27 = __Block_byref_object_dispose__19;
  v28 = [(NSPersistentStoreCoordinator *)self persistentStoreForURL:?];
  if (v24[5])
  {
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = v24[5];
    v43 = @"removed";
    v44[0] = v14;
    [v13 postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v44, &v43, 1)}];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __131__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___rekeyPersistentStoreAtURL_type_options_withKey_error___block_invoke;
  v22[3] = &unk_1E6EC2E68;
  v22[4] = self;
  v22[5] = a4;
  v22[6] = a3;
  v22[7] = a5;
  v22[10] = &v33;
  v22[11] = &v29;
  v22[8] = a6;
  v22[9] = &v23;
  v22[12] = a7;
  _perform_0(self, v22);
  v15 = v34[5];
  if ((v30[3] & 1) == 0)
  {
    v19 = v34[5];
    if (v19)
    {
      if (a7)
      {
        *a7 = v19;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v40 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v41 = 1024;
        v42 = 5889;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v21 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v40 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v41 = 1024;
        v42 = 5889;
        _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v16 = *(v30 + 24);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

id __131__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___rekeyPersistentStoreAtURL_type_options_withKey_error___block_invoke(uint64_t a1)
{
  v2 = [NSPersistentStoreCoordinator _storeClassForStoreWithType:*(a1 + 40) URL:*(a1 + 48) options:?];
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v4 = *(*(*(a1 + 72) + 8) + 40);
  if (v4)
  {
    v5 = [(NSPersistentStoreCoordinator *)*(a1 + 32) _removePersistentStore:v4 error:(*(*(a1 + 80) + 8) + 40)]^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(*(a1 + 80) + 8) + 40);
  [v3 drain];
  v7 = *(*(*(a1 + 80) + 8) + 40);
  if ((v5 & 1) == 0)
  {
    v8 = *(*(a1 + 80) + 8);
    v10 = *(v8 + 40);
    v9 = v8 + 40;
    if (!v10)
    {
      if (v2)
      {
        *(*(*(a1 + 88) + 8) + 24) = [v2 _rekeyPersistentStoreAtURL:*(a1 + 48) options:*(a1 + 56) withKey:*(a1 + 64) error:v9];
      }

      else if (*(a1 + 96))
      {
        v12 = MEMORY[0x1E696ABC0];
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*(a1 + 48), *MEMORY[0x1E696A998], 0}];
        *(*(*(a1 + 80) + 8) + 40) = [v12 errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v13];
      }
    }
  }

  return *(*(*(a1 + 80) + 8) + 40);
}

- (id)persistentStoreForIdentifier:(id)a3
{
  v4 = [(NSPersistentStoreCoordinator *)self _retainedPersistentStores];
  v5 = [v4 count];
  if (v5 < 1)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [v4 objectAtIndex:v7];
      if ([objc_msgSend(v8 "identifier")])
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  return v8;
}

- (void)setCodableAdapterRegistry:(id)a3
{
  codableAdapterRegistry = self->_codableAdapterRegistry;
  if (codableAdapterRegistry != a3)
  {

    self->_codableAdapterRegistry = a3;
  }
}

- (id)_retainedCurrentQueryGeneration:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__NSPersistentStoreCoordinator_QueryGenerations___retainedCurrentQueryGeneration___block_invoke;
  v5[3] = &unk_1E6EC2E90;
  v5[5] = self;
  v5[6] = &v6;
  v5[4] = a3;
  [(NSPersistentStoreCoordinator *)self _routeHeavyweightBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __82__NSPersistentStoreCoordinator_QueryGenerations___retainedCurrentQueryGeneration___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(a2);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([*(a1 + 32) containsObject:{objc_msgSend(v9, "identifier")}])
          {
            [v4 addObject:v9];
          }
        }

        v6 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = a2;
  }

  *(*(*(a1 + 48) + 8) + 40) = [(NSPersistentStoreCoordinator *)*(a1 + 40) _retainedIdentifierFromStores:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_reopenQueryGenerationWithIdentifier:(uint64_t)a3 inStoreWithIdentifier:(void *)a4 error:
{
  if (!a1)
  {
    return 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__19;
  v21 = __Block_byref_object_dispose__19;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__19;
  v15 = __Block_byref_object_dispose__19;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __115__NSPersistentStoreCoordinator_QueryGenerations___reopenQueryGenerationWithIdentifier_inStoreWithIdentifier_error___block_invoke;
  v10[3] = &unk_1E6EC2EB8;
  v10[4] = a3;
  v10[5] = a2;
  v10[6] = &v17;
  v10[7] = &v11;
  [(NSPersistentStoreCoordinator *)a1 _routeHeavyweightBlock:v10];
  v5 = v12;
  v6 = v12[5];
  if (v6)
  {
    if (a4)
    {
      *a4 = v6;
      v6 = v5[5];
    }

    v7 = v6;
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v8;
}

uint64_t __115__NSPersistentStoreCoordinator_QueryGenerations___reopenQueryGenerationWithIdentifier_inStoreWithIdentifier_error___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if ([objc_msgSend(v8 "identifier")])
        {
          *(*(a1[6] + 8) + 40) = [v8 reopenQueryGenerationWithIdentifier:a1[5] error:*(a1[7] + 8) + 40];
          v9 = *(*(a1[7] + 8) + 40);
          if (v9)
          {
            v10 = v9;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v5 = result;
    }

    while (result);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_validateQueryGeneration:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if (+[NSQueryGenerationToken nostoresQueryGenerationToken](NSQueryGenerationToken, "nostoresQueryGenerationToken") == a3 || +[NSQueryGenerationToken unpinnedQueryGenerationToken]== a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 1;
    if (+[NSQueryGenerationToken currentQueryGenerationToken]!= a3)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 1;
      v15 = 0;
      v16 = &v15;
      v17 = 0x3052000000;
      v18 = __Block_byref_object_copy__19;
      v19 = __Block_byref_object_dispose__19;
      v20 = 0;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __81__NSPersistentStoreCoordinator_QueryGenerations___validateQueryGeneration_error___block_invoke;
      v14[3] = &unk_1E6EC2EE0;
      v14[4] = a3;
      v14[5] = &v15;
      v14[6] = &v21;
      [(NSPersistentStoreCoordinator *)self _routeHeavyweightBlock:v14];
      v7 = *(v22 + 24);
      if ((v7 & 1) == 0)
      {
        v8 = v16[5];
        if (v8)
        {
          if (a4)
          {
            *a4 = v8;
          }
        }

        else
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
            v27 = 1024;
            v28 = 6038;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v10 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315394;
            v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
            v27 = 1024;
            v28 = 6038;
            _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
          }
        }

        v11 = v16[5];
        v7 = *(v22 + 24);
      }

      _Block_object_dispose(&v15, 8);
      _Block_object_dispose(&v21, 8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

id __81__NSPersistentStoreCoordinator_QueryGenerations___validateQueryGeneration_error___block_invoke(uint64_t a1, void *a2)
{
  result = [-[_NSQueryGenerationToken _storesForRequestRoutingFrom:error:](*(a1 + 32) a2];
  if (!result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF4353C8];
      *(*(*(a1 + 40) + 8) + 40) = result;
    }
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);

    return v4;
  }

  return result;
}

- (BOOL)_refreshTriggerValuesInStore:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  v7 = [a3 _persistentStoreCoordinator];
  if (v7 != self)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided persistent store must be from this coordinator: %@\n%@\n%@", self, v7, a3];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0]);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided persistent store must be of type NSSQLiteStoreType: %@", a3];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0]);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__NSPersistentStoreCoordinator_Triggers___refreshTriggerValuesInStore_error___block_invoke;
  v17[3] = &unk_1E6EC2F08;
  v17[4] = a3;
  v17[5] = &v24;
  v17[6] = &v18;
  [(NSPersistentStoreCoordinator *)self performBlockAndWait:v17];
  v8 = v19[5];
  if ((v25[3] & 1) == 0)
  {
    v12 = v19[5];
    if (v12)
    {
      if (a4)
      {
        *a4 = v12;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v30 = 1024;
        v31 = 6077;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v30 = 1024;
        v31 = 6077;
        _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v9 = *(v25 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

id __77__NSPersistentStoreCoordinator_Triggers___refreshTriggerValuesInStore_error___block_invoke(uint64_t *a1)
{
  *(*(a1[5] + 8) + 24) = [(NSSQLCore *)a1[4] _refreshTriggerValues:?];
  v2 = *(*(a1[6] + 8) + 40);

  return v2;
}

+ (BOOL)removePersistentHistoryFromPersistentStoreAtURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (([a3 isFileURL] & 1) == 0)
  {
    v22 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E696A368];
    if ([a3 path])
    {
      v23 = [a3 path];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
    }

    v31[0] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    objc_exception_throw([v22 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL" userInfo:v24]);
  }

  objc_opt_class();
  objc_opt_class();
  v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v25 = 0;
  v9 = [NSPersistentStoreCoordinator _classForPersistentStoreAtURL:a3];
  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 dropPersistentHistoryforPersistentStoreWithURL:a3 options:a4 error:&v25];
      goto LABEL_15;
    }

    v13 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A368];
    if ([a3 path])
    {
      v14 = [a3 path];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
    }

    v29 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v16 = [v13 errorWithDomain:*MEMORY[0x1E696A250] code:134091 userInfo:v15];
  }

  else
  {
    if (!a5)
    {
      goto LABEL_18;
    }

    v11 = MEMORY[0x1E696ABC0];
    if ([a3 path])
    {
      v12 = [a3 path];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
    }

    v27 = v12;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v11 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v17];
  }

  v10 = 0;
  v25 = v16;
LABEL_15:
  if (!a5 || (v10 & 1) != 0)
  {
    goto LABEL_19;
  }

  v18 = v25;
LABEL_18:
  v10 = 0;
LABEL_19:
  [v8 drain];
  if (a5)
  {
    v19 = v10;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    *a5 = v25;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_setXPCBundleIdentifier:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();

    *(a1 + 80) = [a2 copy];

    os_unfair_lock_unlock((a1 + 32));
  }
}

- (void)_setXPCProcessName:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();

    *(a1 + 88) = [a2 copy];

    os_unfair_lock_unlock((a1 + 32));
  }
}

- (id)_xpcBundleIdentifier
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock_with_options();
    v2 = *(v1 + 10);
    os_unfair_lock_unlock(v1 + 8);

    return v2;
  }

  return result;
}

- (id)_xpcProcessName
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock_with_options();
    v2 = *(v1 + 11);
    os_unfair_lock_unlock(v1 + 8);

    return v2;
  }

  return result;
}

id __113__NSPersistentStoreCoordinator_DeferredLightweightMigration___finishDeferredLightweightMigrationTasks_withError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) persistentStores];
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v8 + 1) + 8 * v6) finishDeferredLightweightMigration:*(a1 + 56) withError:*(*(a1 + 40) + 8) + 40] & 1) == 0)
        {
          *(*(*(a1 + 48) + 8) + 24) = 0;
          result = *(*(*(a1 + 40) + 8) + 40);
          goto LABEL_11;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_handleFaultingError:(uint64_t)a3 fromContext:
{
  if (result)
  {
    v5 = [result delegate];
    if (v5 && (v6 = v5, (objc_opt_respondsToSelector() & 1) != 0))
    {

      return [v6 handleFaultingError:a2 fromContext:a3];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

@end