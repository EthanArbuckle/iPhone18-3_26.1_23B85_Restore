@interface NSSQLSavePlan
- (id)_correlationTableUpdateTrackerForRelationship:(uint64_t)relationship;
- (id)_newRowCacheRowForToManyUpdatesForRelationship:(void *)relationship rowCacheOriginal:(void *)original originalOrderKeys:(void *)keys originalSnapshot:(unint64_t *)snapshot value:(void *)value added:(void *)added deleted:(unint64_t *)deleted sourceRowPK:(void *)self0 properties:(void *)self1 sourceObject:(void *)self2 newIndexes:(void *)self3 reorderedIndexes:;
- (id)initForRequestContext:(id)context;
- (id)newObjectsForExhaustiveLockConflictDetection;
- (id)newObjectsForUniquenessConflictDetectionGivenReportedFailures:(uint64_t)failures;
- (uint64_t)_addFileBackedFutureToDelete:(uint64_t)delete;
- (uint64_t)_createRowsForSave;
- (uint64_t)_registerChangedFOKs:(uint64_t)ks deletions:(const void *)deletions forSourceObject:(void *)object andRelationship:;
- (uint64_t)newCorrelationTableUpdates;
- (uint64_t)newInsertedRows;
- (void)_computeUpdatedRowSplit;
- (void)_createCorrelationTrackerUpdatesForDeletedObject:(uint64_t)object;
- (void)_findOrCreateChangeSnapshotForGlobalID:(uint64_t)d;
- (void)_populateOrderKeysInOrderedSet:(uint64_t)set usingSourceObjectID:(void *)d inverseRelationship:(void *)relationship newIndexes:(void *)indexes reorderedIndexes:;
- (void)_populateRow:(_BYTE *)row fromObject:(int)object timestamp:(_BYTE *)timestamp inserted:(double)inserted shouldAddToRowCache:;
- (void)_prepareForDeletionOfDatabaseExternalPropertiesForObject:(uint64_t)object;
- (void)_recordToManyChangesForObject:(unint64_t *)object inRow:(int)row usingTimestamp:(double)timestamp inserted:;
- (void)dealloc;
- (void)newObjectsForFastLockConflictDetection;
@end

@implementation NSSQLSavePlan

- (uint64_t)_createRowsForSave
{
  v74 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    persistentStoreRequest = *(result + 8);
    if (persistentStoreRequest)
    {
      persistentStoreRequest = [persistentStoreRequest persistentStoreRequest];
    }

    insertedObjects = [persistentStoreRequest insertedObjects];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v4;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v6 = [insertedObjects countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v6)
    {
      v7 = *v67;
      do
      {
        v8 = 0;
        do
        {
          if (*v67 != v7)
          {
            objc_enumerationMutation(insertedObjects);
          }

          v9 = *(*(&v66 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          objectID = [v9 objectID];
          entity = [v9 entity];
          if (entity)
          {
            v14 = *(v1 + 8);
            if (v14)
            {
              v15 = *(v14 + 8);
            }

            else
            {
              v15 = 0;
            }

            v13 = _sqlCoreLookupSQLEntityForEntityDescription(v15, entity);
          }

          else
          {
            v13 = 0;
          }

          v16 = [(NSSQLSaveChangesRequestContext *)*(v1 + 8) originalRowForObjectID:objectID];
          v17 = [+[NSSQLRow allocForSQLEntity:](NSSQLRow v13)];
          v18 = v17;
          if (v16)
          {
            v19 = atomic_load(v16 + 5);
            v20 = *(v19 + 12) + 1;
          }

          else
          {
            v20 = 1;
          }

          [v17 setOptLock:v20];
          CFDictionarySetValue(*(v1 + 16), objectID, v18);
          CFDictionarySetValue(*(v1 + 24), objectID, v18);

          objc_autoreleasePoolPop(v10);
          ++v8;
        }

        while (v6 != v8);
        v21 = [insertedObjects countByEnumeratingWithState:&v66 objects:v73 count:16];
        v6 = v21;
      }

      while (v21);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v22 = [insertedObjects countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v22)
    {
      v23 = *v63;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v63 != v23)
          {
            objc_enumerationMutation(insertedObjects);
          }

          v25 = *(*(&v62 + 1) + 8 * i);
          v26 = objc_autoreleasePoolPush();
          Value = CFDictionaryGetValue(*(v1 + 16), [v25 objectID]);
          v61 = 1;
          [(NSSQLSavePlan *)v1 _populateRow:v25 fromObject:1 timestamp:&v61 inserted:v5 shouldAddToRowCache:?];
          if (v61 == 1)
          {
            [*(v1 + 64) addObject:Value];
          }

          else
          {
            [*(v1 + 72) addObject:{objc_msgSend(Value, "objectID")}];
          }

          objc_autoreleasePoolPop(v26);
        }

        v22 = [insertedObjects countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v22);
    }

    persistentStoreRequest2 = *(v1 + 8);
    if (persistentStoreRequest2)
    {
      persistentStoreRequest2 = [persistentStoreRequest2 persistentStoreRequest];
    }

    updatedObjects = [persistentStoreRequest2 updatedObjects];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v30 = [updatedObjects countByEnumeratingWithState:&v57 objects:v71 count:16];
    if (v30)
    {
      v31 = *v58;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v58 != v31)
          {
            objc_enumerationMutation(updatedObjects);
          }

          v33 = *(*(&v57 + 1) + 8 * j);
          v34 = objc_autoreleasePoolPush();
          v35 = -[NSSQLSavePlan _findOrCreateChangeSnapshotForGlobalID:](v1, [v33 objectID]);
          v61 = 1;
          [(NSSQLSavePlan *)v1 _populateRow:v35 fromObject:v33 timestamp:0 inserted:&v61 shouldAddToRowCache:v5];
          if (v61 == 1)
          {
            [*(v1 + 64) addObject:v35];
          }

          else
          {
            [*(v1 + 72) addObject:{objc_msgSend(v35, "objectID")}];
          }

          objc_autoreleasePoolPop(v34);
        }

        v30 = [updatedObjects countByEnumeratingWithState:&v57 objects:v71 count:16];
      }

      while (v30);
    }

    persistentStoreRequest3 = *(v1 + 8);
    if (persistentStoreRequest3)
    {
      persistentStoreRequest3 = [persistentStoreRequest3 persistentStoreRequest];
    }

    deletedObjects = [persistentStoreRequest3 deletedObjects];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    result = [deletedObjects countByEnumeratingWithState:&v53 objects:v70 count:16];
    v38 = result;
    if (result)
    {
      v39 = *v54;
      do
      {
        v40 = 0;
        do
        {
          if (*v54 != v39)
          {
            objc_enumerationMutation(deletedObjects);
          }

          v41 = *(*(&v53 + 1) + 8 * v40);
          v42 = objc_autoreleasePoolPush();
          objectID2 = [v41 objectID];
          entity2 = [v41 entity];
          if (entity2)
          {
            v45 = *(v1 + 8);
            v46 = v45 ? *(v45 + 8) : 0;
            v47 = _sqlCoreLookupSQLEntityForEntityDescription(v46, entity2);
            v48 = v47;
            if (v47)
            {
              v49 = *(v47 + 280);
              if (v49)
              {
                [(NSSQLSavePlan *)v1 _prepareForDeletionOfDatabaseExternalPropertiesForObject:v41];
                v49 = *(v48 + 280);
              }

              if ((v49 & 2) != 0)
              {
                [(NSSQLSavePlan *)v1 _prepareForDeletionOfDatabaseExternalPropertiesForObject:v41];
              }
            }
          }

          [(NSSQLSavePlan *)v1 _createCorrelationTrackerUpdatesForDeletedObject:v41];
          v50 = [(NSSQLSavePlan *)v1 _findOrCreateChangeSnapshotForGlobalID:objectID2];
          v51 = v50;
          CFDictionaryRemoveValue(*(v1 + 16), objectID2);
          if (v50)
          {
            [*(v1 + 40) addObject:v50];
          }

          objc_autoreleasePoolPop(v42);
          ++v40;
        }

        while (v38 != v40);
        result = [deletedObjects countByEnumeratingWithState:&v53 objects:v70 count:16];
        v38 = result;
      }

      while (result);
    }
  }

  v52 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)newCorrelationTableUpdates
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = *(self + 32);
    v2 = [v1 count];
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

    v6 = v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v2 > 0x200)
    {
      v6 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    }

    [v1 getObjects:v6 andKeys:0 count:v3];
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v6 count:v3];
    if (v3 >= 0x201)
    {
      NSZoneFree(0, v6);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (uint64_t)newInsertedRows
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = *(self + 24);
    v2 = [v1 count];
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

    v6 = v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v2 > 0x200)
    {
      v6 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    }

    [v1 getObjects:v6 andKeys:0 count:v3];
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v6 count:v3];
    if (v3 >= 0x201)
    {
      NSZoneFree(0, v6);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_computeUpdatedRowSplit
{
  if (self)
  {
    persistentStoreRequest = self[1];
    if (persistentStoreRequest)
    {
      persistentStoreRequest = [persistentStoreRequest persistentStoreRequest];
    }

    updatedObjects = [persistentStoreRequest updatedObjects];
    if (updatedObjects)
    {
      v4 = updatedObjects;
      if ([updatedObjects count])
      {
        v5 = [_PFRoutines newSetOfObjectIDsFromCollection:v4];
        v14 = 0;
        v15 = &v14;
        v16 = 0x3052000000;
        v17 = __Block_byref_object_copy__45;
        v18 = __Block_byref_object_dispose__45;
        v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v8 = 0;
        v9 = &v8;
        v10 = 0x3052000000;
        v11 = __Block_byref_object_copy__45;
        v12 = __Block_byref_object_dispose__45;
        v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v6 = self[2];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __40__NSSQLSavePlan__computeUpdatedRowSplit__block_invoke;
        v7[3] = &unk_1E6EC5228;
        v7[4] = self;
        v7[5] = v5;
        v7[6] = &v14;
        v7[7] = &v8;
        [v6 enumerateKeysAndObjectsUsingBlock:v7];

        self[6] = v15[5];
        self[7] = v9[5];
        _Block_object_dispose(&v8, 8);
        _Block_object_dispose(&v14, 8);
      }
    }
  }
}

const void *__40__NSSQLSavePlan__computeUpdatedRowSplit__block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  result = CFDictionaryGetValue(*(*(a1 + 32) + 24), a2);
  if (!result)
  {
    v7 = [*(a1 + 40) containsObject:a2];
    v8 = 56;
    if (v7)
    {
      v8 = 48;
    }

    v9 = *(*(*(a1 + v8) + 8) + 40);

    return [v9 addObject:a3];
  }

  return result;
}

- (void)newObjectsForFastLockConflictDetection
{
  if (result)
  {
    persistentStoreRequest = result[1];
    if (persistentStoreRequest)
    {
      persistentStoreRequest = [persistentStoreRequest persistentStoreRequest];
    }

    lockedObjects = [persistentStoreRequest lockedObjects];

    return lockedObjects;
  }

  return result;
}

- (void)dealloc
{
  CFRelease(self->_changeCache);
  self->_changeCache = 0;
  CFRelease(self->_toManyCache);
  self->_toManyCache = 0;
  CFRelease(self->_insertCache);
  self->_insertCache = 0;

  self->_toManyRelationshipChanges = 0;
  self->_rowsToDelete = 0;

  self->_externalDataReferencesToDelete = 0;
  self->_externalDataReferencesToSave = 0;

  self->_fileBackedFuturesToCopy = 0;
  self->_fileBackedFuturesToDelete = 0;

  self->_updatedByRequest = 0;
  self->_updatedByForeignKey = 0;

  self->_rowsToAddToRowCache = 0;
  self->_objectIDsToRemoveFromRowCache = 0;

  self->_usedIndexes = 0;
  updatedFOKRowsInCurrentSave = self->_updatedFOKRowsInCurrentSave;
  if (updatedFOKRowsInCurrentSave)
  {
    CFRelease(updatedFOKRowsInCurrentSave);
    self->_updatedFOKRowsInCurrentSave = 0;
    CFRelease(self->_deletedFOKRowsInCurrentSave);
    self->_deletedFOKRowsInCurrentSave = 0;
  }

  v4.receiver = self;
  v4.super_class = NSSQLSavePlan;
  [(NSSQLSavePlan *)&v4 dealloc];
}

