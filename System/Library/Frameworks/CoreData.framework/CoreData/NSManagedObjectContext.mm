@interface NSManagedObjectContext
+ (id)createFutureForFileAtURL:(id)l;
+ (uint64_t)_handleError:(uint64_t *)error withError:;
+ (void)_mergeChangesFromRemoteContextSave:(void *)save intoContexts:(uint64_t)contexts withClientQueryGeneration:;
+ (void)initialize;
- (BOOL)_attemptCoalesceChangesForFetch;
- (BOOL)_parentObtainPermanentIDsForObjects:(id)objects context:(id)context error:(id *)error;
- (BOOL)_performImmediate:(id)immediate;
- (BOOL)_setChangeTrackingTokenFromToken:(id)token error:(id *)error;
- (BOOL)_setQueryGenerationFromToken:(id)token error:(id *)error;
- (BOOL)_updateLocationsOfObjectsToLocationByOrderKey:(id)key inRelationshipWithName:(id)name onObjectWithID:(id)d error:(id *)error;
- (BOOL)automaticallyMergesChangesFromParent;
- (BOOL)commitEditing;
- (BOOL)commitEditingAndReturnError:(id *)error;
- (BOOL)evictFuture:(id)future withError:(id *)error;
- (BOOL)hasChanges;
- (BOOL)obtainPermanentIDsForObjects:(NSArray *)objects error:(NSError *)error;
- (BOOL)propagatesDeletesAtEndOfEvent;
- (BOOL)retainsRegisteredObjects;
- (BOOL)save:(NSError *)error;
- (BOOL)setQueryGenerationFromToken:(NSQueryGenerationToken *)generation error:(NSError *)error;
- (BOOL)shouldDeleteInaccessibleFaults;
- (BOOL)shouldPerformSecureOperation;
- (BOOL)shouldRefreshAfterSave;
- (BOOL)trackSQLiteDatabaseStatistics;
- (BOOL)tryLock;
- (NSArray)executeFetchRequest:(NSFetchRequest *)request error:(NSError *)error;
- (NSManagedObject)existingObjectWithID:(NSManagedObjectID *)objectID error:(NSError *)error;
- (NSManagedObject)objectRegisteredForID:(NSManagedObjectID *)objectID;
- (NSManagedObject)objectWithID:(NSManagedObjectID *)objectID;
- (NSManagedObjectContext)init;
- (NSManagedObjectContext)initWithCoder:(id)coder;
- (NSManagedObjectContext)initWithConcurrencyType:(NSManagedObjectContextConcurrencyType)ct;
- (NSManagedObjectContext)parentContext;
- (NSManagedObjectContextConcurrencyType)concurrencyType;
- (NSMutableDictionary)userInfo;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (NSPersistentStoreResult)executeRequest:(NSPersistentStoreRequest *)request error:(NSError *)error;
- (NSQueryGenerationToken)queryGenerationToken;
- (NSSaveChangesRequest)_newSaveRequestForCurrentState;
- (NSSet)deletedObjects;
- (NSSet)insertedObjects;
- (NSSet)registeredObjects;
- (NSSet)updatedObjects;
- (NSString)name;
- (NSString)transactionAuthor;
- (NSUInteger)countForFetchRequest:(NSFetchRequest *)request error:(NSError *)error;
- (NSUndoManager)undoManager;
- (id)_allOrderKeysForDestination:(id)destination inRelationship:(id)relationship error:(id *)error;
- (id)_changeTrackingToken__;
- (id)_createStoreFetchRequestForFetchRequest:(id *)request;
- (id)_newOrderedRelationshipInformationForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)_orderKeysForRelationshipWithName__:(id)name__ onObjectWithID:(id)d;
- (id)_orderedSetWithResultsFromFetchRequest:(id)request;
- (id)_queryGenerationToken__;
- (id)_retainedCurrentQueryGeneration:(id)generation;
- (id)_retainedObjectWithID:(void *)d optionalHandler:(void *)handler withInlineStorage:(uint64_t)storage;
- (id)_retainedObjectsFromRemovedStore:(id)store;
- (id)databaseStatistics;
- (id)description;
- (id)executeRequest:(id)request withContext:(id)context error:(id *)error;
- (id)mergePolicy;
- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)performBlockWithResult:(id)result;
- (int64x2_t)_updateDatabaseStaticsWithCacheStats:(uint64_t)stats;
- (uint64_t)_addObjectIDsInsertUpdatedByDATriggers:(uint64_t)result;
- (uint64_t)_addObjectIDsUpdatedByDATriggers:(uint64_t)result;
- (uint64_t)_addObjectIDsUpdatedByTriggers:(uint64_t)result;
- (uint64_t)_batchRetainedObjects:(uint64_t)objects forCount:(uint64_t)count withIDs:(uint64_t)ds optionalHandler:(id *)handler withInlineStorage:(uint64_t)storage;
- (uint64_t)_changeIDsForManagedObjects:(void *)objects toIDs:;
- (uint64_t)_checkObjectForExistenceAndCacheRow:(uint64_t)row;
- (uint64_t)_clearDeletions;
- (uint64_t)_clearInsertions;
- (uint64_t)_clearUnprocessedDeletions;
- (uint64_t)_clearUnprocessedInsertions;
- (uint64_t)_clearUnprocessedUpdates;
- (uint64_t)_clearUpdates;
- (uint64_t)_committedSnapshotForObject:(uint64_t)result;
- (uint64_t)_countForFetchRequest_:(id *)request_ error:;
- (uint64_t)_countWithNoChangesForRequest:(id *)request error:;
- (uint64_t)_dispose:(uint64_t)result;
- (uint64_t)_enqueueEndOfEventNotification;
- (uint64_t)_generateOptLockExceptionForConstraintFailure:(uint64_t)result;
- (uint64_t)_handleError:(uint64_t *)error withError:;
- (uint64_t)_implicitObservationInfoForEntity:(void *)entity forResultingClass:;
- (uint64_t)_initWithParentObjectStore:(void *)store;
- (uint64_t)_mergeRefreshEpilogueForObject:(uint64_t)object mergeChanges:;
- (uint64_t)_mergeRefreshObject:(char)object mergeChanges:(NSKnownKeysDictionary *)changes withPersistentSnapshot:;
- (uint64_t)_parentProcessSaveRequest:(uint64_t)result inContext:(void *)context error:;
- (uint64_t)_postContextDidSaveNotificationWithUserInfo:(uint64_t)info;
- (uint64_t)_postObjectsDidChangeNotificationWithUserInfo:(uint64_t)result;
- (uint64_t)_prepareForPushChanges:(uint64_t)changes;
- (uint64_t)_processPendingDeletions:(void *)deletions withInsertions:(void *)insertions withUpdates:withNewlyForgottenList:withRemovedChangedObjects:;
- (uint64_t)_processRecentChanges:(uint64_t)changes;
- (uint64_t)_registerClearStateWithUndoManager;
- (uint64_t)_registerForNotificationsWithCoordinator:(uint64_t)result;
- (uint64_t)_registerUndoForOperation:(void *)operation withObjects:(uint64_t)objects withExtraArguments:;
- (uint64_t)_retainedRegisteredObjects;
- (uint64_t)_sendCommitEditingSelectorToTarget:(uint64_t)target sender:(uint64_t)sender selector:(char)selector flag:(uint64_t)flag contextInfo:(int)info delayed:;
- (uint64_t)_setPersistentStoreCoordinator:(uint64_t)result;
- (uint64_t)_startObservingUndoManagerNotifications;
- (uint64_t)_stopObservingUndoManagerNotifications;
- (uint64_t)_validateObjects:(int)objects forOperation:(uint64_t *)operation error:(int)error exhaustive:(int)exhaustive forSave:;
- (uint64_t)lockObjectStore;
- (uint64_t)unlockObjectStore;
- (unsigned)_setParentContext:(unsigned __int8 *)result;
- (void)_PFAutoreleasePoolReferenceQueueTrampoline;
- (void)_advanceQueryGenerationForSave;
- (void)_automaticallyMergeChangesFromContextDidSaveNotification:(id)notification;
- (void)_clearChangedThisTransaction:(id)transaction;
- (void)_clearOriginalSnapshotAndInitializeRec:(void *)result;
- (void)_copyChildObject:(uint64_t)object toParentObject:(_BYTE *)parentObject fromChildContext:(void *)context;
- (void)_coreMergeChangesFromDidSaveDictionary:(int)dictionary usingObjectIDs:(uint64_t)ds withClientQueryGeneration:;
- (void)_createAndPostChangeNotification:(void *)notification deletions:(void *)deletions updates:(void *)updates refreshes:(void *)refreshes deferrals:(int)deferrals wasMerge:;
- (void)_dealloc__;
- (void)_didSaveChanges;
- (void)_establishEventSnapshotsForObject:(uint64_t)object;
- (void)_forceInsertionForObject:(id)object;
- (void)_forceMoveInsertToUpdatedList:(uint64_t)list;
- (void)_forceRegisterLostFault:(uint64_t)fault;
- (void)_forgetObject:(id)object propagateToObjectStore:(BOOL)store removeFromRegistry:(BOOL)registry;
- (void)_informParentStoreNoLongerInterestedInObjectIDs:(uint64_t)ds generation:;
- (void)_insertObjectWithGlobalID:(void *)d globalID:;
- (void)_managedObjectContextEditor:(id)editor didCommit:(BOOL)commit contextInfo:(id *)info;
- (void)_mergeChangesFromRemoteContextSave:(id)save;
- (void)_mergeChangesFromRemoteContextSave:(id)save presupposingQueryGeneration:(id)generation;
- (void)_newUnchangedLockedObjects;
- (void)_persistentStoreDidUpdateAdditionalRows:(void *)rows;
- (void)_postRefreshedObjectsNotificationAndClearList;
- (void)_prepareUnprocessedDeletionAfterRefresh:(_DWORD *)refresh;
- (void)_processChangedStoreConfigurationNotification:(id)notification;
- (void)_processPendingInsertions:(id *)insertions withDeletions:(void *)deletions withUpdates:(void *)updates;
- (void)_processPendingUpdates:(uint64_t)updates;
- (void)_processRecentlyForgottenObjects:(void *)objects;
- (void)_processReferenceQueue:(uint64_t)queue;
- (void)_refaultObject:(id *)object globalID:(uint64_t)d BOOLean:(int)lean;
- (void)_registerAsyncReferenceCallback;
- (void)_registerObject:(void *)object withID:;
- (void)_resetAllChanges;
- (void)_setAllowAncillaryEntities:(BOOL)entities;
- (void)_setAllowsExpandedUserInfoKeys:(BOOL)keys;
- (void)_setDisableDiscardEditing:(BOOL)editing;
- (void)_setFaultingError:(id)error;
- (void)_setRetainsRegisteredObjects:(uint64_t)objects;
- (void)_setUndoManager:(uint64_t)manager;
- (void)_stopConflictDetectionForObject:(id)object;
- (void)_storeConfigurationChanged:(id)changed;
- (void)_thereIsNoSadnessLikeTheDeathOfOptimism;
- (void)_undoDeletions:(id)deletions;
- (void)_undoDeletionsMovedToUpdates:(id)updates;
- (void)_undoInsertions:(id)insertions;
- (void)_undoManagerCheckpoint:(id)checkpoint;
- (void)_undoUpdates:(id)updates;
- (void)_unlimitRequest:(void *)request;
- (void)_youcreatedanNSManagedObjectContextOnthemainthreadandillegallypassedittoabackgroundthread;
- (void)assignObject:(id)object toPersistentStore:(NSPersistentStore *)store;
- (void)commitEditingWithDelegate:(id)delegate didCommitSelector:(SEL)selector contextInfo:(void *)info;
- (void)dealloc;
- (void)deleteObject:(NSManagedObject *)object;
- (void)detectConflictsForObject:(NSManagedObject *)object;
- (void)discardEditing;
- (void)encodeWithCoder:(id)coder;
- (void)insertObject:(NSManagedObject *)object;
- (void)lock;
- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)ds generation:(id)generation;
- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)ds generation:(id)generation;
- (void)mergeChangesFromContextDidSaveNotification:(NSNotification *)notification;
- (void)objectDidBeginEditing:(id)editing;
- (void)objectDidEndEditing:(id)editing;
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context;
- (void)performBlock:(void *)block;
- (void)performBlockAndWait:(void *)block;
- (void)performWithOptions:(unint64_t)options andBlock:(id)block;
- (void)processPendingChanges;
- (void)redo;
- (void)refreshAllObjects;
- (void)reset;
- (void)rollback;
- (void)setAutomaticallyMergesChangesFromParent:(BOOL)automaticallyMergesChangesFromParent;
- (void)setMergePolicy:(id)mergePolicy;
- (void)setName:(NSString *)name;
- (void)setParentContext:(NSManagedObjectContext *)parentContext;
- (void)setPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)persistentStoreCoordinator;
- (void)setPropagatesDeletesAtEndOfEvent:(BOOL)propagatesDeletesAtEndOfEvent;
- (void)setRetainsRegisteredObjects:(BOOL)retainsRegisteredObjects;
- (void)setShouldDeleteInaccessibleFaults:(BOOL)shouldDeleteInaccessibleFaults;
- (void)setShouldPerformSecureOperation:(BOOL)operation;
- (void)setShouldRefreshAfterSave:(BOOL)save;
- (void)setStalenessInterval:(NSTimeInterval)stalenessInterval;
- (void)setTrackSQLiteDatabaseStatistics:(BOOL)statistics;
- (void)setTransactionAuthor:(NSString *)transactionAuthor;
- (void)setUndoManager:(NSUndoManager *)undoManager;
- (void)set_isSwiftBound:(BOOL)bound;
- (void)undo;
- (void)unlock;
@end

@implementation NSManagedObjectContext

- (BOOL)hasChanges
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*(&self->_flags + 1) >> 2) & 1;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  v2 = atomic_load(&self->_isParentStoreContext);
  result = self->_parentObjectStore;
  if (v2)
  {
    return [(NSPersistentStoreCoordinator *)result persistentStoreCoordinator];
  }

  return result;
}

- (void)_PFAutoreleasePoolReferenceQueueTrampoline
{
  if (val)
  {
    if (val[3])
    {
      v1 = _MergedGlobals_73 == 0;
    }

    else
    {
      v1 = 1;
    }

    if (!v1)
    {
      objc_initWeak(&location, val);
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = __68__NSManagedObjectContext__PFAutoreleasePoolReferenceQueueTrampoline__block_invoke;
      v2[3] = &unk_1E6EC23A0;
      objc_copyWeak(&v3, &location);
      [_PFAutoreleasePoolThunk thunkWithBlock:v2];
      objc_destroyWeak(&v3);
      objc_destroyWeak(&location);
    }
  }
}

- (uint64_t)lockObjectStore
{
  if (result && _PF_Threading_Debugging_level)
  {
    v1 = result;
    if (*(result + 24))
    {
      result = _PFAssertSafeMultiThreadedAccess_impl(result, sel_lockObjectStore);
    }

    else
    {
      result = [*(result + 136) tryLock];
      if ((result & 1) == 0)
      {
        result = objc_opt_self();
        __break(1u);
        return result;
      }
    }

    if (!v1[3])
    {
      if (atomic_load(v1 + 1))
      {
        v3 = *(*(v1[21] + 56) + 32);
        v4 = NSKeyValueCoding_NullValue;

        return [v3 addObject:v4];
      }

      else
      {
        result = _PF_actor_set_owner(0, v1, v1[4]);
        if ((result & 1) == 0 && _PF_Threading_Debugging_level)
        {

          return _PFAssertSafeMultiThreadedAccess_impl(v1, sel_lockObjectStore);
        }
      }
    }
  }

  return result;
}

- (BOOL)_attemptCoalesceChangesForFetch
{
  if (result)
  {
    v1 = result;
    return ![*(result + 64) count] && (!objc_msgSend(*(v1 + 72), "count") || (objc_msgSend(*(v1 + 88), "intersectsSet:", *(v1 + 72)) & 1) == 0);
  }

  return result;
}

- (NSMutableDictionary)userInfo
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  result = *(self->_additionalPrivateIvars + 6);
  if (!result)
  {
    *(self->_additionalPrivateIvars + 6) = objc_alloc_init(MEMORY[0x1E695DF90]);
    return *(self->_additionalPrivateIvars + 6);
  }

  return result;
}

- (id)_queryGenerationToken__
{
  if (self->_parentObjectStore && (v2 = atomic_load(&self->_isParentStoreContext), (v2 & 1) != 0))
  {
    v3 = +[NSQueryGenerationToken unpinnedQueryGenerationToken];
  }

  else
  {
    v3 = *(self->_additionalPrivateIvars + 12);
  }

  v4 = v3;

  return v4;
}

- (uint64_t)_registerClearStateWithUndoManager
{
  if (result)
  {
    v1 = result;
    if ((*(result + 40) & 0x20) == 0)
    {
      v2 = [MEMORY[0x1E696AD98] numberWithShort:*(result + 44)];
      result = *(*(v1 + 168) + 40);
      if (result)
      {
        if (([result groupsByEvent] & 1) == 0 && (objc_msgSend(*(*(v1 + 168) + 40), "isUndoing") & 1) == 0 && (objc_msgSend(*(*(v1 + 168) + 40), "isRedoing") & 1) == 0)
        {
          *(v1 + 40) |= 0x800u;
          [*(*(v1 + 168) + 40) beginUndoGrouping];
          *(v1 + 40) &= ~0x800u;
        }

        v3 = [*(v1 + 96) copy];
        v4 = [MEMORY[0x1E695DF70] arrayWithObjects:{v2, v3, 0}];

        result = [*(*(v1 + 168) + 40) registerUndoWithTarget:v1 selector:sel__clearChangedThisTransaction_ object:v4];
      }

      *(v1 + 40) |= 0x20u;
    }
  }

  return result;
}

- (uint64_t)unlockObjectStore
{
  if (!result || !_PF_Threading_Debugging_level)
  {
    return result;
  }

  v1 = result;
  if (*(result + 24))
  {
    goto LABEL_12;
  }

  if ([*(*(*(result + 168) + 56) + 32) count])
  {
    result = [*(*(v1[21] + 56) + 32) removeLastObject];
  }

  else
  {
    result = _PF_actor_set_owner(v1[4], v1, 0);
    if ((result & 1) == 0 && _PF_Threading_Debugging_level)
    {
      result = _PFAssertSafeMultiThreadedAccess_impl(v1, sel_unlockObjectStore);
    }
  }

  if (v1[3])
  {
    if (!_PF_Threading_Debugging_level)
    {
      return result;
    }

LABEL_12:

    return _PFAssertSafeMultiThreadedAccess_impl(v1, sel_unlockObjectStore);
  }

  v2 = v1[17];

  return [v2 unlock];
}

- (uint64_t)_enqueueEndOfEventNotification
{
  if (result)
  {
    v1 = result;
    if ((*(result + 40) & 9) == 0)
    {
      result = [*(*(result + 168) + 40) groupsByEvent];
      if (result)
      {
        result = [*(*(v1 + 168) + 40) registerUndoWithTarget:v1 selector:sel__noop_ object:NSArray_EmptyArray];
      }

      *(v1 + 40) |= 1u;
    }
  }

  return result;
}

- (NSManagedObjectContextConcurrencyType)concurrencyType
{
  if (!self->_dispatchQueue)
  {
    return 0;
  }

  if ((*(&self->_flags + 2) & 4) != 0)
  {
    return 1;
  }

  return 2;
}

void __90__NSManagedObjectContext__NSInternalNotificationHandling___registerAsyncReferenceCallback__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 8));
    v4 = WeakRetained;
    v5 = *(a1 + 40);
    if (WeakRetained)
    {
      if ((WeakRetained[42] & 2) == 0)
      {
        v6 = objc_autoreleasePoolPush();
        [(_PFManagedObjectReferenceQueue *)v5 _processReferenceQueue:?];
        objc_autoreleasePoolPop(v6);
        if (*(v4 + 3))
        {
          atomic_store(0, v4 + 51);
          __dmb(0xBu);
        }
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 40);
  }

  CFRelease(v5);
}

void __68__NSManagedObjectContext__PFAutoreleasePoolReferenceQueueTrampoline__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(Weak, sel_processPendingChanges);
    }

    [(NSManagedObjectContext *)v2 _processReferenceQueue:?];
  }
}

- (void)discardEditing
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = *(self->_additionalPrivateIvars + 4);
  if (!v3)
  {
    *(self->_additionalPrivateIvars + 4) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v3 = *(self->_additionalPrivateIvars + 4);
  }

  if ((*(&self->_flags + 1) & 0x80) == 0)
  {
    if ([(NSManagedObjectContext *)self isEditing])
    {
      Count = CFArrayGetCount(v3);
      v5 = Count - 1;
      if (Count >= 1)
      {
        do
        {
          [CFArrayGetValueAtIndex(v3 v5--)];
        }

        while (v5 != -1);
      }
    }
  }
}

- (void)_postRefreshedObjectsNotificationAndClearList
{
  if ([*(self + 112) count] || (v2 = *(self + 168), *(v2 + 88)) || *(v2 + 104))
  {
    v3 = objc_autoreleasePoolPush();
    if ([*(self + 112) count])
    {
      v4 = [*(self + 112) copy];
    }

    else
    {
      v4 = 0;
    }

    v5 = *(*(self + 168) + 88);
    [*(self + 112) removeAllObjects];
    *(*(self + 168) + 88) = 0;
    [(NSManagedObjectContext *)self _createAndPostChangeNotification:0 deletions:0 updates:v4 refreshes:v5 deferrals:*(*(self + 168) + 104) != 0 wasMerge:?];

    objc_autoreleasePoolPop(v3);
  }
}

- (void)_registerAsyncReferenceCallback
{
  if (self)
  {
    if (_PF_shouldAsyncProcessReferenceQueue)
    {
      if (*(self + 24))
      {
        if (!*(self + 16) && ([self _isDeallocating] & 1) == 0 && !atomic_fetch_add((self + 51), 1u))
        {
          v2 = *(self + 152);
          if (v2)
          {
            v3 = [[_PFWeakReference alloc] initWithObject:self];
            if (v3)
            {
              v4 = v3;
              CFRetain(v2);
              v5[0] = MEMORY[0x1E69E9820];
              v5[1] = 3221225472;
              v5[2] = __90__NSManagedObjectContext__NSInternalNotificationHandling___registerAsyncReferenceCallback__block_invoke;
              v5[3] = &unk_1E6EC2720;
              v5[4] = v4;
              v5[5] = v2;
              [self performWithOptions:24577 andBlock:v5];
            }
          }
        }
      }
    }
  }
}

- (NSSaveChangesRequest)_newSaveRequestForCurrentState
{
  if (!self)
  {
    return 0;
  }

  if ([*(self + 80) count])
  {
    v2 = *(self + 80);
  }

  else
  {
    v2 = 0;
  }

  if ([*(self + 96) count])
  {
    v3 = *(self + 96);
  }

  else
  {
    v3 = 0;
  }

  if ([*(self + 88) count])
  {
    v4 = *(self + 88);
  }

  else
  {
    v4 = 0;
  }

  if ([*(self + 104) count])
  {
    _newUnchangedLockedObjects = [(NSManagedObjectContext *)self _newUnchangedLockedObjects];
    if ([_newUnchangedLockedObjects count])
    {
      v6 = _newUnchangedLockedObjects;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    _newUnchangedLockedObjects = 0;
  }

  v7 = [[NSSaveChangesRequest alloc] initWithInsertedObjects:v2 updatedObjects:v3 deletedObjects:v4 lockedObjects:v6];
  v8 = v7;
  if (*(self + 43))
  {
    [(NSSaveChangesRequest *)v7 _setSecureOperation:1];
  }

  if (_newUnchangedLockedObjects)
  {
  }

  return v8;
}

- (void)reset
{
  v25 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v24 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [(NSManagedObjectContext *)self discardEditing];
  Count = _PFCMT_GetCount(&self->_infoByGID->super.isa);
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23[1] = v23;
  MEMORY[0x1EEE9AC00]();
  v8 = (v23 - v7);
  if (Count >= 0x201)
  {
    v8 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v23 - v7, 8 * v6);
  }

  v9 = [(_PFContextMapTable *)self->_infoByGID getAllObjects:v8];
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v8[v10];
      objectID = [v12 objectID];
      v14 = v12;
      isTemporaryID = [objectID isTemporaryID];
      if (v12 && !(((*(v12 + 17) & 2) == 0) | isTemporaryID & 1))
      {
        [v4 addObject:objectID];
        *(v12 + 16) &= ~0x200u;
      }

      else if (isTemporaryID)
      {
        [v5 addObject:objectID];
      }

      if (v12)
      {
        v16 = _insertion_fault_handler;
      }

      else
      {
        v16 = 0;
      }

      [(NSFaultHandler *)v16 turnObject:v12 intoFaultWithContext:self];
      [(NSManagedObjectContext *)self _forgetObject:v12 propagateToObjectStore:0 removeFromRegistry:0];

      v10 = v11;
    }

    while (v9 > v11++);
  }

  if (Count >= 0x201)
  {
    NSZoneFree(0, v8);
  }

  _PFCMT_RemoveAllValues(&self->_infoByGID->super.isa);
  [(NSManagedObjectContext *)self _resetAllChanges];
  if ([v4 count])
  {
    [(NSManagedObjectContext *)self lockObjectStore];
    [self->_parentObjectStore managedObjectContextDidUnregisterObjectsWithIDs:v4 generation:{-[NSManagedObjectContext _queryGenerationToken](self, "_queryGenerationToken")}];
    [(NSManagedObjectContext *)self unlockObjectStore];
  }

  if ([v5 count])
  {
    [v5 addObjectsFromArray:v4];
  }

  else
  {

    v5 = v4;
  }

  if (byte_1ED4BEEC6 == 1)
  {
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v5, @"invalidatedAll", +[_PFWeakReference weakReferenceWithObject:](_PFWeakReference, self), @"managedObjectContext", 0}];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v5, @"invalidatedAll", 0}];
  }

  [(NSManagedObjectContext *)self _postObjectsDidChangeNotificationWithUserInfo:v18];
  additionalPrivateIvars = self->_additionalPrivateIvars;
  v20 = additionalPrivateIvars[1];
  if (v20)
  {

    PF_FREE_OBJECT_ARRAY(self->_additionalPrivateIvars[1]);
    *(self->_additionalPrivateIvars + 1) = 0;
    additionalPrivateIvars = self->_additionalPrivateIvars;
  }

  *self->_additionalPrivateIvars = 0;
  *(self->_additionalPrivateIvars + 17) = 0;

  *(self->_additionalPrivateIvars + 18) = 0;
  *(self->_additionalPrivateIvars + 14) = 0;

  *(self->_additionalPrivateIvars + 19) = 0;
  if ([-[NSManagedObjectContext _queryGenerationToken](self "_queryGenerationToken")])
  {
    [(NSManagedObjectContext *)self _setQueryGenerationFromToken:+[NSQueryGenerationToken error:"currentQueryGenerationToken"], 0];
  }

  [v24 drain];
  [(NSManagedObjectContext *)self _processReferenceQueue:?];
  v21 = 0;
  v22 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_clearUnprocessedUpdates
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 56) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 56) getObjects:v6];
  }

  else
  {
    bzero(v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 56) getObjects:v6];
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~1u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

LABEL_17:
  result = [*(self + 56) removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_clearUpdates
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 96) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 96) getObjects:v6];
  }

  else
  {
    bzero(v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 96) getObjects:v6];
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~8u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

LABEL_17:
  result = [*(self + 96) removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_clearUnprocessedInsertions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 72) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 72) getObjects:v6];
  }

  else
  {
    bzero(v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 72) getObjects:v6];
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~2u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

LABEL_17:
  result = [*(self + 72) removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_clearInsertions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 80) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 80) getObjects:v6];
  }

  else
  {
    bzero(v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 80) getObjects:v6];
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~0x10u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

LABEL_17:
  result = [*(self + 80) removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_clearUnprocessedDeletions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 64) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 64) getObjects:v6];
  }

  else
  {
    bzero(v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 64) getObjects:v6];
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~4u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

LABEL_17:
  result = [*(self + 64) removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_clearDeletions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 88) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 88) getObjects:v6];
  }

  else
  {
    bzero(v11 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 88) getObjects:v6];
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~0x20u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

LABEL_17:
  result = [*(self + 88) removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_resetAllChanges
{
  if (result)
  {
    v1 = result;
    [(NSManagedObjectContext *)result _clearUnprocessedUpdates];
    [(NSManagedObjectContext *)v1 _clearUpdates];
    [(NSManagedObjectContext *)v1 _clearUnprocessedInsertions];
    [(NSManagedObjectContext *)v1 _clearInsertions];
    [(NSManagedObjectContext *)v1 _clearUnprocessedDeletions];
    [(NSManagedObjectContext *)v1 _clearDeletions];
    [*(v1 + 104) removeAllObjects];
    [*(v1 + 112) removeAllObjects];
    result = *(*(v1 + 168) + 40);
    if (result)
    {
      result = [result isUndoRegistrationEnabled];
      if (result)
      {
        result = [*(*(v1 + 168) + 40) removeAllActions];
      }
    }

    ++*(v1 + 44);
    v2 = *(v1 + 40);
    *(v1 + 40) = v2 & 0xFFFFFCDF;
    if ((v2 & 0x400) != 0)
    {
      [v1 willChangeValueForKey:@"hasChanges"];
      *(v1 + 40) &= ~0x400u;

      return [v1 didChangeValueForKey:@"hasChanges"];
    }
  }

  return result;
}

- (void)_didSaveChanges
{
  v111 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_111;
  }

  v82 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  v2 = *(*(self + 168) + 136);
  if ([v2 count])
  {
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v102 objects:v110 count:16];
    if (v3)
    {
      v4 = *v103;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v103 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v102 + 1) + 8 * i);
          v7 = [self objectRegisteredForID:{objc_msgSend(v6, "firstObject")}];
          v8 = v7;
          if (v7)
          {
            entity = [v7 entity];
            v10 = [v6 objectAtIndex:1];
            if (entity)
            {
              if ([objc_msgSend(entity "propertiesByName")])
              {
                [v6 lastObject];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  lastObject = 0;
                }

                else
                {
                  lastObject = [v6 lastObject];
                }

                [v8 setValue:lastObject forKey:{objc_msgSend(v6, "objectAtIndex:", 1)}];
              }
            }
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v102 objects:v110 count:16];
      }

      while (v3);
    }

    *(self + 40) &= 0xFFFFFCFF;
  }

  v12 = *(*(self + 168) + 144);
  if ([v12 count])
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v98 objects:v109 count:16];
    if (v13)
    {
      v14 = *v99;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v99 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v98 + 1) + 8 * j);
          v17 = [self objectRegisteredForID:{objc_msgSend(v16, "firstObject")}];
          v18 = v17;
          if (v17)
          {
            entity2 = [v17 entity];
            v20 = [v16 objectAtIndex:1];
            if (entity2)
            {
              if ([objc_msgSend(entity2 "propertiesByName")])
              {
                [v16 lastObject];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  lastObject2 = 0;
                }

                else
                {
                  lastObject2 = [v16 lastObject];
                }

                [v18 setValue:lastObject2 forKey:{objc_msgSend(v16, "objectAtIndex:", 1)}];
              }
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v98 objects:v109 count:16];
      }

      while (v13);
    }

    *(self + 40) &= 0xFFFFFCFF;
  }

  v22 = [*(self + 80) copy];
  v85 = [v22 count];
  v79 = v77;
  MEMORY[0x1EEE9AC00](v85);
  v25 = &v77[-v24];
  if (v26 >= 0x201)
  {
    v84 = NSAllocateScannedUncollectable();
    [*(self + 80) getObjects:v84];
  }

  else
  {
    bzero(&v77[-v24], 8 * v23);
    v27 = *(self + 80);
    v84 = v25;
    [v27 getObjects:v25];
    if (!v85)
    {
      v80 = 1;
      goto LABEL_41;
    }
  }

  v28 = 0;
  do
  {
    v29 = v84[v28];
    [NSManagedObjectContext _clearOriginalSnapshotAndInitializeRec:v29];
    [v29 _setVersionReference__:1];
    ++v28;
  }

  while (v85 != v28);
  v80 = 0;
LABEL_41:
  [v82 setObject:v22 forKey:@"inserted"];

  v30 = [*(self + 96) count];
  v31 = [*(self + 96) copy];
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v77[-v33];
  if (v30 >= 0x201)
  {
    v83 = NSAllocateScannedUncollectable();
    [*(self + 96) getObjects:v83];
  }

  else
  {
    bzero(&v77[-v33], 8 * v32);
    v35 = *(self + 96);
    v83 = v34;
    [v35 getObjects:v34];
    if (!v30)
    {
      v78 = 1;
      goto LABEL_48;
    }
  }

  for (k = 0; k != v30; ++k)
  {
    v37 = v83[k];
    [NSManagedObjectContext _clearOriginalSnapshotAndInitializeRec:v37];
    [v37 _setVersionReference__:{objc_msgSend(v37, "_versionReference") + 1}];
  }

  v78 = 0;
LABEL_48:
  [v82 setObject:v31 forKey:@"updated"];

  v38 = [*(self + 88) count];
  v39 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v77[-v41];
  if (v39 >= 0x201)
  {
    v42 = NSAllocateScannedUncollectable();
LABEL_52:
    v81 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v38];
    [objc_msgSend(*(self + 88) "allObjects")];
    v43 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v42 count:v38];
    [v82 setObject:v43 forKey:@"deleted"];

    v44 = 0;
    do
    {
      [NSManagedObjectContext _clearOriginalSnapshotAndInitializeRec:?];
    }

    while (v38 != v44);
    goto LABEL_54;
  }

  bzero(&v77[-v41], 8 * v40);
  if (v38)
  {
    goto LABEL_52;
  }

  v81 = 0;
LABEL_54:
  [(NSManagedObjectContext *)self _clearInsertions];
  [(NSManagedObjectContext *)self _clearUnprocessedInsertions];
  [(NSManagedObjectContext *)self _clearDeletions];
  [(NSManagedObjectContext *)self _clearUnprocessedDeletions];
  [(NSManagedObjectContext *)self _clearUpdates];
  [(NSManagedObjectContext *)self _clearUnprocessedUpdates];
  v45 = *(self + 40);
  ++*(self + 44);
  *(self + 40) = v45 & 0xFFFFFFDF;
  [*(self + 104) removeAllObjects];
  [*(self + 112) removeAllObjects];

  **(self + 168) = 0;
  if ((*(self + 41) & 4) != 0)
  {
    [self willChangeValueForKey:@"hasChanges"];
    *(self + 40) &= ~0x400u;
    [self didChangeValueForKey:@"hasChanges"];
  }

  v46 = [v82 objectForKey:@"inserted"];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v47 = [v46 countByEnumeratingWithState:&v94 objects:v108 count:16];
  if (v47)
  {
    v48 = *v95;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v95 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v50 = *(*(&v94 + 1) + 8 * m);
        v51 = v50 + 4;
        v50[4] |= 0x10u;
        [v50 didSave];
        *v51 &= ~0x10u;
      }

      v47 = [v46 countByEnumeratingWithState:&v94 objects:v108 count:16];
    }

    while (v47);
  }

  v52 = [v82 objectForKey:@"deleted"];
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v53 = [v52 countByEnumeratingWithState:&v90 objects:v107 count:16];
  if (v53)
  {
    v54 = *v91;
    do
    {
      for (n = 0; n != v53; ++n)
      {
        if (*v91 != v54)
        {
          objc_enumerationMutation(v52);
        }

        v56 = *(*(&v90 + 1) + 8 * n);
        v57 = v56 + 4;
        v56[4] |= 0x20u;
        [v56 didSave];
        *v57 &= ~0x20u;
      }

      v53 = [v52 countByEnumeratingWithState:&v90 objects:v107 count:16];
    }

    while (v53);
  }

  v58 = [v82 objectForKey:@"updated"];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v59 = [v58 countByEnumeratingWithState:&v86 objects:v106 count:16];
  if (v59)
  {
    v60 = *v87;
    do
    {
      for (ii = 0; ii != v59; ++ii)
      {
        if (*v87 != v60)
        {
          objc_enumerationMutation(v58);
        }

        [*(*(&v86 + 1) + 8 * ii) didSave];
      }

      v59 = [v58 countByEnumeratingWithState:&v86 objects:v106 count:16];
    }

    while (v59);
  }

  if ([*(*(self + 168) + 96) _isEnabled])
  {
    v62 = *(*(self + 168) + 96);
    if (v62 != +[NSQueryGenerationToken currentQueryGenerationToken])
    {
      [v82 setValue:*(*(self + 168) + 96) forKey:@"newQueryGeneration"];
    }
  }

  v63 = *(*(self + 168) + 120);
  if (v63)
  {
    [v82 setValue:v63 forKey:@"newChangeToken"];
  }

  if (byte_1ED4BEEC6 == 1)
  {
    v64 = [_PFWeakReference weakReferenceWithObject:self];
    [v82 setValue:v64 forKey:@"managedObjectContext"];
  }

  if (*(self + 42))
  {
    [(NSManagedObjectContext *)self _postContextDidSaveNotificationWithUserInfo:v82];
  }

  if ((v80 & 1) == 0)
  {
    v65 = v84;
    v66 = v85;
    do
    {
      [(NSManagedObject *)*v65++ _nilOutReservedCurrentEventSnapshot__];
      --v66;
    }

    while (v66);
  }

  if (v85 >= 0x201)
  {
    NSZoneFree(0, v84);
  }

  if ((v78 & 1) == 0)
  {
    v67 = v83;
    v68 = v30;
    do
    {
      [(NSManagedObject *)*v67++ _nilOutReservedCurrentEventSnapshot__];
      --v68;
    }

    while (v68);
  }

  if (v30 >= 0x201)
  {
    NSZoneFree(0, v83);
  }

  if (v38)
  {
    for (jj = 0; jj != v38; ++jj)
    {
      v70 = *&v42[8 * jj];
      objectID = [v70 objectID];
      if (v70)
      {
        if ((v70[17] & 2) != 0)
        {
          v72 = objectID;
          if (([objectID isTemporaryID] & 1) == 0)
          {
            [v81 addObject:v72];
          }
        }
      }

      if (v70)
      {
        v73 = _insertion_fault_handler;
      }

      else
      {
        v73 = 0;
      }

      [(NSFaultHandler *)v73 turnObject:v70 intoFaultWithContext:self];
      [self _forgetObject:v70 propagateToObjectStore:0 removeFromRegistry:1];
    }

    if (v38 >= 0x201)
    {
      NSZoneFree(0, v42);
    }
  }

  if ([v81 count])
  {
    [(NSManagedObjectContext *)self lockObjectStore];
    v74 = *(self + 32);
    _queryGenerationToken = [self _queryGenerationToken];
    [v74 managedObjectContextDidUnregisterObjectsWithIDs:v81 generation:_queryGenerationToken];
    [(NSManagedObjectContext *)self unlockObjectStore];
  }

LABEL_111:
  v76 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  MEMORY[0x1865FAAC0](self, a2);
  if (self->_dispatchQueue)
  {
    v3 = atomic_load(&self->_isMainThreadBlessed);
    if ((v3 & 1) != 0 && _PFIsSerializedWithMainQueue())
    {
      wasDisposed = self->_wasDisposed;
      [(NSManagedObjectContext *)self _dealloc__];
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = *(StatusReg + 712);
      if (v6 == self)
      {
        *(StatusReg + 712) = 0;
      }

      else
      {
        if (v6)
        {
          v7 = atomic_load((v6 + 8));
        }

        else
        {
          v7 = 0;
        }

        if (v7 == self)
        {
          _PF_actor_set_owner(v7, v6, 0);
        }
      }

      do
      {
        v15 = atomic_load(&self->_queueOwner);
      }

      while (!_PF_actor_set_owner(v15, self, 0));
      __dmb(0xBu);
      if (!wasDisposed)
      {
        objc_destructInstance(self);
        v16 = dispatch_time(0, 3000000000);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __33__NSManagedObjectContext_dealloc__block_invoke;
        v17[3] = &__block_descriptor_40_e5_v8__0l;
        v17[4] = self;
        dispatch_after(v16, MEMORY[0x1E69E96A0], v17);
      }
    }

    else
    {
      dispatchQueue = self->_dispatchQueue;
      v9 = self->_wasDisposed;
      dispatch_retain(dispatchQueue);
      MEMORY[0x1865FAAC0]();
      v10 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = *(v10 + 712);
      if (v11 == self)
      {
        *(v10 + 712) = 0;
      }

      else
      {
        if (v11)
        {
          v12 = atomic_load((v11 + 8));
        }

        else
        {
          v12 = 0;
        }

        if (v12 == self)
        {
          _PF_actor_set_owner(v12, v11, 0);
        }
      }

      do
      {
        v13 = atomic_load(&self->_queueOwner);
      }

      while (!_PF_actor_set_owner(v13, self, 0));
      __dmb(0xBu);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __internalBlockToDeallocNSManagedObjectContext_block_invoke;
      aBlock[3] = &unk_1E6EC26D8;
      v19 = v9;
      aBlock[4] = dispatchQueue;
      aBlock[5] = self;
      v14 = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
      *v14 = _Block_copy(aBlock);
      v14[1] = self;
      v14[2] = 12289;
      v14[3] = 0;
      dispatch_async_f(dispatchQueue, v14, developerSubmittedBlockToNSManagedObjectContextPerform);
    }
  }

  else
  {

    [(NSManagedObjectContext *)self _dealloc__];
  }
}

- (void)_dealloc__
{
  if (!self)
  {
    return;
  }

  if (!*(self + 168))
  {
    *(self + 168) = PF_CALLOC_OBJECT_ARRAY(22);
    if (!*(self + 136))
    {
      v2 = 0x1E696AE68;
      if (_PF_Threading_Debugging_level <= 0)
      {
        v2 = off_1E6EC0C58;
      }

      *(self + 136) = objc_alloc_init(*v2);
    }

    if (!_PF_Threading_Debugging_level)
    {
      goto LABEL_11;
    }

    v12 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v12 = malloc_default_zone();
    }

    *(*(self + 168) + 56) = malloc_type_zone_malloc(v12, 0x30uLL, 0x80040B8603338uLL);
    v13 = pthread_self();
    **(*(self + 168) + 56) = v13;
    *(*(*(self + 168) + 56) + 8) = v13;
    *(*(*(self + 168) + 56) + 16) = 0;
    *(*(*(self + 168) + 56) + 24) = 0;
    *(*(*(self + 168) + 56) + 32) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(*(*(self + 168) + 56) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = atomic_load((self + 49));
    if ((v14 & 1) == 0)
    {
      currentQueue = [MEMORY[0x1E696ADC8] currentQueue];
      if ([currentQueue maxConcurrentOperationCount] == 1)
      {
        v16 = currentQueue;
      }

      else
      {
        v16 = 0;
      }

      *(*(*(self + 168) + 56) + 16) = v16;
      current_queue = dispatch_get_current_queue();
      if (current_queue == dispatch_get_global_queue(0, 0))
      {
        v18 = 0;
      }

      else
      {
        v18 = current_queue;
      }

      *(*(*(self + 168) + 56) + 24) = v18;
    }
  }

  if (_PF_Threading_Debugging_level)
  {
    *(*(*(self + 168) + 56) + 8) = pthread_self();
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, sel__dealloc__);
    }
  }

LABEL_11:
  v3 = *(self + 24);
  if (!v3 || (v4 = atomic_load((self + 49)), (v4 & 1) != 0))
  {
    [(_PFManagedObjectReferenceQueue *)*(self + 152) _unregisterRunloopObservers];
  }

  if ((*(self + 41) & 4) != 0)
  {
    [self willChangeValueForKey:@"hasChanges"];
    *(self + 40) &= ~0x400u;
    [self didChangeValueForKey:@"hasChanges"];
  }

  if (*(self + 16))
  {
    v5 = *(self + 168);
    if (v5)
    {
      if (v5[7])
      {
        PF_FREE_OBJECT_ARRAY(v5[7]);
        *(*(self + 168) + 56) = 0;
        v5 = *(self + 168);
      }

      PF_FREE_OBJECT_ARRAY(v5);
      *(self + 168) = 0;
    }

    v6 = *(self + 136);
    if (v6)
    {

      *(self + 136) = 0;
    }
  }

  else
  {
    *(self + 16) = 1;
    if (*(self + 168))
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [(NSManagedObjectContext *)self _stopObservingUndoManagerNotifications];

      *(*(self + 168) + 40) = 0;
      persistentStoreCoordinator = [self persistentStoreCoordinator];
      if (persistentStoreCoordinator)
      {
        [defaultCenter removeObserver:self name:@"_NSPersistentStoreCoordinatorStoresDidChangePrivateNotification" object:persistentStoreCoordinator];
      }

      if ((*(self + 42) & 0x40) != 0 && *(self + 32))
      {
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }
    }

    v9 = *(*(self + 168) + 72);
    if (v9)
    {

      *(*(self + 168) + 72) = 0;
    }

    Count = _PFCMT_GetCount(*(self + 120));
    if (v3 || Count < 0x12C)
    {
      [NSManagedObjectContext _dispose:self];
      if (!v3)
      {

        _PFDeallocateObject(self);
      }
    }

    else
    {
      v11 = [[_PFTask alloc] initWithFunction:_deallocateContextBackgroundThread withArgument:self andPriority:0];
      if (v11)
      {
      }
    }
  }
}

- (uint64_t)_stopObservingUndoManagerNotifications
{
  if (*(*(result + 168) + 40))
  {
    v1 = result;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:v1 name:*MEMORY[0x1E696AA10] object:*(*(v1 + 168) + 40)];
    v3 = *(*(v1 + 168) + 40);

    return [v3 removeAllActionsWithTarget:v1];
  }

  return result;
}

- (void)processPendingChanges
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  [(NSManagedObjectContext *)self _processRecentChanges:?];
}

+ (void)initialize
{
  objc_opt_self();
  objc_opt_class();
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    objc_opt_self();
    qword_1ED4BEA30 = @"ImplicitObservation";
    objc_opt_class();
    _PF_Threading_Debugging_level = [_PFRoutines integerValueForOverride:?];
    if (byte_1ED4BEEC7 == 1)
    {
      v3 = getprogname();
      if (!strcmp("MobileNotes", v3))
      {
        _PF_Threading_Debugging_level = 1;
      }
    }

    v4 = [_PFRoutines stringValueForOverride:?];
    if ([v4 length])
    {
      intValue = [v4 intValue];
    }

    else
    {
      intValue = -1;
    }

    v6 = [_PFRoutines stringValueForOverride:?];
    if ([v6 length])
    {
      intValue2 = [v6 intValue];
    }

    else
    {
      intValue2 = -1;
    }

    if ((intValue & 0x80000000) == 0)
    {
      _pflogging_enable_oslog = intValue;
    }

    if ((intValue2 & 0x80000000) == 0)
    {
      _pflogging_enable_stderr = intValue2;
    }

    byte_1ED4BEA2A = HIBYTE(dword_1ED4BEEC0);
    _PF_shouldAsyncProcessReferenceQueue = BYTE2(dword_1ED4BEEC0);
    _MergedGlobals_73 = dword_1ED4BEEC8;
    byte_1ED4BEA29 = [_PFRoutines insecureBoolValueForOverride:?];
    v8 = getprogname();
    if (v8)
    {
      v9 = v8;
      if (*v8)
      {
        if (!strncmp("CommCenter", v8, 0xAuLL))
        {
          _PF_Threading_Debugging_level = 0;
        }

        if (!strncmp("SpringBoard", v9, 0xBuLL))
        {
          _PF_Threading_Debugging_level = 0;
        }

        if (_PF_USE_IOS_PLATFORM == 1 && !strncmp("News", v9, 4uLL))
        {
          byte_1ED4BEA2B = 1;
        }

        if (!strncmp("assetsd", v9, 7uLL) || !strncmp("photolibraryd", v9, 0xDuLL))
        {
          _PF_shouldAsyncProcessReferenceQueue = 1;
          byte_1ED4BEA2C = 1;
        }

        if (!strncmp("xctest", v9, 6uLL))
        {
          _PF_shouldAsyncProcessReferenceQueue = 1;
          byte_1ED4BEA2A = 1;
        }

        if (!strncmp("accountsd", v9, 9uLL))
        {
          _PF_shouldAsyncProcessReferenceQueue = 0;
          byte_1ED4BEA2C = 1;
        }

        if (!strncmp("CalendarAgent", v9, 0xDuLL))
        {
          byte_1ED4BEA2C = 1;
        }

        if (!strncmp("soagent", v9, 7uLL))
        {
          byte_1ED4BEA2C = 1;
        }

        if (!strncmp("Music", v9, 5uLL))
        {
          byte_1ED4BEA2A = 0;
          _MergedGlobals_73 = 0;
        }

        if (!strncmp("Radio", v9, 5uLL))
        {
          byte_1ED4BEA2A = 0;
          _MergedGlobals_73 = 0;
        }

        if (!strncmp("Podcasts", v9, 8uLL))
        {
          _MergedGlobals_73 = 0;
        }
      }
    }

    if (!byte_1ED4BEA2A)
    {
      _MergedGlobals_73 = 0;
    }

    if (_PF_Threading_Debugging_level >= 1)
    {
      v10 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Core Data multi-threading assertions enabled.\n", buf, 2u);
          }
        }

        else
        {
          v12 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *v14 = 0;
            _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Core Data multi-threading assertions enabled.\n", v14, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v13 = 1;
      }

      else
      {
        v13 = 4;
      }

      _NSCoreDataLog_console(v13, "Core Data multi-threading assertions enabled.");
      objc_autoreleasePoolPop(v10);
    }
  }
}

- (NSManagedObjectContext)init
{
  objc_opt_class();

  return [(NSManagedObjectContext *)self initWithConcurrencyType:0];
}

- (BOOL)automaticallyMergesChangesFromParent
{
  if (self->_dispatchQueue)
  {
    return (*(&self->_flags + 2) >> 6) & 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (NSManagedObjectContext)parentContext
{
  v2 = atomic_load(&self->_isParentStoreContext);
  if (v2)
  {
    return self->_parentObjectStore;
  }

  else
  {
    return 0;
  }
}

id __46__NSManagedObjectContext_queryGenerationToken__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queryGenerationToken];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSQueryGenerationToken)queryGenerationToken
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __46__NSManagedObjectContext_queryGenerationToken__block_invoke;
  v9 = &unk_1E6EC1860;
  selfCopy = self;
  v11 = &v12;
  if (self->_dispatchQueue)
  {
    [(NSManagedObjectContext *)self performBlockAndWait:&v6];
  }

  else
  {
    *(v11[1] + 40) = [(NSManagedObjectContext *)self _queryGenerationToken:v6];
  }

  _isEnabled = [v13[5] _isEnabled];
  v3 = v13[5];
  if ((_isEnabled & 1) == 0)
  {

    v3 = 0;
    v13[5] = 0;
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  return v4;
}

- (id)mergePolicy
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return *(self->_additionalPrivateIvars + 3);
}

- (id)description
{
  v3 = [self->_additionalPrivateIvars[21] copy];
  if (v3)
  {
    v6.receiver = self;
    v6.super_class = NSManagedObjectContext;
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", -[NSManagedObjectContext description](&v6, sel_description), v3];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NSManagedObjectContext;
    return [(NSManagedObjectContext *)&v5 description];
  }
}

- (void)rollback
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  [(NSManagedObjectContext *)self discardEditing];
  propagatesDeletesAtEndOfEvent = [(NSManagedObjectContext *)self propagatesDeletesAtEndOfEvent];
  [(NSManagedObjectContext *)self setPropagatesDeletesAtEndOfEvent:0];
  [(NSManagedObjectContext *)self processPendingChanges];

  *self->_additionalPrivateIvars = 0;
  if ([(NSMutableSet *)self->_changedObjects count]|| [(NSMutableSet *)self->_insertedObjects count]|| [(NSMutableSet *)self->_deletedObjects count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_changedObjects];
    [v6 unionSet:self->_deletedObjects];
    v7 = [v6 count];
    v8 = v7;
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    if (v7 >= 0x201)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v11 = v28 - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7 >= 0x201)
    {
      v11 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v28 - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v9);
    }

    [v6 getObjects:v11];
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v13 = *&v11[8 * i];
        v14 = [(NSManagedObjectContext *)self _committedSnapshotForObject:v13];
        if (v14)
        {
          [(NSManagedObject *)v13 _updateFromSnapshot:v14];
          [v13 awakeFromSnapshotEvents:16];
        }
      }

      if (v8 >= 0x201)
      {
        NSZoneFree(0, v11);
      }
    }

    allObjects = [(NSMutableSet *)self->_changedObjects allObjects];
    allObjects2 = [(NSMutableSet *)self->_insertedObjects allObjects];
    v17 = [allObjects2 count];
    if (v17)
    {
      for (j = 0; j != v17; ++j)
      {
        -[NSManagedObjectContext deleteObject:](self, "deleteObject:", [allObjects2 objectAtIndex:j]);
      }
    }

    allObjects3 = [(NSMutableSet *)self->_deletedObjects allObjects];
    v20 = [allObjects3 count];
    if (v20)
    {
      for (k = 0; k != v20; ++k)
      {
        -[NSManagedObjectContext insertObject:](self, "insertObject:", [allObjects3 objectAtIndex:k]);
      }
    }

    if ([allObjects count])
    {
      v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:allObjects];
      [v5 setObject:v22 forKey:@"updated"];
    }

    if ([allObjects2 count])
    {
      v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:allObjects2];
      [v5 setObject:v23 forKey:@"deleted"];
    }

    if ([allObjects3 count])
    {
      v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:allObjects3];
      [v5 setObject:v24 forKey:@"inserted"];
    }

    v25 = 0;
    if ([v5 count])
    {
      if (byte_1ED4BEEC6 == 1)
      {
        [v5 setObject:+[_PFWeakReference weakReferenceWithObject:](_PFWeakReference forKey:{self), @"managedObjectContext"}];
      }

      [(NSManagedObjectContext *)self _postObjectsDidChangeNotificationWithUserInfo:v5];
    }

    [v4 drain];
    [(NSManagedObjectContext *)self processPendingChanges];
    [(NSManagedObjectContext *)self _resetAllChanges];
    [(NSManagedObjectContext *)self setPropagatesDeletesAtEndOfEvent:propagatesDeletesAtEndOfEvent];
    v26 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v27 = *MEMORY[0x1E69E9840];

    [(NSManagedObjectContext *)self setPropagatesDeletesAtEndOfEvent:propagatesDeletesAtEndOfEvent];
  }
}

- (BOOL)propagatesDeletesAtEndOfEvent
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*&self->_flags >> 1) & 1;
}

- (NSString)transactionAuthor
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__13;
  v14 = __Block_byref_object_dispose__13;
  v15 = 0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __43__NSManagedObjectContext_transactionAuthor__block_invoke;
  v7 = &unk_1E6EC1860;
  selfCopy = self;
  v9 = &v10;
  if (self->_dispatchQueue)
  {
    [(NSManagedObjectContext *)self performBlockAndWait:&v4];
  }

  else
  {
    *(v9[1] + 40) = [self->_additionalPrivateIvars[16] copy];
  }

  v2 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v2;
}

uint64_t __43__NSManagedObjectContext_transactionAuthor__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 168) + 128) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)unlock
{
  if (!self->_dispatchQueue)
  {
    lockCount = self->_lockCount;
    if (lockCount >= 1)
    {
      self->_lockCount = --lockCount;
    }

    if (_PF_Threading_Debugging_level)
    {
      v3 = *(self->_additionalPrivateIvars + 7);
      if (v3)
      {
        v4 = lockCount == 0;
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        v3[1] = *v3;
      }
    }

    [self->_lock unlock];
  }
}

- (NSString)name
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  if (self->_dispatchQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __30__NSManagedObjectContext_name__block_invoke;
    v5[3] = &unk_1E6EC1860;
    v5[4] = self;
    v5[5] = &v6;
    [(NSManagedObjectContext *)self performBlockAndWait:v5];
    v2 = v7[5];
  }

  else
  {
    v2 = [self->_additionalPrivateIvars[21] copy];
    v7[5] = v2;
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __30__NSManagedObjectContext_name__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 168) + 168) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)tryLock
{
  if (self->_dispatchQueue)
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = v3;
      while (v6 != self)
      {
        if (v6 == v4)
        {
          goto LABEL_14;
        }

        if (!v4)
        {
          v4 = v6;
        }

        v6 = atomic_load((v6 + 8));
        if (!v6)
        {
          goto LABEL_16;
        }
      }

      v5 = 1;
LABEL_14:
      if (v5)
      {
        LOBYTE(tryLock) = 1;
        goto LABEL_28;
      }

LABEL_16:
      v8 = 0;
      v9 = 0;
      selfCopy = self;
      do
      {
        v11 = selfCopy == v3;
        if (selfCopy == v3)
        {
          v9 = 1;
        }

        if (selfCopy == v8)
        {
          v11 = 1;
        }

        if (v11)
        {
          break;
        }

        if (!v8)
        {
          v8 = selfCopy;
        }

        selfCopy = atomic_load(&selfCopy->_queueOwner);
      }

      while (selfCopy);
      if (v9)
      {
        LOBYTE(tryLock) = v11;
      }

      else
      {
        LOBYTE(tryLock) = 0;
      }
    }

    else
    {
      LOBYTE(tryLock) = 0;
    }

LABEL_28:
    v12 = atomic_load(&self->_isMainThreadBlessed);
    if (v12)
    {
      v13 = atomic_load(&self->_isMainThreadBlessed);
      if ((v13 & 1) == 0 || !_PFIsSerializedWithMainQueue())
      {
        LOBYTE(tryLock) = 0;
        return tryLock;
      }

      goto LABEL_31;
    }
  }

  else
  {
    tryLock = [self->_lock tryLock];
    if (tryLock)
    {
      [(NSManagedObjectContext *)self lock];
      [self->_lock unlock];
LABEL_31:
      LOBYTE(tryLock) = 1;
    }
  }

  return tryLock;
}

- (void)lock
{
  if (!self->_dispatchQueue)
  {
    [self->_lock lock];
    ++self->_lockCount;
    if (!self->_dispatchQueue)
    {
      v3 = atomic_load(&self->_isMainThreadBlessed);
      if ((v3 & 1) != 0 && !pthread_main_np())
      {
        [(_PFManagedObjectReferenceQueue *)self->_referenceQueue _unregisterRunloopObservers];
        atomic_store(0, &self->_isMainThreadBlessed);
      }
    }

    if (_PF_Threading_Debugging_level)
    {
      if (*(self->_additionalPrivateIvars + 7))
      {
        *(*(self->_additionalPrivateIvars + 7) + 8) = pthread_self();
      }
    }
  }
}

- (NSSet)insertedObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableSet count](self->_unprocessedInserts, "count") + -[NSMutableSet count](self->_insertedObjects, "count")}];
  [v3 setSet:self->_insertedObjects];
  [v3 unionSet:self->_unprocessedInserts];

  return v3;
}

- (NSSet)updatedObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableSet count](self->_unprocessedChanges, "count") + -[NSMutableSet count](self->_changedObjects, "count")}];
  [v3 setSet:self->_changedObjects];
  [v3 unionSet:self->_unprocessedChanges];

  return v3;
}

- (NSSet)deletedObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableSet count](self->_unprocessedDeletes, "count") + -[NSMutableSet count](self->_deletedObjects, "count")}];
  [v3 setSet:self->_deletedObjects];
  [v3 unionSet:self->_unprocessedDeletes];

  return v3;
}

- (void)refreshAllObjects
{
  v15 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  registeredObjects = [(NSManagedObjectContext *)self registeredObjects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSSet *)registeredObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(registeredObjects);
        }

        -[NSManagedObjectContext refreshObject:mergeChanges:](self, "refreshObject:mergeChanges:", *(*(&v10 + 1) + 8 * v8), [*(*(&v10 + 1) + 8 * v8) hasChanges]);
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSSet *)registeredObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSManagedObjectContext *)self processPendingChanges];
  [v3 drain];
  [(NSManagedObjectContext *)self _processReferenceQueue:?];
  v9 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_retainedRegisteredObjects
{
  selfCopy = self;
  v9[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(NSManagedObjectContext *)self _processReferenceQueue:?];
    Count = _PFCMT_GetCount(*(selfCopy + 120));
    v3 = Count;
    if (Count <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = Count;
    }

    if (Count >= 0x201)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    v6 = (v9 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (Count > 0x200)
    {
      v6 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v9 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    }

    selfCopy = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v6 count:{-[_PFContextMapTable getAllObjects:](*(selfCopy + 120), v6)}];
    if (v3 >= 0x201)
    {
      NSZoneFree(0, v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NSSet)registeredObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  _retainedRegisteredObjects = [(NSManagedObjectContext *)self _retainedRegisteredObjects];

  return _retainedRegisteredObjects;
}

void __33__NSManagedObjectContext_dealloc__block_invoke(uint64_t a1)
{
  v2 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v2 = malloc_default_zone();
  }

  v3 = *(a1 + 32);

  malloc_zone_free(v2, v3);
}

- (id)databaseStatistics
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = [self->_additionalPrivateIvars[20] copy];

  return v3;
}

- (BOOL)trackSQLiteDatabaseStatistics
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*(&self->_flags + 3) >> 5) & 1;
}

- (void)_processReferenceQueue:(uint64_t)queue
{
  if (!queue)
  {
    return;
  }

  if (_PF_Threading_Debugging_level)
  {
    if ((a2 & 1) == 0)
    {
      _PFAssertSafeMultiThreadedAccess_impl(queue, sel__processReferenceQueue_);
LABEL_4:
      if ((*(queue + 42) & 2) != 0)
      {
        return;
      }
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = *(queue + 152);

  [(_PFManagedObjectReferenceQueue *)v4 _processReferenceQueue:a2];
}

- (void)setPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
  if (persistentStoreCoordinator)
  {
    parentObjectStore = self->_parentObjectStore;
    if (parentObjectStore != persistentStoreCoordinator)
    {
      if (parentObjectStore)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Context already has a coordinator;  cannot replace." userInfo:0]);
      }

      if (self->_dispatchQueue)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __56__NSManagedObjectContext_setPersistentStoreCoordinator___block_invoke;
        v6[3] = &unk_1E6EC1600;
        v6[4] = self;
        v6[5] = persistentStoreCoordinator;
        [(NSManagedObjectContext *)self performBlockAndWait:v6];
      }

      else
      {
        if (_PF_Threading_Debugging_level)
        {
          v4 = persistentStoreCoordinator;
          selfCopy = self;
          _PFAssertSafeMultiThreadedAccess_impl(self, a2);
          persistentStoreCoordinator = v4;
          self = selfCopy;
        }

        [(NSManagedObjectContext *)self _setPersistentStoreCoordinator:?];
      }
    }
  }
}

- (uint64_t)_setPersistentStoreCoordinator:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    *(result + 32) = cf;
    if (cf)
    {
      CFRetain(cf);
      [(_PFContextMapTable *)*(v3 + 120) setForUseWithCoordinator:?];
      result = [(NSManagedObjectContext *)v3 _registerForNotificationsWithCoordinator:?];
      v4 = *(cf + 12);
      if (v4)
      {
        v4 = *(v4 + 48);
      }
    }

    else
    {
      [(_PFContextMapTable *)*(result + 120) setForUseWithCoordinator:?];
      result = [(NSManagedObjectContext *)v3 _registerForNotificationsWithCoordinator:?];
      v4 = 0;
    }

    *(*(v3 + 168) + 80) = v4;
  }

  return result;
}

- (void)_setRetainsRegisteredObjects:(uint64_t)objects
{
  if (objects)
  {
    if (_PFCMT_GetCount(*(objects + 120)))
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"An NSManagedObjectContext's retain policy cannot be changed while it has registered objects.  Trying using reset() first." userInfo:0]);
    }

    if (((((*(objects + 40) & 0x40) == 0) ^ a2) & 1) == 0)
    {
      if (a2)
      {
        v4 = 64;
      }

      else
      {
        v4 = 0;
      }

      *(objects + 40) = *(objects + 40) & 0xFFFFFFBF | v4;
      CFRelease(*(objects + 120));
      v5 = [[_PFContextMapTable alloc] initWithWeaksReferences:?];
      *(objects + 120) = v5;
      -[_PFContextMapTable setForUseWithCoordinator:](v5, [objects persistentStoreCoordinator]);
      CFRetain(*(objects + 120));
      v6 = *(objects + 120);
    }
  }
}

- (void)setRetainsRegisteredObjects:(BOOL)retainsRegisteredObjects
{
  v3 = retainsRegisteredObjects;
  if (self->_dispatchQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__NSManagedObjectContext_setRetainsRegisteredObjects___block_invoke;
    v5[3] = &unk_1E6EC2770;
    v5[4] = self;
    v6 = retainsRegisteredObjects;
    [(NSManagedObjectContext *)self performBlockAndWait:v5];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    [(NSManagedObjectContext *)self _setRetainsRegisteredObjects:v3];
  }
}

- (BOOL)retainsRegisteredObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*&self->_flags >> 6) & 1;
}

- (void)setShouldDeleteInaccessibleFaults:(BOOL)shouldDeleteInaccessibleFaults
{
  v3 = shouldDeleteInaccessibleFaults;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__NSManagedObjectContext_setShouldDeleteInaccessibleFaults___block_invoke;
    v6[3] = &unk_1E6EC2770;
    v6[4] = self;
    v7 = shouldDeleteInaccessibleFaults;
    [(NSManagedObjectContext *)self performBlockAndWait:v6];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    if (v3)
    {
      v5 = 0x80000;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFF7FFFF | v5);
  }
}

- (BOOL)shouldDeleteInaccessibleFaults
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*(&self->_flags + 2) >> 3) & 1;
}

- (void)setMergePolicy:(id)mergePolicy
{
  if (self->_dispatchQueue)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__NSManagedObjectContext_setMergePolicy___block_invoke;
    v9[3] = &unk_1E6EC1600;
    v9[4] = mergePolicy;
    v9[5] = self;
    [(NSManagedObjectContext *)self performBlockAndWait:v9];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    v5 = *(self->_additionalPrivateIvars + 3);
    if (v5 != mergePolicy)
    {

      v6 = NSErrorMergePolicy;
      if (mergePolicy)
      {
        v6 = mergePolicy;
      }

      *(self->_additionalPrivateIvars + 3) = v6;
      v7 = *(self->_additionalPrivateIvars + 3);

      v8 = v7;
    }
  }
}

void *__41__NSManagedObjectContext_setMergePolicy___block_invoke(void *result)
{
  v2 = *(*(result[5] + 168) + 24);
  if (result[4] != v2)
  {
    v3 = result;

    v4 = NSErrorMergePolicy;
    if (v3[4])
    {
      v4 = v3[4];
    }

    *(*(v3[5] + 168) + 24) = v4;
    v5 = *(*(v3[5] + 168) + 24);

    return v5;
  }

  return result;
}

- (uint64_t)_postObjectsDidChangeNotificationWithUserInfo:(uint64_t)result
{
  v35 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = [a2 mutableCopy];
    if (byte_1ED4BEEC6)
    {
      [v4 setObject:+[_PFWeakReference weakReferenceWithObject:](_PFWeakReference forKey:{v3), @"managedObjectContext"}];
    }

    for (i = 0; i != 4; ++i)
    {
      v6 = [a2 objectForKey:off_1E6EC24D8[i]];
      if ([v6 count])
      {
        v7 = [_PFRoutines newSetOfObjectIDsFromCollection:v6];
        [v4 setObject:v7 forKey:off_1E6EC24F8[i]];
      }
    }

    v8 = [v4 copy];

    v9 = [a2 mutableCopy];
    [v9 removeObjectForKey:@"refreshed_objectIDs"];
    v10 = [v9 copy];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_NSObjectsChangedInManagingContextPrivateNotification" object:v3 userInfo:v8];
    [defaultCenter postNotificationName:@"NSObjectsChangedInManagingContextNotification" object:v3 userInfo:v10];
    result = [NSManagedObject instancesRespondToSelector:sel__willChange_Swift_Trampoline];
    if (result)
    {
      for (j = 0; j != 4; ++j)
      {
        v13 = [a2 objectForKey:off_1E6EC24D8[j]];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v30;
          do
          {
            for (k = 0; k != v15; ++k)
            {
              if (*v30 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v29 + 1) + 8 * k);
              if ([v18 bindableObjectPublisher])
              {
                [v18 _willChange_Swift_Trampoline];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
          }

          while (v15);
        }
      }

      v19 = [a2 objectForKey:@"refreshed"];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      result = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (result)
      {
        v20 = result;
        v21 = *v26;
        do
        {
          v22 = 0;
          do
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v25 + 1) + 8 * v22);
            if ([v23 bindableObjectPublisher])
            {
              [v23 _willChange_Swift_Trampoline];
            }

            ++v22;
          }

          while (v20 != v22);
          result = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
          v20 = result;
        }

        while (result);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_dispose:(uint64_t)result
{
  v40 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_61;
  }

  v1 = result;
  [*(result + 136) lock];
  ++*(v1 + 52);
  *(v1 + 16) = 1;
  if (_PF_Threading_Debugging_level && *(*(v1 + 168) + 56))
  {
    *(*(*(v1 + 168) + 56) + 8) = pthread_self();
  }

  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = CFGetRetainCount(v2) != 1;
  }

  else
  {
    v3 = 1;
  }

  ++*(v1 + 46);
  [(_PFManagedObjectReferenceQueue *)*(v1 + 152) _unregisterRunloopObservers];
  Count = _PFCMT_GetCount(*(v1 + 120));
  v36[1] = v36;
  v5 = MEMORY[0x1EEE9AC00](Count);
  v8 = (v36 - v7);
  if (v5 >= 0x201)
  {
    v8 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v36 - v7, 8 * v6);
  }

  v9 = [(_PFContextMapTable *)*(v1 + 120) getAllObjects:v8];
  [(NSManagedObjectContext *)v1 lockObjectStore];
  v37 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v38 = v8;
  callBacks = *byte_1EF3F0BE8;
  if (!v3)
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_27;
    }

LABEL_13:
    v11 = v38;
    do
    {
      v12 = *v11;
      objectID = [*v11 objectID];
      v14 = !v3;
      if (!v12)
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0 && (*(v12 + 17) & 2) != 0)
      {
        v15 = objectID;
        if (([objectID isTemporaryID] & 1) == 0)
        {
          CFArrayAppendValue(v10, v15);
          v12[4] &= ~0x200u;
        }
      }

      v16 = v12[4];
      v17 = v16 & 0xFFFFFFC0;
      v12[4] = v16 & 0xFFFFFFC0;
      v18 = (v16 >> 15) & 7;
      if (v18 == 5 || v18 == 0)
      {
        [(NSFaultHandler *)_insertion_fault_handler turnObject:v12 intoFaultWithContext:0];
        v17 = v12[4];
      }

      *(v12 + 4) = 0;
      v12[4] = v17 | 0x80080;
      ++v11;
      --v9;
    }

    while (v9);
    goto LABEL_27;
  }

  v10 = CFArrayCreateMutable(*MEMORY[0x1E695E480], v9, &callBacks);
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_27:
  if (v3 && CFArrayGetCount(v10) >= 1)
  {
    [*(v1 + 32) managedObjectContextDidUnregisterObjectsWithIDs:v10 generation:{objc_msgSend(v1, "_queryGenerationToken")}];
  }

  if (v10)
  {
    CFRelease(v10);
  }

  [(_PFManagedObjectReferenceQueue *)*(v1 + 152) _processReferenceQueue:?];
  if (Count >= 0x201)
  {
    NSZoneFree(0, v38);
  }

  v20 = *(v1 + 152);
  if (v20)
  {
    *(v20 + 20) = -1;
    os_unfair_lock_lock_with_options();
    *(v20 + 24) = 0;
    os_unfair_lock_unlock((v20 + 12));
    [(_PFManagedObjectReferenceQueue *)v20 _unregisterRunloopObservers];
    [(_PFManagedObjectReferenceQueue *)v20 _processReferenceQueue:?];
    CFRelease(v20);
  }

  [(NSManagedObjectContext *)v1 unlockObjectStore];
  v21 = *(v1 + 152);
  if (v21)
  {
    CFRelease(v21);
    *(v1 + 152) = 0;
  }

  *(v1 + 16) = 1;
  v22 = *(v1 + 120);
  *(v1 + 120) = 0;
  *(v1 + 40) = *(v1 + 40) & 0xFFFFF8BF | 0x40;
  __dmb(0xBu);
  if (v22)
  {
    CFRelease(v22);
  }

  *(v1 + 72) = 0;
  *(v1 + 64) = 0;

  *(v1 + 56) = 0;
  *(v1 + 80) = 0;

  *(v1 + 88) = 0;
  *(v1 + 96) = 0;

  *(v1 + 104) = 0;
  *(v1 + 112) = 0;

  *(*(v1 + 168) + 24) = 0;
  *(*(v1 + 168) + 96) = 0;

  *(*(v1 + 168) + 120) = 0;
  *(*(v1 + 168) + 128) = 0;

  *(*(v1 + 168) + 88) = 0;
  *(*(v1 + 168) + 104) = 0;
  v23 = *(v1 + 128);
  if (v23)
  {
    v24 = *(*(v1 + 168) + 80);
    if (v24)
    {
      v25 = 0;
      v26 = 2 * v24;
      do
      {

        v25 += 2;
      }

      while (v25 < v26);
      v23 = *(v1 + 128);
    }

    PF_FREE_OBJECT_ARRAY(v23);
  }

  *(v1 + 128) = 0;

  *(*(v1 + 168) + 32) = 0;
  *(*(v1 + 168) + 16) = 0;

  *(*(v1 + 168) + 48) = 0;
  **(v1 + 168) = 0;

  *(*(v1 + 168) + 136) = 0;
  *(*(v1 + 168) + 144) = 0;

  *(*(v1 + 168) + 112) = 0;
  *(*(v1 + 168) + 152) = 0;

  *(*(v1 + 168) + 160) = 0;
  v27 = *(v1 + 168);
  v28 = *(v27 + 8);
  if (v28)
  {

    PF_FREE_OBJECT_ARRAY(*(*(v1 + 168) + 8));
    *(*(v1 + 168) + 8) = 0;
    v27 = *(v1 + 168);
  }

  v29 = *(v27 + 56);
  if (v29)
  {

    *(*(*(v1 + 168) + 56) + 32) = 85;
    *(*(*(v1 + 168) + 56) + 40) = 85;
    v30 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v30 = malloc_default_zone();
    }

    malloc_zone_free(v30, *(*(v1 + 168) + 56));
    *(*(v1 + 168) + 56) = 0;
    v27 = *(v1 + 168);
  }

  *(*(v1 + 168) + 168) = @"deallocated NSManagedObjectContext";
  PF_FREE_OBJECT_ARRAY(*(v1 + 168));
  *(v1 + 168) = 0;
  [*(v1 + 136) unlock];
  v31 = *(v1 + 24);
  if (v31)
  {
    dispatch_release(v31);
  }

  *(v1 + 24) = 0;
  do
  {
    v32 = atomic_load((v1 + 8));
  }

  while (!_PF_actor_set_owner(v32, v1, 0));
  v33 = *(v1 + 136);
  if (v33)
  {
    CFRelease(v33);
  }

  *(v1 + 136) = 0;
  v34 = *(v1 + 32);
  if (v34)
  {
    CFRelease(v34);
  }

  *(v1 + 32) = 0;
  result = MEMORY[0x1865FAAD0]();
LABEL_61:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setStalenessInterval:(NSTimeInterval)stalenessInterval
{
  if (self->_dispatchQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__NSManagedObjectContext_setStalenessInterval___block_invoke;
    v5[3] = &unk_1E6EC2720;
    v5[4] = self;
    *&v5[5] = stalenessInterval;
    [(NSManagedObjectContext *)self performBlockAndWait:v5];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    self->_fetchTimestamp = stalenessInterval;
  }
}

double __47__NSManagedObjectContext_setStalenessInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 144) = result;
  return result;
}

- (void)_setUndoManager:(uint64_t)manager
{
  if (manager)
  {
    if (*(*(manager + 168) + 40) != a2)
    {
      [(NSManagedObjectContext *)manager _stopObservingUndoManagerNotifications];

      *(*(manager + 168) + 40) = a2;
      if (a2)
      {
        v4 = a2;

        [(NSManagedObjectContext *)manager _startObservingUndoManagerNotifications];
      }
    }
  }
}

- (uint64_t)_startObservingUndoManagerNotifications
{
  if (*(*(result + 168) + 40))
  {
    v1 = result;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v3 = *MEMORY[0x1E696AA10];
    v4 = *(*(v1 + 168) + 40);

    return [defaultCenter addObserver:v1 selector:sel__undoManagerCheckpoint_ name:v3 object:v4];
  }

  return result;
}

- (void)setUndoManager:(NSUndoManager *)undoManager
{
  if (self->_dispatchQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__NSManagedObjectContext_setUndoManager___block_invoke;
    v5[3] = &unk_1E6EC1600;
    v5[4] = self;
    v5[5] = undoManager;
    [(NSManagedObjectContext *)self performBlockAndWait:v5];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    [(NSManagedObjectContext *)self _setUndoManager:?];
  }
}

- (NSUndoManager)undoManager
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return *(self->_additionalPrivateIvars + 5);
}

- (uint64_t)_processRecentChanges:(uint64_t)changes
{
  v126 = *MEMORY[0x1E69E9840];
  if (!changes)
  {
    v4 = 0;
    goto LABEL_138;
  }

  changesCopy = changes;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(changes, sel__processRecentChanges_);
  }

  v3 = *(changesCopy + 40);
  if ((v3 & 8) != 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x100) == 0)
  {
    [(NSManagedObjectContext *)changesCopy _postRefreshedObjectsNotificationAndClearList];
    [(NSManagedObjectContext *)changesCopy _processReferenceQueue:?];
LABEL_7:
    v4 = 1;
    goto LABEL_138;
  }

  v76 = 0;
  v86 = 0;
  *(changesCopy + 40) = v3 | 0x808;
  v99 = 0;
  v74 = *(MEMORY[0x1E695E9F8] + 8);
  v75 = *MEMORY[0x1E695E9F8];
  v72 = *(MEMORY[0x1E695E9F8] + 24);
  v73 = *(MEMORY[0x1E695E9F8] + 16);
  v4 = 1;
  allocator = *MEMORY[0x1E695E480];
  v79 = changesCopy;
  while (1)
  {
    v5 = [*(changesCopy + 56) count];
    v6 = [*(changesCopy + 72) count];
    if (!(v6 + v5 + [*(changesCopy + 64) count]))
    {
      break;
    }

    if (!v76)
    {
      v76 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    }

    callBacks.version = v75;
    callBacks.retain = v74;
    callBacks.release = v73;
    callBacks.copyDescription = v72;
    callBacks.equal = 0;
    callBacks.hash = 0;
    v7 = CFSetCreateMutable(allocator, 0, &callBacks);
    v8 = CFSetCreateMutable(allocator, 0, &callBacks);
    v9 = CFSetCreateMutable(allocator, 0, &callBacks);
    v10 = CFSetCreateMutable(allocator, 0, &callBacks);
    v11 = CFSetCreateMutable(allocator, 0, &callBacks);
    [(NSManagedObjectContext *)v79 _registerClearStateWithUndoManager];
    v84 = v11;
    v85 = v7;
    v82 = v9;
    v83 = v8;
    v81 = v10;
    changesCopy = v79;
    if ((*(v79 + 40) & 2) != 0)
    {
      if ([*(v79 + 64) count] || objc_msgSend(*(v79 + 88), "count"))
      {
        v112.version = v75;
        v112.retain = v74;
        v112.release = v73;
        v112.copyDescription = v72;
        v112.equal = 0;
        v112.hash = 0;
        changesCopy = v79;
        v12 = CFSetCreateMutable(allocator, 0, &v112);
        if ([*(v79 + 64) count])
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v13 = *(v79 + 64);
          v14 = [v13 countByEnumeratingWithState:&v108 objects:v124 count:16];
          if (v14)
          {
            v15 = *v109;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v109 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                [(__CFSet *)v12 addObject:*(*(&v108 + 1) + 8 * i)];
              }

              v14 = [v13 countByEnumeratingWithState:&v108 objects:v124 count:16];
            }

            while (v14);
          }
        }

        if ([*(v79 + 56) count])
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v17 = *(v79 + 56);
          v18 = [v17 countByEnumeratingWithState:&v104 objects:v123 count:16];
          if (v18)
          {
            v19 = *v105;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v105 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v104 + 1) + 8 * j);
                if (v21 && (*(v21 + 16) & 0x20) != 0)
                {
                  [(__CFSet *)v12 addObject:?];
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v104 objects:v123 count:16];
            }

            while (v18);
          }
        }

        if ([*(v79 + 112) count])
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v22 = *(v79 + 112);
          v23 = [v22 countByEnumeratingWithState:&v100 objects:v122 count:16];
          if (v23)
          {
            v24 = *v101;
            do
            {
              for (k = 0; k != v23; ++k)
              {
                if (*v101 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = [v79 objectRegisteredForID:*(*(&v100 + 1) + 8 * k)];
                if (v26 && (*(v26 + 16) & 0x20) != 0)
                {
                  [(__CFSet *)v12 addObject:v26];
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v100 objects:v122 count:16];
            }

            while (v23);
          }
        }

        v27 = atomic_load((v79 + 48));
        if ((v27 & 1) == 0 && [v79 persistentStoreCoordinator] && -[__CFSet count](v12, "count"))
        {
          v28 = [_PFRoutines createDictionaryPartitioningObjectsByEntity:v12];
          v29 = objc_alloc_init(NSFetchRequest);
          [(NSFetchRequest *)v29 setResultType:0];
          [(NSFetchRequest *)v29 setIncludesPendingChanges:0];
          [(NSFetchRequest *)v29 setIncludesSubentities:0];
          v117.version = MEMORY[0x1E69E9820];
          v117.retain = 3221225472;
          v117.release = __92__NSManagedObjectContext__NSInternalChangeProcessing___prefetchObjectsForDeletePropagation___block_invoke;
          v117.copyDescription = &unk_1E6EC24B8;
          v117.equal = v29;
          v117.hash = v79;
          [(__CFDictionary *)v28 enumerateKeysAndObjectsUsingBlock:&v117];
          CFRelease(v28);
        }

        if ([(__CFSet *)v12 count])
        {
          v30 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          ++*(v79 + 46);
          *(v79 + 40) |= 0x1000u;
          v117.version = v75;
          v117.retain = v74;
          v117.release = v73;
          v117.copyDescription = v72;
          v117.equal = 0;
          v117.hash = 0;
          v31 = CFSetCreateMutable(allocator, 0, &v117);
          v32 = [(__CFSet *)v12 mutableCopy];
          v33 = 0;
          while ([v32 count])
          {
            [*(v79 + 64) removeAllObjects];
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v34 = [v32 countByEnumeratingWithState:&v113 objects:v125 count:16];
            if (v34)
            {
              v35 = *v114;
              do
              {
                for (m = 0; m != v34; ++m)
                {
                  if (*v114 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = *(*(&v113 + 1) + 8 * m);
                  [(__CFSet *)v31 addObject:v37];
                  if (v37)
                  {
                    [(NSManagedObject *)v37 _propagateDelete:?];
                  }
                }

                v34 = [v32 countByEnumeratingWithState:&v113 objects:v125 count:16];
              }

              while (v34);
            }

            if (v33 < 0x1E)
            {
              ++v33;
            }

            else
            {
              if ([*(v79 + 64) isSubsetOfSet:v31])
              {
                break;
              }

              v33 = 0;
            }

            v32 = [*(v79 + 64) mutableCopy];
          }

          *(v79 + 64) = v31;
          *(v79 + 40) &= ~0x1000u;
          --*(v79 + 46);
          [v30 drain];
        }

        if (a2)
        {
          v77 = [(NSManagedObjectContext *)v79 _validateObjects:2 forOperation:&v99 error:(*(v79 + 40) >> 2) & 1 exhaustive:0 forSave:?];
        }

        else
        {
          v77 = 1;
        }
      }

      else
      {
        v77 = 1;
        changesCopy = v79;
      }
    }

    else
    {
      v77 = 1;
    }

    v38 = [NSManagedObjectContext _processPendingDeletions:changesCopy withInsertions:v83 withUpdates:v81 withNewlyForgottenList:v84 withRemovedChangedObjects:?];
    v39 = [NSManagedObjectContext _processPendingInsertions:changesCopy withDeletions:v85 withUpdates:v82];
    v40 = [(NSManagedObjectContext *)changesCopy _processPendingUpdates:v82];
    if (v40)
    {
      [(NSManagedObjectContext *)changesCopy _registerUndoForOperation:v40 withObjects:0 withExtraArguments:?];
    }

    if (v39)
    {
      [(NSManagedObjectContext *)changesCopy _registerUndoForOperation:v39 withObjects:0 withExtraArguments:?];
    }

    if (v38)
    {
      v41 = [v38 count];
      v78 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
      v42 = [(__CFSet *)v84 count];
      if (v42)
      {
        v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v41];
      }

      else
      {
        v80 = 0;
      }

      v43 = objc_alloc(MEMORY[0x1E695DEC8]);
      if (v80)
      {
        v44 = v80;
      }

      else
      {
        v44 = NSKeyValueCoding_NullValue;
      }

      v45 = [v43 initWithObjects:{v44, 0}];

      [v78 addObject:v45];
      v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v41];
      [v78 addObject:v46];

      if (*(*(changesCopy + 168) + 40) && v41)
      {
        for (n = 0; n != v41; ++n)
        {
          v48 = [v38 objectAtIndex:n];
          v49 = v48;
          if (v48 && (v50 = [(NSManagedObject *)v48 _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:1 preserveFaults:?]) != 0)
          {
            [v46 addObject:v50];
          }

          else
          {
            [v46 addObject:NSKeyValueCoding_NullValue];
            v50 = 0;
          }

          if (v42)
          {
            v51 = [(__CFSet *)v84 member:v49];
            v52 = &NSKeyValueCoding_NullValue;
            if (v51)
            {
              v52 = &NSArray_EmptyArray;
            }

            [v80 addObject:*v52];
          }
        }
      }

      [(NSManagedObjectContext *)changesCopy _registerUndoForOperation:v38 withObjects:v78 withExtraArguments:?];
    }

    if (([*(*(changesCopy + 168) + 40) groupsByEvent] & 1) == 0)
    {
      if (([*(*(changesCopy + 168) + 40) isUndoing] & 1) == 0 && (objc_msgSend(*(*(changesCopy + 168) + 40), "isRedoing") & 1) == 0)
      {
        [*(*(changesCopy + 168) + 40) endUndoGrouping];
      }

      *(changesCopy + 40) &= ~0x20u;
    }

    [*(changesCopy + 72) removeAllObjects];
    [*(changesCopy + 64) removeAllObjects];
    [*(changesCopy + 56) removeAllObjects];
    v53 = [*(changesCopy + 112) copy];
    [*(changesCopy + 112) removeAllObjects];
    if ((v86 & 1) == 0)
    {
      *(changesCopy + 40) &= 0xFFFFF6F6;
    }

    v54 = *(changesCopy + 168);
    v55 = *(v54 + 88);
    if (v55)
    {
      *(v54 + 88) = 0;
      v54 = *(changesCopy + 168);
    }

    [(NSManagedObjectContext *)changesCopy _createAndPostChangeNotification:v85 deletions:v83 updates:v82 refreshes:v53 deferrals:v55 wasMerge:*(v54 + 104) != 0];
    [(NSManagedObjectContext *)changesCopy _processRecentlyForgottenObjects:v81];
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v56 = [v40 countByEnumeratingWithState:&v95 objects:v120 count:16];
    if (v56)
    {
      v57 = *v96;
      do
      {
        for (ii = 0; ii != v56; ++ii)
        {
          if (*v96 != v57)
          {
            objc_enumerationMutation(v40);
          }

          [(NSManagedObject *)*(*(&v95 + 1) + 8 * ii) _nilOutReservedCurrentEventSnapshot__];
        }

        v56 = [v40 countByEnumeratingWithState:&v95 objects:v120 count:16];
      }

      while (v56);
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v59 = [v39 countByEnumeratingWithState:&v91 objects:v119 count:16];
    if (v59)
    {
      v60 = *v92;
      do
      {
        for (jj = 0; jj != v59; ++jj)
        {
          if (*v92 != v60)
          {
            objc_enumerationMutation(v39);
          }

          [(NSManagedObject *)*(*(&v91 + 1) + 8 * jj) _nilOutReservedCurrentEventSnapshot__];
        }

        v59 = [v39 countByEnumeratingWithState:&v91 objects:v119 count:16];
      }

      while (v59);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v62 = [v38 countByEnumeratingWithState:&v87 objects:v118 count:16];
    if (v62)
    {
      v63 = *v88;
      do
      {
        for (kk = 0; kk != v62; ++kk)
        {
          if (*v88 != v63)
          {
            objc_enumerationMutation(v38);
          }

          [(NSManagedObject *)*(*(&v87 + 1) + 8 * kk) _nilOutReservedCurrentEventSnapshot__];
        }

        v62 = [v38 countByEnumeratingWithState:&v87 objects:v118 count:16];
      }

      while (v62);
    }

    v86 = 1;
    v4 = v77;
  }

  if ([*(changesCopy + 112) count])
  {
    if (!v76)
    {
      v76 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    }

    [(NSManagedObjectContext *)changesCopy _postRefreshedObjectsNotificationAndClearList];
  }

  if ((v86 & 1) == 0)
  {
    *(changesCopy + 40) &= 0xFFFFF6F6;
  }

  v65 = v99;
  [v76 drain];
  v66 = v99;
  if (a2 && v99)
  {
    *a2 = v99;
  }

  v67 = 0;
  [(NSManagedObjectContext *)changesCopy _processReferenceQueue:?];
LABEL_138:
  v68 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

- (void)assignObject:(id)object toPersistentStore:(NSPersistentStore *)store
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    if (!object)
    {
      return;
    }
  }

  else if (!object)
  {
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"Parameter #1 to -assignObject:toPersistentStore: must be an NSManagedObject or subclass.";
    v13 = 0;
    goto LABEL_18;
  }

  objectID = [object objectID];
  if (![objectID isTemporaryID])
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[NSPersistentStore URL](store, "URL"), @"newStoreURL", objc_msgSend(objc_msgSend(objectID, "persistentStore"), "URL"), @"originalStoreURL", objectID, @"objectID", 0}];
    v12 = @"Can't reassign an object to a different store once it has been saved.";
LABEL_17:
    v10 = v14;
    v11 = v15;
LABEL_18:
    objc_exception_throw([v10 exceptionWithName:v11 reason:v12 userInfo:v13]);
  }

  persistentStoreCoordinator = [(NSManagedObjectContext *)self persistentStoreCoordinator];
  if (persistentStoreCoordinator)
  {
    modelMap = persistentStoreCoordinator->_modelMap;
  }

  else
  {
    modelMap = 0;
  }

  if (![-[_PFModelMap entitiesForContext:configuration:](modelMap self])
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[NSPersistentStore URL](store, "URL"), @"storeURL", objc_msgSend(objc_msgSend(objectID, "entity"), "name"), @"entityName", objectID, @"objectID", 0}];
    v12 = @"Can't assign an object to a store that does not contain the object's entity.";
    goto LABEL_17;
  }

  [objectID _setPersistentStore:store];
}

- (void)setPropagatesDeletesAtEndOfEvent:(BOOL)propagatesDeletesAtEndOfEvent
{
  v3 = propagatesDeletesAtEndOfEvent;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__NSManagedObjectContext_setPropagatesDeletesAtEndOfEvent___block_invoke;
    v6[3] = &unk_1E6EC2770;
    v6[4] = self;
    v7 = propagatesDeletesAtEndOfEvent;
    [(NSManagedObjectContext *)self performBlockAndWait:v6];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    if (v3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFD | v5);
  }
}

- (NSManagedObject)objectRegisteredForID:(NSManagedObjectID *)objectID
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  Value = _PFCMT_GetValue(&self->_infoByGID->super.isa, objectID);
  if (!Value)
  {
    persistentStore = [(NSManagedObjectID *)objectID persistentStore];
    _persistentStoreCoordinator = [(NSPersistentStore *)persistentStore _persistentStoreCoordinator];
    persistentStoreCoordinator = [(NSManagedObjectContext *)self persistentStoreCoordinator];
    _isPersistentStoreAlive = [(NSManagedObjectID *)objectID _isPersistentStoreAlive];
    if ((_persistentStoreCoordinator != persistentStoreCoordinator || !_isPersistentStoreAlive) && (persistentStore || ![(NSManagedObjectID *)objectID isTemporaryID]))
    {
      v10 = objc_autoreleasePoolPush();
      uRIRepresentation = [(NSManagedObjectID *)objectID URIRepresentation];
      if ([(NSPersistentStoreCoordinator *)persistentStoreCoordinator _persistentStoreForIdentifier:?])
      {
        v12 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator managedObjectIDForURIRepresentation:uRIRepresentation error:0];
        v13 = v12;
        if (v12)
        {
          Value = _PFCMT_GetValue(&self->_infoByGID->super.isa, v12);
LABEL_14:

          objc_autoreleasePoolPop(v10);
          return Value;
        }
      }

      else
      {
        v12 = 0;
      }

      Value = 0;
      goto LABEL_14;
    }

    return 0;
  }

  return Value;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if (qword_1ED4BEA30 == context && (!self || self->_ignoreChangeNotification <= 0) && (*(object + 17) & 0x20) == 0)
  {
    entity = [object entity];
    v12 = entity;
    if (entity)
    {
      v13 = [objc_msgSend(entity "propertiesByName")];
    }

    else
    {
      v13 = 0;
    }

    if ([v13 _propertyType] != 4)
    {
      v13 = 0;
    }

    if (v13)
    {
      inverseRelationship = [v13 inverseRelationship];
    }

    else
    {
      inverseRelationship = 0;
    }

    if ([v13 _isToManyRelationship] && (v15 = objc_msgSend(v13, "_entitysReferenceID"), v16 = _kvcPropertysPrimitiveGetters(v12), (Property = _PF_Handler_Public_GetProperty(object, v15, keyPath, *(v16 + 8 * v15))) != 0) && ((v18 = Property, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v18, "_shouldProcessKVOChange") & 1) == 0)
    {

      _PFFastMOCObjectWillChange(self, object);
    }

    else
    {

      [object _didChangeValue:change forRelationship:v13 named:keyPath withInverse:inverseRelationship];
    }
  }
}

- (void)insertObject:(NSManagedObject *)object
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  entity = [(NSManagedObject *)object entity];
  if (!entity)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"An NSManagedObject must have a valid NSEntityDescription.";
    goto LABEL_16;
  }

  v6 = entity;
  if ([(NSManagedObjectContext *)self persistentStoreCoordinator])
  {
    managedObjectModel = [(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)self persistentStoreCoordinator] managedObjectModel];
    name = [(NSEntityDescription *)v6 name];
    if ((!managedObjectModel || ![(NSMutableDictionary *)managedObjectModel->_entities objectForKey:name]) && ![(NSManagedObjectContext *)self _allowAncillaryEntities])
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      v16 = MEMORY[0x1E696AEC0];
      if ([(NSEntityDescription *)v6 name])
      {
        name2 = [(NSEntityDescription *)v6 name];
      }

      else
      {
        name2 = [MEMORY[0x1E695DFB0] null];
      }

      v13 = [v16 stringWithFormat:@"Cannot insert '%@' in this managed object context because it is not found in the associated managed object model.", name2];
      v11 = v14;
      v12 = v15;
LABEL_16:
      objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:0]);
    }
  }

  objectID = [(NSManagedObject *)object objectID];
  if (objectID)
  {
    [(NSManagedObjectContext *)self _insertObjectWithGlobalID:objectID globalID:?];
    if (object)
    {
LABEL_10:
      object->_cd_stateFlags |= 0x1000u;
      [(NSManagedObject *)object awakeFromInsert];
      object->_cd_stateFlags &= ~0x1000u;
      return;
    }
  }

  else
  {
    v10 = [[NSTemporaryObjectID alloc] initWithEntity:[(NSManagedObject *)object entity]];
    [(NSManagedObjectContext *)self _insertObjectWithGlobalID:v10 globalID:?];

    if (object)
    {
      goto LABEL_10;
    }
  }

  [0 awakeFromInsert];
}

- (void)_insertObjectWithGlobalID:(void *)d globalID:
{
  if (result)
  {
    if (!a2)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"attempt to insert a null object into this context" userInfo:0]);
    }

    v5 = result;
    [(NSManagedObjectContext *)result _registerClearStateWithUndoManager];
    v6 = *(a2 + 16);
    if ((v6 & 0x80) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 32);
    }

    if (v7 != v5)
    {
      [(NSManagedObjectContext *)v5 _registerObject:a2 withID:d];
      v6 = *(a2 + 16);
    }

    *(a2 + 16) = v6 | 2;
    _PFFaultHandlerFulfillFault(0, a2, v5, 0, 1);
    [(NSManagedObjectContext *)v5 _establishEventSnapshotsForObject:a2];
    v8 = *(v5 + 40);
    if ((v8 & 0x200) != 0 && (v8 & 0x100) == 0)
    {
      _PFFaultLogExcessivePrepareForPendingChangesAttempts();
      v8 = *(v5 + 40);
    }

    *(v5 + 40) = v8 | 0x100;
    [*(v5 + 72) addObject:a2];
    [(NSManagedObjectContext *)v5 _enqueueEndOfEventNotification];
    if ((*(v5 + 41) & 4) == 0)
    {
      [v5 willChangeValueForKey:@"hasChanges"];
      *(v5 + 40) |= 0x400u;
      [v5 didChangeValueForKey:@"hasChanges"];
    }

    result = **(v5 + 168);
    if (result)
    {

      return [result removeObject:d];
    }
  }

  return result;
}

- (void)deleteObject:(NSManagedObject *)object
{
  if (!_PF_Threading_Debugging_level)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_16:
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"-deleteObject: requires a non-nil argument";
LABEL_17:
    objc_exception_throw([v6 exceptionWithName:v7 reason:v8 userInfo:0]);
  }

  _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  if (!object)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((object->_cd_stateFlags & 0x80) != 0)
  {
    if (self)
    {
      return;
    }

    goto LABEL_9;
  }

  cd_managedObjectContext = object->_cd_managedObjectContext;
  if (cd_managedObjectContext == self)
  {
LABEL_9:
    [(NSManagedObjectContext *)self _registerClearStateWithUndoManager];
    object->_cd_stateFlags |= 4u;
    [(NSManagedObjectContext *)self _establishEventSnapshotsForObject:?];
    flags = self->_flags;
    if ((*&flags & 0x200) != 0 && (*&flags & 0x100) == 0)
    {
      _PFFaultLogExcessivePrepareForPendingChangesAttempts();
      flags = self->_flags;
    }

    self->_flags = (*&flags | 0x100);
    [(NSMutableSet *)self->_unprocessedDeletes addObject:object];
    [(NSManagedObjectContext *)self _enqueueEndOfEventNotification];
    if ((*(&self->_flags + 1) & 4) == 0)
    {
      [(NSManagedObjectContext *)self willChangeValueForKey:@"hasChanges"];
      *&self->_flags |= 0x400u;
      [(NSManagedObjectContext *)self didChangeValueForKey:@"hasChanges"];
    }

    [(NSManagedObject *)object prepareForDeletion];
    return;
  }

  if (cd_managedObjectContext)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"An NSManagedObjectContext cannot delete objects in other contexts.";
    goto LABEL_17;
  }
}

- (void)_establishEventSnapshotsForObject:(uint64_t)object
{
  if (!object)
  {
    return;
  }

  if (!_PF_Threading_Debugging_level)
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_22:
    v4 = 0;
    goto LABEL_9;
  }

  _PFAssertSafeMultiThreadedAccess_impl(object, sel__establishEventSnapshotsForObject_);
  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_4:
  v3 = a2[6];
  if (v3 && *(v3 + 8))
  {
    if (*(v3 + 16))
    {
      return;
    }

LABEL_17:
    v6 = [(NSManagedObject *)a2 _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:1 preserveFaults:?];
LABEL_18:
    v7 = v6;
    [(NSManagedObject *)a2 _setLastSnapshot__:v6];

    return;
  }

  v4 = [(NSManagedObject *)a2 _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:1 preserveFaults:?];
LABEL_9:
  [(NSManagedObject *)a2 _setOriginalSnapshot__:v4];

  if (a2)
  {
    v5 = a2[6];
    if (v5 && *(v5 + 16))
    {
      return;
    }

    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else if (!v4)
  {
    v6 = 0;
    goto LABEL_18;
  }

  [(NSManagedObject *)a2 _setLastSnapshot__:v4];
}

- (void)_prepareUnprocessedDeletionAfterRefresh:(_DWORD *)refresh
{
  if (refresh && [a2 isDeleted])
  {
    v3 = refresh[10];
    if ((v3 & 0x200) != 0 && (v3 & 0x100) == 0)
    {
      _PFFaultLogExcessivePrepareForPendingChangesAttempts();
      v3 = refresh[10];
    }

    refresh[10] = v3 | 0x100;
    if ((v3 & 0x400) == 0)
    {
      [refresh willChangeValueForKey:@"hasChanges"];
      refresh[10] |= 0x400u;

      [refresh didChangeValueForKey:@"hasChanges"];
    }
  }
}

- (BOOL)obtainPermanentIDsForObjects:(NSArray *)objects error:(NSError *)error
{
  v27 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if (!self->_parentObjectStore)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Context does not have a coordinator;  cannot obtain permenant ids without a coordinator." userInfo:0]);
  }

  v7 = *(self->_additionalPrivateIvars + 19);
  if (!v7)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [(NSArray *)objects countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(objects);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([v13[5] isTemporaryID] && objc_msgSend(v13, "managedObjectContext") == self && (objc_msgSend(v13, "isDeleted") & 1) == 0)
          {
            [v9 addObject:v13];
          }
        }

        v10 = [(NSArray *)objects countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    if (![v9 count])
    {

      v8 = 1;
      goto LABEL_28;
    }

    v21 = 0;
    v14 = atomic_load(&self->_isParentStoreContext);
    if (v14)
    {
      [(NSManagedObjectContext *)self lockObjectStore];
      v8 = [self->_parentObjectStore _parentObtainPermanentIDsForObjects:v9 context:self error:error];
      [(NSManagedObjectContext *)self unlockObjectStore];

      goto LABEL_28;
    }

    v15 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    persistentStoreCoordinator = [(NSManagedObjectContext *)self persistentStoreCoordinator];
    [(NSManagedObjectContext *)self lockObjectStore];
    v8 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator obtainPermanentIDsForObjects:v9 error:&v21];
    [(NSManagedObjectContext *)self unlockObjectStore];

    v17 = v21;
    [v15 drain];
    if (!v21)
    {
      goto LABEL_28;
    }

    v18 = v21;
    if (error)
    {
      *error = v21;
    }

LABEL_27:
    v8 = 0;
    goto LABEL_28;
  }

  if (!error)
  {
    goto LABEL_27;
  }

  v8 = 0;
  *error = v7;
LABEL_28:
  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

- (uint64_t)_handleError:(uint64_t *)error withError:
{
  if (self)
  {
    [NSManagedObjectContext _handleError:a2 withError:error];
  }

  return 0;
}

- (void)_thereIsNoSadnessLikeTheDeathOfOptimism
{
  objc_opt_class();
  v2 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v3 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v5 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        v6 = buf;
        goto LABEL_7;
      }
    }

    else if (v5)
    {
      LOWORD(v7) = 0;
      v6 = &v7;
LABEL_7:
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: fatal: Unable to recover from optimistic locking failure.\n\n", v6, 2u);
    }
  }

  _NSCoreDataLog_console(1, "fatal: Unable to recover from optimistic locking failure.\n", v7);
  objc_autoreleasePoolPop(v2);
  __break(1u);
}

- (void)_youcreatedanNSManagedObjectContextOnthemainthreadandillegallypassedittoabackgroundthread
{
  objc_opt_class();
  v2 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v3 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v5 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        v6 = buf;
        goto LABEL_7;
      }
    }

    else if (v5)
    {
      LOWORD(v7) = 0;
      v6 = &v7;
LABEL_7:
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: fatal: This NSManagedObjectContext was created on the main thread and illegally passed to a background thread.\n\n", v6, 2u);
    }
  }

  _NSCoreDataLog_console(1, "fatal: This NSManagedObjectContext was created on the main thread and illegally passed to a background thread.\n", v7);
  objc_autoreleasePoolPop(v2);
  __break(1u);
}

- (uint64_t)_generateOptLockExceptionForConstraintFailure:(uint64_t)result
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    if ([a2 code] == 1551)
    {
      v3 = [objc_msgSend(a2 "userInfo")];
      v4 = *MEMORY[0x1E695D930];
      v12 = @"conflictList";
      v13 = v3;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v6 = @"constraint validation failure";
      v7 = _NSCoreDataOptimisticLockingException;
      v8 = v4;
    }

    else
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      v14 = *MEMORY[0x1E696AA08];
      v15[0] = a2;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v6 = @"Attempting to generate a constraint exception for non constraint error.";
      v7 = v9;
      v8 = v10;
    }

    result = [(__objc2_class *)v7 exceptionWithName:v8 reason:v6 userInfo:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_advanceQueryGenerationForSave
{
  v1 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = [self _retainedCurrentQueryGeneration:self[20]];
    if (v3)
    {
      [self _setQueryGenerationFromToken:v3 error:0];
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      [self _setQueryGenerationFromToken:+[NSQueryGenerationToken unpinnedQueryGenerationToken](NSQueryGenerationToken error:{"unpinnedQueryGenerationToken"), 0}];
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)save:(NSError *)error
{
  v66[2] = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if ((*&self->_flags & 0x4080) != 0)
  {
    if (error)
    {
      v65[0] = @"message";
      v65[1] = @"stack trace";
      v66[0] = @"attempt to recursively call -save: on the context aborted";
      v66[1] = [MEMORY[0x1E696AF00] callStackSymbols];
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:132001 userInfo:v5];
LABEL_9:
      v8 = 0;
      *error = v6;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = *(self->_additionalPrivateIvars + 19);
  if (v7)
  {
    if (error)
    {
      v6 = v7;
      goto LABEL_9;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  [(NSManagedObjectContext *)self _PFAutoreleasePoolReferenceQueueTrampoline];
  v63 = 0;
  flags = self->_flags;
  v12 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v13 = atomic_load(&self->_isParentStoreContext);
  if ((v13 & 1) == 0)
  {
    v14 = [self->_additionalPrivateIvars[12] _isEnabled] ^ 1;
  }

  *&self->_flags |= 0x4000u;
  v54 = v12;
  v55 = error;
  v53 = flags;
  [(NSManagedObjectContext *)self _processRecentChanges:?];
  v15 = self->_flags;
  if ((*&v15 & 0x10000) != 0)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v15 = self->_flags;
  }

  if (error)
  {
    v15 = (*&v15 | 4);
    self->_flags = v15;
    error = &v63;
  }

  self->_flags = (*&v15 | 0x80);
  if ([(NSManagedObjectContext *)self _prepareForPushChanges:?])
  {
    ++self->_ignoreChangeNotification;
    _newSaveRequestForCurrentState = [(NSManagedObjectContext *)self _newSaveRequestForCurrentState];
    v57 = 0;
    v16 = 0;
    v52 = *MEMORY[0x1E696A250];
    v17 = 1;
    while (1)
    {
      v18 = v17;
      if ((v17 & 1) == 0)
      {
LABEL_65:
        v8 = v18 ^ 1;
        v43 = 1;
        goto LABEL_66;
      }

      v63 = 0;
      if ((v16 & 1) == 0)
      {
        [(NSManagedObjectContext *)self lockObjectStore];
      }

      v19 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      ++v57;
      if ([(NSManagedObjectContext *)self _allowAncillaryEntities])
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        persistentStoreCoordinator = [(NSManagedObjectContext *)self persistentStoreCoordinator];
        if (persistentStoreCoordinator && (modelMap = persistentStoreCoordinator->_modelMap) != 0)
        {
          models = modelMap->_models;
        }

        else
        {
          models = 0;
        }

        v23 = [(NSArray *)models countByEnumeratingWithState:&v59 objects:v64 count:16];
        if (v23)
        {
          v24 = *v60;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v60 != v24)
              {
                objc_enumerationMutation(models);
              }

              if (([(NSManagedObjectModel *)*(*(&v59 + 1) + 8 * i) _hasEntityWithUniquenessConstraints]& 1) != 0)
              {
                hasEntityWithUniqueness = 1;
                goto LABEL_39;
              }
            }

            v23 = [(NSArray *)models countByEnumeratingWithState:&v59 objects:v64 count:16];
            hasEntityWithUniqueness = 0;
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          hasEntityWithUniqueness = 0;
        }
      }

      else
      {
        hasEntityWithUniqueness = [(NSManagedObjectModel *)[(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)self persistentStoreCoordinator] managedObjectModel] _hasEntityWithUniquenessConstraints];
      }

LABEL_39:
      if ([(NSMutableSet *)self->_insertedObjects count])
      {
        if (hasEntityWithUniqueness)
        {
          goto LABEL_43;
        }
      }

      else if ((([(NSMutableSet *)self->_changedObjects count]!= 0) & hasEntityWithUniqueness) != 0)
      {
LABEL_43:
        v27 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_insertedObjects];
        [v27 unionSet:self->_changedObjects];
        allObjects = [v27 allObjects];

        if ((*(&self->_flags + 2) & 0x80) == 0)
        {
          v29 = *(self->_additionalPrivateIvars + 9);
          if (!v29)
          {
            v29 = [[NSConstraintValidator alloc] initWithManagedObjectContext:?];
            *(self->_additionalPrivateIvars + 9) = v29;
          }

          [(NSConstraintValidator *)v29 registerObjects:allObjects];
          validateForSave = [(NSConstraintValidator *)v29 validateForSave];
          [(NSConstraintValidator *)v29 reset];
          if (validateForSave)
          {
            v42 = [(NSManagedObjectContext *)self _generateOptLockExceptionForConstraintFailure:validateForSave];
            objc_exception_throw(v42);
          }
        }
      }

      v17 = 1;
      if ([self->_parentObjectStore executeRequest:_newSaveRequestForCurrentState withContext:self error:&v63])
      {
        parentObjectStore = self->_parentObjectStore;
        allObjects2 = [(NSMutableSet *)self->_insertedObjects allObjects];
        if ([allObjects2 count])
        {
          v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allObjects2, "count")}];
          v34 = [allObjects2 count];
          if (v34)
          {
            for (j = 0; j != v34; ++j)
            {
              v36 = [allObjects2 objectAtIndex:j];
              objectID = [v36 objectID];
              if (([objectID isTemporaryID] & 1) == 0)
              {
                [v33 addObject:objectID];
                if (v36)
                {
                  v36[4] |= 0x200u;
                }
              }
            }
          }

          [parentObjectStore managedObjectContextDidRegisterObjectsWithIDs:v33 generation:{-[NSManagedObjectContext _queryGenerationToken](self, "_queryGenerationToken")}];
        }

        [(NSManagedObjectContext *)self unlockObjectStore];
        v17 = 0;
        v38 = 0;
        v16 = 0;
      }

      else
      {
        v38 = 1;
        v16 = 1;
      }

      v39 = v63;
      [v19 drain];
      v40 = 0;
      v41 = v63;
      if ((v38 | 8) == 8)
      {
        v38 = 0;
      }

      if (v38)
      {
        goto LABEL_65;
      }
    }
  }

  v8 = 0;
  v43 = 0;
  v16 = 0;
  _newSaveRequestForCurrentState = 0;
LABEL_66:
  v44 = v63;

  [v54 drain];
  if (v63)
  {
    v45 = v63;
    if (v55)
    {
      *v55 = v63;
    }
  }

  if (v16)
  {
    [(NSManagedObjectContext *)self unlockObjectStore];
  }

  v46 = self->_flags;
  self->_flags = (*&v46 & 0xFEFFBF77);
  if (v43)
  {
    --self->_ignoreChangeNotification;
  }

  self->_flags = (*&v46 & 0xFEFFBF73 | v53 & 4);
  if (v8)
  {
    v47 = v63;
    v48 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    [(NSManagedObjectContext *)self _didSaveChanges];
    if ((*(&self->_flags + 3) & 2) != 0)
    {
      [(NSManagedObjectContext *)self refreshAllObjects];
    }

    [v48 drain];
    [(NSManagedObjectContext *)self _processReferenceQueue:?];
    v49 = v63;
    v50 = *(self->_additionalPrivateIvars + 12);
    if ([(NSQueryGenerationToken *)v50 _isEnabled]&& v50 != +[NSQueryGenerationToken currentQueryGenerationToken])
    {
      v51 = v50;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __31__NSManagedObjectContext_save___block_invoke;
      v58[3] = &unk_1E6EC1600;
      v58[4] = self;
      v58[5] = v50;
      [_PFAutoreleasePoolThunk thunkWithBlock:v58];
    }

    if (self->_dispatchQueue)
    {
      [(NSManagedObjectContext *)self _registerAsyncReferenceCallback];
    }
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (uint64_t)_prepareForPushChanges:(uint64_t)changes
{
  if (!changes)
  {
    return 0;
  }

  [changes discardEditing];
  v4 = *(changes + 40);
  if (((v4 >> 1) & 1) == 0)
  {
    *(changes + 40) = v4 | 2;
  }

  v5 = (v4 >> 1) & 1;
  if (([(NSManagedObjectContext *)changes _processRecentChanges:a2]& 1) == 0)
  {
    v14 = 0;
    *(changes + 40) = *(changes + 40) & 0xFFFFFDF5 | (2 * v5);
    return v14;
  }

  [*(*(changes + 168) + 40) disableUndoRegistration];
  v6 = 0;
  v7 = 1;
  while (!v6 || [(NSManagedObjectContext *)changes _processRecentChanges:a2])
  {
    v8 = *(changes + 40);
    *(changes + 40) = v8 | 8;
    v9 = (v8 >> 2) & 1;
    v16 = 0;
    if ([(NSManagedObjectContext *)changes _validateObjects:2 forOperation:&v16 error:v9 exhaustive:1 forSave:?])
    {
      v10 = [(NSManagedObjectContext *)changes _validateObjects:0 forOperation:&v16 error:(v8 >> 2) & 1 exhaustive:1 forSave:?];
      if ((v8 & 4) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
      if ((v8 & 4) == 0)
      {
LABEL_12:
        if (!v10)
        {
          goto LABEL_20;
        }
      }
    }

    if ([*(changes + 96) count])
    {
      if ([*(changes + 88) count] || objc_msgSend(*(changes + 80), "count"))
      {
        v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:*(changes + 96)];
        [v11 minusSet:*(changes + 88)];
        [v11 minusSet:*(changes + 80)];
      }

      else
      {
        v11 = *(changes + 96);
        v13 = v11;
      }

      if (v10)
      {
        v10 = [(NSManagedObjectContext *)changes _validateObjects:v11 forOperation:1 error:&v16 exhaustive:v9 forSave:1];
      }
    }

LABEL_20:
    if (a2 && (v10 & 1) == 0)
    {
      *a2 = v16;
    }

    if (!v10)
    {
      break;
    }

    v12 = *(changes + 40);
    *(changes + 40) = v12 & 0xFFFFFDFF | ((v7 == 998) << 9);
    if (v7 == 1000)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed to process pending changes before save.  The context is still dirty after 1000 attempts.  Typically this recursive dirtying is caused by a bad validation method userInfo:{-willSave, or notification handler.", 0}]);
    }

    *(changes + 40) = v12 & 0xFFFFFDF7 | ((v7 == 998) << 9);
    --v6;
    ++v7;
    if ((v12 & 0x100) == 0)
    {
      v14 = 1;
      goto LABEL_30;
    }
  }

  v14 = 0;
LABEL_30:
  [*(*(changes + 168) + 40) enableUndoRegistration];
  *(changes + 40) = *(changes + 40) & 0xFFFFFDF5 | (2 * v5);
  return v14;
}

void __31__NSManagedObjectContext_save___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3[21] + 96) == v2)
  {
    [v3 _setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), 0}];
    v2 = *(a1 + 40);
  }
}

- (NSManagedObject)objectWithID:(NSManagedObjectID *)objectID
{
  v3 = objectID;
  if (!_PF_Threading_Debugging_level)
  {
    if (objectID)
    {
      goto LABEL_3;
    }

LABEL_16:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil is not a valid object ID" userInfo:0]);
  }

  _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v5 = atomic_load(&self->_isParentStoreContext);
  if ((v5 & 1) == 0)
  {
    return _PFRetainedObjectIDCore(self, v3, 0, 1);
  }

  Value = [(NSManagedObjectContext *)self objectRegisteredForID:v3];
  if (!Value)
  {
    if ([(NSManagedObjectID *)v3 isTemporaryID])
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3052000000;
      v16 = __Block_byref_object_copy__13;
      v17 = __Block_byref_object_dispose__13;
      v18 = 0;
      [(NSManagedObjectContext *)self lockObjectStore];
      parentObjectStore = self->_parentObjectStore;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __39__NSManagedObjectContext_objectWithID___block_invoke;
      v12[3] = &unk_1E6EC23C8;
      v12[5] = v3;
      v12[6] = &v13;
      v12[4] = self;
      _perform(parentObjectStore, v12);
      [(NSManagedObjectContext *)self unlockObjectStore];
      if (v14[5])
      {
        v3 = v14[5];
      }

      goto LABEL_12;
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = __Block_byref_object_copy__13;
    v17 = __Block_byref_object_dispose__13;
    v18 = 0;
    [(NSManagedObjectContext *)self lockObjectStore];
    v8 = self->_parentObjectStore;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__NSManagedObjectContext_objectWithID___block_invoke_2;
    v11[3] = &unk_1E6EC23C8;
    v11[5] = v3;
    v11[6] = &v13;
    v11[4] = self;
    _perform(v8, v11);
    [(NSManagedObjectContext *)self unlockObjectStore];
    v9 = v14[5];
    if (!v9 || (Value = _PFCMT_GetValue(&self->_infoByGID->super.isa, v9)) == 0)
    {
LABEL_12:
      _Block_object_dispose(&v13, 8);
      return _PFRetainedObjectIDCore(self, v3, 0, 1);
    }

    _Block_object_dispose(&v13, 8);
  }

  return Value;
}

uint64_t __39__NSManagedObjectContext_objectWithID___block_invoke(uint64_t result)
{
  v1 = *(*(*(*(result + 32) + 32) + 168) + 8);
  if (v1)
  {
    v2 = result;
    result = [*v1 objectForKey:*(result + 40)];
    *(*(*(v2 + 48) + 8) + 40) = result;
  }

  return result;
}

uint64_t __39__NSManagedObjectContext_objectWithID___block_invoke_2(uint64_t result)
{
  v1 = *(*(*(*(result + 32) + 32) + 168) + 8);
  if (v1)
  {
    v2 = result;
    result = [*(v1 + 8) objectForKey:*(result + 40)];
    *(*(*(v2 + 48) + 8) + 40) = result;
  }

  return result;
}

- (NSManagedObject)existingObjectWithID:(NSManagedObjectID *)objectID error:(NSError *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (!_PF_Threading_Debugging_level)
  {
    if (objectID)
    {
      goto LABEL_3;
    }

LABEL_29:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil is not a valid object ID" userInfo:0]);
  }

  _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  if (!objectID)
  {
    goto LABEL_29;
  }

LABEL_3:
  v7 = *(self->_additionalPrivateIvars + 19);
  if (v7)
  {
    if (error)
    {
      v8 = v7;
LABEL_16:
      v10 = 0;
      *error = v8;
      goto LABEL_27;
    }

LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  if (![(NSManagedObjectID *)objectID isTemporaryID])
  {
    v16 = _PFRetainedObjectIDCore(self, objectID, error, 0);
    if (v16)
    {
      v17 = v16;
      v23 = 0;
      v10 = [(NSFaultHandler *)_insertion_fault_handler fulfillFault:v16 withContext:self error:&v23];
      if (v10 == v17)
      {
        v18 = v17;
      }

      else
      {
      }

      if (v23)
      {
        if (error)
        {
          v10 = 0;
          *error = v23;
          goto LABEL_27;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_27;
        }

        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = objectID;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: existingObjectWithID incorrectly returned nil without an error set for objectID %@\n", buf, 0xCu);
        }

        v20 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v27 = objectID;
          _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: existingObjectWithID incorrectly returned nil without an error set for objectID %@", buf, 0xCu);
        }
      }

      goto LABEL_26;
    }

    if (!error)
    {
      goto LABEL_26;
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A250];
    v24 = @"objectID";
    v25 = objectID;
    v13 = MEMORY[0x1E695DF20];
    v14 = &v25;
    v15 = &v24;
LABEL_15:
    v8 = [v11 errorWithDomain:v12 code:133000 userInfo:{objc_msgSend(v13, "dictionaryWithObjects:forKeys:count:", v14, v15, 1)}];
    goto LABEL_16;
  }

  v9 = [(NSManagedObjectContext *)self objectRegisteredForID:objectID];
  v10 = v9;
  if (error && !v9)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A250];
    v28 = @"objectID";
    v29[0] = objectID;
    v13 = MEMORY[0x1E695DF20];
    v14 = v29;
    v15 = &v28;
    goto LABEL_15;
  }

LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

- (uint64_t)_checkObjectForExistenceAndCacheRow:(uint64_t)row
{
  objectID = [a2 objectID];
  v5 = *(a2 + 16);
  if ([objectID isTemporaryID])
  {
    if (!*(a2 + 32) || (v6 = atomic_load((row + 48)), (v6 & 1) == 0))
    {
      v12 = 0;
      [row stalenessInterval];
      return [a2 isFault];
    }
  }

  v12 = 0;
  [row stalenessInterval];
  if ((v5 & 0x12) != 0)
  {
    return [a2 isFault];
  }

  v9 = v7;
  *(row + 144) = 0;
  [(NSManagedObjectContext *)row lockObjectStore];
  v10 = [*(row + 32) newValuesForObjectWithID:objectID withContext:row error:&v12];
  if (v10)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *(row + 144) = v9;

  [(NSManagedObjectContext *)row unlockObjectStore];
  return v8;
}

- (NSPersistentStoreResult)executeRequest:(NSPersistentStoreRequest *)request error:(NSError *)error
{
  v90 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v7 = *(self->_additionalPrivateIvars + 19);
  if (v7)
  {
    if (error)
    {
      v8 = v7;
LABEL_6:
      v9 = 0;
LABEL_7:
      *error = v8;
      goto LABEL_112;
    }

    goto LABEL_71;
  }

  requestType = [(NSPersistentStoreRequest *)request requestType];
  [(NSManagedObjectContext *)self _PFAutoreleasePoolReferenceQueueTrampoline];
  if (objc_opt_respondsToSelector())
  {
    [(NSPersistentStoreRequest *)request _resolveEntityWithContext:self];
  }

  if (requestType == NSSaveRequestType)
  {
    if (error)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF435058];
      goto LABEL_6;
    }

LABEL_71:
    v9 = 0;
    goto LABEL_112;
  }

  if (requestType != NSFetchRequestType)
  {
    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (_PF_Threading_Debugging_level)
      {
        _PFAssertSafeMultiThreadedAccess_impl(self, sel__executeAsynchronousFetchRequest_);
      }

      fetchRequest = [(NSPersistentStoreRequest *)request fetchRequest];
      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      v75 = &v76;
      v76 = 0;
      [fetchRequest _resolveEntityWithContext:self];
      if ([fetchRequest entity])
      {
        if (self->_dispatchQueue)
        {
          resultType = [fetchRequest resultType];
          if (resultType == 4)
          {
            v18 = [(NSManagedObjectContext *)self countForFetchRequest:fetchRequest error:v73[3]];
            if (v18 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v9 = 0;
            }

            else
            {
              v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
              v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v47];
            }
          }

          else
          {
            v37 = objc_alloc_init(MEMORY[0x1E696AAC8]);
            if (-[NSManagedObjectContext hasChanges](self, "hasChanges") && ((v38 = [fetchRequest includesPendingChanges], resultType != 2) ? (v39 = v38) : (v39 = 0), v39 == 1))
            {
              if (![(NSManagedObjectContext *)self _attemptCoalesceChangesForFetch])
              {
                [(NSManagedObjectContext *)self _processRecentChanges:?];
              }

              v40 = 1;
            }

            else
            {
              v40 = 0;
            }

            v41 = [(NSManagedObjectContext *)&self->super.isa _createStoreFetchRequestForFetchRequest:fetchRequest];
            v71[0] = 0;
            v71[1] = v71;
            v71[2] = 0x3052000000;
            v71[3] = __Block_byref_object_copy__13;
            v71[4] = __Block_byref_object_dispose__13;
            v71[5] = 0;
            v42 = [v41 resultType] == 0;
            includesPropertyValues = [v41 includesPropertyValues];
            v70[0] = 0;
            v70[1] = v70;
            v70[2] = 0x3052000000;
            v70[3] = __Block_byref_object_copy__13;
            v70[4] = __Block_byref_object_dispose__13;
            v70[5] = 0;
            [v37 drain];
            currentProgress = [MEMORY[0x1E696AE38] currentProgress];
            if (currentProgress && (currentProgress = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:currentProgress userInfo:0]) != 0)
            {
              if ([(NSPersistentStoreRequest *)request estimatedResultCount]< 1)
              {
                estimatedResultCount = -1;
              }

              else
              {
                estimatedResultCount = [(NSPersistentStoreRequest *)request estimatedResultCount];
              }

              [currentProgress setTotalUnitCount:estimatedResultCount];
              [currentProgress setKind:@"managed objects"];
              v46 = 0;
            }

            else
            {
              v46 = 1;
            }

            v64 = 0;
            v65 = &v64;
            v66 = 0x3052000000;
            v67 = __Block_byref_object_copy__13;
            v68 = __Block_byref_object_dispose__13;
            v69 = [[NSAsynchronousFetchResult alloc] initForFetchRequest:request withContext:self andProgress:currentProgress completetionBlock:[(NSPersistentStoreRequest *)request completionBlock]];
            [v41 _setAsyncResultHandle:v65[5]];
            if ((v46 & 1) == 0)
            {
              v57 = [_PFWeakReference weakReferenceWithObject:?];
              v63[0] = MEMORY[0x1E69E9820];
              v63[1] = 3221225472;
              v63[2] = __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke;
              v63[3] = &unk_1E6EC16F0;
              v63[4] = v57;
              [currentProgress setCancellationHandler:v63];
            }

            parentObjectStore = self->_parentObjectStore;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_2;
            v78 = &unk_1E6EC2440;
            selfCopy = self;
            v80 = v41;
            v83 = v70;
            v84 = v71;
            v85 = &v72;
            v86 = &v64;
            v87 = v40;
            v81 = request;
            v82 = fetchRequest;
            v88 = v42;
            v89 = includesPropertyValues;
            [parentObjectStore performBlock:buf];
            v9 = v65[5];
            _Block_object_dispose(&v64, 8);
            _Block_object_dispose(v70, 8);
            _Block_object_dispose(v71, 8);
          }

          _Block_object_dispose(&v72, 8);
          goto LABEL_112;
        }

        v61 = MEMORY[0x1E695DF30];
        request = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSConfinementConcurrencyType context %@ cannot support asynchronous fetch request %@.", self, request];
      }

      else
      {
        v61 = MEMORY[0x1E695DF30];
        request = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ A fetch request must have an entity.", NSStringFromSelector(sel__executeAsynchronousFetchRequest_)];
      }

      objc_exception_throw([v61 exceptionWithName:*MEMORY[0x1E695D940] reason:request userInfo:0]);
    }

LABEL_31:
    if (self->_parentObjectStore)
    {
      v19 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v71[0] = 0;
      [(NSManagedObjectContext *)self lockObjectStore];
      v20 = [self->_parentObjectStore executeRequest:request withContext:self error:v71];
      [(NSManagedObjectContext *)self unlockObjectStore];
      if (v71[0])
      {
        v21 = v71[0];
        if (v71[0])
        {
          if (error)
          {
            *error = v71[0];
          }
        }

        else
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
            *&buf[12] = 1024;
            *&buf[14] = 2027;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v31 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
            *&buf[12] = 1024;
            *&buf[14] = 2027;
            _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
          }
        }
      }

      [v19 drain];
      v32 = 0;
      v33 = v71[0];
      if (self->_dispatchQueue && v20)
      {
        [(NSManagedObjectContext *)self _registerAsyncReferenceCallback];
      }

      if ((!v20 || v71[0]) && (!v71[0] || v20))
      {
        v34 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: fault: Either a non nil result OR an error OR an exception\n", buf, 2u);
        }

        v35 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Either a non nil result OR an error OR an exception", buf, 2u);
        }
      }

      v36 = v20;
      goto LABEL_105;
    }

    if (requestType - 5 > 2)
    {
      switch(requestType)
      {
        case 0xBuLL:
          v49 = [NSPersistentCloudKitContainerEventResult alloc];
          v27 = [(NSPersistentCloudKitContainerEventResult *)v49 initWithResult:NSArray_EmptyArray ofType:[(NSPersistentStoreRequest *)request resultType]];
          break;
        case 0xAuLL:
          v48 = [NSSQLiteIndexStatisticsResult alloc];
          v27 = [(NSSQLiteIndexStatisticsResult *)v48 initWithResult:NSArray_EmptyArray];
          break;
        case 8uLL:
          v25 = [NSPersistentHistoryResult alloc];
          resultType2 = [(NSPersistentStoreRequest *)request resultType];
          v27 = [(NSPersistentHistoryResult *)v25 initWithResultType:resultType2 andResult:NSArray_EmptyArray];
          break;
        default:
          v50 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = request;
            *&buf[12] = 2048;
            *&buf[14] = requestType;
            _os_log_error_impl(&dword_18565F000, v50, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown request - %@ - %lu\n", buf, 0x16u);
          }

          v51 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            *&buf[4] = request;
            *&buf[12] = 2048;
            *&buf[14] = requestType;
            _os_log_fault_impl(&dword_18565F000, v51, OS_LOG_TYPE_FAULT, "CoreData: Unknown request - %@ - %lu", buf, 0x16u);
          }

          v27 = 0;
          break;
      }

      goto LABEL_104;
    }

    if (dword_1ED4BEEC8 == 1)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Context does not have a coordinator; cannot perform executeRequest:error:." userInfo:0]);
    }

    v22 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v23 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v24 = "CoreData: error: Context does not have a coordinator; cannot perform executeRequest:error:.\n";
LABEL_114:
          _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
        }
      }

      else
      {
        v23 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v24 = "CoreData: warning: Context does not have a coordinator; cannot perform executeRequest:error:.\n";
          goto LABEL_114;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2;
    }

    _NSCoreDataLog_console(v52, "Context does not have a coordinator; cannot perform executeRequest:error:.");
    objc_autoreleasePoolPop(v22);
    if (requestType == NSBatchDeleteRequestType)
    {
      v55 = [NSBatchDeleteResult alloc];
      resultType3 = [(NSPersistentStoreRequest *)request resultType];
      v27 = [(NSBatchDeleteResult *)v55 initWithResultType:resultType3 andObject:NSArray_EmptyArray];
    }

    else
    {
      if (requestType == NSBatchUpdateRequestType)
      {
        v53 = [NSBatchUpdateResult alloc];
      }

      else
      {
        v53 = [NSBatchInsertResult alloc];
      }

      resultType4 = [(NSPersistentStoreRequest *)request resultType];
      v27 = [(NSBatchUpdateResult *)v53 initWithResultType:resultType4 andObject:NSArray_EmptyArray];
    }

LABEL_104:
    v36 = v27;
LABEL_105:
    v9 = v36;
    goto LABEL_112;
  }

  v11 = [[NSAsynchronousFetchRequest alloc] initWithFetchRequest:request completionBlock:0];
  v9 = [[NSAsynchronousFetchResult alloc] initForFetchRequest:v11 withContext:self andProgress:0 completetionBlock:0];

  v12 = v9;
  v71[0] = 0;
  v13 = [(NSManagedObjectContext *)self executeFetchRequest:request error:v71];
  v8 = v71[0];
  if (v13)
  {
    if (v71[0])
    {
      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v71[0];
        _os_log_error_impl(&dword_18565F000, v14, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetching generated a result AND an error: %@\n", buf, 0xCu);
      }

      v15 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v71[0];
        _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Fetching generated a result AND an error: %@", buf, 0xCu);
      }

      [(NSPersistentStoreResult *)v9 setOperationError:v71[0]];
    }

    [(NSAsynchronousFetchResult *)v9 setFinalResult:v13];
  }

  else
  {
    if (!v71[0])
    {
      v28 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v28, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetching returned nil AND failed to generate an error\n", buf, 2u);
      }

      v29 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v29, OS_LOG_TYPE_FAULT, "CoreData: Fetching returned nil AND failed to generate an error", buf, 2u);
      }

      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF435030];
    }

    v9 = 0;
    if (error)
    {
      goto LABEL_7;
    }
  }

LABEL_112:
  v59 = *MEMORY[0x1E69E9840];
  return v9;
}

- (uint64_t)_countForFetchRequest_:(id *)request_ error:
{
  v100 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_15;
  }

  v4 = result;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(result, sel__countForFetchRequest__error_);
  }

  v5 = *(*(v4 + 168) + 152);
  if (v5)
  {
    if (request_)
    {
      v6 = v5;
      result = 0;
      *request_ = v6;
    }

    else
    {
      result = 0;
    }

    goto LABEL_15;
  }

  [a2 _resolveEntityWithContext:v4];
  if (![v4 hasChanges] || !objc_msgSend(a2, "includesPendingChanges") || objc_msgSend(a2, "resultType") == 2)
  {
    result = [(NSManagedObjectContext *)v4 _countWithNoChangesForRequest:a2 error:request_];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (z9dsptsiQ80etb9782fsrs98bfdle88)
      {
        result = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        result = 0;
      }
    }

    goto LABEL_15;
  }

  if (![(NSManagedObjectContext *)v4 _attemptCoalesceChangesForFetch])
  {
    [(NSManagedObjectContext *)v4 _processRecentChanges:?];
  }

  v63 = v4;
  affectedStores = [a2 affectedStores];
  entity = [a2 entity];
  v61 = a2;
  if ([objc_msgSend(entity "subentitiesByName")])
  {
    includesSubentities = [a2 includesSubentities];
  }

  else
  {
    includesSubentities = 0;
  }

  v11 = 0;
  callBacks.version = *MEMORY[0x1E695E9F8];
  *&callBacks.retain = *(MEMORY[0x1E695E9F8] + 8);
  v12 = *(MEMORY[0x1E695E9F8] + 24);
  callBacks.equal = 0;
  callBacks.hash = 0;
  callBacks.copyDescription = v12;
  v13 = *(v63 + 96);
  cf = *(v63 + 56);
  allocator = *MEMORY[0x1E695E480];
  v14 = 1;
  do
  {
    v69 = v14;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v15 = [v13 countByEnumeratingWithState:&v77 objects:v96 count:16];
    if (v15)
    {
      v16 = *v78;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v78 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v77 + 1) + 8 * i);
          if (!affectedStores || [affectedStores indexOfObjectIdenticalTo:{objc_msgSend(objc_msgSend(*(*(&v77 + 1) + 8 * i), "objectID"), "persistentStore")}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            entity2 = [v18 entity];
            if (entity2 == entity || includesSubentities && [entity _subentitiesIncludes:entity2])
            {
              if (!v11)
              {
                v11 = CFSetCreateMutable(allocator, 0, &callBacks);
              }

              CFSetAddValue(v11, v18);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v77 objects:v96 count:16];
      }

      while (v15);
    }

    v14 = 0;
    v13 = cf;
  }

  while ((v69 & 1) != 0);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v20 = *(v63 + 88);
  v21 = [v20 countByEnumeratingWithState:&v73 objects:v95 count:16];
  if (v21)
  {
    cfa = 0;
    v22 = *v74;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v74 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v73 + 1) + 8 * j);
        entity3 = [v24 entity];
        if (entity3 == entity || includesSubentities && [entity _subentitiesIncludes:entity3])
        {
          v26 = cfa;
          if (!cfa)
          {
            v26 = CFSetCreateMutable(allocator, 0, &callBacks);
          }

          cfa = v26;
          CFSetAddValue(v26, v24);
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v73 objects:v95 count:16];
    }

    while (v21);
  }

  else
  {
    cfa = 0;
  }

  if ([(__CFSet *)v11 count]|| [(__CFSet *)cfa count])
  {
    fetchLimit = [v61 fetchLimit];
    v94 = 0;
    if (![v61 entity])
    {
      v58 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ A fetch request must have an entity.", NSStringFromSelector(sel__countWithMergedChangesForRequest_possibleChanges_possibleDeletes_error_)), 0}];
      objc_exception_throw(v58);
    }

    v27 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if ([v63 hasChanges] && objc_msgSend(v61, "includesPendingChanges") && objc_msgSend(v61, "resultType") != 2 && !-[NSManagedObjectContext _attemptCoalesceChangesForFetch](v63))
    {
      [(NSManagedObjectContext *)v63 _processRecentChanges:?];
    }

    v28 = [v61 copy];
    [NSManagedObjectContext _unlimitRequest:v28];
    [v28 setIncludesPropertyValues:0];
    [v28 setResultType:1];
    [v28 setSortDescriptors:0];
    [(NSManagedObjectContext *)v63 lockObjectStore];
    v29 = [*(v63 + 32) executeRequest:v28 withContext:v63 error:&v94];
    v30 = v94;
    v31 = v29;

    [v27 drain];
    [(NSManagedObjectContext *)v63 unlockObjectStore];
    if (v94)
    {
      v32 = v94;
      if (request_)
      {
        *request_ = v94;
      }
    }

    else if (v29)
    {
      v66 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v29];

      v59 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      predicate = [v61 predicate];
      affectedStores2 = [v61 affectedStores];
      entity4 = [v61 entity];
      if ([objc_msgSend(entity4 "subentitiesByName")])
      {
        allocatora = [v61 includesSubentities];
      }

      else
      {
        allocatora = 0;
      }

      if (predicate)
      {
        v70 = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:predicate, 0];
        v38 = v70;
      }

      else
      {
        v70 = [MEMORY[0x1E696AE18] predicateWithValue:1];
      }

      if ([affectedStores2 count])
      {
        v39 = affectedStores2;
      }

      else
      {
        v39 = 0;
      }

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v40 = [(__CFSet *)v11 countByEnumeratingWithState:&v90 objects:v99 count:16];
      if (v40)
      {
        v41 = *v91;
        do
        {
          for (k = 0; k != v40; ++k)
          {
            if (*v91 != v41)
            {
              objc_enumerationMutation(v11);
            }

            v43 = *(*(&v90 + 1) + 8 * k);
            objectID = [v43 objectID];
            if ([v70 evaluateWithObject:v43])
            {
              [v66 addObject:objectID];
            }

            else
            {
              [v66 removeObject:objectID];
            }
          }

          v40 = [(__CFSet *)v11 countByEnumeratingWithState:&v90 objects:v99 count:16];
        }

        while (v40);
      }

      v45 = *(v63 + 80);
      v62 = *(v63 + 72);
      v46 = 1;
      do
      {
        v64 = v46;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v47 = [v45 countByEnumeratingWithState:&v86 objects:v98 count:16];
        if (v47)
        {
          v48 = *v87;
          do
          {
            for (m = 0; m != v47; ++m)
            {
              if (*v87 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v86 + 1) + 8 * m);
              objectID2 = [v50 objectID];
              v52 = objectID2;
              if (v39)
              {
                persistentStore = [objectID2 persistentStore];
                if (!persistentStore || [v39 indexOfObjectIdenticalTo:persistentStore] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  continue;
                }
              }

              entity5 = [v50 entity];
              if (entity5 == entity4 || allocatora && [entity4 _subentitiesIncludes:entity5])
              {
                if ([v70 evaluateWithObject:v50])
                {
                  [v66 addObject:v52];
                }
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v86 objects:v98 count:16];
          }

          while (v47);
        }

        v46 = 0;
        v45 = v62;
      }

      while ((v64 & 1) != 0);
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v55 = [(__CFSet *)cfa countByEnumeratingWithState:&v82 objects:v97 count:16];
      if (v55)
      {
        v56 = *v83;
        do
        {
          for (n = 0; n != v55; ++n)
          {
            if (*v83 != v56)
            {
              objc_enumerationMutation(cfa);
            }

            [v66 removeObject:{objc_msgSend(*(*(&v82 + 1) + 8 * n), "objectID")}];
          }

          v55 = [(__CFSet *)cfa countByEnumeratingWithState:&v82 objects:v97 count:16];
        }

        while (v55);
      }

      [v59 drain];
      v33 = [v66 count];

      if (fetchLimit - 1 < v33)
      {
        v33 = fetchLimit;
      }

      goto LABEL_68;
    }

    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = [(NSManagedObjectContext *)v63 _countWithNoChangesForRequest:v61 error:request_];
  }

LABEL_68:
  if (v11)
  {
    CFRelease(v11);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (z9dsptsiQ80etb9782fsrs98bfdle88)
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v34 = 0;
  }

  if (v33 == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = v34;
  }

  else
  {
    result = v33;
  }

LABEL_15:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_countWithNoChangesForRequest:(id *)request error:
{
  v59 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(a2 "substitutionVariables")])
  {
    fetchLimit = 1;
  }

  else
  {
    fetchLimit = [a2 fetchLimit];
  }

  v55 = 0;
  if (![a2 entity])
  {
    v37 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ A fetch request must have an entity.", NSStringFromSelector(sel__countWithNoChangesForRequest_error_)), 0}];
    objc_exception_throw(v37);
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [a2 copy];
  if (fetchLimit && [self hasChanges])
  {
    [NSManagedObjectContext _unlimitRequest:v7];
  }

  [v7 setResultType:4];
  [(NSManagedObjectContext *)self lockObjectStore];
  v8 = [self[4] executeRequest:v7 withContext:self error:&v55];
  v9 = v55;
  v10 = v8;

  [v6 drain];
  [(NSManagedObjectContext *)self unlockObjectStore];
  if (v55)
  {
    v11 = v55;
    if (request)
    {
      *request = v55;
    }

    goto LABEL_16;
  }

  if (!v8)
  {
LABEL_16:
    result = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_17;
  }

  if ([v8 count])
  {
    v12 = [objc_msgSend(v8 "lastObject")];
  }

  else
  {
    v12 = 0;
  }

  if ([self hasChanges] && objc_msgSend(a2, "includesPendingChanges"))
  {
    v39 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    predicate = [a2 predicate];
    affectedStores = [a2 affectedStores];
    entity = [a2 entity];
    if ([objc_msgSend(entity "subentitiesByName")])
    {
      includesSubentities = [a2 includesSubentities];
      if (predicate)
      {
LABEL_23:
        v41 = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:predicate, 0];
        v19 = v41;
LABEL_26:
        if (![affectedStores count])
        {
          affectedStores = 0;
        }

        callBacks.version = *MEMORY[0x1E695E9F8];
        *&callBacks.retain = *(MEMORY[0x1E695E9F8] + 8);
        v20 = *(MEMORY[0x1E695E9F8] + 24);
        callBacks.equal = 0;
        callBacks.hash = 0;
        callBacks.copyDescription = v20;
        v21 = [self[9] count];
        v22 = self[10];
        if (v21)
        {
          if ([self[10] count])
          {
            v22 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v23 = self[9];
            v24 = [v23 countByEnumeratingWithState:&v50 objects:v58 count:16];
            if (v24)
            {
              v25 = *v51;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v51 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  CFSetAddValue(v22, *(*(&v50 + 1) + 8 * i));
                }

                v24 = [v23 countByEnumeratingWithState:&v50 objects:v58 count:16];
              }

              while (v24);
            }

            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v27 = self[10];
            v28 = [v27 countByEnumeratingWithState:&v46 objects:v57 count:16];
            if (v28)
            {
              v29 = *v47;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v47 != v29)
                  {
                    objc_enumerationMutation(v27);
                  }

                  CFSetAddValue(v22, *(*(&v46 + 1) + 8 * j));
                }

                v28 = [v27 countByEnumeratingWithState:&v46 objects:v57 count:16];
              }

              while (v28);
            }

            v38 = 1;
          }

          else
          {
            v38 = 0;
            v22 = self[9];
          }
        }

        else
        {
          v38 = 0;
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v31 = [(__CFSet *)v22 countByEnumeratingWithState:&v42 objects:v56 count:16];
        if (v31)
        {
          v32 = *v43;
          do
          {
            for (k = 0; k != v31; ++k)
            {
              if (*v43 != v32)
              {
                objc_enumerationMutation(v22);
              }

              v34 = *(*(&v42 + 1) + 8 * k);
              if (affectedStores)
              {
                v35 = [objc_msgSend(*(*(&v42 + 1) + 8 * k) "objectID")];
                if (!v35 || [affectedStores indexOfObjectIdenticalTo:v35] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  continue;
                }
              }

              entity2 = [v34 entity];
              if (entity2 == entity || includesSubentities && [entity _subentitiesIncludes:entity2])
              {
                v12 += [v41 evaluateWithObject:v34];
              }
            }

            v31 = [(__CFSet *)v22 countByEnumeratingWithState:&v42 objects:v56 count:16];
          }

          while (v31);
        }

        if (v38)
        {
          CFRelease(v22);
        }

        [v39 drain];
        goto LABEL_64;
      }
    }

    else
    {
      includesSubentities = 0;
      if (predicate)
      {
        goto LABEL_23;
      }
    }

    v41 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    goto LABEL_26;
  }

LABEL_64:
  if (fetchLimit - 1 >= v12)
  {
    result = v12;
  }

  else
  {
    result = fetchLimit;
  }

LABEL_17:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSUInteger)countForFetchRequest:(NSFetchRequest *)request error:(NSError *)error
{
  result = [(NSManagedObjectContext *)self _countForFetchRequest_:error error:?];
  if (error)
  {
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      *error = 0;
    }
  }

  return result;
}

- (NSArray)executeFetchRequest:(NSFetchRequest *)request error:(NSError *)error
{
  v151 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v142 = 0;
  if (!request)
  {
    request = @"<null>";
    goto LABEL_179;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_179:
    v93 = MEMORY[0x1E695DF30];
    v94 = *MEMORY[0x1E695D940];
    request = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ is not a valid NSFetchRequest.", NSStringFromSelector(a2), request];
LABEL_180:
    v96 = request;
    v97 = v93;
    v98 = v94;
    goto LABEL_181;
  }

  v8 = *(self->_additionalPrivateIvars + 19);
  if (v8)
  {
    if (error)
    {
      v9 = v8;
      result = 0;
      *error = v9;
      goto LABEL_52;
    }

LABEL_51:
    result = 0;
    goto LABEL_52;
  }

  [(NSManagedObjectContext *)self _PFAutoreleasePoolReferenceQueueTrampoline];
  [(NSFetchRequest *)request _resolveEntityWithContext:self];
  if (![(NSFetchRequest *)request entity])
  {
    v93 = MEMORY[0x1E695DF30];
    v94 = *MEMORY[0x1E695D940];
    request = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ A fetch request must have an entity.", NSStringFromSelector(a2), v101];
    goto LABEL_180;
  }

  managedObjectModel = [(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)self persistentStoreCoordinator] managedObjectModel];
  selfCopy = self;
  if (managedObjectModel != [(NSEntityDescription *)[(NSFetchRequest *)request entity] managedObjectModel]&& ![(NSManagedObjectContext *)self _allowAncillaryEntities])
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The fetch request's entity %p '%@' appears to be from a different NSManagedObjectModel than this context's", -[NSFetchRequest entity](request, "entity"), -[NSEntityDescription name](-[NSFetchRequest entity](request, "entity"), "name")];
    v13 = [(NSDictionary *)[(NSManagedObjectModel *)[(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)self persistentStoreCoordinator] managedObjectModel] entitiesByName] objectForKey:[(NSEntityDescription *)[(NSFetchRequest *)request entity] name]];
    if (v13)
    {
      v14 = v13;
      v15 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v16 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v18 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v16)
        {
          if (v18)
          {
            LODWORD(callBacks.version) = 138412290;
            *(&callBacks.version + 4) = v12;
LABEL_177:
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", &callBacks, 0xCu);
          }
        }

        else if (v18)
        {
          LODWORD(callBacks.version) = 138412290;
          *(&callBacks.version + 4) = v12;
          goto LABEL_177;
        }
      }

      _NSCoreDataLog_console(1, "%@", v12);
      objc_autoreleasePoolPop(v15);
      request = [(NSFetchRequest *)request copy];
      [(NSFetchRequest *)request setEntity:v14];
      goto LABEL_18;
    }

    v99 = MEMORY[0x1E695DF30];
    v100 = *MEMORY[0x1E695D940];
    v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The fetch request's entity %p '%@' appears to be from a different NSManagedObjectModel than this context's", -[NSFetchRequest entity](request, "entity"), -[NSEntityDescription name](-[NSFetchRequest entity](request, "entity"), "name")];
    v97 = v99;
    v98 = v100;
LABEL_181:
    objc_exception_throw([v97 exceptionWithName:v98 reason:v96 userInfo:0]);
  }

LABEL_18:
  v107 = request;
  [(NSFetchRequest *)request allowEvaluation];
  resultType = [(NSFetchRequest *)request resultType];
  if (resultType == 4)
  {
    v20 = [(NSManagedObjectContext *)selfCopy countForFetchRequest:request error:error];
    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
      result = [MEMORY[0x1E695DEC8] arrayWithObject:v21];
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v22 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (resultType != 2 && [(NSFetchRequest *)request includesPendingChanges]&& [(NSManagedObjectContext *)selfCopy hasChanges])
  {
    if (![(NSManagedObjectContext *)selfCopy _attemptCoalesceChangesForFetch])
    {
      [(NSManagedObjectContext *)selfCopy _processRecentChanges:?];
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = [(NSManagedObjectContext *)&selfCopy->super.isa _createStoreFetchRequestForFetchRequest:?];
  resultType2 = [v24 resultType];
  includesPropertyValues = [v24 includesPropertyValues];
  [(NSManagedObjectContext *)selfCopy lockObjectStore];
  v25 = [selfCopy->_parentObjectStore executeRequest:v24 withContext:selfCopy error:&v142];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = v142;

  [v22 drain];
  [(NSManagedObjectContext *)selfCopy unlockObjectStore];
  v30 = v142;
  if (v142)
  {
    if (v26)
    {
      v31 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LODWORD(callBacks.version) = 138412290;
        *(&callBacks.version + 4) = v142;
        _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetching generated an error AND a result: %@\n", &callBacks, 0xCu);
      }

      v32 = _PFLogGetLogStream(17);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);
      v30 = v142;
      if (v33)
      {
        LODWORD(callBacks.version) = 138412290;
        *(&callBacks.version + 4) = v142;
        _os_log_fault_impl(&dword_18565F000, v32, OS_LOG_TYPE_FAULT, "CoreData: Fetching generated an error AND a result: %@", &callBacks, 0xCu);
        v30 = v142;
      }
    }

    v34 = v30;
    if (error)
    {
      *error = v142;
    }

    goto LABEL_51;
  }

  if (!v26)
  {
    v35 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      LOWORD(callBacks.version) = 0;
      _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetching failed to generate a result OR an error OR an exception\n", &callBacks, 2u);
    }

    v36 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      LOWORD(callBacks.version) = 0;
      _os_log_fault_impl(&dword_18565F000, v36, OS_LOG_TYPE_FAULT, "CoreData: Fetching failed to generate a result OR an error OR an exception", &callBacks, 2u);
    }
  }

  if (!v28)
  {
    goto LABEL_51;
  }

  if (!v26)
  {
    v26 = NSArray_EmptyArray;
  }

  v109 = v26;
  if (v23)
  {
    v103 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    predicate = [(NSFetchRequest *)v107 predicate];
    sortDescriptors = [(NSFetchRequest *)v107 sortDescriptors];
    affectedStores = [(NSFetchRequest *)v107 affectedStores];
    entity = [(NSFetchRequest *)v107 entity];
    if ([(NSDictionary *)[(NSEntityDescription *)entity subentitiesByName] count])
    {
      includesSubentities = [(NSFetchRequest *)v107 includesSubentities];
    }

    else
    {
      includesSubentities = 0;
    }

    if (predicate)
    {
      v110 = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:predicate, 0];
    }

    else
    {
      v110 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    }

    if ([(NSArray *)affectedStores count])
    {
      v40 = affectedStores;
    }

    else
    {
      v40 = 0;
    }

    v41 = *MEMORY[0x1E695E9F8];
    *&callBacks.retain = *(MEMORY[0x1E695E9F8] + 8);
    v42 = *(MEMORY[0x1E695E9F8] + 24);
    callBacks.version = v41;
    callBacks.copyDescription = v42;
    callBacks.equal = 0;
    callBacks.hash = 0;
    v43 = [(NSMutableSet *)selfCopy->_unprocessedChanges count];
    changedObjects = selfCopy->_changedObjects;
    if (v43)
    {
      if ([(NSMutableSet *)selfCopy->_changedObjects count])
      {
        changedObjects = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        unprocessedChanges = selfCopy->_unprocessedChanges;
        v46 = [(NSMutableSet *)unprocessedChanges countByEnumeratingWithState:&v138 objects:v149 count:16];
        if (v46)
        {
          v47 = *v139;
          do
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v139 != v47)
              {
                objc_enumerationMutation(unprocessedChanges);
              }

              CFSetAddValue(changedObjects, *(*(&v138 + 1) + 8 * i));
            }

            v46 = [(NSMutableSet *)unprocessedChanges countByEnumeratingWithState:&v138 objects:v149 count:16];
          }

          while (v46);
        }

        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v49 = selfCopy->_changedObjects;
        v50 = [(NSMutableSet *)v49 countByEnumeratingWithState:&v134 objects:v148 count:16];
        if (v50)
        {
          v51 = *v135;
          do
          {
            for (j = 0; j != v50; ++j)
            {
              if (*v135 != v51)
              {
                objc_enumerationMutation(v49);
              }

              CFSetAddValue(changedObjects, *(*(&v134 + 1) + 8 * j));
            }

            v50 = [(NSMutableSet *)v49 countByEnumeratingWithState:&v134 objects:v148 count:16];
          }

          while (v50);
        }

        v104 = 1;
      }

      else
      {
        v104 = 0;
        changedObjects = selfCopy->_unprocessedChanges;
      }
    }

    else
    {
      v104 = 0;
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v53 = 0;
    v54 = [(__CFSet *)changedObjects countByEnumeratingWithState:&v130 objects:v147 count:16];
    if (v54)
    {
      v55 = *v131;
      do
      {
        for (k = 0; k != v54; ++k)
        {
          if (*v131 != v55)
          {
            objc_enumerationMutation(changedObjects);
          }

          v57 = *(*(&v130 + 1) + 8 * k);
          objectID = [v57 objectID];
          v59 = objectID;
          if (!v40 || -[NSArray indexOfObjectIdenticalTo:](v40, "indexOfObjectIdenticalTo:", [objectID persistentStore]) != 0x7FFFFFFFFFFFFFFFLL)
          {
            entity2 = [v57 entity];
            if (entity2 == entity || includesSubentities && [(NSEntityDescription *)entity _subentitiesIncludes:entity2])
            {
              if (!v53)
              {
                v53 = [MEMORY[0x1E695DFA8] setWithArray:v109];
              }

              v61 = objc_autoreleasePoolPush();
              v62 = [v110 evaluateWithObject:v57];
              if (resultType2)
              {
                v63 = v59;
              }

              else
              {
                v63 = v57;
              }

              if (v62)
              {
                [v53 addObject:v63];
              }

              else
              {
                [v53 removeObject:v63];
              }

              objc_autoreleasePoolPop(v61);
            }
          }
        }

        v54 = [(__CFSet *)changedObjects countByEnumeratingWithState:&v130 objects:v147 count:16];
      }

      while (v54);
    }

    if (v104)
    {
      CFRelease(changedObjects);
    }

    v64 = [(NSMutableSet *)selfCopy->_unprocessedInserts count];
    insertedObjects = selfCopy->_insertedObjects;
    if (v64)
    {
      if ([(NSMutableSet *)selfCopy->_insertedObjects count])
      {
        insertedObjects = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        unprocessedInserts = selfCopy->_unprocessedInserts;
        v67 = [(NSMutableSet *)unprocessedInserts countByEnumeratingWithState:&v126 objects:v146 count:16];
        if (v67)
        {
          v68 = *v127;
          do
          {
            for (m = 0; m != v67; ++m)
            {
              if (*v127 != v68)
              {
                objc_enumerationMutation(unprocessedInserts);
              }

              CFSetAddValue(insertedObjects, *(*(&v126 + 1) + 8 * m));
            }

            v67 = [(NSMutableSet *)unprocessedInserts countByEnumeratingWithState:&v126 objects:v146 count:16];
          }

          while (v67);
        }

        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v70 = selfCopy->_insertedObjects;
        v71 = [(NSMutableSet *)v70 countByEnumeratingWithState:&v122 objects:v145 count:16];
        if (v71)
        {
          v72 = *v123;
          do
          {
            for (n = 0; n != v71; ++n)
            {
              if (*v123 != v72)
              {
                objc_enumerationMutation(v70);
              }

              CFSetAddValue(insertedObjects, *(*(&v122 + 1) + 8 * n));
            }

            v71 = [(NSMutableSet *)v70 countByEnumeratingWithState:&v122 objects:v145 count:16];
          }

          while (v71);
        }

        v105 = 1;
      }

      else
      {
        v105 = 0;
        insertedObjects = selfCopy->_unprocessedInserts;
      }
    }

    else
    {
      v105 = 0;
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v74 = [(__CFSet *)insertedObjects countByEnumeratingWithState:&v118 objects:v144 count:16];
    if (v74)
    {
      v75 = *v119;
      do
      {
        for (ii = 0; ii != v74; ++ii)
        {
          if (*v119 != v75)
          {
            objc_enumerationMutation(insertedObjects);
          }

          v77 = *(*(&v118 + 1) + 8 * ii);
          objectID2 = [v77 objectID];
          v79 = objectID2;
          if (v40)
          {
            persistentStore = [objectID2 persistentStore];
            if (!persistentStore || [(NSArray *)v40 indexOfObjectIdenticalTo:persistentStore]== 0x7FFFFFFFFFFFFFFFLL)
            {
              continue;
            }
          }

          entity3 = [v77 entity];
          if (entity3 == entity || includesSubentities && [(NSEntityDescription *)entity _subentitiesIncludes:entity3])
          {
            if (!v53)
            {
              v53 = [MEMORY[0x1E695DFA8] setWithArray:v109];
            }

            v82 = objc_autoreleasePoolPush();
            if ([v110 evaluateWithObject:v77])
            {
              if (resultType2)
              {
                v83 = v79;
              }

              else
              {
                v83 = v77;
              }

              [v53 addObject:v83];
            }

            objc_autoreleasePoolPop(v82);
          }
        }

        v74 = [(__CFSet *)insertedObjects countByEnumeratingWithState:&v118 objects:v144 count:16];
      }

      while (v74);
    }

    if (v105)
    {
      CFRelease(insertedObjects);
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    deletedObjects = selfCopy->_deletedObjects;
    v85 = [(NSMutableSet *)deletedObjects countByEnumeratingWithState:&v114 objects:v143 count:16];
    if (v85)
    {
      v86 = *v115;
      do
      {
        for (jj = 0; jj != v85; ++jj)
        {
          if (*v115 != v86)
          {
            objc_enumerationMutation(deletedObjects);
          }

          objectID3 = *(*(&v114 + 1) + 8 * jj);
          if (!v40 || -[NSArray indexOfObjectIdenticalTo:](v40, "indexOfObjectIdenticalTo:", [objc_msgSend(*(*(&v114 + 1) + 8 * jj) "objectID")]) != 0x7FFFFFFFFFFFFFFFLL)
          {
            entity4 = [objectID3 entity];
            if (entity4 == entity || includesSubentities && [(NSEntityDescription *)entity _subentitiesIncludes:entity4])
            {
              if (!v53)
              {
                v53 = [MEMORY[0x1E695DFA8] setWithArray:v109];
              }

              if (resultType2)
              {
                objectID3 = [objectID3 objectID];
              }

              [v53 removeObject:objectID3];
            }
          }
        }

        v85 = [(NSMutableSet *)deletedObjects countByEnumeratingWithState:&v114 objects:v143 count:16];
      }

      while (v85);
    }

    if (v53)
    {
      allObjects = [v53 allObjects];
      if ([(NSArray *)sortDescriptors count]!= 0 && resultType2 == 0 && ((includesPropertyValues ^ 1) & 1) == 0)
      {
        allObjects = [allObjects sortedArrayUsingDescriptors:sortDescriptors];
      }

      v109 = allObjects;
    }

    [v103 drain];
  }

  fetchLimit = [(NSFetchRequest *)v107 fetchLimit];
  if (fetchLimit && [v109 count] > fetchLimit)
  {
    v92 = [v109 subarrayWithRange:{0, fetchLimit}];
  }

  else
  {
    v92 = v109;
  }

  if (selfCopy->_dispatchQueue && !-[NSFetchRequest resultType](v107, "resultType") && [v92 count])
  {
    [(NSManagedObjectContext *)selfCopy _registerAsyncReferenceCallback];
  }

  result = v92;
LABEL_52:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_createStoreFetchRequestForFetchRequest:(id *)request
{
  requestCopy = request;
  v54 = *MEMORY[0x1E69E9840];
  if (request)
  {
    v4 = objc_autoreleasePoolPush();
    resultType = [a2 resultType];
    if (resultType == 2)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = [a2 includesPendingChanges] ^ 1;
    }

    fetchLimit = [a2 fetchLimit];
    propertiesToFetch = [a2 propertiesToFetch];
    relationshipKeyPathsForPrefetching = [a2 relationshipKeyPathsForPrefetching];
    if ([propertiesToFetch count])
    {
      v10 = [a2 copy];
      a2 = v10;
      if (resultType == 4 || resultType == 1)
      {
        [v10 setPropertiesToFetch:0];
        [a2 setRelationshipKeyPathsForPrefetching:0];
      }

      else if (!resultType && [relationshipKeyPathsForPrefetching count])
      {
        v39 = v6;
        v40 = requestCopy;
        v41 = a2;
        v42 = v4;
        v11 = [objc_msgSend(a2 "entity")];
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v13 = [relationshipKeyPathsForPrefetching countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v49;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v49 != v15)
              {
                objc_enumerationMutation(relationshipKeyPathsForPrefetching);
              }

              v17 = *(*(&v48 + 1) + 8 * i);
              result.location = 0;
              result.length = 0;
              if (v17 && (v55.length = CFStringGetLength(v17), v55.location = 0, CFStringFindWithOptions(v17, @".", v55, 0, &result)))
              {
                v56.length = result.location;
                v56.location = 0;
                v18 = CFStringCreateWithSubstring(0, v17, v56);
                v17 = v18;
              }

              else
              {
                v18 = 0;
              }

              v19 = [v11 objectForKey:v17];
              if (v19)
              {
                v20 = v19;
                if (([v19 _isToManyRelationship] & 1) == 0)
                {
                  [v12 addObject:v20];
                }
              }

              if (v18)
              {
                CFRelease(v18);
              }
            }

            v14 = [relationshipKeyPathsForPrefetching countByEnumeratingWithState:&v48 objects:v53 count:16];
          }

          while (v14);
        }

        a2 = v41;
        if ([v12 count])
        {
          v21 = [MEMORY[0x1E695DF70] arrayWithArray:propertiesToFetch];
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v22 = [v12 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v44;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v44 != v24)
                {
                  objc_enumerationMutation(v12);
                }

                v26 = *(*(&v43 + 1) + 8 * j);
                if ([propertiesToFetch indexOfObjectIdenticalTo:v26] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v21 addObject:v26];
                }
              }

              v23 = [v12 countByEnumeratingWithState:&v43 objects:v52 count:16];
            }

            while (v23);
          }

          [v41 setPropertiesToFetch:v21];
        }

        v4 = v42;
        requestCopy = v40;
        LOBYTE(v6) = v39;
      }
    }

    if (!((fetchLimit == 0) | v6 & 1) && (*(requestCopy + 41) & 4) != 0 && (v27 = [requestCopy[12] count], v28 = objc_msgSend(requestCopy[7], "count") + v27, (v29 = v28 + objc_msgSend(requestCopy[11], "count")) != 0))
    {
      requestCopy = [a2 _copyForDirtyContext];
      objc_opt_self();
      if (objc_opt_isKindOfClass())
      {
        v30 = [objc_msgSend(requestCopy "substitutionVariables")];
        v31 = [objc_msgSend(v30 objectForKey:{@"FETCH_REQUEST_LIMIT_SUBSTITUTION", "constantValue"}];
        if (v31)
        {
          fetchLimit = [v31 unsignedIntegerValue];
        }

        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:fetchLimit + v29];
        [v30 setObject:objc_msgSend(MEMORY[0x1E696ABC8] forKey:{"expressionForConstantValue:", v32), @"FETCH_REQUEST_LIMIT_SUBSTITUTION"}];
        [requestCopy setSubstitutionVariables:v30];
      }

      else
      {
        [requestCopy setFetchLimit:v29 + fetchLimit];
      }
    }

    else if ([a2 resultType] == 2 && objc_msgSend(a2, "fetchBatchSize") && !objc_msgSend(objc_msgSend(a2, "propertiesToFetch"), "count"))
    {
      v35 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "entity")];
      [v35 sortUsingFunction:_comparePropertiesByName context:0];
      v36 = [v35 count];
      v37 = v36 - 1;
      if (v36 != 1)
      {
        do
        {
          if ([objc_msgSend(v35 objectAtIndex:{v37), "isTransient"}])
          {
            [v35 removeObjectAtIndex:v37];
          }

          --v37;
        }

        while (v37);
      }

      v38 = objc_alloc_init(NSExpressionDescription);
      [(NSPropertyDescription *)v38 setName:@"objectID"];
      -[NSExpressionDescription setExpression:](v38, "setExpression:", [MEMORY[0x1E696ABC8] expressionForEvaluatedObject]);
      [(NSExpressionDescription *)v38 setExpressionResultType:2000];
      [v35 addObject:v38];

      requestCopy = [a2 copy];
      [requestCopy setPropertiesToFetch:v35];
    }

    else
    {
      requestCopy = a2;
    }

    objc_autoreleasePoolPop(v4);
  }

  v33 = *MEMORY[0x1E69E9840];
  return requestCopy;
}

void *__59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    result = objc_loadWeak((v1 + 8));
    if (result)
    {

      return [result _cancelProgress];
    }
  }

  return result;
}

uint64_t __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v29 = 0;
  *(*(*(a1 + 64) + 8) + 40) = [*(*(a1 + 32) + 32) executeRequest:*(a1 + 40) withContext:*(a1 + 32) error:&v29];
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v4 = v29;

  [v2 drain];
  v5 = *(*(*(a1 + 72) + 8) + 40);
  if (v5)
  {
    v6 = v5;
  }

  if (v29)
  {
    v7 = v29;
    v8 = *(*(*(a1 + 80) + 8) + 24);
    if (v8)
    {
      *v8 = v29;
    }

    *(*(*(a1 + 64) + 8) + 40) = 0;
  }

  v9 = *(a1 + 64);
  v10 = *(a1 + 32);
  if (*(*(v9 + 8) + 40))
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_4;
    v17 = &unk_1E6EC2418;
    v21 = *(a1 + 96);
    v18 = *(a1 + 56);
    v19 = v10;
    v22 = *(a1 + 97);
    v11 = *(a1 + 88);
    v20[1] = v9;
    v20[2] = v11;
    v12 = v20;
  }

  else
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_3;
    v26 = &unk_1E6EC23F0;
    v28[1] = *(a1 + 88);
    v27 = v29;
    v12 = v28;
  }

  *v12 = *(a1 + 48);
  return [v10 performBlock:{v14, v15, v16, v17, v18, v19}];
}

id __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_3(uint64_t a1)
{
  [(NSAsynchronousFetchResult *)*(*(*(a1 + 48) + 8) + 40) setFinalResult:?];
  [*(*(*(a1 + 48) + 8) + 40) setOperationError:*(a1 + 32)];
  if ([*(a1 + 40) completionBlock])
  {
    v2 = [*(a1 + 40) completionBlock];
    (*(v2 + 16))(v2, *(*(*(a1 + 48) + 8) + 40));
  }

  v3 = *(*(*(a1 + 48) + 8) + 40);

  return v3;
}

id __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_4(uint64_t a1)
{
  v1 = a1;
  v114 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 40) = NSArray_EmptyArray;
  }

  if (*(v1 + 72) == 1)
  {
    v74 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v2 = [*(v1 + 32) predicate];
    v71 = [*(v1 + 32) sortDescriptors];
    v3 = [*(v1 + 32) affectedStores];
    v4 = [*(v1 + 32) entity];
    if ([objc_msgSend(v4 "subentitiesByName")])
    {
      v77 = [*(v1 + 32) includesSubentities];
      if (v2)
      {
LABEL_6:
        v75 = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:v2, 0];
        v5 = v75;
LABEL_9:
        if (![v3 count])
        {
          v3 = 0;
        }

        callBacks.version = *MEMORY[0x1E695E9F8];
        *&callBacks.retain = *(MEMORY[0x1E695E9F8] + 8);
        v6 = *(MEMORY[0x1E695E9F8] + 24);
        callBacks.hash = 0;
        callBacks.copyDescription = v6;
        callBacks.equal = 0;
        v7 = [*(*(v1 + 40) + 56) count];
        v8 = *(*(v1 + 40) + 96);
        v76 = v1;
        if (v7)
        {
          if ([(__CFSet *)v8 count])
          {
            v8 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            v105 = 0u;
            v9 = *(*(v1 + 40) + 56);
            v10 = [v9 countByEnumeratingWithState:&v102 objects:v113 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v103;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v103 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  CFSetAddValue(v8, *(*(&v102 + 1) + 8 * i));
                }

                v11 = [v9 countByEnumeratingWithState:&v102 objects:v113 count:16];
              }

              while (v11);
            }

            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v14 = *(*(v76 + 40) + 96);
            v15 = [v14 countByEnumeratingWithState:&v98 objects:v112 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v99;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v99 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  CFSetAddValue(v8, *(*(&v98 + 1) + 8 * j));
                }

                v16 = [v14 countByEnumeratingWithState:&v98 objects:v112 count:16];
              }

              while (v16);
            }

            v72 = 1;
          }

          else
          {
            v72 = 0;
            v8 = *(*(v1 + 40) + 56);
          }
        }

        else
        {
          v72 = 0;
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v19 = [(__CFSet *)v8 countByEnumeratingWithState:&v94 objects:v111 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = 0;
          v22 = *v95;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v95 != v22)
              {
                objc_enumerationMutation(v8);
              }

              v24 = *(*(&v94 + 1) + 8 * k);
              v25 = [v24 objectID];
              v26 = v25;
              if (!v3 || [v3 indexOfObjectIdenticalTo:{objc_msgSend(v25, "persistentStore")}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v27 = [v24 entity];
                if (v27 == v4 || v77 && [v4 _subentitiesIncludes:v27])
                {
                  if (!v21)
                  {
                    v21 = [MEMORY[0x1E695DFA8] setWithArray:*(*(*(v76 + 56) + 8) + 40)];
                  }

                  v28 = [v75 evaluateWithObject:v24];
                  if (*(v76 + 73))
                  {
                    v29 = v24;
                  }

                  else
                  {
                    v29 = v26;
                  }

                  if (v28)
                  {
                    [v21 addObject:v29];
                  }

                  else
                  {
                    [v21 removeObject:v29];
                  }
                }
              }
            }

            v20 = [(__CFSet *)v8 countByEnumeratingWithState:&v94 objects:v111 count:16];
          }

          while (v20);
        }

        else
        {
          v21 = 0;
        }

        if (v72)
        {
          CFRelease(v8);
        }

        v30 = [*(*(v76 + 40) + 72) count];
        v31 = *(v76 + 40);
        v32 = *(v31 + 80);
        if (v30)
        {
          if ([*(v31 + 80) count])
          {
            v32 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
            v90 = 0u;
            v91 = 0u;
            v92 = 0u;
            v93 = 0u;
            v33 = *(*(v76 + 40) + 72);
            v34 = [v33 countByEnumeratingWithState:&v90 objects:v110 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v91;
              do
              {
                for (m = 0; m != v35; ++m)
                {
                  if (*v91 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  CFSetAddValue(v32, *(*(&v90 + 1) + 8 * m));
                }

                v35 = [v33 countByEnumeratingWithState:&v90 objects:v110 count:16];
              }

              while (v35);
            }

            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v38 = *(*(v76 + 40) + 80);
            v39 = [v38 countByEnumeratingWithState:&v86 objects:v109 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v87;
              do
              {
                for (n = 0; n != v40; ++n)
                {
                  if (*v87 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  CFSetAddValue(v32, *(*(&v86 + 1) + 8 * n));
                }

                v40 = [v38 countByEnumeratingWithState:&v86 objects:v109 count:16];
              }

              while (v40);
            }

            v73 = 1;
          }

          else
          {
            v73 = 0;
            v32 = *(*(v76 + 40) + 72);
          }
        }

        else
        {
          v73 = 0;
        }

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v43 = [(__CFSet *)v32 countByEnumeratingWithState:&v82 objects:v108 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v83;
          do
          {
            for (ii = 0; ii != v44; ++ii)
            {
              if (*v83 != v45)
              {
                objc_enumerationMutation(v32);
              }

              v47 = *(*(&v82 + 1) + 8 * ii);
              v48 = [v47 objectID];
              v49 = v48;
              if (v3)
              {
                v50 = [v48 persistentStore];
                if (!v50 || [v3 indexOfObjectIdenticalTo:v50] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  continue;
                }
              }

              v51 = [v47 entity];
              if (v51 == v4 || v77 && [v4 _subentitiesIncludes:v51])
              {
                if ([v75 evaluateWithObject:v47])
                {
                  if (!v21)
                  {
                    v21 = [MEMORY[0x1E695DFA8] setWithArray:*(*(*(v76 + 56) + 8) + 40)];
                  }

                  if (*(v76 + 73))
                  {
                    v52 = v47;
                  }

                  else
                  {
                    v52 = v49;
                  }

                  [v21 addObject:v52];
                }
              }
            }

            v44 = [(__CFSet *)v32 countByEnumeratingWithState:&v82 objects:v108 count:16];
          }

          while (v44);
        }

        if (v73)
        {
          CFRelease(v32);
        }

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v1 = v76;
        v53 = *(*(v76 + 40) + 88);
        v54 = [v53 countByEnumeratingWithState:&v78 objects:v107 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v79;
          do
          {
            for (jj = 0; jj != v55; ++jj)
            {
              if (*v79 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v78 + 1) + 8 * jj);
              if (!v3 || [v3 indexOfObjectIdenticalTo:{objc_msgSend(objc_msgSend(*(*(&v78 + 1) + 8 * jj), "objectID"), "persistentStore")}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v59 = [v58 entity];
                if (v59 == v4 || v77 && [v4 _subentitiesIncludes:v59])
                {
                  if (!v21)
                  {
                    v21 = [MEMORY[0x1E695DFA8] setWithArray:*(*(*(v76 + 56) + 8) + 40)];
                  }

                  if ((*(v76 + 73) & 1) == 0)
                  {
                    v58 = [v58 objectID];
                  }

                  [v21 removeObject:v58];
                }
              }
            }

            v55 = [v53 countByEnumeratingWithState:&v78 objects:v107 count:16];
          }

          while (v55);
        }

        if (v21)
        {
          v60 = [v21 allObjects];
          if ([v71 count] && *(v76 + 73) == 1 && *(v76 + 74) == 1)
          {
            v60 = [v60 sortedArrayUsingDescriptors:v71];
          }

          *(*(*(v76 + 56) + 8) + 40) = v60;
        }

        [v74 drain];
        goto LABEL_119;
      }
    }

    else
    {
      v77 = 0;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    v75 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    goto LABEL_9;
  }

LABEL_119:
  v61 = [*(v1 + 32) fetchLimit];
  if (v61)
  {
    v62 = v61;
    if ([*(*(*(v1 + 56) + 8) + 40) count] > v61)
    {
      v63 = [*(*(*(v1 + 56) + 8) + 40) subarrayWithRange:{0, v62}];

      *(*(*(v1 + 56) + 8) + 40) = v63;
    }
  }

  v64 = [*(*(*(v1 + 64) + 8) + 40) progress];
  if (v64)
  {
    v65 = v64;
    v66 = [*(*(*(v1 + 56) + 8) + 40) count];
    v67 = [v65 completedUnitCount];
    [v65 setTotalUnitCount:v66];
    if (v67 != v66)
    {
      [v65 setCompletedUnitCount:{objc_msgSend(*(*(*(v1 + 56) + 8) + 40), "count")}];
    }
  }

  [(NSAsynchronousFetchResult *)*(*(*(v1 + 64) + 8) + 40) setFinalResult:?];
  [*(*(*(v1 + 64) + 8) + 40) setOperationError:0];
  if ([*(v1 + 48) completionBlock])
  {
    v68 = [*(v1 + 48) completionBlock];
    (*(v68 + 16))(v68, *(*(*(v1 + 64) + 8) + 40));
  }

  result = *(*(*(v1 + 64) + 8) + 40);
  v70 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_committedSnapshotForObject:(uint64_t)result
{
  if (result)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(result, sel__committedSnapshotForObject_);
      if (a2)
      {
LABEL_4:
        v3 = a2[6];
        if (v3 && *(v3 + 8))
        {
          return *(v3 + 8);
        }

        v4 = [(NSManagedObject *)a2 _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:1 preserveFaults:?];
        [(NSManagedObject *)a2 _setOriginalSnapshot__:v4];

        v3 = a2[6];
        if (v3)
        {
          return *(v3 + 8);
        }
      }
    }

    else if (a2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  return result;
}

- (void)_refaultObject:(id *)object globalID:(uint64_t)d BOOLean:(int)lean
{
  if (object)
  {
    if ((lean & 1) != 0 || (*(d + 16) & 0x3F) == 0)
    {
      v7 = 0;
      v11 = 0;
    }

    else
    {
      v6 = *(d + 48);
      if (v6)
      {
        v6 = v6[1];
      }

      v7 = v6;
      v8 = *(d + 48);
      if (v8)
      {
        v8 = v8[2];
      }

      v11 = v8;
    }

    if (d)
    {
      v9 = _insertion_fault_handler;
    }

    else
    {
      v9 = 0;
    }

    [(NSFaultHandler *)v9 turnObject:d intoFaultWithContext:object];
    if (d && lean)
    {
      v10 = *(d + 16);
      if ((v10 & 9) != 0)
      {
        [object[7] removeObject:d];
        [object[12] removeObject:d];
        v10 = *(d + 16);
      }

      if ((v10 & 0x12) != 0)
      {
        [object[9] removeObject:d];
        [object[10] removeObject:d];
        v10 = *(d + 16);
      }

      if ((v10 & 0x24) != 0)
      {
        [object[11] removeObject:d];
        [object[8] removeObject:d];
        v10 = *(d + 16);
      }

      *(d + 16) = v10 & 0xFFFFFFC0;
      [(NSManagedObject *)d _setOriginalSnapshot__:?];
      [(NSManagedObject *)d _setLastSnapshot__:?];
    }

    if (v7)
    {
      [(NSManagedObjectContext *)object _committedSnapshotForObject:d];
    }

    if (v11)
    {
      [(NSManagedObject *)d _setLastSnapshot__:v11];
    }
  }
}

- (uint64_t)_mergeRefreshObject:(char)object mergeChanges:(NSKnownKeysDictionary *)changes withPersistentSnapshot:
{
  v67 = *MEMORY[0x1E69E9840];
  if (!_PF_Threading_Debugging_level)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_49:
    result = 0;
    goto LABEL_50;
  }

  _PFAssertSafeMultiThreadedAccess_impl(self, sel__mergeRefreshObject_mergeChanges_withPersistentSnapshot_);
  if (!a2)
  {
    goto LABEL_49;
  }

LABEL_3:
  v8 = *(a2 + 16);
  if ((v8 & 0x80) != 0 || !*(a2 + 32))
  {
    goto LABEL_49;
  }

  v9 = (v8 >> 15) & 7;
  if (v9 != 5 && v9 != 0)
  {
    goto LABEL_49;
  }

  objectID = [a2 objectID];
  values = objectID;
  if (object)
  {
    v12 = objectID;
    [a2 willRefresh:1];
    refreshed = changes;
    if (!changes)
    {
      refreshed = [(NSManagedObject *)a2 _newChangedValuesForRefresh__];
    }

    _changedTransientProperties__ = [(NSManagedObject *)a2 _changedTransientProperties__];
    v15 = _insertion_fault_handler;
    entity = [a2 entity];
    v17 = *(a2 + 48);
    v33 = v15;
    if (v17)
    {
      v18 = *v17;
      v19 = *(a2 + 16);
      v20 = 0;
      v21 = 1;
      if (v18)
      {
        if ((v19 & 0x2000) == 0)
        {
          if (entity)
          {
            v20 = *(*(entity + 152) + 48);
            if (v20)
            {
              *(a2 + 16) = v19 | 0x1000;
              [a2 _willChangeValuesForKeys:v20];
              v21 = 0;
              v19 = *(a2 + 16) & 0xFFFFEFFF;
            }
          }
        }
      }
    }

    else
    {
      v20 = 0;
      v19 = *(a2 + 16);
      v21 = 1;
    }

    *(a2 + 16) = v19 | 0x2000;
    [NSManagedObjectContext _refaultObject:self globalID:a2 BOOLean:0];
    v22 = *(a2 + 16) & 0x12;
    v23 = v22 != 0;
    if ([v12 isTemporaryID])
    {
      v24 = atomic_load((self + 48));
      v23 = v24 ^ 1 | (v22 != 0);
    }

    if (v23 & 1) != 0 || ((v21 ^ 1))
    {
      if (v23)
      {
        goto LABEL_26;
      }
    }

    else if (([a2 hasChanges] & 1) == 0)
    {
LABEL_26:
      v25 = 0;
LABEL_37:
      if ([(NSKnownKeysDictionary *)refreshed count])
      {
        [(NSManagedObject *)a2 _updateFromRefreshSnapshot:0 includingTransients:?];
      }

      if (!changes)
      {
      }

      if ([(NSKnownKeysDictionary *)_changedTransientProperties__ count])
      {
        [(NSManagedObject *)a2 _updateFromSnapshot:_changedTransientProperties__];
      }

      v30 = *(a2 + 16);
      if (v25)
      {
        *(a2 + 16) = v30 | 0x1000;
        [a2 awakeFromFetch];
        v30 = *(a2 + 16) & 0xFFFFEFFF;
      }

      *(a2 + 16) = v30 & 0xFFFFDFFF;
      if ((v21 & 1) == 0)
      {
        [a2 _didChangeValuesForKeys:v20];
      }

      goto LABEL_47;
    }

    [(NSManagedObjectContext *)self lockObjectStore];
    v26 = [*(self + 32) newValuesForObjectWithID:values withContext:self error:0];
    v25 = v26 != 0;
    if (v26)
    {
      v27 = v26;
      if ((*(a2 + 17) & 2) == 0 && ([values isTemporaryID] & 1) == 0)
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v28 = _PFStackAllocatorCreate(&v35, 1024);
        v29 = CFArrayCreate(v28, &values, 1, 0);
        [*(self + 32) managedObjectContextDidRegisterObjectsWithIDs:v29 generation:{objc_msgSend(self, "_queryGenerationToken")}];
        if (*(&v36 + 1) && v29)
        {
          CFRelease(v29);
        }

        *(a2 + 16) |= 0x200u;
      }

      _PFFaultHandlerFulfillFault(v33, a2, self, v27, 0);
    }

    [(NSManagedObjectContext *)self unlockObjectStore];
    goto LABEL_37;
  }

  [a2 willRefresh:0];
  [NSManagedObjectContext _refaultObject:self globalID:a2 BOOLean:1];
LABEL_47:
  result = 1;
LABEL_50:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_mergeRefreshEpilogueForObject:(uint64_t)object mergeChanges:
{
  [a2 awakeFromSnapshotEvents:256];
  [a2 didRefresh:object];
  [(NSManagedObjectContext *)self _prepareUnprocessedDeletionAfterRefresh:a2];
  result = [*(self + 112) addObject:{objc_msgSend(a2, "objectID")}];
  if ((*(self + 40) & 1) == 0)
  {

    return [(NSManagedObjectContext *)self _enqueueEndOfEventNotification];
  }

  return result;
}

- (void)undo
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  [(NSManagedObjectContext *)self discardEditing];
  if (*(self->_additionalPrivateIvars + 5))
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    [self->_additionalPrivateIvars[5] undo];
    [v3 drain];
  }
}

- (void)redo
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  [(NSManagedObjectContext *)self discardEditing];
  if (*(self->_additionalPrivateIvars + 5))
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    [self->_additionalPrivateIvars[5] redo];
    [v3 drain];
  }
}

- (NSManagedObjectContext)initWithCoder:(id)coder
{
  objc_opt_class();
  v19.receiver = self;
  v19.super_class = NSManagedObjectContext;
  v5 = [(NSManagedObjectContext *)&v19 init];
  if (v5)
  {
    v6 = [coder decodeIntForKey:@"NSConcurrencyType"];
    v7 = v6;
    if (v6 == 2)
    {
      v9 = 3;
    }

    else if (v6 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = !v6 && (byte_1ED4BEA2C & 1) == 0 && (current_queue = dispatch_get_current_queue(), pthread_main_np()) && (current_queue == dispatch_get_global_queue(0, 0) || current_queue == MEMORY[0x1E69E96A0]);
    }

    v10 = [(NSManagedObjectContext *)v5 _initWithParentObjectStore:v9];
    if (v5 == v10 || (v11 = v10, v5, (v5 = v11) != 0))
    {
      if (v7 == 2)
      {
        v13 = MEMORY[0x1E69E96A0];
        v5[3] = MEMORY[0x1E69E96A0];
        if (!dispatch_queue_get_specific(v13, "com.apple.CoreData.NSManagedObjectContext.mainQueue"))
        {
          v14 = objc_opt_class();
          dispatch_queue_set_specific(MEMORY[0x1E69E96A0], "com.apple.CoreData.NSManagedObjectContext.mainQueue", v14, 0);
          v13 = v5[3];
        }

        dispatch_retain(v13);
        v12 = v5[5] & 0xFFFBFFFF;
      }

      else
      {
        if (v7 != 1)
        {
LABEL_22:
          atomic_store(0, v5 + 1);
          [coder decodeFloatForKey:@"NSFetchTimestamp"];
          *(v5 + 18) = v15;
          if ([coder decodeBoolForKey:@"NSRetainsRegisteredObjects"])
          {
            v16 = 64;
          }

          else
          {
            v16 = 0;
          }

          *(v5 + 10) = v5[5] & 0xFFFFFFBF | v16;
          if ([coder decodeBoolForKey:@"NSPropagatesDeleted"])
          {
            v17 = 2;
          }

          else
          {
            v17 = 0;
          }

          *(v5 + 10) = v5[5] & 0xFFFFFFFD | v17;
          [v5 setMergePolicy:{objc_msgSend(coder, "decodeObjectForKey:", @"NSMergePolicy"}];
          return v5;
        }

        v5[3] = createQueueForMOC(v5);
        v12 = *(v5 + 10) | 0x40000;
      }

      *(v5 + 10) = v12;
      goto LABEL_22;
    }
  }

  return v5;
}

- (uint64_t)_initWithParentObjectStore:(void *)store
{
  objc_opt_self();
  v29.receiver = store;
  v29.super_class = NSManagedObjectContext;
  v4 = objc_msgSendSuper2(&v29, sel_init);
  v5 = v4;
  if (v4)
  {
    v4[4] = 0;
    v4[21] = PF_CALLOC_OBJECT_ARRAY(22);
    v6 = [[_PFContextMapTable alloc] initWithWeaksReferences:?];
    *(v5 + 120) = v6;
    CFRetain(v6);

    v28.version = *MEMORY[0x1E695E9F8];
    *&v28.retain = *(MEMORY[0x1E695E9F8] + 8);
    v7 = *(MEMORY[0x1E695E9F8] + 24);
    v28.equal = 0;
    v28.hash = 0;
    v28.copyDescription = v7;
    v8 = *MEMORY[0x1E695E480];
    *(v5 + 72) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v28);
    *(v5 + 64) = CFSetCreateMutable(v8, 0, &v28);
    *(v5 + 56) = CFSetCreateMutable(v8, 0, &v28);
    *(v5 + 80) = CFSetCreateMutable(v8, 0, &v28);
    *(v5 + 88) = CFSetCreateMutable(v8, 0, &v28);
    *(v5 + 96) = CFSetCreateMutable(v8, 0, &v28);
    *(v5 + 104) = CFSetCreateMutable(v8, 0, &v28);
    *(v5 + 112) = CFSetCreateMutable(v8, 0, &v28);
    atomic_store(a2 & 1, (v5 + 49));
    if (_PF_USE_IOS_PLATFORM)
    {
      *(*(v5 + 168) + 40) = 0;
      *(v5 + 44) = 0;
    }

    else
    {
      if (HIBYTE(dword_1ED4BEEC0) == 1)
      {
        *(*(v5 + 168) + 40) = 0;
      }

      else
      {
        *(*(v5 + 168) + 40) = objc_alloc_init(MEMORY[0x1E696AFC8]);
        v9 = atomic_load((v5 + 49));
        if ((v9 & 1) == 0)
        {
          [*(*(v5 + 168) + 40) setGroupsByEvent:0];
        }
      }

      *(v5 + 44) = 0;
      if (*(*(v5 + 168) + 40))
      {
        [(NSManagedObjectContext *)v5 _startObservingUndoManagerNotifications];
      }
    }

    if ((a2 & 2) == 0)
    {
      v10 = 0x1E696AE68;
      if (_PF_Threading_Debugging_level <= 0)
      {
        v10 = off_1E6EC0C58;
      }

      v11 = objc_alloc_init(*v10);
      *(v5 + 136) = v11;
      CFRetain(v11);
    }

    *(v5 + 52) = 0;
    *(v5 + 20) = 0;
    v12 = [_PFManagedObjectReferenceQueue alloc];
    if (v12)
    {
      v31.receiver = v12;
      v31.super_class = _PFManagedObjectReferenceQueue;
      v13 = objc_msgSendSuper2(&v31, sel_init);
      v14 = v13;
      v13[2] = 0;
      v13[3] = v5;
      v13[4] = 0;
      if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1 && (v15 = atomic_load((v5 + 49)), (v15 & 1) != 0))
      {
        Main = CFRunLoopGetMain();
        context.version = 0;
        memset(&context.retain, 0, 24);
        context.info = v14;
        v17 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0, _performRunLoopAction, &context);
        CFRunLoopAddObserver(Main, v17, *MEMORY[0x1E695E8D0]);
        v14[5] = v17;
        CFRetain(v14);
      }

      else
      {
        v13[5] = 0;
      }

      CFRetain(v14);
    }

    else
    {
      v14 = 0;
    }

    *(v5 + 152) = v14;
    CFRetain(v14);

    *(v5 + 24) = 0;
    atomic_store(0, (v5 + 8));
    *(v5 + 144) = 0xBFF0000000000000;
    *(*(v5 + 168) + 16) = 0;
    *(v5 + 46) = 0;
    atomic_store(0, (v5 + 51));
    v18 = *(v5 + 40);
    *(v5 + 16) = 0;
    if (byte_1ED4BEA2B)
    {
      v19 = 0x2000000;
    }

    else
    {
      v19 = 0;
    }

    *(v5 + 40) = v18 & 0xFDF4E000 | v19 | 0x90002;
    *(*(v5 + 168) + 24) = NSErrorMergePolicy;
    *(*(v5 + 168) + 96) = +[NSQueryGenerationToken unpinnedQueryGenerationToken];
    *(*(v5 + 168) + 32) = 0;
    *(v5 + 40) &= ~0x2000u;
    **(v5 + 168) = 0;
    *(*(v5 + 168) + 8) = 0;
    *(*(v5 + 168) + 136) = 0;
    *(*(v5 + 168) + 144) = 0;
    *(*(v5 + 168) + 112) = 0;
    *(*(v5 + 168) + 152) = 0;
    *(*(v5 + 168) + 56) = 0;
    *(v5 + 128) = 0;
    *(*(v5 + 168) + 48) = 0;
    *(*(v5 + 168) + 80) = 0;
    *(*(v5 + 168) + 120) = 0;
    *(*(v5 + 168) + 128) = 0;
    *(v5 + 40) = *(v5 + 40) & 0xF3FFFFFF | 0x8000000;
    if (_PF_Threading_Debugging_level)
    {
      v21 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v21 = malloc_default_zone();
      }

      *(*(v5 + 168) + 56) = malloc_type_zone_malloc(v21, 0x30uLL, 0x80040B8603338uLL);
      v22 = pthread_self();
      **(*(v5 + 168) + 56) = v22;
      *(*(*(v5 + 168) + 56) + 8) = v22;
      *(*(*(v5 + 168) + 56) + 16) = 0;
      *(*(*(v5 + 168) + 56) + 24) = 0;
      *(*(*(v5 + 168) + 56) + 32) = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(*(*(v5 + 168) + 56) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = atomic_load((v5 + 49));
      if ((v23 & 1) == 0)
      {
        currentQueue = [MEMORY[0x1E696ADC8] currentQueue];
        if ([currentQueue maxConcurrentOperationCount] == 1)
        {
          v25 = currentQueue;
        }

        else
        {
          v25 = 0;
        }

        *(*(*(v5 + 168) + 56) + 16) = v25;
        current_queue = dispatch_get_current_queue();
        if (current_queue == dispatch_get_global_queue(0, 0))
        {
          v27 = 0;
        }

        else
        {
          v27 = current_queue;
        }

        *(*(*(v5 + 168) + 56) + 24) = v27;
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  fetchTimestamp = self->_fetchTimestamp;
  *&fetchTimestamp = fetchTimestamp;
  [coder encodeFloat:@"NSFetchTimestamp" forKey:fetchTimestamp];
  [coder encodeBool:(*&self->_flags >> 6) & 1 forKey:@"NSRetainsRegisteredObjects"];
  [coder encodeBool:(*&self->_flags >> 1) & 1 forKey:@"NSPropagatesDeleted"];
  [coder encodeObject:-[NSManagedObjectContext mergePolicy](self forKey:{"mergePolicy"), @"NSMergePolicy"}];
  concurrencyType = [(NSManagedObjectContext *)self concurrencyType];

  [coder encodeInt:concurrencyType forKey:@"NSConcurrencyType"];
}

- (void)detectConflictsForObject:(NSManagedObject *)object
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    if (!object)
    {
      goto LABEL_6;
    }
  }

  else if (!object)
  {
    goto LABEL_6;
  }

  if ((object->_cd_stateFlags & 0x80) == 0)
  {
    cd_managedObjectContext = object->_cd_managedObjectContext;
    goto LABEL_7;
  }

LABEL_6:
  cd_managedObjectContext = 0;
LABEL_7:
  if (cd_managedObjectContext == self)
  {
    if ([(NSManagedObject *)object isFault])
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:self withContext:?];
    }

    lockedObjects = self->_lockedObjects;

    [(NSMutableSet *)lockedObjects addObject:object];
  }

  else if (cd_managedObjectContext)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"An NSManagedObjectContext cannot detect conflicts for objects in other contexts." userInfo:0]);
  }
}

- (void)_coreMergeChangesFromDidSaveDictionary:(int)dictionary usingObjectIDs:(uint64_t)ds withClientQueryGeneration:
{
  dictionaryCopy = dictionary;
  v157 = a2;
  v161 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_228:
    v132 = *MEMORY[0x1E69E9840];
    return;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, sel__coreMergeChangesFromDidSaveDictionary_usingObjectIDs_withClientQueryGeneration_);
  }

  v150 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v6 = [v157 objectForKey:@"managedObjectContext"];
  if (!v6)
  {
    goto LABEL_11;
  }

  Weak = objc_loadWeak((v6 + 8));
  if (!Weak)
  {
    v8 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_11:
    v8 = 0;
    Weak = 0;
    goto LABEL_12;
  }

  v8 = [MEMORY[0x1E695DFA8] set];
  parentContext = Weak;
  do
  {
    [v8 addObject:parentContext];
    parentContext = [parentContext parentContext];
  }

  while (parentContext);
LABEL_12:
  if (Weak != self && (!v8 || ![v8 containsObject:self]))
  {
    v11 = [v157 objectForKey:@"newQueryGeneration"];
    if ([v11 _isEnabled])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    _queryGenerationToken = [self _queryGenerationToken];
    if (!ds && [_queryGenerationToken _isEnabled])
    {
      [self _setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), 0}];
    }

    v13 = [v157 objectForKey:@"inserted"];
    v14 = [v157 objectForKey:@"inserted_objectIDs"];
    v15 = [v13 count];
    v144 = v14;
    v16 = [v14 count];
    v145 = &v133;
    v141 = v16;
    v142 = v15;
    v17 = v16 + v15;
    if ((v16 + v15) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v16 + v15;
    }

    if (v17 >= 0x201)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = (&v133 - ((8 * v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    v158 = v16 + v15;
    if (v17 > 0x200)
    {
      v20 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v133 - ((8 * v19 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v18);
    }

    v21 = v157;
    v22 = [v157 objectForKey:@"updated"];
    v23 = [v21 objectForKey:@"updated_objectIDs"];
    v24 = [v22 count];
    v138 = v23;
    v25 = [v23 count];
    v140 = v24;
    v139 = v25;
    v26 = v25 + v24;
    if ((v25 + v24) <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v25 + v24;
    }

    if (v26 >= 0x201)
    {
      v28 = 1;
    }

    else
    {
      v28 = v27;
    }

    v29 = (&v133 - ((8 * v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    v151 = v25 + v24;
    v143 = v22;
    if (v26 > 0x200)
    {
      v29 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v133 - ((8 * v28 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v27);
    }

    v30 = v157;
    v31 = [v157 objectForKey:@"deleted"];
    v32 = [v30 objectForKey:@"deleted_objectIDs"];
    v33 = [v31 count];
    v34 = [v32 count];
    v35 = v34 + v33;
    if ((v34 + v33) <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = v34 + v33;
    }

    if (v35 >= 0x201)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    v154 = v34 + v33;
    v135 = v12;
    v155 = v29;
    v156 = v20;
    if (v35 > 0x200)
    {
      v153 = NSAllocateScannedUncollectable();
    }

    else
    {
      v153 = &v133 - ((8 * v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v153, 8 * v36);
    }

    v38 = v151;
    if (v154 > v151)
    {
      v38 = v154;
    }

    if (v38 <= v158)
    {
      v39 = v158;
    }

    else
    {
      v39 = v38;
    }

    if (v39 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v39;
    }

    if (v39 >= 0x201)
    {
      v41 = 1;
    }

    else
    {
      v41 = v40;
    }

    v42 = &v133 - ((8 * v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v146 = v39;
    if (v39 > 0x200)
    {
      v42 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v133 - ((8 * v41 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v40);
    }

    v43 = v151 + v158;
    if (v151 + v158 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v151 + v158;
    }

    if (v43 >= 0x201)
    {
      v45 = 1;
    }

    else
    {
      v45 = v44;
    }

    v152 = v151 + v158;
    if (v43 > 0x200)
    {
      v159 = NSAllocateScannedUncollectable();
    }

    else
    {
      v159 = &v133 - ((8 * v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v159, 8 * v44);
    }

    v160 = malloc_type_calloc(1uLL, v152, 0x100004077774924uLL);
    v147 = *(self + 40) & 0x20000;
    dsCopy = ds;
    persistentStoreCoordinator = [self persistentStoreCoordinator];
    *(self + 40) |= 0x21000u;
    v137 = v31;
    if (v158)
    {
      v47 = dictionaryCopy;
      v48 = [v13 count];
      v49 = v13;
      v50 = v48;
      [v49 getObjects:v42];
      [v144 getObjects:&v42[8 * v50]];
      v51 = 0;
      while (1)
      {
        objectID = *&v42[8 * v51];
        if ((v47 & 1) == 0 && v51 < v50)
        {
          objectID = [*&v42[8 * v51] objectID];
        }

        if (([objectID _isPersistentStoreAlive] & 1) == 0 && (objc_msgSend(objectID, "isTemporaryID") & 1) == 0 && !objc_msgSend(persistentStoreCoordinator, "persistentStoreForIdentifier:", objc_msgSend(objectID, "_storeIdentifier")))
        {
          break;
        }

        v53 = [self objectWithID:objectID];
        v54 = v53;
        v156[v51] = v53;
        if (v53)
        {
          if (([v53 hasChanges] & 1) != 0 || (v55 = *(v54 + 48)) != 0 && (v55 = *v55) != 0)
          {
            if ((*(v54 + 16) & 0x24) != 0)
            {
              [*(self + 64) removeObject:v54];
              [*(self + 88) removeObject:v54];
              *(v54 + 16) &= 0xFFFFFFDB;
            }

            v56 = **(self + 168);
            if (v56)
            {
              [v56 removeObject:{objc_msgSend(v54, "objectID")}];
            }

            LOBYTE(v55) = 1;
          }
        }

        else
        {
          LOBYTE(v55) = 0;
        }

        v160[v51] = v55;
        if ([v54 isFault])
        {
          refreshed = 0;
        }

        else
        {
          refreshed = [(NSManagedObject *)v54 _newChangedValuesForRefresh__];
        }

        if (![(NSKnownKeysDictionary *)refreshed count])
        {

          refreshed = 0;
        }

        v58 = v158;
        *&v159[8 * v51++] = refreshed;
        if (v58 == v51)
        {
          v59 = objc_alloc(MEMORY[0x1E695DFD8]);
          v60 = [v59 initWithObjects:v156 count:v158];
          v136 = v32;
          v144 = v60;
          goto LABEL_100;
        }
      }

      v113 = 0;
    }

    else
    {
      v136 = v32;
      v144 = 0;
      v47 = dictionaryCopy;
LABEL_100:
      v61 = v143;
      if (v151)
      {
        v62 = [v143 count];
        [v61 getObjects:v42];
        [v138 getObjects:&v42[8 * v62]];
        v63 = 0;
        v64 = v158;
        v65 = v151;
        while (1)
        {
          objectID2 = *&v42[8 * v63];
          if ((v47 & 1) == 0 && v63 < v62)
          {
            objectID2 = [*&v42[8 * v63] objectID];
          }

          if (([objectID2 _isPersistentStoreAlive] & 1) == 0 && (objc_msgSend(objectID2, "isTemporaryID") & 1) == 0 && !objc_msgSend(persistentStoreCoordinator, "persistentStoreForIdentifier:", objc_msgSend(objectID2, "_storeIdentifier")))
          {
            break;
          }

          v67 = [self objectRegisteredForID:objectID2];
          _newChangedValuesForRefresh__ = v67;
          if (v67)
          {
            if (([(NSKnownKeysDictionary *)v67 hasChanges]& 1) != 0)
            {
              LOBYTE(isa) = 1;
            }

            else
            {
              isa = _newChangedValuesForRefresh__[6].super.super.super.isa;
              if (isa)
              {
                LOBYTE(isa) = *isa != 0;
              }
            }

            v155[v63] = _newChangedValuesForRefresh__;
            v160[v64] = isa;
            if (([(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ isFault]& 1) != 0)
            {
              _newChangedValuesForRefresh__ = 0;
            }

            else
            {
              _newChangedValuesForRefresh__ = [(NSManagedObject *)_newChangedValuesForRefresh__ _newChangedValuesForRefresh__];
            }

            v70 = v64;
          }

          else
          {
            v155[v63] = 0;
            v70 = v63 + v158;
            v160[v64] = 0;
          }

          if (![(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ count])
          {

            _newChangedValuesForRefresh__ = 0;
          }

          *&v159[8 * v70] = _newChangedValuesForRefresh__;
          ++v63;
          ++v64;
          if (!--v65)
          {
            goto LABEL_121;
          }
        }
      }

      else
      {
LABEL_121:
        if (!v154)
        {
LABEL_137:
          if (v158)
          {
            v79 = v156;
            v81 = v159;
            v80 = v160;
            v82 = v158;
            do
            {
              v83 = *v80;
              v84 = *v81;
              if (*v79)
              {
                if (v84)
                {
                  v85 = *v81;
                }

                else
                {
                  v85 = NSDictionary_EmptyDictionary;
                }

                v86 = [(NSManagedObjectContext *)self _mergeRefreshObject:v83 != 0 mergeChanges:v85 withPersistentSnapshot:?];
              }

              else
              {
                v86 = 0;
              }

              *v81++ = 0;
              v87 = v83 | 2;
              if (!v86)
              {
                v87 = v83;
              }

              *v80++ = v87;
              ++v79;
              --v82;
            }

            while (v82);
          }

          if (v158 < v152)
          {
            v88 = v139 + v140;
            v89 = &v159[8 * v158];
            v90 = &v160[v142 + v141];
            v91 = v155;
            do
            {
              v92 = *v90;
              v93 = *v89;
              if (*v91)
              {
                if (v93)
                {
                  v94 = *v89;
                }

                else
                {
                  v94 = NSDictionary_EmptyDictionary;
                }

                v95 = [(NSManagedObjectContext *)self _mergeRefreshObject:v92 != 0 mergeChanges:v94 withPersistentSnapshot:?];
              }

              else
              {
                v95 = 0;
              }

              *v89++ = 0;
              v96 = v92 | 2;
              if (!v95)
              {
                v96 = v92;
              }

              *v90++ = v96;
              ++v91;
              --v88;
            }

            while (v88);
          }

          if (v158)
          {
            v97 = v156;
            v98 = v160;
            v99 = v158;
            do
            {
              v101 = *v98++;
              v100 = v101;
              v102 = v101 & 2;
              if (*v97)
              {
                v103 = v102 == 0;
              }

              else
              {
                v103 = 1;
              }

              if (!v103)
              {
                [(NSManagedObjectContext *)self _mergeRefreshEpilogueForObject:v100 & 1 mergeChanges:?];
              }

              ++v97;
              --v99;
            }

            while (v99);
          }

          if (v158 < v152)
          {
            v104 = v139 + v140;
            v105 = &v160[v142 + v141];
            v106 = v155;
            do
            {
              v108 = *v105++;
              v107 = v108;
              v109 = v108 & 2;
              if (*v106)
              {
                v110 = v109 == 0;
              }

              else
              {
                v110 = 1;
              }

              if (!v110)
              {
                [(NSManagedObjectContext *)self _mergeRefreshEpilogueForObject:v107 & 1 mergeChanges:?];
              }

              ++v106;
              --v104;
            }

            while (v104);
          }

          v111 = 1;
          v112 = 0;
          *(self + 40) = *(self + 40) & 0xFFFDEFFF | v147;
          goto LABEL_179;
        }

        v71 = v137;
        v72 = [v137 count];
        [v71 getObjects:v42];
        [v136 getObjects:&v42[8 * v72]];
        v73 = 0;
        while (1)
        {
          objectID3 = *&v42[8 * v73];
          if ((v47 & 1) == 0 && v73 < v72)
          {
            objectID3 = [*&v42[8 * v73] objectID];
          }

          if (([objectID3 _isPersistentStoreAlive] & 1) == 0 && (objc_msgSend(objectID3, "isTemporaryID") & 1) == 0 && !objc_msgSend(persistentStoreCoordinator, "persistentStoreForIdentifier:", objc_msgSend(objectID3, "_storeIdentifier")))
          {
            break;
          }

          if (objectID3)
          {
            v75 = **(self + 168);
            if (!v75)
            {
              **(self + 168) = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v75 = **(self + 168);
            }

            [v75 addObject:objectID3];
          }

          v76 = [self objectRegisteredForID:objectID3];
          v77 = v76;
          if (v76 && (v76[16] & 0x20) == 0)
          {
            [self deleteObject:v76];
          }

          v78 = v154;
          *&v153[8 * v73++] = v77;
          if (v78 == v73)
          {
            goto LABEL_137;
          }
        }
      }

      v113 = v144;
    }

    *(self + 40) = *(self + 40) & 0xFFFDEFFF | v147;

    v111 = 0;
    v144 = 0;
    v112 = 1;
LABEL_179:
    if (v152 >= 1)
    {
      v114 = v159;
      v115 = v152;
      do
      {
        if (*v114)
        {
        }

        ++v114;
        --v115;
      }

      while (v115);
    }

    v116 = v150;
    if (v152 >= 0x201)
    {
      NSZoneFree(0, v159);
    }

    if (v154 >= 0x201)
    {
      NSZoneFree(0, v153);
    }

    if (v158 >= 0x201)
    {
      NSZoneFree(0, v156);
    }

    if (v151 >= 0x201)
    {
      NSZoneFree(0, v155);
    }

    if (v146 >= 0x201)
    {
      NSZoneFree(0, v42);
    }

    if (v160)
    {
      free(v160);
    }

    if (v116)
    {
      [v116 drain];
    }

    v117 = dictionaryCopy;
    if (v111)
    {
      if ((v112 & 1) == 0)
      {
        v160 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        if (v144)
        {
          v118 = *(*(self + 168) + 88);
          if (!v118)
          {
            v118 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            *(*(self + 168) + 88) = v118;
          }

          [v118 unionSet:v144];
          v119 = v144;
        }

        v120 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v121 = v120;
        if (v135)
        {
          [v120 setObject:v135 forKey:@"newQueryGeneration"];
        }

        for (i = 0; i != 5; ++i)
        {
          v123 = [v157 objectForKey:off_1E6EC2460[i]];
          v124 = off_1E6EC2488[i];
          v125 = [v157 objectForKey:v124];
          if ([v123 count] || objc_msgSend(v125, "count"))
          {
            if (v123)
            {
              v126 = v123;
            }

            else
            {
              v126 = NSSet_EmptySet;
            }

            if (v125)
            {
              v127 = v125;
            }

            else
            {
              v127 = NSSet_EmptySet;
            }

            if (v117)
            {
              v128 = v126;
            }

            else
            {
              v128 = [_PFRoutines newSetOfObjectIDsFromCollection:v126];
            }

            v129 = v128;
            v130 = [_PFRoutines newSetFromCollection:v128 byAddingItems:v127];

            [v121 setObject:v130 forKey:v124];
          }
        }

        v131 = dsCopy == 0;
        *(*(self + 168) + 104) = [v121 copy];

        if (v131 && [_queryGenerationToken _isEnabled])
        {
          [self _setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), 0}];
        }

        [self processPendingChanges];
        if (v160)
        {
          [v160 drain];
        }

        if (*(self + 24))
        {
          [(NSManagedObjectContext *)self _registerAsyncReferenceCallback];
        }
      }
    }

    goto LABEL_228;
  }

  v10 = *MEMORY[0x1E69E9840];

  [v150 drain];
}

- (void)mergeChangesFromContextDidSaveNotification:(NSNotification *)notification
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  object = [(NSNotification *)notification object];
  if (object == self)
  {
    goto LABEL_7;
  }

  v6 = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    persistentStoreCoordinator = [(NSManagedObjectContext *)v6 persistentStoreCoordinator];
    if (persistentStoreCoordinator != [(NSManagedObjectContext *)self persistentStoreCoordinator])
    {
      v8 = objc_opt_class();
      userInfo = [(NSNotification *)notification userInfo];
      v13[0] = self;
      [v8 _mergeChangesFromRemoteContextSave:userInfo intoContexts:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v13, 1)}];
LABEL_7:
      v10 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [(NSManagedObjectContext *)self _mergeChangesFromDidSaveDictionary:[(NSNotification *)notification userInfo] usingObjectIDs:0];
  v12 = *MEMORY[0x1E69E9840];

  [v11 drain];
}

- (NSManagedObjectContext)initWithConcurrencyType:(NSManagedObjectContextConcurrencyType)ct
{
  objc_opt_class();
  v14.receiver = self;
  v14.super_class = NSManagedObjectContext;
  v5 = [(NSManagedObjectContext *)&v14 init];
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  if (ct == NSMainQueueConcurrencyType)
  {
    [(NSManagedObjectContext *)v5 _initWithParentObjectStore:?];
    dispatchQueue = MEMORY[0x1E69E96A0];
    v6->_dispatchQueue = MEMORY[0x1E69E96A0];
    if (!dispatch_queue_get_specific(dispatchQueue, "com.apple.CoreData.NSManagedObjectContext.mainQueue"))
    {
      v11 = objc_opt_class();
      dispatch_queue_set_specific(MEMORY[0x1E69E96A0], "com.apple.CoreData.NSManagedObjectContext.mainQueue", v11, 0);
      dispatchQueue = v6->_dispatchQueue;
    }

    dispatch_retain(dispatchQueue);
    v9 = *&v6->_flags & 0xFFFBFFFF;
  }

  else
  {
    if (ct != NSPrivateQueueConcurrencyType)
    {
      if (ct)
      {
        v8 = 0;
      }

      else
      {
        v8 = (byte_1ED4BEA2C & 1) == 0 && (current_queue = dispatch_get_current_queue(), pthread_main_np()) && (current_queue == dispatch_get_global_queue(0, 0) || current_queue == MEMORY[0x1E69E96A0]);
        v5 = v6;
      }

      [(NSManagedObjectContext *)v5 _initWithParentObjectStore:v8];
      goto LABEL_19;
    }

    [(NSManagedObjectContext *)v5 _initWithParentObjectStore:?];
    v6->_dispatchQueue = createQueueForMOC(v6);
    v9 = *&v6->_flags | 0x40000;
  }

  v6->_flags = v9;
LABEL_19:
  atomic_store(0, &v6->_queueOwner);
  if (+[NSSQLCore trackSQLiteDatabaseStatistics])
  {
    v12 = 0x20000000;
  }

  else
  {
    v12 = 0;
  }

  v6->_flags = (*&v6->_flags & 0xDFFFFFFF | v12);
  return v6;
}

- (void)performBlock:(void *)block
{
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can only use -performBlock: on an NSManagedObjectContext that was created with a queue." userInfo:{0, v3, v4}]);
  }

  [(NSManagedObjectContext *)self performWithOptions:8199 andBlock:block];
}

- (void)performBlockAndWait:(void *)block
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can only use -performBlockAndWait: on an NSManagedObjectContext that was created with a queue." userInfo:0]);
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
  context[0] = block;
  context[1] = self;
  v15 = 0;
  v16 = v4;
  if (byte_1ED4BEA2A)
  {
    v15 = 4;
  }

  v5 = atomic_load(&self->_isMainThreadBlessed);
  if ((v5 & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_27;
    }

    v6 = 0;
    v7 = 0;
    v8 = v4;
    while (v8 != self)
    {
      if (v8 == v6)
      {
        goto LABEL_16;
      }

      if (!v6)
      {
        v6 = v8;
      }

      v8 = atomic_load((v8 + 8));
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    v7 = 1;
LABEL_16:
    if (v7)
    {
      goto LABEL_26;
    }

LABEL_17:
    v9 = 0;
    v10 = 0;
    selfCopy = self;
    while (selfCopy != v4)
    {
      if (selfCopy == v9)
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        v9 = selfCopy;
      }

      selfCopy = atomic_load(&selfCopy->_queueOwner);
      if (!selfCopy)
      {
        goto LABEL_27;
      }
    }

    v10 = 1;
LABEL_25:
    if (!v10)
    {
      goto LABEL_27;
    }

LABEL_26:
    developerSubmittedBlockToNSManagedObjectContextPerform(context);
    goto LABEL_30;
  }

  if (_PFIsSerializedWithMainQueue())
  {
    goto LABEL_26;
  }

LABEL_27:
  v12 = 8196;
  if (!byte_1ED4BEA2A)
  {
    v12 = 0x2000;
  }

  v15 = v12;
  dispatch_sync_f(self->_dispatchQueue, context, developerSubmittedBlockToNSManagedObjectContextPerform);
LABEL_30:
  v13 = *MEMORY[0x1E69E9840];
}

- (unsigned)_setParentContext:(unsigned __int8 *)result
{
  if (result)
  {
    v3 = result;
    atomic_store(1u, result + 48);
    persistentStoreCoordinator = [a2 persistentStoreCoordinator];
    *(v3 + 32) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    [(NSManagedObjectContext *)v3 _registerForNotificationsWithCoordinator:persistentStoreCoordinator];
    result = [(_PFContextMapTable *)*(v3 + 120) setForUseWithCoordinator:persistentStoreCoordinator];
    if (persistentStoreCoordinator)
    {
      v5 = *(persistentStoreCoordinator + 96);
      if (v5)
      {
        v5 = *(v5 + 48);
      }
    }

    else
    {
      v5 = 0;
    }

    *(*(v3 + 168) + 80) = v5;
  }

  return result;
}

- (uint64_t)_registerForNotificationsWithCoordinator:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = result;
      result = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      if ((*(v2 + 42) & 0x40) != 0 && *(v2 + 24) && *(v2 + 32))
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v4 = *(v2 + 32);

        return [defaultCenter addObserver:v2 selector:sel__automaticallyMergeChangesFromContextDidSaveNotification_ name:@"_NSManagedObjectContextDidSaveObjectIDsPrivateNotification" object:v4];
      }
    }
  }

  return result;
}

- (void)setParentContext:(NSManagedObjectContext *)parentContext
{
  if (!parentContext)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"Parent NSManagedObjectContext must not be nil.";
    goto LABEL_16;
  }

  parentObjectStore = self->_parentObjectStore;
  if (parentObjectStore == parentContext)
  {
    return;
  }

  if (parentObjectStore)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
    v6 = @"Context already has a coordinator;  cannot replace.";
    goto LABEL_16;
  }

  if (!parentContext->_dispatchQueue)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"Parent NSManagedObjectContext must use either NSPrivateQueueConcurrencyType or NSMainQueueConcurrencyType.";
LABEL_16:
    objc_exception_throw([v4 exceptionWithName:v5 reason:v6 userInfo:0]);
  }

  if (self->_dispatchQueue)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__NSManagedObjectContext_setParentContext___block_invoke;
    v9[3] = &unk_1E6EC1600;
    v9[4] = self;
    v9[5] = parentContext;
    [(NSManagedObjectContext *)self performBlockAndWait:v9];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      v7 = parentContext;
      selfCopy = self;
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
      parentContext = v7;
      self = selfCopy;
    }

    [(NSManagedObjectContext *)self _setParentContext:?];
  }
}

- (void)setName:(NSString *)name
{
  v5 = [(NSString *)name copy];
  v6 = v5;
  if (self->_dispatchQueue)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__NSManagedObjectContext_setName___block_invoke;
    v7[3] = &unk_1E6EC1600;
    v7[4] = self;
    v7[5] = v5;
    [(NSManagedObjectContext *)self performBlockAndWait:v7];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    *(self->_additionalPrivateIvars + 21) = v6;
  }
}

void __34__NSManagedObjectContext_setName___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];

  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 168) + 168) = v2;
  v3 = *(a1 + 32);
  if ((v3[42] & 4) != 0)
  {
    __str[0] = 0;
    if (v2)
    {
      snprintf(__str, 0x1FFuLL, "NSManagedObjectContext %p: ", v3);
      [*(a1 + 40) UTF8String];
      __strlcat_chk();
    }

    else
    {
      snprintf(__str, 0x1FFuLL, "NSManagedObjectContext %p", v3);
    }

    v4 = strdup(__str);
    __dmb(0xBu);
    v5 = *(*(*(a1 + 32) + 24) + *(MEMORY[0x1E69E9790] + 2));
    v6 = v5;
    atomic_compare_exchange_strong((*(*(a1 + 32) + 24) + *(MEMORY[0x1E69E9790] + 2)), &v6, v4);
    if (v6 != v5)
    {
      v7 = block;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      v8 = __34__NSManagedObjectContext_setName___block_invoke_2;
      v5 = v4;
      goto LABEL_9;
    }

    if (v5)
    {
      v7 = v10;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v8 = __34__NSManagedObjectContext_setName___block_invoke_3;
LABEL_9:
      v7[2] = v8;
      v7[3] = &__block_descriptor_40_e5_v8__0l;
      v7[4] = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setTransactionAuthor:(NSString *)transactionAuthor
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__NSManagedObjectContext_setTransactionAuthor___block_invoke;
  v3[3] = &unk_1E6EC1600;
  v3[4] = transactionAuthor;
  v3[5] = self;
  if (self->_dispatchQueue)
  {
    [(NSManagedObjectContext *)self performBlockAndWait:v3];
  }

  else
  {
    __47__NSManagedObjectContext_setTransactionAuthor___block_invoke(v3);
  }
}

uint64_t __47__NSManagedObjectContext_setTransactionAuthor___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:*(*(*(a1 + 40) + 168) + 128)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 168);
    v5 = *(v4 + 128);
    if (v3)
    {
      v6 = *(v4 + 128);
      *(*(*(a1 + 40) + 168) + 128) = [v3 copy];
    }

    else
    {
      *(v4 + 128) = 0;
    }

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)_retainedCurrentQueryGeneration:(id)generation
{
  if (!self->_parentObjectStore)
  {
    v4 = +[NSQueryGenerationToken nostoresQueryGenerationToken];
    goto LABEL_5;
  }

  v3 = atomic_load(&self->_isParentStoreContext);
  if (v3)
  {
    v4 = +[NSQueryGenerationToken unpinnedQueryGenerationToken];
LABEL_5:

    return v4;
  }

  parentObjectStore = self->_parentObjectStore;

  return [parentObjectStore _retainedCurrentQueryGeneration:generation];
}

- (BOOL)_setQueryGenerationFromToken:(id)token error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_parentObjectStore && (v5 = atomic_load(&self->_isParentStoreContext), (v5 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 1;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3052000000;
    v17 = __Block_byref_object_copy__13;
    v18 = __Block_byref_object_dispose__13;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__NSManagedObjectContext__setQueryGenerationFromToken_error___block_invoke;
    v13[3] = &unk_1E6EC1A00;
    v13[4] = token;
    v13[5] = self;
    v13[6] = &v20;
    v13[7] = &v14;
    if (self->_dispatchQueue)
    {
      [(NSManagedObjectContext *)self performBlockAndWait:v13];
    }

    else
    {
      __61__NSManagedObjectContext__setQueryGenerationFromToken_error___block_invoke(v13);
    }

    v6 = *(v21 + 24);
    if ((v6 & 1) == 0)
    {
      v7 = v15[5];
      if (v7)
      {
        if (error)
        {
          *error = v7;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v25 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
          v26 = 1024;
          v27 = 4384;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v9 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v25 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
          v26 = 1024;
          v27 = 4384;
          _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v10 = v15[5];
      v6 = *(v21 + 24);
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v20, 8);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

void __61__NSManagedObjectContext__setQueryGenerationFromToken_error___block_invoke(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(*(*(a1 + 40) + 168) + 96);
  if (*(a1 + 32) != v2)
  {
    v4 = +[NSQueryGenerationToken unpinnedQueryGenerationToken];
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || (v7 = +[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken, "currentQueryGenerationToken"), v4 = *(a1 + 32), v7 == v4) || (v8 = +[NSQueryGenerationToken nostoresQueryGenerationToken], v4 = *(a1 + 32), v8 == v4))
    {
      *(*(*v1 + 168) + 96) = v4;
    }

    else
    {
      v9 = [(NSQueryGenerationToken *)v4 persistentStoreCoordinator];
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      if (v9 && v9 != *(v10 + 32))
      {
        v11 = [*(a1 + 32) copy];
        v10 = *v1;
      }

      v15 = 0;
      if ([*(v10 + 32) _validateQueryGeneration:v11 error:&v15])
      {
        v12 = v11;
        v13 = 96;
        v14 = 168;
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        v12 = v15;
        v1 = (a1 + 56);
        v13 = 40;
        v14 = 8;
      }

      *(*(*v1 + v14) + v13) = v12;
    }
  }
}

- (BOOL)setQueryGenerationFromToken:(NSQueryGenerationToken *)generation error:(NSError *)error
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if (self->_parentObjectStore)
  {
    v7 = atomic_load(&self->_isParentStoreContext);
    if (v7)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Child contexts inherit parent context generations and may not have their own" userInfo:0]);
    }

    if ([(NSManagedObjectContext *)self automaticallyMergesChangesFromParent]&& +[NSQueryGenerationToken unpinnedQueryGenerationToken](NSQueryGenerationToken, "unpinnedQueryGenerationToken") != generation && +[NSQueryGenerationToken currentQueryGenerationToken]!= generation)
    {
      [(NSManagedObjectContext *)self setAutomaticallyMergesChangesFromParent:0];
    }

    return [(NSManagedObjectContext *)self _setQueryGenerationFromToken:generation error:error];
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF435080];
    }

    return 0;
  }
}

- (BOOL)_setChangeTrackingTokenFromToken:(id)token error:(id *)error
{
  if (self->_parentObjectStore)
  {
    v4 = atomic_load(&self->_isParentStoreContext);
    if (v4)
    {
      return 0;
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__NSManagedObjectContext__setChangeTrackingTokenFromToken_error___block_invoke;
  v6[3] = &unk_1E6EC1600;
  v6[4] = token;
  v6[5] = self;
  if (self->_dispatchQueue)
  {
    [(NSManagedObjectContext *)self performBlockAndWait:v6, error];
  }

  else
  {
    __65__NSManagedObjectContext__setChangeTrackingTokenFromToken_error___block_invoke(v6);
  }

  return 1;
}

void __65__NSManagedObjectContext__setChangeTrackingTokenFromToken_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 168);
  v4 = *(v3 + 120);
  if (v2 != v4)
  {
    if (v2)
    {
      v5 = *(v3 + 120);
      *(*(*(a1 + 40) + 168) + 120) = v2;
      v4 = v5;
    }

    else
    {
      *(v3 + 120) = 0;
    }
  }
}

- (id)_changeTrackingToken__
{
  v2 = self->_additionalPrivateIvars[15];

  return v2;
}

- (void)setAutomaticallyMergesChangesFromParent:(BOOL)automaticallyMergesChangesFromParent
{
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Automatic merging is not supported by contexts using NSConfinementConcurrencyType" userInfo:0]);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__NSManagedObjectContext__setAutomaticallyMergesChangesFromParent___block_invoke;
  v3[3] = &unk_1E6EC2770;
  v4 = automaticallyMergesChangesFromParent;
  v3[4] = self;
  [(NSManagedObjectContext *)self performBlockAndWait:v3];
}

uint64_t __67__NSManagedObjectContext__setAutomaticallyMergesChangesFromParent___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  v3 = *(v2 + 40);
  if (((v3 >> 22) & 1) != v1)
  {
    v4 = result;
    *(v2 + 40) = v3 & 0xFFBFFFFF | ((v1 & 1) << 22);
    v5 = *(result + 32);
    if ((*(v5 + 42) & 0x40) != 0)
    {
      if (*(v5 + 32) && *(v5 + 24))
      {
        v8 = [MEMORY[0x1E696AD88] defaultCenter];
        v9 = *(*(v4 + 32) + 32);

        return [v8 addObserver:? selector:? name:? object:?];
      }
    }

    else
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      v7 = *(*(v4 + 32) + 32);

      return [v6 removeObserver:? name:? object:?];
    }
  }

  return result;
}

- (void)_automaticallyMergeChangesFromContextDidSaveNotification:(id)notification
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__NSManagedObjectContext__automaticallyMergeChangesFromContextDidSaveNotification___block_invoke;
  v3[3] = &unk_1E6EC1600;
  v3[4] = self;
  v3[5] = notification;
  [(NSManagedObjectContext *)self performBlock:v3];
}

_BYTE *__83__NSManagedObjectContext__automaticallyMergeChangesFromContextDidSaveNotification___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[42] & 0x40) != 0)
  {
    return [result mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
  }

  return result;
}

- (void)objectDidBeginEditing:(id)editing
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v5 = *(self->_additionalPrivateIvars + 4);
  if (!v5)
  {
    *(self->_additionalPrivateIvars + 4) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v5 = *(self->_additionalPrivateIvars + 4);
  }

  v7.length = CFArrayGetCount(v5);
  v7.location = 0;
  if (CFArrayGetFirstIndexOfValue(v5, v7, editing) == -1)
  {
    CFArrayAppendValue(v5, editing);
    if ((*(&self->_flags + 1) & 0x20) == 0 && CFArrayGetCount(v5) >= 1)
    {
      [(NSManagedObjectContext *)self willChangeValueForKey:@"isEditing"];
      *&self->_flags |= 0x2000u;

      [(NSManagedObjectContext *)self didChangeValueForKey:@"isEditing"];
    }
  }
}

- (void)objectDidEndEditing:(id)editing
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v5 = *(self->_additionalPrivateIvars + 4);
  if (!v5)
  {
    *(self->_additionalPrivateIvars + 4) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v5 = *(self->_additionalPrivateIvars + 4);
  }

  v8.length = CFArrayGetCount(v5);
  v8.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v8, editing);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(v5, FirstIndexOfValue);
    if ((*(&self->_flags + 1) & 0x20) != 0 && !CFArrayGetCount(v5))
    {
      [(NSManagedObjectContext *)self willChangeValueForKey:@"isEditing"];
      *&self->_flags &= ~0x2000u;

      [(NSManagedObjectContext *)self didChangeValueForKey:@"isEditing"];
    }
  }
}

- (BOOL)commitEditingAndReturnError:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  commitEditing = [(NSManagedObjectContext *)self commitEditing];
  if (!commitEditing)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:0];
    if (v5)
    {
      if (error)
      {
        *error = v5;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
        v12 = 1024;
        v13 = 4595;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", &v10, 0x12u);
      }

      v7 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v10 = 136315394;
        v11 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
        v12 = 1024;
        v13 = 4595;
        _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", &v10, 0x12u);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return commitEditing;
}

- (BOOL)commitEditing
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = *(self->_additionalPrivateIvars + 4);
  if (!v3)
  {
    *(self->_additionalPrivateIvars + 4) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v3 = *(self->_additionalPrivateIvars + 4);
  }

  if ([(NSManagedObjectContext *)self isEditing]&& (Count = CFArrayGetCount(v3), v5 = Count - 1, Count >= 1))
  {
    do
    {
      v6 = [CFArrayGetValueAtIndex(v3 v5)];
      v8 = v5-- != 0;
    }

    while (v6 && v8);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (uint64_t)_sendCommitEditingSelectorToTarget:(uint64_t)target sender:(uint64_t)sender selector:(char)selector flag:(uint64_t)flag contextInfo:(int)info delayed:
{
  targetCopy = target;
  selectorCopy = selector;
  flagCopy = flag;
  if (result)
  {
    v10 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:{objc_msgSend(a2, "methodSignatureForSelector:", sender)}];
    [v10 setSelector:sender];
    [v10 setArgument:&targetCopy atIndex:2];
    [v10 setArgument:&selectorCopy atIndex:3];
    [v10 setArgument:&flagCopy atIndex:4];
    if (info)
    {
      return [v10 performSelector:sel_invokeWithTarget_ withObject:a2 afterDelay:objc_msgSend(MEMORY[0x1E695DEC8] inModes:{"arrayWithObject:", *MEMORY[0x1E695E8D0]), 0.0}];
    }

    else
    {
      return [v10 invokeWithTarget:a2];
    }
  }

  return result;
}

- (void)commitEditingWithDelegate:(id)delegate didCommitSelector:(SEL)selector contextInfo:(void *)info
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v9 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v9 = malloc_default_zone();
  }

  v10 = malloc_type_zone_calloc(v9, 1uLL, 0x18uLL, 0x80040D6874129uLL);
  *v10 = delegate;
  v10[1] = selector;
  v10[2] = info;

  [(NSManagedObjectContext *)self _sendCommitEditingSelectorToTarget:0 sender:sel__managedObjectContextEditor_didCommit_contextInfo_ selector:1 flag:v10 contextInfo:1 delayed:?];
}

- (void)_managedObjectContextEditor:(id)editor didCommit:(BOOL)commit contextInfo:(id *)info
{
  commitCopy = commit;
  v8 = *(self->_additionalPrivateIvars + 4);
  if (v8)
  {
    if (!commit)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(self->_additionalPrivateIvars + 4) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v8 = *(self->_additionalPrivateIvars + 4);
    if (!commitCopy)
    {
LABEL_10:
      [(NSManagedObjectContext *)self _sendCommitEditingSelectorToTarget:self sender:info->var1 selector:commitCopy flag:info->var2 contextInfo:0 delayed:?];
      v11 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v11 = malloc_default_zone();
      }

      malloc_zone_free(v11, info);
      return;
    }
  }

  if (![(NSManagedObjectContext *)self isEditing])
  {
    goto LABEL_10;
  }

  Count = CFArrayGetCount(v8);
  if (Count < 1)
  {
    goto LABEL_10;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v8, Count - 1);

  [ValueAtIndex commitEditingWithDelegate:self didCommitSelector:sel__managedObjectContextEditor_didCommit_contextInfo_ contextInfo:info];
}

- (void)_forceMoveInsertToUpdatedList:(uint64_t)list
{
  if (list)
  {
    if (a2)
    {
      a2[4] &= 0xFFFFFFED;
    }

    [*(list + 72) removeObject:a2];
    [*(list + 80) removeObject:a2];

    _PFFastMOCObjectWillChange(list, a2);
  }
}

- (void)_newUnchangedLockedObjects
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 104) count];
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v2];
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v12 - v5);
  if (v2 > 0x200)
  {
    v6 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v12 - v5, 8 * v4);
  }

  [*(self + 104) getObjects:v6];
  if (v2 >= 1)
  {
    v7 = v6;
    v8 = v2;
    do
    {
      v9 = *v7;
      if (([*v7 hasChanges] & 1) == 0)
      {
        [v3 addObject:v9];
        if ((v9[17] & 0x80) != 0)
        {
          [(NSFaultHandler *)_insertion_fault_handler fulfillFault:v9 withContext:self];
        }
      }

      ++v7;
      --v8;
    }

    while (v8);
  }

  if (v2 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_unlimitRequest:(void *)request
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [objc_msgSend(request "substitutionVariables")];
    [v2 setValue:objc_msgSend(MEMORY[0x1E696ABC8] forKey:{"expressionForConstantValue:", 0), @"FETCH_REQUEST_LIMIT_SUBSTITUTION"}];
    [request setSubstitutionVariables:v2];
  }

  else
  {

    [request setFetchLimit:0];
  }
}

- (void)_registerObject:(void *)object withID:
{
  if (self)
  {
    if (!object)
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
      v9 = @"cannot record object with null globalID";
LABEL_19:
      objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:0]);
    }

    v6 = *(a2 + 32);
    if (v6)
    {
      if (v6 != self)
      {
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = @"An NSManagedObject may only be in (or observed by) a single NSManagedObjectContext.";
        goto LABEL_19;
      }
    }

    else
    {
      *(a2 + 32) = self;
    }

    v10 = *(a2 + 40);
    if (!v10 || v10 == object)
    {
      *(a2 + 40) = object;
    }

    else
    {
      [(NSManagedObject *)a2 _setObjectID__:object];
      v11 = *(a2 + 24);
      if (v11)
      {
        snapshot_set_objectID(v11, object);
      }
    }

    if (!*(a2 + 56))
    {
      atomic_fetch_add((*(self + 152) + 8), 1u);
      *(a2 + 56) = *(self + 152);
    }

    *(a2 + 16) &= 0xFFF7FF7F;
    v12 = *(self + 120);

    _PFCMT_SetValue(v12, object, a2);
  }
}

- (void)_forceRegisterLostFault:(uint64_t)fault
{
  v22 = *MEMORY[0x1E69E9840];
  if (!fault)
  {
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  objectID = [a2 objectID];
  Value = _PFCMT_GetValue(*(fault + 120), objectID);
  if (Value)
  {
    v6 = Value == a2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v9 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_17;
    }

    v11 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v13 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v13)
      {
LABEL_16:
        *buf = 134218754;
        v15 = a2;
        v16 = 2112;
        v17 = objectID;
        v18 = 2048;
        managedObjectContext = [a2 managedObjectContext];
        v20 = 2048;
        faultCopy = fault;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: fatal: Failed to re-registered lost fault. fault %p with oid %@ has a moc of %p but we expected %p\n\n", buf, 0x2Au);
      }
    }

    else if (v13)
    {
      goto LABEL_16;
    }

LABEL_17:
    _NSCoreDataLog_console(1, "fatal: Failed to re-registered lost fault. fault %p with oid %@ has a moc of %p but we expected %p\n", a2, objectID, [a2 managedObjectContext], fault);
    objc_autoreleasePoolPop(v9);
    __break(1u);
    return;
  }

  v7 = *MEMORY[0x1E69E9840];

  [(NSManagedObjectContext *)fault _registerObject:a2 withID:objectID];
}

- (void)_forgetObject:(id)object propagateToObjectStore:(BOOL)store removeFromRegistry:(BOOL)registry
{
  v54 = *MEMORY[0x1E69E9840];
  values = object;
  if (object)
  {
    registryCopy = registry;
    storeCopy = store;
    objectCopy = object;
    objectID = [object objectID];
    v10 = objectCopy[4];
    v11 = v10 | 0x80;
    objectCopy[4] = v10 | 0x80;
    if (registryCopy && (v10 & 0x80000) == 0)
    {
      _PFCMT_RemoveValue(&self->_infoByGID->super.isa, objectID);
      v11 = objectCopy[4];
    }

    objectCopy[4] = v11 | 0x80080;
    if (!storeCopy || (v11 & 0x200) == 0 || ([objectID isTemporaryID] & 1) != 0)
    {
      goto LABEL_31;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = _PFStackAllocatorCreate(&v22, 1024);
    v13 = CFArrayCreate(v12, &values, 1, 0);
    [(NSManagedObjectContext *)self lockObjectStore];
    parentObjectStore = self->_parentObjectStore;
    if ([(__CFArray *)v13 count])
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[__CFArray count](v13, "count")}];
      v16 = [(__CFArray *)v13 count];
      if (v16)
      {
        for (i = 0; i != v16; ++i)
        {
          v18 = [(__CFArray *)v13 objectAtIndex:i];
          objectID2 = [v18 objectID];
          if (([objectID2 isTemporaryID] & 1) == 0)
          {
            [v15 addObject:objectID2];
            if (v18)
            {
              v18[4] &= ~0x200u;
            }
          }
        }
      }

      [parentObjectStore managedObjectContextDidUnregisterObjectsWithIDs:v15 generation:{-[NSManagedObjectContext _queryGenerationToken](self, "_queryGenerationToken")}];
    }

    [(NSManagedObjectContext *)self unlockObjectStore];
    if (*(&v23 + 1))
    {
      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      *(&v22 + 1) = v22;
    }

    objectCopy = values;
    if (values)
    {
LABEL_31:
      if ((objectCopy[4] & 9) == 0 || ([(NSMutableSet *)self->_unprocessedChanges removeObject:objectCopy], [(NSMutableSet *)self->_changedObjects removeObject:values], (objectCopy = values) != 0))
      {
        if ((objectCopy[4] & 0x12) == 0 || ([(NSMutableSet *)self->_unprocessedInserts removeObject:objectCopy], [(NSMutableSet *)self->_insertedObjects removeObject:values], (objectCopy = values) != 0))
        {
          if ((objectCopy[4] & 0x24) == 0 || ([(NSMutableSet *)self->_deletedObjects removeObject:objectCopy], [(NSMutableSet *)self->_unprocessedDeletes removeObject:values], (objectCopy = values) != 0))
          {
            objectCopy[4] &= 0xFFFFFFC0;
          }
        }
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_changeIDsForManagedObjects:(void *)objects toIDs:
{
  selfCopy = self;
  v25[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = [a2 count];
    if (v6 < 1)
    {
      selfCopy = 0;
    }

    else
    {
      v7 = v6;
      v8 = atomic_load((selfCopy + 50));
      if (v8)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = v6;
      }

      else
      {
        v9 = 0;
      }

      v23 = &v23;
      MEMORY[0x1EEE9AC00](v6);
      v11 = &v23 - v10;
      if (v7 > 0x200)
      {
        v11 = NSAllocateScannedUncollectable();
        v13 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v23 - v10, 8 * v7);
        MEMORY[0x1EEE9AC00](v12);
        v13 = &v23 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v13, 8 * v7);
      }

      [a2 getObjects:v11 range:{0, v7, v23}];
      [objects getObjects:v13 range:{0, objc_msgSend(objects, "count")}];
      for (i = 0; i != v7; ++i)
      {
        v15 = *&v11[8 * i];
        objectID = [v15 objectID];
        v17 = *&v13[8 * i];
        if (v17 != objectID)
        {
          [v9 setObject:*&v13[8 * i] forKey:objectID];
          _PFCMT_RemoveValue(*(selfCopy + 120), objectID);
          [(NSManagedObject *)v15 _setObjectID__:v17];
          v18 = v15[3];
          if (v18)
          {
            snapshot_set_objectID(v18, v17);
          }

          _PFCMT_SetValue(*(selfCopy + 120), v17, v15);
          v19 = *(*(selfCopy + 168) + 8);
          if (v19)
          {
            [*v19 setObject:v17 forKey:objectID];
            [*(*(*(selfCopy + 168) + 8) + 8) setObject:objectID forKey:v17];
          }
        }
      }

      if (v7 >= 0x201)
      {
        NSZoneFree(0, v11);
        NSZoneFree(0, v13);
      }

      if ((v8 & 1) != 0 && [v9 count])
      {
        v20 = objc_alloc(MEMORY[0x1E696AD80]);
        v24 = @"_NSManagedObjectContextObjectIDMutationMappingKey";
        v25[0] = v9;
        selfCopy = [v20 initWithName:@"_NSManagedObjectContextPrivateDidMutateObjectIDsNotification" object:selfCopy userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v25, &v24, 1)}];
      }

      else
      {
        selfCopy = 0;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)_retainedObjectWithID:(void *)d optionalHandler:(void *)handler withInlineStorage:(uint64_t)storage
{
  if (!d)
  {
    return 0;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(d, sel__retainedObjectWithID_optionalHandler_withInlineStorage_);
  }

  Value = _PFCMT_GetValue(d[15], handler);
  if (!Value)
  {
    entity = [handler entity];
    v9 = [_PFFastEntityClass(entity) allocWithEntity:entity];
    _PFfastOidRetain(0, handler);
    v10 = [v9 _initWithEntity:entity withID:handler withHandler:storage withContext:d];
    [(NSManagedObjectContext *)d _registerObject:v10 withID:handler];
    v11 = *d[21];
    if (v11 && [v11 containsObject:handler])
    {
      if (![v10 managedObjectContext])
      {
        [(NSManagedObjectContext *)d _forceRegisterLostFault:v10];
      }

      [d deleteObject:v10];
    }

    return v10;
  }

  return Value;
}

- (uint64_t)_batchRetainedObjects:(uint64_t)objects forCount:(uint64_t)count withIDs:(uint64_t)ds optionalHandler:(id *)handler withInlineStorage:(uint64_t)storage
{
  storageCopy = storage;
  result = 0;
  v30 = *MEMORY[0x1E69E9840];
  if (objects && ds)
  {
    v10 = 0;
    v11 = 8 * ds;
    dsCopy = ds;
    do
    {
      Value = _PFCMT_GetValue(*(objects + 120), handler[v10 / 8]);
      if (Value)
      {
        Value = Value;
        dsCopy = (dsCopy - 1);
      }

      *(count + v10) = Value;
      v10 += 8;
    }

    while (v11 != v10);
    if (dsCopy)
    {
      dsCopy2 = ds;
      entity = [*handler entity];
      v14 = _PFFastEntityClass(entity);
      v25 = &v25;
      v27 = dsCopy;
      MEMORY[0x1EEE9AC00](v14);
      v16 = &v25 - v15;
      if (dsCopy > 0x200)
      {
        v16 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v25 - v15, 8 * dsCopy);
      }

      if ([v14 allocBatch:v16 withEntity:entity count:{dsCopy, v25}] < dsCopy)
      {
        [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Could not allocate memory." userInfo:0];
      }

      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *&v16[8 * v17];
        do
        {
          v20 = v18;
        }

        while (*(count + 8 * v18++));
        v22 = handler[v20];
        _PFfastOidRetain(0, v22);
        [v19 _initWithEntity:entity withID:v22 withHandler:storageCopy withContext:objects];
        v19[7] = *(objects + 152);
        *(count + 8 * v20) = v19;
        _PFCMT_SetValue(*(objects + 120), v22, v19);
        v23 = **(objects + 168);
        if (v23 && [v23 containsObject:v22])
        {
          if (![v19 managedObjectContext])
          {
            [(NSManagedObjectContext *)objects _forceRegisterLostFault:v19];
          }

          [objects deleteObject:v19];
        }

        ++v17;
      }

      while (v17 != v27);
      atomic_fetch_add((*(objects + 152) + 8), dsCopy);
      if (dsCopy >= 0x201)
      {
        NSZoneFree(0, v16);
      }

      result = dsCopy2;
    }

    else
    {
      result = ds;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)_handleError:(uint64_t *)error withError:
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!error)
  {
    goto LABEL_18;
  }

  userInfo = [a2 userInfo];
  v6 = [userInfo objectForKey:@"NSCoreDataPrimaryError"];
  if (v6)
  {
    *error = v6;
    goto LABEL_18;
  }

  v7 = [userInfo mutableCopy];
  if (v7)
  {
    v8 = v7;
    [v7 setObject:a2 forKey:@"NSUnderlyingException"];
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a2, @"NSUnderlyingException", 0}];
    if (a2)
    {
LABEL_6:
      if (a2[5])
      {
        v9 = a2[5];
      }

      else
      {
        v9 = 134060;
      }

      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v9 userInfo:v8];
  if (v10)
  {
    *error = v10;
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
      v17 = 1024;
      v18 = 6268;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
      v17 = 1024;
      v18 = 6268;
      _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }
  }

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

- (uint64_t)_validateObjects:(int)objects forOperation:(uint64_t *)operation error:(int)error exhaustive:(int)exhaustive forSave:
{
  exhaustiveCopy = exhaustive;
  errorCopy = error;
  operationCopy = operation;
  objectsCopy = objects;
  selfCopy = self;
  v216 = *MEMORY[0x1E69E9840];
  v7 = [a2 count];
  v8 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v164[-v10];
  v177 = v8;
  v168 = a2;
  if (v8 >= 0x201)
  {
    v176 = NSAllocateScannedUncollectable();
    [a2 getObjects:?];
  }

  else
  {
    bzero(&v164[-v10], 8 * v9);
    v176 = v11;
    [a2 getObjects:v11];
    if (!v177)
    {
      if (exhaustiveCopy)
      {
        v173 = 0;
        v13 = (selfCopy + 40);
        v14 = *(selfCopy + 10);
        v15 = v14 | 8;
        *(selfCopy + 10) = v14 | 8;
        v16 = v13;
        goto LABEL_216;
      }

      v153 = 1;
      goto LABEL_229;
    }
  }

  v173 = 0;
  v179 = 0;
  v190 = (selfCopy + 40);
  v171 = *MEMORY[0x1E696A250];
  v167 = @"NSDetailedErrors";
  v182 = @"NSValidationErrorKey";
  *&v12 = 138412546;
  v169 = v12;
  *&v12 = 138412290;
  v174 = v12;
  *&v12 = 138412802;
  v187 = v12;
  v172 = 1;
  do
  {
    v178 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v189 = v176[v179];
    v205[0] = 0;
    if (objectsCopy == 2)
    {
      v17 = [v189 validateForDelete:v205];
    }

    else
    {
      if (objectsCopy != 1)
      {
        v18 = [v189 validateForInsert:v205];
        goto LABEL_165;
      }

      v17 = [v189 validateForUpdate:v205];
    }

    if (v17)
    {
      goto LABEL_164;
    }

    v19 = [objc_msgSend(selfCopy "mergePolicy")];
    if (v19 > 4)
    {
      v18 = 0;
      goto LABEL_165;
    }

    v18 = 0;
    if (((1 << v19) & 0x16) == 0)
    {
      goto LABEL_165;
    }

    if (([(NSManagedObjectContext *)selfCopy _checkObjectForExistenceAndCacheRow:v189]& 1) == 0)
    {
      *v190 |= 0x1000u;
      v22 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            if (v205[0])
            {
              v24 = v205[0];
            }

            else
            {
              v24 = @"null";
            }

            userInfo = [v205[0] userInfo];
            objectID = [v189 objectID];
            *buf = v187;
            v27 = @"null";
            if (userInfo)
            {
              v27 = userInfo;
            }

            v211 = v24;
            v212 = 2112;
            v213 = v27;
            v214 = 2112;
            v215 = objectID;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
          }
        }

        else
        {
          v106 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            if (v205[0])
            {
              v107 = v205[0];
            }

            else
            {
              v107 = @"null";
            }

            userInfo2 = [v205[0] userInfo];
            objectID2 = [v189 objectID];
            *buf = v187;
            v110 = @"null";
            if (userInfo2)
            {
              v110 = userInfo2;
            }

            v211 = v107;
            v212 = 2112;
            v213 = v110;
            v214 = 2112;
            v215 = objectID2;
            _os_log_impl(&dword_18565F000, v106, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
          }
        }
      }

      if (v205[0])
      {
        v111 = v205[0];
      }

      else
      {
        v111 = @"null";
      }

      if (_pflogging_catastrophic_mode)
      {
        userInfo3 = [v205[0] userInfo];
        objectID3 = [v189 objectID];
        v114 = 1;
      }

      else
      {
        userInfo3 = [v205[0] userInfo];
        objectID3 = [v189 objectID];
        v114 = 4;
      }

      v115 = @"null";
      if (userInfo3)
      {
        v115 = userInfo3;
      }

      _NSCoreDataLog_console(v114, "repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it", v111, v115, objectID3);
      objc_autoreleasePoolPop(v22);
      if (![v189 managedObjectContext])
      {
        [(NSManagedObjectContext *)selfCopy _forceRegisterLostFault:v189];
      }

      [selfCopy deleteObject:v189];
      [(NSManagedObject *)v189 _propagateDelete:?];
      *v190 &= ~0x1000u;
      v205[0] = 0;
LABEL_164:
      v18 = 1;
      goto LABEL_165;
    }

    if ([objc_msgSend(v205[0] "userInfo")])
    {
      domain = [v205[0] domain];
      if ([domain isEqualToString:v171] && objc_msgSend(v205[0], "code") == 1560)
      {
        userInfo4 = [v205[0] userInfo];
        v180 = [userInfo4 objectForKey:v167];
      }

      else
      {
        v209 = v205[0];
        v180 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v209 count:1];
      }

      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      v28 = [v180 countByEnumeratingWithState:&v201 objects:v208 count:16];
      if (v28)
      {
        v181 = *v202;
        do
        {
          v29 = 0;
          v184 = v28;
          do
          {
            if (*v202 != v181)
            {
              objc_enumerationMutation(v180);
            }

            userInfo5 = [*(*(&v201 + 1) + 8 * v29) userInfo];
            v185 = v29;
            v31 = objc_autoreleasePoolPush();
            _pflogInitialize(2);
            IsLogEnabled = _NSCoreDataIsLogEnabled(2);
            v33 = v185;
            if (IsLogEnabled && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v34 = _PFLogGetLogStream(1);
                if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_44;
                }

                *buf = v174;
                v211 = userInfo5;
                v35 = v34;
                v36 = "CoreData: error: checkpoint attempting validation failure recovery with error %@\n";
              }

              else
              {
                v37 = _PFLogGetLogStream(2);
                if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_44;
                }

                *buf = v174;
                v211 = userInfo5;
                v35 = v37;
                v36 = "CoreData: warning: checkpoint attempting validation failure recovery with error %@\n";
              }

              _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0xCu);
            }

LABEL_44:
            if (_pflogging_catastrophic_mode)
            {
              v38 = 1;
            }

            else
            {
              v38 = 2;
            }

            _NSCoreDataLog_console(v38, "checkpoint attempting validation failure recovery with error %@", userInfo5);
            objc_autoreleasePoolPop(v31);
            v39 = [(__CFString *)userInfo5 objectForKey:v182];
            entity = [v189 entity];
            v41 = v184;
            v42 = [(NSEntityDescription *)entity _relationshipNamed:v39];
            v43 = v42;
            if (v42 && ([v42 isToMany] & 1) == 0)
            {
              name = [v43 name];
              v72 = [v189 valueForKey:name];
              if ([v72 isFault] && (-[NSManagedObjectContext _checkObjectForExistenceAndCacheRow:](selfCopy, v72) & 1) == 0)
              {
                *v190 |= 0x1000u;
                v73 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v74 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                    {
                      if (v205[0])
                      {
                        v75 = v205[0];
                      }

                      else
                      {
                        v75 = @"null";
                      }

                      userInfo6 = [v205[0] userInfo];
                      objectID4 = [v72 objectID];
                      *buf = v187;
                      v78 = @"null";
                      if (userInfo6)
                      {
                        v78 = userInfo6;
                      }

                      v211 = v75;
                      v212 = 2112;
                      v213 = v78;
                      v214 = 2112;
                      v215 = objectID4;
                      _os_log_error_impl(&dword_18565F000, v74, OS_LOG_TYPE_ERROR, "CoreData: error: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v79 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                    {
                      if (v205[0])
                      {
                        v80 = v205[0];
                      }

                      else
                      {
                        v80 = @"null";
                      }

                      userInfo7 = [v205[0] userInfo];
                      objectID5 = [v72 objectID];
                      *buf = v187;
                      v83 = @"null";
                      if (userInfo7)
                      {
                        v83 = userInfo7;
                      }

                      v211 = v80;
                      v212 = 2112;
                      v213 = v83;
                      v214 = 2112;
                      v215 = objectID5;
                      _os_log_impl(&dword_18565F000, v79, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
                    }
                  }
                }

                if (v205[0])
                {
                  v84 = v205[0];
                }

                else
                {
                  v84 = @"null";
                }

                if (_pflogging_catastrophic_mode)
                {
                  userInfo8 = [v205[0] userInfo];
                  v41 = v184;
                  v33 = v185;
                  v86 = userInfo8;
                  objectID6 = [v72 objectID];
                  v88 = 1;
                }

                else
                {
                  userInfo9 = [v205[0] userInfo];
                  v41 = v184;
                  v33 = v185;
                  v86 = userInfo9;
                  objectID6 = [v72 objectID];
                  v88 = 4;
                }

                v90 = @"null";
                if (v86)
                {
                  v90 = v86;
                }

                _NSCoreDataLog_console(v88, "repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it", v84, v90, objectID6);
                objc_autoreleasePoolPop(v73);
                if (![v72 managedObjectContext])
                {
                  [(NSManagedObjectContext *)selfCopy _forceRegisterLostFault:v72];
                }

                [selfCopy deleteObject:v72];
                [(NSManagedObject *)v72 _propagateDelete:?];
                *v190 &= ~0x1000u;
              }
            }

            else if ([v43 isToMany])
            {
              isOrdered = [v43 isOrdered];
              name2 = [v43 name];
              v45 = [v189 valueForKey:name2];
              if ([v45 count])
              {
                v46 = [v45 copy];
                v199 = 0u;
                v200 = 0u;
                v197 = 0u;
                v198 = 0u;
                v47 = [v46 countByEnumeratingWithState:&v197 objects:v207 count:16];
                if (v47)
                {
                  v48 = 0;
                  v49 = *v198;
                  v186 = v43;
                  v191 = v46;
                  do
                  {
                    for (i = 0; i != v47; ++i)
                    {
                      if (*v198 != v49)
                      {
                        objc_enumerationMutation(v191);
                      }

                      v51 = *(*(&v197 + 1) + 8 * i);
                      if ([v51 isFault] && (-[NSManagedObjectContext _checkObjectForExistenceAndCacheRow:](selfCopy, v51) & 1) == 0)
                      {
                        *v190 |= 0x1000u;
                        v52 = objc_autoreleasePoolPush();
                        _pflogInitialize(4);
                        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                        {
                          if (_pflogging_catastrophic_mode)
                          {
                            v53 = _PFLogGetLogStream(1);
                            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                            {
                              v54 = @"null";
                              if (v205[0])
                              {
                                v54 = v205[0];
                              }

                              v183 = v54;
                              userInfo10 = [v205[0] userInfo];
                              objectID7 = [v51 objectID];
                              *buf = v187;
                              v57 = @"null";
                              if (userInfo10)
                              {
                                v57 = userInfo10;
                              }

                              v211 = v183;
                              v212 = 2112;
                              v213 = v57;
                              v214 = 2112;
                              v215 = objectID7;
                              _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, "CoreData: error: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
                            }
                          }

                          else
                          {
                            v58 = _PFLogGetLogStream(4);
                            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                            {
                              if (v205[0])
                              {
                                v59 = v205[0];
                              }

                              else
                              {
                                v59 = @"null";
                              }

                              userInfo11 = [v205[0] userInfo];
                              objectID8 = [v51 objectID];
                              *buf = v187;
                              v62 = @"null";
                              if (userInfo11)
                              {
                                v62 = userInfo11;
                              }

                              v211 = v59;
                              v212 = 2112;
                              v213 = v62;
                              v214 = 2112;
                              v215 = objectID8;
                              _os_log_impl(&dword_18565F000, v58, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
                              v43 = v186;
                            }
                          }
                        }

                        if (v205[0])
                        {
                          v63 = v205[0];
                        }

                        else
                        {
                          v63 = @"null";
                        }

                        if (_pflogging_catastrophic_mode)
                        {
                          userInfo12 = [v205[0] userInfo];
                          objectID9 = [v51 objectID];
                          v66 = 1;
                        }

                        else
                        {
                          userInfo12 = [v205[0] userInfo];
                          objectID9 = [v51 objectID];
                          v66 = 4;
                        }

                        v67 = @"null";
                        if (userInfo12)
                        {
                          v67 = userInfo12;
                        }

                        _NSCoreDataLog_console(v66, "repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it", v63, v67, objectID9);
                        objc_autoreleasePoolPop(v52);
                        if (![v51 managedObjectContext])
                        {
                          [(NSManagedObjectContext *)selfCopy _forceRegisterLostFault:v51];
                        }

                        [selfCopy deleteObject:v51];
                        if (!v48)
                        {
                          if (isOrdered)
                          {
                            name3 = [v43 name];
                            v69 = [v189 mutableOrderedSetValueForKey:name3];
                          }

                          else
                          {
                            name4 = [v43 name];
                            v69 = [v189 mutableSetValueForKey:name4];
                          }

                          v48 = v69;
                        }

                        [v48 removeObject:v51];
                        [(NSManagedObject *)v51 _propagateDelete:?];
                        *v190 &= ~0x1000u;
                      }
                    }

                    v46 = v191;
                    v47 = [v191 countByEnumeratingWithState:&v197 objects:v207 count:16];
                  }

                  while (v47);
                }

                v41 = v184;
                v33 = v185;
              }
            }

            v29 = v33 + 1;
          }

          while (v29 != v41);
          v91 = [v180 countByEnumeratingWithState:&v201 objects:v208 count:16];
          v28 = v91;
        }

        while (v91);
      }
    }

    v205[0] = 0;
    if (objectsCopy == 2)
    {
      v18 = 1;
      v92 = [v189 validateForDelete:v205];
    }

    else
    {
      if (objectsCopy != 1)
      {
        goto LABEL_164;
      }

      v18 = 1;
      v92 = [v189 validateForUpdate:v205];
    }

    if (v92)
    {
      goto LABEL_165;
    }

    domain2 = [v205[0] domain];
    if (![domain2 isEqualToString:v171] || objc_msgSend(v205[0], "code") != 1560)
    {
      v100 = objc_autoreleasePoolPush();
      _pflogInitialize(2);
      if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v101 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
            v102 = v205[0];
            userInfo13 = [v205[0] userInfo];
            *buf = v169;
            v211 = v102;
            v212 = 2112;
            v213 = userInfo13;
            v104 = v101;
            v105 = "CoreData: error: validation recovery attempt FAILED with %@ and %@.\n";
LABEL_208:
            _os_log_error_impl(&dword_18565F000, v104, OS_LOG_TYPE_ERROR, v105, buf, 0x16u);
          }
        }

        else
        {
          v123 = _PFLogGetLogStream(2);
          if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            v147 = v205[0];
            userInfo14 = [v205[0] userInfo];
            *buf = v169;
            v211 = v147;
            v212 = 2112;
            v213 = userInfo14;
            v104 = v123;
            v105 = "CoreData: warning: validation recovery attempt FAILED with %@ and %@.\n";
            goto LABEL_208;
          }
        }
      }

      v124 = v205[0];
      if (_pflogging_catastrophic_mode)
      {
        userInfo15 = [v205[0] userInfo];
        v126 = 1;
      }

      else
      {
        userInfo15 = [v205[0] userInfo];
        v126 = 2;
      }

      _NSCoreDataLog_console(v126, "validation recovery attempt FAILED with %@ and %@.", v124, userInfo15);
      objc_autoreleasePoolPop(v100);
LABEL_182:
      v18 = 0;
      goto LABEL_165;
    }

    v94 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v95 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          v96 = v205[0];
          userInfo16 = [v205[0] userInfo];
          *buf = v169;
          v211 = v96;
          v212 = 2112;
          v213 = userInfo16;
          v98 = v95;
          v99 = "CoreData: error: validation recovery attempt FAILED with multiple errors %@ and %@.\n";
LABEL_210:
          _os_log_error_impl(&dword_18565F000, v98, OS_LOG_TYPE_ERROR, v99, buf, 0x16u);
        }
      }

      else
      {
        v127 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          v149 = v205[0];
          userInfo17 = [v205[0] userInfo];
          *buf = v169;
          v211 = v149;
          v212 = 2112;
          v213 = userInfo17;
          v98 = v127;
          v99 = "CoreData: warning: validation recovery attempt FAILED with multiple errors %@ and %@.\n";
          goto LABEL_210;
        }
      }
    }

    v128 = v205[0];
    if (_pflogging_catastrophic_mode)
    {
      userInfo18 = [v205[0] userInfo];
      v130 = 1;
    }

    else
    {
      userInfo18 = [v205[0] userInfo];
      v130 = 2;
    }

    _NSCoreDataLog_console(v130, "validation recovery attempt FAILED with multiple errors %@ and %@.", v128, userInfo18);
    objc_autoreleasePoolPop(v94);
    userInfo19 = [v205[0] userInfo];
    v132 = [userInfo19 objectForKey:v167];
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v133 = [v132 countByEnumeratingWithState:&v193 objects:v206 count:16];
    if (!v133)
    {
      goto LABEL_182;
    }

    v134 = *v194;
    do
    {
      v135 = 0;
      do
      {
        if (*v194 != v134)
        {
          objc_enumerationMutation(v132);
        }

        v136 = *(*(&v193 + 1) + 8 * v135);
        v137 = objc_autoreleasePoolPush();
        _pflogInitialize(2);
        if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v138 = _PFLogGetLogStream(1);
            if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_198;
            }

            userInfo20 = [(__CFString *)v136 userInfo];
            *buf = v169;
            v211 = v136;
            v212 = 2112;
            v213 = userInfo20;
            v140 = v138;
            v141 = "CoreData: error: validation recovery attempt FAILED with %@ and %@.\n";
          }

          else
          {
            v142 = _PFLogGetLogStream(2);
            if (!os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_198;
            }

            userInfo21 = [(__CFString *)v136 userInfo];
            *buf = v169;
            v211 = v136;
            v212 = 2112;
            v213 = userInfo21;
            v140 = v142;
            v141 = "CoreData: warning: validation recovery attempt FAILED with %@ and %@.\n";
          }

          _os_log_error_impl(&dword_18565F000, v140, OS_LOG_TYPE_ERROR, v141, buf, 0x16u);
        }

LABEL_198:
        if (_pflogging_catastrophic_mode)
        {
          userInfo22 = [(__CFString *)v136 userInfo];
          v144 = 1;
        }

        else
        {
          userInfo22 = [(__CFString *)v136 userInfo];
          v144 = 2;
        }

        _NSCoreDataLog_console(v144, "validation recovery attempt FAILED with %@ and %@.", v136, userInfo22);
        objc_autoreleasePoolPop(v137);
        ++v135;
      }

      while (v133 != v135);
      v146 = [v132 countByEnumeratingWithState:&v193 objects:v206 count:16];
      v133 = v146;
      v18 = 0;
    }

    while (v146);
LABEL_165:
    v116 = v205[0];
    [v178 drain];
    v117 = v205[0];
    v118 = 0;
    if (v18)
    {
      goto LABEL_175;
    }

    if (!v173)
    {
      v119 = objc_alloc(MEMORY[0x1E695DF70]);
      v173 = [v119 initWithCapacity:{objc_msgSend(v168, "count")}];
    }

    if (v205[0])
    {
      domain3 = [v205[0] domain];
      if ([domain3 isEqual:v171] && objc_msgSend(v205[0], "code") == 1560)
      {
        userInfo23 = [v205[0] userInfo];
        v122 = [userInfo23 objectForKey:v167];
        [v173 addObjectsFromArray:v122];
      }

      else
      {
        [v173 addObject:v205[0]];
      }
    }

    if ((errorCopy & 1) == 0)
    {
      goto LABEL_218;
    }

    v172 = 0;
LABEL_175:
    ++v179;
  }

  while (v179 != v177);
  if ((v172 & 1) == 0)
  {
LABEL_218:
    if ([v173 count] == 1)
    {
      if (operationCopy)
      {
        v154 = [v173 objectAtIndex:0];
        v153 = 0;
        *operationCopy = v154;
        goto LABEL_226;
      }
    }

    else
    {
      v155 = operationCopy != 0;
      v156 = [v173 count];
      v157 = !v155;
      if (v156 < 2)
      {
        v157 = 1;
      }

      if ((v157 & 1) == 0)
      {
        v158 = objc_alloc(MEMORY[0x1E695DF20]);
        v159 = [v158 initWithObjectsAndKeys:{v173, v167, 0}];
        v160 = [MEMORY[0x1E696ABC0] errorWithDomain:v171 code:1560 userInfo:v159];
        *operationCopy = v160;
      }
    }

    v153 = 0;
    goto LABEL_226;
  }

  if (exhaustiveCopy)
  {
    v151 = 0;
    v14 = *v190;
    *v190 |= 8u;
    do
    {
      v152 = objc_autoreleasePoolPush();
      [v176[v151] willSave];
      objc_autoreleasePoolPop(v152);
      ++v151;
    }

    while (v177 != v151);
    v16 = v190;
    v15 = *v190;
LABEL_216:
    *v16 = v15 & 0xFFFFFFF7 | (8 * ((v14 >> 3) & 1));
  }

  v153 = 1;
LABEL_226:
  v161 = v177 < 0x201;

  if (!v161)
  {
    NSZoneFree(0, v176);
  }

LABEL_229:
  v162 = *MEMORY[0x1E69E9840];
  return v153;
}

- (void)_clearOriginalSnapshotAndInitializeRec:(void *)result
{
  if (result)
  {
    v2 = result;
    [(NSManagedObject *)result _setOriginalSnapshot__:?];

    return [(NSManagedObject *)v2 _setLastSnapshot__:?];
  }

  return result;
}

- (uint64_t)_postContextDidSaveNotificationWithUserInfo:(uint64_t)info
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (byte_1ED4BEEC6 == 1)
  {
    v5 = [a2 objectForKey:@"managedObjectContext"];
    if (v5)
    {
      v6 = v5;
      v7 = v4;
    }

    else
    {
      v8 = [_PFWeakReference weakReferenceWithObject:info];
      [v4 setObject:v8 forKey:@"managedObjectContext"];
      if ((*(info + 43) & 0x10) == 0)
      {
        goto LABEL_7;
      }

      v7 = a2;
      v6 = v8;
    }

    [v7 setObject:v6 forKey:@"managedObjectContext"];
  }

LABEL_7:
  if ((*(info + 43) & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v9 = [a2 objectForKey:@"transactionAuthor"];
  if (v9)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    transactionAuthor = [info transactionAuthor];
    if (!transactionAuthor)
    {
      goto LABEL_13;
    }

    v13 = transactionAuthor;
    [v4 setObject:transactionAuthor forKey:@"transactionAuthor"];
    v11 = a2;
    v10 = v13;
  }

  [v11 setObject:v10 forKey:@"transactionAuthor"];
LABEL_13:
  v14 = [a2 objectForKey:@"newQueryGeneration"];
  if (v14)
  {
    _queryGenerationToken = v14;
LABEL_17:
    [v4 setObject:_queryGenerationToken forKey:@"newQueryGeneration"];
    goto LABEL_18;
  }

  _queryGenerationToken = [info _queryGenerationToken];
  _isEnabled = [_queryGenerationToken _isEnabled];
  if (_queryGenerationToken && _isEnabled)
  {
    goto LABEL_17;
  }

LABEL_18:
  v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = *(*(info + 168) + 136);
  v65 = v4;
  if ([v18 count])
  {
    v19 = [objc_msgSend(a2 objectForKey:{@"inserted", "mutableCopy"}];
    if (!v19)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v20 = [v18 countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v75;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v75 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = [info objectWithID:{objc_msgSend(*(*(&v74 + 1) + 8 * i), "firstObject")}];
          if (v24)
          {
            v25 = v24;
            [v19 addObject:v24];
            [v17 addObject:v25];
          }
        }

        v21 = [v18 countByEnumeratingWithState:&v74 objects:v80 count:16];
      }

      while (v21);
    }

    [a2 setObject:v19 forKey:@"inserted"];

    *(*(info + 168) + 136) = 0;
    v4 = v65;
  }

  v26 = *(*(info + 168) + 144);
  if ([v26 count])
  {
    v27 = [objc_msgSend(a2 objectForKey:{@"updated", "mutableCopy"}];
    if (!v27)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v28 = [v26 countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v71;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v71 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = [info objectWithID:{objc_msgSend(*(*(&v70 + 1) + 8 * j), "firstObject")}];
          if (v32)
          {
            v33 = v32;
            [v27 addObject:v32];
            [v17 addObject:v33];
          }
        }

        v29 = [v26 countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v29);
    }

    *(*(info + 168) + 144) = 0;
    v4 = v65;
  }

  else
  {
    v27 = 0;
  }

  v34 = *(*(info + 168) + 112);
  if ([v34 count])
  {
    if (!v27)
    {
      v27 = [objc_msgSend(a2 objectForKey:{@"updated", "mutableCopy"}];
      if (!v27)
      {
        v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      }
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v35 = [v34 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v67;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v67 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [info objectWithID:*(*(&v66 + 1) + 8 * k)];
          if (v39)
          {
            v40 = v39;
            [v27 addObject:v39];
            [v17 addObject:v40];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v36);
    }

    *(*(info + 168) + 112) = 0;
    v4 = v65;
  }

  if (v27)
  {
    [a2 setObject:v27 forKey:@"updated"];
  }

  if ([v17 count])
  {
    [a2 setObject:v17 forKey:@"_NSTriggerModifiedObjectsKey"];
  }

  if (![objc_msgSend(a2 objectForKey:{@"inserted", "count"}])
  {
    [a2 removeObjectForKey:@"inserted"];
  }

  if (![objc_msgSend(a2 objectForKey:{@"deleted", "count"}])
  {
    [a2 removeObjectForKey:@"deleted"];
  }

  if (![objc_msgSend(a2 objectForKey:{@"updated", "count"}])
  {
    [a2 removeObjectForKey:@"updated"];
  }

  for (m = 0; m != 5; ++m)
  {
    v42 = [a2 objectForKey:off_1E6EC2518[m]];
    if ([v42 count])
    {
      v43 = [_PFRoutines newSetOfObjectIDsFromCollection:v42];
      [v4 setObject:v43 forKey:off_1E6EC2540[m]];
    }
  }

  v44 = [a2 objectForKey:@"refreshed"];
  if ([v44 count])
  {
    v45 = [_PFRoutines newSetOfObjectIDsFromCollection:v44];
  }

  else
  {
    v45 = NSSet_EmptySet;
  }

  v46 = v45;
  v47 = [a2 objectForKey:@"refreshed_objectIDs"];
  if (![v46 count] && !objc_msgSend(v47, "count"))
  {
    [a2 removeObjectForKey:@"refreshed"];
    [a2 removeObjectForKey:@"refreshed_objectIDs"];
    [v4 removeObjectForKey:@"refreshed"];
    [v4 removeObjectForKey:@"refreshed_objectIDs"];
    goto LABEL_95;
  }

  v48 = [_PFRoutines newSetFromCollection:v46 byAddingItems:v47];

  [v4 setObject:v48 forKey:@"refreshed_objectIDs"];
  v49 = [v48 count];
  v50 = v49;
  if (v49 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v49;
  }

  if (v49 >= 0x201)
  {
    v52 = 1;
  }

  else
  {
    v52 = v51;
  }

  v53 = &v64 - ((8 * v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v48;
  if (v49 >= 0x201)
  {
    v53 = NSAllocateScannedUncollectable();
    [v48 getObjects:v53];
LABEL_88:
    v55 = 0;
    v54 = 0;
    do
    {
      v56 = [info objectRegisteredForID:*&v53[8 * v55]];
      if (v56)
      {
        *&v53[8 * v54++] = v56;
      }

      ++v55;
    }

    while (v50 != v55);
    goto LABEL_92;
  }

  bzero(&v64 - ((8 * v52 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v51);
  [v48 getObjects:v53];
  if (v50)
  {
    goto LABEL_88;
  }

  v54 = 0;
LABEL_92:
  v57 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v53 count:v54];
  if (v50 >= 0x201)
  {
    NSZoneFree(0, v53);
  }

  [a2 setObject:v57 forKey:@"refreshed"];

LABEL_95:
  v58 = [v4 copy];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v60 = defaultCenter;
  v61 = atomic_load((info + 48));
  if ((v61 & 1) == 0)
  {
    [defaultCenter postNotificationName:@"_NSManagedObjectContextDidSaveObjectIDsPrivateNotification" object:*(info + 32) userInfo:v58];
    [v60 postNotificationName:@"NSManagedObjectContextDidSaveObjectIDsNotification" object:*(info + 32) userInfo:v58];
  }

  [v60 postNotificationName:@"_NSManagedObjectContextDidSaveObjectIDsPrivateNotification" object:info userInfo:v58];
  result = [v60 postNotificationName:@"NSManagedObjectContextDidSaveObjectIDsNotification" object:info userInfo:v58];
  if ((*(info + 43) & 8) != 0)
  {
    result = [v60 postNotificationName:@"NSManagingContextDidSaveChangesNotification" object:info userInfo:a2];
  }

  v63 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_informParentStoreNoLongerInterestedInObjectIDs:(uint64_t)ds generation:
{
  v18 = *MEMORY[0x1E69E9840];
  if (self && [a2 count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (([v11 isTemporaryID] & 1) == 0)
          {
            [v6 addObject:v11];
          }
        }

        v8 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [*(self + 32) managedObjectContextDidUnregisterObjectsWithIDs:v6 generation:ds];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_retainedObjectsFromRemovedStore:(id)store
{
  v16[1] = *MEMORY[0x1E69E9840];
  Count = _PFCMT_GetCount(&self->_infoByGID->super.isa);
  v6 = Count;
  if (Count <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = Count;
  }

  if (Count >= 0x201)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = (v16 - ((8 * v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (Count > 0x200)
  {
    v9 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v16 - ((8 * v8 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v7);
  }

  v10 = [(_PFContextMapTable *)self->_infoByGID getAllObjects:v9];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
  if (v10)
  {
    v12 = v9;
    do
    {
      v13 = *v12;
      if ([objc_msgSend(*v12 "objectID")] == store)
      {
        [v11 addObject:v13];
      }

      ++v12;
      --v10;
    }

    while (v10);
  }

  if (v6 >= 0x201)
  {
    NSZoneFree(0, v9);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_setDisableDiscardEditing:(BOOL)editing
{
  if (editing)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFF7FFF | v3);
}

- (void)_persistentStoreDidUpdateAdditionalRows:(void *)rows
{
  if (rows)
  {
    v4 = [a2 count];
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = [a2 objectAtIndex:i];
        v7 = [rows objectRegisteredForID:v6];
        if (v7)
        {
          v8 = v7;
          if ([v7 hasChanges])
          {
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Objects should not be both modified and additional" userInfo:0]);
          }

          v9 = v8[4];
          if ((v9 & 0x200) == 0)
          {
            v8[4] = v9 | 0x200;
          }

          [rows refreshObject:v8 mergeChanges:0];
        }

        else
        {
          [v10 addObject:v6];
        }
      }
    }

    if ([v10 count])
    {
      -[NSManagedObjectContext _informParentStoreNoLongerInterestedInObjectIDs:generation:](rows, v10, [rows queryGenerationToken]);
    }
  }
}

- (void)_setAllowAncillaryEntities:(BOOL)entities
{
  if (entities)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFBFFFFFF | v3);
}

- (void)_setFaultingError:(id)error
{
  if (self->_additionalPrivateIvars[19] != error)
  {
    errorCopy = error;

    *(self->_additionalPrivateIvars + 19) = error;
  }
}

- (int64x2_t)_updateDatabaseStaticsWithCacheStats:(uint64_t)stats
{
  if (stats)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(stats, sel__updateDatabaseStaticsWithCacheStats_);
    }

    v4 = *(*(stats + 168) + 160);
    if (v4 || (*(*(stats + 168) + 160) = [[NSSQLiteDatabaseStatistics alloc] initWithPageSize:a2[1].i64[1]], (v4 = *(*(stats + 168) + 160)) != 0))
    {
      v6 = a2[1].i64[0];
      result = vaddq_s64(*(v4 + 8), vextq_s8(*a2, *a2, 8uLL));
      *(v4 + 8) = result;
      *(v4 + 24) += v6;
    }
  }

  return result;
}

- (void)_undoInsertions:(id)insertions
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    ++self->_ignoreChangeNotification;
  }

  v5 = [insertions objectAtIndex:0];
  v6 = [insertions objectAtIndex:1];
  v7 = [v5 count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [v5 objectAtIndex:i];
      v11 = [v6 objectAtIndex:i];
      if (![(NSManagedObject *)v10 managedObjectContext])
      {
        v10 = [(NSManagedObjectContext *)self objectWithID:[(NSManagedObject *)v10 objectID]];
      }

      if (v11 != NSKeyValueCoding_NullValue)
      {
        [(NSManagedObject *)v10 _updateFromUndoSnapshot:v11];
      }

      [(NSManagedObjectContext *)self deleteObject:v10];
    }
  }

  if (self)
  {
    --self->_ignoreChangeNotification;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v17 + 1) + 8 * j) awakeFromSnapshotEvents:2];
      }

      v13 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_registerUndoForOperation:(void *)operation withObjects:(uint64_t)objects withExtraArguments:
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*(*(self + 168) + 40))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    result = [operation countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (result)
    {
      v19 = result;
      v20 = *v24;
      do
      {
        v21 = 0;
        do
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(operation);
          }

          [(NSManagedObject *)*(*(&v23 + 1) + 8 * v21++) _setLastSnapshot__:?];
        }

        while (v19 != v21);
        result = [operation countByEnumeratingWithState:&v23 objects:v27 count:16];
        v19 = result;
      }

      while (result);
    }

    goto LABEL_21;
  }

  v8 = [operation count];
  result = [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
  if (!v8)
  {
LABEL_21:
    v22 = *MEMORY[0x1E69E9840];
    return result;
  }

  v10 = result;
  for (i = 0; i != v8; ++i)
  {
    v12 = [operation objectAtIndex:i];
    _newSnapshotForUndo__ = [(NSManagedObject *)v12 _newSnapshotForUndo__];
    if ([(NSKnownKeysDictionary *)_newSnapshotForUndo__ count])
    {
      v14 = _newSnapshotForUndo__;
    }

    else
    {
      v14 = NSKeyValueCoding_NullValue;
    }

    [v10 addObject:v14];

    [(NSManagedObject *)v12 _setLastSnapshot__:?];
  }

  if (objects)
  {
    objectsCopy = objects;
  }

  else
  {
    objectsCopy = NSKeyValueCoding_NullValue;
  }

  v16 = *(*(self + 168) + 40);
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:{operation, v10, objectsCopy, objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", *(self + 44)), 0}];
  v18 = *MEMORY[0x1E69E9840];

  return [v16 registerUndoWithTarget:self selector:a2 object:v17];
}

- (void)_undoDeletionsMovedToUpdates:(id)updates
{
  v5 = [updates count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [updates objectAtIndex:i];
      [(NSManagedObjectContext *)self deleteObject:v8];
      [v8 awakeFromSnapshotEvents:4];
    }
  }
}

- (void)_undoDeletions:(id)deletions
{
  v32 = *MEMORY[0x1E69E9840];
  if (self)
  {
    ++self->_ignoreChangeNotification;
  }

  v5 = [deletions objectAtIndex:0];
  v6 = [deletions objectAtIndex:1];
  v7 = [objc_msgSend(objc_msgSend(deletions objectAtIndex:{2), "objectAtIndex:", 0), "objectAtIndex:", 0}];
  v26 = [objc_msgSend(deletions objectAtIndex:{2), "objectAtIndex:", 1}];
  v8 = [deletions objectAtIndex:3];
  if (v7 == NSKeyValueCoding_NullValue)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  undoTransactionID = self->_undoTransactionID;
  if (undoTransactionID == [v8 shortValue])
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 count];
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = v13;
  v25 = v12;
  for (i = 0; i != v14; ++i)
  {
    v16 = [v5 objectAtIndex:{i, v25}];
    v17 = [v6 objectAtIndex:i];
    if (v11)
    {
      v18 = [v11 objectAtIndex:i];
    }

    else
    {
      v18 = 0;
    }

    -[NSManagedObjectContext _insertObjectWithGlobalID:globalID:](self, v16, [v16 objectID]);
    if (v17 != NSKeyValueCoding_NullValue)
    {
      [(NSManagedObject *)v16 _updateFromUndoSnapshot:v17];
      v17 = [v26 objectAtIndex:i];
      if (NSKeyValueCoding_NullValue != v17)
      {
        [(NSManagedObject *)v16 _setLastSnapshot__:v17];
        v17 = NSKeyValueCoding_NullValue;
      }
    }

    if (v18 && v18 != v17 && ([objc_msgSend(v16 "objectID")] & 1) == 0)
    {
      if (v16)
      {
        v16[4] &= 0xFFFFFFDB;
        [(NSMutableSet *)self->_unprocessedDeletes removeObject:v16];
        [(NSMutableSet *)self->_deletedObjects removeObject:v16];
        v16[4] &= 0xFFFFFFED;
      }

      else
      {
        [(NSMutableSet *)self->_unprocessedDeletes removeObject:0];
        [(NSMutableSet *)self->_deletedObjects removeObject:0];
      }

      [(NSMutableSet *)self->_unprocessedInserts removeObject:v16];
      _PFFastMOCObjectWillChange(self, v16);
      [v25 addObject:v16];
    }
  }

  v12 = v25;
  if (self)
  {
LABEL_30:
    --self->_ignoreChangeNotification;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v27 + 1) + 8 * j) awakeFromSnapshotEvents:4];
      }

      v20 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  if ([v12 count])
  {
    [self->_additionalPrivateIvars[5] registerUndoWithTarget:self selector:sel__undoDeletionsMovedToUpdates_ object:v12];
    v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v12];
    [(NSManagedObjectContext *)self _createAndPostChangeNotification:v23 deletions:0 updates:0 refreshes:0 deferrals:0 wasMerge:0];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_createAndPostChangeNotification:(void *)notification deletions:(void *)deletions updates:(void *)updates refreshes:(void *)refreshes deferrals:(int)deferrals wasMerge:
{
  v75 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (self)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v59 = v13;
    deferralsCopy = deferrals;
    notificationCopy = notification;
    if (![refreshes count])
    {
      v19 = 0;
      v14 = 0;
      goto LABEL_48;
    }

    if ([notification count])
    {
      v14 = [refreshes mutableCopy];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v15 = [notification countByEnumeratingWithState:&v68 objects:v74 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v69;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v69 != v17)
            {
              objc_enumerationMutation(notification);
            }

            [v14 removeObject:*(*(&v68 + 1) + 8 * i)];
          }

          v16 = [notification countByEnumeratingWithState:&v68 objects:v74 count:16];
        }

        while (v16);
      }

      if ([a2 count])
      {
        if (v14)
        {
LABEL_17:
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v20 = [a2 countByEnumeratingWithState:&v64 objects:v73 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v65;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v65 != v22)
                {
                  objc_enumerationMutation(a2);
                }

                [v14 addObject:*(*(&v64 + 1) + 8 * j)];
              }

              v21 = [a2 countByEnumeratingWithState:&v64 objects:v73 count:16];
            }

            while (v21);
          }

          a2 = v14;
          goto LABEL_29;
        }

LABEL_16:
        v14 = [refreshes mutableCopy];
        goto LABEL_17;
      }
    }

    else
    {
      if ([a2 count])
      {
        goto LABEL_16;
      }

      v14 = 0;
    }

    if (v14)
    {
      a2 = v14;
    }

    else
    {
      a2 = refreshes;
    }

LABEL_29:
    if ([deletions count])
    {
      updatesCopy = updates;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v24 = [deletions countByEnumeratingWithState:&v60 objects:v72 count:16];
      if (v24)
      {
        v25 = v24;
        v19 = 0;
        v26 = *v61;
        if (v14)
        {
          refreshes = v14;
        }

        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v61 != v26)
            {
              objc_enumerationMutation(deletions);
            }

            v28 = *(*(&v60 + 1) + 8 * k);
            if ([refreshes containsObject:v28])
            {
              if (!v19)
              {
                v19 = [deletions mutableCopy];
              }

              [v19 removeObject:v28];
            }
          }

          v25 = [deletions countByEnumeratingWithState:&v60 objects:v72 count:16];
        }

        while (v25);
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        deletions = v19;
      }

      v13 = v59;
      updates = updatesCopy;
    }

    else
    {
      v19 = 0;
      v13 = v59;
    }

LABEL_48:
    if ([a2 count])
    {
      [v13 setObject:a2 forKey:@"inserted"];
    }

    if ([notificationCopy count])
    {
      [v13 setObject:notificationCopy forKey:@"deleted"];
    }

    v29 = selfCopy;
    if ([deletions count])
    {
      [v13 setObject:deletions forKey:@"updated"];
    }

    if (![updates count])
    {
LABEL_72:

      if ([v13 count])
      {
        if (byte_1ED4BEEC6 == 1)
        {
          [v13 setObject:+[_PFWeakReference weakReferenceWithObject:](_PFWeakReference forKey:{v29), @"managedObjectContext"}];
        }

        if (deferralsCopy)
        {
          [v13 setObject:NSSet_EmptySet forKey:@"NSObjectsChangedByMergeChangesKey"];
        }

        [(NSManagedObjectContext *)v29 _postObjectsDidChangeNotificationWithUserInfo:v13];
      }

      if (!*(v29[21] + 104))
      {
        goto LABEL_98;
      }

      v39 = [v13 mutableCopy];
      if (byte_1ED4BEEC6 == 1)
      {
        [v39 setObject:+[_PFWeakReference weakReferenceWithObject:](_PFWeakReference forKey:{v29), @"managedObjectContext"}];
      }

      [v39 removeObjectForKey:@"NSObjectsChangedByMergeChangesKey"];
      [v39 addEntriesFromDictionary:*(v29[21] + 104)];
      if (![v39 count])
      {
LABEL_97:

        *(v29[21] + 104) = 0;
LABEL_98:

        goto LABEL_99;
      }

      v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (byte_1ED4BEEC6 == 1)
      {
        [v40 setObject:+[_PFWeakReference weakReferenceWithObject:](_PFWeakReference forKey:{v29), @"managedObjectContext"}];
      }

      v41 = [v39 objectForKey:@"newQueryGeneration"];
      if (v41)
      {
        v42 = v41;
      }

      else
      {
        _queryGenerationToken = [v29 _queryGenerationToken];
        if (!_queryGenerationToken || (v42 = _queryGenerationToken, _queryGenerationToken == +[NSQueryGenerationToken unpinnedQueryGenerationToken](NSQueryGenerationToken, "unpinnedQueryGenerationToken")) || v42 == +[NSQueryGenerationToken currentQueryGenerationToken])
        {
LABEL_87:
          for (m = 0; m != 5; ++m)
          {
            v44 = [v39 objectForKey:off_1E6EC2568[m]];
            if ([v44 count])
            {
              v45 = [_PFRoutines newSetOfObjectIDsFromCollection:v44];
            }

            else
            {
              v45 = NSSet_EmptySet;
            }

            v46 = v45;
            v47 = off_1E6EC2590[m];
            v48 = [v39 objectForKey:v47];
            if ([v46 count] || objc_msgSend(v48, "count"))
            {
              v49 = [_PFRoutines newSetFromCollection:v46 byAddingItems:v48];

              [v40 setObject:v49 forKey:v47];
              v46 = v49;
            }

            else
            {
              [v40 removeObjectForKey:v47];
            }
          }

          v50 = [v40 copy];

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v29 = selfCopy;
          [defaultCenter postNotificationName:@"_NSManagedObjectContextDidMergeChangesObjectIDsPrivateNotification" object:selfCopy userInfo:v50];
          [defaultCenter postNotificationName:@"NSManagedObjectContextDidMergeChangesObjectIDsNotification" object:v29 userInfo:v50];
          v13 = v59;
          goto LABEL_97;
        }
      }

      [v40 setObject:v42 forKey:@"newQueryGeneration"];
      goto LABEL_87;
    }

    [v13 setObject:updates forKey:@"refreshed_objectIDs"];
    v30 = [updates count];
    v31 = v30;
    if (v30 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v30;
    }

    if (v30 >= 0x201)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    v34 = &v54 - ((8 * v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v30 >= 0x201)
    {
      v34 = NSAllocateScannedUncollectable();
      [updates getObjects:v34];
    }

    else
    {
      bzero(&v54 - ((8 * v33 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v32);
      [updates getObjects:v34];
      if (!v31)
      {
        v35 = 0;
LABEL_69:
        v38 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v34 count:v35];
        if (v31 >= 0x201)
        {
          NSZoneFree(0, v34);
        }

        v13 = v59;
        [v59 setObject:v38 forKey:@"refreshed"];

        goto LABEL_72;
      }
    }

    v36 = 0;
    v35 = 0;
    do
    {
      v37 = [v29 objectRegisteredForID:*&v34[8 * v36]];
      if (v37)
      {
        *&v34[8 * v35++] = v37;
      }

      ++v36;
    }

    while (v31 != v36);
    goto LABEL_69;
  }

LABEL_99:
  v52 = *MEMORY[0x1E69E9840];
}

- (void)_undoUpdates:(id)updates
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    ++self->_ignoreChangeNotification;
  }

  v5 = [updates objectAtIndex:0];
  v6 = [updates objectAtIndex:1];
  v7 = [v5 count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [v5 objectAtIndex:i];
      v11 = [v6 objectAtIndex:i];
      if (![(NSManagedObject *)v10 managedObjectContext])
      {
        v10 = [(NSManagedObjectContext *)self objectWithID:[(NSManagedObject *)v10 objectID]];
      }

      if (v11 != NSKeyValueCoding_NullValue)
      {
        _PFFastMOCObjectWillChange(self, v10);
        [(NSManagedObject *)v10 _updateFromUndoSnapshot:v11];
      }
    }
  }

  if (self)
  {
    --self->_ignoreChangeNotification;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v17 + 1) + 8 * j) awakeFromSnapshotEvents:8];
      }

      v13 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_forceInsertionForObject:(id)object
{
  if (object)
  {
    v5 = *(object + 4);
    if ((v5 & 0x24) != 0)
    {
      [(NSMutableSet *)self->_unprocessedDeletes removeObject:object];
      [(NSMutableSet *)self->_deletedObjects removeObject:object];
      v5 = *(object + 4);
    }

    if ((v5 & 9) != 0)
    {
      [(NSMutableSet *)self->_unprocessedChanges removeObject:object];
      [(NSMutableSet *)self->_changedObjects removeObject:object];
      v5 = *(object + 4);
    }

    *(object + 4) = v5 & 0xFFFFFFC0;
  }

  objectID = [object objectID];
  [(NSManagedObjectContext *)self _insertObjectWithGlobalID:object globalID:objectID];
  [(NSMutableSet *)self->_insertedObjects addObject:object];
  if (object)
  {
    *(object + 4) |= 0x10u;
  }

  v7 = *self->_additionalPrivateIvars;
  if (v7)
  {

    [v7 removeObject:objectID];
  }
}

- (void)_clearChangedThisTransaction:(id)transaction
{
  v17[1] = *MEMORY[0x1E69E9840];
  [(NSManagedObjectContext *)self _processRecentChanges:?];
  v5 = [transaction objectAtIndex:0];
  undoTransactionID = self->_undoTransactionID;
  if (undoTransactionID == [v5 shortValue])
  {
    v7 = [transaction objectAtIndex:1];
    v8 = [(NSMutableSet *)self->_changedObjects count];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0x1EEE9AC00](v8);
      v12 = v17 - v11;
      if (v10 > 0x200)
      {
        v12 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v17 - v11, 8 * v10);
      }

      [(NSMutableSet *)self->_changedObjects getObjects:v12];
      for (i = 0; i != v9; ++i)
      {
        v14 = *&v12[8 * i];
        if (([v7 containsObject:v14] & 1) == 0)
        {
          if (v14)
          {
            *(v14 + 16) &= ~8u;
          }

          [(NSMutableSet *)self->_changedObjects removeObject:v14];
        }
      }

      if (v9 >= 0x201)
      {
        NSZoneFree(0, v12);
      }
    }
  }

  *&self->_flags &= ~0x20u;
  v15 = [(NSMutableSet *)self->_insertedObjects count]|| [(NSMutableSet *)self->_unprocessedInserts count]|| [(NSMutableSet *)self->_deletedObjects count]|| [(NSMutableSet *)self->_unprocessedDeletes count]|| [(NSMutableSet *)self->_changedObjects count]|| [(NSMutableSet *)self->_unprocessedChanges count]!= 0;
  if (((*&self->_flags >> 10) & 1) != v15)
  {
    [(NSManagedObjectContext *)self willChangeValueForKey:@"hasChanges"];
    self->_flags = (*&self->_flags & 0xFFFFFBFF | (v15 << 10));
    [(NSManagedObjectContext *)self didChangeValueForKey:@"hasChanges"];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_processPendingDeletions:(void *)deletions withInsertions:(void *)insertions withUpdates:withNewlyForgottenList:withRemovedChangedObjects:
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = [*(self + 64) count];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_32;
  }

  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  if (v9 >= 0x201)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  v12 = (8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v22 - v12;
  if (v9 > 0x200)
  {
    v13 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v22 - v12, 8 * v9);
  }

  [*(self + 64) getObjects:v13];
  for (i = 0; i != v9; ++i)
  {
    v15 = *&v13[8 * i];
    if (v15)
    {
      *(v15 + 16) &= ~4u;
      if (![*(self + 72) containsObject:v15])
      {
        v18 = *(v15 + 16);
        if ((v18 & 0x10) != 0)
        {
          [*(self + 80) removeObject:v15];
          *(v15 + 16) &= ~0x10u;
          deletionsCopy = deletions;
        }

        else
        {
          if ((v18 & 8) != 0)
          {
            [*(self + 96) removeObject:v15];
            [insertions addObject:v15];
            v18 = *(v15 + 16) & 0xFFFFFFF7;
          }

          *(v15 + 16) = v18 | 0x20;
LABEL_19:
          deletionsCopy = *(self + 88);
        }

        [deletionsCopy addObject:v15];
        deletionsCopy2 = v10;
LABEL_22:
        [deletionsCopy2 addObject:v15];
        [*(self + 56) removeObject:v15];
        if (v15)
        {
          *(v15 + 16) &= ~1u;
        }

        goto LABEL_24;
      }
    }

    else if (([*(self + 72) containsObject:0] & 1) == 0)
    {
      goto LABEL_19;
    }

    [*(self + 64) removeObject:v15];
    [*(self + 72) removeObject:v15];
    if (v15)
    {
      v16 = *(v15 + 16);
      *(v15 + 16) = v16 & 0xFFFFFFFD;
      deletionsCopy2 = deletions;
      if ((v16 & 0x38) != 0)
      {
        continue;
      }

      goto LABEL_22;
    }

    [deletions addObject:0];
    [*(self + 56) removeObject:0];
LABEL_24:
    [a2 addObject:v15];
  }

  if (v9 >= 0x201)
  {
    NSZoneFree(0, v13);
  }

LABEL_32:
  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_processPendingInsertions:(id *)insertions withDeletions:(void *)deletions withUpdates:(void *)updates
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = [insertions[9] count];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_26;
  }

  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  if (v7 >= 0x201)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  v10 = (8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v18 - v10;
  if (v7 > 0x200)
  {
    v11 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v18 - v10, 8 * v7);
  }

  [insertions[9] getObjects:v11];
  for (i = 0; i != v7; ++i)
  {
    v13 = *&v11[8 * i];
    if (!v13)
    {
      [insertions[10] addObject:0];
      goto LABEL_19;
    }

    v14 = *(v13 + 16);
    *(v13 + 16) = v14 & 0xFFFFFFFD;
    if ((v14 & 8) != 0)
    {
      deletionsCopy = updates;
LABEL_17:
      [deletionsCopy addObject:v13];
      continue;
    }

    if ((v14 & 0x10) != 0)
    {
      deletionsCopy = deletions;
      goto LABEL_17;
    }

    if ((v14 & 0x20) != 0)
    {
      *(v13 + 16) = v14 & 0xFFFFFFC5;
      [insertions[11] removeObject:v13];
    }

    else
    {
      [insertions[10] addObject:v13];
      *(v13 + 16) |= 0x10u;
    }

LABEL_19:
    [v8 addObject:v13];
    [deletions addObject:v13];
    [insertions[7] removeObject:v13];
    if (v13)
    {
      *(v13 + 16) &= ~1u;
    }
  }

  if (v7 >= 0x201)
  {
    NSZoneFree(0, v11);
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_processPendingUpdates:(uint64_t)updates
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = [*(updates + 56) count];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  if (v5 >= 0x201)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = (8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = v15 - v8;
  if (v5 > 0x200)
  {
    v9 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v15 - v8, 8 * v5);
  }

  [*(updates + 56) getObjects:v9];
  for (i = 0; i != v5; ++i)
  {
    v11 = *&v9[8 * i];
    if (v11)
    {
      v12 = *(v11 + 16);
      *(v11 + 16) = v12 & 0xFFFFFFFE;
      if ((v12 & 0x30) != 0)
      {
        goto LABEL_14;
      }

      *(v11 + 16) = v12 & 0xFFFFFFF6 | 8;
    }

    [*(updates + 96) addObject:v11];
LABEL_14:
    [v6 addObject:v11];
    [a2 addObject:v11];
  }

  if (v5 >= 0x201)
  {
    NSZoneFree(0, v9);
  }

LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_processRecentlyForgottenObjects:(void *)objects
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [a2 count];
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  if (v5 >= 0x201)
  {
    v8 = NSAllocateScannedUncollectable();
    [a2 getObjects:v8];
  }

  else
  {
    bzero(v13 - v7, 8 * v6);
    [a2 getObjects:v8];
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  v9 = 0;
  do
  {
    v10 = *&v8[8 * v9];
    if (v10)
    {
      v11 = _insertion_fault_handler;
    }

    else
    {
      v11 = 0;
    }

    [(NSFaultHandler *)v11 turnObject:objects intoFaultWithContext:?];
    [objects _forgetObject:v10 propagateToObjectStore:0 removeFromRegistry:1];
    ++v9;
  }

  while (v4 != v9);
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v8);
  }

LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
}

void __92__NSManagedObjectContext__NSInternalChangeProcessing___prefetchObjectsForDeletePropagation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setEntity:a2];
  [*(a1 + 32) setPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"SELF IN %@", a3)}];
  v8 = [(NSEntityDescription *)a2 _keypathsToPrefetchForDeletePropagation];
  if ([v8 count])
  {
    [*(a1 + 32) setRelationshipKeyPathsForPrefetching:v8];
    v14 = 0;
    if (![*(a1 + 40) executeFetchRequest:*(a1 + 32) error:&v14])
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
            v16 = v14;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Delete propagation prefetching failed with error: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v11 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v16 = v14;
            _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_INFO, "CoreData: debug: Delete propagation prefetching failed with error: %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v12 = 1;
      }

      else
      {
        v12 = 9;
      }

      _NSCoreDataLog_console(v12, "Delete propagation prefetching failed with error: %@", v14);
      objc_autoreleasePoolPop(v9);
      *a4 = 1;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_addObjectIDsInsertUpdatedByDATriggers:(uint64_t)result
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    result = [a2 count];
    if (result)
    {
      v4 = *(*(v3 + 168) + 136);
      if (!v4)
      {
        *(*(v3 + 168) + 136) = objc_alloc_init(MEMORY[0x1E695DF70]);
        v4 = *(*(v3 + 168) + 136);
      }

      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (result)
      {
        v5 = result;
        v6 = *v10;
        do
        {
          v7 = 0;
          do
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(a2);
            }

            [v4 addObject:*(*(&v9 + 1) + 8 * v7++)];
          }

          while (v5 != v7);
          result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
          v5 = result;
        }

        while (result);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_addObjectIDsUpdatedByDATriggers:(uint64_t)result
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    result = [a2 count];
    if (result)
    {
      v4 = *(*(v3 + 168) + 144);
      if (!v4)
      {
        *(*(v3 + 168) + 144) = objc_alloc_init(MEMORY[0x1E695DF70]);
        v4 = *(*(v3 + 168) + 144);
      }

      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (result)
      {
        v5 = result;
        v6 = *v10;
        do
        {
          v7 = 0;
          do
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(a2);
            }

            [v4 addObject:*(*(&v9 + 1) + 8 * v7++)];
          }

          while (v5 != v7);
          result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
          v5 = result;
        }

        while (result);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_addObjectIDsUpdatedByTriggers:(uint64_t)result
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    result = [a2 count];
    if (result)
    {
      v4 = *(*(v3 + 168) + 112);
      if (!v4)
      {
        *(*(v3 + 168) + 112) = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v4 = *(*(v3 + 168) + 112);
      }

      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (result)
      {
        v5 = result;
        v6 = *v10;
        do
        {
          v7 = 0;
          do
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(a2);
            }

            [v4 addObject:*(*(&v9 + 1) + 8 * v7++)];
          }

          while (v5 != v7);
          result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
          v5 = result;
        }

        while (result);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_undoManagerCheckpoint:(id)checkpoint
{
  if ((*(&self->_flags + 1) & 8) == 0)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, sel__processEndOfEventNotification_);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v7 = __90__NSManagedObjectContext__NSInternalNotificationHandling___processEndOfEventNotification___block_invoke;
    v8 = &unk_1E6EC16F0;
    selfCopy = self;
    dispatchQueue = self->_dispatchQueue;
    tryLock = [(NSManagedObjectContext *)self tryLock];
    if (!dispatchQueue)
    {
      if (!tryLock)
      {
        return;
      }

      v7(v6);
      goto LABEL_9;
    }

    if (tryLock)
    {
      [(NSManagedObjectContext *)self performBlockAndWait:v6];
LABEL_9:
      [(NSManagedObjectContext *)self unlock];
      return;
    }

    [(NSManagedObjectContext *)self performBlock:v6];
  }
}

uint64_t __90__NSManagedObjectContext__NSInternalNotificationHandling___processEndOfEventNotification___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result && !*(result + 16))
  {
    result = [result _isDeallocating];
    if ((result & 1) == 0)
    {
      v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      [*(a1 + 32) processPendingChanges];
      [v3 drain];
      return 0;
    }
  }

  return result;
}

- (void)_storeConfigurationChanged:(id)changed
{
  if (self && !self->_wasDisposed && ([(NSManagedObjectContext *)self _isDeallocating]& 1) == 0)
  {
    userInfo = [changed userInfo];
    if (userInfo)
    {
      v5 = userInfo;
    }

    else
    {
      v5 = NSDictionary_EmptyDictionary;
    }

    if (self->_dispatchQueue)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __95__NSManagedObjectContext__NSInternalNotificationHandling___sendOrEnqueueNotification_selector___block_invoke;
      v11[3] = &unk_1E6EC1C40;
      v11[5] = v5;
      v11[6] = sel__processChangedStoreConfigurationNotification_;
      v11[4] = self;
      selfCopy = self;
      tryLock = [(NSManagedObjectContext *)self tryLock];
      selfCopy2 = self;
      if (tryLock)
      {
        [(NSManagedObjectContext *)self performBlockAndWait:v11];
        [(NSManagedObjectContext *)self unlock];
      }

      else
      {
        [(NSManagedObjectContext *)self performBlock:v11];
      }
    }

    else
    {
      selfCopy3 = self;
      if ([(NSManagedObjectContext *)self tryLock])
      {
        if (!self->_wasDisposed && ([(NSManagedObjectContext *)self _isDeallocating]& 1) == 0)
        {
          -[NSManagedObjectContext performSelector:withObject:](self, "performSelector:withObject:", sel__processChangedStoreConfigurationNotification_, [MEMORY[0x1E695DEC8] arrayWithObject:v5]);
          [(NSManagedObjectContext *)self _processReferenceQueue:?];
        }

        [(NSManagedObjectContext *)self unlock];
      }

      else
      {
        [objc_msgSend(MEMORY[0x1E696AD90] "defaultQueue")];
      }
    }
  }
}

- (void)_processChangedStoreConfigurationNotification:(id)notification
{
  v129 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  lastObject = [notification lastObject];
  selfCopy = self;
  v82 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  array = [MEMORY[0x1E695DF70] array];
  v8 = [lastObject objectForKey:@"changedUUID"];
  if (v8)
  {
    v9 = v8;
    v81 = lastObject;
    v96 = 0;
    v10 = [v8 objectAtIndex:0];
    v11 = [v9 objectAtIndex:1];
    v12 = [v9 objectAtIndex:2];
    v13 = [(NSMutableSet *)self->_insertedObjects count];
    v14 = [(NSMutableSet *)self->_unprocessedInserts count];
    v15 = v14 + v13;
    if (v14 + v13)
    {
      v84 = &v77;
      MEMORY[0x1EEE9AC00](v14);
      v17 = &v77 - v16;
      if (v15 > 0x200)
      {
        v17 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v77 - v16, 8 * v15);
      }

      [(NSMutableSet *)self->_insertedObjects getObjects:v17];
      [(NSMutableSet *)self->_unprocessedInserts getObjects:&v17[8 * [(NSMutableSet *)self->_insertedObjects count]]];
      v18 = 0;
      v85 = v11;
      v86 = v10;
      do
      {
        v96 = *&v17[8 * v18];
        objectID = [v96 objectID];
        if ([objectID persistentStore] == v10)
        {
          if ([objectID isTemporaryID])
          {
            [objectID _setPersistentStore:v11];
          }

          else
          {
            v95.version = -[NSTemporaryObjectID initWithEntity:]([NSTemporaryObjectID alloc], "initWithEntity:", [objectID entity]);
            [v95.version _setPersistentStore:v11];
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v100 = 0u;
            memset(&v99, 0, sizeof(v99));
            v20 = _PFStackAllocatorCreate(&v99, 1024);
            v21 = CFArrayCreate(v20, &v96, 1, 0);
            v22 = CFArrayCreate(v20, &v95, 1, 0);
            v23 = [(NSManagedObjectContext *)self _changeIDsForManagedObjects:v21 toIDs:v22];
            if (v23)
            {
              v24 = v23;
              [array addObject:v23];
            }

            if (v99.copyDescription)
            {
              v11 = v85;
              if (v21)
              {
                CFRelease(v21);
              }

              if (v22)
              {
                CFRelease(v22);
              }
            }

            else
            {
              v99.retain = v99.version;
              v11 = v85;
            }

            v10 = v86;
          }
        }

        ++v18;
      }

      while (v15 != v18);
      if (v15 >= 0x201)
      {
        NSZoneFree(0, v17);
      }
    }

    v25 = [v12 count];
    v26 = MEMORY[0x1EEE9AC00](v25);
    v29 = &v77 - v28;
    v85 = v26;
    v80 = &v77;
    if (v26 >= 0x402)
    {
      v29 = NSAllocateScannedUncollectable();
      v86 = NSAllocateScannedUncollectable();
      v84 = NSAllocateScannedUncollectable();
      v83 = NSAllocateScannedUncollectable();
    }

    else
    {
      v30 = 8 * v27;
      bzero(&v77 - v28, 8 * v27);
      MEMORY[0x1EEE9AC00](v31);
      v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
      v86 = (&v77 - v32);
      bzero(&v77 - v32, v30);
      MEMORY[0x1EEE9AC00](v33);
      v84 = (&v77 - v32);
      bzero(&v77 - v32, v30);
      MEMORY[0x1EEE9AC00](v34);
      v83 = &v77 - v32;
      bzero(&v77 - v32, v30);
      if (!v25)
      {
        v35 = 0;
        goto LABEL_35;
      }
    }

    v36 = 0;
    v37 = 0;
    v35 = 0;
    do
    {
      v38 = [v12 objectAtIndex:v36];
      v39 = v36 + 1;
      v40 = [v12 objectAtIndex:v39];
      Value = _PFCMT_GetValue(&self->_infoByGID->super.isa, v38);
      v96 = Value;
      if (Value)
      {
        v42 = v83;
        v84[v37] = Value;
        *&v42[8 * v37] = v40;
        [v96 _setVersionReference__:1];
        ++v37;
      }

      *&v29[8 * v35] = v38;
      v43 = v85;
      v86[v35++] = v40;
      v36 = v39 + 1;
    }

    while (v36 < v43);
    if (v37)
    {
      v44 = [_PFArray alloc];
      v45 = [(_PFArray *)v44 initWithObjects:v84 count:v37 andFlags:48 andContext:self];
      v46 = [_PFArray alloc];
      v78 = [(_PFArray *)v46 initWithObjects:v83 count:v37 andFlags:0];
      v79 = v45;
      v47 = [(NSManagedObjectContext *)self _changeIDsForManagedObjects:v45 toIDs:v78];
      if (v47)
      {
        v48 = v47;
        [array addObject:v47];
      }

      goto LABEL_36;
    }

LABEL_35:
    v78 = 0;
    v79 = 0;
LABEL_36:
    memset(&v99, 0, 24);
    *&v99.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
    v99.hash = *(MEMORY[0x1E695E9D8] + 40);
    memset(&v95, 0, 24);
    *&v95.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
    v49 = *MEMORY[0x1E695E480];
    v77 = v29;
    v50 = CFDictionaryCreate(v49, v29, v86, v35, &v99, &v95);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    registeredObjects = [(NSManagedObjectContext *)self registeredObjects];
    v52 = [(NSSet *)registeredObjects countByEnumeratingWithState:&v91 objects:v98 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v92;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v92 != v54)
          {
            objc_enumerationMutation(registeredObjects);
          }

          v56 = *(*(&v91 + 1) + 8 * i);
          if (v56)
          {
            v57 = _insertion_fault_handler;
          }

          else
          {
            v57 = 0;
          }

          _PFFaultHandlerFixRelationshipsPostMigration(v57, v56, self, v50);
        }

        v53 = [(NSSet *)registeredObjects countByEnumeratingWithState:&v91 objects:v98 count:16];
      }

      while (v53);
    }

    CFRelease(v50);

    if (v85 >= 0x402)
    {
      NSZoneFree(0, v77);
      NSZoneFree(0, v86);
      NSZoneFree(0, v84);
      NSZoneFree(0, v83);
    }

    lastObject = v81;
  }

  Count = _PFCMT_GetCount(&self->_infoByGID->super.isa);
  v59 = [lastObject objectForKey:@"removed"];
  if (v59)
  {
    v60 = v59;
    v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v62 = [v60 count];
    if (v62)
    {
      v63 = v62;
      for (j = 0; j != v63; ++j)
      {
        v65 = -[NSManagedObjectContext _retainedObjectsFromRemovedStore:](self, "_retainedObjectsFromRemovedStore:", [v60 objectAtIndex:j]);
        [v61 addObjectsFromArray:v65];
      }
    }

    v66 = [v61 count];
    if (v66)
    {
      v67 = v66;
      if (v66 == Count)
      {
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{NSArray_EmptyArray, @"invalidatedAll", +[_PFWeakReference weakReferenceWithObject:](_PFWeakReference, self), @"managedObjectContext", 0}];
      }

      else
      {
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v61), @"invalidated", +[_PFWeakReference weakReferenceWithObject:](_PFWeakReference, self), @"managedObjectContext", 0}];
      }

      [(NSManagedObjectContext *)self _postObjectsDidChangeNotificationWithUserInfo:v68];
      for (k = 0; k != v67; ++k)
      {
        v70 = [v61 objectAtIndex:k];
        if (v70)
        {
          v71 = _insertion_fault_handler;
        }

        else
        {
          v71 = 0;
        }

        [(NSFaultHandler *)v71 turnObject:v70 intoFaultWithContext:self];
        if (self)
        {
          [(NSManagedObjectContext *)self _forgetObject:v70 propagateToObjectStore:0 removeFromRegistry:1];
        }
      }
    }
  }

  if (array)
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v72 = [array countByEnumeratingWithState:&v87 objects:v97 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v88;
      do
      {
        for (m = 0; m != v73; ++m)
        {
          if (*v88 != v74)
          {
            objc_enumerationMutation(array);
          }

          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        }

        v73 = [array countByEnumeratingWithState:&v87 objects:v97 count:16];
      }

      while (v73);
    }
  }

  [v82 drain];
  [(NSManagedObjectContext *)self _processReferenceQueue:?];

  v76 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_implicitObservationInfoForEntity:(void *)entity forResultingClass:
{
  if (result)
  {
    v5 = result;
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(result, sel__implicitObservationInfoForEntity_forResultingClass_);
    }

    if (*(v5 + 46) <= 0)
    {
      persistentStoreCoordinator = [v5 persistentStoreCoordinator];
      if (persistentStoreCoordinator)
      {
        v7 = *(persistentStoreCoordinator + 96);
      }

      else
      {
        v7 = 0;
      }

      if (!*(v5 + 128))
      {
        v8 = *(*(v5 + 168) + 80);
        if (!v8)
        {
          *(*(v5 + 168) + 80) = _PFModelMapTotalEntityCountForModel([a2 managedObjectModel]);
          v8 = *(*(v5 + 168) + 80);
        }

        *(v5 + 128) = PF_CALLOC_OBJECT_ARRAY(2 * v8);
      }

      v9 = _PFModelMapSlotForEntity(v7, a2);
      v10 = 2 * v9;
      v11 = *(v5 + 128);
      v12 = *(v11 + 16 * v9);
      if (v12)
      {
        v13 = *(v11 + 16 * v9 + 8);
      }

      else
      {
        _new_implicitlyObservedKeys = [(NSEntityDescription *)a2 _new_implicitlyObservedKeys];
        _PFFastEntityClass(a2);
        v15 = objc_autoreleasePoolPush();
        ImplicitObservationInfo = _NSKeyValueCreateImplicitObservationInfo();
        objc_autoreleasePoolPop(v15);

        v12 = NSKeyValueCoding_NullValue;
        if (ImplicitObservationInfo)
        {
          v12 = ImplicitObservationInfo;
        }

        *(*(v5 + 128) + 8 * v10) = v12;
        v13 = 0;
        *(*(v5 + 128) + 8 * v10 + 8) = 0;
      }

      if (v12 == NSKeyValueCoding_NullValue)
      {
        result = 0;
      }

      else
      {
        result = v12;
      }

      if (result)
      {
        *entity = v13;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __95__NSManagedObjectContext__NSInternalNotificationHandling___sendOrEnqueueNotification_selector___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (!*(v2 + 16))
    {
      v4 = [*(a1 + 32) _isDeallocating];
      v5 = *(a1 + 32);
      if ((v4 & 1) == 0)
      {
        [*(a1 + 32) performSelector:*(a1 + 48) withObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", *(a1 + 40))}];
        [(NSManagedObjectContext *)*(a1 + 32) _processReferenceQueue:?];
        v6 = *(a1 + 32);
      }
    }

    v1 = vars8;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_setAllowsExpandedUserInfoKeys:(BOOL)keys
{
  keysCopy = keys;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__NSManagedObjectContext__NSCoreDataSPI___setAllowsExpandedUserInfoKeys___block_invoke;
    v6[3] = &unk_1E6EC2770;
    v6[4] = self;
    keysCopy2 = keys;
    [(NSManagedObjectContext *)self performBlockAndWait:v6];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    if (keysCopy)
    {
      v5 = 0x10000000;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xEFFFFFFF | v5);
  }
}

- (void)setShouldRefreshAfterSave:(BOOL)save
{
  saveCopy = save;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__NSManagedObjectContext__NSCoreDataSPI__setShouldRefreshAfterSave___block_invoke;
    v6[3] = &unk_1E6EC2770;
    v6[4] = self;
    saveCopy2 = save;
    [(NSManagedObjectContext *)self performBlockAndWait:v6];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    if (saveCopy)
    {
      v5 = 0x2000000;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xFDFFFFFF | v5);
  }
}

- (BOOL)shouldRefreshAfterSave
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*(&self->_flags + 3) >> 1) & 1;
}

- (void)setShouldPerformSecureOperation:(BOOL)operation
{
  operationCopy = operation;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__NSManagedObjectContext__NSCoreDataSPI__setShouldPerformSecureOperation___block_invoke;
    v6[3] = &unk_1E6EC2770;
    v6[4] = self;
    operationCopy2 = operation;
    [(NSManagedObjectContext *)self performBlockAndWait:v6];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    if (operationCopy)
    {
      v5 = 0x1000000;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xFEFFFFFF | v5);
  }
}

- (BOOL)shouldPerformSecureOperation
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return *(&self->_flags + 3) & 1;
}

- (void)setTrackSQLiteDatabaseStatistics:(BOOL)statistics
{
  statisticsCopy = statistics;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if (statisticsCopy)
  {
    v5 = 0x20000000;
  }

  else
  {
    v5 = 0;
  }

  self->_flags = (*&self->_flags & 0xDFFFFFFF | v5);
}

- (id)performBlockWithResult:(id)result
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__NSManagedObjectContext__NSCoreDataSPI__performBlockWithResult___block_invoke;
  v5[3] = &unk_1E6EC25C0;
  v5[4] = result;
  v5[5] = &v6;
  [(NSManagedObjectContext *)self performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __65__NSManagedObjectContext__NSCoreDataSPI__performBlockWithResult___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return v2;
}

- (void)performWithOptions:(unint64_t)options andBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  if (!self || self->_wasDisposed || [(NSManagedObjectContext *)self _isDeallocating])
  {
    v24 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_53;
    }

    v25 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v27 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (!v27)
      {
        goto LABEL_53;
      }
    }

    else if (!v27)
    {
      goto LABEL_53;
    }

    LODWORD(context) = 138412290;
    *(&context + 4) = [MEMORY[0x1E696AF00] callStackSymbols];
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: illegally invoked -performWithOptions* on dying NSManagedObjectContext at:\n\t%@\n", &context, 0xCu);
LABEL_53:
    _NSCoreDataLog_console(1, "illegally invoked -performWithOptions* on dying NSManagedObjectContext at:\n\t%@", [MEMORY[0x1E696AF00] callStackSymbols]);
    objc_autoreleasePoolPop(v24);
    __break(1u);
  }

  if (self->_dispatchQueue)
  {
    if ((options & 1) == 0)
    {
      v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
      v8 = atomic_load(&self->_isMainThreadBlessed);
      if (v8)
      {
        if (!_PFIsSerializedWithMainQueue())
        {
LABEL_43:
          if ((options & 0x1000) == 0)
          {
            selfCopy = self;
          }

          *&context = block;
          *(&context + 1) = self;
          optionsCopy = options | 0x2000;
          v30 = v7;
          dispatch_sync_f(self->_dispatchQueue, &context, developerSubmittedBlockToNSManagedObjectContextPerform);
LABEL_46:
          v23 = *MEMORY[0x1E69E9840];
          return;
        }
      }

      else
      {
        if (!v7)
        {
          goto LABEL_43;
        }

        v13 = 0;
        v14 = 0;
        v15 = v7;
        while (v15 != self)
        {
          if (v15 == v13)
          {
            goto LABEL_30;
          }

          if (!v13)
          {
            v13 = v15;
          }

          v15 = atomic_load((v15 + 8));
          if (!v15)
          {
            goto LABEL_31;
          }
        }

        v14 = 1;
LABEL_30:
        if (v14)
        {
          goto LABEL_40;
        }

LABEL_31:
        v18 = 0;
        v19 = 0;
        selfCopy2 = self;
        while (selfCopy2 != v7)
        {
          if (selfCopy2 == v18)
          {
            goto LABEL_39;
          }

          if (!v18)
          {
            v18 = selfCopy2;
          }

          selfCopy2 = atomic_load(&selfCopy2->_queueOwner);
          if (!selfCopy2)
          {
            goto LABEL_43;
          }
        }

        v19 = 1;
LABEL_39:
        if (!v19)
        {
          goto LABEL_43;
        }
      }

LABEL_40:
      if ((options & 0x1000) == 0)
      {
        selfCopy3 = self;
      }

      *&context = block;
      *(&context + 1) = self;
      optionsCopy = options;
      v30 = v7;
      developerSubmittedBlockToNSManagedObjectContextPerform(&context);
      goto LABEL_46;
    }

    v9 = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
    *v9 = _Block_copy(block);
    if ((options & 0x1000) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = CFRetain(self);
    }

    v9[1] = v10;
    v9[2] = options | 0x2001;
    v9[3] = 0;
    dispatchQueue = self->_dispatchQueue;
    v17 = *MEMORY[0x1E69E9840];

    dispatch_async_f(dispatchQueue, v9, developerSubmittedBlockToNSManagedObjectContextPerform);
  }

  else
  {
    if ((options & 0x8000) == 0)
    {
      if ((options & 0x4000) == 0)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"-performWithOptions:andBlock: was called on a MOC of NSConfinementConcurrencyType unexpectedly." userInfo:0]);
      }

      goto LABEL_46;
    }

    v11 = *(block + 2);
    v12 = *MEMORY[0x1E69E9840];

    v11(block);
  }
}

- (id)_orderedSetWithResultsFromFetchRequest:(id)request
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v5 = [[_PFFetchedResultOrderedSetWrapper alloc] initWithArray:request andContext:self];

  return v5;
}

- (void)_stopConflictDetectionForObject:(id)object
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  lockedObjects = self->_lockedObjects;

  [(NSMutableSet *)lockedObjects removeObject:object];
}

+ (void)_mergeChangesFromRemoteContextSave:(void *)save intoContexts:(uint64_t)contexts withClientQueryGeneration:
{
  contextsCopy = contexts;
  v76 = a2;
  v115 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (save && [save count])
  {
    v69 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v83 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [v76 objectForKey:@"managedObjectContext"];
    if (v5 && (Weak = objc_loadWeak((v5 + 8))) != 0 && (parentContext = Weak, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [MEMORY[0x1E695DFA8] set];
      do
      {
        [v8 addObject:parentContext];
        parentContext = [parentContext parentContext];
      }

      while (parentContext);
    }

    else
    {
      v8 = 0;
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v9 = [save countByEnumeratingWithState:&v108 objects:v114 count:16];
    if (v9)
    {
      persistentStoreCoordinator = 0;
      v10 = *v109;
      do
      {
        v11 = 0;
        do
        {
          if (*v109 != v10)
          {
            objc_enumerationMutation(save);
          }

          v12 = [[_PFWeakReference alloc] initWithObject:*(*(&v108 + 1) + 8 * v11)];
          v13 = v12;
          if (v12)
          {
            WeakRetained = objc_loadWeakRetained(&v12->_object);
            if (WeakRetained && (!v8 || ([v8 containsObject:WeakRetained] & 1) == 0))
            {
              [v83 addObject:WeakRetained];
              if (!persistentStoreCoordinator)
              {
                persistentStoreCoordinator = [WeakRetained persistentStoreCoordinator];
              }
            }
          }

          else
          {
            WeakRetained = 0;
          }

          ++v11;
        }

        while (v9 != v11);
        v15 = [save countByEnumeratingWithState:&v108 objects:v114 count:16];
        v9 = v15;
      }

      while (v15);
    }

    else
    {
      persistentStoreCoordinator = 0;
    }

    v16 = [v83 count];
    while (1)
    {
      v17 = v83;
      if (v16 <= 0)
      {
        break;
      }

      if (persistentStoreCoordinator != [objc_msgSend(v83 objectAtIndex:{--v16), "persistentStoreCoordinator"}])
      {

        [v69 drain];
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Mismatched PSCs in parameter contexts" userInfo:0]);
      }
    }

    if (persistentStoreCoordinator && (v18 = [v83 count], v17 = v83, v18))
    {
      v19 = [v76 objectForKey:@"newQueryGeneration"];
      if ([v19 _isEnabled])
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v71 = v20;
      v74 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"inserted", @"inserted_objectIDs", @"deleted", @"deleted_objectIDs", @"updated", @"updated_objectIDs", @"refreshed", @"refreshed_objectIDs", @"invalidated", @"invalidated_objectIDs", @"invalidatedAll", 0}];
      v77 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v76, "count")}];
      v78 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v104 = 0;
      v105 = &v104;
      v106 = 0x2020000000;
      v107 = 0;
      v98 = 0;
      v99 = &v98;
      v100 = 0x3052000000;
      v101 = __Block_byref_object_copy__13;
      v102 = __Block_byref_object_dispose__13;
      v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
      managedObjectModel = [persistentStoreCoordinator managedObjectModel];
      v21 = v83;
      v22 = [v74 count];
      v23 = v22;
      if (v22)
      {
        v24 = 0;
        v70 = v22;
LABEL_38:
        v25 = [v74 objectAtIndex:v24];
        v26 = [v76 objectForKey:v25];
        v82 = [v26 count];
        if (!v26 || !v82)
        {
          goto LABEL_94;
        }

        v72 = v25;
        v80 = v24;
        if (v82 >= 0x201)
        {
          v27 = 1;
        }

        else
        {
          v27 = v82;
        }

        v28 = (8 * v27 + 15) & 0xFFFFFFFFFFFFFFF0;
        v29 = &v67 - v28;
        if (v82 > 0x200)
        {
          v30 = 0x1E6EC0000uLL;
          v29 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(&v67 - v28, 8 * v82);
          v30 = 0x1E6EC0000;
        }

        [v26 getObjects:v29];
        v73 = &v67;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          objectID = *&v29[8 * v32];
          v34 = *(v30 + 2704);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v37 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator managedObjectIDForURIRepresentation:objectID error:0];
              goto LABEL_53;
            }

            objectID = [(__CFURL *)objectID objectID];
          }

          v35 = [-[__CFURL persistentStore](objectID "persistentStore")];
          if (v35 != persistentStoreCoordinator)
          {
            uRIRepresentation = [(__CFURL *)objectID URIRepresentation];
            v37 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator managedObjectIDForURIRepresentation:uRIRepresentation error:0];
LABEL_53:
            objectID = v37;
          }

          if (objectID)
          {
            *&v29[8 * v31++] = objectID;
          }

          v38 = v83;
          if (v82 == ++v32)
          {
            if (v80 >= 4)
            {
              v39 = malloc_type_calloc(1uLL, v31, 0x100004077774924uLL);
              v105[3] = v39;
              v94 = 0u;
              v95 = 0u;
              v96 = 0u;
              v97 = 0u;
              v40 = [v38 countByEnumeratingWithState:&v94 objects:v113 count:16];
              if (v40)
              {
                v41 = *v95;
                do
                {
                  for (i = 0; i != v40; ++i)
                  {
                    if (*v95 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v43 = *(*(&v94 + 1) + 8 * i);
                    v93[0] = MEMORY[0x1E69E9820];
                    v93[1] = 3221225472;
                    v93[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke;
                    v93[3] = &unk_1E6EC25E8;
                    v93[6] = v31;
                    v93[7] = v29;
                    v93[4] = v43;
                    v93[5] = &v104;
                    if (v43[3])
                    {
                      [v43 performBlockAndWait:v93];
                    }

                    else
                    {
                      __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke(v93);
                    }
                  }

                  v40 = [v38 countByEnumeratingWithState:&v94 objects:v113 count:16];
                }

                while (v40);
              }
            }

            if (v31)
            {
              v44 = 0;
              v81 = 0;
              while (1)
              {
                v45 = *&v29[8 * v44];
                if (v45)
                {
                  break;
                }

LABEL_83:
                if (++v44 == v31)
                {
                  goto LABEL_87;
                }
              }

              if (v80 >= 6)
              {
                if (!*(v105[3] + v44))
                {
LABEL_82:
                  [v79 addObject:v45];
                  v51 = v81;
                  *&v29[8 * v81] = v45;
                  v81 = v51 + 1;
                  goto LABEL_83;
                }
              }

              else if (v80 == 1)
              {
                goto LABEL_82;
              }

              entity = [*&v29[8 * v44] entity];
              if (entity)
              {
                if (atomic_load((entity + 124)))
                {
                  v48 = *(entity + 72);
                }

                else
                {
                  do
                  {
                    v48 = entity;
                    entity = [entity superentity];
                  }

                  while (entity);
                }
              }

              else
              {
                v48 = 0;
              }

              name = [v48 name];
              v50 = [v78 objectForKey:name];
              if (!v50)
              {
                v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v78 setObject:v50 forKey:name];
              }

              [v50 addObject:v45];
              goto LABEL_82;
            }

            v81 = 0;
LABEL_87:
            v52 = v105[3];
            if (v52)
            {
              free(v52);
              v105[3] = 0;
            }

            v21 = v83;
            v53 = objc_alloc(MEMORY[0x1E695DEC8]);
            v23 = v70;
            v24 = v80;
            v54 = [v53 initWithObjects:v29 count:v81];
            if ([v54 count])
            {
              [v77 setValue:v54 forKey:v72];
              if (v71)
              {
                [v77 setObject:v71 forKey:@"newQueryGeneration"];
              }
            }

            if (v82 >= 0x201)
            {
              NSZoneFree(0, v29);
            }

LABEL_94:
            if (++v24 == v23)
            {
              break;
            }

            goto LABEL_38;
          }
        }
      }

      if ([v78 count])
      {
        v55 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
        [(NSManagedObjectContext *)v55 setPersistentStoreCoordinator:persistentStoreCoordinator];
        [(NSManagedObjectContext *)v55 setUndoManager:0];
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_2;
        v92[3] = &unk_1E6EC2610;
        v92[4] = managedObjectModel;
        v92[5] = v55;
        v92[6] = &v98;
        [v78 enumerateKeysAndObjectsUsingBlock:v92];
      }

      else
      {
        v55 = 0;
      }

      v56 = [v21 count];
      if (v56)
      {
        for (j = 0; j != v56; ++j)
        {
          v58 = [v83 objectAtIndex:j];
          if (![v58 parentContext])
          {
            v91[0] = MEMORY[0x1E69E9820];
            v91[1] = 3221225472;
            v91[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_4;
            v91[3] = &unk_1E6EC19D8;
            v91[4] = v58;
            v91[5] = v77;
            v91[6] = contextsCopy;
            if (v58[3])
            {
              [v58 performBlockAndWait:v91];
            }

            else
            {
              __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_4(v91);
            }
          }
        }

        for (k = 0; k != v56; ++k)
        {
          v60 = [v83 objectAtIndex:k];
          if ([v60 parentContext])
          {
            v90[0] = MEMORY[0x1E69E9820];
            v90[1] = 3221225472;
            v90[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_5;
            v90[3] = &unk_1E6EC19D8;
            v90[4] = v60;
            v90[5] = v77;
            v90[6] = contextsCopy;
            if (v60[3])
            {
              [v60 performBlockAndWait:v90];
            }

            else
            {
              __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_5(v90);
            }
          }
        }

        v21 = v83;
      }

      v61 = v105[3];
      if (v61)
      {
        free(v61);
        v105[3] = 0;
      }

      if (v55)
      {
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_6;
        v89[3] = &unk_1E6EC16F0;
        v89[4] = v55;
        [(NSManagedObjectContext *)v55 performBlockAndWait:v89];
      }

      [v69 drain];
      v62 = 0;
      if (v55)
      {
      }

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v63 = [v21 countByEnumeratingWithState:&v85 objects:v112 count:16];
      if (v63)
      {
        v64 = *v86;
        do
        {
          for (m = 0; m != v63; ++m)
          {
            if (*v86 != v64)
            {
              objc_enumerationMutation(v21);
            }

            [(NSManagedObjectContext *)*(*(&v85 + 1) + 8 * m) _registerAsyncReferenceCallback];
          }

          v63 = [v21 countByEnumeratingWithState:&v85 objects:v112 count:16];
        }

        while (v63);
      }

      _Block_object_dispose(&v98, 8);
      _Block_object_dispose(&v104, 8);
    }

    else
    {

      [v69 drain];
    }
  }

  v66 = *MEMORY[0x1E69E9840];
}

- (void)_mergeChangesFromRemoteContextSave:(id)save presupposingQueryGeneration:(id)generation
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(NSManagedObjectContext *)self persistentStoreCoordinator])
  {
    v8[0] = self;
    +[NSManagedObjectContext _mergeChangesFromRemoteContextSave:intoContexts:withClientQueryGeneration:](NSManagedObjectContext, save, [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1], generation);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    v2 = 0;
    do
    {
      if (*(*(v1 + 56) + 8 * v2))
      {
        result = [*(v1 + 32) objectRegisteredForID:?];
        if (result)
        {
          v3 = *(*(*(v1 + 40) + 8) + 24);
          *(v3 + v2) |= 1u;
        }
      }

      ++v2;
    }

    while (v2 < *(v1 + 48));
  }

  return result;
}

void __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  if (v3)
  {
    v6 = [*(v3 + 32) objectForKey:a2];
    if (v6)
    {
      v7 = v6;
      v8 = objc_alloc_init(NSFetchRequest);
      [(NSFetchRequest *)v8 setEntity:v7];
      [(NSFetchRequest *)v8 setIncludesSubentities:1];
      [(NSFetchRequest *)v8 setIncludesPendingChanges:0];
      -[NSFetchRequest setPredicate:](v8, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", a3]);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_3;
      v11[3] = &unk_1E6EC1388;
      v9 = a1[5];
      v10 = a1[6];
      v11[4] = v9;
      v11[5] = v8;
      v11[6] = v10;
      if (v9[3])
      {
        [v9 performBlockAndWait:v11];
      }

      else
      {
        __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_3(v11);
      }
    }
  }
}

uint64_t __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = 0;
  v3 = [*(a1 + 32) executeFetchRequest:*(a1 + 40) error:&v5];
  if (v3)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
  }

  return [v2 drain];
}

void __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      [(NSManagedObjectContext *)v3 _coreMergeChangesFromDidSaveDictionary:1 usingObjectIDs:v4 withClientQueryGeneration:?];
    }

    else
    {
      [v3 _mergeChangesFromDidSaveDictionary:*(a1 + 40) usingObjectIDs:1];
    }
  }

  [v2 drain];
  v5 = *(a1 + 32);

  [(NSManagedObjectContext *)v5 _processReferenceQueue:?];
}

void __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_5(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      [(NSManagedObjectContext *)v3 _coreMergeChangesFromDidSaveDictionary:1 usingObjectIDs:v4 withClientQueryGeneration:?];
    }

    else
    {
      [v3 _mergeChangesFromDidSaveDictionary:*(a1 + 40) usingObjectIDs:1];
    }
  }

  [v2 drain];
  v5 = *(a1 + 32);

  [(NSManagedObjectContext *)v5 _processReferenceQueue:?];
}

- (void)_mergeChangesFromRemoteContextSave:(id)save
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if ([(NSManagedObjectContext *)self persistentStoreCoordinator])
  {
    v6[0] = self;
    [objc_opt_class() mergeChangesFromRemoteContextSave:save intoContexts:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v6, 1)}];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_copyChildObject:(uint64_t)object toParentObject:(_BYTE *)parentObject fromChildContext:(void *)context
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(object, sel__copyChildObject_toParentObject_fromChildContext_);
  }

  v6 = [(NSManagedObject *)parentObject _newNestedSaveChangedValuesForParent:context];
  if (v6)
  {
    v30 = v6;
    entity = [context entity];
    v8 = *(entity + 112);
    v9 = *(v8 + 136);
    if (!v9)
    {
      [(NSManagedObject *)context _updateFromRefreshSnapshot:v30 includingTransients:1];
LABEL_26:

      return;
    }

    v10 = entity;
    v11 = *(v8 + 128);
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(object, sel__currentEventSnapshotForObject_);
      if (context)
      {
        goto LABEL_7;
      }
    }

    else if (context)
    {
LABEL_7:
      v12 = context[6];
      if (!v12 || (v13 = *(v12 + 16)) == 0)
      {
        v13 = [(NSManagedObjectContext *)object _committedSnapshotForObject:context];
      }

      goto LABEL_14;
    }

    v13 = 0;
LABEL_14:
    v14 = *(v10 + 104);
    keys = [v14 keys];
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "length")}];
    v28 = v11;
    v29 = v9;
    v27 = v9 + v11;
    if (v11 < v9 + v11)
    {
      v17 = v9;
      v18 = (keys + 8 * v11);
      do
      {
        v19 = *v18;
        v20 = [context valueForKey:*v18];
        v21 = [v13 valueForKey:v19];
        if ([MEMORY[0x1E695DFB0] null] == v21)
        {
          [v16 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
          [v16 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
        }

        else
        {
          v22 = [_PFRoutines newOrderedSetFromCollection:v20 byRemovingItems:v21];
          [v16 addObject:v22];

          [objc_msgSend(context primitiveValueForKey:{v19), "removeObjectsInArray:", objc_msgSend(v22, "array")}];
        }

        ++v18;
        --v17;
      }

      while (v17);
    }

    [(NSManagedObject *)context _updateFromRefreshSnapshot:v30 includingTransients:1];
    keys2 = [v14 keys];
    if (v28 < v27)
    {
      v24 = 0;
      v25 = keys2 + 8 * v28;
      do
      {
        v26 = [v16 objectAtIndex:v24];
        if ([MEMORY[0x1E695DFB0] null] != v26)
        {
          [objc_msgSend(context primitiveValueForKey:{*(v25 + 8 * v24)), "addObjectsFromArray:", objc_msgSend(v26, "array")}];
        }

        ++v24;
      }

      while (v29 != v24);
    }

    goto LABEL_26;
  }
}

- (uint64_t)_parentProcessSaveRequest:(uint64_t)result inContext:(void *)context error:
{
  v66 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v51 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    [v3 processPendingChanges];
    insertedObjects = [context insertedObjects];
    updatedObjects = [context updatedObjects];
    deletedObjects = [context deletedObjects];
    v7 = [insertedObjects count];
    v53 = [updatedObjects count];
    v52 = [deletedObjects count];
    v50 = &v48;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (v7 >= 0x201)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v54 = v7;
    if (v7 > 0x200)
    {
      v55 = NSAllocateScannedUncollectable();
    }

    else
    {
      v55 = &v48 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v55, 8 * v8);
    }

    if (v53 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v53;
    }

    if (v53 >= 0x201)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = (&v48 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v53 > 0x200)
    {
      v12 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v48 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v10);
    }

    if (v52 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v52;
    }

    if (v52 >= 0x201)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = (&v48 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v52 > 0x200)
    {
      v15 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v48 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v13);
    }

    if (v54)
    {
      v16 = v54 >= 0x201 ? 1 : v54;
      v17 = (8 * v16 + 15) & 0xFFFFFFFFFFFFFFF0;
      v18 = &v48 - v17;
      if (v54 > 0x200)
      {
        v18 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v48 - v17, 8 * v54);
      }

      [insertedObjects getObjects:v18];
      for (i = 0; i != v8; ++i)
      {
        v20 = _PFRetainedObjectForMappedChildObjectIDInParentContext([*&v18[8 * i] objectID], v3);
        *&v55[8 * i] = v20;
        [v3 insertObject:v20];
      }

      for (j = 0; j != v8; ++j)
      {
        [NSManagedObjectContext _copyChildObject:v3 toParentObject:*&v18[8 * j] fromChildContext:*&v55[8 * j]];
      }

      if (v54 >= 0x201)
      {
        NSZoneFree(0, v18);
      }
    }

    v49 = deletedObjects;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v22 = [updatedObjects countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v22)
    {
      v23 = 0;
      v24 = *v61;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v61 != v24)
          {
            objc_enumerationMutation(updatedObjects);
          }

          v26 = *(*(&v60 + 1) + 8 * k);
          v27 = _PFRetainedObjectForMappedChildObjectIDInParentContext([v26 objectID], v3);
          v12[v23] = v27;
          [NSManagedObjectContext _copyChildObject:v3 toParentObject:v26 fromChildContext:v27];
          ++v23;
        }

        v22 = [updatedObjects countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v22);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v28 = v49;
    v29 = [v49 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v29)
    {
      v30 = 0;
      v31 = *v57;
      do
      {
        for (m = 0; m != v29; ++m)
        {
          if (*v57 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = _PFRetainedObjectForMappedChildObjectIDInParentContext([*(*(&v56 + 1) + 8 * m) objectID], v3);
          v15[v30] = v33;
          [v3 deleteObject:v33];
          ++v30;
        }

        v29 = [v28 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v29);
    }

    if (v54)
    {
      v35 = v54;
      v34 = v55;
      do
      {
        [*v34++ awakeFromSnapshotEvents:128];
        --v35;
      }

      while (v35);
    }

    if (v53)
    {
      v36 = v12;
      v37 = v53;
      do
      {
        [*v36++ awakeFromSnapshotEvents:128];
        --v37;
      }

      while (v37);
    }

    if (v52)
    {
      v38 = v15;
      v39 = v52;
      do
      {
        [*v38++ awakeFromSnapshotEvents:128];
        --v39;
      }

      while (v39);
    }

    [v3 processPendingChanges];
    if (v54)
    {
      v41 = v54;
      v40 = v55;
      do
      {

        --v41;
      }

      while (v41);
    }

    if (v53)
    {
      v42 = v12;
      v43 = v53;
      do
      {

        --v43;
      }

      while (v43);
    }

    if (v52)
    {
      v44 = v15;
      v45 = v52;
      do
      {

        --v45;
      }

      while (v45);
    }

    if (v54 >= 0x201)
    {
      NSZoneFree(0, v55);
    }

    if (v53 >= 0x201)
    {
      NSZoneFree(0, v12);
    }

    if (v52 >= 0x201)
    {
      NSZoneFree(0, v15);
    }

    [v51 drain];
    v46 = 0;
    result = NSArray_EmptyArray;
  }

  v47 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)executeRequest:(id)request withContext:(id)context error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__13;
  v26 = __Block_byref_object_dispose__13;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__NSManagedObjectContext__NestedContextSupport__executeRequest_withContext_error___block_invoke;
  v15[3] = &unk_1E6EC1900;
  v15[4] = self;
  v15[5] = request;
  v15[6] = context;
  v15[7] = &v16;
  v15[8] = &v22;
  _perform(self, v15);
  v7 = v17[5];
  v8 = v23[5];
  if (error)
  {
    v9 = v17[5];
    if (v9)
    {
      *error = v9;
    }
  }

  if ([request requestType] != 4 && (v23[5] == 0) == (v17[5] == 0))
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Either a non nil result OR an error in nexted context\n", v14, 2u);
    }

    v11 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Either a non nil result OR an error in nexted context", v14, 2u);
    }
  }

  v12 = v23[5];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v12;
}

uint64_t __82__NSManagedObjectContext__NestedContextSupport__executeRequest_withContext_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v96 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 32) + 168) + 8))
  {
    v2 = PF_CALLOC_OBJECT_ARRAY(2);
    *v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2[1] = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(v1 + 32) + 168) + 8) = v2;
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v84 = 0;
  v4 = [*(v1 + 40) requestType];
  v5 = 0;
  if (v4 <= 4)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v6 = [NSManagedObjectContext _parentProcessSaveRequest:*(v1 + 40) inContext:? error:?];
        goto LABEL_6;
      }

      if (v4 != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }

    if ([*(v1 + 40) resultType] == 4)
    {
LABEL_13:
      v9 = [*(v1 + 40) copy];
      if ([v9 predicate])
      {
        v10 = [[_NSChildContextPredicateRemapper alloc] initWithContext:*(v1 + 32)];
        v11 = -[_NSChildContextPredicateRemapper createPredicateForFetchFromPredicate:withContext:](v10, "createPredicateForFetchFromPredicate:withContext:", [v9 predicate], *(v1 + 32));
        [v9 setPredicate:v11];
      }

      v12 = [*(v1 + 32) countForFetchRequest:v9 error:&v84];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v12)}];
        goto LABEL_6;
      }

LABEL_16:
      v5 = 0;
      goto LABEL_7;
    }

    v83 = *(v1 + 32);
    if (!v83)
    {
      goto LABEL_16;
    }

    v79 = v3;
    v77 = v1;
    v13 = *(v1 + 40);
    v14 = *(v1 + 48);
    v76 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v15 = [v13 copy];
    v75 = v13;
    v16 = [v13 resultType];
    v93 = 0;
    if ([v15 predicate])
    {
      v17 = [[_NSChildContextPredicateRemapper alloc] initWithContext:v83];
      v18 = -[_NSChildContextPredicateRemapper createPredicateForFetchFromPredicate:withContext:](v17, "createPredicateForFetchFromPredicate:withContext:", [v15 predicate], v83);
      [v15 setPredicate:v18];
    }

    v78 = v15;
    if ([v15 fetchBatchSize])
    {
      obj = [v15 entity];
      v19 = [v15 affectedStores];
      if (!v19)
      {
        v19 = [objc_msgSend(v83 "persistentStoreCoordinator")];
      }

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v20 = [v19 countByEnumeratingWithState:&v89 objects:v95 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v90;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v90 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v89 + 1) + 8 * i);
            v25 = [objc_msgSend(v24 "type")];
            v26 = [objc_msgSend(v24 "type")];
            if ((v25 & 1) == 0 && (v26 & 1) == 0)
            {
              v27 = [v24 configurationName];
              if (([v27 isEqualToString:@"PF_DEFAULT_CONFIGURATION_NAME"] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v83, "persistentStoreCoordinator"), "managedObjectModel"), "entitiesForConfiguration:", v27), "indexOfObjectIdenticalTo:", obj) != 0x7FFFFFFFFFFFFFFFLL)
              {
                v15 = v78;
                [v78 setFetchBatchSize:0];
                goto LABEL_38;
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v89 objects:v95 count:16];
          v15 = v78;
          if (v21)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_38:
    v28 = [v15 includesPropertyValues];
    if (v16)
    {
      if (v16 == 1 && [v83 hasChanges])
      {
        v29 = 0;
LABEL_45:
        [v15 setResultType:v29];
      }
    }

    else if (![objc_msgSend(v15 "propertiesToFetch")] && (objc_msgSend(v83, "hasChanges") & 1) == 0)
    {
      v29 = 1;
      goto LABEL_45;
    }

    [v15 setIncludesPropertyValues:v28];
    v30 = [v83 executeFetchRequest:v15 error:&v93];
    v31 = [v30 count];
    v3 = v79;
    if (v31)
    {
      v32 = v31;
      if ((!v16 && (dword_1ED4BEEC8 & 1) != 0 || BYTE1(dword_1ED4BEEC8) == 1 && v16 == 2) && [v15 fetchBatchSize])
      {
        v33 = [v15 resultType];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v30)
          {
            v30 = [v30 newArrayFromObjectIDs];
            v33 = 1;
            obja = v30;
          }

          else
          {
            obja = 0;
            v33 = 1;
          }
        }

        else
        {
          obja = 0;
        }

        v73 = v32;
        v46 = PF_ALLOCATE_OBJECT_ARRAY(v32);
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v47 = [v30 countByEnumeratingWithState:&v85 objects:v94 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = 0;
          v50 = *v86;
          do
          {
            v51 = v30;
            for (j = 0; j != v48; ++j)
            {
              if (*v86 != v50)
              {
                objc_enumerationMutation(v51);
              }

              v53 = *(*(&v85 + 1) + 8 * j);
              if (v33 != 1)
              {
                v53 = [*(*(&v85 + 1) + 8 * j) objectID];
              }

              v54 = [*(*(v83[21] + 8) + 8) objectForKey:v53];
              if (v54)
              {
                v55 = v54;
                if ([v14 objectRegisteredForID:v54])
                {
                  v53 = v55;
                }
              }

              v46[v49++] = v53;
            }

            v30 = v51;
            v48 = [v51 countByEnumeratingWithState:&v85 objects:v94 count:16];
          }

          while (v48);
        }

        v56 = [[_PFArray alloc] initWithObjects:v46 count:v73 andFlags:10];
        v57 = [[_PFBatchFaultingArray alloc] initWithPFArray:v56 andRequest:v75 andContext:v14];

        goto LABEL_103;
      }

      objb = v30;
      if (!v16)
      {
        v74 = v32;
        v58 = PF_ALLOCATE_OBJECT_ARRAY(v32);
        v59 = [v15 resultType];
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v60 = [v30 countByEnumeratingWithState:&v85 objects:v94 count:16];
        if (v60)
        {
          v61 = v60;
          v62 = 0;
          v63 = *v86;
          do
          {
            v64 = 0;
            do
            {
              if (*v86 != v63)
              {
                objc_enumerationMutation(objb);
              }

              v65 = *(*(&v85 + 1) + 8 * v64);
              if (v59 != 1)
              {
                v65 = [*(*(&v85 + 1) + 8 * v64) objectID];
              }

              v66 = [*(*(v83[21] + 8) + 8) objectForKey:v65];
              if (v66)
              {
                v67 = v66;
                if ([v14 objectRegisteredForID:v66])
                {
                  v65 = v67;
                }
              }

              if (v14)
              {
                v68 = _PFRetainedObjectIDCore(v14, v65, 0, 1);
              }

              else
              {
                v68 = 0;
              }

              v58[v62++] = v68;
              ++v64;
            }

            while (v61 != v64);
            v69 = [objb countByEnumeratingWithState:&v85 objects:v94 count:16];
            v61 = v69;
          }

          while (v69);
        }

        v45 = [[_PFArray alloc] initWithObjects:v58 count:v74 andFlags:42 andContext:v14];
        goto LABEL_102;
      }

      if (v16 == 1)
      {
        v72 = v32;
        v35 = PF_ALLOCATE_OBJECT_ARRAY(v32);
        v36 = [v15 resultType];
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v37 = [v30 countByEnumeratingWithState:&v85 objects:v94 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = 0;
          v40 = *v86;
          do
          {
            for (k = 0; k != v38; ++k)
            {
              if (*v86 != v40)
              {
                objc_enumerationMutation(objb);
              }

              v42 = *(*(&v85 + 1) + 8 * k);
              if (v36 != 1)
              {
                v42 = [*(*(&v85 + 1) + 8 * k) objectID];
              }

              v43 = [*(*(v83[21] + 8) + 8) objectForKey:v42];
              if (v43)
              {
                v44 = v43;
                if ([v14 objectRegisteredForID:v43])
                {
                  v42 = v44;
                }
              }

              v35[v39++] = v42;
            }

            v38 = [objb countByEnumeratingWithState:&v85 objects:v94 count:16];
          }

          while (v38);
        }

        v45 = [[_PFArray alloc] initWithObjects:v35 count:v72 andFlags:10];
LABEL_102:
        v57 = v45;
LABEL_103:
        v1 = v77;
        v15 = v78;
        v3 = v79;
LABEL_106:
        v70 = v93;

        [v76 drain];
        [(NSManagedObjectContext *)v83 _processReferenceQueue:?];
        if (v93)
        {
          v84 = v93;
        }

        v71 = v93;
        v6 = v57;
        goto LABEL_6;
      }

      v34 = v30;
    }

    else
    {
      v34 = MEMORY[0x1E695E0F0];
    }

    v57 = v34;
    v1 = v77;
    goto LABEL_106;
  }

  if ((v4 - 5) < 7)
  {
    v6 = [*(v1 + 32) executeRequest:*(v1 + 40) error:&v84];
LABEL_6:
    v5 = v6;
  }

LABEL_7:
  *(*(*(v1 + 56) + 8) + 40) = v84;
  *(*(*(v1 + 64) + 8) + 40) = v5;
  result = [v3 drain];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)ds generation:(id)generation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__NSManagedObjectContext__NestedContextSupport__managedObjectContextDidRegisterObjectsWithIDs_generation___block_invoke;
  v4[3] = &unk_1E6EC19D8;
  v4[4] = self;
  v4[5] = ds;
  v4[6] = generation;
  _perform(self, v4);
}

uint64_t __106__NSManagedObjectContext__NestedContextSupport__managedObjectContextDidRegisterObjectsWithIDs_generation___block_invoke(uint64_t *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSManagedObjectContext *)a1[4] lockObjectStore];
  v2 = a1[4];
  if (v2)
  {
    v4 = a1[5];
    v3 = a1[6];
    if ([v4 count])
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v14 + 1) + 8 * i);
            if (([v10 isTemporaryID] & 1) == 0)
            {
              [v5 addObject:v10];
            }
          }

          v7 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }

      [*(v2 + 32) managedObjectContextDidRegisterObjectsWithIDs:v5 generation:v3];
    }
  }

  v11 = a1[4];
  v12 = *MEMORY[0x1E69E9840];

  return [(NSManagedObjectContext *)v11 unlockObjectStore];
}

- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)ds generation:(id)generation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __108__NSManagedObjectContext__NestedContextSupport__managedObjectContextDidUnregisterObjectsWithIDs_generation___block_invoke;
  v4[3] = &unk_1E6EC19D8;
  v4[4] = self;
  v4[5] = ds;
  v4[6] = generation;
  _perform(self, v4);
}

uint64_t __108__NSManagedObjectContext__NestedContextSupport__managedObjectContextDidUnregisterObjectsWithIDs_generation___block_invoke(uint64_t a1)
{
  [(NSManagedObjectContext *)*(a1 + 32) lockObjectStore];
  [(NSManagedObjectContext *)*(a1 + 32) _informParentStoreNoLongerInterestedInObjectIDs:*(a1 + 48) generation:?];
  v2 = *(a1 + 32);

  return [(NSManagedObjectContext *)v2 unlockObjectStore];
}

- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__NSManagedObjectContext__NestedContextSupport__newValuesForObjectWithID_withContext_error___block_invoke;
  v7[3] = &unk_1E6EC2748;
  v7[4] = d;
  v7[5] = self;
  v7[6] = context;
  v7[7] = &v8;
  _perform(self, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __92__NSManagedObjectContext__NestedContextSupport__newValuesForObjectWithID_withContext_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(*(*(a1 + 40) + 168) + 8))
  {
    v3 = PF_CALLOC_OBJECT_ARRAY(2);
    *v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3[1] = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 40) + 168) + 8) = v3;
  }

  if ([v2 isTemporaryID])
  {
    v4 = [**(*(*(a1 + 40) + 168) + 8) objectForKey:v2];
    if (v4)
    {
      v2 = v4;
    }
  }

  result = [*(a1 + 40) objectRegisteredForID:v2];
  if (result)
  {
    v6 = result;
    result = [result isFault];
    if ((result & 1) == 0)
    {
      result = [(NSFaultHandler *)_insertion_fault_handler fulfillFault:v6 withContext:*(a1 + 40) error:0];
      if (result)
      {
        v7 = [v6 entity];
        v8 = v7[13];
        v9 = v7[14];
        v10 = *(v8 + 40);
        v11 = _kvcPropertysPrimitiveGetters(v7);
        v12 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v8];
        v13 = [(NSKnownKeysDictionary *)v12 values];
        v14 = v9[6];
        v15 = v9[7];
        if (v14 < v15 + v14)
        {
          do
          {
            _PF_Handler_Primitive_GetProperty(v6, v14, *(v10 + 8 * v14), *(v11 + 8 * v14));
            *(v13 + 8 * v14++) = v16;
            --v15;
          }

          while (v15);
        }

        v17 = v9[12];
        v18 = v9[13];
        if (v17 < v18 + v17)
        {
          do
          {
            _PF_Handler_Primitive_GetProperty(v6, v17, *(v10 + 8 * v17), *(v11 + 8 * v17));
            *(v13 + 8 * v17++) = [v19 objectID];
            --v18;
          }

          while (v18);
        }

        result = -[_PFTempNestedSnapshot initWithOwnedKKsD:andVersion:]([_PFTempNestedSnapshot alloc], "initWithOwnedKKsD:andVersion:", v12, [v6 _versionReference]);
        *(*(*(a1 + 56) + 8) + 40) = result;
      }
    }
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    [(NSManagedObjectContext *)*(a1 + 40) lockObjectStore];
    *(*(*(a1 + 56) + 8) + 40) = [*(*(a1 + 40) + 32) newValuesForObjectWithID:v2 withContext:*(a1 + 48) error:0];
    return [(NSManagedObjectContext *)*(a1 + 40) unlockObjectStore];
  }

  return result;
}

- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__13;
  v13 = __Block_byref_object_dispose__13;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __107__NSManagedObjectContext__NestedContextSupport__newValueForRelationship_forObjectWithID_withContext_error___block_invoke;
  v8[3] = &unk_1E6EC2638;
  v8[4] = d;
  v8[5] = self;
  v8[7] = context;
  v8[8] = &v9;
  v8[6] = relationship;
  _perform(self, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __107__NSManagedObjectContext__NestedContextSupport__newValueForRelationship_forObjectWithID_withContext_error___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(*(*(a1 + 40) + 168) + 8))
  {
    v3 = PF_CALLOC_OBJECT_ARRAY(2);
    *v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3[1] = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 40) + 168) + 8) = v3;
  }

  if ([v2 isTemporaryID])
  {
    v4 = [**(*(*(a1 + 40) + 168) + 8) objectForKey:v2];
    if (v4)
    {
      v2 = v4;
    }
  }

  v5 = [*(a1 + 40) objectRegisteredForID:v2];
  if (v5)
  {
    v6 = v5;
    if (([v5 isFault] & 1) == 0)
    {
      v7 = [*(a1 + 48) _entitysReferenceID];
      v8 = v7;
      v9 = v6[5];
      v10 = v9 ? v6 + v9 : 0;
      if ((v10[(v7 >> 3) + -4 * *(v6 + 19)] >> (v7 & 7)))
      {
        v11 = [v6 entity];
        v12 = _kvcPropertysPrimitiveGetters(v11);
        _PF_Handler_Primitive_GetProperty(v6, v8, *(*(v11[13] + 40) + 8 * v8), *(v12 + 8 * v8));
        v14 = v13;
        v15 = [v13 count];
        v16 = MEMORY[0x1EEE9AC00](v15);
        v19 = v29 - v18;
        v29[1] = v20;
        if (v16 > 0x200)
        {
          v19 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v29 - v18, 8 * v17);
        }

        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        v30 = 0u;
        v21 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = 0;
          v24 = *v31;
          do
          {
            v25 = 0;
            v26 = v23;
            do
            {
              if (*v31 != v24)
              {
                objc_enumerationMutation(v14);
              }

              v23 = v26 + 1;
              *&v19[8 * v26++] = *(*(*(&v30 + 1) + 8 * v25++) + 40);
            }

            while (v22 != v25);
            v22 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v22);
        }

        v27 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v19 count:v15];
        if (v15 >= 0x201)
        {
          NSZoneFree(0, v19);
        }

        *(*(*(a1 + 64) + 8) + 40) = v27;
      }
    }
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    [(NSManagedObjectContext *)*(a1 + 40) lockObjectStore];
    *(*(*(a1 + 64) + 8) + 40) = [*(*(a1 + 40) + 32) newValueForRelationship:*(a1 + 48) forObjectWithID:v2 withContext:*(a1 + 56) error:0];
    [(NSManagedObjectContext *)*(a1 + 40) unlockObjectStore];
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)_newOrderedRelationshipInformationForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__13;
  v17 = __Block_byref_object_dispose__13;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __133__NSManagedObjectContext__NestedContextSupport___newOrderedRelationshipInformationForRelationship_forObjectWithID_withContext_error___block_invoke;
  v12[3] = &unk_1E6EC2660;
  v12[4] = d;
  v12[5] = self;
  v12[6] = relationship;
  v12[7] = context;
  v12[8] = &v19;
  v12[9] = &v13;
  _perform(self, v12);
  v7 = v14;
  v8 = v14[5];
  if (v8)
  {
    if (error)
    {
      *error = v8;
      v8 = v7[5];
    }

    v9 = v8;
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

uint64_t __133__NSManagedObjectContext__NestedContextSupport___newOrderedRelationshipInformationForRelationship_forObjectWithID_withContext_error___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(*(a1[5] + 168) + 8))
  {
    v3 = PF_CALLOC_OBJECT_ARRAY(2);
    *v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3[1] = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(a1[5] + 168) + 8) = v3;
  }

  if ([v2 isTemporaryID])
  {
    v4 = [**(*(a1[5] + 168) + 8) objectForKey:v2];
    if (v4)
    {
      v2 = v4;
    }
  }

  [(NSManagedObjectContext *)a1[5] lockObjectStore];
  *(*(a1[8] + 8) + 40) = [*(a1[5] + 32) _newOrderedRelationshipInformationForRelationship:a1[6] forObjectWithID:v2 withContext:a1[7] error:*(a1[9] + 8) + 40];
  if (!*(*(a1[8] + 8) + 40))
  {
    v5 = *(*(a1[9] + 8) + 40);
  }

  v6 = a1[5];

  return [(NSManagedObjectContext *)v6 unlockObjectStore];
}

- (BOOL)_parentObtainPermanentIDsForObjects:(id)objects context:(id)context error:(id *)error
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__13;
  v31 = __Block_byref_object_dispose__13;
  v32 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3052000000;
  v26[3] = __Block_byref_object_copy__13;
  v26[4] = __Block_byref_object_dispose__13;
  v26[5] = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__NSManagedObjectContext__NestedContextSupport___parentObtainPermanentIDsForObjects_context_error___block_invoke;
  v13[3] = &unk_1E6EC2688;
  v13[4] = self;
  v13[5] = objects;
  v13[8] = &v14;
  v13[9] = &v33;
  v13[10] = &v27;
  v13[11] = v26;
  v13[12] = error;
  v13[6] = context;
  v13[7] = &v20;
  _perform(self, v13);
  if ([v21[5] count])
  {
    v7 = [(NSManagedObjectContext *)context _changeIDsForManagedObjects:v15[5] toIDs:?];
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      objc_autoreleasePoolPop(v8);
    }
  }

  v21[5] = 0;
  v15[5] = 0;
  v9 = v28[5];
  if (error)
  {
    v10 = v28[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = *(v34 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  return v11;
}

void __99__NSManagedObjectContext__NestedContextSupport___parentObtainPermanentIDsForObjects_context_error___block_invoke(uint64_t *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!*(*(a1[4] + 168) + 8))
  {
    v2 = PF_CALLOC_OBJECT_ARRAY(2);
    *v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2[1] = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(a1[4] + 168) + 8) = v2;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = a1[5];
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v5)
  {
    v6 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        v9 = [v8 objectID];
        if ([v9 isTemporaryID])
        {
          v10 = [**(*(a1[4] + 168) + 8) objectForKey:v9];
          v11 = v10;
          if (v10 && ([v10 isTemporaryID] & 1) == 0)
          {
            if (!*(*(a1[7] + 8) + 40))
            {
              *(*(a1[7] + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            if (!*(*(a1[8] + 8) + 40))
            {
              *(*(a1[8] + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [*(*(a1[7] + 8) + 40) addObject:v8];
            [*(*(a1[8] + 8) + 40) addObject:v11];
          }

          else
          {
            [v3 addObject:v8];
            [obj addObject:v9];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v5);
  }

  if ([v3 count])
  {
    v12 = atomic_load((a1[4] + 48));
    v13 = a1[4];
    if (v12)
    {
      [(NSManagedObjectContext *)v13 lockObjectStore];
      *(*(a1[9] + 8) + 24) = [*(a1[4] + 32) _parentObtainPermanentIDsForObjects:v3 context:a1[6] error:a1[12]];
      [(NSManagedObjectContext *)a1[4] unlockObjectStore];
    }

    else
    {
      v14 = [v13 persistentStoreCoordinator];
      [(NSManagedObjectContext *)a1[4] lockObjectStore];
      *(*(a1[9] + 8) + 24) = [v14 obtainPermanentIDsForObjects:v3 error:*(a1[10] + 8) + 40];
      [(NSManagedObjectContext *)a1[4] unlockObjectStore];

      v15 = *(*(a1[10] + 8) + 40);
      if (v15)
      {
        v16 = a1[12];
        if (v16)
        {
          *v16 = v15;
        }

        *(*(a1[9] + 8) + 24) = 0;
      }

      v17 = *(*(a1[11] + 8) + 40);
      obj = 0;
      v3 = 0;
    }

    if (*(*(a1[9] + 8) + 24) == 1)
    {
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v20)
      {
        v21 = 0;
        v22 = *v34;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v33 + 1) + 8 * j);
            v25 = [objc_msgSend(v3 objectAtIndex:{v21, v30), "objectID"}];
            if (v24 != v25)
            {
              v26 = [a1[4] objectRegisteredForID:v24];
              if (v26)
              {
                [v30 addObject:v26];
                [v19 addObject:v25];
              }

              [**(*(a1[4] + 168) + 8) setObject:v25 forKey:v24];
              [*(*(*(a1[4] + 168) + 8) + 8) setObject:v24 forKey:v25];
            }

            ++v21;
          }

          v20 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v20);
      }

      if ([v30 count])
      {
        v18 = [(NSManagedObjectContext *)a1[4] _changeIDsForManagedObjects:v31 toIDs:v19];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    *(*(a1[9] + 8) + 24) = 1;
  }

  v27 = *(*(a1[10] + 8) + 40);
  if (v18)
  {
    v28 = objc_autoreleasePoolPush();
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    objc_autoreleasePoolPop(v28);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)_orderKeysForRelationshipWithName__:(id)name__ onObjectWithID:(id)d
{
  v5 = [(NSManagedObjectContext *)self objectWithID:d];

  return [(NSManagedObject *)v5 _orderKeysForRelationshipWithName__:name__];
}

- (BOOL)_updateLocationsOfObjectsToLocationByOrderKey:(id)key inRelationshipWithName:(id)name onObjectWithID:(id)d error:(id *)error
{
  v9 = [(NSManagedObjectContext *)self objectWithID:d];

  return [(NSManagedObject *)v9 _updateLocationsOfObjectsToLocationByOrderKey:key inRelationshipWithName:name error:error];
}

- (id)_allOrderKeysForDestination:(id)destination inRelationship:(id)relationship error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__13;
  v26 = __Block_byref_object_dispose__13;
  v27 = 0;
  destinationEntity = [relationship destinationEntity];
  if ([(NSManagedObjectContext *)self hasChanges])
  {
    v10 = 0;
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF4350A8];
    }

    goto LABEL_11;
  }

  if (![objc_msgSend(destination "entity")])
  {
    v14 = @"Destination object is not kind of [relationship destinationEntity]";
    goto LABEL_15;
  }

  if (![relationship isToMany])
  {
    v14 = @"Relationship must be a to-many.";
    goto LABEL_15;
  }

  if (([relationship isOrdered] & 1) == 0)
  {
    v14 = @"Can't find the order of objects in an unordered relationship";
LABEL_15:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0]);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__NSManagedObjectContext__PhotosOrderKeyUpdateSupport___allOrderKeysForDestination_inRelationship_error___block_invoke;
  v15[3] = &unk_1E6EC26B0;
  v15[4] = self;
  v15[5] = destination;
  v15[6] = relationship;
  v15[7] = &v22;
  v15[8] = &v16;
  [(NSManagedObjectContext *)self performBlockAndWait:v15];
  v11 = v17[5];
  if (v11)
  {
    v12 = v11;
    if (error)
    {
      *error = v17[5];
    }
  }

  v10 = v23[5];
  _Block_object_dispose(&v16, 8);
LABEL_11:
  _Block_object_dispose(&v22, 8);
  return v10;
}

id __105__NSManagedObjectContext__PhotosOrderKeyUpdateSupport___allOrderKeysForDestination_inRelationship_error___block_invoke(void *a1)
{
  result = [*(a1[4] + 32) _allOrderKeysForDestination:a1[5] inRelationship:a1[6] error:*(a1[8] + 8) + 40];
  *(*(a1[7] + 8) + 40) = result;
  if (!*(*(a1[8] + 8) + 40))
  {

    return 0;
  }

  return result;
}

- (void)set_isSwiftBound:(BOOL)bound
{
  if (bound)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xBFFFFFFF | v3);
  if (bound)
  {
    atomic_store(1u, &self->_generatedMutatedIDsNotification);
  }
}

- (BOOL)_performImmediate:(id)immediate
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can only use -performBlockAndWait: on an NSManagedObjectContext that was created with a queue." userInfo:0]);
  }

  selfCopy = self;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
  selfCopy2 = self;
  v15[0] = immediate;
  v15[1] = selfCopy2;
  v16 = 0;
  v17 = v5;
  if (byte_1ED4BEA2A)
  {
    v16 = 4;
  }

  v7 = atomic_load(&selfCopy->_isMainThreadBlessed);
  if (v7)
  {
    if (!_PFIsSerializedWithMainQueue())
    {
LABEL_27:

      result = 0;
      goto LABEL_28;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_27;
    }

    v8 = 0;
    v9 = 0;
    v10 = v5;
    while (v10 != selfCopy)
    {
      if (v10 == v8)
      {
        goto LABEL_16;
      }

      if (!v8)
      {
        v8 = v10;
      }

      v10 = atomic_load((v10 + 8));
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    v9 = 1;
LABEL_16:
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_17:
    v11 = 0;
    v12 = 0;
    while (selfCopy != v5)
    {
      if (selfCopy == v11)
      {
        goto LABEL_25;
      }

      if (!v11)
      {
        v11 = selfCopy;
      }

      selfCopy = atomic_load(&selfCopy->_queueOwner);
      if (!selfCopy)
      {
        goto LABEL_27;
      }
    }

    v12 = 1;
LABEL_25:
    if (!v12)
    {
      goto LABEL_27;
    }
  }

LABEL_26:
  developerSubmittedBlockToNSManagedObjectContextPerform(v15);
  result = 1;
LABEL_28:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)createFutureForFileAtURL:(id)l
{
  if (!l || ([l isFileURL] & 1) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Illegal attempt to pass a non-file URL to a file backed NSData";
    goto LABEL_13;
  }

  v4 = [_NSDataFileBackedFuture alloc];
  if (v4)
  {
    if (([l isFileURL] & 1) == 0)
    {

      return 0;
    }

    v14.receiver = v4;
    v14.super_class = _NSDataFileBackedFuture;
    v4 = objc_msgSendSuper2(&v14, sel_init);
    if (v4)
    {
      v13 = 0;
      v5 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
      if (v5)
      {
        v6 = v5;
        if ([v5 valueForKey:@"NSFileSize"])
        {
          v4->_fileSize = [objc_msgSend(v6 valueForKey:{@"NSFileSize", "unsignedIntegerValue"}];
          v4->_originalFileURL = l;
          v4->_uuid = [MEMORY[0x1E696AFB0] UUID];
          return v4;
        }
      }

      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No file exists at URL '%@'", l];
      v8 = v11;
      v9 = v12;
LABEL_13:
      objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
    }
  }

  return v4;
}

- (BOOL)evictFuture:(id)future withError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!future)
    {
      goto LABEL_23;
    }

    v20 = 0;
    v6 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    LOBYTE(v7) = 1;
    if ((v6 & 1) == 0 && v20)
    {
      domain = [v20 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(v20, "code") == 4)
      {
        LOBYTE(v7) = 1;
        goto LABEL_24;
      }

      v14 = v20;
      if (v20)
      {
        if (error)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/source/NSFileBackedFuture.m";
        v25 = 1024;
        v26 = 342;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v16 = _PFLogGetLogStream(17);
      v7 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
      if (v7)
      {
        *buf = 136315394;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/source/NSFileBackedFuture.m";
        v25 = 1024;
        v26 = 342;
        goto LABEL_22;
      }
    }
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A250];
    v21 = @"message";
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v22 = [v11 stringWithFormat:@"%@ does not support eviction.", NSStringFromClass(v12)];
    v13 = [v9 errorWithDomain:v10 code:3328 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)}];
    if (v13)
    {
      if (error)
      {
        v14 = v13;
LABEL_17:
        LOBYTE(v7) = 0;
        *error = v14;
        goto LABEL_24;
      }

LABEL_23:
      LOBYTE(v7) = 0;
      goto LABEL_24;
    }

    v15 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/source/NSFileBackedFuture.m";
      v25 = 1024;
      v26 = 28;
      _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v16 = _PFLogGetLogStream(17);
    v7 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      *buf = 136315394;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/source/NSFileBackedFuture.m";
      v25 = 1024;
      v26 = 28;
LABEL_22:
      _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      goto LABEL_23;
    }
  }

LABEL_24:
  v18 = *MEMORY[0x1E69E9840];
  return v7;
}

@end