- (void)_populateOrderKeysInOrderedSet:(uint64_t)set usingSourceObjectID:(void *)d inverseRelationship:(void *)relationship newIndexes:(void *)indexes reorderedIndexes:
{
  v32[2] = *MEMORY[0x1E69E9840];
  if (!a2 || indexes || relationship || !a2[4])
  {
    if (d)
    {
      propertyDescription = [d propertyDescription];
    }

    else
    {
      propertyDescription = 0;
    }

    v12 = [NSSQLRelationshipFaultRequestContext alloc];
    v13 = *(self + 8);
    if (v13)
    {
      v14 = *(v13 + 32);
      v15 = *(v13 + 8);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v16 = [(NSSQLRelationshipFaultRequestContext *)v12 initWithObjectID:set relationship:propertyDescription context:v14 sqlCore:v15];
    [(NSSQLStoreRequestContext *)v16 setQueryGenerationToken:?];
    v17 = *(self + 8);
    if (v17)
    {
      v18 = *(v17 + 8);
    }

    else
    {
      v18 = 0;
    }

    [(NSSQLCore *)v18 dispatchRequest:v16 withRetries:0];
    result = [v16 result];
    if (v16)
    {
      v20 = *(v16 + 40);
      if (v20)
      {
        v25 = v20;
        code = [v25 code];
        v27 = [v25 description];
        v31[0] = [v25 domain];
        v28 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v25, "code")}];
        v31[1] = *MEMORY[0x1E696AA08];
        v32[0] = v28;
        v32[1] = v25;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
        v30 = [_NSCoreDataException exceptionWithName:code code:v27 reason:v29 userInfo:?];
        objc_exception_throw(v30);
      }
    }

    v21 = [result count] == 2;
    firstObject = [result firstObject];
    if (v21)
    {
      lastObject = [result lastObject];
    }

    else
    {
      lastObject = NSOrderedSet_EmptyOrderedSet;
    }

    [(_NSFaultingMutableOrderedSet *)a2 _populateOrderKeysUsingSnapshot:firstObject orderKeys:lastObject newIndexes:relationship reorderedIndexes:indexes];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_registerChangedFOKs:(uint64_t)ks deletions:(const void *)deletions forSourceObject:(void *)object andRelationship:
{
  v8 = result;
  if (a2)
  {
    v10 = [*(result + 80) objectForKey:deletions];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      CFDictionarySetValue(*(v8 + 80), deletions, v10);
    }

    result = [v10 setValue:a2 forKey:{objc_msgSend(object, "name")}];
  }

  if (ks)
  {
    v11 = [*(v8 + 88) objectForKey:deletions];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      CFDictionarySetValue(*(v8 + 88), deletions, v11);
    }

    name = [object name];

    return [v11 setValue:ks forKey:name];
  }

  return result;
}

- (id)_newRowCacheRowForToManyUpdatesForRelationship:(void *)relationship rowCacheOriginal:(void *)original originalOrderKeys:(void *)keys originalSnapshot:(unint64_t *)snapshot value:(void *)value added:(void *)added deleted:(unint64_t *)deleted sourceRowPK:(void *)self0 properties:(void *)self1 sourceObject:(void *)self2 newIndexes:(void *)self3 reorderedIndexes:
{
  deletedCopy = snapshot;
  originalCopy = original;
  v269 = *MEMORY[0x1E69E9840];
  v232 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  propertiesCopy = properties;
  objectID = [properties objectID];
  v19 = [value count];
  addedCopy = added;
  v243 = [added count];
  v236 = a2;
  isOrdered = [a2 isOrdered];
  if (!relationship)
  {
    v221 = *MEMORY[0x1E695D930];
    v222 = MEMORY[0x1E695DF20];
    v223 = [MEMORY[0x1E696AD98] numberWithInt:134030];
    v224 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v221, 134030, @"Invalid rowCache row is nil", [v222 dictionaryWithObject:v223 forKey:*MEMORY[0x1E696A250]]);
    objc_exception_throw(v224);
  }

  v21 = isOrdered;
  if (isOrdered)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else if ([relationship isNSArray])
  {
    v22 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:relationship];
  }

  else
  {
    v22 = [relationship mutableCopy];
  }

  v248 = v22;
  kCopy = k;
  v233 = [relationship count];
  MEMORY[0x1EEE9AC00](v233);
  v25 = &v225 - v24;
  v231 = v26;
  if (v26 > 0x200)
  {
    v27 = NSAllocateScannedUncollectable();
    v25 = v27;
  }

  else
  {
    bzero(&v225 - v24, 8 * v23);
  }

  v242 = v21;
  v241 = v25;
  if (!v21)
  {
    if (v19)
    {
      MEMORY[0x1EEE9AC00](v27);
      v32 = &v225 - v31;
      v33 = v25;
      if (v19 > 0x200)
      {
        v32 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v225 - v31, 8 * v19);
      }

      [value getObjects:v32];
      v35 = 0;
      for (i = 0; i != v19; ++i)
      {
        objectID2 = [*&v32[8 * i] objectID];
        if (objectID2)
        {
          *&v33[8 * v35++] = objectID2;
        }
      }

      v38 = v19 < 0x201;
      v39 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v33 count:v35];
      [v248 addObjectsFromArray:v39];

      if (!v38)
      {
        NSZoneFree(0, v32);
      }

      v25 = v33;
    }

    goto LABEL_217;
  }

  indexesCopy = indexes;
  objectCopy = object;
  v230 = [_PFRoutines newArrayOfObjectIDsFromCollection:keys];
  if (([relationship isNSArray] & 1) == 0)
  {
    relationship = [relationship array];
  }

  if (([relationship isEqual:v230] & 1) == 0)
  {
    v229 = [_PFRoutines newSetOfObjectIDsFromCollection:addedCopy];
    if (*(self + 148))
    {
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v34 = 0;
    }

    v43 = [_PFRoutines newArrayOfObjectIDsFromCollection:deletedCopy];
    v44 = [addedCopy count];
    v45 = v230;
    v46 = [v230 count];
    v247 = v43;
    objectID = v34;
    if (v44 == v46)
    {
      v47 = [v45 count];
      if (v47)
      {
        v48 = v47;
        v49 = [relationship count];
        if ([_PFRoutines _objectsInOrderedCollection:v45 formSubstringInOrderedCollection:relationship])
        {
          v50 = [relationship indexOfObject:{objc_msgSend(v45, "objectAtIndex:", 0)}];
          if (v50)
          {
            v51 = v50 + v48;
            v52 = v49 - (v50 + v48);
            v53 = 0x1E695D000;
            v54 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:relationship range:0 copyItems:{v50, 0}];
            if (v52)
            {
              MEMORY[0x1EEE9AC00](v54);
              v218 = &v225 - v217;
              [relationship getObjects:&v225 - v217 range:{v51, v52}];
              [v54 addObjects:v218 count:v52];
            }

            goto LABEL_163;
          }

          v118 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:relationship range:v48 copyItems:{v49 - v48, 0}];
        }

        else
        {
          v118 = [_PFRoutines newOrderedSetFromCollection:relationship byRemovingItems:v229];
        }
      }

      else
      {
        v118 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:relationship];
      }

      v54 = v118;
      v53 = 0x1E695D000uLL;
LABEL_163:
      [v54 addObjectsFromArray:v43];
      v226 = 0;
      goto LABEL_164;
    }

    v88 = [_PFRoutines newOrderedSetFromCollection:v45 byRemovingItems:v229];
    if ([_PFRoutines _objectsInOrderedCollection:v88 formSubstringInOrderedCollection:v43])
    {
      v54 = [_PFRoutines _replaceBaseline:v88 inOrderedSet:v43 withOrderedSet:relationship];

      v226 = 0;
      v53 = 0x1E695D000;
LABEL_164:
      name = [v236 name];
      v245 = [kCopy objectForKey:name];
      if ([v245 isToMany])
      {
        if (v245 && (v157 = v245[7]) != 0)
        {
          v158 = *(v157 + 80);
        }

        else
        {
          v158 = 0;
        }

        LODWORD(v240) = [v158 slot];
      }

      else
      {
        LODWORD(v240) = 0;
      }

      isNSArray = [v54 isNSArray];
      v160 = objc_alloc(*(v53 + 3952));
      array = v54;
      if ((isNSArray & 1) == 0)
      {
        array = [v54 array];
      }

      v248 = [v160 initWithArray:array];
      v244 = [[_NSFaultingMutableOrderedSet alloc] initWithOrderedSet:v54];

      if ([(_NSFaultingMutableOrderedSet *)v244 count])
      {
        v162 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v162 = malloc_default_zone();
        }

        v163 = malloc_type_zone_calloc(v162, [(_NSFaultingMutableOrderedSet *)v244 count], 1uLL, 0x100004077774924uLL);
        *indexesCopy = v163;
        v164 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v164 = malloc_default_zone();
        }

        v165 = malloc_type_zone_calloc(v164, [(_NSFaultingMutableOrderedSet *)v244 count], 8uLL, 0x100004000313F17uLL);
        v166 = objectCopy;
        v167 = indexesCopy;
        *objectCopy = v165;
        [(_NSFaultingMutableOrderedSet *)v244 _populateOrderKeysUsingSnapshot:relationship orderKeys:originalCopy newIndexes:v166 reorderedIndexes:v167];
        [(_NSFaultingMutableOrderedSet *)deletedCopy _updateOrderKeysFromOrderOfObjectIDs:v244];
      }

      v168 = [v248 count];
      if (v168)
      {
        for (j = 0; j != v168; ++j)
        {
          v170 = objc_autoreleasePoolPush();
          v171 = [v248 objectAtIndex:j];
          result = [(NSSQLSaveChangesRequestContext *)*(self + 8) originalRowForObjectID:v171];
          if (!result)
          {
            v173 = [(NSSQLStoreRequestContext *)*(self + 8) createNestedObjectFaultContextForObjectWithID:v171];
            [(NSSQLStoreRequestContext *)v173 setQueryGenerationToken:?];
            v174 = *(self + 8);
            if (v174)
            {
              v175 = *(v174 + 8);
            }

            else
            {
              v175 = 0;
            }

            [(NSSQLCore *)v175 dispatchRequest:v173 withRetries:0];
            result = [v173 result];
            if (result)
            {
              v176 = *(self + 8);
              if (v176)
              {
                [*(v176 + 136) setObject:result forKey:v171];
              }
            }

            v177 = result;
          }

          if ([v245 isToMany])
          {
            v178 = [(_NSFaultingMutableOrderedSet *)v244 _orderKeyForObject:v171];
            v179 = v178;
            v180 = result ? *(&result[v240] + _NSSQLRowInstanceSize + ((4 * result[4]) & 0x1FFF8)) : 0;
            if (v180 != v178)
            {
              v181 = [objc_msgSend(propertiesCopy "managedObjectContext")];
              if (([v181 isDeleted] & 1) == 0)
              {
                if ([v181 isFault])
                {
                  v182 = -[NSSQLStoreRequestContext createNestedObjectFaultContextForObjectWithID:](*(self + 8), [v181 objectID]);
                  [(NSSQLStoreRequestContext *)v182 setQueryGenerationToken:?];
                  v183 = *(self + 8);
                  if (v183)
                  {
                    v184 = *(v183 + 8);
                  }

                  else
                  {
                    v184 = 0;
                  }

                  [(NSSQLCore *)v184 dispatchRequest:v182 withRetries:0];
                  result = [v182 result];

                  v185 = result;
                }

                Value = CFDictionaryGetValue(*(self + 16), v171);
                if (!Value && result)
                {
                  Value = [result copy];
                  CFDictionarySetValue(*(self + 16), v171, Value);
                }

                if (Value)
                {
                  [Value setForeignOrderKeySlot:v240 orderKey:v179];
                  [objectID addObject:v171];
                  v187 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v179];
                  [objectID addObject:v187];
                }
              }
            }
          }

          objc_autoreleasePoolPop(v170);
        }
      }

      v188 = objectID;
      if (objectID)
      {
        v189 = objectID;
        if ([objectID count])
        {
          v190 = v189;
        }

        else
        {
          v190 = 0;
        }

        if ([v226 count])
        {
          v191 = v226;
        }

        else
        {
          v191 = 0;
        }

        objectID3 = [propertiesCopy objectID];
        [(NSSQLSavePlan *)self _registerChangedFOKs:v190 deletions:v191 forSourceObject:objectID3 andRelationship:v236];
        v188 = v189;
      }

      goto LABEL_215;
    }

    v115 = [_PFRoutines newSetOfObjectIDsFromCollection:value];
    v245 = [relationship mutableCopy];
    v116 = [_PFRoutines newOrderedSetFromCollection:v45 byRemovingItems:v245];
    v117 = [_PFRoutines newOrderedSetFromCollection:v116 byRemovingItems:v115];

    if (v34)
    {
      v226 = [_PFRoutines newMutableArrayFromCollection:v229 byRemovingItems:v117];
    }

    else
    {
      v226 = 0;
    }

    v132 = v230;
    v133 = [v230 count];
    v134 = v117;
    if (v133 == [(_NSFaultingMutableOrderedSet *)v117 count])
    {
      v135 = 0;
    }

    else
    {
      v136 = [v132 mutableCopy];
      v135 = [_PFRoutines newOrderedSetFromCollection:v136 byRemovingItems:v117];
    }

    v137 = [v132 count];
    v244 = v134;
    if (v137 == [(_NSFaultingMutableOrderedSet *)v134 count])
    {
      v138 = [_PFRoutines newOrderedSetFromCollection:v247 byRemovingItems:v132];
      v139 = [_PFRoutines newOrderedSetFromCollection:v138 byAddingItems:relationship];
    }

    else
    {
      v138 = v135;
      v140 = [_PFRoutines _objectsInOrderedCollection:v135 formSubstringInOrderedCollection:relationship];
      v141 = v247;
      if (!v140)
      {

        v143 = v245;
        v138 = [_PFRoutines newOrderedSetFromCollection:v245 byRemovingItems:v230];
        [v138 minusSet:v229];
        v54 = [_PFRoutines newOrderedSetFromCollection:v141 byRemovingItems:v244];
        v142 = v143;
        v144 = [_PFRoutines newArrayOfObjectIDsFromCollection:addedCopy];
        [v142 removeObjectsInArray:v144];

        if ([v138 count])
        {
          v240 = v138;
          v145 = [v142 count];
          if (v145)
          {
            v146 = v145;
            v147 = 0;
            kCopy2 = 0;
            v149 = 0;
            for (k = 0; k != v146; ++k)
            {
              v151 = [v142 objectAtIndex:k];
              if ([v54 containsObject:v151])
              {
                if (kCopy2 | v149)
                {
                  v153 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{kCopy2, v149}];
                  v154 = [v245 objectsAtIndexes:v153];
                  v155 = [v54 indexOfObject:v151];
                  [v54 insertObjects:v154 atIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", v155, v149)}];
                  v149 = 0;
                  kCopy2 = 0;
                  v147 = 0;
                }

                else
                {
                  v149 = 0;
                  kCopy2 = 0;
                }
              }

              else
              {
                v152 = (v147 & 1) == 0;
                v147 = 1;
                if (v152)
                {
                  v149 = 1;
                }

                else
                {
                  ++v149;
                }

                if (v152)
                {
                  kCopy2 = k;
                }
              }

              v142 = v245;
            }
          }

          else
          {
            v149 = 0;
            kCopy2 = 0;
          }

          v138 = v240;
          if (kCopy2 | v149)
          {
            v219 = [v142 objectsAtIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", kCopy2, v149)}];
            v220 = [v54 count];
            [v54 insertObjects:v219 atIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", v220, v149)}];
          }
        }

        goto LABEL_145;
      }

      v139 = [_PFRoutines _replaceBaseline:v135 inOrderedSet:relationship withOrderedSet:v247];
    }

    v54 = v139;
    v142 = v245;
LABEL_145:
    v53 = 0x1E695D000;

    goto LABEL_164;
  }

  name2 = [v236 name];
  v29 = [kCopy objectForKey:name2];
  if (*(self + 148))
  {
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v30 = 0;
  }

  v40 = indexesCopy;
  v229 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v29 isToMany])
  {
    if (v29 && (v41 = v29[7]) != 0)
    {
      v42 = *(v41 + 80);
    }

    else
    {
      v42 = 0;
    }

    LODWORD(v245) = [v42 slot];
  }

  else
  {
    LODWORD(v245) = 0;
  }

  v55 = [deletedCopy count];
  v56 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v56 = malloc_default_zone();
  }

  v247 = v30;
  *v40 = malloc_type_zone_calloc(v56, v55, 1uLL, 0x100004077774924uLL);
  v57 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v57 = malloc_default_zone();
  }

  v58 = malloc_type_zone_calloc(v57, v55, 8uLL, 0x100004000313F17uLL);
  v59 = objectCopy;
  *objectCopy = v58;
  v60 = deletedCopy;
  originalCopy = v29;
  [(NSSQLSavePlan *)self _populateOrderKeysInOrderedSet:deletedCopy usingSourceObjectID:objectID inverseRelationship:v29 newIndexes:v59 reorderedIndexes:v40];
  v240 = [v60 count];
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v261 = 0u;
  v262 = 0u;
  v263 = 0u;
  v264 = 0u;
  v62 = [v60 countByEnumeratingWithState:&v261 objects:v268 count:16];
  if (v62)
  {
    v63 = *v262;
    do
    {
      for (m = 0; m != v62; ++m)
      {
        if (*v262 != v63)
        {
          objc_enumerationMutation(deletedCopy);
        }

        objectID4 = [*(*(&v261 + 1) + 8 * m) objectID];
        [v248 addObject:objectID4];
      }

      v62 = [deletedCopy countByEnumeratingWithState:&v261 objects:v268 count:16];
    }

    while (v62);
  }

  if ([originalCopy isToMany])
  {
    if (v240)
    {
      for (n = 0; n != v240; ++n)
      {
        v67 = objc_autoreleasePoolPush();
        v68 = [objc_msgSend(deletedCopy objectAtIndex:{n), "objectID"}];
        if (![(NSSQLSaveChangesRequestContext *)*(self + 8) originalRowForObjectID:v68])
        {
          [v61 addObject:v68];
        }

        objc_autoreleasePoolPop(v67);
      }
    }

    v244 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v61 count])
    {
      v69 = objc_alloc_init(NSFetchRequest);
      -[NSFetchRequest setEntity:](v69, "setEntity:", [objc_msgSend(originalCopy "destinationEntity")]);
      -[NSFetchRequest setPredicate:](v69, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v61]);
      [(NSFetchRequest *)v69 setAllocationType:1];
      [(NSFetchRequest *)v69 setResultType:2];
      v70 = objc_alloc_init(NSExpressionDescription);
      [(NSPropertyDescription *)v70 setName:@"self"];
      -[NSExpressionDescription setExpression:](v70, "setExpression:", [MEMORY[0x1E696ABC8] expressionForEvaluatedObject]);
      [(NSExpressionDescription *)v70 setExpressionResultType:2000];
      v71 = objc_alloc_init(NSExpressionDescription);
      [(NSPropertyDescription *)v71 setName:@"fok"];
      if (originalCopy && (v72 = *(originalCopy + 7)) != 0)
      {
        v73 = *(v72 + 80);
      }

      else
      {
        v73 = 0;
      }

      name3 = [v73 name];
      -[NSExpressionDescription setExpression:](v71, "setExpression:", [MEMORY[0x1E696ABC8] expressionForKeyPath:name3]);
      [(NSExpressionDescription *)v71 setExpressionResultType:200];
      -[NSFetchRequest setPropertiesToFetch:](v69, "setPropertiesToFetch:", [MEMORY[0x1E695DF70] arrayWithObjects:{v70, v71, 0}]);
      v75 = [NSSQLFetchRequestContext alloc];
      v76 = *(self + 8);
      if (v76)
      {
        v77 = *(v76 + 32);
        v78 = *(v76 + 8);
      }

      else
      {
        v77 = 0;
        v78 = 0;
      }

      v79 = [(NSSQLFetchRequestContext *)v75 initWithRequest:v69 context:v77 sqlCore:v78];
      [(NSSQLStoreRequestContext *)v79 setQueryGenerationToken:?];
      v80 = *(self + 8);
      if (v80)
      {
        v81 = *(v80 + 8);
      }

      else
      {
        v81 = 0;
      }

      [(NSSQLCore *)v81 dispatchRequest:v79 withRetries:0];
      result2 = [v79 result];

      v259 = 0u;
      v260 = 0u;
      v257 = 0u;
      v258 = 0u;
      v83 = [result2 countByEnumeratingWithState:&v257 objects:v267 count:16];
      if (v83)
      {
        v84 = *v258;
        do
        {
          for (ii = 0; ii != v83; ++ii)
          {
            if (*v258 != v84)
            {
              objc_enumerationMutation(result2);
            }

            v86 = *(*(&v257 + 1) + 8 * ii);
            v87 = [v86 objectForKey:@"self"];
            [(_NSFaultingMutableOrderedSet *)v244 setObject:v86 forKey:v87];
          }

          v83 = [result2 countByEnumeratingWithState:&v257 objects:v267 count:16];
        }

        while (v83);
      }

      v61 = 0;
    }
  }

  else
  {
    v244 = 0;
  }

  if ([originalCopy isToMany])
  {
    indexesCopy = objc_alloc_init(MEMORY[0x1E695DF70]);
    v89 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v240)
    {
      v90 = 0;
      while (1)
      {
        v91 = objc_autoreleasePoolPush();
        v92 = [deletedCopy objectAtIndex:v90];
        objectID5 = [v92 objectID];
        v94 = [(NSSQLSaveChangesRequestContext *)*(self + 8) originalRowForObjectID:objectID5];
        v95 = v94 ? 0 : [(_NSFaultingMutableOrderedSet *)v244 objectForKey:objectID5];
        [(NSSQLSavePlan *)self _populateOrderKeysInOrderedSet:deletedCopy usingSourceObjectID:objectID inverseRelationship:originalCopy newIndexes:0 reorderedIndexes:0];
        v96 = [(_NSFaultingMutableOrderedSet *)deletedCopy _orderKeyForObject:v92];
        v97 = v96;
        if (v94)
        {
          break;
        }

        if ([objc_msgSend(v95 objectForKey:{@"fok", "intValue"}] != v96)
        {
          [indexesCopy addObject:objectID5];
LABEL_90:
          [v89 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", v97), objectID5}];
        }

LABEL_91:
        objc_autoreleasePoolPop(v91);
        if (v240 == ++v90)
        {
          goto LABEL_92;
        }
      }

      if (*(v94 + 4 * v245 + _NSSQLRowInstanceSize + ((4 * *(v94 + 4)) & 0x1FFF8)) == v96)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

LABEL_92:
    if ([indexesCopy count])
    {
      v98 = objc_alloc_init(NSFetchRequest);
      -[NSFetchRequest setEntity:](v98, "setEntity:", [objc_msgSend(originalCopy "destinationEntity")]);
      -[NSFetchRequest setPredicate:](v98, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", indexesCopy]);
      v99 = [NSSQLFetchRequestContext alloc];
      v100 = *(self + 8);
      if (v100)
      {
        v101 = *(v100 + 32);
        v102 = *(v100 + 8);
      }

      else
      {
        v101 = 0;
        v102 = 0;
      }

      v103 = [(NSSQLFetchRequestContext *)v99 initWithRequest:v98 context:v101 sqlCore:v102];
      [(NSSQLStoreRequestContext *)v103 setQueryGenerationToken:?];
      *(*(v103 + 136) + 72) = *(*(v103 + 136) + 72) & 0xFFFFFFE3 | 8;
      v104 = *(self + 8);
      if (v104)
      {
        v105 = *(v104 + 8);
      }

      else
      {
        v105 = 0;
      }

      v106 = indexesCopy;
      [(NSSQLCore *)v105 dispatchRequest:v103 withRetries:0];
      result3 = [v103 result];

      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v108 = [result3 countByEnumeratingWithState:&v253 objects:v266 count:16];
      if (v108)
      {
        v109 = *v254;
        do
        {
          for (jj = 0; jj != v108; ++jj)
          {
            if (*v254 != v109)
            {
              objc_enumerationMutation(result3);
            }

            v111 = *(*(&v253 + 1) + 8 * jj);
            v112 = *(self + 8);
            objectID6 = [v111 objectID];
            if (v112)
            {
              [*(v112 + 136) setObject:v111 forKey:objectID6];
            }
          }

          v108 = [result3 countByEnumeratingWithState:&v253 objects:v266 count:16];
        }

        while (v108);
      }

      v114 = 0;
    }

    else
    {
      v114 = indexesCopy;
    }

    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    v119 = [v89 countByEnumeratingWithState:&v249 objects:v265 count:16];
    if (v119)
    {
      v120 = *v250;
      do
      {
        for (kk = 0; kk != v119; ++kk)
        {
          if (*v250 != v120)
          {
            objc_enumerationMutation(v89);
          }

          v122 = *(*(&v249 + 1) + 8 * kk);
          v123 = [v89 objectForKey:v122];
          v124 = [(NSSQLSaveChangesRequestContext *)*(self + 8) originalRowForObjectID:v122];
          v125 = CFDictionaryGetValue(*(self + 16), v122);
          if (v125)
          {
            v126 = 1;
          }

          else
          {
            v126 = v124 == 0;
          }

          if (!v126)
          {
            v125 = [v124 copy];
            CFDictionarySetValue(*(self + 16), v122, v125);
          }

          if (v125)
          {
            intValue = [v123 intValue];
            [v125 setForeignOrderKeySlot:v245 orderKey:intValue];
            [v247 addObject:v122];
            [v247 addObject:v123];
          }
        }

        v119 = [v89 countByEnumeratingWithState:&v249 objects:v265 count:16];
      }

      while (v119);
    }
  }

  else
  {
    v89 = 0;
  }

  if (v247)
  {
    if ([v247 count])
    {
      v128 = v247;
    }

    else
    {
      v128 = 0;
    }

    if ([v229 count])
    {
      v129 = v229;
    }

    else
    {
      v129 = 0;
    }

    objectID7 = [propertiesCopy objectID];
    [(NSSQLSavePlan *)self _registerChangedFOKs:v128 deletions:v129 forSourceObject:objectID7 andRelationship:v236];
LABEL_215:
    v131 = v247;
    goto LABEL_216;
  }

  v131 = 0;
LABEL_216:

  v25 = v241;
LABEL_217:
  if (!v233 || !v243)
  {
    goto LABEL_253;
  }

  name4 = [v236 name];
  v194 = [kCopy objectForKey:name4];
  isToMany = [v194 isToMany];
  v196 = isToMany ^ 1;
  if (!v194)
  {
    v196 = 1;
  }

  if ((v196 & 1) == 0 && (isToMany = v194[7]) != 0 && *(isToMany + 88) == 1)
  {
    isToMany = [objc_msgSend(isToMany "foreignKey")];
    v197 = isToMany;
    LODWORD(v247) = 1;
  }

  else
  {
    LODWORD(v247) = 0;
    v197 = 0;
  }

  v244 = &v225;
  MEMORY[0x1EEE9AC00](isToMany);
  v200 = &v225 - v198;
  if (v199 > 0x200)
  {
    v200 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v225 - v198, 8 * v199);
  }

  [addedCopy getObjects:v200];
  v201 = 0;
  deletedCopy = deleted;
  LODWORD(v245) = v197;
  do
  {
    v202 = objc_autoreleasePoolPush();
    objectID8 = [*&v200[8 * v201] objectID];
    v204 = objectID8;
    if ((v242 & 1) == 0)
    {
      *&v241[8 * v201] = objectID8;
    }

    if (v247)
    {
      v205 = CFDictionaryGetValue(*(self + 16), objectID8);
      if (v205)
      {
        goto LABEL_243;
      }

      if ([(NSSQLSaveChangesRequestContext *)*(self + 8) originalRowForObjectID:v204])
      {
        v205 = 0;
        goto LABEL_243;
      }

      v206 = [(NSSQLStoreRequestContext *)*(self + 8) createNestedObjectFaultContextForObjectWithID:v204];
      [(NSSQLStoreRequestContext *)v206 setQueryGenerationToken:?];
      v207 = *(self + 8);
      if (v207)
      {
        v208 = *(v207 + 8);
      }

      else
      {
        v208 = 0;
      }

      [(NSSQLCore *)v208 dispatchRequest:v206 withRetries:0];
      result4 = [v206 result];
      if (result4)
      {
        v210 = *(self + 8);
        if (v210)
        {
          [*(v210 + 136) setObject:result4 forKey:v204];
        }
      }

      v211 = result4;
      v197 = v245;
      if (result4)
      {
        v205 = [result4 copy];
        CFDictionarySetValue(*(self + 16), v204, v205);

LABEL_243:
        v212 = [(NSSQLRow *)v205 foreignKeyForSlot:v197];
        if (v212 == deletedCopy)
        {
          [v205 setForeignKeySlot:v197 int64:0];
        }
      }
    }

    objc_autoreleasePoolPop(v202);
    ++v201;
  }

  while (v243 != v201);
  if ((v242 & 1) == 0)
  {
    v213 = objc_alloc(MEMORY[0x1E695DFD8]);
    v214 = [v213 initWithObjects:v241 count:v243];
    [v248 minusSet:v214];
  }

  if (v243 >= 0x201)
  {
    NSZoneFree(0, v200);
  }

  v25 = v241;
LABEL_253:
  if (v231 >= 0x201)
  {
    NSZoneFree(0, v25);
  }

  [v232 drain];
  v215 = *MEMORY[0x1E69E9840];
  return v248;
}

- (id)_correlationTableUpdateTrackerForRelationship:(uint64_t)relationship
{
  correlationTableName = [a2 correlationTableName];
  Value = CFDictionaryGetValue(*(relationship + 32), correlationTableName);
  if (!Value)
  {
    Value = [[NSSQLCorrelationTableUpdateTracker alloc] initForRelationship:a2];
    CFDictionarySetValue(*(relationship + 32), correlationTableName, Value);
  }

  return Value;
}

- (void)_recordToManyChangesForObject:(unint64_t *)object inRow:(int)row usingTimestamp:(double)timestamp inserted:
{
  rowCopy = row;
  objectCopy = object;
  selfCopy = self;
  v191 = *MEMORY[0x1E69E9840];
  managedObjectContext = [a2 managedObjectContext];
  entity = [a2 entity];
  v8 = entity;
  if (entity)
  {
    keys = [*(entity + 104) keys];
    v165 = v8[14];
  }

  else
  {
    keys = [0 keys];
    v165 = 0;
  }

  v161 = _kvcPropertysPrimitiveGetters(v8);
  if ((*(a2 + 17) & 0x80) != 0)
  {
    [a2 willAccessValueForKey:0];
  }

  objectID = [objectCopy objectID];
  if (objectCopy && (objectCopy[2] & 1) == 0 && (v9 = atomic_load(objectCopy + 5), (v10 = [*(v9 + 16) _storeInfo1]) != 0))
  {
    v148 = 0;
    v147 = v10;
    v154 = *(v10 + 40);
  }

  else
  {
    v147 = 0;
    v154 = 0;
    v148 = 1;
  }

  v11 = *(a2 + 48);
  v163 = v8;
  if (v11)
  {
    v12 = *(v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  values = [v12 values];
  if (values)
  {
    null = [MEMORY[0x1E695DFB0] null];
    if (objectCopy)
    {
      v14 = atomic_load(objectCopy + 5);
      _referenceData64 = [*(v14 + 16) _referenceData64];
    }

    else
    {
      _referenceData64 = 0;
    }

    v15 = v165[18];
    v16 = v165[19] + v15;
    v176 = v15;
    v160 = v16;
    if (v15 < v16)
    {
      v17 = rowCopy;
      if (!objectCopy)
      {
        v17 = 0;
      }

      v152 = v17;
      v142 = *MEMORY[0x1E695D940];
      v143 = *MEMORY[0x1E695D930];
      v141 = *MEMORY[0x1E696AA08];
      v144 = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
      *&v13 = 138412546;
      v146 = v13;
      *&v13 = 138412290;
      v145 = v13;
      do
      {
        v170 = objc_autoreleasePoolPush();
        v18 = *(keys + 8 * v176);
        v172 = [(NSEntityDescription *)v163 _relationshipNamed:v18];
        v19 = v165[16];
        v21 = v176 >= v19;
        v20 = v176 - v19;
        v21 = !v21 || v20 >= v165[17];
        v22 = !v21;
        LODWORD(v173) = v22;
        _PF_Handler_Primitive_GetProperty(a2, v176, v18, *(v161 + 8 * v176));
        v24 = v23;
        if (rowCopy)
        {
          v25 = &NSOrderedSet_EmptyOrderedSet;
          if (!v173)
          {
            v25 = &NSSet_EmptySet;
          }

          v26 = *v25;
        }

        else
        {
          v26 = *(values + 8 * v176);
        }

        v171 = v26;
        if (v23 == v26 || ([v23 isFault] & 1) != 0)
        {
          goto LABEL_211;
        }

        if (null == v24 || (v169 = 0, ![v24 count]))
        {
          v169 = 0;
          v30 = NSSet_EmptySet;
          if (null == v171 || (v169 = 0, ![v171 count]))
          {
            v169 = 0;
            v169 = NSSet_EmptySet;
            goto LABEL_54;
          }

          v31 = [v171 count];
          v32 = MEMORY[0x1EEE9AC00](v31);
          v35 = &v141 - v34;
          if (v32 >= 0x201)
          {
            v35 = NSAllocateScannedUncollectable();
          }

          else
          {
            bzero(&v141 - v34, 8 * v33);
          }

          [v171 getObjects:{v35, v141, v142}];
          v39 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:v35 count:v31];
          if (v31 >= 0x201)
          {
            NSZoneFree(0, v35);
          }
        }

        else
        {
          v27 = [v24 count];
          v28 = v27;
          if (null != v171)
          {
            v27 = [v171 count];
            if (v27)
            {
              v29 = [_PFRoutines newMutableSetFromCollection:v171 byRemovingItems:v24];
              v30 = [_PFRoutines newMutableSetFromCollection:v24 byRemovingItems:v171];
              v169 = v29;
              goto LABEL_54;
            }
          }

          MEMORY[0x1EEE9AC00](v27);
          v38 = &v141 - v37;
          if (v28 >= 0x201)
          {
            v38 = NSAllocateScannedUncollectable();
          }

          else
          {
            bzero(&v141 - v37, 8 * v36);
          }

          [v24 getObjects:{v38, v141}];
          v30 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:v38 count:v28];
          if (v28 >= 0x201)
          {
            NSZoneFree(0, v38);
          }

          v39 = NSSet_EmptySet;
        }

        v169 = v39;
LABEL_54:
        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        v40 = [v30 countByEnumeratingWithState:&v178 objects:v190 count:{16, v141}];
        if (v40)
        {
          v41 = *v179;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v179 != v41)
              {
                objc_enumerationMutation(v30);
              }

              v43 = *(*(&v178 + 1) + 8 * i);
              v44 = [objc_msgSend(v43 "objectID")];
              if (v44 != [objc_msgSend(a2 "objectID")])
              {
                v130 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a2, @"Source object", v43, @"Destination Object", v172, @"Relationship", 0}];
                v131 = [_NSCoreDataException exceptionWithName:v142 code:133010 reason:@"CoreData does not support persistent cross-store relationships" userInfo:v130];

                v169 = 0;
                objc_exception_throw(v131);
              }
            }

            v40 = [v30 countByEnumeratingWithState:&v178 objects:v190 count:16];
          }

          while (v40);
        }

        if ([v30 count])
        {
          goto LABEL_81;
        }

        v45 = [v169 count];
        v46 = v45 != 0;
        if (!v45 && ((v173 ^ 1) & 1) == 0)
        {
          if (v24 && v24[4])
          {
            _newOrderKeys = [(_NSFaultingMutableOrderedSet *)v24 _newOrderKeys];
            rowCache = [*(selfCopy + 8) rowCache];
            v49 = [(NSPersistentStoreCache *)rowCache ancillaryOrderKeysForSourceObjectID:objectID forProperty:v172 afterTimestamp:*&NSSQLDistantPastTimeInterval];
          }

          else
          {
            v49 = 0;
            _newOrderKeys = 0;
          }

          v50 = [v171 count];
          if (!v49)
          {
            goto LABEL_78;
          }

          v51 = v50;
          v52 = [_newOrderKeys count];
          if (v52 != [v49 count] || v51 != objc_msgSend(v49, "count"))
          {
            goto LABEL_78;
          }

          if (v51)
          {
            v53 = 0;
            while (1)
            {
              v54 = [v171 objectAtIndex:v53];
              if (v54 != [v24 objectAtIndex:v53] || (objc_msgSend(objc_msgSend(_newOrderKeys, "objectAtIndex:", v53), "isEqual:", objc_msgSend(v49, "objectAtIndex:", v53)) & 1) == 0)
              {
                break;
              }

              if (v51 == ++v53)
              {
                goto LABEL_77;
              }
            }

LABEL_78:
            v46 = 1;
          }

          else
          {
LABEL_77:
            v46 = 0;
          }
        }

        if (!v46)
        {
          if (v152)
          {
            v70 = atomic_load(objectCopy + 5);
            if (*(v70 + 12) == 1)
            {
              [NSPersistentCacheRow setRelatedObjectIDs:objectCopy forProperty:NSArray_EmptyArray options:v172 andTimestamp:timestamp];
              if (v173)
              {
                [NSPersistentCacheRow setAncillaryOrderKeys:objectCopy forProperty:NSArray_EmptyArray options:v172 andTimestamp:?];
              }
            }
          }

          lastObject = 0;
          v156 = 0;
          v175 = 0;
          goto LABEL_210;
        }

LABEL_81:
        if (v152 && (v55 = atomic_load(objectCopy + 5), *(v55 + 12) == 1))
        {
          firstObject = NSArray_EmptyArray;
          if (v173)
          {
            lastObject = NSArray_EmptyArray;
          }

          else
          {
            lastObject = 0;
          }
        }

        else
        {
          v57 = [NSSQLRelationshipFaultRequestContext alloc];
          v58 = *(selfCopy + 8);
          if (v58)
          {
            v59 = *(v58 + 8);
          }

          else
          {
            v59 = 0;
          }

          v60 = [(NSSQLRelationshipFaultRequestContext *)v57 initWithObjectID:objectID relationship:v172 context:managedObjectContext sqlCore:v59];
          [(NSSQLStoreRequestContext *)v60 setQueryGenerationToken:?];
          v61 = *(selfCopy + 8);
          if (v61)
          {
            v62 = *(v61 + 8);
          }

          else
          {
            v62 = 0;
          }

          [(NSSQLCore *)v62 dispatchRequest:v60 withRetries:0];
          result = [v60 result];
          v64 = result;
          if (v60)
          {
            v65 = *(v60 + 40);
            if (v65)
            {
              v132 = v65;
              code = [v132 code];
              v175 = [v132 description];
              v188[0] = [v132 domain];
              v167 = MEMORY[0x1E696AD98];
              code2 = [v132 code];
              v135 = [v167 numberWithLong:code2];
              v188[1] = v141;
              v189[0] = v135;
              v189[1] = v132;
              v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v189 forKeys:v188 count:2];
              v137 = [_NSCoreDataException exceptionWithName:v143 code:code reason:v175 userInfo:v136];
              objc_exception_throw(v137);
            }

            v66 = *(v60 + 48);
            if (v66)
            {
              objc_exception_throw(v66);
            }
          }

          if ([result count])
          {
            firstObject = [result firstObject];
          }

          else
          {
            firstObject = 0;
          }

          if (v173)
          {
            lastObject = [result lastObject];
          }

          else
          {
            lastObject = 0;
          }

          if (!firstObject)
          {
            if (+[NSSQLCore debugDefault]>= 2)
            {
              v124 = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  LogStream = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                  {
                    *v185 = v146;
                    *&v185[4] = objectID;
                    v186 = 2112;
                    v187 = objectCopy;
                    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  Original row was missing while recording to-many changes.  New row = %@\n", v185, 0x16u);
                  }
                }

                else
                {
                  v138 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                  {
                    *v185 = v146;
                    *&v185[4] = objectID;
                    v186 = 2112;
                    v187 = objectCopy;
                    _os_log_impl(&dword_18565F000, v138, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  Original row was missing while recording to-many changes.  New row = %@\n", v185, 0x16u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v126 = 1;
              }

              else
              {
                v126 = 4;
              }

              _NSCoreDataLog_console(v126, "Optimistic locking failure for %@.  Original row was missing while recording to-many changes.  New row = %@", objectID, objectCopy);
              goto LABEL_234;
            }

            if (+[NSSQLCore debugDefault]>= 1)
            {
              v124 = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v127 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                  {
                    *v185 = v145;
                    *&v185[4] = objectID;
                    _os_log_error_impl(&dword_18565F000, v127, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  Original row was missing while recording to-many changes.\n", v185, 0xCu);
                  }
                }

                else
                {
                  v139 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                  {
                    *v185 = v145;
                    *&v185[4] = objectID;
                    _os_log_impl(&dword_18565F000, v139, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  Original row was missing while recording to-many changes.\n", v185, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v128 = 1;
              }

              else
              {
                v128 = 4;
              }

              _NSCoreDataLog_console(v128, "Optimistic locking failure for %@.  Original row was missing while recording to-many changes.", objectID);
LABEL_234:
              objc_autoreleasePoolPop(v124);
            }

            v182 = objectID;
            v183 = v144;
            v184 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v182 count:1];
            v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
            objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:v143 reason:@"optimistic locking failure" userInfo:v129]);
          }
        }

        *v185 = 0;
        v177 = 0;
        v156 = firstObject;
        v167 = [(NSSQLSavePlan *)selfCopy _newRowCacheRowForToManyUpdatesForRelationship:v172 rowCacheOriginal:firstObject originalOrderKeys:lastObject originalSnapshot:v171 value:v24 added:v30 deleted:v169 sourceRowPK:_referenceData64 properties:v154 sourceObject:a2 newIndexes:v185 reorderedIndexes:&v177];
        if (v173)
        {
          v67 = [v167 count];
          if (v67)
          {
            v175 = objc_alloc_init(MEMORY[0x1E695DF70]);
            for (j = 0; j != v67; ++j)
            {
              v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*v185 + 8 * j)];
              [v175 addObject:v69];
            }
          }

          else
          {
            v175 = NSArray_EmptyArray;
          }
        }

        else
        {
          v175 = 0;
        }

        [NSPersistentCacheRow setRelatedObjectIDs:objectCopy forProperty:v167 options:v172 andTimestamp:timestamp];
        if (v173)
        {
          [NSPersistentCacheRow setAncillaryOrderKeys:objectCopy forProperty:v175 options:v172 andTimestamp:?];
        }

        v166 = [v154 objectForKey:v18];
        if (![v172 inverseRelationship])
        {
          if (v166)
          {
            slot = *(v166 + 56);
          }

          else
          {
            slot = 0;
          }

          v72 = [objc_msgSend(slot "foreignKey")];
          if (slot)
          {
            v73 = slot[10];
            if (v73)
            {
              slot = [v73 slot];
            }

            else
            {
              slot = 0;
            }
          }

          v74 = [v30 count];
          v75 = [v167 count];
          v149 = &v141;
          MEMORY[0x1EEE9AC00](v75);
          v78 = &v141 - v77;
          v150 = v79;
          if (v79 >= 0x201)
          {
            v78 = NSAllocateScannedUncollectable();
          }

          else
          {
            bzero(&v141 - v77, 8 * v76);
          }

          if (v173)
          {
            [v167 getObjects:v78];
            if (v75)
            {
              for (k = 0; k != v75; ++k)
              {
                v81 = objc_autoreleasePoolPush();
                if (v177[k])
                {
                  v82 = [(NSSQLSavePlan *)selfCopy _findOrCreateChangeSnapshotForGlobalID:?];
                  [v82 setForeignKeySlot:v72 int64:_referenceData64];
                  [v82 setForeignOrderKeySlot:slot orderKey:*(*v185 + 8 * k)];
                }

                objc_autoreleasePoolPop(v81);
              }
            }
          }

          else
          {
            [v30 getObjects:v78];
            if (v74)
            {
              v83 = v78;
              do
              {
                v84 = objc_autoreleasePoolPush();
                objectID2 = [*v83 objectID];
                v86 = [(NSSQLSavePlan *)selfCopy _findOrCreateChangeSnapshotForGlobalID:objectID2];
                [v86 setForeignKeySlot:v72 int64:_referenceData64];
                objc_autoreleasePoolPop(v84);
                ++v83;
                --v74;
              }

              while (v74);
            }
          }

          if (v150 >= 0x201)
          {
            NSZoneFree(0, v78);
          }

          v87 = [v169 count];
          v88 = v87;
          if (v87 <= v75)
          {
            v89 = v75;
          }

          else
          {
            v89 = v87;
          }

          MEMORY[0x1EEE9AC00](v87);
          v92 = (&v141 - v91);
          if (v89 >= 0x201)
          {
            v92 = NSAllocateScannedUncollectable();
          }

          else
          {
            bzero(&v141 - v91, 8 * v90);
          }

          if ((v173 & 1) == 0)
          {
            [v169 getObjects:v92];
            for (m = v92; v88; --v88)
            {
              v94 = objc_autoreleasePoolPush();
              objectID3 = [*m objectID];
              [-[NSSQLSavePlan _findOrCreateChangeSnapshotForGlobalID:](selfCopy objectID3)];
              objc_autoreleasePoolPop(v94);
              ++m;
            }
          }

          if (v89 >= 0x201)
          {
            NSZoneFree(0, v92);
          }
        }

        if (!v166 || *(v166 + 24) != 9 || !((*(v166 + 64) != 0) | v173 & 1))
        {
          if ([v166 isToMany])
          {
            if ((*(selfCopy + 148) & 1) != 0 && v169 && [v169 count])
            {
              v97 = [_PFRoutines newArrayOfObjectIDsFromCollection:v169];
              [(NSSQLSavePlan *)selfCopy _registerChangedFOKs:v97 deletions:objectID forSourceObject:v172 andRelationship:?];
            }

            v98 = *(selfCopy + 8);
            if (v98 && *(v98 + 82) == 1 && (!v173 || [v30 count] || objc_msgSend(v169, "count") || objc_msgSend(v171, "count")))
            {
              v99 = objc_alloc(MEMORY[0x1E696AEC0]);
              if (v148)
              {
                v100 = 0;
              }

              else
              {
                v100 = *(v147 + 184);
              }

              v101 = [v99 initWithFormat:@"%u-%lld", v100, objc_msgSend(objectID, "_referenceData64")];
              v102 = [*(selfCopy + 128) objectForKey:v101];
              if (v102)
              {
                [v102 addObject:{objc_msgSend(v172, "name")}];
              }

              else
              {
                v115 = objc_alloc(MEMORY[0x1E695DFA8]);
                v116 = [v115 initWithObjects:{objc_msgSend(v172, "name"), 0}];
                [*(selfCopy + 128) setObject:v116 forKey:v101];
              }
            }
          }

          goto LABEL_203;
        }

        if (*(selfCopy + 148))
        {
          v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        else
        {
          v96 = 0;
        }

        v103 = [v30 count];
        if (v103)
        {
          v104 = [_PFRoutines newArrayOfObjectIDsFromCollection:v30];
          v103 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2 * v103];
        }

        else
        {
          v104 = 0;
          v103 = 0;
        }

        if (v173)
        {
          v173 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v106 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v104];
          v107 = [v167 count];
          if (v107)
          {
            for (n = 0; v107 != n; ++n)
            {
              v109 = [v167 objectAtIndex:n];
              if (*(v166 + 64))
              {
                if ([v106 containsObject:v109])
                {
                  [v103 addObject:v109];
                  [v103 addObject:{objc_msgSend(v175, "objectAtIndex:", n)}];
                  goto LABEL_181;
                }

                if (v177[n])
                {
LABEL_180:
                  [v173 addObject:v109];
                  v110 = [v175 objectAtIndex:n];
                  [v173 addObject:v110];
LABEL_181:
                  if (v96)
                  {
                    [v96 addObject:v109];
                    [v96 addObject:{objc_msgSend(v175, "objectAtIndex:", n)}];
                  }
                }
              }

              else if (v177[n])
              {
                goto LABEL_180;
              }
            }
          }
        }

        else
        {

          v173 = 0;
          v103 = v104;
          v104 = 0;
        }

        if (*(v166 + 64))
        {
          v111 = [_PFRoutines newArrayOfObjectIDsFromCollection:v169];
          v112 = [(NSSQLSavePlan *)selfCopy _correlationTableUpdateTrackerForRelationship:v166];
          [(NSSQLCorrelationTableUpdateTracker *)v112 trackInserts:v103 deletes:v111 reorders:v173 forObjectWithID:objectID];
          if (v96)
          {
            v113 = v111;
          }

          else
          {
            v113 = 0;
          }

          if (!v96)
          {
            goto LABEL_202;
          }

          goto LABEL_195;
        }

        v114 = [(NSSQLSavePlan *)selfCopy _correlationTableUpdateTrackerForRelationship:?];
        [(NSSQLCorrelationTableUpdateTracker *)v114 trackReorders:v173 forObjectWithID:objectID];
        if (v96)
        {
          v113 = [_PFRoutines newArrayOfObjectIDsFromCollection:v169];
LABEL_195:
          v117 = [v96 count];
          v118 = [v113 count];
          if (v117)
          {
            v119 = v96;
          }

          else
          {
            v119 = 0;
          }

          if (v118)
          {
            v120 = v113;
          }

          else
          {
            v120 = 0;
          }

          [(NSSQLSavePlan *)selfCopy _registerChangedFOKs:v119 deletions:v120 forSourceObject:objectID andRelationship:v172];
          goto LABEL_202;
        }

        v113 = 0;
LABEL_202:

LABEL_203:
        v121 = v177;
        if (v177)
        {
          v122 = _PF_Private_Malloc_Zone;
          if (!_PF_Private_Malloc_Zone)
          {
            v122 = malloc_default_zone();
            v121 = v177;
          }

          malloc_zone_free(v122, v121);
          v123 = _PF_Private_Malloc_Zone;
          if (!_PF_Private_Malloc_Zone)
          {
            v123 = malloc_default_zone();
          }

          malloc_zone_free(v123, *v185);
        }

LABEL_210:
LABEL_211:
        objc_autoreleasePoolPop(v170);
        ++v176;
      }

      while (v176 != v160);
    }
  }

  v140 = *MEMORY[0x1E69E9840];
}

- (void)_findOrCreateChangeSnapshotForGlobalID:(uint64_t)d
{
  Value = CFDictionaryGetValue(*(d + 16), a2);
  if (!Value)
  {
    v5 = [(NSSQLSaveChangesRequestContext *)*(d + 8) originalRowForObjectID:a2];
    if (!v5)
    {
      v6 = [(NSSQLStoreRequestContext *)*(d + 8) createNestedObjectFaultContextForObjectWithID:a2];
      [(NSSQLStoreRequestContext *)v6 setQueryGenerationToken:?];
      v7 = *(d + 8);
      if (v7)
      {
        v8 = *(v7 + 8);
      }

      else
      {
        v8 = 0;
      }

      [(NSSQLCore *)v8 dispatchRequest:v6 withRetries:0];
      result = [v6 result];
      if (result)
      {
        v10 = *(d + 8);
        if (v10)
        {
          [*(v10 + 136) setObject:result forKey:a2];
        }
      }

      v11 = result;
      if (!result)
      {
        v14 = *(d + 8);
        if (v14)
        {
          v15 = *(v14 + 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = _sqlCoreLookupSQLEntityForEntityDescription(v15, [a2 entity]);
        v12 = [+[NSSQLRow allocForSQLEntity:](NSSQLRow v16)];
        goto LABEL_11;
      }

      v5 = result;
    }

    v12 = [v5 copy];
LABEL_11:
    Value = v12;
    CFDictionarySetValue(*(d + 16), a2, v12);
  }

  return Value;
}

- (uint64_t)_addFileBackedFutureToDelete:(uint64_t)delete
{
  v4 = *(delete + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  fileBackedFuturesDirectory = [v5 fileBackedFuturesDirectory];
  if (a2)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  result = [objc_msgSend(v7 "path")];
  if (result)
  {
    v9 = *(delete + 120);
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(delete + 120) = v9;
    }

    return [v9 addObject:a2];
  }

  return result;
}

- (void)_populateRow:(_BYTE *)row fromObject:(int)object timestamp:(_BYTE *)timestamp inserted:(double)inserted shouldAddToRowCache:
{
  rowCopy = row;
  entity = [row entity];
  v11 = entity;
  if (entity)
  {
    v139 = entity[13];
  }

  else
  {
    v139 = 0;
  }

  v137 = _kvcPropertysPrimitiveGetters(entity);
  *timestamp = 1;
  if ((rowCopy[17] & 0x80) != 0)
  {
    [rowCopy willAccessValueForKey:0];
  }

  objectCopy = object;
  v127 = v11;
  if (!a2 || (a2[2] & 1) != 0)
  {
    _storeInfo1 = 0;
  }

  else
  {
    v12 = atomic_load(a2 + 5);
    _storeInfo1 = [*(v12 + 16) _storeInfo1];
  }

  v129 = _storeInfo1;
  foreignKeyColumns = [_storeInfo1 foreignKeyColumns];
  v15 = [foreignKeyColumns count];
  v138 = rowCopy;
  v132 = a2;
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v134 = foreignKeyColumns;
    do
    {
      v18 = objc_autoreleasePoolPush();
      v19 = [foreignKeyColumns objectAtIndex:v17];
      toOneRelationship = [v19 toOneRelationship];
      v21 = toOneRelationship;
      if (toOneRelationship && (toOneRelationship[88] & 1) != 0)
      {
        goto LABEL_54;
      }

      name = [toOneRelationship name];
      v23 = [v139 fastIndexForKnownKey:name];
      if (v23 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = [rowCopy primitiveValueForKey:name];
      }

      else
      {
        _PF_Handler_Primitive_GetProperty(rowCopy, v23, name, *(v137 + 8 * v23));
      }

      v25 = v24;
      v26 = [objc_msgSend(v24 "objectID")];
      if (v26)
      {
        v27 = self[1];
        if (!v27 || v26 != *(v27 + 8))
        {
          v125 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D940], 133010, @"CoreData does not support persistent cross-store relationships", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{rowCopy, @"Source object", v25, @"Destination Object", objc_msgSend(objc_msgSend(v127, "propertiesByName"), "objectForKey:", name), @"Relationship", 0}]);
          objc_exception_throw(v125);
        }
      }

      isValidRelationshipDestination = [(NSManagedObject *)v25 _isValidRelationshipDestination__];
      v29 = !v25 || isValidRelationshipDestination == 0;
      v30 = v29 ? 0 : [objc_msgSend(v25 "objectID")];
      [a2 setForeignKeySlot:objc_msgSend(v19 int64:{"slot"), v30}];
      if (!v21)
      {
        goto LABEL_54;
      }

      v31 = v21[9];
      if (v31)
      {
        if (v25 && ((v33 = [v25 objectID], (v34 = self[1]) == 0) ? (v35 = 0) : (v35 = *(v34 + 8)), (v36 = -[NSSQLCore entityForObjectID:](v35, v33)) != 0))
        {
          v32 = *(v36 + 184);
        }

        else
        {
          v32 = 0;
        }

        [a2 setForeignEntityKeySlot:objc_msgSend(v31 entityKey:{"slot"), v32}];
        rowCopy = v138;
      }

      v37 = v21[10];
      if (!v37)
      {
        goto LABEL_54;
      }

      if (v25)
      {
        v39 = v21[7];
        entity2 = [v25 entity];
        v41 = entity2;
        if (entity2)
        {
          v42 = *(entity2 + 104);
        }

        else
        {
          v42 = 0;
        }

        name2 = [v39 name];
        v44 = [v42 fastIndexForKnownKey:name2];
        if (v44 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v45 = [v25 primitiveValueForKey:name2];
        }

        else
        {
          v46 = v44;
          v47 = _kvcPropertysPrimitiveGetters(v41);
          _PF_Handler_Primitive_GetProperty(v25, v46, name2, *(v47 + 8 * v46));
        }

        v48 = v45;
        rowCopy = v138;
        if (v45)
        {
          v38 = [v45 count];
          if (v38)
          {
            -[NSSQLSavePlan _populateOrderKeysInOrderedSet:usingSourceObjectID:inverseRelationship:newIndexes:reorderedIndexes:](self, v48, [v25 objectID], v39, 0, 0);
            LODWORD(v38) = [(_NSFaultingMutableOrderedSet *)v48 _orderKeyForObject:v138];
          }
        }

        else
        {
          LODWORD(v38) = 0;
        }

        a2 = v132;
        foreignKeyColumns = v134;
        if (v38)
        {
LABEL_50:
          if (v30)
          {
            v49 = v38;
          }

          else
          {
            v49 = 0;
          }

          slot = [v37 slot];
          v51 = v49;
          rowCopy = v138;
          [a2 setForeignOrderKeySlot:slot orderKey:v51];
          goto LABEL_54;
        }
      }

      else
      {
        LODWORD(v38) = 0;
      }

      if (!v30)
      {
        goto LABEL_50;
      }

LABEL_54:
      objc_autoreleasePoolPop(v18);
      ++v17;
    }

    while (v16 != v17);
  }

  attributeColumns = [v129 attributeColumns];
  v53 = [attributeColumns count];
  v54 = atomic_load(a2 + 5);
  v55 = 0x20000;
  if (!_PF_INTERNAL_DATA_SIZE_THRESHOLD)
  {
    v55 = 0;
  }

  v130 = v55;
  if (v53)
  {
    v56 = v53;
    v57 = 0;
    v135 = v54 + 28;
    do
    {
      v58 = objc_autoreleasePoolPush();
      v59 = [attributeColumns objectAtIndex:v57];
      propertyDescription = [v59 propertyDescription];
      if (propertyDescription && [propertyDescription superCompositeAttribute])
      {
        name3 = -[NSPropertyDescription _rootName]([v59 propertyDescription]);
      }

      else
      {
        name3 = [v59 name];
      }

      v62 = name3;
      v63 = [v139 fastIndexForKnownKey:name3];
      if (v63 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v64 = [rowCopy primitiveValueForKey:v62];
      }

      else
      {
        _PF_Handler_Primitive_GetProperty(rowCopy, v63, v62, *(v137 + 8 * v63));
      }

      v65 = v64;
      if ([objc_msgSend(v59 "attributeDescription")] == 1000)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *timestamp = 0;
        }
      }

      slot2 = [v59 slot];
      v67 = slot2;
      if (v59 && (v59[16] & 8) != 0)
      {
        snapshot_get_value_as_object(v54, slot2);
        [rowCopy setPrimitiveValue:v73 forKey:v62];
      }

      else
      {
        if (!v65)
        {
          if (((v135[slot2 >> 3] >> (slot2 & 7)) & 1) == 0)
          {
            if ([v59 sqlType] == 16)
            {
              object = snapshot_get_object(v54, v67);
              v75 = objc_opt_class();
              v29 = v75 == objc_opt_class();
              rowCopy = v138;
              if (v29)
              {
                if ([v59 isFileBackedFuture])
                {
                  [(NSSQLSavePlan *)self _addFileBackedFutureToDelete:?];
                }

                else
                {
                  v111 = self[13];
                  if (!v111)
                  {
                    v111 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    self[13] = v111;
                  }

                  [v111 addObject:object];
                }
              }
            }

            snapshot_set_null(v54, v67);
          }

          goto LABEL_156;
        }

        type = snapshot_get_type(v54, slot2);
        if (type > 0x68)
        {
          switch(type)
          {
            case 'i':
              intValue = [v65 intValue];
              Class = object_getClass(v54);
              IndexedIvars = object_getIndexedIvars(Class);
              v135[v67 >> 3] &= ~(1 << (v67 & 7));
              *(v54 + IndexedIvars[v67 + 19]) = intValue;
              break;
            case 'q':
              longLongValue = [v65 longLongValue];
              v93 = object_getClass(v54);
              v94 = object_getIndexedIvars(v93);
              v135[v67 >> 3] &= ~(1 << (v67 & 7));
              *(v54 + v94[v67 + 19]) = longLongValue;
              break;
            case 's':
              shortValue = [v65 shortValue];
              v77 = object_getClass(v54);
              v78 = object_getIndexedIvars(v77);
              v135[v67 >> 3] &= ~(1 << (v67 & 7));
              *(v54 + v78[v67 + 19]) = shortValue;
              break;
            default:
              goto LABEL_92;
          }

          goto LABEL_106;
        }

        if (type == 99)
        {
          charValue = [v65 charValue];
          v80 = object_getClass(v54);
          v81 = object_getIndexedIvars(v80);
          v135[v67 >> 3] &= ~(1 << (v67 & 7));
          *(v54 + v81[v67 + 19]) = charValue;
LABEL_106:
          rowCopy = v138;
          goto LABEL_156;
        }

        if (type == 100)
        {
          if ([v65 isNSNumber])
          {
            [v65 doubleValue];
          }

          else
          {
            [v65 timeIntervalSinceReferenceDate];
          }

          v96 = v91;
          v97 = object_getClass(v54);
          v98 = object_getIndexedIvars(v97);
          v135[v67 >> 3] &= ~(1 << (v67 & 7));
          *(v54 + v98[v67 + 19]) = v96;
          goto LABEL_156;
        }

        if (type != 102)
        {
LABEL_92:
          if ([v59 sqlType] != 16 || ((v85 = snapshot_get_object(v54, v67), (objc_msgSend(v59, "isFileBackedFuture") & 1) != 0) || v65 == v85) && (!objc_msgSend(v59, "isFileBackedFuture") || objc_msgSend(v65, "isEqual:", v85)) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v95 = v65;
          }

          else
          {
            v128 = v85;
            if (![v59 isFileBackedFuture])
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v65 isNSData] && objc_msgSend(v85, "isEqualToData:", v65))
              {
                v65 = v85;
              }

              else
              {
                v99 = self[1];
                if (v99 && (v100 = *(v99 + 8)) != 0 && (*(v100 + 201) & 0x40) != 0 || v130 >= [v65 length])
                {
                  v105 = 0;
                  v110 = 0;
                }

                else
                {
                  v101 = CFUUIDCreate(0);
                  v102 = CFUUIDCreateString(0, v101);
                  CFRelease(v101);
                  v103 = self[1];
                  if (v103)
                  {
                    v104 = *(v103 + 152);
                  }

                  else
                  {
                    v104 = 0;
                  }

                  v105 = [v104 stringByAppendingPathComponent:v102];
                  v106 = self[1];
                  rowCopy = v138;
                  if (v106)
                  {
                    v107 = *(v106 + 160);
                  }

                  else
                  {
                    v107 = 0;
                  }

                  v108 = [v107 stringByAppendingPathComponent:v102];
                  v109 = v102;
                  v110 = v108;
                  CFRelease(v109);
                }

                if (v128)
                {
                  v112 = objc_opt_class();
                  v29 = v112 == objc_opt_class();
                  rowCopy = v138;
                  if (v29)
                  {
                    v113 = self[13];
                    if (!v113)
                    {
                      v113 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      self[13] = v113;
                    }

                    [v113 addObject:v128];
                  }
                }

                v114 = [_PFExternalReferenceData alloc];
                v115 = self[1];
                if (v115 && (v116 = *(v115 + 8)) != 0)
                {
                  v117 = (*(v116 + 200) >> 2) & 7;
                }

                else
                {
                  v117 = 0;
                }

                v65 = [(_PFExternalReferenceData *)v114 initForExternalLocation:v105 safeguardLocation:v110 data:v65 protectionLevel:v117];
                v118 = self[12];
                if (!v118)
                {
                  v118 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  self[12] = v118;
                }

                [v118 addObject:v65];
              }

              goto LABEL_155;
            }

            v87 = self[1];
            if (v87)
            {
              v88 = *(v87 + 168);
            }

            else
            {
              v88 = 0;
            }

            Property = objc_getProperty(v65, v86, 16, 1);
            if (v128)
            {
              v90 = [v128 fileURL] != 0;
            }

            else
            {
              v90 = 0;
            }

            v126 = v90;
            if ([v65 _isCloudKitSupportOriginated])
            {
              if (Property)
              {
                v119 = 0;
              }

              else
              {
                v119 = v90;
              }

              if (v119 && [objc_msgSend(v65 "UUID")])
              {
LABEL_150:
                v65 = v128;
                rowCopy = v138;
                goto LABEL_155;
              }

              v123 = self[14];
              if (!v123)
              {
                v123 = objc_alloc_init(MEMORY[0x1E695DF70]);
                self[14] = v123;
              }

              [v123 addObject:v65];
              v124 = [v88 stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(v65, "UUID"), "UUIDString")}];
              v65 = -[_NSDataFileBackedFuture initWithURL:UUID:size:]([_NSDataFileBackedFuture alloc], [MEMORY[0x1E695DFF8] fileURLWithPath:v124 isDirectory:0], objc_msgSend(v65, "UUID"), objc_msgSend(v65, "fileSize"));
              rowCopy = v138;
              v122 = v128;
              if (!v126)
              {
                goto LABEL_155;
              }

LABEL_154:
              [(NSSQLSavePlan *)self _addFileBackedFutureToDelete:v122];
              goto LABEL_155;
            }

            if (![v65 fileURL] && objc_msgSend(objc_msgSend(v65, "UUID"), "isEqual:", objc_msgSend(v128, "UUID")))
            {
              goto LABEL_150;
            }

            v120 = [_NSDataFileBackedFuture alloc];
            v65 = -[_NSDataFileBackedFuture initWithDirectoryURL:UUID:originalURL:](v120, [MEMORY[0x1E695DFF8] fileURLWithPath:v88 isDirectory:1], objc_msgSend(v65, "UUID"), Property);
            v121 = self[14];
            if (!v121)
            {
              v121 = objc_alloc_init(MEMORY[0x1E695DF70]);
              self[14] = v121;
            }

            [v121 addObject:v65];
            rowCopy = v138;
            v122 = v128;
            if (v126)
            {
              goto LABEL_154;
            }
          }

LABEL_155:
          snapshot_set_object(v54, v67, v65);
          goto LABEL_156;
        }

        [v65 floatValue];
        v70 = v69;
        v71 = object_getClass(v54);
        v72 = object_getIndexedIvars(v71);
        v135[v67 >> 3] &= ~(1 << (v67 & 7));
        *(v54 + v72[v67 + 19]) = v70;
      }

LABEL_156:
      objc_autoreleasePoolPop(v58);
      ++v57;
    }

    while (v56 != v57);
  }

  [(NSSQLSavePlan *)self _recordToManyChangesForObject:rowCopy inRow:v132 usingTimestamp:objectCopy inserted:inserted];
}

- (void)_createCorrelationTrackerUpdatesForDeletedObject:(uint64_t)object
{
  v2 = a2;
  objectCopy = object;
  v63 = *MEMORY[0x1E69E9840];
  entity = [a2 entity];
  v4 = entity;
  if (entity)
  {
    keys = [*(entity + 104) keys];
    v6 = v4[14];
  }

  else
  {
    keys = [0 keys];
    v6 = 0;
  }

  v51 = _kvcPropertysPrimitiveGetters(v4);
  if ((*(v2 + 17) & 0x80) != 0)
  {
    [v2 willAccessValueForKey:0];
  }

  objectID = [v2 objectID];
  entity2 = [v2 entity];
  if (entity2 && ((v8 = entity2, (v9 = *(objectCopy + 8)) == 0) ? (v10 = 0) : (v10 = *(v9 + 8)), (v11 = _sqlCoreLookupSQLEntityForEntityDescription(v10, v8)) != 0))
  {
    v52 = *(v11 + 40);
  }

  else
  {
    v52 = 0;
  }

  v12 = *(v2 + 6);
  if (v12)
  {
    v13 = *(v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  values = [v13 values];
  if (values)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v15 = *(v6 + 144);
    v14 = *(v6 + 152);
    v16 = v14 + v15;
    if (v15 < v14 + v15)
    {
      v17 = 0x1EA8C5000uLL;
      v45 = keys;
      v46 = v2;
      while (1)
      {
        v18 = *(keys + 8 * v15);
        v19 = [v52 objectForKey:v18];
        if (v19)
        {
          v20 = v19;
          if (*(v19 + 24) == 9)
          {
            if (*(v19 + *(v17 + 3944)))
            {
              _PF_Handler_Primitive_GetProperty(v2, v15, v18, *(v51 + 8 * v15));
              v22 = *(values + 8 * v15);
              if (v21 != v22)
              {
                v23 = v21;
                if (([v21 isFault] & 1) == 0)
                {
                  break;
                }
              }
            }
          }
        }

LABEL_56:
        if (++v15 == v16)
        {
          goto LABEL_57;
        }
      }

      if (null == v23 || ![v23 count])
      {
        v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        if (null != v22 && [v22 count])
        {
          v26 = [v22 count];
          v44[1] = v44;
          v27 = MEMORY[0x1EEE9AC00](v26);
          v30 = v44 - v29;
          if (v27 > 0x200)
          {
            v30 = NSAllocateScannedUncollectable();
          }

          else
          {
            bzero(v44 - v29, 8 * v28);
          }

          [v22 getObjects:v30];
          v32 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:v30 count:v26];
          if (v26 >= 0x201)
          {
            NSZoneFree(0, v30);
          }

          goto LABEL_39;
        }

        v31 = MEMORY[0x1E695DFA8];
      }

      else
      {
        if (null != v22 && [v22 count])
        {
          v24 = [_PFRoutines newMutableSetFromCollection:v22 byIntersectingWithCollection:v23];
          v25 = [_PFRoutines newMutableSetFromCollection:v22 byRemovingItems:v23];
LABEL_35:
          v32 = v25;
LABEL_39:
          v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v34 = [v24 countByEnumeratingWithState:&v57 objects:v62 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v58;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v58 != v36)
                {
                  objc_enumerationMutation(v24);
                }

                [v33 addObject:{objc_msgSend(*(*(&v57 + 1) + 8 * i), "objectID")}];
              }

              v35 = [v24 countByEnumeratingWithState:&v57 objects:v62 count:16];
            }

            while (v35);
          }

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v38 = [v32 countByEnumeratingWithState:&v53 objects:v61 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v54;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v54 != v40)
                {
                  objc_enumerationMutation(v32);
                }

                [v33 addObject:{objc_msgSend(*(*(&v53 + 1) + 8 * j), "objectID")}];
              }

              v39 = [v32 countByEnumeratingWithState:&v53 objects:v61 count:16];
            }

            while (v39);
          }

          if ([v33 count])
          {
            v42 = [(NSSQLSavePlan *)objectCopy _correlationTableUpdateTrackerForRelationship:v20];
            [(NSSQLCorrelationTableUpdateTracker *)v42 trackInserts:v33 deletes:0 reorders:objectID forObjectWithID:?];
          }

          keys = v45;
          v2 = v46;
          v17 = 0x1EA8C5000;
          goto LABEL_56;
        }

        v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v31 = MEMORY[0x1E695DFA8];
      }

      v25 = objc_alloc_init(v31);
      goto LABEL_35;
    }
  }

LABEL_57:
  v43 = *MEMORY[0x1E69E9840];
}

- (void)_prepareForDeletionOfDatabaseExternalPropertiesForObject:(uint64_t)object
{
  entity = [a2 entity];
  if (entity)
  {
    v5 = entity;
    v6 = *(object + 8);
    if (v6)
    {
      v7 = *(v6 + 8);
    }

    else
    {
      v7 = 0;
    }

    entity = _sqlCoreLookupSQLEntityForEntityDescription(v7, v5);
  }

  entityDescription = [entity entityDescription];
  if (entityDescription)
  {
    v9 = entityDescription;
    v10 = entityDescription[13];
    propertiesByName = [entityDescription propertiesByName];
    v12 = v9[14];
    v13 = *(v12 + 48);
    v14 = *(v12 + 56);
    v15 = _kvcPropertysPrimitiveGetters(v9);
    if (v13 < v14 + v13)
    {
      v16 = v15;
      v17 = (propertiesByName + 8 * v13 + 24);
      do
      {
        v18 = objc_autoreleasePoolPush();
        v19 = *v17;
        if ([*v17 storesBinaryDataExternally] && (objc_msgSend(v19, "isFileBackedFuture") & 1) == 0)
        {
          name = [v19 name];
          v24 = [v10 fastIndexForKnownKey:name];
          if (v24 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = [a2 primitiveValueForKey:name];
          }

          else
          {
            _PF_Handler_Primitive_GetProperty(a2, v24, name, *(v16 + 8 * v24));
          }

          v26 = v25;
          if (v25)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = *(object + 104);
              if (!v27)
              {
                v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
                *(object + 104) = v27;
              }

              [v27 addObject:v26];
            }
          }

          _storeInfo1 = -[NSSQLSavePlan _findOrCreateChangeSnapshotForGlobalID:](object, [a2 objectID]);
          v29 = _storeInfo1;
          if (_storeInfo1)
          {
            if (_storeInfo1[2])
            {
              _storeInfo1 = 0;
            }

            else
            {
              v30 = atomic_load(_storeInfo1 + 5);
              _storeInfo1 = [*(v30 + 16) _storeInfo1];
              if (_storeInfo1)
              {
                _storeInfo1 = [_storeInfo1[5] objectForKey:name];
              }
            }
          }

          v31 = -[NSSQLRow attributeValueForSlot:](v29, [_storeInfo1 slot]);
          if (v31)
          {
            v32 = v31;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = *(object + 104);
              if (!v33)
              {
                v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
                *(object + 104) = v33;
              }

              [v33 addObject:v32];
            }
          }
        }

        else if ([v19 isFileBackedFuture])
        {
          name2 = [v19 name];
          v21 = [v10 fastIndexForKnownKey:name2];
          if (v21 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = [a2 primitiveValueForKey:name2];
          }

          else
          {
            _PF_Handler_Primitive_GetProperty(a2, v21, name2, *(v16 + 8 * v21));
          }

          if (v22)
          {
            [(NSSQLSavePlan *)object _addFileBackedFutureToDelete:v22];
          }
        }

        objc_autoreleasePoolPop(v18);
        ++v17;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    [0 propertiesByName];
    __break(1u);
  }
}

- (id)initForRequestContext:(id)context
{
  v21.receiver = self;
  v21.super_class = NSSQLSavePlan;
  v4 = [(NSSQLSavePlan *)&v21 init];
  v5 = v4;
  if (v4)
  {
    v4->_requestContext = context;
    if (context)
    {
      v6 = *(context + 1);
      if (v6)
      {
        LODWORD(v6) = (*(v6 + 200) >> 5) & 1;
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    v4->_flags = (*&v4->_flags & 0xFFFFFFFE | v6);
    v7 = *MEMORY[0x1E695E9D8];
    keyCallBacks.retain = 0;
    keyCallBacks.release = 0;
    keyCallBacks.version = v7;
    *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
    keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
    valueCallBacks.version = *MEMORY[0x1E695E9E8];
    *&valueCallBacks.retain = *(MEMORY[0x1E695E9E8] + 8);
    valueCallBacks.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
    valueCallBacks.equal = 0;
    v8 = *MEMORY[0x1E695E480];
    v4->_changeCache = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, &valueCallBacks);
    requestContext = v5->_requestContext;
    if (requestContext)
    {
      requestContext = [(NSSQLStoreRequestContext *)requestContext persistentStoreRequest];
    }

    [-[NSSQLSaveChangesRequestContext insertedObjects](requestContext "insertedObjects")];
    persistentStoreRequest = v5->_requestContext;
    if (persistentStoreRequest)
    {
      persistentStoreRequest = [(NSSQLStoreRequestContext *)persistentStoreRequest persistentStoreRequest];
    }

    [-[NSSQLSaveChangesRequestContext updatedObjects](persistentStoreRequest "updatedObjects")];
    _CFDictionarySetCapacity();
    v5->_insertCache = CFDictionaryCreateMutable(v8, 0, &keyCallBacks, &valueCallBacks);
    persistentStoreRequest2 = v5->_requestContext;
    if (persistentStoreRequest2)
    {
      persistentStoreRequest2 = [(NSSQLStoreRequestContext *)persistentStoreRequest2 persistentStoreRequest];
    }

    [-[NSSQLSaveChangesRequestContext insertedObjects](persistentStoreRequest2 "insertedObjects")];
    _CFDictionarySetCapacity();
    v5->_toManyCache = CFDictionaryCreateMutable(v8, 0, &keyCallBacks, &valueCallBacks);
    persistentStoreRequest3 = v5->_requestContext;
    if (persistentStoreRequest3)
    {
      persistentStoreRequest3 = [(NSSQLStoreRequestContext *)persistentStoreRequest3 persistentStoreRequest];
    }

    [-[NSSQLSaveChangesRequestContext insertedObjects](persistentStoreRequest3 "insertedObjects")];
    persistentStoreRequest4 = v5->_requestContext;
    if (persistentStoreRequest4)
    {
      persistentStoreRequest4 = [(NSSQLStoreRequestContext *)persistentStoreRequest4 persistentStoreRequest];
    }

    [-[NSSQLSaveChangesRequestContext updatedObjects](persistentStoreRequest4 "updatedObjects")];
    _CFDictionarySetCapacity();
    v5->_toManyRelationshipChanges = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_rowsToDelete = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (*&v5->_flags)
    {
      v5->_updatedFOKRowsInCurrentSave = CFDictionaryCreateMutable(v8, 0, &keyCallBacks, &valueCallBacks);
      v5->_deletedFOKRowsInCurrentSave = CFDictionaryCreateMutable(v8, 0, &keyCallBacks, &valueCallBacks);
    }

    v5->_rowsToAddToRowCache = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5->_objectIDsToRemoveFromRowCache = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if (context)
    {
      v14 = *(context + 1);
    }

    else
    {
      v14 = 0;
    }

    v5->_usedIndexes = [(NSSQLCore *)v14 harvestIndexStatisticsFromConnections];
    persistentStoreRequest5 = v5->_requestContext;
    if (persistentStoreRequest5)
    {
      persistentStoreRequest5 = [(NSSQLStoreRequestContext *)persistentStoreRequest5 persistentStoreRequest];
    }

    if ([-[NSSQLSaveChangesRequestContext insertedObjects](persistentStoreRequest5 "insertedObjects")])
    {
      goto LABEL_29;
    }

    persistentStoreRequest6 = v5->_requestContext;
    if (persistentStoreRequest6)
    {
      persistentStoreRequest6 = [(NSSQLStoreRequestContext *)persistentStoreRequest6 persistentStoreRequest];
    }

    if ([-[NSSQLSaveChangesRequestContext updatedObjects](persistentStoreRequest6 "updatedObjects")])
    {
      goto LABEL_29;
    }

    persistentStoreRequest7 = v5->_requestContext;
    if (persistentStoreRequest7)
    {
      persistentStoreRequest7 = [(NSSQLStoreRequestContext *)persistentStoreRequest7 persistentStoreRequest];
    }

    if ([-[NSSQLSaveChangesRequestContext deletedObjects](persistentStoreRequest7 "deletedObjects")] || -[NSMutableDictionary count](v5->_usedIndexes, "count"))
    {
LABEL_29:
      *&v5->_flags |= 2u;
    }
  }

  return v5;
}

- (id)newObjectsForExhaustiveLockConflictDetection
{
  if (!self)
  {
    return 0;
  }

  persistentStoreRequest = *(self + 8);
  if (persistentStoreRequest)
  {
    persistentStoreRequest = [persistentStoreRequest persistentStoreRequest];
  }

  updatedObjects = [persistentStoreRequest updatedObjects];
  v4 = updatedObjects;
  if (updatedObjects)
  {
    if ([updatedObjects count])
    {
      v4 = [v4 mutableCopy];
    }

    else
    {
      v4 = 0;
    }
  }

  persistentStoreRequest2 = *(self + 8);
  if (persistentStoreRequest2)
  {
    persistentStoreRequest2 = [persistentStoreRequest2 persistentStoreRequest];
  }

  deletedObjects = [persistentStoreRequest2 deletedObjects];
  if (deletedObjects)
  {
    v7 = deletedObjects;
    if ([deletedObjects count])
    {
      if (v4)
      {
        [v4 unionSet:v7];
      }

      else
      {
        v4 = [v7 mutableCopy];
      }
    }
  }

  persistentStoreRequest3 = *(self + 8);
  if (persistentStoreRequest3)
  {
    persistentStoreRequest3 = [persistentStoreRequest3 persistentStoreRequest];
  }

  lockedObjects = [persistentStoreRequest3 lockedObjects];
  if (lockedObjects)
  {
    v10 = lockedObjects;
    if ([lockedObjects count])
    {
      if (v4)
      {
        [v4 unionSet:v10];
        return v4;
      }

      v4 = [v10 mutableCopy];
    }
  }

  if (v4)
  {
    return v4;
  }

  v12 = MEMORY[0x1E695DFA8];

  return objc_alloc_init(v12);
}

- (id)newObjectsForUniquenessConflictDetectionGivenReportedFailures:(uint64_t)failures
{
  v43 = *MEMORY[0x1E69E9840];
  if (failures)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = objc_autoreleasePoolPush();
    if ([a2 count])
    {
      v38 = 0uLL;
      v39 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v6 = [a2 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v37;
        do
        {
          v9 = 0;
          do
          {
            if (*v37 != v8)
            {
              objc_enumerationMutation(a2);
            }

            v10 = *(failures + 8);
            if (v10 && (v11 = *(v10 + 32)) != 0)
            {
              v12 = _PFRetainedObjectIDCore(v11, *(*(&v36 + 1) + 8 * v9), 0, 1);
            }

            else
            {
              v12 = 0;
            }

            [v4 addObject:v12];

            ++v9;
          }

          while (v7 != v9);
          v13 = [a2 countByEnumeratingWithState:&v36 objects:v42 count:16];
          v7 = v13;
        }

        while (v13);
      }
    }

    else
    {
      v34 = 0uLL;
      v35 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      persistentStoreRequest = *(failures + 8);
      if (persistentStoreRequest)
      {
        persistentStoreRequest = [persistentStoreRequest persistentStoreRequest];
      }

      updatedObjects = [persistentStoreRequest updatedObjects];
      v16 = [updatedObjects countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v33;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v33 != v18)
            {
              objc_enumerationMutation(updatedObjects);
            }

            [v4 addObject:*(*(&v32 + 1) + 8 * i)];
          }

          v17 = [updatedObjects countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v17);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      persistentStoreRequest2 = *(failures + 8);
      if (persistentStoreRequest2)
      {
        persistentStoreRequest2 = [persistentStoreRequest2 persistentStoreRequest];
      }

      insertedObjects = [persistentStoreRequest2 insertedObjects];
      v22 = [insertedObjects countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v29;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(insertedObjects);
            }

            [v4 addObject:*(*(&v28 + 1) + 8 * j)];
          }

          v23 = [insertedObjects countByEnumeratingWithState:&v28 objects:v40 count:16];
        }

        while (v23);
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v4;
}

@end